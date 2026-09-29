#!/usr/bin/env python3
"""spot_check.py -- print every non-library loop of one tool next to its source line.

Usage (from repo root):
    python3 pass/scripts/spot_check.py rust fold
    python3 pass/scripts/spot_check.py c_cpp fold
    python3 pass/scripts/spot_check.py rust fold --all     # include library loops

For each loop: source line, label, IR depth, latch count, function, the source
text at that line, and flags worth a manual look:
  CLOSURE   loop is inside a closure -> IR depth may differ from source depth,
            so the kind may be the enclosing loop's (known limitation)
  GOTO      C loop built from a backward goto
  UNMATCHED label_loops.py could not match it
Check each row against the source: is there really a loop at that line, and is
the kind right?
"""
import json, os, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    show_all = "--all" in sys.argv
    if len(args) != 2:
        print(__doc__)
        return 1
    lang, tool = args
    f = os.path.join(ROOT, "pass", "results", lang, tool, f"{tool}_O0.labeled.json")
    if not os.path.exists(f):
        print(f"not found: {f} -- run run_all_passes.sh first")
        return 1

    loops = json.load(open(f))
    rows, lines_cache = [], {}
    for L in loops:
        kind = L.get("loop_kind", "?")
        if kind == "library" and not show_all:
            continue
        chain = L.get("src_loc") or [{}]
        loc = chain[0]
        path = os.path.normpath(os.path.join(loc.get("dir", ""), loc.get("file", "")))
        line = loc.get("line", 0)
        if path not in lines_cache:
            try:
                lines_cache[path] = open(path, errors="replace").read().splitlines()
            except OSError:
                lines_cache[path] = []
        src = lines_cache[path]
        text = src[line - 1].strip() if 0 < line <= len(src) else "(source not available)"
        func = L.get("function_demangled", "").split("::<")[0]
        flags = []
        if "{closure" in L.get("function_demangled", ""):
            flags.append("CLOSURE")
        if kind == "goto":
            flags.append("GOTO")
        if kind == "unmatched":
            flags.append("UNMATCHED")
        rows.append((os.path.basename(path), line, kind, L.get("depth"), L.get("latch_count"),
                     func, " ".join(flags), text[:70]))

    rows.sort(key=lambda r: (r[0], r[1]))
    print(f"{lang}/{tool}: {len(rows)} loop(s) shown"
          f"{'' if show_all else ' (library excluded; --all to include)'}\n")
    hdr = ("file", "line", "kind", "depth", "latches", "function", "flags", "source")
    widths = [max(len(str(r[i])) for r in rows + [hdr]) for i in range(len(hdr) - 1)]
    fmt = "  ".join(f"{{:<{w}}}" for w in widths) + "  {}"
    print(fmt.format(*hdr))
    for r in rows:
        print(fmt.format(*[str(x) for x in r]))

    flagged = [r for r in rows if r[6]]
    if flagged:
        print(f"\n{len(flagged)} flagged row(s) -- check these first.")
    return 0


if __name__ == "__main__":
    sys.exit(main())