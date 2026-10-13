#!/usr/bin/env bash
# setup_rust_extra.sh -- everything for the 10 extra (non-Unix) Rust projects, in one go:
#   1. clone each project into .build/rust-extra/ at its pinned commit
#   2. write the small driver programs for the 7 library-only projects
#   3. write benchmarks/rust_extra/<project>/{SOURCE.md,NOTES.md} and benchmarks/rust_extra/COMMITS.md
#   4. build the -O0 IR (runs build_rust_extra_ir.sh) -> benchmarks/rust_extra/<project>/ir/<project>_O0.ll
#
# Usage (from anywhere in the repo):  ./pass/scripts/setup_rust_extra.sh          (all steps)
#                                    ./pass/scripts/setup_rust_extra.sh --no-ir  (steps 1-3 only)
# Safe to re-run: existing clones are only moved to the pinned commit, existing drivers
# are never overwritten (delete a driver folder to regenerate it).
set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
# shellcheck source=rust_extra_projects.conf
source "$SCRIPT_DIR/rust_extra_projects.conf"

BUILD_IR=1
for arg in "$@"; do
  case $arg in
    --no-ir) BUILD_IR=0 ;;
    -h|--help) sed -n '2,13p' "$0"; exit 0 ;;
    *) echo "unknown option: $arg" >&2; exit 2 ;;
  esac
done

command -v git >/dev/null || { echo "error: git not found" >&2; exit 1; }
cd "$(git -C "$SCRIPT_DIR" rev-parse --show-toplevel)"   # like benchmarks.sh
if [[ ! -d pass || ! -d benchmarks ]]; then
  echo "error: pass/ and benchmarks/ not found at the repo root ($PWD)" >&2
  exit 1
fi
command -v git >/dev/null || { echo "error: git not found" >&2; exit 1; }
if [[ -f .gitignore ]] && ! grep -qE '^/?\.build/?$' .gitignore; then
  echo "warning: .build/ is not in .gitignore -- the clones would be committed" >&2
fi
mkdir -p "$CLONE_DIR" "$CORPUS_DIR"

# ======================================================================= drivers
# Each driver reads its input from a file (first argument) or stdin and calls the
# library's main entry points in both directions where there are two (encode/decode,
# compress/decompress, read/write). Only the library's code is measured: the driver
# lives under benchmarks/, so its own lines can be told apart by file path.

INPUT_FN='fn read_input() -> Vec<u8> {
    use std::io::Read;
    let mut buf = Vec::new();
    match std::env::args().nth(1) {
        Some(path) => buf = std::fs::read(path).expect("cannot read input file"),
        None => {
            std::io::stdin().read_to_end(&mut buf).expect("cannot read stdin");
        }
    }
    buf
}'

driver_main() {   # $1 = project name -> prints src/main.rs
  case $1 in
  httparse) cat <<EOF
// Driver for httparse: parse the input as an HTTP request, as a response,
// and as a chunk-size line.
$INPUT_FN

fn main() {
    let buf = read_input();

    let mut headers = [httparse::EMPTY_HEADER; 64];
    let mut req = httparse::Request::new(&mut headers);
    match req.parse(&buf) {
        Ok(status) => println!(
            "request: {:?} {:?} {} headers, complete: {}",
            req.method, req.path, req.headers.len(), status.is_complete()
        ),
        Err(e) => println!("request: error: {e}"),
    }

    let mut headers = [httparse::EMPTY_HEADER; 64];
    let mut res = httparse::Response::new(&mut headers);
    match res.parse(&buf) {
        Ok(status) => println!("response: {:?} complete: {}", res.code, status.is_complete()),
        Err(e) => println!("response: error: {e}"),
    }

    match httparse::parse_chunk_size(&buf) {
        Ok(status) => println!("chunk size: {:?}", status),
        Err(e) => println!("chunk size: error: {e:?}"),
    }
}
EOF
  ;;
  csv-core) cat <<EOF
// Driver for csv-core: read the input field by field and record by record,
// then write the fields back out as CSV.
use csv_core::{ReadFieldResult, ReadRecordResult, Reader, WriteResult, Writer};

$INPUT_FN

fn main() {
    let input = read_input();

    // field by field
    let mut rdr = Reader::new();
    let mut field = [0u8; 4096];
    let mut fields: Vec<Vec<u8>> = Vec::new();
    let mut pos = 0;
    loop {
        let (res, nin, nout) = rdr.read_field(&input[pos..], &mut field);
        pos += nin;
        match res {
            ReadFieldResult::InputEmpty | ReadFieldResult::OutputFull => {
                if nin == 0 && nout == 0 { break; }
            }
            ReadFieldResult::Field { .. } => fields.push(field[..nout].to_vec()),
            ReadFieldResult::End => break,
        }
    }

    // record by record
    let mut rdr = Reader::new();
    let mut out = [0u8; 4096];
    let mut ends = [0usize; 64];
    let (mut pos, mut records) = (0, 0);
    loop {
        let (res, nin, _nout, _nend) = rdr.read_record(&input[pos..], &mut out, &mut ends);
        pos += nin;
        match res {
            ReadRecordResult::Record => records += 1,
            ReadRecordResult::End => break,
            _ => if nin == 0 && pos >= input.len() {
                let (r, ..) = rdr.read_record(&[], &mut out, &mut ends);
                if let ReadRecordResult::Record = r { records += 1; }
                break;
            },
        }
    }

    // write the fields back
    let mut wtr = Writer::new();
    let mut buf = [0u8; 8192];
    let mut written = 0;
    for f in &fields {
        let (r, _, n) = wtr.field(f, &mut buf[written..]);
        written += n;
        if let WriteResult::OutputFull = r { break; }
        let (_, n) = wtr.delimiter(&mut buf[written..]);
        written += n;
    }
    let (_, n) = wtr.terminator(&mut buf[written..]);
    written += n;
    let (_, n) = wtr.finish(&mut buf[written..]);
    written += n;

    println!("{} fields, {} records, {} bytes written", fields.len(), records, written);
}
EOF
  ;;
  base64) cat <<EOF
// Driver for base64: encode and decode the input with the standard and the
// URL-safe (no padding) engines.
use base64::prelude::{Engine as _, BASE64_STANDARD, BASE64_URL_SAFE_NO_PAD};

$INPUT_FN

fn main() {
    let input = read_input();
    let std_enc = BASE64_STANDARD.encode(&input);
    let std_dec = BASE64_STANDARD.decode(&std_enc).expect("round trip");
    let url_enc = BASE64_URL_SAFE_NO_PAD.encode(&input);
    let url_dec = BASE64_URL_SAFE_NO_PAD.decode(&url_enc).expect("round trip");
    assert_eq!(std_dec, input);
    assert_eq!(url_dec, input);
    println!("{} bytes -> {} chars (standard), {} chars (url-safe)", input.len(), std_enc.len(), url_enc.len());
}
EOF
  ;;
  ryu) cat <<EOF
// Driver for ryu: parse each whitespace-separated number of the input and
// print it back with ryu, as f64 and as f32.
$INPUT_FN

fn main() {
    let input = read_input();
    let text = String::from_utf8_lossy(&input);
    let mut buf = ryu::Buffer::new();
    for word in text.split_whitespace() {
        if let Ok(x) = word.parse::<f64>() {
            let a = buf.format(x).to_owned();
            let b = buf.format(x as f32).to_owned();
            let c = if x.is_finite() { buf.format_finite(x).to_owned() } else { String::new() };
            println!("{word} -> {a} (f64) {b} (f32) {c}");
        }
    }
}
EOF
  ;;
  qoi) cat <<EOF
// Driver for qoi: decode the input as a QOI image and encode it again. If the
// input is not a QOI image, treat it as raw RGBA pixels (one row) and encode,
// then decode that.
$INPUT_FN

fn main() {
    let input = read_input();
    match qoi::decode_to_vec(&input) {
        Ok((header, pixels)) => {
            let again = qoi::encode_to_vec(&pixels, header.width, header.height).expect("encode");
            println!("decoded {}x{}, re-encoded to {} bytes", header.width, header.height, again.len());
        }
        Err(_) => {
            let width = (input.len() / 4).max(1) as u32;
            let mut pixels = input.clone();
            pixels.resize(width as usize * 4, 0);
            let encoded = qoi::encode_to_vec(&pixels, width, 1).expect("encode");
            let (header, decoded) = qoi::decode_to_vec(&encoded).expect("decode");
            assert_eq!(decoded, pixels);
            println!("encoded {}x1 raw pixels to {} bytes (header {}x{})", width, encoded.len(), header.width, header.height);
        }
    }
}
EOF
  ;;
  miniz_oxide) cat <<EOF
// Driver for miniz_oxide: compress and decompress the input as raw DEFLATE
// and as zlib, at the default level (6).
use miniz_oxide::deflate::{compress_to_vec, compress_to_vec_zlib};
use miniz_oxide::inflate::{decompress_to_vec, decompress_to_vec_zlib};

$INPUT_FN

fn main() {
    let input = read_input();
    let raw = compress_to_vec(&input, 6);
    let zlib = compress_to_vec_zlib(&input, 6);
    assert_eq!(decompress_to_vec(&raw).expect("inflate"), input);
    assert_eq!(decompress_to_vec_zlib(&zlib).expect("inflate zlib"), input);
    println!("{} bytes -> {} (deflate), {} (zlib)", input.len(), raw.len(), zlib.len());
}
EOF
  ;;
  sha2) cat <<EOF
// Driver for sha2: hash the input with SHA-256 and SHA-512, one-shot and
// incrementally.
use sha2::{Digest, Sha256, Sha512};

$INPUT_FN

fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|b| format!("{b:02x}")).collect()
}

fn main() {
    let input = read_input();
    let one_shot = Sha256::digest(&input);
    let mut h = Sha256::new();
    for chunk in input.chunks(1000) {
        h.update(chunk);
    }
    assert_eq!(h.finalize(), one_shot);
    println!("sha256 {}", hex(&one_shot));
    println!("sha512 {}", hex(&Sha512::digest(&input)));
}
EOF
  ;;
  *) echo "no driver for $1" >&2; return 1 ;;
  esac
}

write_driver() {  # $1 = project name, $2 = crate, $3 = crate path from the repo root
  local dir="$CORPUS_DIR/$1/driver"
  if [[ -f $dir/src/main.rs ]]; then
    echo "   driver exists, kept: $dir"
    return
  fi
  mkdir -p "$dir/src"
  cat >"$dir/Cargo.toml" <<EOF
# Driver for the IR build of $2 -- not part of the measured project.
# Own workspace on purpose: the project's [profile.dev] settings must not apply.
[package]
name = "driver-$1"
version = "0.0.0"
edition = "2021"
publish = false

[dependencies]
$2 = { path = "../../../../$3" }

[workspace]
EOF
  printf 'target/\n' >"$dir/.gitignore"
  driver_main "$1" \
    >"$dir/src/main.rs"
  echo "   driver written: $dir"
}

# ======================================================================= main loop
rows=()
failed=()
for line in "${PROJECTS[@]}"; do
  read_project "$line"
  echo "== $P_NAME"

  # 1. clone + pin
  if [[ -d $P_REPO/.git ]]; then
    echo "   already cloned: $P_REPO"
  elif ! git clone --quiet --filter=blob:none "$P_URL" "$P_REPO"; then
    echo "   clone FAILED: $P_URL" >&2; failed+=("$P_NAME"); continue
  fi
  if [[ -n $P_PIN && $(git -C "$P_REPO" rev-parse HEAD) != "$P_PIN" ]]; then
    git -C "$P_REPO" fetch --quiet origin "$P_PIN" 2>/dev/null || true
    git -C "$P_REPO" -c advice.detachedHead=false checkout --quiet "$P_PIN" \
      || { echo "   checkout of $P_PIN FAILED" >&2; failed+=("$P_NAME"); continue; }
  fi
  commit=$(git -C "$P_REPO" rev-parse HEAD)
  date=$(git -C "$P_REPO" log -1 --format=%cs)
  if ! cdir=$(crate_dir "$P_REPO" "$P_CRATE"); then
    echo "   crate '$P_CRATE' NOT FOUND in $P_REPO" >&2; failed+=("$P_NAME"); continue
  fi
  crate_path="$P_REPO${cdir:+/$cdir}"; crate_path=${crate_path%/.}

  # 2. driver (library-only projects)
  if [[ $P_MODE == driver ]]; then
    write_driver "$P_NAME" "$P_CRATE" "$crate_path"
    program="driver \`$CORPUS_DIR/$P_NAME/driver\` (ours, not measured)"
  else
    program="the project's own binary \`$P_BIN\` (package \`$P_BINPKG\`)"
  fi

  defaults=$(awk '/^\[features\]/{f=1;next} /^\[/{f=0} f && /^default[[:space:]]*=/' \
             "$crate_path/Cargo.toml" | sed 's/^default[[:space:]]*=[[:space:]]*//')

  # 3. SOURCE.md / NOTES.md -- same fields as benchmarks.sh, filled in
  mkdir -p "$CORPUS_DIR/$P_NAME/ir" "$CORPUS_DIR/$P_NAME/src"
  web=${P_URL%.git}
  sub=""; [[ $cdir != "." ]] && sub="/$cdir"
  cat >"$CORPUS_DIR/$P_NAME/SOURCE.md" <<EOF
# SOURCE.md -- $P_NAME (Rust)

- Upstream repo: $web
- File path: $cdir (crate \`$P_CRATE\`)
- Commit hash: $commit
- Commit date: $date
- Permalink: $web/tree/$commit$sub
- Retrieved: $(date +%F)
- Method: git clone into \`$P_REPO\` (setup_rust_extra.sh); IR = $program + library, linked (build_rust_extra_ir.sh, same flags as benchmarks.sh); default features: ${defaults:-none}
EOF
  if [[ ! -f $CORPUS_DIR/$P_NAME/NOTES.md ]]; then
    {
      echo "# NOTES.md -- $P_NAME (Rust)"
      echo
      echo "No modifications to the project's code."
      if [[ $P_MODE == driver ]]; then
        echo "Library only: the IR includes our driver (\`driver/\`) to instantiate it; the driver's code is not counted (labelled \`driver\`)."
      fi
    } >"$CORPUS_DIR/$P_NAME/NOTES.md"
  fi
  echo "   $commit ($date)  crate: $crate_path"
  rows+=("| $P_NAME | $P_URL | \`${commit:0:12}\` | $date | \`$cdir\` | $P_MODE | ${defaults:-none} |")
done

{
  echo "# Extra Rust projects -- source commits"
  echo
  echo "Written by \`pass/scripts/setup_rust_extra.sh\` on $(date +%F). Clones in \`$CLONE_DIR/\`."
  echo "Pinned commits: \`pass/scripts/rust_extra_projects.conf\`."
  echo
  echo "| project | repository | commit | commit date | crate dir | program | default features |"
  echo "|---|---|---|---|---|---|---|"
  printf '%s\n' "${rows[@]}"
} >"$CORPUS_DIR/COMMITS.md"
echo
echo "Recorded ${#rows[@]} project(s) in $CORPUS_DIR/COMMITS.md"

if ((${#failed[@]})); then
  echo "FAILED: ${failed[*]} -- fix these before building the IR" >&2
  exit 1
fi

# ======================================================================= IR
if ((BUILD_IR)); then
  echo
  "$SCRIPT_DIR/build_rust_extra_ir.sh"
fi