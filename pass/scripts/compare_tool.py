#!/usr/bin/env python3
"""compare_tool.py -- everything needed to compare one tool in C and Rust,
in one Markdown report: every loop (with its source line) and every buffer
access (where the memory lives, whether it is inside a loop).

Usage (from repo root, after run_all_passes.sh):
    python3 pass/scripts/compare_tool.py fold
Writes pass/results/compare_<tool>.md (and prints it).

Sections
  1. Loops in the tool's own code + shared project code, per language:
     line, function, kind, depth, back edges, source line
  2. Rust standard-library loops, grouped by std function (C has none in the IR)
  3. Buffer accesses in the tool's own code, per language:
     counts by origin x inside/outside loop, then every variable-index access
     with its source line
origin: alloca = local (stack) buffer, global, heap (malloc/alloc call in the
same function), param = came in as a function argument (real location decided
by the caller), unknown. At -O0 a heap buffer can show as param/unknown --
check by hand.
"""
import glob, json, os, sys
from collections import Counter, defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
LANGS = (("c_cpp", "C"), ("rust", "Rust"))
_src = {}


def src_line(path, line):
    if path not in _src:
        try:
            _src[path] = open(path, errors="replace").read().splitlines()
        except OSError:
            _src[path] = []
    s = _src[path]
    return s[line - 1].strip().replace("|", "\\|")[:90] if 0 < line <= len(s) else ""


def code_origin(path, lang, tool):  # same rule as label_buffers.py / summarize.py
    if lang == "c_cpp" and "/coreutils/" in path and "/uutils-coreutils/" not in path:
        return "tool" if "/coreutils/src/" in path and path.endswith(".c") else "project"
    if lang == "rust" and "/uutils-coreutils/" in path:
        return "tool" if f"/src/uu/{tool}/" in path else "project"
    return "library"


def short(fn):  # readable function name: drop generic parameters
    out, depth = [], 0
    for ch in fn:
        if ch == "<" and out and out[-1] == ":":
            depth += 1
        if depth == 0:
            out.append(ch)
        if ch == ">" and depth:
            depth -= 1
    s = "".join(out).replace("::::", "::").rstrip(":")
    for prefix in ("core::iter::traits::iterator::", "core::iter::adapters::", "core::", "alloc::", "std::"):
        s = s.replace(prefix, "")
    return s[:100]


def table(header, rows):
    out = ["| " + " | ".join(header) + " |", "|" + "|".join("---" for _ in header) + "|"]
    return out + ["| " + " | ".join(str(c) for c in r) + " |" for r in rows]


def load(path):
    if not os.path.exists(path):
        sys.exit(f"missing {path} -- run run_all_passes.sh first")
    return json.load(open(path))


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    tool = sys.argv[1]
    md = [f"# {tool}: C vs Rust", ""]

    # ---------------------------------------------------------------- loops
    md += ["## 1. Loops (tool + project code)", ""]
    libloops = Counter()
    for lang, name in LANGS:
        rows = []
        for L in load(f"{ROOT}/pass/results/{lang}/{tool}/{tool}_O0.labeled.json"):
            loc = (L.get("src_loc") or [{}])[0]
            path = os.path.normpath(os.path.join(loc.get("dir", ""), loc.get("file", "")))
            if L.get("loop_kind") == "library":
                libloops[short(L.get("function_demangled", ""))] += 1
                continue
            origin = code_origin(path, lang, tool)
            rows.append((os.path.basename(path), loc.get("line", 0), origin,
                         short(L.get("function_demangled", "")), L.get("loop_kind"),
                         L.get("depth"), L.get("latch_count"), f"`{src_line(path, loc.get('line', 0))}`"))
        rows.sort(key=lambda r: (r[2] != "tool", r[0], r[1]))
        n_tool = sum(r[2] == "tool" for r in rows)
        md += [f"### {name}: {n_tool} tool + {len(rows) - n_tool} project loops", ""]
        md += table(("file", "line", "code", "function", "kind", "depth", "back edges", "source"), rows) + [""]

    md += ["## 2. Rust standard-library loops, by std function", "",
           f"{sum(libloops.values())} loops (C has none: libc code is not in the IR).", ""]
    md += table(("std function", "loops"), sorted(libloops.items(), key=lambda kv: -kv[1])) + [""]

    # ---------------------------------------------------------------- buffer accesses
    md += ["## 3. Buffer accesses in the tool's own code", ""]
    for lang, name in LANGS:
        acc = [e for e in load(f"{ROOT}/pass/results_buffer/{lang}/{tool}/{tool}_O0.labeled.json")
               if e.get("code_origin") == "tool"]
        md += [f"### {name}: {len(acc)} accesses "
               f"({sum(e['index_kind'] == 'variable' for e in acc)} variable index, "
               f"{sum(e['index_kind'] != 'variable' for e in acc)} constant index)", ""]
        grid = defaultdict(lambda: [0, 0])
        for e in acc:
            grid[e["origin"]][0 if e.get("inside_loop") else 1] += 1
        md += table(("origin", "inside loop", "outside loop", "total"),
                    [(o, a, b, a + b) for o, (a, b) in sorted(grid.items())]) + [""]
        var = sorted({(os.path.basename(e["file"]), e["line"], short(e["function_demangled"]),
                       e["access_kind"], e["origin"], "yes" if e.get("inside_loop") else "no",
                       f"`{src_line(e['file'], e['line'])}`")
                      for e in acc if e["index_kind"] == "variable"}, key=lambda r: (r[0], r[1]))
        if var:
            md += ["Variable-index accesses:", ""]
            md += table(("file", "line", "function", "access", "origin", "in loop", "source"), var) + [""]
        byfn = Counter(short(e["function_demangled"]) for e in acc if e["index_kind"] != "variable")
        if byfn:
            md += ["Constant-index accesses per function (mostly struct fields):", ""]
            md += table(("function", "accesses"), byfn.most_common(15)) + [""]

    text = "\n".join(md)
    out = f"{ROOT}/pass/results/compare_{tool}.md"
    open(out, "w").write(text + "\n")
    print(text)
    print(f"\n(written to {out})", file=sys.stderr)


if __name__ == "__main__":
    main()