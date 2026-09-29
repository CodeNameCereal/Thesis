#!/usr/bin/env bash
# debuginfo_check.sh -- confirm that compiling WITH line tables (needed for
# loop labeling) gives exactly the same loops as compiling WITHOUT debug info.
#
# Usage (from repo root):
#   ./pass/scripts/debuginfo_check.sh              # all 10 tools, C + Rust
#   ./pass/scripts/debuginfo_check.sh echo fold    # only these tools
#
# For each tool/language it recompiles the IR twice into a temp dir (with and
# without debug info, otherwise identical flags), runs LoopFinderPass on both
# and compares the number of loops per function. Expected: SAME everywhere.
# Does not touch benchmarks/ or pass/results/.

set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"
C_BUILD_DIR="$ROOT/.build/coreutils"
RUST_BUILD_DIR="$ROOT/.build/uutils-coreutils"
C_BUILD_LOG="$C_BUILD_DIR/build_verbose.log"
PLUGIN="$ROOT/pass/src/build/libLoopFinderPass.so"
OPT="${OPT:-opt-22}"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

TOOLS=("$@")
[[ ${#TOOLS[@]} -eq 0 ]] && TOOLS=(sum expand echo fold tee mkdir comm paste nl shuf)

[[ -f "$PLUGIN" ]]      || { echo "missing $PLUGIN -- build the passes first" >&2; exit 1; }
[[ -f "$C_BUILD_LOG" ]] || { echo "missing $C_BUILD_LOG -- run benchmarks.sh once first" >&2; exit 1; }

# loops per function, as sorted "function<TAB>count" lines
loops_per_fn() {
  "$OPT" -load-pass-plugin="$PLUGIN" -passes=loop-finder -disable-output "$1" 2>&1 \
    | { grep '^{' || true; } | jq -r '.function' | sort | uniq -c | awk '{print $2"\t"$1}'
}

compare() {  # compare <label> <with.ll> <without.ll>
  local label="$1" a="$2" b="$3"
  if [[ ! -s "$a" || ! -s "$b" ]]; then
    printf '%-14s SKIPPED (compile failed)\n' "$label"; FAIL=1; return
  fi
  loops_per_fn "$a" > "$TMP/a.txt"
  loops_per_fn "$b" > "$TMP/b.txt"
  local na nb
  na=$(awk '{s+=$2} END {print s+0}' "$TMP/a.txt")
  nb=$(awk '{s+=$2} END {print s+0}' "$TMP/b.txt")
  if diff -q "$TMP/a.txt" "$TMP/b.txt" >/dev/null; then
    printf '%-14s SAME   (%s loops)\n' "$label" "$na"
  else
    printf '%-14s DIFF   (with debug info: %s, without: %s)\n' "$label" "$na" "$nb"
    diff "$TMP/a.txt" "$TMP/b.txt" | sed 's/^/    /' | head -20
    FAIL=1
  fi
}

c_flags() {  # same lookup as benchmarks.sh
  local tool="$1" raw
  raw=$(grep -E "\-c -o[[:space:]]*src/${tool}\.o[[:space:]]" "$C_BUILD_LOG" | head -1 || true)
  [[ -z "$raw" ]] && raw=$(grep -E "\-o[[:space:]]*src/${tool}-${tool}\.o" "$C_BUILD_LOG" \
                           | grep "src/${tool}\.c\$" | head -1 || true)
  echo "$raw" | sed -E 's/^gcc[[:space:]]*//; s/-MT.*$//'
}

newest_ll() {
  find "$1" -maxdepth 1 -name "$2-*.ll" -printf '%T@ %p\n' 2>/dev/null | sort -rn | head -1 | cut -d' ' -f2-
}

FAIL=0
QUIET_W="-Wno-c23-extensions -Wno-tautological-constant-out-of-range-compare"

echo "==> C"
for tool in "${TOOLS[@]}"; do
  flags=$(c_flags "$tool")
  [[ -z "$flags" ]] && { printf '%-14s SKIPPED (no compile line)\n' "c/$tool"; continue; }
  # -g0 must come last so it wins over the build log's -g
  ( cd "$C_BUILD_DIR" && clang-22 $flags -O0 -Xclang -disable-O0-optnone -gline-tables-only $QUIET_W \
      -S -emit-llvm "src/$tool.c" -o "$TMP/c_with.ll" ) 2>/dev/null
  ( cd "$C_BUILD_DIR" && clang-22 $flags -O0 -Xclang -disable-O0-optnone -g0 $QUIET_W \
      -S -emit-llvm "src/$tool.c" -o "$TMP/c_without.ll" ) 2>/dev/null
  compare "c/$tool" "$TMP/c_with.ll" "$TMP/c_without.ll"
done

echo
echo "==> Rust"
for tool in "${TOOLS[@]}"; do
  pkg="uu_$tool"; deps="$RUST_BUILD_DIR/target/debug/deps"
  for mode in with without; do
    di="line-tables-only"; [[ $mode == without ]] && di="0"
    rf=(--emit=llvm-ir -C "debuginfo=$di" -C codegen-units=1)
    ( cd "$RUST_BUILD_DIR" \
      && CARGO_INCREMENTAL=0 cargo rustc -q -p "$pkg" --bin "$tool" -- "${rf[@]}" \
      && CARGO_INCREMENTAL=0 cargo rustc -q -p "$pkg" --lib          -- "${rf[@]}" ) 2>/dev/null
    bin=$(newest_ll "$deps" "$tool"); lib=$(newest_ll "$deps" "$pkg")
    llvm-link-22 -S "$bin" "$lib" -o "$TMP/rs_$mode.ll" 2>/dev/null \
      || llvm-link-22 -S "$bin" --override "$lib" -o "$TMP/rs_$mode.ll" 2>/dev/null
  done
  compare "rust/$tool" "$TMP/rs_with.ll" "$TMP/rs_without.ll"
done

echo
if (( FAIL )); then
  echo "Some tools differ or were skipped -- see above."
  exit 1
fi
echo "All SAME: debug info does not change the loops found."