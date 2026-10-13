// Driver for qoi: decode the input as a QOI image and encode it again. If the
// input is not a QOI image, treat it as raw RGBA pixels (one row) and encode,
// then decode that.
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
