#!/usr/bin/env bash
#
# benchmarks.sh
#
# Builds the corpus: benchmarks/{c_cpp,rust}/<tool>/{src,ir,SOURCE.md,NOTES.md}
# for the 10 tools, with the -O0 IR in ir/<tool>_O0.ll.
#
# The IR keeps line tables (file/line/column of each instruction), which the
# loop labeling needs.
#
# Rust: a uutils tool is a small binary crate (main.rs) plus a library crate
# uu_<tool> with the actual code. We emit IR for both and link them into one
# <tool>_O0.ll, so it has the whole tool like the C file does.
#
# Re-running is safe: SOURCE.md/NOTES.md are only created if missing, IR and
# src files are overwritten.
#
# Needs .build/coreutils (configured and built) and .build/uutils-coreutils
# to exist already (see README.md). The script does not clone or build them.

set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

TOOLS=(sum expand echo fold tee mkdir comm paste nl shuf)

C_BUILD_DIR="$REPO_ROOT/.build/coreutils"
RUST_BUILD_DIR="$REPO_ROOT/.build/uutils-coreutils"
C_BUILD_LOG="$C_BUILD_DIR/build_verbose.log"

# --- checks -------------------------------------------------------------------
if [ ! -d "$C_BUILD_DIR" ]; then
  echo "ERROR: $C_BUILD_DIR not found. Clone+bootstrap+configure+make coreutils first (see README.md)." >&2
  exit 1
fi
if [ ! -d "$RUST_BUILD_DIR" ]; then
  echo "ERROR: $RUST_BUILD_DIR not found. Clone uutils/coreutils first (see README.md)." >&2
  exit 1
fi
command -v clang-22 >/dev/null || { echo "ERROR: clang-22 not found in PATH" >&2; exit 1; }
command -v cargo >/dev/null || { echo "ERROR: cargo not found in PATH" >&2; exit 1; }
command -v llvm-link-22 >/dev/null || { echo "ERROR: llvm-link-22 not found in PATH" >&2; exit 1; }

# --- helpers ------------------------------------------------------------------

# Folder layout and template docs for one tool (only if missing).
scaffold_tool() {
  local lang_dir="$1" tool="$2" lang_label="$3"
  local base="$REPO_ROOT/benchmarks/$lang_dir/$tool"
  mkdir -p "$base/src" "$base/ir"

  if [ ! -f "$base/SOURCE.md" ]; then
    cat > "$base/SOURCE.md" << EOF
# SOURCE.md -- $tool ($lang_label)

- Upstream repo:
- File path:
- Commit hash:
- Commit date:
- Permalink:
- Retrieved:
- Method:
EOF
  fi

  if [ ! -f "$base/NOTES.md" ]; then
    cat > "$base/NOTES.md" << EOF
# NOTES.md -- $tool ($lang_label)

No modifications.
EOF
  fi
}

# Verbose build log of coreutils (made once). Each tool's real compile flags
# are taken from it, since tools use different gnulib headers and defines.
ensure_c_build_log() {
  if [ ! -f "$C_BUILD_LOG" ]; then
    echo "Capturing verbose build log (one-time, may take a few minutes)..."
    ( cd "$C_BUILD_DIR" && make clean && make V=1 > "$C_BUILD_LOG" 2>&1 ) || true
    if [ ! -s "$C_BUILD_LOG" ]; then
      echo "ERROR: build log capture failed or is empty. Check $C_BUILD_DIR builds cleanly." >&2
      exit 1
    fi
  fi
}

# --- C ------------------------------------------------------------------------
build_c_tool() {
  local tool="$1"
  local src_file="$C_BUILD_DIR/src/${tool}.c"
  local dest="$REPO_ROOT/benchmarks/c_cpp/$tool"

  if [ ! -f "$src_file" ]; then
    echo "  [c/$tool] WARNING: $src_file not found, skipping" >&2
    return
  fi

  # Find the tool's compile command in the log. "|| true" because with
  # pipefail an empty grep would stop the script.
  local raw_cmd
  # normal case: src/<tool>.o
  raw_cmd=$(grep -E "\-c -o[[:space:]]*src/${tool}\.o[[:space:]]" "$C_BUILD_LOG" | head -1 || true)
  if [ -z "$raw_cmd" ]; then
    # tools built from a shared source (e.g. sum from cksum.c): the object is
    # src/<tool>-<tool>.o and the line ends with src/<tool>.c
    raw_cmd=$(grep -E "\-o[[:space:]]*src/${tool}-${tool}\.o" "$C_BUILD_LOG" | grep "src/${tool}\.c\$" | head -1 || true)
  fi
  if [ -z "$raw_cmd" ]; then
    echo "  [c/$tool] WARNING: could not find compile command in build log, skipping" >&2
    return
  fi

  # Keep the flags between "gcc" and "-MT" (the rest is dependency/output stuff).
  local flags
  flags=$(echo "$raw_cmd" | sed -E 's/^gcc[[:space:]]*//; s/-MT.*$//')

  echo "  [c/$tool] compiling IR..."
  # -disable-O0-optnone: at -O0 clang marks functions optnone and opt then
  #   skips them, so the passes would print nothing. This only removes the
  #   attribute, the code is still -O0.
  # -gline-tables-only: source locations only (same as Rust's
  #   debuginfo=line-tables-only). It comes after $flags so it overrides the
  #   "-g -O2" from the build log.
  # -Wno-...: two harmless warnings from gnulib headers, no effect on the IR.
  ( cd "$C_BUILD_DIR" && clang-22 $flags -O0 -Xclang -disable-O0-optnone -gline-tables-only \
      -Wno-c23-extensions -Wno-tautological-constant-out-of-range-compare \
      -S -emit-llvm "src/${tool}.c" -o "$dest/ir/${tool}_O0.ll" ) \
    || { echo "  [c/$tool] WARNING: O0 compile failed" >&2; }

  cp "$src_file" "$dest/src/${tool}.c"

  local hash
  hash=$(git -C "$C_BUILD_DIR" log -1 --format="%H" -- "src/${tool}.c" 2>/dev/null || echo "unknown")
  echo "  [c/$tool] done. Commit hash for SOURCE.md: $hash"
}

# --- Rust ---------------------------------------------------------------------

# Newest <crate>-<hash>.ll in a deps directory (empty if none).
newest_ll() {
  local dir="$1" crate="$2"
  find "$dir" -maxdepth 1 -name "${crate}-*.ll" -printf '%T@ %p\n' 2>/dev/null \
    | sort -rn | head -1 | cut -d' ' -f2-
}

build_rust_tool() {
  local tool="$1"
  local pkg="uu_${tool}"
  local dest="$REPO_ROOT/benchmarks/rust/$tool"
  local src_dir="$RUST_BUILD_DIR/src/uu/$tool/src"
  local deps="$RUST_BUILD_DIR/target/debug/deps"
  local out="$dest/ir/${tool}_O0.ll"

  if [ ! -d "$src_dir" ]; then
    echo "  [rust/$tool] WARNING: $src_dir not found, skipping" >&2
    return
  fi

  # Debug profile = the Rust equivalent of -O0.
  # codegen-units=1 and CARGO_INCREMENTAL=0 give one .ll per crate (otherwise
  # the crate is split over several files and we would miss code).
  local rflags=(--emit=llvm-ir -C debuginfo=line-tables-only -C codegen-units=1)

  echo "  [rust/$tool] compiling IR (bin + lib)..."
  if ! ( cd "$RUST_BUILD_DIR" \
         && CARGO_INCREMENTAL=0 cargo rustc -p "$pkg" --bin "$tool" -- "${rflags[@]}" \
         && CARGO_INCREMENTAL=0 cargo rustc -p "$pkg" --lib          -- "${rflags[@]}" ); then
    echo "  [rust/$tool] WARNING: build failed, skipping IR for this tool" >&2
    return
  fi

  local bin_ll lib_ll
  bin_ll=$(newest_ll "$deps" "$tool")
  lib_ll=$(newest_ll "$deps" "$pkg")
  if [ -z "$bin_ll" ] || [ -z "$lib_ll" ]; then
    echo "  [rust/$tool] WARNING: could not locate .ll file(s) (bin='$bin_ll' lib='$lib_ll') -- check $deps" >&2
    return
  fi

  # Link bin + lib into one file. If a symbol is defined in both, retry with
  # --override (keeps the lib's version).
  if ! llvm-link-22 -S "$bin_ll" "$lib_ll" -o "$out" 2>/dev/null; then
    if llvm-link-22 -S "$bin_ll" --override "$lib_ll" -o "$out"; then
      echo "  [rust/$tool] note: merged with --override (duplicate symbols)"
    else
      echo "  [rust/$tool] WARNING: llvm-link failed" >&2
      return
    fi
  fi

  cp "$src_dir"/*.rs "$dest/src/" 2>/dev/null || true

  local hash
  hash=$(git -C "$RUST_BUILD_DIR" log -1 --format="%H" -- "src/uu/$tool" 2>/dev/null || echo "unknown")
  echo "  [rust/$tool] done. Commit hash for SOURCE.md: $hash"
}

# --- main ---------------------------------------------------------------------
echo "Scaffolding folders for ${#TOOLS[@]} tools (c_cpp + rust)..."
for tool in "${TOOLS[@]}"; do
  scaffold_tool "c_cpp" "$tool" "C"
  scaffold_tool "rust" "$tool" "Rust"
done

echo ""
echo "Building C tools..."
ensure_c_build_log
for tool in "${TOOLS[@]}"; do
  build_c_tool "$tool"
done

echo ""
echo "Building Rust tools..."
for tool in "${TOOLS[@]}"; do
  build_rust_tool "$tool"
done

echo ""
echo "Done. Remember to:"
echo "  - Fill in SOURCE.md for any newly-created tool folders (commit hashes were printed above)"
echo "  - Review NOTES.md for any tool where you made manual edits"
echo "  - git add benchmarks/ && git commit"