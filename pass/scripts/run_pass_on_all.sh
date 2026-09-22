#!/usr/bin/env bash
#
# run_pass_on_all.sh
#
# Walks every benchmarks/<language>/<tool>/ir/*.ll file, runs the
# loop-finder pass on it, and writes one JSON file per input:
#   pass/results/<language>/<tool>/<name>.json   -- every loop found
#
# Then runs label_loops.py, which adds each loop's source kind and writes:
#   <name>.labeled.json              -- same loops + "loop_kind"
#   pass/results/loop_kinds.tsv      -- counts per language/tool/level/kind
#
# Standard-library loops are NOT filtered out here. label_loops.py marks
# them loop_kind "library", based on the source FILE the loop's code comes
# from (std/core/alloc, ~/.cargo dependencies, /usr headers). This replaces
# the old demangled-name filter, which missed trait impls such as
# "<alloc::vec::Vec<T> as core::ops::drop::Drop>::drop" (they start with
# "<", not "core::"). Filter with: jq '[.[] | select(.loop_kind != "library")]'
#
# Usage (run from repo root):
#   ./pass/scripts/run_pass_on_all.sh

set -euo pipefail

PLUGIN="./pass/src/build/libLoopFinderPass.so"
OPT_BIN="opt-22"

if [ ! -f "$PLUGIN" ]; then
  echo "error: plugin not found at $PLUGIN -- build it first (pass/src/build)" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "error: this script needs jq to assemble JSON output." >&2
  echo "       install it with: sudo apt install jq" >&2
  exit 1
fi

mkdir -p pass/results

find benchmarks -type f -path "*/ir/*.ll" | while read -r ll_file; do

  rel_path="${ll_file#benchmarks/}"
  rel_path="${rel_path/\/ir\//\/}"
  out_file="pass/results/${rel_path%.ll}.json"
  mkdir -p "$(dirname "$out_file")"

  echo "Running pass on $ll_file ..."

  raw_output="$("$OPT_BIN" -load-pass-plugin="$PLUGIN" -passes=loop-finder \
                -disable-output "$ll_file" 2>&1)"

  loop_lines="$(echo "$raw_output" | grep '^{' || true)"

  if [ -z "$loop_lines" ]; then
    echo "[]" > "$out_file"
  else
    echo "$loop_lines" | jq -s '.' > "$out_file"
  fi
done

echo "Labeling loops..."
python3 pass/scripts/label_loops.py

echo "Done. Results under pass/results/ (<name>.json, <name>.labeled.json, loop_kinds.tsv)"