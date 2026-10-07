# Thesis: C vs Rust at the LLVM IR level

Compares the same 10 Unix tools written in C (GNU coreutils) and Rust
(uutils/coreutils) by analysing their LLVM IR with two custom LLVM passes.

Phases (per advisor): **1. loops** -> **2. buffer accesses + bounds checks**
-> **3. other security patterns** (casts, initialization, ...).

| | |
|---|---|
| Tools | `sum expand echo fold tee mkdir comm paste nl shuf` |
| Toolchain | clang-22 + rustc 1.98.1, both LLVM 22.1.8 (re-check after updates) |
| Optimization | **-O0 only** (C `-O0`, Rust debug profile) |
| Corpus layout | `benchmarks/<c_cpp\|rust>/<tool>/{src/, ir/<tool>_O0.ll, SOURCE.md, NOTES.md}` |

---

## 1. Quick start

```bash
./pass/scripts/run_all_passes.sh --build --regen  # build passes, regenerate IR, run passes + labeling
python3 pass/scripts/summarize.py                 # C vs Rust tables -> pass/results/summary.md
./pass/scripts/run_checks.sh                      # all validation -> pass/results/checks.log
python3 pass/scripts/compare_tool.py fold         # one-tool report -> pass/results/compare_fold.md
```

`--build` only after changing a pass; `--regen` only after changing the IR build.
`run_checks.sh` must end with `OK` in all 4 checks.

---

## 2. What is where

**Passes** (`pass/src/`, built with CMake into `pass/src/build/`):

| Pass | Finds | Main fields per entry (JSON line) |
|---|---|---|
| `LoopFinder/LoopFinderPass.cpp` | every natural loop | function, `depth`, `latch_count` (back edges), `src_loc` (file/line) |
| `BufferAccess/BufferAccessPass.cpp` | every element read/write: `a[i]`, Rust `s[i]`, Rust `Vec` `v[i]` (std call), `get_unchecked` | `access_kind`, `index_kind` (variable/constant), `origin` (alloca/global/heap/param/unknown), `inside_loop`, file/line + bounds-check fields (section 5) |

**Scripts** (`pass/scripts/`):

| Script | Role |
|---|---|
| `benchmarks.sh` | builds -O0 IR for all tools (C: real build flags; Rust: bin + lib merged) |
| `run_all_passes.sh` | runs both passes + both labeling scripts (`--build`, `--regen`, `--tools a,b`) |
| `label_loops.py` | adds `loop_kind` (for/while/do-while/goto/loop/while-let/library) |
| `label_buffers.py` | adds `code_origin` (tool/project/library) to buffer accesses |
| `summarize.py` | the C vs Rust tables (`summary.md`) -- the file sent to the advisor |
| `compare_tool.py <tool>` | one-tool report: every loop with its source line, buffer accesses by origin and in/out of loops |
| `run_checks.sh` | runs the 4 checks below, saves `checks.log` (`--quick` skips the slow one) |
| `toy_check.sh` | toy corpus + 33 known-answer bounds-check cases (fails on any mismatch) |
| `check_loops.py` | every loop vs its source line, all tools |
| `check_buffers.py` | buffer accesses vs their source line |
| `debuginfo_check.sh` | results identical with / without debug info |
| `spot_check.py <lang> <tool>` | one tool's loops next to their source lines |
| `fill.sh` | fills `SOURCE.md` (upstream commit) -- never builds IR |
| `dump_environment.sh` | records tool versions in `ENVIRONMENT.md` |

`pass/tools/loop_ast_rs/` -- small Rust parser (syn) used by `label_loops.py`.

**Outputs:** `pass/results/` (loops, `summary.md`, `checks.log`, `compare_<tool>.md`,
`bounds_review.txt`), `pass/results_buffer/` (buffer accesses), `pass/logs/` (opt stderr).

---

## 3. Method -- choices that affect every number

1. **Rust IR = binary + library merged.** Each uutils tool is a tiny binary
   (`main.rs`) plus a library crate (`<tool>.rs`) with the real code. IR from
   `--bin` alone has the library functions only as declarations (expand: 1 loop
   instead of 26). `benchmarks.sh` emits IR for both and merges them with `llvm-link-22`.
2. **-O0 / debug only.** The IR stays close to the source (no inlining, loop
   merging or check removal), which loop labeling needs. Numbers describe code
   as written, not a release build (e.g. Rust drops many checks at -O2).
3. **tool / project / library** is decided by the source file path in the debug info:
   `coreutils/src/*.c`, `uutils-coreutils/src/uu/<tool>/` -> **tool**; any other
   file of the same repo (`system.h`, gnulib `lib/`, uucore) -> **project**;
   everything else (Rust std `/rustc/...`, std deps `/rust/deps/...`, crates
   `/usr/local/cargo/registry/...`, `/usr/...`) -> **library**.
4. **Library code is visible only in Rust.** Rust's generic std code
   (iterators, `Vec`, `HashMap`) is compiled into each program; libc's code is
   not (only declarations). C's 0 library loops reflect compilation, not usage.
5. **Project code is only partly visible** in both languages (only inline /
   generic parts of gnulib and uucore end up in each tool's IR).
6. **Loops are IR natural loops**, not source statements: two source loops
   sharing a start merge into one (Rust fold `loop { while ... }`); a `goto`
   loop counts as a loop.
7. **A buffer access is an indexed element read/write.** Slicing (`s[a..b]`)
   is not one (it makes a view). **Bulk copies (`memcpy`, `memmove`, `fwrite`)
   and pointer walking (`*p++`, `p += len`) are not counted** -- C code that
   moves data this way shows few accesses (e.g. C fold).
8. **Counts are per IR instruction**, not per source line. Rust's many
   constant-index accesses are mostly struct fields rustc creates at -O0; only
   the variable-index numbers compare like with like.
9. Measured code = the upstream commits recorded in each `SOURCE.md`.

---

## 4. Results (-O0) -- sent to the advisor (`summary.md` / PDF)

**Loops by where their code lives**

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

**Loop kinds (tool code):** C for 31, while 28, do-while 3, goto 1;
Rust for 35, while 13, loop 11, while-let 7.

**Buffer accesses (tool code):** variable index C 98 vs Rust 34 (6 Rust tools
have none -- iterators instead of indexing); constant index C 185 vs Rust 2,205.
All origins, all index kinds: C tool 283 / project 94 / library 0;
Rust 2,239 / 377 / 9,208.

Observations: own-code loops are about equal; Rust's extra 134 loops run
inside std (iterators); C's 27 project loops are the same 3 `system.h`
help-text loops in every tool (sum has none: no own `main()`).

---

## 5. Bounds checks (done -- not yet presented to the advisor)

For every variable-index access BufferAccessPass also reports:

| Field | Meaning |
|---|---|
| `dominated_by_check`, `check_line` | a compare on the index decides whether the access runs (one branch edge dominates it) |
| `check_op`, `check_bound` | the compare on the way to the access, direction applied (`i < 4`, `i < n`, `len`) |
| `buffer_size` | static size from the IR type (`int a[4]` -> 4), 0 = unknown |
| `bound_ok` | `yes` provably within size (or rustc/std check) / `no` provably wrong / `unknown` bound is a variable / `lower` only a lower-bound or `!=` test / `none` no check |
| `index_expr` | index is `variable` / `computed` (`i - 1`) / `memory` (`alt[i][0]`) / `other` |
| `check_signed` | signed compare (C `int`: does not exclude `i < 0`) |

Detection handles: C stack reloads (compare via the variable's `alloca`),
rustc's `br (llvm.expect(icmp))`, `&&` / `||` loop conditions (clang -O0
merges them into a phi), several checks per access (best one reported).

**Results, variable index, tool code**

| | C | Rust |
|---|---|---|
| accesses | 98 | 34 (32 direct + 2 `Vec` `v[i]`) |
| `yes` | 14 | 34 |
| `unknown` (variable bound 47, unknown size 5) | 52 | 0 |
| `lower` | 1 | 0 |
| `no` | 0 | 0 |
| `none` (index: variable 15, memory 8, computed 7, other 1) | 31 | 0 |
| signed checks | 41 / 67 | 0 / 34 |
| `get_unchecked` | -- | 0 |

C relies on programmer-written checks (mostly against runtime variables,
mostly signed); Rust checks every index automatically (unsigned, also on
computed indices). No provably wrong check in either. C's `none` accesses are
mostly safe by invariants the IR does not show.

---

## 6. Current task (approved by the advisor): fold, loop by loop

Pair every C loop with its Rust counterpart by role (1:1, 1:N, only in one
language), and for buffer accesses check where the memory lives and whether
they are inside loops. Data: `compare_tool.py fold`. **Draft below -- verify
rows 4 and 8 and the two `Iter<u8>::all` library loops against the source.**

| # | Role | C `fold.c` | Rust `fold.rs` | Match |
|---|---|---|---|---|
| 1 | parse options | 303 `getopt_long` | 147 `handle_obsolete` (rest: clap, library) | 1:1 partial |
| 2 | loop over input files | 352 | 167 | 1:1 |
| 3 | main character loop | 187 `mbbuf_get_char` | 390 ASCII, 508 UTF-8, 592 invalid UTF-8, 226 bytes `-b` | 1:4 |
| 4 | retry char after a line break | 198 `goto rescan` | 410, 551 (TAB only) | 1:2 |
| 5 | recount columns of carried text | 233 | 288 UTF-8, 304 other | 1:2 |
| 6 | find last blank (`-s`) | 210 | -- (tracked in `last_space`; std `rposition`) | only C |
| 7 | read input chunks | -- (inside gnulib `mbbuf`) | 706 `fill_buf` | only Rust |
| 8 | batch plain-ASCII runs | -- | 443, 466 | only Rust |
| 9 | merge zero-width chars | -- | 515 | only Rust |
| 10 | split input into UTF-8 parts | -- | 642 | only Rust |

Difference +9 = main loop split (+3) + TAB retry (+1) + column recount (+1)
+ reading (+1) + ASCII batching (+2) + zero-width (+1) + UTF-8 split (+1)
- blank search (-1). C: one big function, nesting depth 3; Rust: ~10 small
functions, depth <= 2. Rust library loops: byte searches 7, argument handling
5 (incl. clap), I/O 3.

Buffer accesses: C's data buffers are **static fixed-size arrays**
(`line_in`, `line_out`), moved with `memcpy`/`memmove`/`fwrite`/gnulib -> only
1 indexed access (`argv[i]`, in the file loop). Rust uses **heap `Vec`s**
(`output`, `pending`) -> 16 indexed accesses, all `line[idx]` inside the ASCII
loop (shown as `param`; really a slice of the `pending` Vec). Constant-index
accesses (C 19, Rust 411) are mostly struct fields.

Conclusions: (1) same job, different design -- one general loop + gnulib (C)
vs specialised loops per input kind (Rust); (2) different memory model --
static buffers + copy functions (C) vs heap `Vec` + indexing (Rust).
Caveat: copies and pointer walking are not counted (method 7).

---

## 7. Validation

`run_checks.sh` (all must be `OK`): toy corpus (loops + 33 known-answer
bounds-check cases, mutation-tested), all 159 tool loops vs source (0
flagged), buffer accesses vs source (118/132 on an indexing line, the rest
explained: macro `XARGMATCH`, Rust match arm), debug info does not change any
loop count (all 20 `SAME`). Manual: every tool's bounds-check rows reviewed
(`bounds_review.txt`); fold/tee loops checked line by line.

---

## 8. Known limitations

- Loop labeling: loops inside Rust `macro_rules!` are invisible (none in the
  corpus); a loop's IR line is often the first statement of its body.
- One function at a time: checks in callers are not seen; other Rust
  containers' indexing and user `Index` impls are not counted.
- Bounds checks: a variable bound (`i < n`) is never matched to the buffer's
  size; signed `yes` assumes `i >= 0`; the index changing after the check is
  not detected; computed / memory-read indices and `'\0'` string loops show
  as `none`; `switch` is not a check; a compare where the variable is the
  *bound* can be picked as the check (shuf.c:138); rustc 1.98 gives Rust
  arrays `buffer_size` 0 (verdict still `yes` via `panic_bounds_check`).
- `origin`: `param` / `unknown` need a manual look (a Rust `Vec` is on the heap).
- Rust index-call matching needs v0 symbol names (rustc 1.98 default).

---

## 9. Gotchas

- **optnone:** clang marks -O0 functions `optnone` -> passes silently skip
  them. Fix: `-Xclang -disable-O0-optnone` (in `benchmarks.sh`; `run_all_passes.sh` warns).
- **Rust bin + lib:** check with `grep '^declare' <tool>_O0.ll | grep uu_<tool>` (must be empty).
- **`-C codegen-units=1` + `CARGO_INCREMENTAL=0`:** one `.ll` per crate.
- **Line tables** (`-gline-tables-only` / `-C debuginfo=line-tables-only`) required.
- **Old `fill.sh`** used to rebuild IR with wrong flags; now `SOURCE.md` only.
- **`run_all_passes.sh` finds a pass's name** by grepping `Name == "..."` in its `.cpp` -- keep that form.
- **When copying downloaded files**, check the first lines name the file (a
  script was once overwritten by another): `head -3 pass/scripts/*`.
- Plugin header is `llvm/Plugins/PassPlugin.h` on this LLVM 22 build.
- coreutils: `./configure --disable-gcc-warnings`; `sum` is built from `cksum.c` (no own `main()`).
- `label_loops.py` needs `pip3 install libclang` and `pass/tools/loop_ast_rs`
  (`proc-macro2` with `span-locations`).

---

## 10. Status and next steps

**Advisor communication**
- Sent: loop + buffer-access statistics per tool (`summary.md` as PDF), with
  the tool / project / library split explained.
- Approved next task: section 6 (fold, loop by loop + buffer-access origin /
  in-loop). Promised: a short write-up with the results.
- Bounds checks (section 5): already implemented and validated; the advisor
  sees it as future work -- asked whether to do it next.

**Next**
1. Verify the fold table (section 6) against the source; write the short
   Greek write-up for the advisor.
2. Optionally the same for tee (`compare_tool.py tee`).
3. Open questions for the advisor: count project code separately (as now) or
   with the tool? Is "element reads/writes only, no slicing" the right access definition?
4. Later: phase 3 (casts / integer overflow checks, initialization);
   optionally decide `unknown` checks by tracing `n` to the allocation size.