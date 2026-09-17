/*
 * Loop-finding pass test corpus (Rust).
 * Each function isolates ONE loop-construction idiom so the pass's output
 * can be checked function-by-function against known ground truth.
 * #[no_mangle] + extern "C" keeps symbol names stable and readable in the
 * emitted IR, regardless of optimization level.
 * Compile with:
 *   rustc -C opt-level=0 --emit=llvm-ir -C debuginfo=0 loop_examples.rs -o loop_examples.ll
 */

// 1. `loop {}` - Rust's only truly unconditional loop primitive; everything
//    else (while, for) desugars to this plus a conditional break.
#[no_mangle]
pub extern "C" fn loop_expr(n: i32) -> i32 {
    let mut sum = 0;
    let mut i = 0;
    loop {
        if i >= n {
            break;
        }
        sum += i;
        i += 1;
    }
    sum
}

// 2. while loop - condition checked before every iteration.
#[no_mangle]
pub extern "C" fn while_loop(n: i32) -> i32 {
    let mut sum = 0;
    let mut i = 0;
    while i < n {
        sum += i;
        i += 1;
    }
    sum
}

// 3. while-let loop - loops as long as a pattern keeps matching; common for
//    draining a collection. Structurally: loop { match expr { Pat => body,
//    _ => break } }, so it stresses whether the pass handles a `match` inside
//    the loop header/latch rather than a plain icmp.
#[no_mangle]
pub extern "C" fn while_let_loop(n: i32) -> i32 {
    let mut sum = 0;
    let mut stack: Vec<i32> = (0..n).collect();
    while let Some(v) = stack.pop() {
        sum += v;
    }
    sum
}

// 4. for loop over a Range - desugars to `loop { match iter.next() { Some(i)
//    => body, None => break } }`. Different iterator machinery than #5 below,
//    so it produces a different (though structurally similar) loop shape.
#[no_mangle]
pub extern "C" fn for_range_loop(n: i32) -> i32 {
    let mut sum = 0;
    for i in 0..n {
        sum += i;
    }
    sum
}

// 5. for loop over a Vec's iterator - same desugaring pattern as #4 but
//    through a slice iterator (pointer-bump instead of integer-range next()).
#[no_mangle]
pub extern "C" fn for_vec_loop(n: i32) -> i32 {
    let v: Vec<i32> = (0..n).collect();
    let mut sum = 0;
    for x in v.iter() {
        sum += *x;
    }
    sum
}

// 6. loop-as-expression with `break value` - same CFG shape as #1, but the
//    break edge also carries a value (phi node merging into the loop's exit).
#[no_mangle]
pub extern "C" fn loop_break_value(n: i32) -> i32 {
    let mut i = 0;
    let result = loop {
        if i >= n {
            break i * 2;
        }
        i += 1;
    };
    result
}

// 7. Labeled nested loops with a labeled `continue` - the inner loop's
//    continue jumps back to the OUTER loop's latch, not its own, so this
//    checks the pass correctly assigns each back edge to the right header
//    when edges cross loop-nesting boundaries.
#[no_mangle]
pub extern "C" fn labeled_nested_loop(n: i32, m: i32) -> i32 {
    let mut sum = 0;
    'outer: for i in 0..n {
        for j in 0..m {
            if j > i {
                continue 'outer;
            }
            sum += i * j;
        }
    }
    sum
}

// 8. Recursion - NEGATIVE CONTROL. This is a cycle in the CALL GRAPH, not in
//    any single function's CFG. The pass should find ZERO loops here; if it
//    reports one, that's a false positive worth catching before the pass
//    ever touches real-world code.
#[no_mangle]
pub extern "C" fn recursive_sum(n: i32) -> i32 {
    if n <= 0 {
        0
    } else {
        n + recursive_sum(n - 1)
    }
}

fn main() {
    let mut r = 0;
    r += loop_expr(10);
    r += while_loop(10);
    r += while_let_loop(10);
    r += for_range_loop(10);
    r += for_vec_loop(10);
    r += loop_break_value(10);
    r += labeled_nested_loop(5, 5);
    r += recursive_sum(10);
    println!("result: {}", r);
}
