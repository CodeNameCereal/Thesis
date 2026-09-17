# Thesis: LLVM Loop Analysis & Security-Related Statistics Passes

Comparing C and Rust implementations of the same coreutils tools at the
LLVM IR level. Phases (per advisor): **1. loops** -> **2. bounds checks +
buffer accesses** (current) -> **3. broader security patterns** (casts,
initializations, etc.)

**Toolchain:** clang-22 + rustc 1.98.1 (stable), both on LLVM 22.1.8 --
confirmed via `clang --version` / `llvm-config --version` / `rustc
--verbose`'s `LLVM version:` line all agreeing. No `rust-toolchain.toml`;
re-verify after any toolchain update -- if rustc drifts ahead of clang-22,
bump clang or pin rustc.

**Corpus:** 10 tools -- `sum, expand, echo, fold, tee, mkdir, comm, paste,
nl, shuf` -- both C (GNU coreutils) and Rust (uutils/coreutils), each with
`src/`, IR at two optimization levels, `SOURCE.md`, `NOTES.md` (20 folders
total). uutils splits CLI entry (`main.rs`) from logic (`<tool>.rs`,
lib target) -- unlike C's single-file convention; a real ecosystem
difference worth noting in the methodology section.

---

## Status

- **`LoopFinderPass.cpp`** -- [DONE] Built & working. Uses `LoopInfo`
  (`AM.getResult<LoopAnalysis>(F)`) to extract per function: header,
  depth, latch count (all back edges via `getLoopLatches()`, not just
  one), subloop count, recursing into nested loops. JSON Lines on
  stderr, raw + demangled name per entry.
- **Toy corpus validation** -- [DONE] `pass/toy_examples/loops.{c,rs}`
  vs. `pass/ground_truth.txt` -- full match. Two notable edge cases
  below.
- **`run_pass_on_all.sh`** -- [DONE] Walks `benchmarks/*/*/ir/*.ll`,
  runs the pass, assembles JSON-lines into one array per file via
  `jq`, writes to `pass/results/`. Requires `jq`.
- **Run against real 20-tool corpus** -- [NOT DONE] Blocked on
  regenerating C `_O0.ll` with the optnone fix (see Gotchas).
- **Rust std-library filtering** -- [NOT DONE, BUT NECESSARY] Toy Rust
  corpus alone pulled in ~40 std/core/alloc functions vs. ~9
  hand-written, only 1 of the 40 containing a loop. Raw + demangled
  names are already in pass output to support this later.
- **`BufferAccessPass.cpp`** -- [IN PROGRESS] Written, not yet
  built/run. Finds `load`/`store` instructions mediated by a
  `getelementptr` (buffer access). Classifies each as constant- vs.
  variable-index, traces the buffer's origin (`alloca` / `global` /
  `param` / `heap` / `unknown`), tags whether it's inside a loop
  (reuses `LoopInfo`), and flags whether a dominating `icmp` on the
  same index looks like a guard. Toy corpus + ground truth written
  (`pass/toy_examples/buffer_access.{c,rs}`,
  `pass/ground_truth_buffer_access.txt`) but not yet compiled or
  validated.
- **Phase 2 (bounds checks) / Phase 3 (cast/init)** -- [NOT DONE] Not
  started -- after phase 1 runs end-to-end on the real corpus.

**Toy-corpus edge cases (validated, worth restating):**
- `duffs_device` (C) -> **0 loops, confirmed.** `switch` jumps directly into
  blocks between header and latch, breaking dominance -- LLVM correctly
  refuses to call this a natural loop despite the repeating structure.
- `labeled_nested_loop` (Rust) -> outer loop has **2 latches, not 1** -- the
  inner-loop-exhausted fallthrough and `continue 'outer` each produce a
  separate back edge into the same header.

---

## Repo layout

```
.devcontainer/       Dockerfile (clang-22, rustc, gnulib deps, jq), devcontainer.json
benchmarks/
  c_cpp/<tool>/       src/<tool>.c, ir/<tool>_O0.ll (needs optnone-fix regen
                      if predating the fix), ir/<tool>_O2.ll, SOURCE.md, NOTES.md
  rust/<tool>/        src/main.rs + <tool>.rs, ir/<tool>_O0.ll (debug),
                      ir/<tool>_O2.ll (release), SOURCE.md, NOTES.md
  go/                 not started
pass/
  toy_examples/       loops.c, loops.rs -- one function per loop idiom
                      buffer_access.c, buffer_access.rs -- one function per
                      buffer-access idiom (guarded/unguarded, alloca/param/
                      heap origin, constant vs. variable index)
  ground_truth.txt              expected LoopFinderPass output, validated
  ground_truth_buffer_access.txt  expected BufferAccessPass output, NOT yet validated
  src/                LoopFinderPass.cpp + CMakeLists.txt (done), build/ (gitignored)
                      BufferAccessPass.cpp (written, not yet added to
                      CMakeLists.txt or built)
  scripts/
    benchmarks.sh         scaffolds + compiles IR, both languages, all 10 tools.
                          Safe to rerun. -O0 C compile includes -Xclang -disable-O0-optnone.
    fill.sh               fills SOURCE.md commit hashes; never overwrites hand-edited files
    dump_environment.sh   regenerates ENVIRONMENT.md
    run_pass_on_all.sh    done, not yet run on real corpus
  results/            empty -- nothing generated against real corpus yet
thesis/               chapters/ data/ figures/ appendix/ -- all empty
.build/               gitignored, disposable clones of coreutils + uutils-coreutils
ENVIRONMENT.md         resolved toolchain versions
README.md              this file
```

---

## Building the corpus

**Automated (preferred):**
```bash
./pass/scripts/benchmarks.sh   # scaffolds, compiles IR, copies src+ir
./pass/scripts/fill.sh         # fills SOURCE.md commit hashes
```
Both safe to rerun. **If `_O0.ll` files predate the optnone fix, rerun
`benchmarks.sh`** -- the pass silently produces zero output against old
ones, no error.

**Manual, for reference:**

*C (GNU coreutils):*
```bash
mkdir -p .build && cd .build
git clone --recurse-submodules https://github.com/coreutils/coreutils.git
cd coreutils && ./bootstrap && ./configure --disable-gcc-warnings && make
```
`--disable-gcc-warnings` avoids a known `-Werror=maybe-uninitialized` false
positive in `copy-file-data.c`. IR via clang-22 at `-O0 -Xclang
-disable-O0-optnone` and `-O2`.

*Rust (uutils/coreutils):*
```bash
mkdir -p .build && cd .build
git clone https://github.com/uutils/coreutils.git uutils-coreutils
cd uutils-coreutils && cargo build && cargo build --release
```
IR via `cargo rustc -p uu_<tool> --bin <tool> -- --emit=llvm-ir` (debug,
stands in for O0) and `--release` (stands in for O2). Debug/release
aren't a literal match for clang's -O0/-O2 -- documented caveat, not swept
under the rug.

---

## Known gotchas

- **optnone (the big one):** clang tags every function `optnone` at `-O0`
  by default, which silently blocks *all* FunctionPasses -- `opt` exits
  clean, zero output, no error. Confirmed via `-debug-pass-manager`
  ("Skipping pass ... due to optnone attribute"). Fixed with `-Xclang
  -disable-O0-optnone` on the -O0 compile line -- suppresses the attribute
  without enabling real optimizations. `-O2` doesn't need this. Any
  pre-fix `_O0.ll` needs regenerating.
- **Header path:** `llvm/Passes/PassPlugin.h` (most docs) doesn't exist on
  this Ubuntu/apt.llvm.org LLVM-22 build -- real path is
  `llvm/Plugins/PassPlugin.h`. Confirmed via `dpkg -L llvm-22-dev | grep
  PassPlugin`. Recheck if packages update.
- gnulib checkout needs `--disable-gcc-warnings` (unrelated -Werror false
  positive in `copy-file-data.c`).
- `sum`/cksum-family tools are multicall binaries built from shared
  `cksum.c` -- `sum.c` has no `main()`. Build script's compile-line lookup
  has a fallback for this; check before assuming a new no-main() tool is
  broken.
- `cargo rustc -p uu_<tool> -- --emit=llvm-ir` needs `--bin <tool>`
  explicitly (packages define both lib and bin targets).
- `./bootstrap` failures on a missing tool: install via apt, see
  Dockerfile's gnulib prerequisite block.
- Rust std-library noise in IR -- see Status table; real methodology
  issue, not yet resolved.

---

## Immediate next step

Pass is done and validated against the toy corpus. Remaining:
```bash
./pass/scripts/benchmarks.sh              # regenerate corpus w/ optnone fix
chmod +x pass/scripts/run_pass_on_all.sh  # if needed
./pass/scripts/run_pass_on_all.sh         # -> pass/results/<lang>/<tool>/<tool>_<O0|O2>.json
```
Then: sanity-check a few results, decide + implement std-library
filtering, only then draw cross-language conclusions.

**Buffer access pass (phase 2, in progress):** `BufferAccessPass.cpp` is
written but not yet wired up. To validate:
```bash
# add an add_library(BufferAccessPass MODULE BufferAccessPass.cpp) target
# to pass/src/CMakeLists.txt, next to LoopFinderPass, then rebuild.
opt-22 -load-pass-plugin=./libBufferAccessPass.so -passes=buffer-access-pass \
       -disable-output <toy .ll file>
# compare stderr output against pass/ground_truth_buffer_access.txt
```
Only after that passes should it be run against the real corpus, same as
`LoopFinderPass`.