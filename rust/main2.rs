use std::fs::OpenOptions;
use std::io::Write;
use std::time::Instant;

struct Base;

fn main() {
    let start = Instant::now();

    for _ in 0..100000000 {
        let _ = Base{};
    }

    let elapsed = start.elapsed().as_millis();

    let result = format!("{}\n", elapsed);

    let mut fout = OpenOptions::new()
        .write(true)
        .append(true)
        .create(true)
        .open("output.txt")
        .expect("Can't open file");

    fout.write_all(result.as_bytes())
        .expect("Can't write a file");
}
