# Thesis: LLVM Loop Analysis & Security-Related Statistics Passes

Comparing C and Rust implementations of the same tools at the LLVM IR
level. Phase 1 (current): find loops. Later: bounds checks, then broader
security-relevant patterns (casts, initializations, etc.), per advisor.

## Status

- [x] Devcontainer: clang-22 + rustc 1.98.1, both LLVM 22.1.8 (confirmed
      via clang/llvm-config/rustc --verbose all agreeing).
- [x] 10-tool corpus: sum, expand, echo, fold, tee, mkdir, comm, paste,
      nl, shuf -- C (coreutils) + Rust (uutils), src + IR + SOURCE.md +
      NOTES.md for all 20 folders.
- [x] **LoopFinderPass.cpp built and working.** Uses LLVM's LoopInfo
      (AM.getResult<LoopAnalysis>(F)) to extract per function: header,
      depth, latch count (all back edges, not just one), subloop count,
      recursing into nested loops. Outputs JSON Lines on stderr, raw +
      demangled function name per entry.
- [x] Toy corpus (pass/toy_examples/loops.c, loops.rs) validated against
      pass/ground_truth.txt -- every function matches, including two
      resolved edge cases:
      - `duffs_device` (C): 0 loops, confirmed. Switch jumps directly
        into blocks between header/latch, breaking dominance -- LLVM
        correctly refuses to call this a natural loop.
      - `labeled_nested_loop` (Rust): outer loop has 2 latches, not 1 --
        both the inner-loop-exhausted fallthrough and `continue 'outer`
        produce separate back edges into the same header.
- [x] `pass/scripts/run_pass_on_all.sh` -- walks all
      `benchmarks/*/*/ir/*.ll`, runs the pass, assembles JSON-lines
      output into one JSON array per file via `jq`, writes to
      `pass/results/`. Needs `jq` (add to Dockerfile if missing).
- [ ] **NOT DONE: run against the real 20-tool corpus.** Blocked on
      regenerating C `_O0.ll` files with the optnone fix (below) first.
- [ ] Not done: filter std-library/runtime functions out of Rust's IR
      before cross-language comparison. Necessary, not optional -- toy
      Rust corpus alone pulled in ~40 std/core/alloc functions vs. ~9
      hand-written ones, only 1 of the 40 containing a loop. Both raw
      and demangled names are already in pass output to support this.
- [ ] Not done: phase 2 (bounds checks), phase 3 (cast/init patterns) --
      after phase 1 works end-to-end on the real corpus.

## Repo layout

    .devcontainer/       Dockerfile (clang-22, rustc, gnulib deps, jq), devcontainer.json
    benchmarks/
        c_cpp/<tool>/     src/<tool>.c, ir/<tool>_O0.ll (needs optnone-fix
                          regen if predating the fix), ir/<tool>_O2.ll,
                          SOURCE.md, NOTES.md
        rust/<tool>/      src/main.rs + <tool>.rs, ir/<tool>_O0.ll (debug),
                          ir/<tool>_O2.ll (release), SOURCE.md, NOTES.md
        go/               not started
    pass/
        toy_examples/     loops.c, loops.rs -- one function per loop idiom
        ground_truth.txt  expected pass output per toy function, validated
        src/              LoopFinderPass.cpp + CMakeLists.txt (DONE),
                          build/ (gitignored, generated .so)
        scripts/
            benchmarks.sh     scaffolds + compiles IR, both languages, all
                              10 tools. Safe to rerun. -O0 C compile now
                              includes -Xclang -disable-O0-optnone.
            fill.sh           fills SOURCE.md commit hashes; never
                              overwrites hand-edited files
            dump_environment.sh  regenerates ENVIRONMENT.md
            run_pass_on_all.sh   DONE, not yet run on real corpus
        results/          empty -- nothing generated against real corpus yet
    thesis/               chapters/ data/ figures/ appendix/ -- all empty
    .build/               GITIGNORED, disposable clones of coreutils +
                          uutils-coreutils, rebuilt per-machine
    ENVIRONMENT.md        resolved toolchain versions
    README.md             this file

## Why Rust tool folders have 2 source files

uutils splits CLI entrypoint (`main.rs`) from logic (`<tool>.rs`, part of
the lib target) -- unlike C's single-file convention. Real
language/ecosystem difference, noted for the methodology section.

---

## Toolchain version parity

clang-22 and rustc 1.98.1 (stable) both resolve to LLVM 22.1.8 -- confirmed
via `clang --version`, `llvm-config --version`, and `rustc --version
--verbose`'s `LLVM version:` line all agreeing. No `rust-toolchain.toml`;
rustup's `stable` channel currently matches. Re-verify after any toolchain
update; if rustc moves ahead of clang-22, either bump clang or pin rustc.

---

## Building the corpus from scratch

### C (GNU coreutils)

    mkdir -p .build && cd .build
    git clone --recurse-submodules https://github.com/coreutils/coreutils.git
    cd coreutils && ./bootstrap && ./configure --disable-gcc-warnings && make

`--disable-gcc-warnings` avoids a known -Werror=maybe-uninitialized false
positive in copy-file-data.c. IR generated per-tool via clang-22 at
`-O0 -Xclang -disable-O0-optnone` and `-O2` (see gotchas for why the
optnone flag is required).

### Rust (uutils/coreutils)

    mkdir -p .build && cd .build
    git clone https://github.com/uutils/coreutils.git uutils-coreutils
    cd uutils-coreutils && cargo build && cargo build --release

IR via `cargo rustc -p uu_<tool> --bin <tool> -- --emit=llvm-ir` (debug,
stands in for O0) and `--release` (stands in for O2). Debug/release
aren't a literal match for clang's -O0/-O2 -- documented caveat, not
swept under the rug.

### Automated (use this instead of the manual steps above)

    ./pass/scripts/benchmarks.sh    # scaffolds, compiles IR, copies src+ir
    ./pass/scripts/fill.sh          # fills SOURCE.md commit hashes

Both safe to rerun; fill.sh never overwrites hand-edited files. **If your
`_O0.ll` files predate the optnone fix, rerun benchmarks.sh** -- the pass
silently produces zero output against old ones, no error.

---

## Known gotchas

- gnulib checkout needs `--disable-gcc-warnings` (unrelated -Werror false
  positive in copy-file-data.c).
- `sum`/cksum-family tools are multicall binaries built from shared
  cksum.c -- sum.c has no main(). Build script's compile-line lookup has
  a fallback for this; check it before assuming a new no-main() tool is
  broken.
- `cargo rustc -p uu_<tool> -- --emit=llvm-ir` needs `--bin <tool>`
  explicitly (packages define both lib and bin targets).
- `./bootstrap` failures on a missing tool: install via apt, see
  Dockerfile's gnulib prerequisite block.
- rustc debug/release != clang -O0/-O2 literally (see Rust build section).
- **clang's -O0 tags every function `optnone` by default, which silently
  blocks ALL FunctionPasses (including read-only ones) -- opt exits
  clean, zero output, no error.** Confirmed via `-debug-pass-manager`
  ("Skipping pass ... due to optnone attribute"). Fixed with `-Xclang
  -disable-O0-optnone` on the -O0 compile line -- suppresses the
  attribute without enabling real optimizations. -O2 doesn't need this.
  Any pre-fix `_O0.ll` needs regenerating.
- LLVM headers on this Ubuntu/apt.llvm.org build don't match upstream's
  layout: `llvm/Passes/PassPlugin.h` (used in most docs/examples) doesn't
  exist here -- real path is `llvm/Plugins/PassPlugin.h`. Confirmed via
  `dpkg -L llvm-22-dev | grep PassPlugin`. Recheck if packages update.
- Rust std-library noise in IR (see Status, filtering item) -- real
  methodology issue, not yet resolved.

---

## Immediate next step

Pass is done and validated against the toy corpus. Remaining:

    ./pass/scripts/benchmarks.sh              # regenerate corpus w/ optnone fix
    chmod +x pass/scripts/run_pass_on_all.sh  # if needed
    ./pass/scripts/run_pass_on_all.sh         # -> pass/results/<lang>/<tool>/<tool>_<O0|O2>.json

Then: sanity-check a few results, decide + implement std-library
filtering, only then draw cross-language conclusions.