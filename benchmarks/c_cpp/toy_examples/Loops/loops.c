#include <stdio.h>

/*
 * Loop-finding pass test corpus (C).
 * Each function isolates ONE loop-construction idiom so the pass's output
 * can be checked function-by-function against known ground truth.
 * Compile with -O0 to preserve source-level loop structure:
 *   clang -O0 -g -S -emit-llvm -fno-discard-value-names loops.c -o loops.ll
 */

// 1. Classic counting for-loop.
int for_loop(int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
        sum += i;
    }
    return sum;
}

// 2. while loop - condition checked before every iteration (incl. zero times).
int while_loop(int n) {
    int sum = 0;
    int i = 0;
    while (i < n) {
        sum += i;
        i++;
    }
    return sum;
}

// 3. do-while loop - body runs at least once; back edge shape differs from
//    while/for because the condition check sits AFTER the body, not before.
int do_while_loop(int n) {
    int sum = 0;
    int i = 0;
    do {
        sum += i;
        i++;
    } while (i < n);
    return sum;
}

// 4. goto-based loop - the explicit primitive that for/while/do-while all
//    desugar to at the IR level: a conditional branch plus a backward jump.
int goto_loop(int n) {
    int sum = 0;
    int i = 0;
loop_start:
    if (i >= n) goto loop_end;
    sum += i;
    i++;
    goto loop_start;
loop_end:
    return sum;
}

// 5. Infinite for(;;) with an internal break - header has no loop-carried
//    exit condition of its own, exit is a conditional branch inside the body.
int infinite_for(int n) {
    int sum = 0;
    int i = 0;
    for (;;) {
        if (i >= n) break;
        sum += i;
        i++;
    }
    return sum;
}

// 6. Infinite while(1) with an internal break - same shape as #5 through a
//    different C construct, useful to confirm the pass sees them identically.
int infinite_while(int n) {
    int sum = 0;
    int i = 0;
    while (1) {
        if (i >= n) break;
        sum += i;
        i++;
    }
    return sum;
}

// 7. Nested loops - two distinct headers, inner loop fully contained in the
//    outer loop's body. Exercises loop-nesting / parent-child detection.
int nested_loop(int n, int m) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            sum += i * j;
        }
    }
    return sum;
}

// 8. Loop with continue - still exactly one back edge, but multiple CFG
//    paths funnel into the latch block (the increment/condition check).
int loop_with_continue(int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
        if (i % 2 == 0) continue;
        sum += i;
    }
    return sum;
}

// 9. Loop with multiple break exits - single natural loop, but a branchier
//    body with two distinct edges leaving the loop to the same exit block.
int loop_multiple_exits(int n) {
    int sum = 0;
    int i = 0;
    while (1) {
        if (i >= n) break;
        if (sum > 1000) break;
        sum += i;
        i++;
    }
    return sum;
}

// 10. Duff's device - a switch statement interleaved with a do-while loop.
//     The loop body has MULTIPLE entry points (one per case label), not just
//     one via the header. This is the classic stress test for "does the pass
//     correctly find the single natural loop despite the irregular entries",
//     since a naive implementation might get confused by the extra edges
//     jumping into the middle of the loop body from the switch.
void duffs_device(short *to, short *from, int count) {
    int n = (count + 7) / 8;
    switch (count % 8) {
        case 0: do { *to++ = *from++;
        case 7:      *to++ = *from++;
        case 6:      *to++ = *from++;
        case 5:      *to++ = *from++;
        case 4:      *to++ = *from++;
        case 3:      *to++ = *from++;
        case 2:      *to++ = *from++;
        case 1:      *to++ = *from++;
                } while (--n > 0);
    }
}

int main(void) {
    volatile int r = 0;
    r += for_loop(10);
    r += while_loop(10);
    r += do_while_loop(10);
    r += goto_loop(10);
    r += infinite_for(10);
    r += infinite_while(10);
    r += nested_loop(5, 5);
    r += loop_with_continue(10);
    r += loop_multiple_exits(2000);
    short buf1[16] = {0}, buf2[16] = {0};
    duffs_device(buf1, buf2, 16);
    printf("result: %d\n", r);
    return 0;
}
