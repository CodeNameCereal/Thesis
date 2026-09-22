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

- **`LoopFinder/LoopFinderPass.cpp`** -- [DONE] Built & working. Uses
  `LoopInfo` (`AM.getResult<LoopAnalysis>(F)`) to extract per function:
  header, depth, latch count (all back edges via `getLoopLatches()`, not
  just one), subloop count, recursing into nested loops, plus each loop's
  source location (see loop kind labeling below). JSON Lines on stderr,
  raw + demangled name per entry.
- **Toy corpus validation** -- [DONE] `benchmarks/{c_cpp,rust}/toy_examples/Loops/loops.{c,rs}`
  -- every hand-written loop found at the right line, right kind, right
  nesting depth; `duffs_device` (C) and `recursive_sum` (Rust) correctly
  produce zero loops (negative controls). Full walkthrough validated
  end-to-end, both languages.
- **`run_pass_on_all.sh`** -- [DONE] Walks `benchmarks/*/*/ir/*.ll`, runs
  the pass, assembles JSON-lines into one array per file via `jq`, writes
  to `pass/results/<lang>/<tool>/<tool>_<O0|O2>.json`, then runs
  `label_loops.py` automatically. Requires `jq`.
- **Loop kind labeling (`label_loops.py` + `tools/loop_ast_rs`)** --
  [DONE, validated] Since IR has no concept of `for`/`while`/`do-while`/
  `loop`/`while-let` (all desugar to the same backward-branch shape),
  each loop's source location (from debug info -- IR must be compiled
  with line tables) is matched against the real source loops found by
  libclang (C) and by `loop_ast_rs`, a small syn-based parser (Rust).
  Writes `<tool>_<O0|O2>.labeled.json` per result file plus one combined
  `pass/results/loop_kinds.tsv`. Validated against the toy corpus for
  both languages -- see toy-corpus edge cases below.
- **Run against real 20-tool corpus** -- [NOT DONE] Blocked on
  regenerating IR with the optnone fix AND line tables (see Gotchas) --
  do both in one `benchmarks.sh` run.
- **Rust std-library filtering** -- [SOLVED by loop kind labeling] Loops
  whose code lives in Rust's std/core/alloc or in a dependency are
  labeled `library` (by source **file path**, not by demangled-name
  prefix -- catches trait-impl functions like `<Vec<T> as Drop>::drop`
  that a name-prefix filter would miss). No separate filtering step or
  `.filtered.json` needed; filter downstream with e.g.
  `jq '[.[] | select(.loop_kind != "library")]'` on a `.labeled.json` file.
- **`BufferAccess/BufferAccessPass.cpp`** -- [DONE] Built and validated
  against C + Rust toy corpora. Finds `load`/`store` mediated by a
  `getelementptr`, classifies constant vs. variable index, traces buffer
  origin (`alloca` / `global` / `param` / `heap` / `unknown`, following
  through -O0 stack spills), flags loop membership, and heuristically
  flags whether the index looks bounds-checked beforehand. Two known
  limitations, see below.
- **Phase 2 (bounds checks) / Phase 3 (cast/init)** -- [NOT DONE] Not
  started -- after phase 1 runs end-to-end on the real corpus.

**Known limitations of `BufferAccessPass` (not bugs -- understood, documented, open):**
- `dominated_by_check` is unreliable on C: at `-O0`, clang reloads a
  variable from its stack slot separately per use, so the check and the
  access end up as different SSA values with no traceable link even when
  a real check guards the access. Works correctly on at least one Rust
  case where rustc didn't reload. Fix needs comparing by underlying
  alloca, not SSA identity -- deferred, not started.
- Buffer accesses split across a function-call boundary (GEP in one
  function, load in the caller) are invisible to the pass -- it only
  looks one instruction back, never into a callee. Confirmed via Rust's
  `get_unchecked`. Would need real interprocedural analysis to fix --
  not started, no decision yet on scope.

**Known limitations of loop kind labeling:**
- Requires IR built with line tables (`-gline-tables-only` / `-C
  debuginfo=line-tables-only`). Without it, every loop is labeled
  `no-debug-info` -- there is no way to recover the source construct
  after compilation without this; the distinction is genuinely discarded
  by the compiler, not merely hidden.
- Treat -O0 as the authoritative mapping; -O2 labels are best-effort,
  since inlining/rotation/unrolling make the location evidence noisier
  for both languages equally.
- A loop inlined from a library with no matching source loop (e.g. Rust
  `.sum()`/`.count()` at -O2) is labeled `implicit` -- a real loop with no
  loop keyword at that site. Not yet exercised against the real corpus,
  only against ad-hoc iterator test files.

**Toy-corpus edge cases (validated, worth restating):**
- `duffs_device` (C) -> **0 loops, confirmed.** `switch` jumps directly into
  blocks between header and latch, breaking dominance -- LLVM correctly
  refuses to call this a natural loop despite the repeating structure.
- `recursive_sum` (Rust) -> **0 loops, confirmed.** Negative control:
  recursion is a cycle in the call graph, not in any function's CFG.
- `goto_loop` (C) -> pass reports a location (from the header branch, since
  clang emits no `!llvm.loop` metadata for a goto-built loop); labeled
  `goto` -- there is no `for`/`while`/`do` statement for libclang to match.
- `labeled_nested_loop` (Rust) -> outer loop has **2 latches, not 1** -- the
  inner-loop-exhausted fallthrough and `continue 'outer` each produce a
  separate back edge into the same header. Both outer and inner loop
  correctly labeled `for` at their correct nesting depth.
- Rust `Iterator::fold` (std internals, pulled into toy IR at -O0 via
  `(0..n).collect()`) -> correctly labeled `library`, not misattributed
  to the calling function.

---

## Repo layout

```
.devcontainer/       Dockerfile (clang-22, rustc, gnulib deps, jq, pip3 libclang
                      for label_loops.py), devcontainer.json
benchmarks/
  c_cpp/<tool>/       src/<tool>.c, ir/<tool>_O0.ll (needs optnone-fix + line-table
                      regen if predating them), ir/<tool>_O2.ll, SOURCE.md, NOTES.md
  c_cpp/toy_examples/ Loops/loops.c, Buffer/buffer.c -- hand-written, one function
                      per loop/buffer-access idiom, used to validate both passes
  rust/<tool>/        src/main.rs + <tool>.rs, ir/<tool>_O0.ll (debug),
                      ir/<tool>_O2.ll (release), SOURCE.md, NOTES.md
  rust/toy_examples/  Loops/loops.rs, Buffer/buffer.rs -- Rust equivalents
  go/                 not started
pass/
  results/            pass/results/<lang>/<tool>/<tool>_<O0|O2>.json (raw pass output),
                      ...labeled.json (+ loop_kind, from label_loops.py),
                      loop_kinds.tsv (combined summary, one row per lang/tool/level/kind)
                      -- empty until run_pass_on_all.sh is run against the real corpus
  src/
    LoopFinder/         LoopFinderPass.cpp -- finds loops + records each loop's
                        source location (loopSrcLoc(), needs line-table IR)
    BufferAccess/       BufferAccessPass.cpp
    build/              gitignored, CMake build output for both passes
    CMakeLists.txt      builds both, points at the LoopFinder/ and BufferAccess/
                        subfolders
  tools/
    loop_ast_rs/        syn-based Rust loop extractor used by label_loops.py
                        (cargo build --release, built automatically on first use)
  scripts/
    benchmarks.sh         scaffolds + compiles IR, both languages, all 10 tools.
                          Safe to rerun. -O0 C compile includes -Xclang
                          -disable-O0-optnone; both languages/levels compiled
                          with line tables for loop kind labeling.
    fill.sh               fills SOURCE.md commit hashes; never overwrites hand-edited files
    dump_environment.sh   regenerates ENVIRONMENT.md
    run_pass_on_all.sh    runs the pass over benchmarks/*/*/ir/*.ll, then runs
                          label_loops.py -- not yet run against the real corpus
    label_loops.py         joins pass output with source-level loops (libclang /
                          loop_ast_rs) -> loop_kind per loop entry + loop_kinds.tsv
thesis/               chapters/ data/ figures/ appendix/ -- all empty
.build/               gitignored, disposable clones of coreutils + uutils-coreutils
CLAUDE.md             assistant-facing notes
ENVIRONMENT.md         resolved toolchain versions
README.md              this file
sources.txt            (check contents -- not yet documented here)
```

---

## Building the corpus

**Automated (preferred):**
```bash
./pass/scripts/benchmarks.sh   # scaffolds, compiles IR, copies src+ir
./pass/scripts/fill.sh         # fills SOURCE.md commit hashes
```
Both safe to rerun. **If `_O0.ll` files predate the optnone fix, or predate
line tables, rerun `benchmarks.sh`** -- without the optnone fix the pass
silently produces zero output against `_O0.ll`, no error; without line
tables every loop is labeled `no-debug-info` by `label_loops.py`.

**Manual, for reference:**

*C (GNU coreutils):*
```bash
mkdir -p .build && cd .build
git clone --recurse-submodules https://github.com/coreutils/coreutils.git
cd coreutils && ./bootstrap && ./configure --disable-gcc-warnings && make
```
`--disable-gcc-warnings` avoids a known `-Werror=maybe-uninitialized` false
positive in `copy-file-data.c`. IR via clang-22 at `-O0 -Xclang
-disable-O0-optnone -gline-tables-only` and `-O2 -gline-tables-only`.

*Rust (uutils/coreutils):*
```bash
mkdir -p .build && cd .build
git clone https://github.com/uutils/coreutils.git uutils-coreutils
cd uutils-coreutils && cargo build && cargo build --release
```
IR via `cargo rustc -p uu_<tool> --bin <tool> -- --emit=llvm-ir -C
debuginfo=line-tables-only` (debug, stands in for O0) and `--release`
(stands in for O2). Debug/release aren't a literal match for clang's
-O0/-O2 -- documented caveat, not swept under the rug.

---

## Known gotchas

- **optnone (the big one):** clang tags every function `optnone` at `-O0`
  by default, which silently blocks *all* FunctionPasses -- `opt` exits
  clean, zero output, no error. Confirmed via `-debug-pass-manager`
  ("Skipping pass ... due to optnone attribute"). Fixed with `-Xclang
  -disable-O0-optnone` on the -O0 compile line -- suppresses the attribute
  without enabling real optimizations. `-O2` doesn't need this. Any
  pre-fix `_O0.ll` needs regenerating.
- **Line tables:** loop kind labeling requires `-gline-tables-only` (C) /
  `-C debuginfo=line-tables-only` (Rust) on both optimization levels.
  Debug info does not change codegen (LLVM design guarantee) -- worth
  spot-checking once that loop counts are identical with/without it.
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
- **`label_loops.py` needs Python libclang bindings** (`import
  clang.cindex`) -- installed via `pip3 install libclang` in the
  Dockerfile (unpinned: the PyPI `libclang` package's own version numbers
  don't track LLVM's; it bundles its own `libclang.so` regardless of
  version, so it doesn't need to match clang-22 exactly).
- **`label_loops.py` needs `pass/tools/loop_ast_rs` present** (`Cargo.toml`
  + `src/main.rs`) -- it builds it automatically on first use via `cargo
  build --release`, but the source files must exist in the repo/be
  committed; a missing directory fails with `FileNotFoundError`.

---

## Immediate next step

Both passes are done and validated against the toy corpus, including loop
kind labeling for both languages. Remaining:
```bash
./pass/scripts/benchmarks.sh              # regenerate corpus w/ optnone fix + line tables
chmod +x pass/scripts/run_pass_on_all.sh  # if needed
./pass/scripts/run_pass_on_all.sh         # -> pass/results/<lang>/<tool>/<tool>_<O0|O2>.json
                                           #    + .labeled.json + loop_kinds.tsv
```
Then: spot-check a few real tools' `.labeled.json` output against their
source (same method used on the toy corpus), check for any `unmatched` or
`no-debug-info` entries in `loop_kinds.tsv`, only then draw cross-language
conclusions.

**Buffer access pass:** built, validated on toy corpus (see Known
limitations above). Next: run against the real corpus, same as
`LoopFinderPass`, once that's done.