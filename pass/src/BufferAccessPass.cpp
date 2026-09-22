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

std::string demangledName(StringRef RawName) {
  return demangle(RawName.str());
}

// arr[i] compiles to GEP + load/store. GEP computes the address,
// load/store does the actual access.

// arr[i] -> variable index, arr[3] -> constant index.
bool gepHasVariableIndex(const GetElementPtrInst *GEP, Value **VarIndexOut) {
  for (const Use &U : GEP->indices()) {
    if (!isa<ConstantInt>(U.get())) {
      if (VarIndexOut)
        *VarIndexOut = U.get();
      return true;
    }
  }
  return false;
}

// Traces a pointer back to find where the memory came from. Bounded so
// it can't loop forever or misattribute on a weird chain.
std::string classifyOrigin(Value *Ptr) {
  Value *V = Ptr;
  for (unsigned Hop = 0; Hop < 6 && V; ++Hop) {
    if (auto *AI = dyn_cast<AllocaInst>(V)) {
      // -O0 spills everything to the stack first (params, malloc results,
      // etc). Array/struct alloca = real local buffer. Pointer alloca =
      // just a parking spot, look through it.
      Type *AllocatedTy = AI->getAllocatedType();
      if (AllocatedTy->isArrayTy() || AllocatedTy->isStructTy())
        return "alloca";

      StoreInst *TheStore = nullptr;
      bool Ambiguous = false;
      for (User *U : AI->users()) {
        if (auto *SI = dyn_cast<StoreInst>(U)) {
          if (SI->getPointerOperand() == AI) {
            if (TheStore) { Ambiguous = true; break; }
            TheStore = SI;
          }
        }
      }
      if (TheStore && !Ambiguous) {
        V = TheStore->getValueOperand();
        continue;
      }
      return "alloca";
    }
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

// Rough check for "looks bounds-checked": index feeds an icmp, that icmp
// drives a branch, and the branch runs before the access -- either a
// dominating earlier block, or same block with the check coming first.
// Same-block needs the order check since a block trivially dominates
// itself. Heuristic, not a proof.
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
      if (Cmp->comesBefore(&AccessInst))
        return true;
      continue;
    }

    if (DT.dominates(CmpBB, AccessBB))
      return true;
  }
  return false;
}

// rustc spills fat-pointer pieces into named stack slots just for the
// debugger. Looks like a real access, isn't one.
bool isDebugSpillAccess(const GetElementPtrInst *GEP) {
  if (auto *AI = dyn_cast<AllocaInst>(GEP->getPointerOperand()))
    return AI->hasName() && AI->getName().contains(".dbg.spill");
  return false;
}

// Real name if it has one, else its register id (%7). Unnamed values
// have no stored name -- the printer numbers them on the fly -- so this
// asks the printer for it instead of just checking hasName().
std::string valueDisplayName(Value *V) {
  if (V->hasName())
    return V->getName().str();
  std::string Tmp;
  raw_string_ostream OS(Tmp);
  V->printAsOperand(OS, /*PrintType=*/false);
  return Tmp;
}

void printBufferAccess(Instruction &I, Value *PtrOperand,
                        StringRef AccessKind, LoopInfo &LI,
                        DominatorTree &DT, StringRef RawFuncName,
                        const std::string &DemangledFuncName) {
  auto *GEP = dyn_cast<GetElementPtrInst>(PtrOperand);
  if (!GEP)
    return;
  if (isDebugSpillAccess(GEP))
    return;

  Value *VarIndex = nullptr;
  bool Variable = gepHasVariableIndex(GEP, &VarIndex);

  unsigned Line = I.getDebugLoc() ? I.getDebugLoc().getLine() : 0;
  std::string IndexKind = Variable ? "variable" : "constant";
  std::string IndexName = (Variable && VarIndex) ? valueDisplayName(VarIndex) : "";
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