// BufferAccessPass: for every load/store through a GEP (arr[i]) and every Rust
// element-indexing call into std (v[i] on a Vec, get_unchecked), report the
// index, where the buffer comes from, and -- for a variable index -- whether a
// comparison on the index guards the access and whether that check is right.
// Output: one JSON line per access on stderr.
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Demangle/Demangle.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
using namespace llvm;

namespace {

// ---------------------------------------------------------------- the access

// First non-constant GEP index (arr[i] -> i), or null for arr[3].
Value *variableIndex(GetElementPtrInst *GEP) {
  for (Use &U : GEP->indices())
    if (!isa<ConstantInt>(U.get()))
      return U.get();
  return nullptr;
}

// What the index is: "variable" (a local / parameter, e.g. i), "computed"
// (arithmetic, e.g. i - 1; Rust's checked arithmetic counts too), "memory"
// (read from another buffer or struct, e.g. alt[i][0]), "other".
std::string indexExpr(Value *Idx) {
  if (!Idx)
    return "other";
  while (auto *C = dyn_cast<CastInst>(Idx))
    Idx = C->getOperand(0);
  if (isa<BinaryOperator>(Idx))
    return "computed";
  if (auto *EV = dyn_cast<ExtractValueInst>(Idx); EV && isa<WithOverflowInst>(EV->getAggregateOperand()))
    return "computed";
  if (auto *LD = dyn_cast<LoadInst>(Idx)) {
    Value *P = LD->getPointerOperand();
    // a field of a local struct (e.g. rustc packs `i..end` into a local Range)
    if (auto *G = dyn_cast<GetElementPtrInst>(P); G && G->hasAllConstantIndices() &&
        G->getSourceElementType()->isStructTy() && isa<AllocaInst>(G->getPointerOperand()))
      P = G->getPointerOperand();
    return isa<AllocaInst>(P) ? "variable" : "memory";
  }
  return isa<Argument>(Idx) ? "variable" : "other";
}

// Where the buffer's memory comes from: alloca / global / param / heap /
// unknown. -O0 parks every pointer in a stack slot first, so a pointer-typed
// alloca with exactly one store is followed through to the stored value.
std::string classifyOrigin(Value *V) {
  for (unsigned Hop = 0; Hop < 6 && V; ++Hop) {
    if (auto *AI = dyn_cast<AllocaInst>(V)) {
      if (AI->getAllocatedType()->isArrayTy() || AI->getAllocatedType()->isStructTy())
        return "alloca"; // a real local buffer
      StoreInst *Only = nullptr;
      bool Many = false;
      for (User *U : AI->users())
        if (auto *SI = dyn_cast<StoreInst>(U); SI && SI->getPointerOperand() == AI) {
          if (Only) { Many = true; break; }
          Only = SI;
        }
      if (!Only || Many)
        return "alloca";
      V = Only->getValueOperand();
    } else if (isa<GlobalVariable>(V)) {
      return "global";
    } else if (isa<Argument>(V)) {
      return "param";
    } else if (auto *CB = dyn_cast<CallBase>(V)) {
      Function *F = CB->getCalledFunction();
      return F && F->getName().contains("alloc") ? "heap" : "unknown"; // malloc/calloc/realloc
    } else if (auto *GEP = dyn_cast<GetElementPtrInst>(V)) {
      V = GEP->getPointerOperand();
    } else if (isa<BitCastInst>(V) || isa<LoadInst>(V)) {
      V = cast<Instruction>(V)->getOperand(0);
    } else {
      break;
    }
  }
  return "unknown";
}

// Static buffer size from the IR type (int a[4]; a[i] -> 4), 0 if unknown.
// The GEP's first index only steps over a pointer, so it has no bound.
uint64_t bufferSize(GetElementPtrInst *GEP, Value *Idx) {
  Type *T = GEP->getSourceElementType();
  bool First = true;
  for (Use &U : GEP->indices()) {
    if (First) { First = false; if (U.get() == Idx) return 0; continue; }
    if (auto *AT = dyn_cast<ArrayType>(T)) {
      if (U.get() == Idx) return AT->getNumElements();
      T = AT->getElementType();
    } else if (auto *ST = dyn_cast<StructType>(T); ST && isa<ConstantInt>(U.get())) {
      T = ST->getElementType(cast<ConstantInt>(U.get())->getZExtValue());
    } else {
      return 0;
    }
  }
  return 0;
}

// ---------------------------------------------------------------- the checks

// The variable behind a value. At -O0 clang reloads `i` from its stack slot
// for every use (and widens it with sext), so the `i` in `i < n` and the `i`
// in `a[i]` are different values -- but both come from the same alloca.
Value *underlyingVar(Value *V) {
  while (auto *Cast = dyn_cast<CastInst>(V))
    V = Cast->getOperand(0);
  if (auto *LD = dyn_cast<LoadInst>(V))
    if (auto *AI = dyn_cast<AllocaInst>(LD->getPointerOperand()))
      return AI;
  return V;
}

// A branch edge that tells a comparison's outcome: taking successor `Succ`
// of `Br` means `Cmp` was `OnTrue`. `Other` = the other side of Cmp's own
// branch (used to recognize rustc's panic_bounds_check).
struct Check {
  ICmpInst *Cmp;
  BranchInst *Br;
  unsigned Succ;
  bool OnTrue;
  BasicBlock *Other;
};

// The compare a branch decides on, looking through llvm.expect (rustc wraps
// its own bounds checks in it).
ICmpInst *branchCmp(BranchInst *BI) {
  Value *C = BI->getCondition();
  if (auto *II = dyn_cast<IntrinsicInst>(C); II && II->getIntrinsicID() == Intrinsic::expect)
    C = II->getArgOperand(0);
  return dyn_cast<ICmpInst>(C);
}

std::vector<Check> collectChecks(Function &F, DominatorTree &DT) {
  std::vector<Check> Checks;
  for (BasicBlock &BB : F) {
    auto *BI = dyn_cast<BranchInst>(BB.getTerminator());
    if (!BI || !BI->isConditional())
      continue;
    // Plain `br (icmp)`: true edge => compare true, false edge => false.
    if (ICmpInst *Cmp = branchCmp(BI)) {
      Checks.push_back({Cmp, BI, 0, true, BI->getSuccessor(1)});
      Checks.push_back({Cmp, BI, 1, false, BI->getSuccessor(0)});
      continue;
    }
    // Loop condition with && / ||: clang -O0 merges the parts into one i1
    // phi and branches on that. Work out what the phi implies for each part.
    auto *Phi = dyn_cast<PHINode>(BI->getCondition());
    if (!Phi || !Phi->getType()->isIntegerTy(1))
      continue;
    unsigned N = Phi->getNumIncomingValues();
    for (unsigned K = 0; K < N; ++K) {
      Value *In = Phi->getIncomingValue(K);
      // Compare is the LAST part (`go && i < n`): it flows into the phi and
      // all other inputs are the same constant c => phi != c means compare != c.
      if (auto *Cmp = dyn_cast<ICmpInst>(In)) {
        ConstantInt *C = nullptr;
        bool Same = N > 1;
        for (unsigned J = 0; J < N; ++J) {
          auto *CJ = J == K ? nullptr : dyn_cast<ConstantInt>(Phi->getIncomingValue(J));
          if (J != K && (!CJ || (C && CJ != C))) Same = false;
          else if (J != K) C = CJ;
        }
        if (Same && C)
          Checks.push_back({Cmp, BI, C->isZero() ? 0u : 1u, C->isZero(), nullptr});
        continue;
      }
      // Compare is an EARLIER part (`i < n && go`): one edge of its branch
      // carries constant c straight into the phi, so phi != c means the
      // compare took its other edge -- provided every other phi input can
      // only arrive through that other edge (checked with dominance).
      auto *C = dyn_cast<ConstantInt>(In);
      auto *CBr = dyn_cast<BranchInst>(Phi->getIncomingBlock(K)->getTerminator());
      if (!C || !CBr || !CBr->isConditional())
        continue;
      ICmpInst *Cmp = branchCmp(CBr);
      if (!Cmp || CBr->getSuccessor(0) == CBr->getSuccessor(1))
        continue;
      unsigned CSucc = CBr->getSuccessor(0) == Phi->getParent() ? 0 : 1;
      if (CBr->getSuccessor(CSucc) != Phi->getParent())
        continue;
      BasicBlockEdge Rest(CBr->getParent(), CBr->getSuccessor(1 - CSucc));
      bool Safe = true;
      for (unsigned J = 0; J < N; ++J)
        if (J != K && Phi->getIncomingValue(J) != C &&
            !DT.dominates(Rest, Phi->getIncomingBlock(J)))
          Safe = false;
      if (Safe)
        Checks.push_back({Cmp, BI, C->isZero() ? 0u : 1u, CSucc == 1, nullptr});
    }
  }
  return Checks;
}

bool callsPanicBoundsCheck(BasicBlock *BB) {
  for (Instruction &I : *BB)
    if (auto *CB = dyn_cast<CallBase>(&I))
      if (Function *F = CB->getCalledFunction(); F && F->getName().contains("panic_bounds_check"))
        return true;
  return false;
}

// A check guarding one access, judged:
//   Op    the compare as it holds on the way to the access, index on the left
//   Bound the other side: a constant, or "var"
//   Ok    yes     index provably below the size (rustc's check, or i < 4 on [4 x T])
//         no      provably wrong (off-by-one, too big, wrong direction past the size)
//         unknown upper bound against a variable / unknown size
//         lower   only a lower-bound or != test
//         none    no check
struct Verdict {
  ICmpInst *Cmp = nullptr;
  std::string Op, Bound, Ok = "none";
  bool Signed = false; // signed compare (C int): does not exclude i < 0
};

Verdict judge(const Check &Ch, Value *Idx, uint64_t Size) {
  Verdict R;
  R.Cmp = Ch.Cmp;
  CmpInst::Predicate P = Ch.Cmp->getPredicate();
  Value *Other = Ch.Cmp->getOperand(1);
  if (underlyingVar(Ch.Cmp->getOperand(0)) != underlyingVar(Idx)) {
    P = CmpInst::getSwappedPredicate(P); // index was on the right
    Other = Ch.Cmp->getOperand(0);
  }
  if (!Ch.OnTrue)
    P = CmpInst::getInversePredicate(P); // access is on the false side
  R.Signed = CmpInst::isSigned(P);
  switch (P) {
  case CmpInst::ICMP_ULT: case CmpInst::ICMP_SLT: R.Op = "<"; break;
  case CmpInst::ICMP_ULE: case CmpInst::ICMP_SLE: R.Op = "<="; break;
  case CmpInst::ICMP_UGT: case CmpInst::ICMP_SGT: R.Op = ">"; break;
  case CmpInst::ICMP_UGE: case CmpInst::ICMP_SGE: R.Op = ">="; break;
  case CmpInst::ICMP_EQ: R.Op = "=="; break;
  default: R.Op = "!="; break;
  }
  auto *C = dyn_cast<ConstantInt>(Other);
  int64_t B = C ? C->getSExtValue() : 0;
  R.Bound = C ? std::to_string(B) : "var";

  if (R.Op == "<" && Ch.Other && callsPanicBoundsCheck(Ch.Other))
    R.Ok = "yes";                                     // rustc's own check
  else if (R.Op == ">" || R.Op == ">=" || R.Op == "!=") {
    int64_t Min = R.Op == ">" ? B + 1 : B;           // smallest index let through
    R.Ok = C && Size && R.Op != "!=" && Min >= (int64_t)Size ? "no" : "lower";
  } else if (C && Size)
    R.Ok = (R.Op == "<" ? B - 1 : B) < (int64_t)Size ? "yes" : "no";
  else
    R.Ok = "unknown";
  return R;
}

// Best check guarding the access (yes > unknown > lower > no > none). A check
// guards it when the access can only be reached through one edge of its
// branch, i.e. that edge dominates the access (so `if (i < n) x = 1; a[i];`
// does not count: both paths reach a[i]).
Verdict bestCheck(Value *Idx, Instruction &Access, uint64_t Size,
                  DominatorTree &DT, const std::vector<Check> &Checks) {
  auto Rank = [](const std::string &Ok) {
    return Ok == "yes" ? 4 : Ok == "unknown" ? 3 : Ok == "lower" ? 2 : Ok == "no" ? 1 : 0;
  };
  Verdict Best;
  Value *Var = underlyingVar(Idx);
  for (const Check &Ch : Checks) {
    if (underlyingVar(Ch.Cmp->getOperand(0)) != Var && underlyingVar(Ch.Cmp->getOperand(1)) != Var)
      continue;
    if (!DT.dominates(BasicBlockEdge(Ch.Br->getParent(), Ch.Br->getSuccessor(Ch.Succ)), Access.getParent()))
      continue;
    Verdict V = judge(Ch, Idx, Size);
    if (Rank(V.Ok) > Rank(Best.Ok))
      Best = V;
  }
  return Best;
}

// ---------------------------------------------------------------- output

// "dir/file" of the access (debug location, else the enclosing function).
std::string sourceFile(Instruction &I) {
  auto Join = [](StringRef Dir, StringRef File) -> std::string {
    if (File.empty()) return "";
    return File.starts_with("/") || Dir.empty() ? File.str() : (Dir + "/" + File).str();
  };
  if (const DebugLoc &DL = I.getDebugLoc())
    if (std::string F = Join(DL->getDirectory(), DL->getFilename()); !F.empty())
      return F;
  if (DISubprogram *SP = I.getFunction()->getSubprogram())
    return Join(SP->getDirectory(), SP->getFilename());
  return "";
}

std::string nameOf(Value *V) { // real name, else the printer's %7
  if (V->hasName())
    return V->getName().str();
  std::string S;
  raw_string_ostream OS(S);
  V->printAsOperand(OS, false);
  return S;
}

// One output row. Every access kind fills it, then print() writes the JSON.
struct Row {
  StringRef Kind;
  Value *Idx = nullptr;
  bool VariableIdx = false;
  std::string Origin;
  uint64_t Size = 0;
  Verdict V;
  unsigned CheckLine = 0;
};

void print(Instruction &I, const Row &R, LoopInfo &LI, StringRef Fn, const std::string &FnDem) {
  errs() << "{"
         << "\"function\": \"" << Fn << "\", "
         << "\"function_demangled\": \"" << FnDem << "\", "
         << "\"file\": \"" << sourceFile(I) << "\", "
         << "\"line\": " << (I.getDebugLoc() ? I.getDebugLoc().getLine() : 0) << ", "
         << "\"access_kind\": \"" << R.Kind << "\", "
         << "\"index_kind\": \"" << (R.VariableIdx ? "variable" : "constant") << "\", "
         << "\"index_name\": \"" << (R.VariableIdx && R.Idx ? nameOf(R.Idx) : "") << "\", "
         << "\"origin\": \"" << R.Origin << "\", "
         << "\"inside_loop\": " << (LI.getLoopFor(I.getParent()) ? "true" : "false") << ", "
         << "\"dominated_by_check\": " << (R.V.Ok != "none" ? "true" : "false") << ", "
         << "\"check_line\": " << R.CheckLine << ", "
         << "\"check_op\": \"" << R.V.Op << "\", "
         << "\"check_bound\": \"" << R.V.Bound << "\", "
         << "\"buffer_size\": " << R.Size << ", "
         << "\"bound_ok\": \"" << R.V.Ok << "\", "
         << "\"index_expr\": \"" << (R.VariableIdx ? indexExpr(R.Idx) : "") << "\", "
         << "\"check_signed\": " << (R.V.Signed ? "true" : "false")
         << "}\n";
}

// load / store through a GEP: arr[i] (C, and Rust slices / arrays)
void reportGep(Instruction &I, Value *Ptr, StringRef Kind, LoopInfo &LI, DominatorTree &DT,
               const std::vector<Check> &Checks, StringRef Fn, const std::string &FnDem) {
  auto *GEP = dyn_cast<GetElementPtrInst>(Ptr);
  if (!GEP)
    return;
  // rustc stores fat-pointer parts in "*.dbg.spill" slots for the debugger: not real accesses
  if (auto *AI = dyn_cast<AllocaInst>(GEP->getPointerOperand()); AI && AI->getName().contains(".dbg.spill"))
    return;
  Row R;
  R.Kind = Kind;
  R.Idx = variableIndex(GEP);
  R.VariableIdx = R.Idx;
  R.Origin = classifyOrigin(GEP->getPointerOperand());
  R.Size = R.Idx ? bufferSize(GEP, R.Idx) : 0;
  if (R.Idx)
    R.V = bestCheck(R.Idx, I, R.Size, DT, Checks);
  R.CheckLine = R.V.Cmp && R.V.Cmp->getDebugLoc() ? R.V.Cmp->getDebugLoc().getLine() : 0;
  print(I, R, LI, Fn, FnDem);
}

// Rust element indexing through std: v[i] on a Vec / VecDeque is a call to
// std's Index<usize> / IndexMut<usize> impl -- the GEP itself happens inside
// std, so without this the tool's own `v[i]` was invisible. std's impl always
// bounds-checks (and panics), so these count as checked against the length.
// Only usize (element access) counts: slicing v[a..b] makes a view, not an
// access (and newer rustc inlines slice ranges entirely). get_unchecked /
// get_unchecked_mut skip the check -- counted in every form.
void reportIndexCall(CallBase &CB, LoopInfo &LI, StringRef Fn, const std::string &FnDem) {
  Function *Callee = CB.getCalledFunction();
  if (!Callee || CB.arg_size() < 2)
    return;
  std::string D = demangle(Callee->getName().str());
  StringRef DS(D);
  bool Unchecked = DS.contains("::get_unchecked");
  bool Checked = (DS.contains(" as core::ops::index::Index<usize>>") ||
                  DS.contains(" as core::ops::index::IndexMut<usize>>")) &&
                 (DS.starts_with("<alloc::vec::Vec<") || DS.starts_with("<[") ||
                  DS.starts_with("<alloc::collections::vec_deque::VecDeque<"));
  if (!Checked && !Unchecked)
    return;
  // arguments: self (+ its length if it is a slice / str), then the index
  unsigned A = 1;
  if (DS.starts_with("<[") && CB.getArgOperand(1)->getType()->isIntegerTy())
    A = 2;
  Row R;
  R.Kind = Unchecked ? "index_unchecked" : "index";
  for (; A < CB.arg_size() && !R.Idx; ++A)
    if (CB.getArgOperand(A)->getType()->isIntegerTy())
      R.Idx = CB.getArgOperand(A);
  R.VariableIdx = !R.Idx || !isa<ConstantInt>(R.Idx);
  R.Origin = classifyOrigin(CB.getArgOperand(0));
  if (Checked) {
    R.V.Op = "<";
    R.V.Bound = "len";
    R.V.Ok = "yes";
    R.CheckLine = CB.getDebugLoc() ? CB.getDebugLoc().getLine() : 0; // the check is in this call
  }
  print(CB, R, LI, Fn, FnDem);
}

} // namespace

struct BufferAccessPass : PassInfoMixin<BufferAccessPass> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {
    if (F.isDeclaration())
      return PreservedAnalyses::all();
    std::string Dem = demangle(F.getName().str());
    errs() << "FUNCTION " << F.getName() << " (" << Dem << ")\n";
    auto &LI = AM.getResult<LoopAnalysis>(F);
    auto &DT = AM.getResult<DominatorTreeAnalysis>(F);
    std::vector<Check> Checks = collectChecks(F, DT);
    for (Instruction &I : instructions(F)) {
      if (auto *LD = dyn_cast<LoadInst>(&I))
        reportGep(I, LD->getPointerOperand(), "load", LI, DT, Checks, F.getName(), Dem);
      else if (auto *ST = dyn_cast<StoreInst>(&I))
        reportGep(I, ST->getPointerOperand(), "store", LI, DT, Checks, F.getName(), Dem);
      else if (auto *CB = dyn_cast<CallBase>(&I))
        reportIndexCall(*CB, LI, F.getName(), Dem);
    }
    return PreservedAnalyses::all();
  }
};

extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "BufferAccessPass", LLVM_VERSION_STRING, [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "buffer-access-pass") { // run_all_passes.sh greps this line
                    FPM.addPass(BufferAccessPass());
                    return true;
                  }
                  return false;
                });
          }};
}