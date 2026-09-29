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
`src/`, IR at **-O0 only** (`ir/<tool>_O0.ll`), `SOURCE.md`, `NOTES.md`
(20 folders total). uutils splits CLI entry (`main.rs`, bin target) from
logic (`<tool>.rs`, lib target `uu_<tool>`) -- unlike C's single-file
convention; a real ecosystem difference worth noting in the methodology
section, and one that directly affects how IR must be generated (see
Gotchas: "Rust bin + lib").

**Optimization level:** the whole pipeline is -O0 only. C: `-O0`; Rust:
debug profile (`opt-level=0`), Rust's no-optimization equivalent. Not a
literal match in every compiler detail, but both mean "no optimization" --
documented caveat. -O2 was dropped: loop kind labeling cannot handle it
(see limitations), and release builds broke the Rust bin+lib merge.

---

## Status

- **`LoopFinder/LoopFinderPass.cpp`** -- [DONE] Built & working. Uses
  `LoopInfo` (`AM.getResult<LoopAnalysis>(F)`) to extract per function:
  header, depth, latch count (all back edges via `getLoopLatches()`, not
  just one), subloop count, recursing into nested loops, plus each loop's
  source location `src_loc` (from `loopSrcLoc()`; see loop kind labeling
  below). JSON Lines on stderr, raw + demangled name per entry.
- **`BufferAccess/BufferAccessPass.cpp`** -- [DONE] Built and validated
  against C + Rust toy corpora. Finds `load`/`store` mediated by a
  `getelementptr`, classifies constant vs. variable index, traces buffer
  origin (`alloca` / `global` / `param` / `heap` / `unknown`, following
  through -O0 stack spills), flags loop membership, and heuristically
  flags whether the index looks bounds-checked beforehand. Each entry also
  records the **source `file`** of the access (from the instruction's
  debug location, falling back to the enclosing function's
  `DISubprogram` for compiler-generated instructions with `line: 0`).
  Adding `file` was verified not to change any other field (diff of old
  vs. new output with `file` removed: identical). Two known limitations,
  see below.
- **Toy corpus validation** -- [DONE] `benchmarks/{c_cpp,rust}/toy_examples/Loops/loops.{c,rs}`
  -- every hand-written loop found at the right line, right kind, right
  nesting depth; `duffs_device` (C) and `recursive_sum` (Rust) correctly
  produce zero loops (negative controls). Validated end-to-end in the dev
  container, both languages, at -O0.
- **`run_all_passes.sh`** -- [DONE] Replaces the old `run_pass_on_all.sh`.
  Runs **both** passes over every real tool (skips `toy_examples`),
  -O0 only, then `label_loops.py` and `label_buffers.py`. Checks each
  `.ll` for the two silent-failure gotchas (missing line tables, leftover
  `optnone`) and warns; continues past failures and lists them at the end;
  keeps full `opt` stderr per file in `pass/logs/`. Options: `--build`
  (rebuild plugins), `--regen` (run `benchmarks.sh` first), `--tools a,b`.
  Requires `jq`.
- **Loop kind labeling (`label_loops.py` + `tools/loop_ast_rs`)** --
  [DONE, validated on toy corpus + real corpus] Since IR has no concept of
  `for`/`while`/`do-while`/`loop`/`while-let` (all lower to the same
  back-edge shape), each loop's source location (from debug info -- IR
  must be compiled with line tables) is matched against the real source
  loops found by libclang (C) and by `loop_ast_rs`, a small syn-based
  parser (Rust). Matching: the source loop containing the location -- for
  C the one starting exactly there (clang's `!llvm.loop` metadata gives
  the exact statement start), otherwise the one at the same nesting depth
  as the IR loop. Writes `<tool>_O0.labeled.json` + one combined
  `pass/results/loop_kinds.tsv`.
  Labels: C `for`/`while`/`do-while`/`goto`; Rust `for`/`while`/
  `while-let`/`loop`; plus `library`, `unmatched`, `no-debug-info`.
  On the real corpus: **every loop labeled, zero `unmatched`, zero
  `no-debug-info`** (after the `/rust/deps/` fix, see Gotchas).
  **Still open:** the -O0-only trimmed version was verified identical to
  the previous version outside the container, but the toy tests have not
  been rerun with it in the dev container.
- **Buffer access origin labeling (`label_buffers.py`)** -- [DONE] Tags
  every BufferAccessPass entry with `code_origin`, decided only by its
  `file`: `tool` (C: `.build/coreutils/src/*.c`; Rust:
  `.build/uutils-coreutils/src/uu/<tool>/`), `project` (rest of the same
  project: gnulib `lib/` and `src/*.h` such as `system.h` in C; uucore in
  Rust), `library` (everything outside the project: Rust std/core/alloc,
  std's own deps, third-party crates, `/usr` headers), `unknown` (empty
  file). Writes `<tool>_O0.labeled.json` next to each result and
  `pass/results_buffer/buffer_summary.tsv` (counts per lang / tool /
  level / code_origin / index_kind). Verified on echo against a manual
  per-file breakdown.
- **Run against real 20-tool corpus** -- [DONE] Both passes + both
  labeling scripts, all 20 tools, -O0. See "Results" below.
- **Rust std-library filtering** -- [SOLVED by labeling] Loops whose code
  lives in Rust's std/core/alloc, in std's own dependencies
  (`/rust/deps/`), in cargo dependencies, or in `/usr` headers are labeled
  `library` (by source **file path**, not by demangled-name prefix --
  catches trait-impl functions like `<Vec<T> as Drop>::drop` that a
  name-prefix filter would miss). Filter downstream with e.g.
  `jq '[.[] | select(.loop_kind != "library")]'` on a `.labeled.json` file.
  Buffer accesses: same idea via `code_origin` in `label_buffers.py`.
- **Phase 2 (bounds checks) / Phase 3 (cast/init)** -- [NOT DONE] Not
  started.

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
- Counts every GEP-mediated load/store, including struct **field**
  accesses (constant index), which rustc emits heavily at -O0 (e.g.
  compiler-generated stores into an `alloca` at `line: 0`). The
  `variable`-index subset is the one that corresponds to real array /
  buffer indexing -- compare that subset across languages, not the raw
  total.

**Known limitations of loop kind labeling:**
- Requires IR built with line tables (`-gline-tables-only` / `-C
  debuginfo=line-tables-only`). Without it, every loop is labeled
  `no-debug-info` -- the loop kind cannot be recovered after compilation;
  the compiler discards it, it is not merely hidden.
- **-O0 only.** The -O2-specific logic (following inlining chains,
  `implicit` label, innermost-loop fallback) was removed to keep the
  script simple. At -O2 a Rust `for` loop's location is inside inlined
  `Iterator::next` code, so without that logic -O2 labels would be wrong
  (e.g. `library`).
- Even at -O0, `#[inline(always)]` functions are inlined (seen in
  hashbrown: headers like `bb1.i`, multi-entry `src_loc` chains). The
  script uses `src_loc[0]`, the innermost location, i.e. where the loop's
  code is actually written -- correct for `library` classification.
- **OPEN -- loop inside a closure inside another loop (Rust).** At -O0 the
  closure is its own function, so the inner loop has IR depth 1 but
  source depth 2; the depth check picks the outer loop's kind. This does
  **not** show up as `unmatched` -- it gives a wrong kind silently, so
  zero `unmatched` on the real corpus does not rule it out; needs a
  manual spot-check. Fix (easy, ~15 lines in `loop_ast_rs`): have the
  tool compute depth itself and reset it to 0 on entering a closure
  (`visit_expr_closure`), then use that depth in the script for Rust.
- Loops written inside Rust `macro_rules!` bodies are invisible to syn
  (macro bodies are unparsed tokens) -> `unmatched` or the enclosing
  loop's kind.
- Rust 2024 `while let` chains (`while let Some(x) = it.next() && x > 0`)
  are labeled `while`, not `while-let` (the condition is an `&&` with the
  `let` inside). Easy to fix if it appears.
- **Methodology decision pending:** uucore (Rust, `src/uucore/` in the
  uutils repo) and gnulib (C, `.build/coreutils/lib/`) are NOT matched by
  the `library` pattern in `label_loops.py`, so their loops count as the
  tool's own code. Add `|/src/uucore/|/coreutils/lib/` to `LIBRARY` in
  `label_loops.py` if they should be counted separately. (Buffer accesses
  already keep them apart as `project`, so both views are possible there.)
- **Only partially in the IR, in both languages:** uucore's non-generic
  functions live in uucore's own crate and are not in a tool's IR (only
  its generic / inline code is); likewise, in C only gnulib's inline
  header functions appear, not gnulib's `.c` files. The "project"
  category is partial in a similar way on both sides.

**Toy-corpus edge cases (validated, worth restating):**
- `duffs_device` (C) -> **0 loops, confirmed.** `switch` jumps directly into
  blocks between header and latch, breaking dominance -- LLVM correctly
  refuses to call this a natural loop despite the repeating structure.
- `recursive_sum` (Rust) -> **0 loops, confirmed.** Negative control:
  recursion is a cycle in the call graph, not in any function's CFG.
- `goto_loop` (C) -> pass reports a location (from the header branch, since
  clang emits no `!llvm.loop` metadata for a goto-built loop); labeled
  `goto` -- there is no `for`/`while`/`do` statement for libclang to match.
- `for(;;)` -> `for`, `while(1)` -> `while` (same statements to libclang).
- `labeled_nested_loop` (Rust) -> outer loop has **2 latches, not 1** -- the
  inner-loop-exhausted fallthrough and `continue 'outer` each produce a
  separate back edge into the same header. Both outer and inner loop
  correctly labeled `for` at their correct nesting depth.
- Rust `Iterator::fold` (std internals, pulled into toy IR at -O0 via
  `(0..n).collect()`) -> correctly labeled `library`, not misattributed
  to the calling function.

---

## Results (real corpus, -O0)

**Loops, tool's own code only** (everything except `library`; uucore /
gnulib currently counted as own code, see pending decision):

| tool   | C  | Rust (own) | Rust `library` |
|--------|----|------------|----------------|
| comm   | 9  | 4          | 7              |
| echo   | 9  | 5          | 6              |
| expand | 8  | 7          | 19             |
| fold   | 9  | 15         | 15             |
| mkdir  | 4  | 3          | 2              |
| nl     | 7  | 9          | 14             |
| paste  | 11 | 7          | 10             |
| shuf   | 16 | 12         | 35             |
| sum    | 8  | 3          | 5              |
| tee    | 9  | 4          | 21             |
| **total** | **90** | **69** | **134**     |

C has no `library` loops (libc bodies are not in the IR). Rust's many
`library` loops come largely from iterator-style code (`.map()`,
`.filter()`, `.collect()`, `HashMap`): the looping happens inside std, not
in the tool's source -- a real language/idiom difference, not a pass
artifact. C fold has one `goto` loop -- worth a look for the thesis.

**Buffer accesses, `tool` code only** (from `buffer_summary.tsv`): C 283
total vs. Rust 2233 total. Not yet comparable as-is -- see the field-access
limitation above; compare the `variable`-index subset. Raw Rust totals are
dominated by `library` (e.g. echo: 399 library / 30 project / 114 tool).

**Not yet done before drawing conclusions:** spot-check a few tools'
`.labeled.json` against their source (especially Rust fold, 15 vs. C's 9),
decide uucore/gnulib, and break buffer accesses down by `index_kind`.

---

## Repo layout

```
.devcontainer/       Dockerfile (clang-22, llvm-22 tools incl. llvm-link-22 + opt-22,
                      rustc, gnulib deps, jq, python3-pip + pip3 libclang for
                      label_loops.py), devcontainer.json
benchmarks/
  c_cpp/<tool>/       src/<tool>.c, ir/<tool>_O0.ll, SOURCE.md, NOTES.md
  c_cpp/toy_examples/ Loops/loops.c, Buffer/buffer.c -- hand-written, one function
                      per loop/buffer-access idiom, used to validate both passes
  rust/<tool>/        src/main.rs + <tool>.rs, ir/<tool>_O0.ll (debug profile,
                      bin + lib merged with llvm-link), SOURCE.md, NOTES.md
  rust/toy_examples/  Loops/loops.rs, Buffer/buffer.rs -- Rust equivalents
  go/                 not started
pass/
  results/            <lang>/<tool>/<tool>_O0.json (raw LoopFinder output),
                      <tool>_O0.labeled.json (+ loop_kind, from label_loops.py),
                      loop_kinds.tsv (one row per lang/tool/level/kind),
                      pass_counts.tsv (per-file counts of both passes)
  results_buffer/     <lang>/<tool>/<tool>_O0.json (raw BufferAccess output),
                      <tool>_O0.labeled.json (+ code_origin, from label_buffers.py),
                      buffer_summary.tsv (lang/tool/level/code_origin/index_kind/count).
                      Separate tree so label_loops.py never picks these up.
  logs/               loopfinder/ + bufferaccess/ -- full opt stderr per file
  src/
    LoopFinder/         LoopFinderPass.cpp -- finds loops + records each loop's
                        source location (loopSrcLoc(), needs line-table IR)
    BufferAccess/       BufferAccessPass.cpp -- buffer accesses + source file/line
    build/              gitignored, CMake build output for both passes
    CMakeLists.txt      builds both, points at the LoopFinder/ and BufferAccess/
                        subfolders
  tools/
    loop_ast_rs/        syn-based Rust loop extractor used by label_loops.py
                        (Cargo.toml + src/main.rs; Cargo.lock should be committed;
                        target/ is build output -- gitignore it; built automatically
                        by label_loops.py on first use)
  scripts/
    benchmarks.sh         scaffolds + compiles -O0 IR, both languages, all 10 tools.
                          Safe to rerun. C: -Xclang -disable-O0-optnone
                          -gline-tables-only. Rust: debug profile, bin + lib IR
                          merged with llvm-link-22, line tables, codegen-units=1.
    fill.sh               fills SOURCE.md provenance only (no IR!); never overwrites
                          hand edits, only updates the old auto-written Method line
    dump_environment.sh   regenerates ENVIRONMENT.md
    run_all_passes.sh     runs both passes on all tools (-O0), then label_loops.py
                          and label_buffers.py; --build / --regen / --tools
    label_loops.py        joins -O0 LoopFinder output with source-level loops
                          (libclang / loop_ast_rs) -> loop_kind + loop_kinds.tsv
    label_buffers.py      tags BufferAccess entries tool / project / library by
                          source file -> code_origin + buffer_summary.tsv
thesis/               chapters/ data/ figures/ appendix/ -- all empty
.build/               gitignored, disposable clones of coreutils + uutils-coreutils
CLAUDE.md             assistant-facing notes
ENVIRONMENT.md        resolved toolchain versions
PROGRESS.md           narrative summary of everything done so far (if added to repo)
README.md             this file
sources.txt           (check contents -- not yet documented here)
```

---

## Building the corpus and running everything

**Automated (preferred):**
```bash
./pass/scripts/run_all_passes.sh --regen   # benchmarks.sh, then both passes + labeling
./pass/scripts/fill.sh                     # SOURCE.md provenance (only when needed)
```
Or step by step:
```bash
./pass/scripts/benchmarks.sh        # regenerate -O0 IR, both languages
./pass/scripts/run_all_passes.sh    # both passes + label_loops.py + label_buffers.py
```
Add `--build` to rebuild the pass plugins first; `--tools echo,fold` for a
subset. Quick check on one tool before a full run:
```bash
bash -n pass/scripts/run_all_passes.sh && ./pass/scripts/run_all_passes.sh --tools echo
```

**Manual, for reference:**

*C (GNU coreutils):*
```bash
mkdir -p .build && cd .build
git clone --recurse-submodules https://github.com/coreutils/coreutils.git
cd coreutils && ./bootstrap && ./configure --disable-gcc-warnings && make
```
`--disable-gcc-warnings` avoids a known `-Werror=maybe-uninitialized` false
positive in `copy-file-data.c`. IR via clang-22 at `-O0 -Xclang
-disable-O0-optnone -gline-tables-only`, using each tool's real compile
flags from the verbose build log.

*Rust (uutils/coreutils):*
```bash
mkdir -p .build && cd .build
git clone https://github.com/uutils/coreutils.git uutils-coreutils
cd uutils-coreutils && cargo build
```
IR per tool, both targets, then merged:
```bash
CARGO_INCREMENTAL=0 cargo rustc -p uu_<tool> --bin <tool> -- \
  --emit=llvm-ir -C debuginfo=line-tables-only -C codegen-units=1
CARGO_INCREMENTAL=0 cargo rustc -p uu_<tool> --lib -- \
  --emit=llvm-ir -C debuginfo=line-tables-only -C codegen-units=1
llvm-link-22 -S target/debug/deps/<tool>-*.ll target/debug/deps/uu_<tool>-*.ll \
  -o <tool>_O0.ll
```

**Toy files** (not built by `benchmarks.sh` -- compile by hand, with line tables):
```bash
clang-22 -O0 -Xclang -disable-O0-optnone -gline-tables-only -S -emit-llvm \
  benchmarks/c_cpp/toy_examples/Loops/loops.c -o loops.ll
rustc --crate-type=lib -C opt-level=0 -C debuginfo=line-tables-only --emit=llvm-ir \
  -o loops_rs.ll benchmarks/rust/toy_examples/Loops/loops.rs
```
To label a toy result, put the pass output at
`pass/results/<c_cpp|rust>/toy_loops/toy_loops_O0.json`, run
`python3 pass/scripts/label_loops.py`, then delete that folder and rerun
the script so `loop_kinds.tsv` has no toy rows. (`run_all_passes.sh` warns
if a leftover `toy_loops` folder exists.)

---

## Known gotchas

- **optnone (the big one):** clang tags every function `optnone` at `-O0`
  by default, which silently blocks *all* FunctionPasses -- `opt` exits
  clean, zero output, no error. Confirmed via `-debug-pass-manager`
  ("Skipping pass ... due to optnone attribute"). Fixed with `-Xclang
  -disable-O0-optnone` on the -O0 compile line -- suppresses the attribute
  without enabling real optimizations. Any pre-fix `_O0.ll` needs
  regenerating. `run_all_passes.sh` warns if it finds `optnone`.
- **Rust bin + lib (the second big one):** uutils tools are two crates.
  IR from `--bin <tool>` alone contains only the binary plus the lib's
  **generic** functions (e.g. `uumain<impl Args>`); every non-generic
  function of `<tool>.rs` exists only as a `declare`, or not at all.
  Confirmed on expand: `expand`, `expand_buf`, `next_tabstop`, ... missing
  -> 0 own loops. Fix: emit IR for `--lib` too and merge with
  `llvm-link-22` (done in `benchmarks.sh`). Expand went from 1 to 26
  loops (7 own, vs. 8 in C). Check with:
  `grep '^declare' <tool>_O0.ll | grep uu_<tool>` -- tool functions there
  mean the merge is missing.
- **`-C codegen-units=1` + `CARGO_INCREMENTAL=0`:** makes rustc write one
  `.ll` per crate. With several codegen units a crate is split across
  several `.ll` files and picking up only one silently drops code. No
  effect on -O0 codegen itself.
- **Release (O2) bin+lib merge fails** with `symbol multiply defined`
  (e.g. uucore's `CAPTURE_STARTUP_STATE` defined in both crates). Not an
  issue at -O0; `benchmarks.sh` retries with `llvm-link --override`
  (keeps the lib's copy) if it ever happens.
- **`fill.sh` used to regenerate IR:** it was an old full copy of the IR
  generator (no optnone fix, no line tables, Rust bin-only) and silently
  overwrote correct IR -- all C results became 0, Rust fell back to
  bin-only. Rewritten to fill `SOURCE.md` only; `run_all_passes.sh
  --regen` no longer calls it.
- **Line tables:** loop kind labeling and buffer `file` need
  `-gline-tables-only` (C) / `-C debuginfo=line-tables-only` (Rust). In
  `benchmarks.sh` the C flag is placed after the build-log flags so it
  overrides autotools' default `-g`. Debug info does not change codegen
  (LLVM design guarantee) -- worth spot-checking once that loop counts are
  identical with/without it.
- **`/rust/deps/` paths:** std's own dependencies (e.g. hashbrown, behind
  `HashMap`) are recorded under `/rust/deps/<crate>-<version>/`, not under
  `/rustc/.../library/`. Without `|/rust/deps/` in `LIBRARY`
  (`label_loops.py`) they were labeled `unmatched` (7 in shuf).
- **Cargo registry path:** in the container cargo lives at
  `/usr/local/cargo`, not `~/.cargo`; dependency crates are under
  `/usr/local/cargo/registry/...` -- matched by the `^/usr/` part of
  `LIBRARY`.
- **Always run the pass on the `.ll` you just compiled** -- an older `.ll`
  without line tables gives `"src_loc": []` for every loop.
- **Header path:** `llvm/Passes/PassPlugin.h` (most docs) doesn't exist on
  this Ubuntu/apt.llvm.org LLVM-22 build -- real path is
  `llvm/Plugins/PassPlugin.h`. Confirmed via `dpkg -L llvm-22-dev | grep
  PassPlugin`. Recheck if packages update.
- gnulib checkout needs `--disable-gcc-warnings` (unrelated -Werror false
  positive in `copy-file-data.c`). Two harmless clang warnings from gnulib
  headers (`-Wc23-extensions`, `-Wtautological-constant-out-of-range-compare`)
  are silenced in `benchmarks.sh`; they don't affect the IR.
- `sum`/cksum-family tools are multicall binaries built from shared
  `cksum.c` -- `sum.c` has no `main()`. Build script's compile-line lookup
  has a fallback for this; check before assuming a new no-main() tool is
  broken.
- `cargo rustc -p uu_<tool> -- --emit=llvm-ir` needs `--bin <tool>` /
  `--lib` explicitly (packages define both lib and bin targets).
- `./bootstrap` failures on a missing tool: install via apt, see
  Dockerfile's gnulib prerequisite block.
- **`label_loops.py` needs Python libclang bindings** (`import
  clang.cindex`) -- installed via `pip3 install libclang` in the
  Dockerfile, **unpinned**: PyPI's `libclang` versions don't follow LLVM's
  (newest was 18.1.1; `libclang==22.*` broke the container build). The
  script itself loads the system `/usr/lib/llvm-22/lib/libclang.so*`
  (from `libclang-22-dev`), not `libclang-cpp.so`.
- **`label_loops.py` needs `pass/tools/loop_ast_rs` present** (`Cargo.toml`
  + `src/main.rs`) -- it builds it automatically on first use via `cargo
  build --release`, but the source files must exist in the repo; a
  missing directory fails with `FileNotFoundError`, a missing `src/main.rs`
  with Cargo's "no targets specified".
- `loop_ast_rs` needs `proc-macro2`'s `span-locations` feature -- without
  it every span is line 0, column 0 outside a real proc macro.
- **`set -o pipefail` + `grep`:** a `grep` with no matches exits 1, which
  under `pipefail` fails the whole pipeline. `run_all_passes.sh` wraps it
  (`{ grep ... || true; }`) so a tool with zero entries reports 0, not a
  failure.

---

## Immediate next step

Phase 1 runs end-to-end on the real corpus; buffer accesses are collected
and labeled. Before drawing cross-language conclusions:

1. Rerun both toy tests once with the trimmed -O0-only `label_loops.py`.
2. Spot-check a few real tools' `.labeled.json` against their source (same
   method as the toy corpus) -- especially Rust fold (15 own loops vs. C's
   9) and C fold's `goto` loop; look for the closure-depth and `while let`
   chain cases (neither shows up as `unmatched`).
3. Decide with the advisor: uucore/gnulib as the tool's own code or
   separate (`project`).
4. Break buffer accesses down by `index_kind` (`buffer_summary.tsv`) and
   compare the `variable`-index `tool` subset across languages.
5. Then start phase 2 (bounds checks), building on the variable-index
   buffer accesses.