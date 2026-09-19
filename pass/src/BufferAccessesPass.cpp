#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Demangle/Demangle.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {

// Same rationale as LoopFinderPass: safe to call unconditionally on every
// function name, C included -- unmangled names just pass through unchanged.
std::string demangledName(StringRef RawName) {
  return demangle(RawName.str());
}

// A buffer access is a load/store whose pointer operand is a
// getelementptr (GEP) -- LLVM's dedicated "compute an address inside
// something" instruction. `arr[i]` is always GEP-then-load/store; a plain
// `load %x` with no GEP in front is just a simple variable read, not a
// buffer access, so those are skipped entirely.

// A GEP index is "variable" if it's anything other than a compile-time
// ConstantInt -- e.g. arr[i] (variable) vs. arr[3] (constant). Returns
// the variable index Value* via VarIndexOut so callers can trace it
// further (see dominatedByCheckOnIndex below).
bool gepHasVariableIndex(const GetElementPtrInst *GEP, Value **VarIndexOut) {
  for (Use &U : GEP->indices()) {
    if (!isa<ConstantInt>(U.get())) {
      if (VarIndexOut)
        *VarIndexOut = U.get();
      return true;
    }
  }
  return false;
}

// Walks back from the GEP's pointer operand, through casts/nested GEPs/
// loads, a bounded number of hops, to classify where the accessed memory
// actually came from. Bounded so a long, unresolved chain just falls
// through to "unknown" instead of looping or misattributing.
std::string classifyOrigin(Value *Ptr) {
  Value *V = Ptr;
  for (unsigned Hop = 0; Hop < 6 && V; ++Hop) {
    if (isa<AllocaInst>(V))
      return "alloca";
    if (isa<GlobalVariable>(V))
      return "global";
    if (isa<Argument>(V))
      return "param";
    if (auto *CB = dyn_cast<CallBase>(V)) {
      if (const Function *Callee = CB->getCalledFunction()) {
        StringRef N = Callee->getName();
        if (N.contains("malloc") || N.contains("alloc") ||
            N.contains("calloc") || N.contains("realloc"))
          return "heap";
      }
      return "unknown";
    }
    if (auto *GEP = dyn_cast<GetElementPtrInst>(V)) {
      V = GEP->getPointerOperand();
      continue;
    }
    if (auto *BC = dyn_cast<BitCastInst>(V)) {
      V = BC->getOperand(0);
      continue;
    }
    if (auto *LD = dyn_cast<LoadInst>(V)) {
      V = LD->getPointerOperand();
      continue;
    }
    break;
  }
  return "unknown";
}

// Cheap syntactic proxy for "this access looks bounds-checked": true if
// some value equal to Idx feeds an icmp whose block both ends in a
// conditional branch, AND that check provably runs before the access --
// either the check's block strictly dominates the access's block, or
// they're the SAME block and the comparison instruction comes before the
// access instruction in program order. The plain dominance check alone
// isn't enough: DominatorTree::dominates() treats a block as trivially
// dominating itself, which says nothing about instruction ORDER within
// that one block -- without the comesBefore() check, a comparison that
// runs AFTER the access (and so could never have guarded it) would be
// wrongly counted as a check. Not a proof either way -- just a heuristic,
// same spirit as documenting the duffs_device/labeled_nested_loop edge
// cases instead of glossing over them.
bool dominatedByCheckOnIndex(Value *Idx, Instruction &AccessInst,
                              DominatorTree &DT) {
  if (!Idx)
    return false;
  BasicBlock *AccessBB = AccessInst.getParent();
  for (User *U : Idx->users()) {
    auto *Cmp = dyn_cast<ICmpInst>(U);
    if (!Cmp)
      continue;
    BasicBlock *CmpBB = Cmp->getParent();
    auto *BI = dyn_cast<BranchInst>(CmpBB->getTerminator());
    if (!BI || !BI->isConditional() || BI->getCondition() != Cmp)
      continue;

    if (CmpBB == AccessBB) {
      // Same block: dominance is trivially true here, but that alone
      // doesn't mean the check ran first -- verify actual order.
      if (Cmp->comesBefore(&AccessInst))
        return true;
      continue;
    }

    if (DT.dominates(CmpBB, AccessBB))
      return true;
  }
  return false;
}

// Print one buffer access as a single JSON line -- same flat, one-line-
// per-finding convention as LoopFinderPass's printLoopRecursive.
void printBufferAccess(Instruction &I, Value *PtrOperand,
                        StringRef AccessKind, LoopInfo &LI,
                        DominatorTree &DT, StringRef RawFuncName,
                        const std::string &DemangledFuncName) {
  auto *GEP = dyn_cast<GetElementPtrInst>(PtrOperand);
  if (!GEP)
    return; // not GEP-mediated -- not a buffer access

  Value *VarIndex = nullptr;
  bool Variable = gepHasVariableIndex(GEP, &VarIndex);

  unsigned Line = I.getDebugLoc() ? I.getDebugLoc().getLine() : 0;
  std::string IndexKind = Variable ? "variable" : "constant";
  std::string IndexName =
      (Variable && VarIndex && VarIndex->hasName()) ? VarIndex->getName().str() : "";
  std::string Origin = classifyOrigin(GEP->getPointerOperand());
  bool InsideLoop = LI.getLoopFor(I.getParent()) != nullptr;
  bool DominatedByCheck = Variable && dominatedByCheckOnIndex(VarIndex, I, DT);

  errs() << "{"
         << "\"function\": \"" << RawFuncName << "\", "
         << "\"function_demangled\": \"" << DemangledFuncName << "\", "
         << "\"line\": " << Line << ", "
         << "\"access_kind\": \"" << AccessKind << "\", "
         << "\"index_kind\": \"" << IndexKind << "\", "
         << "\"index_name\": \"" << IndexName << "\", "
         << "\"origin\": \"" << Origin << "\", "
         << "\"inside_loop\": " << (InsideLoop ? "true" : "false") << ", "
         << "\"dominated_by_check\": " << (DominatedByCheck ? "true" : "false")
         << "}\n";
}

} // end anonymous namespace

struct BufferAccessPass : PassInfoMixin<BufferAccessPass> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {
    if (F.isDeclaration())
      return PreservedAnalyses::all();

    StringRef RawName = F.getName();
    std::string Demangled = demangledName(RawName);

    errs() << "FUNCTION " << RawName << " (" << Demangled << ")\n";

    LoopInfo &LI = AM.getResult<LoopAnalysis>(F);
    DominatorTree &DT = AM.getResult<DominatorTreeAnalysis>(F);

    for (Instruction &I : instructions(F)) {
      if (auto *LD = dyn_cast<LoadInst>(&I))
        printBufferAccess(I, LD->getPointerOperand(), "load", LI, DT, RawName,
                           Demangled);
      else if (auto *ST = dyn_cast<StoreInst>(&I))
        printBufferAccess(I, ST->getPointerOperand(), "store", LI, DT,
                           RawName, Demangled);
    }

    return PreservedAnalyses::all();
  }
};

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "BufferAccessPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "buffer-access-pass") {
                    FPM.addPass(BufferAccessPass());
                    return true;
                  }
                  return false;
                });
          }};
}