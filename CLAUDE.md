# CLAUDE.md

This file is read automatically by Claude Code at the start of every
session. Full project context, status, and history live in README.md --
read that too if you need more than the rules below.

## What this project is

Comparing C and Rust implementations of the same tools at the LLVM IR
level, for a thesis. Phase 1 (current): find loops. Later phases:
bounds checks, then casting/initialization patterns -- all
security-relevant static analysis, per advisor's phased plan.

## Hard rules -- do not violate these

1. **Never run `pass/scripts/benchmarks.sh` or `fill.sh` except on the
   one machine the user designates as canonical for corpus generation.**
   Upstream coreutils/uutils repos are not commit-pinned, so running
   these on a different machine (or a different day) can silently
   produce different IR even with identical tool source -- this already
   happened once and caused confusion. If asked to regenerate the
   corpus, confirm with the user which machine first.

2. **Never hand-edit or trim any file under `benchmarks/*/src/`.** The
   corpus is built from fully unmodified upstream source specifically
   so later thesis phases (bounds checks, casting/init patterns) still
   have that code intact to analyze. If a compile fails, fix flags/
   build environment -- never the source.

3. **Toolchain must stay version-matched.** clang-22 and rustc must
   both report the same LLVM version (currently 22.1.8). Before any
   build/regenerate task, verify:

       clang-22 --version
       rustc --version --verbose

   If they've drifted apart, stop and flag it -- don't proceed and
   don't silently "fix" it by picking one side to change without
   confirming with the user first (this affects reproducibility of
   already-committed data).

4. **`.build/` is gitignored on purpose and must stay that way.** It's
   a disposable workspace (full coreutils/uutils clones), never a
   commit target. Check `git status --ignored` if unsure.

5. **`.gitignore` has a known-fragile spot**: `*.ll` is excluded
   generally, with `!benchmarks/**/*.ll` re-including the actual
   corpus. If you ever touch `.gitignore`, verify with
   `git ls-files benchmarks/ | grep '\.ll$'` afterward that this still
   returns the expected count (currently 40: 10 tools x 2 langs x 2
   opt-levels) -- this exact rule broke silently once already.

6. **`.ll` files are tracked via Git LFS** (`benchmarks/**/*.ll` and
   `*.bc`). Don't disable or bypass LFS tracking on these paths.

7. **SOURCE.md/NOTES.md are auto-filled by `fill.sh` only when still at
   the untouched template state** (detected by an empty `Commit hash:`
   line). Don't manually blank out a filled SOURCE.md to force a
   refill -- edit it directly instead.

## Before doing any build/compile task

Read README.md's "Known gotchas" section first -- several non-obvious
failure modes are already documented there (gnulib's `-Werror` false
positive, `sum`'s multicall-family build shape, `cargo rustc` needing
`--bin`, etc). Don't re-diagnose something already written down.

## Current immediate task

Build and verify `pass/src/LoopFinderPass.cpp` against the corpus --
see README.md's "Immediate next step" for the exact commands. This has
not been built/tested yet as of this file.
