#!/usr/bin/env bash
#
# run_pass_on_all.sh
#
# Walks every benchmarks/<language>/<tool>/ir/*.ll file, runs the
# loop-finder pass on it, and writes TWO JSON files per input:
#   <name>.json           -- every loop found, unfiltered
#   <name>.filtered.json  -- with std/core/alloc-internal functions
#                            excluded (see explanation below)
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
  filtered_out_file="pass/results/${rel_path%.ll}.filtered.json"
  mkdir -p "$(dirname "$out_file")"

  echo "Running pass on $ll_file ..."

  raw_output="$("$OPT_BIN" -load-pass-plugin="$PLUGIN" -passes=loop-finder \
                -disable-output "$ll_file" 2>&1)"

  loop_lines="$(echo "$raw_output" | grep '^{' || true)"

  if [ -z "$loop_lines" ]; then
    echo "[]" > "$out_file"
    echo "[]" > "$filtered_out_file"
  else
    # Unfiltered: every loop found, exactly as the pass reported it.
    # This stays around because "how much of this crate's IR is actually
    # standard-library plumbing" is itself a number worth reporting, not
    # just something to throw away.
    echo "$loop_lines" | jq -s '.' > "$out_file"

    # Filtered: drop any loop whose containing function's DEMANGLED name
    # starts with core::, alloc::, or std:: -- these are Rust
    # standard-library/runtime internals (drop glue, RawVec internals,
    # iterator adapter plumbing, etc.), not code the tool's author wrote.
    #
    # This is a name-prefix heuristic, not a perfect crate-membership
    # check -- it filters based on which function DEFINES the loop, not
    # on what that function calls. A tool function that merely CALLS
    # something in core:: is untouched; only loops physically located
    # inside a core::/alloc::/std:: function itself get excluded. For
    # plain C functions, function_demangled is identical to the raw
    # name (see LoopFinderPass.cpp's demangle() fallback behavior), and
    # C function names never start with these prefixes, so this filter
    # has no effect on the C side of the corpus -- exactly as intended.
    echo "$loop_lines" \
      | jq -s '[.[] | select(.function_demangled | test("^(core|alloc|std)::") | not)]' \
      > "$filtered_out_file"
  fi
done

echo "Done. Results written under pass/results/ (both raw and .filtered.json per file)"