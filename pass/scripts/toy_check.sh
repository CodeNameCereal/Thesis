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