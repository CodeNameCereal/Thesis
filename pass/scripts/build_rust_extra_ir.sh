#!/usr/bin/env bash
# build_rust_extra_ir.sh -- -O0 LLVM IR for the 10 extra Rust projects, built exactly like
# the uutils tools in benchmarks.sh (build_rust_tool): debug profile, same rustc flags,
# program (binary or driver) and library emitted separately, linked bin + lib with
# llvm-link-22 (retry with --override on duplicate symbols), sources copied to src/.
#
# Run after setup_rust_extra.sh (from anywhere inside the repo):
#   ./pass/scripts/build_rust_extra_ir.sh                    all projects
#   ./pass/scripts/build_rust_extra_ir.sh --projects qoi,ryu  some projects
#   ./pass/scripts/build_rust_extra_ir.sh --keep-parts        also keep the two unmerged .ll files
#   ./pass/scripts/build_rust_extra_ir.sh --debuginfo 0 --out-dir /tmp/x
#         used by debuginfo_check.sh: same build, other debuginfo level, IR written to
#         /tmp/x/<project>_O0.ll, benchmarks/ left untouched
# Output: benchmarks/rust_extra/<project>/ir/<project>_O0.ll
set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# shellcheck source=rust_extra_projects.conf
source "$SCRIPT_DIR/rust_extra_projects.conf"

# ------------------------------------------------------------------ flags
# Identical to benchmarks.sh build_rust_tool: debug profile (= -O0), these rustc flags,
# CARGO_INCREMENTAL=0. codegen-units=1 + no incremental = one .ll per crate.
# (RUSTC_FLAGS is set after the options below; default debuginfo = line-tables-only)
export CARGO_INCREMENTAL=0
# Only addition: the debug profile already is opt-level 0 (as for uutils); this guards
# against a project's own [profile.dev] (bin projects build in their own workspace).
# For the 10 projects as pinned it changes nothing.
export CARGO_PROFILE_DEV_OPT_LEVEL=0
LLVM_LINK=${LLVM_LINK:-llvm-link-22}
EXPECTED_LLVM_MAJOR=22

# ------------------------------------------------------------------ options
ONLY=""
KEEP_PARTS=0
DEBUGINFO=line-tables-only
OUT_DIR=""
while (($#)); do
  case $1 in
    --projects) ONLY=",$2,"; shift ;;
    --keep-parts) KEEP_PARTS=1 ;;
    --debuginfo) DEBUGINFO=$2; shift ;;
    --out-dir) OUT_DIR=$2; shift ;;
    -h|--help) sed -n '2,14p' "$0"; exit 0 ;;
    *) echo "unknown option: $1" >&2; exit 2 ;;
  esac
  shift
done

RUSTC_FLAGS=(--emit=llvm-ir -C "debuginfo=$DEBUGINFO" -C codegen-units=1)
[[ -n $OUT_DIR ]] && { mkdir -p "$OUT_DIR"; OUT_DIR=$(cd "$OUT_DIR" && pwd); }

# ------------------------------------------------------------------ checks
cd "$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel)"   # like benchmarks.sh
if [[ ! -d pass || ! -d benchmarks ]]; then
  echo "error: pass/ and benchmarks/ not found at the repo root ($PWD)" >&2
  exit 1
fi
for tool in cargo rustc "$LLVM_LINK"; do
  command -v "$tool" >/dev/null || { echo "error: $tool not found" >&2; exit 1; }
done
rustc_llvm=$(rustc -vV | sed -n 's/^LLVM version: //p')
link_llvm=$("$LLVM_LINK" --version | sed -n 's/.*LLVM version \([0-9.]*\).*/\1/p' | head -1)
echo "rustc: $(rustc -V)  (LLVM $rustc_llvm)"
echo "llvm-link: $LLVM_LINK (LLVM $link_llvm)"
if [[ ${rustc_llvm%%.*} != "$EXPECTED_LLVM_MAJOR" || ${link_llvm%%.*} != "$EXPECTED_LLVM_MAJOR" ]]; then
  echo "warning: expected LLVM $EXPECTED_LLVM_MAJOR for both (README: clang-22 + rustc on LLVM 22)" >&2
fi

ROOT=$PWD

# Run one `cargo rustc` that emits IR for exactly one crate, copy that .ll to $out.
# args: workspace dir, target dir, output file, package, cargo target args (--lib / --bin x)
emit_ir() {
  local ws=$1 td=$2 out=$3 pkg=$4; shift 4
  local deps="$td/debug/deps"
  mkdir -p "$deps"
  find "$deps" -maxdepth 1 -name '*.ll' -delete
  # cargo skips a crate it considers up to date (and then writes no .ll): clean it first
  (cd "$ws" && CARGO_TARGET_DIR="$td" cargo clean --quiet -p "$pkg")
  (cd "$ws" && CARGO_TARGET_DIR="$td" cargo rustc --quiet -p "$pkg" "$@" -- "${RUSTC_FLAGS[@]}")
  local lls=()
  mapfile -t lls < <(find "$deps" -maxdepth 1 -name '*.ll')
  if ((${#lls[@]} != 1)); then
    echo "   expected 1 .ll after 'cargo rustc -p $pkg $*', found ${#lls[@]}" >&2
    return 1
  fi
  cp "${lls[0]}" "$out"
}

failed=()
built=0
for line in "${PROJECTS[@]}"; do
  read_project "$line"
  [[ -n $ONLY && $ONLY != *",$P_NAME,"* ]] && continue
  echo "== $P_NAME"

  if [[ ! -d $P_REPO ]]; then
    echo "   not cloned ($P_REPO) -- run setup_rust_extra.sh first" >&2
    failed+=("$P_NAME"); continue
  fi
  if [[ $P_MODE == driver ]]; then
    ws="$ROOT/$CORPUS_DIR/$P_NAME/driver"
    binpkg="driver-$P_NAME"; bin="driver-$P_NAME"
    [[ -f $ws/Cargo.toml ]] || { echo "   driver missing: $ws" >&2; failed+=("$P_NAME"); continue; }
  else
    ws="$ROOT/$P_REPO/$P_WS"; binpkg=$P_BINPKG; bin=$P_BIN
  fi
  td="$ROOT/$TARGET_DIR/$P_NAME"
  irdir="${OUT_DIR:-$ROOT/$CORPUS_DIR/$P_NAME/ir}"
  mkdir -p "$irdir"
  lib_ll="$irdir/${P_NAME}_lib_O0.ll"
  bin_ll="$irdir/${P_NAME}_bin_O0.ll"
  out="$irdir/${P_NAME}_O0.ll"

  # program (binary or driver), then library -- same order as benchmarks.sh
  if ! emit_ir "$ws" "$td" "$bin_ll" "$binpkg" --bin "$bin"; then
    failed+=("$P_NAME"); continue
  fi
  if ! emit_ir "$ws" "$td" "$lib_ll" "$P_CRATE" --lib; then
    failed+=("$P_NAME"); continue
  fi
  # link bin + lib; on duplicate symbols retry with --override (keeps the lib's version)
  if ! "$LLVM_LINK" -S "$bin_ll" "$lib_ll" -o "$out" 2>/dev/null; then
    if "$LLVM_LINK" -S "$bin_ll" --override "$lib_ll" -o "$out"; then
      echo "   note: merged with --override (duplicate symbols)"
    else
      echo "   llvm-link FAILED" >&2; failed+=("$P_NAME"); continue
    fi
  fi
  ((KEEP_PARTS)) || rm -f "$lib_ll" "$bin_ll"

  # copy the measured sources to src/ (benchmarks.sh does the same for uutils):
  # the library crate, plus the binary's crate when it is a separate one
  if [[ -z $OUT_DIR ]]; then
    srcdir="$ROOT/$CORPUS_DIR/$P_NAME/src"
    rm -rf "$srcdir"; mkdir -p "$srcdir"
    cdir=$(crate_dir "$P_REPO" "$P_CRATE")
    cp -r "$P_REPO/$cdir/src" "$srcdir/$P_CRATE"
    if [[ $P_MODE == bin && $binpkg != "$P_CRATE" ]] && bdir=$(crate_dir "$P_REPO" "$binpkg"); then
      cp -r "$P_REPO/$bdir/src" "$srcdir/$binpkg"
    fi
  fi

  # Sanity checks (README gotchas): the project's functions must be defined, not just
  # declared, and the IR must carry line tables.
  ident=${P_CRATE//-/_}
  # declared-only = names that appear in a `declare` line but in no `define` line
  ndecl=$(awk -v id="[0-9]${ident}" '
      /^define/  { if (match($0, /@[^(]+\(/)) def[substr($0, RSTART, RLENGTH)] = 1 }
      /^declare/ { if (match($0, /@[^(]+\(/)) { n = substr($0, RSTART, RLENGTH); if (n ~ id) dec[n] = 1 } }
      END { c = 0; for (n in dec) if (!(n in def)) c++; print c }' "$out")
  ndef=$(grep -c '^define' "$out" || true)
  nloc=$(grep -c '!DILocation' "$out" || true)
  echo "   $out: $ndef functions, $nloc debug locations"
  ((ndecl == 0)) || echo "   warning: $ndecl '$ident' functions only declared (bin/lib merge incomplete?)" >&2
  [[ $DEBUGINFO == 0 ]] || ((nloc > 0)) || echo "   warning: no debug locations -- line tables missing" >&2
  built=$((built + 1))
done

echo
echo "Built IR for $built project(s)."
if ((${#failed[@]})); then
  echo "FAILED: ${failed[*]}" >&2
  exit 1
fi