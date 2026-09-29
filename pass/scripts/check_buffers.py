#!/usr/bin/env python3
"""check_buffers.py -- sanity-check the BufferAccess results against the source.

Usage (from repo root):  python3 pass/scripts/check_buffers.py [--examples N]

Looks only at accesses in the tool's own code (code_origin == "tool"), per
language and tool:
  line0        compiler-generated accesses with no source line (expected,
               mostly Rust struct field stores at -O0)
  var          variable-index accesses (real buffer indexing)
  var_bracket  ... whose source line contains "[" -- i.e. looks like arr[i]
  var_other    ... whose source line does NOT contain "[" -> worth a look
               (e.g. pointer arithmetic *(p + i) in C, or a GEP rustc emits
               for something that isn't written as indexing)
  missing_src  file in debug info that doesn't exist on disk (should be 0)
Prints up to N examples of var_other per tool (default 3).
Heuristic: var_other is "look at this", not "this is wrong".
"""
import glob, json, os, sys
from collections import defaultdict

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
RESULTS = os.path.join(ROOT, "pass", "results_buffer")


def main():
    n_ex = 3
    if "--examples" in sys.argv:
        n_ex = int(sys.argv[sys.argv.index("--examples") + 1])
    files = sorted(glob.glob(f"{RESULTS}/*/*/*_O0.labeled.json"))
    if not files:
        sys.exit("no *_O0.labeled.json in pass/results_buffer -- run run_all_passes.sh first")

    cache, examples = {}, defaultdict(list)
    cols = ("tool_total", "line0", "var", "var_bracket", "var_other", "missing_src")
    rows = []
    for f in files:
        lang, tool = f.split(os.sep)[-3:-1]
        c = defaultdict(int)
        for e in json.load(open(f)):
            if e.get("code_origin") != "tool":
                continue
            c["tool_total"] += 1
            path, line = e.get("file", ""), e.get("line", 0)
            if path not in cache:
                try:
                    cache[path] = open(path, errors="replace").read().splitlines()
                except OSError:
                    cache[path] = None
            src = cache[path]
            if src is None:
                c["missing_src"] += 1
                continue
            if line == 0:
                c["line0"] += 1
                continue
            if e.get("index_kind") != "variable":
                continue
            c["var"] += 1
            text = src[line - 1] if 0 < line <= len(src) else ""
            if "[" in text:
                c["var_bracket"] += 1
            else:
                c["var_other"] += 1
                if len(examples[(lang, tool)]) < n_ex:
                    examples[(lang, tool)].append(
                        f"{os.path.basename(path)}:{line}  {e.get('access_kind')}  {text.strip()[:70]}")
        rows.append((lang, tool, *(c[k] for k in cols)))

    hdr = ("lang", "tool") + cols
    w = [max(len(str(r[i])) for r in rows + [hdr]) for i in range(len(hdr))]
    print("  ".join(h.ljust(w[i]) if i < 2 else h.rjust(w[i]) for i, h in enumerate(hdr)))
    for r in rows:
        print("  ".join(str(x).ljust(w[i]) if i < 2 else str(x).rjust(w[i]) for i, x in enumerate(r)))

    tot = {k: sum(r[2 + i] for r in rows) for i, k in enumerate(cols)}
    print(f"\nvariable-index accesses: {tot['var']} "
          f"({tot['var_bracket']} look like arr[i], {tot['var_other']} don't); "
          f"missing source files: {tot['missing_src']}")
    if examples:
        print("\nExamples of variable-index accesses without '[' on the line:")
        for (lang, tool), ex in examples.items():
            for x in ex:
                print(f"  {lang}/{tool}  {x}")


if __name__ == "__main__":
    main()