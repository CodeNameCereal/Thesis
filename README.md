# Thesis: LLVM Loop Analysis & Security-Related Statistics Passes

Compares C (GNU coreutils) and Rust (uutils/coreutils) implementations of the
same tools at the LLVM IR level. Phases (per advisor): **1. loops** ->
**2. bounds checks + buffer accesses** (current) -> **3. broader security
patterns** (casts, initializations, ...).

- **Toolchain:** clang-22 + rustc 1.98.1, both on LLVM 22.1.8 (re-verify after
  any toolchain update; no `rust-toolchain.toml`).
- **Corpus:** `sum, expand, echo, fold, tee, mkdir, comm, paste, nl, shuf` in C
  and Rust -- `benchmarks/<c_cpp|rust>/<tool>/{src, ir/<tool>_O0.ll, SOURCE.md, NOTES.md}`.
- **-O0 only.** C `-O0`, Rust debug profile (`opt-level=0`). Not identical in
  every compiler detail, but both mean "no optimization".

---

## Run

```bash
./pass/scripts/run_all_passes.sh --regen   # regenerate IR, run both passes + labeling
python3 pass/scripts/summarize.py          # C vs Rust tables -> pass/results/summary.md
```

| Script | What it does |
|---|---|
| `benchmarks.sh` | Builds -O0 IR for all tools. C: real build flags + `-disable-O0-optnone -gline-tables-only`. Rust: `--bin` + `--lib` IR merged with `llvm-link-22` |
| `run_all_passes.sh` | Both passes on all tools, then both labeling scripts. `--build`, `--regen`, `--tools a,b` |
| `label_loops.py` | Loop kind per loop (`for`/`while`/`do-while`/`goto`/`loop`/`while-let`/`library`) |
| `label_buffers.py` | Buffer access origin: `tool` / `project` / `library` |
| `summarize.py` | Final C vs Rust tables |
| `toy_check.sh` | Regression test on the toy corpus |
| `spot_check.py <lang> <tool>` | Each loop next to its source line, for manual checking |
| `fill.sh` | Fills `SOURCE.md` provenance only (never builds IR) |

Output: `pass/results/` (loops), `pass/results_buffer/` (buffer accesses),
`pass/logs/` (opt stderr).

---

## Status

- **LoopFinderPass** [DONE] -- per loop: header, depth, latches, subloops, source location.
- **BufferAccessPass** [DONE] -- GEP-mediated load/store: index kind, buffer origin,
  in-loop, bounds-check heuristic, source file/line.
- **Toy corpus** [DONE] -- revalidated with current scripts (`toy_check.sh`).
- **Real corpus** [DONE] -- all 20 tools, zero `unmatched` / `no-debug-info`.
- **Spot-check** [DONE] -- Rust fold 15/15, C fold 9/9, Rust tee correct.
- **Phase 2 / 3** [NOT STARTED]

---

## Results (-O0)

**Loops by where their code lives** (tool = the tool's own source; project =
shared project code: `system.h`/gnulib in C, uucore in Rust; library = std & deps):

| tool | C tool | C project | Rust tool | Rust project | Rust library |
|---|---|---|---|---|---|
| comm | 6 | 3 | 2 | 2 | 7 |
| echo | 6 | 3 | 5 | 0 | 6 |
| expand | 5 | 3 | 7 | 0 | 19 |
| fold | 6 | 3 | 15 | 0 | 15 |
| mkdir | 1 | 3 | 3 | 0 | 2 |
| nl | 4 | 3 | 9 | 0 | 14 |
| paste | 8 | 3 | 7 | 0 | 10 |
| shuf | 13 | 3 | 12 | 0 | 35 |
| sum | 8 | 0 | 3 | 0 | 5 |
| tee | 6 | 3 | 3 | 1 | 21 |
| **total** | **63** | **27** | **66** | **3** | **134** |

- Own loops are about equal (63 vs 66). C's 27 project loops are the same 3
  `system.h` help/usage loops in every tool (not sum: no own `main()`).
- Style differs: C mostly `for` (31) / `while` (28); Rust `for` (35), `while`
  (13), `loop` (11), `while-let` (7).
- Rust's 134 library loops = looping inside iterators/std (`.map()`,
  `.collect()`, `HashMap`) instead of in the tool's code. C has none (libc
  bodies are not in the IR).

**Buffer accesses, tool code:** variable index (real indexing) C 98 vs Rust 32;
constant index (mostly struct fields) C 185 vs Rust 2201. Rust's 32 is an
**undercount**: `vec[i]` goes through the `Index` trait, so the access happens
inside std (see limitations).

---

## Known limitations

- **Loop counts are IR natural loops, not source statements.** Loops sharing a
  header merge: Rust fold `loop { while ... {} ... }` (while first in the body)
  -> 1 IR loop with 3 latches.
- **Rust loop inside a closure inside a loop** may get the outer loop's kind
  (IR depth != source depth). Not flagged as `unmatched`; `spot_check.py`
  marks these `CLOSURE`. None found in fold/tee.
- Loops in Rust `macro_rules!` bodies are invisible to syn; Rust 2024
  `while let` chains are labeled `while`.
- `#[inline(always)]` code is inlined even at -O0; labeling uses the innermost
  location (`src_loc[0]`).
- **BufferAccess `dominated_by_check` is unreliable on C at -O0** (clang
  reloads variables from the stack per use -> no SSA link). Fix: compare by
  underlying `alloca`.
- **BufferAccess sees one function only:** accesses whose GEP is in a callee
  (Rust `Index::index`, `get_unchecked`) are counted in std, not the tool.
- Project code is only partially in the IR in both languages (only uucore's
  generic/inline code; only gnulib's header inlines).

---

## Gotchas

- **optnone:** clang marks all functions `optnone` at -O0 -> every pass silently
  skipped. Fix: `-Xclang -disable-O0-optnone`. `run_all_passes.sh` warns.
- **Rust bin + lib:** `--bin` IR alone lacks all non-generic tool functions
  (expand: 1 loop instead of 26). IR is built for `--lib` too and merged.
  Check: `grep '^declare' <tool>_O0.ll | grep uu_<tool>` should list no tool functions.
- **`-C codegen-units=1` + `CARGO_INCREMENTAL=0`:** one `.ll` per crate;
  otherwise code can be split across files and lost.
- **Line tables** (`-gline-tables-only` / `-C debuginfo=line-tables-only`) are
  required, otherwise every loop is `no-debug-info`.
- **Library paths:** Rust std `/rustc/.../library/`, std's own deps
  `/rust/deps/` (e.g. hashbrown), cargo crates `/usr/local/cargo/registry/`.
- **Old `fill.sh` rebuilt IR** with outdated flags and overwrote correct IR.
  Now `SOURCE.md` only.
- Header is `llvm/Plugins/PassPlugin.h` on this LLVM-22 build.
- coreutils needs `./configure --disable-gcc-warnings`.
- `sum` is built from shared `cksum.c` (no own `main()`); build script handles it.
- `label_loops.py` needs `pip3 install libclang` (unpinned) and
  `pass/tools/loop_ast_rs` (needs `proc-macro2`'s `span-locations` feature).

---

## Next steps

1. **Advisor:** confirm counting project code (`system.h`/gnulib, uucore)
   separately, as in the Results table.
2. **Advisor:** should Rust accesses through `Index::index` / `get_unchecked`
   count as the tool's buffer accesses? Fixes Rust's undercount.
3. **Phase 2 (bounds checks):** start by fixing `dominated_by_check` for C
   (compare via underlying `alloca`), building on the variable-index accesses.