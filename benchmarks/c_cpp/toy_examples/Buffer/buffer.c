// Toy examples for BufferAccessPass validation.
#include <stdlib.h>

// 1. Guarded variable-index access into a local array.
// Expect: 1 access, index_kind=variable, origin=alloca,
//         dominated_by_check=true.
int guarded_local(int idx) {
    int buf[16];
    if (idx < 0 || idx >= 16) {
        abort();
    }
    return buf[idx];
}

// 2. Unguarded variable-index access into a parameter pointer.
// Expect: 1 access, index_kind=variable, origin=param,
//         dominated_by_check=false.
int unguarded_param(int *arr, int idx) {
    return arr[idx];
}

// 3. Constant-index access -- not the interesting case.
// Expect: 1 access, index_kind=constant.
int fixed_index(int *arr) {
    return arr[3];
}

// 4. Heap buffer, variable index, inside a loop.
// Expect: access with origin=heap, inside_loop=true.
// NOTE on dominated_by_check for this one: the loop's `i < n` condition
// technically dominates the access and compares the same index value `i`,
// so the pass's syntactic heuristic will mark this dominated_by_check=true
// -- even though `i < n` is a loop trip-count check, not a check against
// the buffer's actual size. This is a known, documented limitation (see
// BufferAccessPass.cpp header): the heuristic can't distinguish "loop
// bound" from "buffer bound" checks on the same variable. Worth a
// sentence in the thesis rather than treating it as a false positive to
// silently fix.
int sum_heap(int n) {
    int *buf = malloc(n * sizeof(int));
    int total = 0;
    for (int i = 0; i < n; i++) {
        total += buf[i];
    }
    free(buf);
    return total;
}
