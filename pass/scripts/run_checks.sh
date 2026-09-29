#!/usr/bin/env bash
# run_checks.sh -- run all validation checks, one after the other.
#
# Usage (from repo root):
#   ./pass/scripts/run_checks.sh               # all checks
#   ./pass/scripts/run_checks.sh --quick       # skip the slow debug-info check
#   ./pass/scripts/run_checks.sh --tools echo fold   # debug-info check on these tools only
#
# Runs, in order:
#   1. toy_check.sh        passes + labeling on the toy corpus (known answers)
#   2. check_loops.py      every labeled loop vs its source line, all tools
#   3. check_buffers.py    tool-code buffer accesses vs their source line
#   4. debuginfo_check.sh  loops identical with / without debug info (slow)
#
# Needs results from run_all_passes.sh first (checks 2 and 3 read them).
# Full output is also saved to pass/results/checks.log.
# Changes nothing in benchmarks/ or pass/results/ (except checks.log).

set -uo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"
S="pass/scripts"
LOG="pass/results/checks.log"

QUICK=0; TOOLS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --quick) QUICK=1 ;;
    --tools) shift; while [[ $# -gt 0 && "$1" != --* ]]; do TOOLS+=("$1"); shift; done; continue ;;
    -h|--help) sed -n '2,18p' "$0"; exit 0 ;;
    *) echo "unknown option: $1" >&2; exit 2 ;;
  esac
  shift
done

[[ -d pass/results ]] || { echo "no pass/results -- run run_all_passes.sh first" >&2; exit 1; }

declare -a STATUS=()
step() {  # step <name> <command...>
  local name="$1"; shift
  echo
  echo "================================================================"
  echo "== $name"
  echo "================================================================"
  if "$@"; then STATUS+=("OK      $name"); else STATUS+=("FAILED  $name"); fi
}

{
  echo "run_checks.sh -- $(date -u '+%Y-%m-%d %H:%M UTC')"

  step "1. Toy corpus (toy_check.sh)"            "$S/toy_check.sh"
  step "2. Loops vs source (check_loops.py)"     python3 "$S/check_loops.py"
  step "3. Buffers vs source (check_buffers.py)" python3 "$S/check_buffers.py"
  if (( QUICK )); then
    STATUS+=("SKIPPED 4. Debug info (debuginfo_check.sh) -- --quick")
  else
    step "4. Debug info (debuginfo_check.sh)"    "$S/debuginfo_check.sh" "${TOOLS[@]}"
  fi

  echo
  echo "================================================================"
  echo "== Summary"
  echo "================================================================"
  printf '  %s\n' "${STATUS[@]}"
  echo
  echo "OK = the check ran. Still read its output: flagged loops (check 2) and"
  echo "var_other accesses (check 3) are listed above for a manual look."
} 2>&1 | tee "$LOG"

echo "(full output saved to $LOG)"