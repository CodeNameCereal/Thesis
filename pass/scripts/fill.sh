#!/usr/bin/env bash
#
# fill.sh -- fill benchmarks/{c_cpp,rust}/<tool>/SOURCE.md with provenance
# data (upstream repo, file path, commit hash/date, permalink, method).
#
# Does NOT build or touch any IR -- that is benchmarks.sh's job. (An older
# version of this file was a full copy of the IR generator and silently
# overwrote correct IR with outdated IR; that part has been removed.)
#
# Never overwrites manual edits:
#   - a SOURCE.md that is still the empty template (blank "Commit hash:")
#     is filled in completely;
#   - in an already-filled SOURCE.md, only a "- Method:" line that was
#     auto-written by the old script (mentions generate_benchmarks.sh) is
#     updated to describe the current pipeline. Everything else is left alone.
#
# Usage (from repo root):  ./pass/scripts/fill.sh

set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

TOOLS=(sum expand echo fold tee mkdir comm paste nl shuf)

C_BUILD_DIR="$REPO_ROOT/.build/coreutils"
RUST_BUILD_DIR="$REPO_ROOT/.build/uutils-coreutils"

C_METHOD="full gnulib build flags from the verbose build log; clang-22 -O0 -Xclang -disable-O0-optnone -gline-tables-only -S -emit-llvm (see README.md, pass/scripts/benchmarks.sh)"
RUST_METHOD="cargo rustc debug profile, --bin + --lib with --emit=llvm-ir -C debuginfo=line-tables-only -C codegen-units=1, merged with llvm-link-22 (see README.md, pass/scripts/benchmarks.sh)"

for d in "$C_BUILD_DIR" "$RUST_BUILD_DIR"; do
  [ -d "$d" ] || { echo "ERROR: $d not found (needed for commit hashes)" >&2; exit 1; }
done

# fill_source_md <base> <tool> <lang_label> <repo_url> <file_path> <hash> <date> <permalink> <method>
fill_source_md() {
  local base="$1" tool="$2" lang_label="$3" repo_url="$4" file_path="$5" \
        hash="$6" commit_date="$7" permalink="$8" method="$9"
  local f="$base/SOURCE.md"

  if [ ! -f "$f" ]; then
    echo "  [$lang_label/$tool] WARNING: $f missing -- run benchmarks.sh first" >&2
    return
  fi

  if grep -q '^- Commit hash:$' "$f"; then
    cat > "$f" << EOF
# SOURCE.md -- $tool ($lang_label)

- Upstream repo: $repo_url
- File path: $file_path
- Commit hash: $hash
- Commit date: $commit_date
- Permalink: $permalink
- Retrieved: $(date -u +"%Y-%m-%d")
- Method: $method
EOF
    echo "  [$lang_label/$tool] filled SOURCE.md"
  elif grep -q '^- Method:.*generate_benchmarks\.sh' "$f"; then
    local tmp
    tmp=$(mktemp)
    awk -v m="- Method: $method" '/^- Method:.*generate_benchmarks\.sh/ {print m; next} {print}' "$f" > "$tmp"
    mv "$tmp" "$f"
    echo "  [$lang_label/$tool] updated outdated Method line"
  else
    echo "  [$lang_label/$tool] already filled, left unchanged"
  fi
}

echo "C tools..."
for tool in "${TOOLS[@]}"; do
  hash=$(git -C "$C_BUILD_DIR" log -1 --format="%H" -- "src/${tool}.c" 2>/dev/null || echo "unknown")
  date_=$(git -C "$C_BUILD_DIR" log -1 --format="%cI" -- "src/${tool}.c" 2>/dev/null || echo "unknown")
  fill_source_md "$REPO_ROOT/benchmarks/c_cpp/$tool" "$tool" "C" \
    "https://github.com/coreutils/coreutils" "src/${tool}.c" "$hash" "$date_" \
    "https://github.com/coreutils/coreutils/blob/${hash}/src/${tool}.c" "$C_METHOD"
done

echo "Rust tools..."
for tool in "${TOOLS[@]}"; do
  hash=$(git -C "$RUST_BUILD_DIR" log -1 --format="%H" -- "src/uu/$tool" 2>/dev/null || echo "unknown")
  date_=$(git -C "$RUST_BUILD_DIR" log -1 --format="%cI" -- "src/uu/$tool" 2>/dev/null || echo "unknown")
  fill_source_md "$REPO_ROOT/benchmarks/rust/$tool" "$tool" "Rust" \
    "https://github.com/uutils/coreutils" "src/uu/$tool" "$hash" "$date_" \
    "https://github.com/uutils/coreutils/blob/${hash}/src/uu/$tool" "$RUST_METHOD"
done

echo "Done."