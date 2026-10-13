// Driver for ryu: parse each whitespace-separated number of the input and
// print it back with ryu, as f64 and as f32.
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
