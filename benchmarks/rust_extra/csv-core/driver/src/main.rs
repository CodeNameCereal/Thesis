// Driver for csv-core: read the input field by field and record by record,
// then write the fields back out as CSV.
use csv_core::{ReadFieldResult, ReadRecordResult, Reader, WriteResult, Writer};

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
