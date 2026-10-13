#!/usr/bin/env python3
"""summarize.py -- C vs Rust summary tables from the labeled results.

Usage (from repo root):  python3 pass/scripts/summarize.py
Prints the tables and saves them in pass/results/summary.md.

Input:
  pass/results/<lang>/<tool>/<tool>_O0.labeled.json  (from label_loops.py)
  pass/results_buffer/buffer_summary.tsv              (from label_buffers.py)

Tables:
  1. Loops per tool by where the code is: tool (the tool's own source),
     project (C: coreutils src/*.h like system.h and gnulib; Rust: uucore),
     library (loop_kind "library"). Same rule as label_buffers.py.
  2. Loop kinds per language, tool code only.
  3. Buffer accesses in tool code by index kind. Variable index = real
     indexing (arr[i]); constant index = mostly struct fields at -O0.
  4. Buffer accesses by code origin (tool / project / library), all index kinds.
  5. Extra Rust projects (benchmarks/rust_extra/, non-Unix): loops and buffer
     accesses per project, and next to the uutils Rust tools. Their "tool" = the
     project's own code; "driver" = our driver program (not counted).

Loops whose kind could not be named ("unmatched": the loop sits in a macro_rules!
or in an #[inline(always)] function inlined into another one) are still counted by
their file path, like the buffer accesses. Loops without a source line
("no-debug-info": rustc's own loops for array initializers [x; N]) are not source
loops: in the extra projects they get their own "compiler-generated" column (by the
crate in the function name), elsewhere they stay "other" (none in coreutils).
Tables 1-4 are C vs Rust coreutils only, as before.
"""
import csv, glob, json, os, re, sys
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
RESULTS = os.path.join(ROOT, "pass", "results")
BUFS = os.path.join(ROOT, "pass", "results_buffer", "buffer_summary.tsv")
OUT = os.path.join(ROOT, "pass", "results", "summary.md")
LANGS = ("c_cpp", "rust")
EXTRA = "rust_extra"
CONF = os.path.join(ROOT, "pass", "scripts", "rust_extra_projects.conf")


def extra_crates():
    """project name -> its own crate names (library + binary), from the conf file."""
    crates = {}
    if os.path.exists(CONF):
        for line in open(CONF):
            m = re.match(r'\s*"([^"]*)"', line)
            if m and m.group(1).count("|") == 7:
                name, _url, _pin, crate, _mode, _ws, binpkg, _bin = m.group(1).split("|")
                crates[name] = {c.replace("-", "_") for c in (crate, binpkg) if c}
    return crates


def first_crate(symbol):
    """Crate of the item a (v0-mangled) function belongs to: the first crate root
    in the symbol, e.g. _RINvNtCs7pFF_3qoi6decode... -> qoi."""
    m = re.search(r"C(?:s[0-9A-Za-z]*_)?(\d+)", symbol or "")
    if not m:
        return ""
    start = m.end()
    return symbol[start:start + int(m.group(1))]


def read_tsv(path):
    if not os.path.exists(path):
        sys.exit(f"missing {path} -- run run_all_passes.sh first")
    return list(csv.DictReader(open(path), delimiter="\t"))


def code_origin(path, lang, tool):
    # same rule as label_buffers.py
    if lang == "c_cpp" and "/coreutils/" in path and "/uutils-coreutils/" not in path:
        return "tool" if "/coreutils/src/" in path and path.endswith(".c") else "project"
    if lang == "rust" and "/uutils-coreutils/" in path:
        return "tool" if f"/src/uu/{tool}/" in path else "project"
    if lang == EXTRA:
        if "/benchmarks/rust_extra/" in path and "/driver/" in path:
            return "driver"
        if "/.build/rust-extra/" in path:
            return "tool"
    return "library"


def read_loops():
    # (lang, tool, origin, kind) for each loop in the labeled -O0 files
    files = sorted(glob.glob(f"{RESULTS}/*/*/*_O0.labeled.json"))
    if not files:
        sys.exit("no *_O0.labeled.json files -- run run_all_passes.sh first")
    crates = extra_crates()
    out = []
    for f in files:
        lang, tool = f.split(os.sep)[-3:-1]
        if tool == "toy_loops":
            continue
        for L in json.load(open(f)):
            kind = L.get("loop_kind", "?")
            if kind == "library":
                origin = "library"
            elif kind == "driver":
                origin = "driver"
            elif kind == "no-debug-info":
                origin = "other"
                if lang == EXTRA:  # rustc's array-initializer loops: by crate
                    c = first_crate(L.get("function", ""))
                    origin = ("driver" if c.startswith("driver_") else
                              "generated" if c in crates.get(tool, ()) else "library")
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


def extra_tables(loops, kinds, b):
    """Section 5: the extra Rust projects, alone and next to the uutils tools."""
    projects = sorted({t for l, t, _, _ in loops if l == EXTRA} |
                      {t for (l, t, _o, _k) in b if l == EXTRA})
    if not projects:
        return []
    n = defaultdict(int)
    for lang, tool, origin, _kind in loops:
        n[(lang, tool, origin)] += 1

    md = ["## 5. Extra Rust projects (non-Unix)", "",
          "Same passes and labels; tool = the project's own code, library = std & "
          "dependencies, driver = our small program that calls a library-only project "
          "(not counted).", ""]

    # 5a. per project
    rows = []
    for p in projects:
        rows.append((p, n[(EXTRA, p, "tool")], n[(EXTRA, p, "generated")], n[(EXTRA, p, "library")],
                     b[(EXTRA, p, "tool", "variable")], b[(EXTRA, p, "tool", "constant")],
                     b[(EXTRA, p, "library", "variable")] + b[(EXTRA, p, "library", "constant")],
                     n[(EXTRA, p, "driver")],
                     b[(EXTRA, p, "driver", "variable")] + b[(EXTRA, p, "driver", "constant")]))
    rows.append(("**total**", *(f"**{sum(r[i] for r in rows)}**" for i in range(1, 9))))
    md += ["### 5a. Per project", "",
           "compiler-generated = rustc's loops for array initializers `[x; N]` in the "
           "project's code (no source line; not in tool loops).", "",
           table(("project", "tool loops", "compiler-generated loops", "library loops",
                  "tool variable", "tool constant", "library accesses", "driver loops",
                  "driver accesses"), rows), ""]

    # 5b. uutils Rust tools vs extra Rust projects
    def group(lang):
        names = sorted({t for (l, t, _o, _k) in b if l == lang} |
                       {t for l, t, _, _ in loops if l == lang})
        k = len(names) or 1
        vals = {
            "tool loops": sum(n[(lang, t, "tool")] for t in names),
            "library loops": sum(n[(lang, t, "library")] for t in names),
            "tool variable-index accesses": sum(b[(lang, t, "tool", "variable")] for t in names),
            "tool constant-index accesses": sum(b[(lang, t, "tool", "constant")] for t in names),
            "library accesses": sum(b[(lang, t, "library", ix)] for t in names
                                    for ix in ("variable", "constant")),
        }
        return len(names), {key: (v, v / k) for key, v in vals.items()}
    nu, uu = group("rust")
    ne, ex = group(EXTRA)
    rows = [(key, uu[key][0], f"{uu[key][1]:.1f}", ex[key][0], f"{ex[key][1]:.1f}") for key in uu]
    md += [f"### 5b. uutils Rust tools ({nu}) vs extra Rust projects ({ne})", "",
           "Totals and mean per program. The programs differ a lot in size, so compare "
           "the shape (variable vs constant, tool vs library) more than the totals.", "",
           table(("", "uutils total", "uutils mean", "extra total", "extra mean"), rows), ""]

    # size-independent ratios
    def ratios(g):
        loops_, var, const, lib = (g["tool loops"][0], g["tool variable-index accesses"][0],
                                   g["tool constant-index accesses"][0], g["library accesses"][0])
        pct = lambda a, t: f"{100 * a / t:.1f}%" if t else "-"
        per = lambda a: f"{a / loops_:.1f}" if loops_ else "-"
        return [pct(var, var + const), pct(lib, var + const + lib),
                per(var), per(const), per(lib)]
    names = ("variable index, % of tool accesses", "library, % of all accesses",
             "tool variable-index accesses per tool loop",
             "tool constant-index accesses per tool loop", "library accesses per tool loop")
    rows = [(nm, a, e) for nm, a, e in zip(names, ratios(uu), ratios(ex))]
    md += ["Size-independent ratios (tool loops as a rough size measure):", "",
           table(("", "uutils Rust", "extra Rust"), rows), ""]

    # 5c. loop kinds, tool code
    all_kinds = sorted(set(kinds["rust"]) | set(kinds[EXTRA]))
    rows = [(k, kinds["rust"].get(k, 0), kinds[EXTRA].get(k, 0)) for k in all_kinds]
    md += ["### 5c. Loop kinds (tool code only)", "",
           "unmatched = kind not named (loop in a macro_rules! or in an inlined "
           "#[inline(always)] function); counted as tool code by its file.", "",
           table(("kind", "uutils Rust", "extra Rust"), rows), ""]
    return md


def main():
    loops = read_loops()
    bufs = read_tsv(BUFS)
    md = ["# C vs Rust -- summary (-O0)", ""]

    # 1. loops per tool and origin
    n = defaultdict(int)
    kinds = defaultdict(lambda: defaultdict(int))
    for lang, tool, origin, kind in loops:
        n[(lang, tool, origin)] += 1
        if origin == "tool":
            kinds[lang][kind] += 1
    tools = sorted({t for l, t, _, _ in loops if l in LANGS})
    cols = [("c_cpp", "tool"), ("c_cpp", "project"),
            ("rust", "tool"), ("rust", "project"), ("rust", "library")]
    rows = [(t, *(n[(l, t, o)] for l, o in cols)) for t in tools]
    rows.append(("**total**", *(f"**{sum(r[i] for r in rows)}**" for i in range(1, 6))))
    md += ["## 1. Loops by where their code lives", "",
           "tool = the tool's own source; project = shared project code "
           "(C: system.h / gnulib headers; Rust: uucore); library = std & dependencies.", "",
           table(("tool", "C tool", "C project", "Rust tool", "Rust project", "Rust library"), rows), ""]
    other = {(l, t): n[(l, t, "other")] for l, t, o, _ in loops if o == "other" and l in LANGS}
    if other:
        md += [f"Unmatched / no-debug-info loops (not counted above): {other}", ""]

    # 2. loop kinds (tool code)
    all_kinds = sorted({k for lang in LANGS for k in kinds[lang]})
    rows = [(k, kinds["c_cpp"].get(k, 0), kinds["rust"].get(k, 0)) for k in all_kinds]
    md += ["## 2. Loop kinds (tool code only, all tools)", "",
           table(("kind", "C", "Rust"), rows), ""]

    # 3. buffer accesses in tool code, by index kind
    b = defaultdict(int)
    for r in bufs:
        b[(r["lang"], r["tool"], r["code_origin"], r["index_kind"])] += int(r["count"])
    btools = sorted({r["tool"] for r in bufs if r["lang"] in LANGS})
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

    md += extra_tables(loops, kinds, b)

    text = "\n".join(md)
    print(text)
    open(OUT, "w").write(text + "\n")
    print(f"\n(written to {OUT})")


if __name__ == "__main__":
    main()