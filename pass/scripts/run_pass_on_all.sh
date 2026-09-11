#!/usr/bin/env bash
#
# run_pass_on_all.sh
#
# Walks every benchmarks/<language>/<tool>/ir/*.ll file, runs the
# loop-finder pass on it, and writes the pass's JSON-lines output as a
# proper JSON array into pass/results/, mirroring the benchmarks/
# directory structure.
#
# Usage (run from repo root):
#   ./pass/scripts/run_pass_on_all.sh

set -euo pipefail

# Adjust this if your build directory ends up somewhere else.
PLUGIN="./pass/src/build/libLoopFinderPass.so"
OPT_BIN="opt-22"

if [ ! -f "$PLUGIN" ]; then
  echo "error: plugin not found at $PLUGIN -- build it first (pass/src/build)" >&2
  exit 1
fi

# jq assembles our JSON-lines pass output into a real JSON array. If it's
# not installed, fail loudly with the fix rather than silently producing
# broken output.
if ! command -v jq >/dev/null 2>&1; then
  echo "error: this script needs jq to assemble JSON output." >&2
  echo "       install it with: sudo apt install jq" >&2
  exit 1
fi

mkdir -p pass/results

# Find every .ll file under any benchmarks/<language>/<tool>/ir/ folder.
find benchmarks -type f -path "*/ir/*.ll" | while read -r ll_file; do

  # Reconstruct the same relative path under pass/results/, swapping the
  # ir/ segment out and .ll for .json. Example:
  #   benchmarks/c_cpp/comm/ir/comm_O0.ll
  #     -> pass/results/c_cpp/comm/comm_O0.json
  rel_path="${ll_file#benchmarks/}"       # c_cpp/comm/ir/comm_O0.ll
  rel_path="${rel_path/\/ir\//\/}"        # c_cpp/comm/comm_O0.ll
  out_file="pass/results/${rel_path%.ll}.json"
  mkdir -p "$(dirname "$out_file")"

  echo "Running pass on $ll_file ..."

  # -disable-output: we don't want opt printing the (unmodified) IR back
  # out -- only our pass's own errs() text matters. errs() writes to
  # stderr, so we redirect stderr into the captured output too (2>&1).
  raw_output="$("$OPT_BIN" -load-pass-plugin="$PLUGIN" -passes=loop-finder \
                -disable-output "$ll_file" 2>&1)"

  # Keep only the JSON-object lines (the per-loop data). The "FUNCTION
  # <name>" marker lines the pass also prints aren't JSON and get
  # filtered out here -- they exist for readability when you eyeball
  # opt's output directly, not for this script's parsing.
  loop_lines="$(echo "$raw_output" | grep '^{' || true)"

  if [ -z "$loop_lines" ]; then
    # No loops anywhere in this file -- write a valid empty JSON array
    # rather than nothing, so nothing downstream needs a special case
    # for "zero loops found."
    echo "[]" > "$out_file"
  else
    # jq -s ("slurp"): reads however many separate JSON objects arrive on
    # stdin (one per line here) and combines them into one JSON array,
    # written to out_file.
    echo "$loop_lines" | jq -s '.' > "$out_file"
  fi
done

echo "Done. Results written under pass/results/"