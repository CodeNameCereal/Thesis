// Toy examples for BufferAccessPass validation (Rust side).

// 1. Ordinary slice index: rustc's implicit bounds check (a panic-shaped
// icmp+branch on the same index) dominates the actual GEP+load, so expect
// index_kind=variable, origin likely `param` (slice pointer) or `unknown`
// depending on how the fat-pointer's data field is extracted in IR, and
// dominated_by_check=true.
pub fn implicit_index(s: &[i32], idx: usize) -> i32 {
    s[idx]
}

// 2. get_unchecked: no bounds check emitted at all.
// Expect dominated_by_check=false.
pub fn unchecked_index(s: &[i32], idx: usize) -> i32 {
    unsafe { *s.get_unchecked(idx) }
}

// 3. Fixed-size array, constant index.
// Expect index_kind=constant.
pub fn fixed_index(arr: [i32; 4]) -> i32 {
    arr[2]
}
