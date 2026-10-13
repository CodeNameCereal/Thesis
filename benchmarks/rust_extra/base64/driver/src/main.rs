// Driver for base64: encode and decode the input with the standard and the
// URL-safe (no padding) engines.
use base64::prelude::{Engine as _, BASE64_STANDARD, BASE64_URL_SAFE_NO_PAD};

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
    let std_enc = BASE64_STANDARD.encode(&input);
    let std_dec = BASE64_STANDARD.decode(&std_enc).expect("round trip");
    let url_enc = BASE64_URL_SAFE_NO_PAD.encode(&input);
    let url_dec = BASE64_URL_SAFE_NO_PAD.decode(&url_enc).expect("round trip");
    assert_eq!(std_dec, input);
    assert_eq!(url_dec, input);
    println!("{} bytes -> {} chars (standard), {} chars (url-safe)", input.len(), std_enc.len(), url_enc.len());
}
