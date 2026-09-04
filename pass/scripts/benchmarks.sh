#!/usr/bin/env bash
#
# generate_benchmarks.sh
#
# Creates benchmarks/{c_cpp,rust}/<tool>/{src,ir,SOURCE.md,NOTES.md} for the
# 10-tool corpus, compiles LLVM IR at O0/O2 (C) and debug/release (Rust),
# and copies everything into place.
#
# Safe to re-run: existing SOURCE.md/NOTES.md are never overwritten, only
# created if missing. IR/src files ARE overwritten each run (that's the
# point -- rerun after a toolchain change to regenerate).
#
# Requires: .build/coreutils and .build/uutils-coreutils to already exist
# and be built (see BUILD.md). This script does NOT bootstrap/configure/
# clone for you on first use -- do that once manually, then run this.

set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

TOOLS=(sum expand echo fold tee mkdir comm paste nl shuf)

C_BUILD_DIR="$REPO_ROOT/.build/coreutils"
RUST_BUILD_DIR="$REPO_ROOT/.build/uutils-coreutils"

C_INCLUDE_FLAGS="-I. -I./lib -Ilib -I./lib -Isrc -I./src"

# ---------------------------------------------------------------------------
# Sanity checks
# ---------------------------------------------------------------------------
if [ ! -d "$C_BUILD_DIR" ]; then
  echo "ERROR: $C_BUILD_DIR not found. Clone+bootstrap+configure+make coreutils first (see BUILD.md)." >&2
  exit 1
fi
if [ ! -d "$RUST_BUILD_DIR" ]; then
  echo "ERROR: $RUST_BUILD_DIR not found. Clone uutils/coreutils first (see BUILD.md)." >&2
  exit 1
fi
command -v clang-22 >/dev/null || { echo "ERROR: clang-22 not found in PATH" >&2; exit 1; }
command -v cargo >/dev/null || { echo "ERROR: cargo not found in PATH" >&2; exit 1; }

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

# Create the folder skeleton + template docs for one tool/language, only if missing.
scaffold_tool() {
  local lang_dir="$1" tool="$2" lang_label="$3"
  local base="$REPO_ROOT/benchmarks/$lang_dir/$tool"
  mkdir -p "$base/src" "$base/ir"

  if [ ! -f "$base/SOURCE.md" ]; then
    cat > "$base/SOURCE.md" << EOF
# SOURCE.md — $tool ($lang_label)

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
# NOTES.md — $tool ($lang_label)

No modifications.
EOF
  fi
}

# ---------------------------------------------------------------------------
# C side
# ---------------------------------------------------------------------------
build_c_tool() {
  local tool="$1"
  local src_file="$C_BUILD_DIR/src/${tool}.c"
  local dest="$REPO_ROOT/benchmarks/c_cpp/$tool"

  if [ ! -f "$src_file" ]; then
    echo "  [c/$tool] WARNING: $src_file not found, skipping" >&2
    return
  fi

  echo "  [c/$tool] compiling IR..."
  clang-22 $C_INCLUDE_FLAGS -O0 -S -emit-llvm "$src_file" -o "$dest/ir/${tool}_O0.ll"
  clang-22 $C_INCLUDE_FLAGS -O2 -S -emit-llvm "$src_file" -o "$dest/ir/${tool}_O2.ll"

  cp "$src_file" "$dest/src/${tool}.c"

  # Record commit hash for whoever fills in SOURCE.md next -- printed, not
  # auto-written, since SOURCE.md deliberately isn't auto-overwritten.
  local hash
  hash=$(git -C "$C_BUILD_DIR" log -1 --format="%H" -- "src/${tool}.c" 2>/dev/null || echo "unknown")
  echo "  [c/$tool] done. Commit hash for SOURCE.md: $hash"
}

# ---------------------------------------------------------------------------
# Rust side
# ---------------------------------------------------------------------------
build_rust_tool() {
  local tool="$1"
  local pkg="uu_${tool}"
  local dest="$REPO_ROOT/benchmarks/rust/$tool"
  local src_dir="$RUST_BUILD_DIR/src/uu/$tool/src"

  if [ ! -d "$src_dir" ]; then
    echo "  [rust/$tool] WARNING: $src_dir not found, skipping" >&2
    return
  fi

  echo "  [rust/$tool] compiling IR (debug)..."
  (cd "$RUST_BUILD_DIR" && cargo rustc -p "$pkg" -- --emit=llvm-ir) || {
    echo "  [rust/$tool] WARNING: debug build failed, skipping IR for this tool" >&2
    return
  }
  echo "  [rust/$tool] compiling IR (release)..."
  (cd "$RUST_BUILD_DIR" && cargo rustc -p "$pkg" --release -- --emit=llvm-ir) || {
    echo "  [rust/$tool] WARNING: release build failed, skipping IR for this tool" >&2
    return
  }

  local debug_ll release_ll
  debug_ll=$(find "$RUST_BUILD_DIR/target/debug/deps" -maxdepth 1 -name "${tool}-*.ll" -printf '%T@ %p\n' 2>/dev/null | sort -rn | head -1 | cut -d' ' -f2-)
  release_ll=$(find "$RUST_BUILD_DIR/target/release/deps" -maxdepth 1 -name "${tool}-*.ll" -printf '%T@ %p\n' 2>/dev/null | sort -rn | head -1 | cut -d' ' -f2-)

  if [ -z "$debug_ll" ] || [ -z "$release_ll" ]; then
    echo "  [rust/$tool] WARNING: could not locate generated .ll file(s) -- check target/{debug,release}/deps manually" >&2
  else
    cp "$debug_ll" "$dest/ir/${tool}_O0.ll"
    cp "$release_ll" "$dest/ir/${tool}_O2.ll"
  fi

  cp "$src_dir"/*.rs "$dest/src/" 2>/dev/null || true

  local hash
  hash=$(git -C "$RUST_BUILD_DIR" log -1 --format="%H" -- "src/uu/$tool" 2>/dev/null || echo "unknown")
  echo "  [rust/$tool] done. Commit hash for SOURCE.md: $hash"
}

# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
echo "Scaffolding folders for ${#TOOLS[@]} tools (c_cpp + rust)..."
for tool in "${TOOLS[@]}"; do
  scaffold_tool "c_cpp" "$tool" "C"
  scaffold_tool "rust" "$tool" "Rust"
done

echo ""
echo "Building C tools..."
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
