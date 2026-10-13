# Thesis: C vs Rust at the LLVM IR level

Compares the same 10 Unix tools written in C (GNU coreutils) and Rust
(uutils/coreutils) by analysing their LLVM IR with two custom LLVM passes.
A second Rust corpus of 10 non-Unix projects (section 7) checks whether the
Rust patterns are specific to the Unix tools.

Phases (per advisor): **1. loops** -> **2. buffer accesses + bounds checks**
-> **3. other security patterns** (casts, initialization, ...).

| | |
|---|---|
| Tools | `sum expand echo fold tee mkdir comm paste nl shuf` |
| Extra Rust projects | `pulldown-cmark ruzstd lz4_flex httparse csv-core base64 ryu qoi miniz_oxide sha2` (section 7) |
| Toolchain | clang-22 + rustc 1.98.1, both LLVM 22.1.8 (re-check after updates) |
| Optimization | **-O0 only** (C `-O0`, Rust debug profile) |
| Corpus layout | `benchmarks/<c_cpp\|rust\|rust_extra>/<tool>/{src/, ir/<tool>_O0.ll, SOURCE.md, NOTES.md}` (+ `driver/` for 7 rust_extra projects) |

---

## 1. Quick start

```bash
./pass/scripts/run_all_passes.sh --build --regen  # build passes, regenerate IR, run passes + labeling
python3 pass/scripts/summarize.py                 # C vs Rust tables -> pass/results/summary.md
./pass/scripts/run_checks.sh                      # all validation -> pass/results/checks.log
python3 pass/scripts/compare_tool.py fold         # one-tool report -> pass/results/compare_fold.md
./pass/scripts/setup_rust_extra.sh                # extra Rust projects: clone + drivers + IR (section 7)
```

`--build` only after changing a pass; `--regen` only after changing the IR build
(it rebuilds the coreutils IR and, if present, the rust_extra IR).
`run_checks.sh` must end with `OK` in all 4 checks.

**`--regen` needs the two upstream projects in `.build/`** (gitignored;
`benchmarks.sh` does not clone or build them). One-time setup, with the
commits the corpus was built from (`git -C .build/<project> rev-parse HEAD`
in the current checkout -- write them here):

```bash
mkdir -p .build && cd .build
git clone https://github.com/coreutils/coreutils.git && cd coreutils
git checkout <C_HASH> && ./bootstrap && ./configure --disable-gcc-warnings && make -j"$(nproc)"
cd .. && git clone https://github.com/uutils/coreutils.git uutils-coreutils
git -C uutils-coreutils checkout <RUST_HASH>
```

The extra Rust projects need nothing by hand: `setup_rust_extra.sh` clones them
into `.build/rust-extra/` at the commits pinned in `rust_extra_projects.conf`.

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
| `setup_rust_extra.sh` | extra Rust projects, all steps: clone at pinned commits, write drivers, `SOURCE.md`/`NOTES.md`, IR (`--no-ir` skips the IR) |
| `build_rust_extra_ir.sh` | IR of the extra projects, same flags/order/link as `benchmarks.sh` (`--projects a,b`, `--keep-parts`; `--debuginfo`/`--out-dir` for `debuginfo_check.sh`) |
| `rust_extra_projects.conf` | the extra projects: URL, pinned commit, crate, own binary or driver (sourced by the two scripts above and `debuginfo_check.sh`) |
| `run_all_passes.sh` | runs both passes + both labeling scripts on c_cpp, rust and rust_extra (`--build`, `--regen`, `--tools a,b`) |
| `label_loops.py` | adds `loop_kind` (for/while/do-while/goto/loop/while-let/library; `driver` for rust_extra driver code) |
| `label_buffers.py` | adds `code_origin` (tool/project/library; `driver` for rust_extra driver code) to buffer accesses |
| `summarize.py` | the C vs Rust tables (`summary.md`, sections 1-4 -- the file sent to the advisor) + section 5 for the extra projects |
| `compare_tool.py <tool>` | one-tool report: every loop with its source line, buffer accesses by origin and in/out of loops |
| `run_checks.sh` | runs the 4 checks below, saves `checks.log` (`--quick` skips the slow one) |
| `toy_check.sh` | toy corpus + 33 known-answer bounds-check cases (fails on any mismatch) |
| `check_loops.py` | every loop vs its source line, all tools + rust_extra (`--verbose` lists the explained rust_extra loops) |
| `check_buffers.py` | buffer accesses vs their source line |
| `debuginfo_check.sh` | results identical with / without debug info (coreutils + rust_extra) |
| `spot_check.py <lang> <tool>` | one tool's loops next to their source lines |
| `fill.sh` | fills `SOURCE.md` (upstream commit) -- never builds IR |
| `dump_environment.sh` | records tool versions in `ENVIRONMENT.md` |

`pass/tools/loop_ast_rs/` -- small Rust parser (syn) used by `label_loops.py`.

**Outputs:** `pass/results/` (loops, `summary.md`, `checks.log`, `compare_<tool>.md`,
`bounds_review.txt`), `pass/results_buffer/` (buffer accesses), `pass/logs/` (opt stderr).
`<lang>` in result paths = `c_cpp`, `rust` or `rust_extra`.

---

## 3. Method -- choices that affect every number

1. **Rust IR = binary + library merged.** Each uutils tool is a tiny binary
   (`main.rs`) plus a library crate (`<tool>.rs`) with the real code. IR from
   `--bin` alone has the library functions only as declarations (expand: 1 loop
   instead of 26). `benchmarks.sh` emits IR for both and merges them with `llvm-link-22`.
2. **-O0 / debug only.** The IR stays close to the source (no loop merging or
   check removal, and no inlining -- except Rust functions marked
   `#[inline(always)]`, which rustc inlines even at -O0; none in coreutils, some
   in rust_extra), which loop labeling needs. Numbers describe code as written,
   not a release build (e.g. Rust drops many checks at -O2).
3. **tool / project / library** is decided by the source file path in the debug info:
   `coreutils/src/*.c`, `uutils-coreutils/src/uu/<tool>/` -> **tool**; any other
   file of the same repo (`system.h`, gnulib `lib/`, uucore) -> **project**;
   everything else (Rust std `/rustc/...`, std deps `/rust/deps/...`, crates
   `/usr/local/cargo/registry/...`, `/usr/...`) -> **library**.
   rust_extra: `.build/rust-extra/<repo>/` -> **tool** (one repo = no project
   code), `benchmarks/rust_extra/<p>/driver/` -> **driver** (not counted).
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

## 6. fold, loop by loop (approved by the advisor -- done)

Pair every C loop with its Rust counterpart by role (1:1, 1:N, only in one
language), and for buffer accesses check where the memory lives and whether
they are inside loops. Data: `compare_tool.py fold`. **Verified against
`fold.c` / `fold.rs`** (every loop's line, function, depth and back edges).
Table lines are the IR lines; the Rust loops 410 / 551 / 706 / 226 start at
source lines 408 / 549 / 704 / 220, C 198 at the label `rescan:` (195).

| # | Role | C `fold.c` | Rust `fold.rs` | Match |
|---|---|---|---|---|
| 1 | parse options | 303 `getopt_long` | 147 `handle_obsolete` (rest: clap, library) | 1:1 partial |
| 2 | loop over input files | 352 | 167 | 1:1 |
| 3 | main character loop | 187 `mbbuf_get_char` | 390 ASCII, 508 UTF-8, 592 invalid UTF-8, 226 bytes `-b` | 1:4 |
| 4 | retry char after a line break | 198 `goto rescan` (any char) | 410, 551 (TAB only; the invalid-UTF-8 path handles TAB with one `if`) | 1:2 |
| 5 | recount columns of carried text | 233 | 288 UTF-8, 304 other | 1:2 |
| 6 | find last blank (`-s`) | 210 | -- (tracked in `last_space`; std `rposition`) | only C |
| 7 | read input chunks | -- (inside gnulib `mbbuf`) | 706 `fill_buf` | only Rust |
| 8 | ASCII runs at once | -- | 443 find the end of the run, 466 cut it into width-sized pieces | only Rust |
| 9 | merge zero-width chars | -- | 515 | only Rust |
| 10 | split input into UTF-8 parts | -- | 642 | only Rust |

Difference +9 = main loop split (+3) + TAB retry (+1) + column recount (+1)
+ reading (+1) + ASCII batching (+2) + zero-width (+1) + UTF-8 split (+1)
- blank search (-1). C: one big function, nesting depth 3; Rust: 10 small
functions with loops, depth <= 2. `fold.rs` has 16 loop statements, 15 IR loops
(220 `loop` + 226 `while` share a header). Rust library loops: byte scans 7
(4 from the one `line.is_ascii()` call at 497 -- `is_ascii::runtime`,
`is_ascii_sse2`, `Iter::all` x2 -- plus `rposition` x2, `position`), argument
handling 5 (incl. clap), I/O 3.

Buffer accesses: C's data buffers are **static fixed-size arrays**
(`line_in`, `line_out`), moved with `memcpy`/`memmove`/`fwrite`/gnulib -> only
1 indexed access (`argv[i]`, in the file loop). Rust uses **heap `Vec`s**
(`output`, `pending`) -> 16 indexed accesses, all `line[idx]` inside the ASCII
loop (shown as `param`; really a slice of the `pending` Vec). Constant-index
accesses (C 19, Rust 411) are mostly struct fields.

Conclusions: (1) same job, different design -- one general loop + gnulib (C)
vs specialised loops per input kind (Rust; UTF-8 decoding itself is in std, as
it is in gnulib for C); (2) different memory model -- static buffers + copy
functions (C) vs heap `Vec` + indexing (Rust).
Caveat: copies and pointer walking are not counted (method 7).

Write-up: `fold_C_vs_Rust.docx` (Greek), corrected after verification.

---

## 7. Extra Rust projects (rust_extra)

Question: are the Rust numbers (many constant-index accesses, few `a[i]`) a
property of the Unix tools or of Rust at -O0 in general? 10 pure-Rust
non-Unix projects, same passes, labels and flags.

| Project | Area | Program used for the IR |
|---|---|---|
| pulldown-cmark | Markdown parser | own CLI |
| ruzstd | Zstandard | own CLI (`cli/` crate) |
| lz4_flex | LZ4 | own CLI (`lz4_bin/`) |
| httparse, csv-core, base64, ryu, qoi, miniz_oxide, sha2 | HTTP, CSV, Base64, float printing, QOI images, DEFLATE, SHA-2 | our driver (`benchmarks/rust_extra/<p>/driver/`) |

**How the IR is built** (`setup_rust_extra.sh` -> `build_rust_extra_ir.sh`):
- Same as uutils in `benchmarks.sh`: debug profile, `--emit=llvm-ir -C
  debuginfo=line-tables-only -C codegen-units=1`, `CARGO_INCREMENTAL=0`,
  program then library, `llvm-link-22 -S bin lib` (`--override` on duplicate
  symbols). Sources copied to `src/`.
- **Drivers:** 7 projects are libraries only. Their generic code exists in the IR
  only when something instantiates it, so a small driver (`main` that calls the
  main API both ways: encode/decode, compress/decompress, ...) is built + linked
  like a uutils binary. The driver is its own workspace, so a project's own
  `[profile.dev]` does not apply (RustCrypto sets `opt-level = 2`). Its code is
  labelled `driver` and not counted.
- Default features as published (base64 keeps its default `simd-unsafe`).
- Before each `cargo rustc` the package is cleaned, so a fresh `.ll` is always
  produced (cargo writes none for a crate it considers up to date).

**Loops that cannot be labelled with a kind** (none in coreutils):
- `unmatched` (39): the loop is in a `macro_rules!` (miniz_oxide
  `generate_state!` -- the decompressor's state machine, 24; httparse `next!`) or
  in an `#[inline(always)]` function inlined into its caller, so the IR depth is
  the caller's (csv-core `scan_and_copy`, ruzstd `get_bits`, httparse
  `match_block`, sha2 AVX2 helpers). Counted as tool by file path;
  `check_loops.py` confirms each cause from the source.
- `no-debug-info` (19): rustc's own loops for array initializers `[x; N]`
  (qoi `[Pixel::new(); 256]`, miniz `[[0; N]; M]`, httparse driver
  `[EMPTY_HEADER; 64]`); no source line. Reported as "compiler-generated"
  (17 in project code, 2 in drivers), not as tool loops.

**Results (-O0, `summary.md` section 5)**

| | uutils Rust (10) | extra Rust (10) |
|---|---|---|
| tool loops | 66 | 396 (+17 compiler-generated) |
| library loops | 134 | 431 |
| tool variable-index accesses | 34 | 598 |
| tool constant-index accesses | 2,205 | 11,225 |
| library accesses | 9,208 | 13,897 |
| variable index, % of tool accesses | 1.5% | 5.1% |
| constant-index accesses per tool loop | 33.4 | 28.3 |
| variable-index accesses per tool loop | 0.5 | 1.5 |
| library, % of all accesses | 80.4% | 54.0% |

Findings: (1) the mass of constant-index accesses is Rust at -O0 in general
(95-98% of tool accesses, ~30 per loop in both groups); (2) real indexing
`a[i]` is 3x more frequent per loop in the extra projects (byte-processing
libraries with tables and buffers; every project has some, vs 4 of 10 uutils
tools) -- the low count is specific to the Unix tools; (3) library code is a
smaller share in bigger programs (80% -> 54%).

---

## 8. Validation

`run_checks.sh` (all must be `OK`): toy corpus (loops + 33 known-answer
bounds-check cases, mutation-tested), all 159 coreutils tool loops vs source (0
flagged), buffer accesses vs source (coreutils 118/132 on an indexing line, the rest
explained: macro `XARGMATCH`, Rust match arm), debug info does not change any
loop count (all 20 `SAME`). Manual: every tool's bounds-check rows reviewed
(`bounds_review.txt`); fold/tee loops checked line by line.

rust_extra: buffer accesses vs source -- 598 variable-index accesses, 549 on a
line with `[`, the other 49 all checked: ryu 30 (26 raw-pointer writes
`*result.offset(i)`, 4 `get_unchecked`), pulldown-cmark 17 (11 `match` arms on an
indexed byte, 6 explicit `.index(ix)` calls), httparse 2 (`*p`, one
`get_unchecked_mut(..n)` -- a range, counted because every `get_unchecked` form
is); 0 missing source files. ryu and httparse are the first Rust code in the
corpus with unchecked indexing (uutils: 0 `get_unchecked`). Loops vs source: 396 checked, 0 flagged,
the rest explained from the source by `check_loops.py` -- `unmatched` = macro /
`#[inline(always)]` (39), loops in closures with the kind confirmed (38), merged
loops (3: miniz `'outer: loop { 'found: loop {`, httparse `'headers:` /
`'header:` -- the inner for / while / while-let is labelled `loop`), location deep
in a `loop` body (2); compiler-generated counted apart (19); debug info check:
all 10 `SAME`. The final `llvm-link-22` merge has 0 declared-only project
functions in all 10.

---

## 9. Known limitations

- Loop labeling: loops inside Rust `macro_rules!` and loops of inlined
  `#[inline(always)]` functions get no kind (`unmatched`; none in coreutils,
  39 in rust_extra -- counted by file path); a loop's IR line is often the first
  statement of its body; rustc's `[x; N]` initializer loops have no source line;
  inside merged loops (method 6) a nested loop can get the enclosing `loop`'s kind
  (3 in rust_extra -- kinds only, counts unaffected).
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
- rust_extra: the 7 library-only projects are measured through our driver --
  only code reachable from the API calls it makes (plus all non-generic code)
  is in the IR.

---

## 10. Gotchas

- **optnone:** clang marks -O0 functions `optnone` -> passes silently skip
  them. Fix: `-Xclang -disable-O0-optnone` (in `benchmarks.sh`; `run_all_passes.sh` warns).
- **Rust bin + lib:** check with `grep '^declare' <tool>_O0.ll | grep uu_<tool>` (must be empty);
  `build_rust_extra_ir.sh` checks this itself.
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
- Plugins missing after a container rebuild -> `run_all_passes.sh --build`.
- rust_extra: a project's own `[profile.dev]` would change the build -> drivers
  are separate workspaces; `CARGO_PROFILE_DEV_OPT_LEVEL=0` guards the 3 own-binary projects.
- rust_extra: lz4_flex's `lz4_bin` warns `unexpected cfg ... frame` -- harmless
  (one unused helper is skipped).
- rust_extra drivers: never overwritten by `setup_rust_extra.sh`; delete
  `benchmarks/rust_extra/<p>/driver/` to regenerate one.

---

## 11. Status and next steps

**Advisor communication**
- Sent: loop + buffer-access statistics per tool (`summary.md` as PDF), with
  the tool / project / library split explained.
- fold loop by loop (section 6): verified; `fold_C_vs_Rust.docx` corrected
  (row 8, conclusion 1, library loops, line-number note). The Claude doc
  "fold: C vs Rust ανά loop" still has the old text.
- Extra Rust projects (section 7): done; results not yet sent.
- Bounds checks (section 5): already implemented and validated; the advisor
  sees it as future work -- asked whether to do it next. Keep it out of
  anything the advisor sees (write-ups and the advisor repo, section 12).

**Next**
1. Short write-up of section 7 for the advisor (Greek, like the fold one).
2. Fix the advisor repo (section 12, "To fix"); decide whether the rust_extra
   scripts go there too (they contain nothing about bounds checks).
3. Optionally the same loop-by-loop analysis for tee (`compare_tool.py tee`).
4. Open questions for the advisor: count project code separately (as now) or
   with the tool? Is "element reads/writes only, no slicing" the right access
   definition (or also `memcpy` / pointer walking)?
5. Later: phase 3 (casts / integer overflow checks, initialization);
   optionally decide `unknown` checks by tracing `n` to the allocation size.

---

## 12. Advisor repo (Bitbucket `srecgrp/rust-c-coding-patterns`)

The advisor sees this repo, not this one. Clone/push from the Ubuntu (WSL)
app: the SSH key for Bitbucket is there, not in the dev container.

Layout: `code/` (both passes, `CMakeLists.txt`, the scripts flat, `tools/loop_ast_rs/`)
and `paper/`; short README for that layout.

What differs from this repo:
- `BufferAccessPass.cpp` **without bounds checks**: same accesses and fields
  (`file`, `origin`, `inside_loop`, `index_kind`, Rust `v[i]` / `get_unchecked`),
  none of the section-5 fields. Same numbers as section 4.
- `LoopFinderPass.cpp` identical to this repo.
- Scripts there (`benchmarks.sh`, `run_all_passes.sh`, `label_loops.py`,
  `label_buffers.py`, `summarize.py`, `loop_ast_rs`) have shorter, plainer
  comments; code unchanged. `toy_check.sh` there (if added) must be the
  version without the 33 verdict tests.
- No results, logs, `bounds_review.txt` or git history copied from here.
- No rust_extra yet (its versions of `run_all_passes.sh`, `label_*.py`,
  `summarize.py` here are newer than the copies there).

To fix:
- `code/tools/loop_ast_rs/main.rs` must be `code/tools/loop_ast_rs/src/main.rs`
  (Cargo builds only from `src/`); add `Cargo.lock`.
- Check `grep add_library code/CMakeLists.txt` names the `.cpp` files without
  `LoopFinder/` / `BufferAccess/` (they sit directly in `code/`).
- The scripts expect this repo's layout (`pass/src/...`, `pass/tools`,
  `benchmarks/`), so in `code/` they document the method but cannot run as is.