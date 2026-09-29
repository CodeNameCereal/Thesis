#!/usr/bin/env python3
"""summarize.py -- build the C vs Rust summary tables from the labeled results.

Usage (from repo root):  python3 pass/scripts/summarize.py
Prints the tables and writes them to pass/results/summary.md.

Reads:
  pass/results/<lang>/<tool>/<tool>_O0.labeled.json  (label_loops.py)
  pass/results_buffer/buffer_summary.tsv  (label_buffers.py)

Tables:
  1. Loops per tool, split by where the loop's code lives (same rule as
     label_buffers.py): tool (the tool's own source), project (shared code of
     the same project: coreutils src/*.h such as system.h + gnulib in C,
     uucore in Rust), library (label_loops.py's "library").
  2. Loop kinds per language (tool code only).
  3. Buffer accesses in the tool's own code, split by index kind.
     variable index = real array/buffer indexing (arr[i]);
     constant index = mostly struct field accesses (compiler-generated at -O0).
  4. Buffer accesses by code origin (tool / project / library), all index kinds.
"""
import csv, glob, json, os, sys
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
RESULTS = os.path.join(ROOT, "pass", "results")
BUFS = os.path.join(ROOT, "pass", "results_buffer", "buffer_summary.tsv")
OUT = os.path.join(ROOT, "pass", "results", "summary.md")
LANGS = ("c_cpp", "rust")


def read_tsv(path):
    if not os.path.exists(path):
        sys.exit(f"missing {path} -- run run_all_passes.sh first")
    return list(csv.DictReader(open(path), delimiter="\t"))


def code_origin(path, lang, tool):
    """Same rule as label_buffers.py: tool / project / library."""
    if lang == "c_cpp" and "/coreutils/" in path and "/uutils-coreutils/" not in path:
        return "tool" if "/coreutils/src/" in path and path.endswith(".c") else "project"
    if lang == "rust" and "/uutils-coreutils/" in path:
        return "tool" if f"/src/uu/{tool}/" in path else "project"
    return "library"


def read_loops():
    """(lang, tool, origin, kind) for every loop in the labeled -O0 results."""
    files = sorted(glob.glob(f"{RESULTS}/*/*/*_O0.labeled.json"))
    if not files:
        sys.exit("no *_O0.labeled.json files -- run run_all_passes.sh first")
    out = []
    for f in files:
        lang, tool = f.split(os.sep)[-3:-1]
        if tool == "toy_loops":
            continue
        for L in json.load(open(f)):
            kind = L.get("loop_kind", "?")
            if kind == "library":
                origin = "library"
            elif kind in ("unmatched", "no-debug-info"):
                origin = "other"
            else:
                loc = (L.get("src_loc") or [{}])[0]
                path = os.path.normpath(os.path.join(loc.get("dir", ""), loc.get("file", "")))
                origin = code_origin(path, lang, tool)
            out.append((lang, tool, origin, kind))
    return out


def table(header, rows):
    out = ["| " + " | ".join(header) + " |", "|" + "|".join("---" for _ in header) + "|"]
    out += ["| " + " | ".join(str(c) for c in r) + " |" for r in rows]
    return "\n".join(out)


def main():
    loops = read_loops()
    bufs = read_tsv(BUFS)
    md = ["# C vs Rust -- summary (-O0)", ""]

    # 1. loops per tool, by origin
    n = defaultdict(int)
    kinds = defaultdict(lambda: defaultdict(int))
    for lang, tool, origin, kind in loops:
        n[(lang, tool, origin)] += 1
        if origin == "tool":
            kinds[lang][kind] += 1
    tools = sorted({t for _, t, _, _ in loops})
    cols = [("c_cpp", "tool"), ("c_cpp", "project"),
            ("rust", "tool"), ("rust", "project"), ("rust", "library")]
    rows = [(t, *(n[(l, t, o)] for l, o in cols)) for t in tools]
    rows.append(("**total**", *(f"**{sum(r[i] for r in rows)}**" for i in range(1, 6))))
    md += ["## 1. Loops by where their code lives", "",
           "tool = the tool's own source; project = shared project code "
           "(C: system.h / gnulib headers; Rust: uucore); library = std & dependencies.", "",
           table(("tool", "C tool", "C project", "Rust tool", "Rust project", "Rust library"), rows), ""]
    other = {(l, t): n[(l, t, "other")] for l, t, o, _ in loops if o == "other"}
    if other:
        md += [f"Unmatched / no-debug-info loops (not counted above): {other}", ""]

    # 2. loop kinds, tool code only
    all_kinds = sorted({k for lang in kinds for k in kinds[lang]})
    rows = [(k, kinds["c_cpp"].get(k, 0), kinds["rust"].get(k, 0)) for k in all_kinds]
    md += ["## 2. Loop kinds (tool code only, all tools)", "",
           table(("kind", "C", "Rust"), rows), ""]

    # 3. buffer accesses, tool code, by index kind
    b = defaultdict(int)
    for r in bufs:
        b[(r["lang"], r["tool"], r["code_origin"], r["index_kind"])] += int(r["count"])
    btools = sorted({r["tool"] for r in bufs})
    rows = []
    for t in btools:
        rows.append((t, b[("c_cpp", t, "tool", "variable")], b[("rust", t, "tool", "variable")],
                     b[("c_cpp", t, "tool", "constant")], b[("rust", t, "tool", "constant")]))
    rows.append(("**total**", *(f"**{sum(r[i] for r in rows)}**" for i in range(1, 5))))
    md += ["## 3. Buffer accesses in the tool's own code", "",
           "variable index = real buffer indexing; constant = mostly struct field accesses.", "",
           table(("tool", "C variable", "Rust variable", "C constant", "Rust constant"), rows), ""]

    # 4. buffer accesses by origin
    rows = []
    for lang in LANGS:
        tot = defaultdict(int)
        for (l, _t, origin, _k), n in b.items():
            if l == lang:
                tot[origin] += n
        rows.append((lang, tot["tool"], tot["project"], tot["library"], tot["unknown"]))
    md += ["## 4. Buffer accesses by code origin (all tools, all index kinds)", "",
           table(("language", "tool", "project", "library", "unknown"), rows), ""]

    text = "\n".join(md)
    print(text)
    open(OUT, "w").write(text + "\n")
    print(f"\n(written to {OUT})")


if __name__ == "__main__":
    main()