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
./pass/scripts/run_checks.sh               # validation -> pass/results/checks.log
```

| Script | What it does |
|---|---|
| `benchmarks.sh` | Builds -O0 IR for all tools. C: real build flags + `-disable-O0-optnone -gline-tables-only`. Rust: `--bin` + `--lib` IR merged with `llvm-link-22` |
| `run_all_passes.sh` | Both passes on all tools, then both labeling scripts. `--build`, `--regen`, `--tools a,b` |
| `label_loops.py` | Loop kind per loop (`for`/`while`/`do-while`/`goto`/`loop`/`while-let`/`library`) |
| `label_buffers.py` | Buffer access origin: `tool` / `project` / `library` |
| `summarize.py` | Final C vs Rust tables |
| `run_checks.sh` | Runs all validation checks below; saves `pass/results/checks.log` (`--quick` skips the slow one) |
| `toy_check.sh` | Regression test on the toy corpus, plus 33 bounds-check cases with known `bound_ok`, `index_expr`, `check_signed` (C + Rust); fails if any case is wrong or reports != 1 access |
| `check_loops.py` | Every loop vs its source line, all tools |
| `check_buffers.py` | Tool-code buffer accesses vs their source line |
| `debuginfo_check.sh` | Loops identical with / without debug info (slow) |
| `spot_check.py <lang> <tool>` | Each loop next to its source line, for a manual look at one tool |
| `fill.sh` | Fills `SOURCE.md` provenance only (never builds IR) |
| `dump_environment.sh` | Records toolchain versions in `ENVIRONMENT.md` |

Output: `pass/results/` (loops), `pass/results_buffer/` (buffer accesses),
`pass/logs/` (opt stderr).

---

## Status

- **LoopFinderPass** [DONE] -- per loop: header, depth, latches, subloops, source location.
- **BufferAccessPass** [DONE] -- GEP-mediated load/store: index kind, buffer origin,
  in-loop, bounds-check heuristic (+ `check_line`), source file/line.
- **Toy corpus** [DONE] -- revalidated with current scripts (`toy_check.sh`).
- **Real corpus** [DONE] -- all 20 tools, zero `unmatched` / `no-debug-info`.
- **Closure / let-chain fix** [DONE] -- `loop_ast_rs` counts depth per function
  like LLVM (restarts at 0 in closures, async blocks, nested fns; a closure is
  its own function in the IR) and labels `while let ... && ...` as while-let.
  No change on the corpus (no such loops), verified.
- **Validation** [DONE] (`run_checks.sh`) -- all 159 tool loops checked against
  their source (0 errors); 116/130 variable-index buffer accesses on an indexing
  line, the other 14 explained (C macro `XARGMATCH`, Rust match arm with the
  indexing on the next line); debug info verified not to change the loops
  (SAME in all 20 tools). Manual spot-check: Rust fold 15/15, C fold 9/9, Rust tee 4/4.
- **`dominated_by_check` fix** [DONE] -- three bugs fixed:
  1. C at -O0: the check and the index were different SSA values (a new
     `load` of `i` per use, plus `sext`), so C was never "checked". Now both
     sides are compared by their underlying variable (`alloca`).
  2. Rust's own bounds check is `br (llvm.expect(icmp ...))`, not `br (icmp)`,
     so it was never found. Now looks through `llvm.expect`.
  3. "Checked" used to mean "the compare's block dominates the access". That
     also counted `if (i < n) x = 1; a[i];` (both paths reach `a[i]`) and a
     compare in the same block as the access (the branch runs *after* it).
     Now one branch *edge* must dominate the access.
  Verified on a toy (C: for / if / early return / `&&` / do-while / unchecked,
  Rust: array index / if) -- all as expected. Corpus re-run: C 0/98 -> 57/98.
  4. Loop conditions with `&&` / `||` (`for (i = 0; i < n && go; i++)`):
     clang -O0 merges the parts into one i1 value (phi) and branches on
     that, so `i < n` never directly decided the body. The check is now
     derived from the merged value (compare first or last, `&&` and `||`;
     a dominance condition keeps it safe). C 57/98 -> 67/98 (paste's
     `fileptr[i]` loop).
  Spot-check C comm: every `true` is a real guarding check (0 false positives);
  every `false` is a computed or memory-read index (see limitations).
- **Check quality** [DONE] -- for each guarded access the
  pass now also reports the comparison as seen on the way to the access
  (`check_op`: `<` `<=` `>` `>=` `==` `!=`, direction already applied), what it
  compares against (`check_bound`: a constant or `var`), the static buffer
  size from the IR type (`buffer_size`, 0 = unknown: pointers, heap, slices)
  and a verdict `bound_ok`:
  - `yes`: rustc's `panic_bounds_check`, or a constant bound that fits the
    size (`i < 4` / `i <= 3` on `[4 x T]`);
  - `no`: provably wrong -- a constant bound past the size (`i <= 4` on
    `[4 x T]`, off-by-one), or the wrong direction with every index that
    gets through out of bounds (`if (i >= 4) a[i]` on `[4 x T]`);
  - `unknown`: upper bound against a variable or a buffer of unknown size;
  - `lower`: only a lower-bound / non-zero test on the way (`if (i > 0)`,
    `if (used != 0)`) -- no upper bound, nothing provably wrong;
  - `none`: no check.
  With several checks on one access, the best is reported. Verified on a
  toy: C (correct / off-by-one / too big / wrong direction / early return /
  `<=` / `==` / `!=` / `> 0` / pointer / 2-D) and Rust (slice, array, `if` +
  slice, `&&`/`||` loops) -- kept as an automatic test in `toy_check.sh`
  (25 cases, all PASS; confirmed to FAIL when the direction or `&&`/`||`
  logic is broken). Corpus: the one
  first `no` (shuf.c:283, `if (used && ...)
  buf[used++]`) was a non-zero test, not a wrong check -> led to `lower`.
- **Pattern fields** [DONE] -- three additions, aimed at C vs Rust patterns
  (new JSON fields go at the end of each line; old fields unchanged):
  - **Rust element indexing through std** (`v[i]` on a `Vec` / `VecDeque`:
    a call to std's `Index<usize>` / `IndexMut<usize>`, whose GEP is inside
    std) is now the tool's access: `access_kind` `index`, `bound_ok` `yes`,
    `check_bound` `len` (std always checks). `get_unchecked` (any form) is
    `index_unchecked`, `bound_ok` `none`. Slicing (`s[a..b]`, `v[a..b]`) is
    **not** an access -- it makes a view; its elements are counted when read.
    (rustc 1.98 inlines slice ranges completely, so this also keeps results
    stable across rustc versions.) Needs v0 symbol names (rustc 1.98 default).
  - **`index_expr`**: what the index is -- `variable` (local / parameter,
    incl. a field of a local struct such as rustc's `Range`), `computed`
    (arithmetic, incl. Rust's checked arithmetic), `memory` (read from another
    buffer / struct), `other`.
  - **`check_signed`**: whether the check is a signed compare (C `int`:
    `i < n` does not exclude `i < 0`).
  33 known-answer cases in `toy_check.sh`, mutation-tested (ignoring index
  calls, breaking `index_expr`, counting slicing again -> FAIL).
- **Phase 2** [IN PROGRESS] / **Phase 3** [NOT STARTED]

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

**Buffer accesses, tool code:** variable index (real indexing) C 98 vs Rust 34
(32 direct slice / array indexing + 2 `Vec` `v[i]` through std); constant
index (mostly struct fields) C 185 vs Rust ~2200. No `get_unchecked` in the
tools' own code.

**Bounds-checked (`dominated_by_check`), variable index, tool code:** C 67 / 98
(68%), Rust 34 / 34 (100%: rustc's / std's automatic bounds checks). Heuristic
-- see limitations; an unchecked C access is not necessarily unsafe, so C's 68%
is a lower bound.

**Check quality (`bound_ok`), variable index, tool code:**

| `bound_ok` | C | Rust |
|---|---|---|
| yes (proven against the size) | 14 | 34 |
| unknown (bound is a variable: 47; constant but size unknown: 5) | 52 | 0 |
| lower (only a lower-bound / non-zero test) | 1 | 0 |
| no (provably wrong) | 0 | 0 |
| none (no check) | 31 | 0 |
| **total** | **98** | **34** |

- Rust: every index is checked against its length -- by rustc
  (`panic_bounds_check`, 32) or inside std's `Index` (2) -- 34/34 provable.
- C: 67 of 98 have a check, but only 14 can be proven statically; most C
  checks compare against a variable (`i < n_streams`) or index a pointer,
  whose size is not in the IR. No provably wrong check found.

**C vs Rust patterns, variable index, tool code:**

| Pattern | C | Rust |
|---|---|---|
| index checked against the length by the compiler / std | 0 | 34 / 34 |
| programmer-written check found | 67 / 98 | -- (in addition, not needed) |
| check is a **signed** compare (`int i`: `i < n` lets `i < 0` through) | 41 / 67 | 0 / 34 |
| no visible check (`none`), index is a plain variable | 15 | 0 |
| no visible check, index **computed** (`a[i - 1]`, `argv[argc - 1]`) | 7 | 0 |
| no visible check, index **read from memory** (`all_line[i][alt[i][0]]`) | 8 | 0 |
| no visible check, other | 1 | 0 |
| unchecked indexing (`get_unchecked`) | -- | 0 |

- C relies on checks the programmer writes -- most against a runtime
  variable, most signed; Rust gets a check on every index from the compiler,
  always unsigned (`usize`), also on computed indices (the check is on the
  final value right before the access).
- C's 31 unchecked accesses are mostly safe by an invariant the IR does not
  show (computed / memory-read indices, `'\0'`-terminated string loops,
  checks in a caller) -- `index_expr` shows which.

---

## Known limitations

- **Loop counts are IR natural loops, not source statements.** Loops sharing a
  header merge: Rust fold `loop { while ... {} ... }` (while first in the body)
  -> 1 IR loop with 3 latches.
- Loops in Rust `macro_rules!` bodies are invisible to syn (-> `unmatched`
  or the enclosing loop's kind). None in the corpus (0 `unmatched`).
- `#[inline(always)]` code is inlined even at -O0; labeling uses the innermost
  location (`src_loc[0]`).
- A loop's IR location is often not its keyword line but a statement inside
  the body (e.g. the first `if` after `let x = ...;` in a Rust `loop`); C `goto`
  loops point at the first statement after the label. Checks look a few code
  lines back for this reason.
- **`dominated_by_check` is a heuristic.** It means "some compare on the index
  variable decides whether the access runs"; `bound_ok` then judges that
  compare. Still not covered:
  - a bound that is a variable (`i < n`): `bound_ok` is `unknown` unless it
    is rustc's own check -- matching `n` to the buffer's length is not done;
  - signedness: `i < 4` on a signed `i` counts as `yes` although a negative
    `i` would pass (no lower-bound check is required);
  - whether the variable changes between check and access
    (`if (i < n) { i++; a[i]; }` still counts);
  - computed indices: `a[i + 1]` is not matched to `i < n` or `i + 1 < n`
    (only casts and stack reloads are looked through);
  - indices read from memory: in `all_line[i][alt[i][0]]` the index
    `alt[i][0]` is never compared at all -- kept in range by an invariant
    (comm), so it counts as unchecked even though it is safe;
  - string loops `for (i = 0; s[i]; i++)` (echo) stop at the `'\0'`, not at
    a compare on `i` -> `none`; `switch` on the index is not treated as a check;
  - any compare that involves the index variable is matched, also where the
    variable is the *bound*: shuf.c:138 `operand[n_operands]` gets the loop
    `i < n_operands` as its check (`unknown`, but `check_line` is misleading);
  - with several equally good checks the first one found is reported (Rust
    fold 425-446 show rustc's check at 391, not the one on their own line);
  - newer rustc (1.98) no longer keeps the array type in index GEPs, so Rust
    arrays get `buffer_size` 0; their `yes` comes from `panic_bounds_check`.
- **BufferAccess sees one function only:** a check done in a calling / helper
  function is not seen. Rust's std indexing is the exception it handles: calls
  to `Index<usize>` / `IndexMut<usize>` (`Vec`, `VecDeque`) and
  `get_unchecked` are recognised by name. Other containers' indexing and
  user-written `Index` impls are not counted. Slicing is not an access by
  design.
- The Rust index-call matching uses v0 demangled names (rustc 1.98 default);
  legacy-mangled IR would not match.
- `check_signed` only reports signedness; the verdict does not require a
  separate `i >= 0` check, so a signed `yes` assumes a non-negative index.
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
- **-O0 C keeps variables on the stack:** every use of `i` is a fresh `load`
  from `alloca %i`, so "same variable" must be compared via the `alloca`, not
  the SSA value.
- **rustc bounds checks use `llvm.expect`:** `br (llvm.expect(cmp, true))`,
  not `br cmp`.
- **clang -O0 loop conditions with `&&` / `||`** branch on a merged phi value,
  not on the compare (if-statements branch directly).
- Header is `llvm/Plugins/PassPlugin.h` on this LLVM-22 build.
- coreutils needs `./configure --disable-gcc-warnings`.
- `sum` is built from shared `cksum.c` (no own `main()`); build script handles it.
- `label_loops.py` needs `pip3 install libclang` (unpinned) and
  `pass/tools/loop_ast_rs` (needs `proc-macro2`'s `span-locations` feature).

---

## Next steps

1. **Spot-check done:** every tool reviewed against the source
   (`pass/results/bounds_review.txt`); one gap found (`&&`/`||` loops), fixed.
2. **Advisor:** confirm counting project code (`system.h`/gnulib, uucore)
   separately, as in the Results table.
3. **Advisor:** confirm the access definition -- element reads/writes only
   (incl. Rust `Vec` `v[i]` through std), slicing not counted.
4. **Phase 2, next (optional):** decide `unknown` checks against a variable
   (`i < n`) by tracing `n` to the buffer's allocation size.