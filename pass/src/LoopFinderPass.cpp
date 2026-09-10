#include "llvm/IR/Function.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

// 1. The pass itself.
//    - PassInfoMixin<LoopFinderPass> is boilerplate LLVM's new pass
//      manager wants every pass to inherit from -- it gives LLVM a way
//      to identify/name the pass generically without us writing that
//      machinery ourselves.
//    - The run() signature (Function &F, FunctionAnalysisManager &AM)
//      is what marks this as a FUNCTION-level pass: LLVM will call
//      run() once for every function in the module being processed.
//      (A module pass would instead take (Module &M, ModuleAnalysisManager
//      &AM); a loop pass takes (Loop &L, ...). The signature is how LLVM
//      tells passes apart -- there's no separate "I am a function pass"
//      declaration anywhere else.)
struct LoopFinderPass : PassInfoMixin<LoopFinderPass> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {

    // errs() is LLVM's wrapper around stderr -- the conventional place
    // for a pass's own diagnostic/debug output (as opposed to modifying
    // the IR itself, which is the pass's "real" output).
    // F.getName() returns the function's name as it appears in the .ll
    // file (e.g. "for_loop", "while_loop", etc. from your toy corpus).
    errs() << "visiting function: " << F.getName() << "\n";

    // This pass doesn't modify the IR or compute anything downstream
    // passes might care about yet, so we tell LLVM "nothing changed" --
    // any analysis results already computed and cached (like a LoopInfo
    // from a previous pass in the pipeline) remain valid and don't need
    // to be recomputed. Once we start USING LoopInfo in the next stage,
    // this return value doesn't need to change, since we still won't be
    // modifying the IR -- only reading from analyses.
    return PreservedAnalyses::all();
  }
};

// 2. The plugin entry point.
//    opt calls dlopen() on your .so, then looks up a symbol with this
//    EXACT name. extern "C" disables C++ name mangling so the symbol in
//    the compiled .so is literally "llvmGetPassPluginInfo", not some
//    mangled C++ signature opt wouldn't know how to search for.
//    LLVM_ATTRIBUTE_WEAK lets multiple plugins coexist without a linker
//    clash if this symbol shows up more than once across loaded plugins.
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION,   // API version -- must match the LLVM
                                     // that will load this plugin, which
                                     // the macro handles for us.
          "LoopFinderPass",         // Display name for this plugin (shows
                                     // up in some opt diagnostics/listings).
          LLVM_VERSION_STRING,       // LLVM version this was built against.
          [](PassBuilder &PB) {
            // 3. This lambda runs once, at plugin-load time, and its job
            //    is to register OUR OWN callback with PassBuilder. That
            //    inner callback is what actually gets consulted every
            //    time PassBuilder parses a -passes=... string and hits a
            //    name it doesn't already recognize as a built-in pass.
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  // Name is whatever text appeared in -passes=<text>.
                  // We only react to the exact string "loop-finder";
                  // this is the string you'll type after -passes= on
                  // the opt command line.
                  if (Name == "loop-finder") {
                    // Add an instance of our pass to the function pass
                    // pipeline opt is currently assembling.
                    FPM.addPass(LoopFinderPass());
                    // true tells PassBuilder "yes, I recognized and
                    // handled this name -- stop looking elsewhere."
                    return true;
                  }
                  // false tells PassBuilder "not mine, keep searching"
                  // (e.g. against built-in LLVM pass names, or other
                  // plugins that might also be loaded).
                  return false;
                });
          }};
}
