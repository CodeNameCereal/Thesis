#!/usr/bin/env bash
#
# benchmarks.sh
#
# Creates benchmarks/{c_cpp,rust}/<tool>/{src,ir,SOURCE.md,NOTES.md} for the
# 10-tool corpus, compiles LLVM IR at -O0 (C) / debug profile (Rust),
# and copies everything into place. Output: ir/<tool>_O0.ll per tool.
#
# All IR is compiled with line tables (debug info mapping each instruction
# to its source file/line/column). LoopFinderPass records these locations and
# pass/scripts/label_loops.py uses them to label loops (for, while, ...).
#
# Rust: each uutils tool is two crates -- a tiny binary (main.rs) and a
# library uu_<tool> (<tool>.rs) holding the real logic. IR is emitted for
# BOTH and merged with llvm-link into one <tool>_O0.ll, so the file
# contains the tool's whole code, like the single C translation unit.
# (Bin-only IR only contains the lib's generic functions -- most of the
# tool's code, and its loops, were missing.)
#
# Safe to re-run: existing SOURCE.md/NOTES.md are never overwritten, only
# created if missing. IR/src files ARE overwritten each run (that's the
# point -- rerun after a toolchain change to regenerate).
#
# Requires: .build/coreutils and .build/uutils-coreutils to already exist
# and be built (see README.md). This script does NOT bootstrap/configure/
# clone for you on first use -- do that once manually, then run this.

set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

TOOLS=(sum expand echo fold tee mkdir comm paste nl shuf)

C_BUILD_DIR="$REPO_ROOT/.build/coreutils"
RUST_BUILD_DIR="$REPO_ROOT/.build/uutils-coreutils"
C_BUILD_LOG="$C_BUILD_DIR/build_verbose.log"

# ---------------------------------------------------------------------------
# Sanity checks
# ---------------------------------------------------------------------------
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

# Capture a full verbose build log once, so per-tool compile flags can be
# extracted from it instead of guessing a fixed -I set (different tools
# pull in different gnulib headers/flags).
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

  local raw_cmd
  # Simple case: tool compiles to its own standalone object, src/<tool>.o
  # NOTE: "|| true" is required on both lookups below -- with pipefail (set
  # at the top of this script), a grep that finds nothing makes the whole
  # pipeline "fail", which set -e would treat as fatal and silently kill
  # the script right here. || true lets us fall through to the empty-check
  # below instead, which is the actual intended handling.
  raw_cmd=$(grep -E "\-c -o[[:space:]]*src/${tool}\.o[[:space:]]" "$C_BUILD_LOG" | head -1 || true)
  if [ -z "$raw_cmd" ]; then
    # Multicall/digest-family case (sum, cksum, md5sum, etc. share cksum.c's
    # driver): object is named src/<tool>-<tool>.o, and the line must also
    # end with src/<tool>.c -- this disambiguates from other multicall
    # variants that also compile src/<tool>.c under a different -D flag
    # (e.g. sum.c is compiled once for "sum" and once for "cksum").
    raw_cmd=$(grep -E "\-o[[:space:]]*src/${tool}-${tool}\.o" "$C_BUILD_LOG" | grep "src/${tool}\.c\$" | head -1 || true)
  fi
  if [ -z "$raw_cmd" ]; then
    echo "  [c/$tool] WARNING: could not find compile command in build log, skipping" >&2
    return
  fi

  # Keep only the flags between "gcc" and the first "-MT" -- everything
  # after -MT is dependency-tracking / object-target / source-file
  # boilerplate we don't want, regardless of how it's shaped for this
  # particular tool (simple or multicall).
  local flags
  flags=$(echo "$raw_cmd" | sed -E 's/^gcc[[:space:]]*//; s/-MT.*$//')

  echo "  [c/$tool] compiling IR..."
  # -Xclang -disable-O0-optnone: clang normally tags every function with
  # the "optnone" attribute at -O0, which blocks ALL FunctionPasses from
  # running on it -- including read-only analysis passes like ours, not
  # just IR-transforming ones. This flag suppresses that tag without
  # actually enabling any optimizations, so -O0's structure (unmerged
  # blocks, no inlining, etc.) is still preserved. Without this flag,
  # LoopFinderPass silently produces zero output against every _O0.ll
  # file this script generates -- see pass/ground_truth.txt for how this
  # was originally debugged against the toy corpus.
  #
  # -gline-tables-only: source locations only (no variable/type info), so
  # loops can be traced back to source. Placed AFTER $flags on purpose:
  # the build log's flags usually contain autotools' default "-g -O2", and
  # clang uses the LAST -g*/-O* option given, so ours win. Same setting as
  # the Rust side (-C debuginfo=line-tables-only), keeping both symmetric.
  #
  # -Wno-c23-extensions -Wno-tautological-constant-out-of-range-compare:
  # silence two harmless clang warnings from gnulib headers (mcel.h,
  # argmatch.h, mbbuf.h), written for gcc. Warnings only -- no effect on IR.
  ( cd "$C_BUILD_DIR" && clang-22 $flags -O0 -Xclang -disable-O0-optnone -gline-tables-only \
      -Wno-c23-extensions -Wno-tautological-constant-out-of-range-compare \
      -S -emit-llvm "src/${tool}.c" -o "$dest/ir/${tool}_O0.ll" ) \
    || { echo "  [c/$tool] WARNING: O0 compile failed" >&2; }

  cp "$src_file" "$dest/src/${tool}.c"

  local hash
  hash=$(git -C "$C_BUILD_DIR" log -1 --format="%H" -- "src/${tool}.c" 2>/dev/null || echo "unknown")
  echo "  [c/$tool] done. Commit hash for SOURCE.md: $hash"
}

# ---------------------------------------------------------------------------
# Rust side
# ---------------------------------------------------------------------------

# Newest <crate>-<hash>.ll in a target/<profile>/deps directory (empty if none).
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

  # Debug profile (unoptimized) stands in for -O0.
  #
  # -C debuginfo=line-tables-only: source locations only, same setting as
  # the C side (-gline-tables-only).
  #
  # -C codegen-units=1 (+ CARGO_INCREMENTAL=0): one .ll per crate. With
  # several codegen units rustc splits the crate across several .ll files,
  # and picking up only one of them would silently drop code.
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

  # Merge bin + lib into the single file the passes run on. If both crates
  # define the same global ("symbol multiply defined"), retry with
  # --override, which keeps the lib's copy.
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