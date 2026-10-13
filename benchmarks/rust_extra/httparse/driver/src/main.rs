// Driver for httparse: parse the input as an HTTP request, as a response,
// and as a chunk-size line.
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
