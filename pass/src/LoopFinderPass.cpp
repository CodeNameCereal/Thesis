#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Demangle/Demangle.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {

// llvm::demangle() tries the demangling schemes LLVM knows about (Itanium
// C++, Rust's v0 mangling, MSVC, etc.) against whatever name you hand it.
// If the name doesn't match any known mangling scheme -- which is exactly
// the case for your plain C functions like "for_loop", since C doesn't
// mangle names at all -- it just returns the input unchanged. So it's
// safe to call on every function name regardless of source language;
// there's no need to detect "is this Rust" ourselves first.
std::string demangledName(StringRef RawName) {
  return demangle(RawName.str());
}

// Recursively print one loop and all loops nested inside it. Unchanged
// from before except that both the raw and demangled function name are
// now threaded through and included in the JSON output.
void printLoopRecursive(const Loop *L, StringRef RawFuncName,
                         const std::string &DemangledFuncName) {
  StringRef HeaderName = L->getHeader()->getName();
  unsigned Depth = L->getLoopDepth();

  SmallVector<BasicBlock *, 4> Latches;
  L->getLoopLatches(Latches);

  unsigned SubLoopCount = L->getSubLoops().size();

  // Both names are included so downstream tooling (a future filtering
  // script, e.g.) can match against the readable demangled form, while
  // the raw mangled name is preserved too -- useful as a stable,
  // unambiguous key, since two different generic instantiations can
  // sometimes demangle to very similar-looking readable strings.
  errs() << "{"
         << "\"function\": \"" << RawFuncName << "\", "
         << "\"function_demangled\": \"" << DemangledFuncName << "\", "
         << "\"header\": \"" << HeaderName << "\", "
         << "\"depth\": " << Depth << ", "
         << "\"latch_count\": " << Latches.size() << ", "
         << "\"subloop_count\": " << SubLoopCount << "}\n";

  for (const Loop *Sub : L->getSubLoops()) {
    printLoopRecursive(Sub, RawFuncName, DemangledFuncName);
  }
}

} // end anonymous namespace

struct LoopFinderPass : PassInfoMixin<LoopFinderPass> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {
    if (F.isDeclaration())
      return PreservedAnalyses::all();

    StringRef RawName = F.getName();
    std::string Demangled = demangledName(RawName);

    // The FUNCTION marker line now shows both forms too -- this is the
    // line you'll actually be scanning by eye when eyeballing opt's
    // output directly, so this is where readability matters most.
    errs() << "FUNCTION " << RawName << " (" << Demangled << ")\n";

    LoopInfo &LI = AM.getResult<LoopAnalysis>(F);

    for (const Loop *L : LI) {
      printLoopRecursive(L, RawName, Demangled);
    }

    return PreservedAnalyses::all();
  }
};

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "LoopFinderPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "loop-finder") {
                    FPM.addPass(LoopFinderPass());
                    return true;
                  }
                  return false;
                });
          }};
}