# Thesis: LLVM Loop Analysis & Security-Related Statistics Passes

This repo contains the benchmark programs, the LLVM pass(es), and the thesis
write-up itself, kept together so every result in the thesis can be traced
back to the exact source, IR, and toolchain that produced it.

## Repo layout

```
.
├── .devcontainer/
│   ├── devcontainer.json      Dev environment config (extensions, settings)
│   └── Dockerfile             Pinned toolchain (clang/LLVM 18, rustc, go)
│
├── benchmarks/
│   ├── c_cpp/<tool>/
│   ├── rust/<tool>/
│   ├── go/<tool>/
│   └── .gitkeep
│
├── pass/
│   ├── src/                   LLVM pass source code
│   ├── scripts/                Driver scripts (env dump, run-pass-on-all)
│   ├── results/                Raw pass output, one file per (tool, lang, opt level)
│   └── .gitkeep
│
├── thesis/
│   ├── chapters/               .tex chapters — the actual writing
│   ├── data/                   Processed tables, generated FROM pass/results/
│   ├── figures/                Generated plots, regeneratable from thesis/data/
│   ├── appendix/                Specific IR excerpts quoted in the text
│   └── .gitkeep
│
├── ENVIRONMENT.md               Resolved toolchain versions (see below)
├── README.md                    This file
└── .gitignore
```

## Golden rule

**Raw stays raw. Processed is always regenerable from raw, never hand-edited.**

- `benchmarks/*/*/src/` and `ir/` = raw, vendored, never modified without a note in `NOTES.md`
- `pass/results/` = raw pass output, never hand-edited
- `thesis/data/` and `thesis/figures/` = processed/derived, always regenerable by
  re-running the scripts in `pass/scripts/` against `pass/results/` — if you ever
  have to manually tweak a number in `thesis/data/`, something upstream is broken
  and should be fixed there instead

---

## What goes where

### `benchmarks/<lang>/<tool>/`

One folder per tool, per language, same shape every time.

| File / folder | What it holds |
|---|---|
| `src/` | The vendored source file(s), unmodified unless documented in `NOTES.md` |
| `SOURCE.md` | Where the source came from — see template below |
| `NOTES.md` | Any manual edits made and why (if none, say so explicitly — don't leave it blank/ambiguous) |
| `ir/O0/` | Raw `.ll` (or `.bc`) output compiled at `-O0` |
| `ir/O2/` | Raw `.ll` (or `.bc`) output compiled at `-O2` |

Add more `ir/O*` subfolders if you test more optimization levels later — keep
naming identical across `c_cpp/`, `rust/`, and `go/` so scripts can loop over
languages generically instead of needing per-language logic.

**`SOURCE.md` template:**

```markdown
# SOURCE.md — <tool> (<language>)

- Upstream repo: <repo URL>
- File path: <path within repo>
- Commit hash: <full 40-char hash>
- Commit date: <if known>
- Permalink: <repo URL>/blob/<hash>/<path>
- Retrieved: <date you downloaded/vendored it>
- Method: <e.g. GitHub 'y' permalink, or git log -1 -- <path>>
```

Get the commit hash either by pressing **`y`** on the GitHub file page (turns
the URL into a permanent commit-hash link), or via:

```bash
git log -1 --format="%H %cI" -- <path/to/file>
```

**`NOTES.md`** — even a one-liner is fine, but always have one:

```markdown
# NOTES.md — <tool> (<language>)

No manual edits — used as vendored, unmodified.
```

or, if you did change something:

```markdown
# NOTES.md — <tool> (<language>)

- Removed argv error-handling branch (lines 40–52) to isolate the core loop
  for clearer IR — does not affect loop structure being analyzed.
```

**Also save alongside each `.ll` file (or as a header comment in it):** the
exact compile command used to produce it, e.g.:

```
clang-18 -O0 -S -emit-llvm -o cat_O0.ll cat.c
```

Without this, the IR file alone can't be reproduced later.

---

### `pass/`

| Folder | What it holds |
|---|---|
| `src/` | Your LLVM pass source (loop-finder now, statistics passes later) |
| `scripts/` | `dump_environment.sh`, plus a driver script that walks every `benchmarks/*/*/ir/*/*.ll` and runs the pass on it |
| `results/` | Raw per-run output — one file per `(tool, language, opt level)`, e.g. `cat_c_O0.json`, `cat_rust_O2.json`. Include loop count, nesting depth, back-edge block IDs, and a timestamp in each. |

Never edit `results/` files by hand — if a run was wrong, fix the pass or the
script and re-run.

---

### `thesis/`

| Folder | What it holds |
|---|---|
| `chapters/` | The actual `.tex` writing |
| `data/` | Tables built from `pass/results/`, ready to `\input` into LaTeX |
| `figures/` | Generated plots, built from `thesis/data/` |
| `appendix/` | Specific IR snippets you quote/cite in the text |

---

### Root files

**`ENVIRONMENT.md`** — resolved toolchain state (not hand-written; generated
inside the devcontainer). Regenerate with:

```bash
./pass/scripts/dump_environment.sh
```

Commit `ENVIRONMENT.md` on every real data-collection commit — git history
then serves as the archive of what toolchain state produced which results,
even as the devcontainer evolves over time (e.g. a future LLVM 19 bump).

---

## Git workflow

- Commit one logical change at a time (e.g. "vendor cat.c source" separately
  from "run pass on cat, O0+O2") — this makes `git log` function as a lab
  notebook you can bisect through later.
- Suggested commit message shape:
  ```
  benchmarks(c_cpp/cat): vendor source, pin commit 1ee46ac
  pass: run loop-finder on cat (O0, O2), c_cpp + rust
  thesis(ch3): add loop-count comparison table
  ```
- Tag milestones (`git tag thesis-draft-v1`) before major pass-logic changes,
  so results can always be traced back to the exact pass version that
  produced them.
- Push to a private remote regularly — local-only git is not a backup.
- `.gitignore` should exclude build artifacts (`build/`, `target/`, `*.o`)
  but **not** `.ll` IR files or `pass/results/*.json` — those are data, not
  noise. If the repo grows too large from committed `.ll` files, use Git LFS
  for `*.ll` / `*.bc` rather than excluding them.
