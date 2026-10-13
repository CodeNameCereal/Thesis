// Driver for sha2: hash the input with SHA-256 and SHA-512, one-shot and
// incrementally.
use sha2::{Digest, Sha256, Sha512};

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
