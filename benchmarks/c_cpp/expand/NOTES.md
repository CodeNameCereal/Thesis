# NOTES.md — expand (C)

No modifications. Compiled unmodified against a full gnulib build.

Build required `./configure --disable-gcc-warnings` due to an unrelated
-Werror=maybe-uninitialized false positive in copy-file-data.c
(see README.md, "Known build issues").

IR generated at -O0 and -O2 (O2 matches coreutils' own default build
optimization level). Compile command:

    clang -I. -I./lib -Ilib -I./lib -Isrc -I./src -O0 -S -emit-llvm src/expand.c -o expand_O0.ll
    clang -I. -I./lib -Ilib -I./lib -Isrc -I./src -O2 -S -emit-llvm src/expand.c -o expand_O2.ll