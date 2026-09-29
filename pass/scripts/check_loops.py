#!/usr/bin/env python3
"""check_loops.py -- automated spot-check of every labeled loop, all tools.

Usage (from repo root):  python3 pass/scripts/check_loops.py [--verbose]

For every loop that is not "library", reads the source around the loop's
location and checks:
  NO-LOOP   no loop keyword/label at that line or the few code lines above it
            (IR locations often land on the first statement of the body, so
            the lines above are checked too)
  KIND?     a loop is there, but not the kind the label says
  CLOSURE   loop is inside a Rust closure -> kind may be the enclosing loop's
            (known limitation, check by hand)
Flagged rows are printed with their source line; open them with
spot_check.py <lang> <tool> to look closer. Heuristic: a flag means
"look at this", not "this is wrong".
"""
import glob, json, os, re, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
RESULTS = os.path.join(ROOT, "pass", "results")
LOOK_BACK = 8  # max code lines above the location that may hold the loop keyword
               # (stops early at a line ending in '}')

KIND_RE = {
    "c_cpp": {"for": r"\bfor\s*\(", "while": r"\bwhile\s*\(", "do-while": r"\bdo\b",
              "goto": r"^\s*[A-Za-z_]\w*\s*:\s*$"},
    "rust": {"for": r"\bfor\b.*\bin\b", "while": r"\bwhile\b(?!\s+let\b)",
             "while-let": r"\bwhile\s+let\b", "loop": r"\bloop\b"},
}


def is_code(line):
    s = line.strip()
    return s and not s.startswith(("//", "/*", "*"))


def window(src, line):
    """The loop's own line plus up to LOOK_BACK code lines above it."""
    out, i = [], line - 1
    if 0 <= i < len(src):
        out.append(src[i])
    j = i - 1
    while j >= 0 and len(out) <= LOOK_BACK:
        if is_code(src[j]):
            if src[j].rstrip().endswith("}"):
                break  # a closed block: anything above is outside this loop
                       # (';' is not a stop -- the IR location can be the 2nd
                       # statement of the body, e.g. after "let x = ...;")
            out.append(src[j])
        j -= 1
    return out


def main():
    verbose = "--verbose" in sys.argv
    files = sorted(glob.glob(f"{RESULTS}/*/*/*_O0.labeled.json"))
    if not files:
        sys.exit("no *_O0.labeled.json -- run run_all_passes.sh first")
    cache, flagged, summary = {}, [], []

    for f in files:
        lang, tool = f.split(os.sep)[-3:-1]
        if tool == "toy_loops" or lang not in KIND_RE:
            continue
        checked = 0
        for L in json.load(open(f)):
            kind = L.get("loop_kind")
            if kind == "library":
                continue
            checked += 1
            loc = (L.get("src_loc") or [{}])[0]
            path = os.path.normpath(os.path.join(loc.get("dir", ""), loc.get("file", "")))
            line = loc.get("line", 0)
            if path not in cache:
                try:
                    cache[path] = open(path, errors="replace").read().splitlines()
                except OSError:
                    cache[path] = []
            win = window(cache[path], line)
            text = win[0].strip() if win else "(source not available)"

            flags = []
            any_loop = any(re.search(rx, w) for rx in KIND_RE[lang].values() for w in win)
            if not any_loop:
                flags.append("NO-LOOP")
            elif kind in KIND_RE[lang] and not any(re.search(KIND_RE[lang][kind], w) for w in win):
                flags.append("KIND?")
            elif kind not in KIND_RE[lang]:
                flags.append(kind.upper())  # unmatched / no-debug-info
            if "{closure" in L.get("function_demangled", ""):
                flags.append("CLOSURE")
            if flags:
                flagged.append((lang, tool, os.path.basename(path), line, kind, " ".join(flags), text[:70]))
        n_flag = sum(1 for r in flagged if r[0] == lang and r[1] == tool)
        summary.append((lang, tool, checked, n_flag))

    print(f"{'lang':<6} {'tool':<7} {'loops':>5} {'flagged':>7}")
    for lang, tool, n, k in summary:
        print(f"{lang:<6} {tool:<7} {n:>5} {k:>7}{'' if k == 0 else '   <--'}")
    total, total_flag = sum(s[2] for s in summary), len(flagged)
    print(f"\n{total} loops checked, {total_flag} flagged.")

    if flagged:
        print("\nFlagged (check these with spot_check.py):")
        for r in flagged:
            print(f"  {r[0]}/{r[1]}  {r[2]}:{r[3]}  {r[4]}  [{r[5]}]  {r[6]}")
    elif verbose:
        print("Nothing flagged.")


if __name__ == "__main__":
    main()