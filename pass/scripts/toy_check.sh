#!/usr/bin/env bash
# toy_check.sh -- rerun the toy corpus through both passes + label_loops.py
# and print the results, so they can be compared with the earlier validation.
#
# Usage (from repo root):  ./pass/scripts/toy_check.sh
#
# What to check in the output:
#   - every hand-written loop in loops.c / loops.rs appears, right line,
#     right kind, right depth
#   - duffs_device (C) and recursive_sum (Rust): NO loops (negative controls)
#   - labeled_nested_loop (Rust): outer loop has 2 latches
#   - goto_loop (C): labeled "goto"
#   - bounds-check verdicts: every case PASS (checked automatically; the
#     script exits 1 if any case fails, so run_checks.sh shows FAILED)
#
# Cleans up after itself: the temporary toy_loops results folders are
# removed and label_loops.py is rerun so loop_kinds.tsv has no toy rows.

set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"
OPT="${OPT:-opt-22}"
BUILD="pass/src/build"
LOOP_SO="$BUILD/libLoopFinderPass.so"
BUF_SO="$BUILD/libBufferAccessPass.so"
TMP="$(mktemp -d)"
TOY_DIRS=(pass/results/c_cpp/toy_loops pass/results/rust/toy_loops)

cleanup() {
  rm -rf "${TOY_DIRS[@]}" "$TMP"
  python3 pass/scripts/label_loops.py >/dev/null   # rewrite loop_kinds.tsv without toy rows
}
trap cleanup EXIT

for f in "$LOOP_SO" "$BUF_SO"; do [[ -f "$f" ]] || { echo "missing $f -- build the passes first" >&2; exit 1; }; done

echo "==> Compiling toy files (-O0, line tables)"
clang-22 -O0 -Xclang -disable-O0-optnone -gline-tables-only -S -emit-llvm \
  benchmarks/c_cpp/toy_examples/Loops/loops.c -o "$TMP/loops_c.ll" || exit 1
rustc --crate-type=lib -C opt-level=0 -C debuginfo=line-tables-only --emit=llvm-ir \
  -o "$TMP/loops_rs.ll" benchmarks/rust/toy_examples/Loops/loops.rs || exit 1
clang-22 -O0 -Xclang -disable-O0-optnone -gline-tables-only -S -emit-llvm \
  benchmarks/c_cpp/toy_examples/Buffer/buffer.c -o "$TMP/buffer_c.ll" || exit 1
rustc --crate-type=lib -C opt-level=0 -C debuginfo=line-tables-only --emit=llvm-ir \
  -o "$TMP/buffer_rs.ll" benchmarks/rust/toy_examples/Buffer/buffer.rs || exit 1

run() {  # run <plugin> <pass> <ll> -> JSON array on stdout
  "$OPT" -load-pass-plugin="$1" -passes="$2" -disable-output "$3" 2>&1 | { grep '^{' || true; } | jq -s '.'
}

echo "==> LoopFinder on toy loops"
for lang in c_cpp rust; do
  ll="$TMP/loops_c.ll"; [[ $lang == rust ]] && ll="$TMP/loops_rs.ll"
  mkdir -p "pass/results/$lang/toy_loops"
  run "$LOOP_SO" loop-finder "$ll" > "pass/results/$lang/toy_loops/toy_loops_O0.json"
done

echo "==> Labeling"
python3 pass/scripts/label_loops.py | grep toy_loops

for lang in c_cpp rust; do
  f="pass/results/$lang/toy_loops/toy_loops_O0.labeled.json"
  echo
  echo "==> $lang toy loops (line / kind / depth / latches / function)"
  jq -r '.[] | [(.src_loc[0].line // 0), .loop_kind, .depth, .latch_count,
                (.function_demangled | sub("::<.*"; ""))] | @tsv' "$f" \
    | sort -n | column -t -s$'\t'
done

echo
echo "==> Negative controls (must print nothing)"
jq -r '.[] | select(.function_demangled | test("duffs_device|recursive_sum")) | .function_demangled' \
  pass/results/*/toy_loops/toy_loops_O0.labeled.json

echo
echo "==> BufferAccess on toy buffers (line / access / index / origin / in_loop / checked / file)"
for ll in "$TMP/buffer_c.ll" "$TMP/buffer_rs.ll"; do
  echo "-- $(basename "$ll")"
  run "$BUF_SO" buffer-access-pass "$ll" \
    | jq -r '.[] | [.line, .access_kind, .index_kind, .origin, .inside_loop, .dominated_by_check,
                    (.file | split("/") | last)] | @tsv' \
    | sort -n | column -t -s$'\t'
done

# ---------------------------------------------------------------------------
# Bounds-check verdicts: small cases with known answers. Each function's name
# says the expected bound_ok (exp_<yes|no|unknown|lower|none>_...); each has
# exactly one variable-index access. Covers: C stack reloads + sext, branch
# direction (early return, wrong direction), constant bound vs static size
# (off-by-one, too big), variable bound, pointer of unknown size, lower-bound
# and != tests, a check on only one path, loop conditions with && / ||
# (clang -O0 merges them into one value first), and Rust's own checks
# (llvm.expect + panic_bounds_check, also next to a programmer's if), Rust
# element indexing through std (Vec v[i], counted; slicing v[a..b], not
# counted -- it makes a view, not an access; get_unchecked), and the
# index_expr / check_signed fields.
echo
echo "==> Bounds-check verdicts (known answers: function name = expected bound_ok)"
cat > "$TMP/verdict.c" <<'CEOF'
int exp_yes_for(int i)        { int a[4]; int s = 0; for (i = 0; i < 4; i++) s += a[i]; return s; }
int exp_yes_le(int i)         { int a[4]; if (i <= 3) return a[i]; return 0; }
int exp_yes_early_return(int i) { int a[4]; if (i >= 4) return 0; return a[i]; }
int exp_yes_eq(int i)         { int a[4]; if (i == 2) return a[i]; return 0; }
int exp_yes_2d(int i, int j)  { int a[2][4]; int s = 0; for (i = 0; i < 2; i++) for (j = 0; j < 4; j++) s += a[i][j]; return s; }
int exp_no_off_by_one(int i)  { int a[4]; int s = 0; for (i = 0; i <= 4; i++) s += a[i]; return s; }
int exp_no_too_big(int i)     { int a[4]; if (i < 8) return a[i]; return 0; }
int exp_no_wrong_dir(int i)   { int a[4]; if (i >= 4) return a[i]; return 0; }
int exp_no_gt(int i)          { int a[4]; if (i > 3) return a[i]; return 0; }
int exp_unknown_var(int *p, int n, int i) { if (i < n) return p[i]; return 0; }
int exp_unknown_ptr(int *p, int i)        { if (i < 4) return p[i]; return 0; }
int exp_lower_gt0(int i)      { int a[4]; if (i > 0) return a[i]; return 0; }
int exp_lower_ne(int i)       { int a[4]; if (i != 9) return a[i]; return 0; }
int exp_lower_nonzero(char *buf, int used) { if (used) buf[used] = 10; return used; }
int exp_none_unchecked(int i) { int a[4]; return a[i]; }
int exp_none_one_path(int i, int n) { int a[4]; int x = 0; if (i < n) x = 1; return a[i] + x; }
int exp_yes_for_and(int i, int go)        { int a[4]; int s = 0; for (i = 0; i < 4 && go; i++) s += a[i]; return s; }
int exp_yes_for_and_last(int i, int go)   { int a[4]; int s = 0; for (i = 0; go && i < 4; i++) s += a[i]; return s; }
int exp_yes_while_and(int i, int go)      { int a[4]; int s = 0; while (i < 4 && go) { s += a[i]; i++; } return s; }
int exp_unknown_paste(int **fp, unsigned long n, int open) { int s = 0; for (unsigned long i = 0; i < n && open; i++) if (fp[i]) s++; return s; }
int exp_none_for_or(int i, int go)        { int a[4]; int s = 0; for (i = 0; i < 4 || go; i++) s += a[i]; return s; }
int exp_none_and_other_var(int i, int j, int go) { int a[4]; int s = 0; for (j = 0; j < 4 && go; j++) s += a[i]; return s; }
int exp_none_computed(int i)              { int a[4]; return a[i - 1]; }
int exp_none_memory(int *b)               { int a[4]; return a[b[0]]; }
int exp_yes_loop_signed(int i)            { int a[4]; int s = 0; for (i = 0; i < 4; i++) s += a[i]; return s; }
int exp_yes_loop_unsigned(unsigned i)     { int a[4]; int s = 0; for (i = 0; i < 4u; i++) s += a[i]; return s; }
CEOF
cat > "$TMP/verdict.rs" <<'REOF'
pub fn exp_yes_slice(s: &[u8], i: usize) -> u8 { s[i] }
pub fn exp_yes_array(a: [u8; 4], i: usize) -> u8 { a[i] }
pub fn exp_yes_if_and_rustc(s: &[u8], i: usize) -> u8 { if i < s.len() { s[i] } else { 0 } }
pub fn exp_yes_slice_unsigned(s: &[u8], i: usize) -> u8 { s[i] }
pub fn exp_yes_vec_index_call(v: &Vec<u8>, i: usize) -> u8 { v[i] }
pub fn exp_yes_vec_index_not_slice_call(v: &Vec<u8>, a: usize, b: usize, i: usize) -> u8 { v[a..b].len() as u8 + v[i] }
pub fn exp_none_get_unchecked(s: &[u8], i: usize) -> u8 { unsafe { *s.get_unchecked(i) } }
REOF
clang-22 -w -O0 -Xclang -disable-O0-optnone -gline-tables-only -S -emit-llvm \
  "$TMP/verdict.c" -o "$TMP/verdict_c.ll" || exit 1
rustc --crate-type=lib -A warnings -C opt-level=0 -C debuginfo=line-tables-only \
  -C symbol-mangling-version=v0 --emit=llvm-ir -o "$TMP/verdict_rs.ll" "$TMP/verdict.rs" || exit 1

VFAIL=0
: > "$TMP/tested.txt"
for ll in "$TMP/verdict_c.ll" "$TMP/verdict_rs.ll"; do
  run "$BUF_SO" buffer-access-pass "$ll" \
    | jq -r '.[] | select(.index_kind == "variable" and (.function_demangled | test("exp_")))
             | [(.function_demangled | capture("(?<f>exp_[a-z0-9_]+)").f),
                (if .check_op == "" then "-" else .check_op end),
                (if .check_bound == "" then "-" else .check_bound end),
                .buffer_size, .bound_ok, .access_kind, .index_expr, .check_signed] | @tsv' > "$TMP/v.tsv"
  while IFS=$'\t' read -r f op b sz ok kind expr signed; do
    # expected bound_ok = 2nd word of the name; name parts also state
    # _computed/_memory (index_expr), _signed/_unsigned (check_signed),
    # _index_call (access_kind index)
    want=$(echo "$f" | sed -E 's/^exp_([a-z]+)_.*/\1/')
    res=PASS
    [[ "$ok" == "$want" ]] || res=FAIL
    [[ "$f" == *_computed* && "$expr" != computed ]] && res=FAIL
    [[ "$f" == *_memory* && "$expr" != memory ]] && res=FAIL
    [[ "$f" == *_signed* && "$f" != *_unsigned* && "$signed" != true ]] && res=FAIL
    [[ "$f" == *_unsigned* && "$signed" != false ]] && res=FAIL
    [[ "$f" == *_index_call* && "$kind" != index ]] && res=FAIL
    [[ $res == FAIL ]] && VFAIL=1
    printf '  %-4s %-24s op=%-2s bound=%-4s size=%-2s bound_ok=%-7s kind=%-5s expr=%-8s signed=%s\n' \
      "$res" "$f" "$op" "$b" "$sz" "$ok" "$kind" "$expr" "$signed"
    echo "$f" >> "$TMP/tested.txt"
  done < "$TMP/v.tsv"
done
# every test function must have produced a row
missing=$(comm -23 <(grep -ohE 'exp_[a-z0-9_]+' "$TMP/verdict.c" "$TMP/verdict.rs" | sort -u) \
                   <(sort -u "$TMP/tested.txt"))
if [[ -n "$missing" ]]; then
  echo "  FAIL no access reported for: $missing"; VFAIL=1
fi
# ... and exactly one (e.g. Vec slicing next to v[i] must not add a second row)
extra=$(sort "$TMP/tested.txt" | uniq -d)
if [[ -n "$extra" ]]; then
  echo "  FAIL more than one access reported for: $extra"; VFAIL=1
fi
if (( VFAIL )); then
  echo "  verdict test FAILED"
  exit 1
fi
echo "  all verdicts as expected"