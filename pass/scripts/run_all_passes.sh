#!/usr/bin/env bash
# run_all_passes.sh -- run LoopFinderPass + BufferAccessPass over every real
# tool in the corpus (C + Rust, -O0), then label loop kinds and buffer
# access origins.
#
# Place in: pass/scripts/run_all_passes.sh
#
# Usage:
#   ./pass/scripts/run_all_passes.sh                 # run on existing IR
#   ./pass/scripts/run_all_passes.sh --build         # (re)build both pass plugins first
#   ./pass/scripts/run_all_passes.sh --regen         # regenerate IR first (benchmarks.sh)
#   ./pass/scripts/run_all_passes.sh --tools sum,echo   # only these tools
#
# Outputs:
#   pass/results/<lang>/<tool>/<tool>_O0.json               LoopFinder (raw)
#   pass/results/<lang>/<tool>/<tool>_O0.labeled.json       + loop_kind (label_loops.py)
#   pass/results/loop_kinds.tsv                             loop-kind summary
#   pass/results_buffer/<lang>/<tool>/<tool>_O0.json        BufferAccess (raw)
#   pass/results_buffer/<lang>/<tool>/<tool>_O0.labeled.json + code_origin (label_buffers.py)
#   pass/results_buffer/buffer_summary.tsv                  buffer-access summary
#   pass/results/pass_counts.tsv                            per-file counts of both passes
#   pass/logs/<pass>/<lang>_<tool>_<lvl>.stderr             full opt stderr, for debugging
#
# Overridable via env vars: OPT, LOOP_PLUGIN, BUFFER_PLUGIN, LOOP_PASS_NAME, BUFFER_PASS_NAME

set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
BENCH="$ROOT/benchmarks"
SRC_DIR="$ROOT/pass/src"
BUILD_DIR="$SRC_DIR/build"
LOOP_OUT="$ROOT/pass/results"
BUF_OUT="$ROOT/pass/results_buffer"   # separate tree so label_loops.py never sees it
LOG_DIR="$ROOT/pass/logs"
SCRIPTS="$ROOT/pass/scripts"
LEVELS=(O0)   # optimization levels to run; use (O0 O2) to also run -O2

DO_BUILD=0; DO_REGEN=0; TOOLS_FILTER=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --build) DO_BUILD=1 ;;
    --regen) DO_REGEN=1 ;;
    --tools) TOOLS_FILTER="$2"; shift ;;
    -h|--help) sed -n '2,26p' "$0"; exit 0 ;;
    *) echo "unknown option: $1" >&2; exit 2 ;;
  esac
  shift
done

red()   { printf '\033[31m%s\033[0m\n' "$*"; }
yellow(){ printf '\033[33m%s\033[0m\n' "$*"; }
green() { printf '\033[32m%s\033[0m\n' "$*"; }
die()   { red "ERROR: $*" >&2; exit 1; }

# ---------------------------------------------------------------- deps
OPT="${OPT:-$(command -v opt-22 || command -v opt || true)}"
[[ -n "$OPT" ]] || die "opt-22 not found"
"$OPT" --version | grep -q 'version 22\.' || yellow "WARNING: $OPT is not LLVM 22 -- plugins may fail to load"
for dep in jq python3 cargo; do command -v "$dep" >/dev/null || die "$dep not found"; done

# ---------------------------------------------------------------- optional regen / build
if (( DO_REGEN )); then
  # benchmarks.sh only -- NOT fill.sh: fill.sh is an old copy of the IR
  # generator (no optnone fix, no line tables, Rust bin-only) and would
  # overwrite the correct IR.
  echo "==> Regenerating corpus IR (benchmarks.sh)"
  "$SCRIPTS/benchmarks.sh" || die "benchmarks.sh failed"
fi

if (( DO_BUILD )); then
  echo "==> Building pass plugins"
  cmake -S "$SRC_DIR" -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE=Release || die "cmake configure failed"
  cmake --build "$BUILD_DIR" -j"$(nproc)"                         || die "cmake build failed"
fi

# ---------------------------------------------------------------- locate plugins + pass names
find_plugin() { find "$BUILD_DIR" -name "*$1*.so" -type f 2>/dev/null | head -n1; }
LOOP_PLUGIN="${LOOP_PLUGIN:-$(find_plugin LoopFinder)}"
BUFFER_PLUGIN="${BUFFER_PLUGIN:-$(find_plugin BufferAccess)}"
[[ -f "$LOOP_PLUGIN"   ]] || die "LoopFinder plugin not found under $BUILD_DIR (try --build)"
[[ -f "$BUFFER_PLUGIN" ]] || die "BufferAccess plugin not found under $BUILD_DIR (try --build)"

# Read the pipeline name each pass registers (the `Name == "..."` in its PassBuilder callback)
pass_name() { grep -oP 'Name\s*==\s*"\K[^"]+' "$1" 2>/dev/null | head -n1; }
LOOP_PASS_NAME="${LOOP_PASS_NAME:-$(pass_name "$SRC_DIR/LoopFinder/LoopFinderPass.cpp")}"
BUFFER_PASS_NAME="${BUFFER_PASS_NAME:-$(pass_name "$SRC_DIR/BufferAccess/BufferAccessPass.cpp")}"
[[ -n "$LOOP_PASS_NAME"   ]] || die "could not detect LoopFinder pass name; set LOOP_PASS_NAME=..."
[[ -n "$BUFFER_PASS_NAME" ]] || die "could not detect BufferAccess pass name; set BUFFER_PASS_NAME=..."

echo "opt:          $OPT"
echo "LoopFinder:   $LOOP_PLUGIN  (-passes=$LOOP_PASS_NAME)"
echo "BufferAccess: $BUFFER_PLUGIN  (-passes=$BUFFER_PASS_NAME)"
echo

# A leftover toy_loops folder would pollute loop_kinds.tsv
for d in "$LOOP_OUT"/*/toy_loops; do
  [[ -d "$d" ]] && yellow "WARNING: $d exists -- its rows will end up in loop_kinds.tsv (delete it?)"
done

# ---------------------------------------------------------------- run one pass on one file
# run_pass <plugin> <pass-name> <ll> <out.json> <log>
# Pass output = JSON lines on stderr; keep only lines starting with '{', slurp into an array.
run_pass() {
  local plugin="$1" name="$2" ll="$3" out="$4" log="$5"
  mkdir -p "$(dirname "$out")" "$(dirname "$log")"
  if ! "$OPT" -load-pass-plugin="$plugin" -passes="$name" -disable-output "$ll" 2>"$log"; then
    red "  FAIL  opt exited non-zero -- see $log"; return 1
  fi
  if ! { grep '^{' "$log" || true; } | jq -s '.' >"$out" 2>>"$log"; then
    red "  FAIL  invalid JSON in pass output -- see $log"; return 1
  fi
  return 0
}

# ---------------------------------------------------------------- main loop
declare -a FAILED=()
COUNTS="$LOOP_OUT/pass_counts.tsv"
mkdir -p "$LOOP_OUT"
printf 'lang\ttool\tlevel\tloops\tbuffer_accesses\n' >"$COUNTS"

shopt -s nullglob
for lang_dir in "$BENCH"/c_cpp "$BENCH"/rust; do
  lang="$(basename "$lang_dir")"
  for tool_dir in "$lang_dir"/*/; do
    tool="$(basename "$tool_dir")"
    [[ "$tool" == toy_examples ]] && continue
    if [[ -n "$TOOLS_FILTER" && ",$TOOLS_FILTER," != *",$tool,"* ]]; then continue; fi

    for lvl in "${LEVELS[@]}"; do
      ll="$tool_dir/ir/${tool}_${lvl}.ll"
      if [[ ! -f "$ll" ]]; then
        yellow "[$lang/$tool/$lvl] missing $ll -- skipped"; FAILED+=("$lang/$tool/$lvl (no IR)"); continue
      fi
      echo "[$lang/$tool/$lvl]"

      # Sanity checks on the IR itself (the two silent-failure gotchas)
      grep -q '!DILocation' "$ll" \
        || yellow "  WARN  no line tables in IR -> loops will be 'no-debug-info' (rerun with --regen)"
      if [[ "$lvl" == O0 ]] && grep -qE '^attributes #[0-9]+ = \{.*\boptnone\b' "$ll"; then
        yellow "  WARN  optnone present -> passes will be skipped silently (rerun with --regen)"
      fi

      loop_json="$LOOP_OUT/$lang/$tool/${tool}_${lvl}.json"
      buf_json="$BUF_OUT/$lang/$tool/${tool}_${lvl}.json"
      nl="-"; nb="-"

      if run_pass "$LOOP_PLUGIN" "$LOOP_PASS_NAME" "$ll" "$loop_json" \
                  "$LOG_DIR/loopfinder/${lang}_${tool}_${lvl}.stderr"; then
        nl="$(jq 'length' "$loop_json")"
        echo "  loops:           $nl"
      else FAILED+=("$lang/$tool/$lvl LoopFinder"); fi

      if run_pass "$BUFFER_PLUGIN" "$BUFFER_PASS_NAME" "$ll" "$buf_json" \
                  "$LOG_DIR/bufferaccess/${lang}_${tool}_${lvl}.stderr"; then
        nb="$(jq 'length' "$buf_json")"
        echo "  buffer accesses: $nb"
      else FAILED+=("$lang/$tool/$lvl BufferAccess"); fi

      [[ "$nl" == 0 && "$nb" == 0 ]] && yellow "  WARN  both passes produced 0 entries -- suspicious"
      printf '%s\t%s\t%s\t%s\t%s\n' "$lang" "$tool" "$lvl" "$nl" "$nb" >>"$COUNTS"
    done
  done
done

# ---------------------------------------------------------------- loop kind labeling (-O0)
echo
echo "==> Labeling loop kinds (label_loops.py)"
if python3 "$SCRIPTS/label_loops.py"; then
  green "  loop_kinds.tsv -> $LOOP_OUT/loop_kinds.tsv"
  if [[ -f "$LOOP_OUT/loop_kinds.tsv" ]] && grep -qE $'\t(unmatched|no-debug-info)\t' "$LOOP_OUT/loop_kinds.tsv"; then
    yellow "  NOTE  'unmatched' / 'no-debug-info' rows present -- worth inspecting:"
    grep -E $'\t(unmatched|no-debug-info)\t' "$LOOP_OUT/loop_kinds.tsv" | sed 's/^/        /'
  fi
else
  red "  label_loops.py failed"; FAILED+=("label_loops.py")
fi

# ---------------------------------------------------------------- buffer access origin labeling
echo
echo "==> Labeling buffer access origin (label_buffers.py)"
if python3 "$SCRIPTS/label_buffers.py"; then
  green "  buffer_summary.tsv -> $BUF_OUT/buffer_summary.tsv"
else
  red "  label_buffers.py failed"; FAILED+=("label_buffers.py")
fi

# ---------------------------------------------------------------- summary
echo
echo "==> Per-file counts ($COUNTS)"
column -t -s$'\t' "$COUNTS"
echo
if (( ${#FAILED[@]} )); then
  red "Finished with ${#FAILED[@]} failure(s):"
  printf '  - %s\n' "${FAILED[@]}"
  exit 1
fi
green "All done, no failures."