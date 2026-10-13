# Extra Rust projects -- source commits

Written by `pass/scripts/setup_rust_extra.sh` on 2026-10-13. Clones in `.build/rust-extra/`.
Pinned commits: `pass/scripts/rust_extra_projects.conf`.

| project | repository | commit | commit date | crate dir | program | default features |
|---|---|---|---|---|---|---|
| pulldown-cmark | https://github.com/pulldown-cmark/pulldown-cmark.git | `e465cacef099` | 2026-10-12 | `pulldown-cmark` | bin | ["std", "getopts", "html"] |
| ruzstd | https://github.com/KillingSpark/zstd-rs.git | `ff70d8746124` | 2026-10-11 | `ruzstd` | bin | ["hash", "std"] |
| lz4_flex | https://github.com/PSeitz/lz4_flex.git | `f6251928e30a` | 2026-08-11 | `.` | bin | ["std", "safe-encode", "safe-decode", "frame", "checked-decode"] |
| httparse | https://github.com/seanmonstar/httparse.git | `a0fa552e4e0f` | 2026-06-30 | `.` | driver | ["std"] |
| csv-core | https://github.com/BurntSushi/rust-csv.git | `05612e87e6e9` | 2026-08-04 | `csv-core` | driver | [] |
| base64 | https://github.com/marshallpierce/rust-base64.git | `5b98ee180cc7` | 2026-08-18 | `.` | driver | ["std", "simd-unsafe"] |
| ryu | https://github.com/dtolnay/ryu.git | `75f9e707e77c` | 2026-08-05 | `.` | driver | none |
| qoi | https://github.com/aldanor/qoi-rust.git | `81c14c4b637c` | 2025-07-28 | `.` | driver | ["std"] |
| miniz_oxide | https://github.com/Frommi/miniz_oxide.git | `8bfa5601cd6c` | 2026-10-11 | `miniz_oxide` | driver | ["with-alloc"] |
| sha2 | https://github.com/RustCrypto/hashes.git | `138dc5a05b93` | 2026-10-12 | `sha2` | driver | ["alloc", "oid"] |
