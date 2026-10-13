// Driver for miniz_oxide: compress and decompress the input as raw DEFLATE
// and as zlib, at the default level (6).
use miniz_oxide::deflate::{compress_to_vec, compress_to_vec_zlib};
use miniz_oxide::inflate::{decompress_to_vec, decompress_to_vec_zlib};

fn read_input() -> Vec<u8> {
    use std::io::Read;
    let mut buf = Vec::new();
    match std::env::args().nth(1) {
        Some(path) => buf = std::fs::read(path).expect("cannot read input file"),
        None => {
            std::io::stdin().read_to_end(&mut buf).expect("cannot read stdin");
        }
    }
    buf
}

fn main() {
    let input = read_input();
    let raw = compress_to_vec(&input, 6);
    let zlib = compress_to_vec_zlib(&input, 6);
    assert_eq!(decompress_to_vec(&raw).expect("inflate"), input);
    assert_eq!(decompress_to_vec_zlib(&zlib).expect("inflate zlib"), input);
    println!("{} bytes -> {} (deflate), {} (zlib)", input.len(), raw.len(), zlib.len());
}
