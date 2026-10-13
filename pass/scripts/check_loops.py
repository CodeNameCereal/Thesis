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

rust_extra (benchmarks/rust_extra/) is checked the same way; "driver" loops (our
driver program) are skipped like "library". Its "unmatched" loops are counted as
EXPLAINED instead of flagged when the source confirms one of the two known causes:
  macro     the line is inside a macro_rules! body (code expanded from a macro keeps
            the macro's lines, e.g. httparse next!), or inside a call of a macro
            whose body has a loop (e.g. miniz_oxide generate_state!)
  inline    the line is in a function marked #[inline(always)]: rustc inlines it
            even at -O0, so the loop's depth is that of the caller
"no-debug-info" loops (rustc's own loops for array initializers [x; N]) have no
source line to check: they are counted separately, not flagged.
Three more rust_extra cases are EXPLAINED when the source confirms them:
  closure   CLOSURE, but the labelled kind's keyword is at the loop's location
  merged    KIND? "loop" inside two loops that start on consecutive code lines (only
            comments or value-less declarations like `let mut b;` between them):
            one IR header (method 6), so the inner loop gets the enclosing loop's kind
  body      NO-LOOP, but the enclosing block (first line above with less
            indentation) is a loop of the labelled kind (location deep in the body)
coreutils (c_cpp / rust) is checked exactly as before.
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
KIND_RE["rust_extra"] = KIND_RE["rust"]
SKIP_KINDS = ("library", "driver")
LOOP_WORD = re.compile(r"\b(for|while|loop)\b")
FN_LINE = re.compile(r"^\s*(pub(\([^)]*\))?\s+)?(const\s+)?(async\s+)?(unsafe\s+)?"
                     r"(extern\s+\"[^\"]*\"\s+)?fn\s+\w+")


def block_end(text, open_pos):
    """Index just past the bracket that closes the one at open_pos ((, [ or {)."""
    pairs = {"(": ")", "[": "]", "{": "}"}
    stack, i = [pairs[text[open_pos]]], open_pos + 1
    while stack and i < len(text):
        c = text[i]
        if c in pairs:
            stack.append(pairs[c])
        elif c == stack[-1]:
            stack.pop()
        i += 1
    return i


def macro_spans(src):
    """Line ranges (1-based, inclusive) of every macro_rules! body, and of every
    call (in the same file) of a macro whose body contains a loop keyword."""
    text = "\n".join(src)
    line_of = lambda pos: text.count("\n", 0, pos) + 1
    spans, looping = [], []
    for m in re.finditer(r"macro_rules!\s*(\w+)\s*([({\[])", text):
        end = block_end(text, m.end() - 1)
        spans.append((line_of(m.start()), line_of(end)))
        if LOOP_WORD.search(text[m.end():end]):
            looping.append(m.group(1))
    for name in looping:
        for m in re.finditer(r"\b" + name + r"!\s*([({\[])", text):
            spans.append((line_of(m.start()), line_of(block_end(text, m.end() - 1))))
    return spans


def inline_always_fn(src, line):
    """True if the nearest fn header above `line` carries #[inline(always)]."""
    i = min(line, len(src)) - 1
    while i >= 0 and not FN_LINE.match(src[i]):
        i -= 1
    j = i - 1
    while j >= 0 and (src[j].strip().startswith(("#[", "///", "//")) or not src[j].strip()):
        if "#[inline(always)]" in src[j]:
            return True
        j -= 1
    return False


LOOP_START = re.compile(r"\b(loop|while|for)\b.*\{\s*$")


def indent(text):
    return len(text) - len(text.lstrip())


def skippable(text):
    t = text.strip()
    return not t or t.startswith(("//", "#[", "/*", "*"))


def enclosing_opener(src, line):
    """First code line above `line` with less indentation (the block it is in)."""
    i = line - 1
    if not 0 <= i < len(src):
        return ""
    own = indent(src[i])
    for j in range(i - 1, -1, -1):
        if not skippable(src[j]) and indent(src[j]) < own:
            return src[j]
    return ""


NO_CODE_DECL = re.compile(r"^\s*let\s+(mut\s+)?\w+\s*(:[^=]*)?;\s*$")  # `let mut b;`


def merged_above(src, line, reach=80):
    """Two loops that enclose `line` and start on consecutive code lines."""
    i = line - 1
    if not 0 <= i < len(src):
        return False
    own = indent(src[i])
    for j in range(i - 1, max(-1, i - reach), -1):
        if LOOP_START.search(src[j]) and indent(src[j]) < own:
            k = j + 1
            while k < i and (skippable(src[k]) or NO_CODE_DECL.match(src[k])):
                k += 1
            if k < i and LOOP_START.search(src[k]):
                return True
    return False


def explain_flags(flags, kind, src, line):
    """rust_extra: the reason each flag is a known case, or None if one is not."""
    why = []
    for f in flags:
        if f == "CLOSURE" and len(flags) == 1:
            why.append("closure")
        elif f == "KIND?" and kind == "loop" and merged_above(src, line):
            why.append("merged")
        elif f == "NO-LOOP" and kind in KIND_RE["rust"] and \
                re.search(KIND_RE["rust"][kind], enclosing_opener(src, line)):
            why.append("body")
        else:
            return None
    return why


def explain_unmatched(src, line, spans):
    if any(a <= line <= b for a, b in spans):
        return "macro"
    if inline_always_fn(src, line):
        return "inline"
    return None


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
    cache, spans_cache, flagged, summary = {}, {}, [], []
    explained_rows = []

    for f in files:
        lang, tool = f.split(os.sep)[-3:-1]
        if tool == "toy_loops" or lang not in KIND_RE:
            continue
        checked = explained = generated = 0
        for L in json.load(open(f)):
            kind = L.get("loop_kind")
            if kind in SKIP_KINDS:
                continue
            if kind == "no-debug-info" and lang == "rust_extra":
                generated += 1   # rustc's array-initializer loops: no source line
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

            if kind == "unmatched" and lang == "rust_extra" and cache[path]:
                if path not in spans_cache:
                    spans_cache[path] = macro_spans(cache[path])
                why = explain_unmatched(cache[path], line, spans_cache[path])
                if why:
                    explained += 1
                    explained_rows.append((lang, tool, os.path.basename(path), line, why, text[:70]))
                    continue

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
            if flags and lang == "rust_extra" and cache[path]:
                why = explain_flags(flags, kind, cache[path], line)
                if why:
                    explained += 1
                    explained_rows.append((lang, tool, os.path.basename(path), line,
                                           "+".join(why), text[:70]))
                    continue
            if flags:
                flagged.append((lang, tool, os.path.basename(path), line, kind, " ".join(flags), text[:70]))
        n_flag = sum(1 for r in flagged if r[0] == lang and r[1] == tool)
        summary.append((lang, tool, checked, n_flag, explained, generated))

    extra = any(s[0] == "rust_extra" for s in summary)
    head = f"{'lang':<10} {'tool':<14} {'loops':>5} {'flagged':>7}"
    print(head + (f" {'explained':>9} {'no-src-line':>11}" if extra else ""))
    for lang, tool, n, k, e, g in summary:
        row = f"{lang:<10} {tool:<14} {n:>5} {k:>7}"
        if extra:
            row += f" {e:>9} {g:>11}"
        print(row + ("" if k == 0 else "   <--"))
    total, total_flag = sum(s[2] for s in summary), len(flagged)
    print(f"\n{total} loops checked, {total_flag} flagged.")
    if extra:
        n_exp, n_gen = sum(s[4] for s in summary), sum(s[5] for s in summary)
        print(f"rust_extra: {n_exp} loops explained (macro / inline / closure / merged / body), "
              f"{n_gen} compiler-generated loops without a source line (not checked).")
        if verbose and explained_rows:
            print("\nExplained:")
            for r in explained_rows:
                print(f"  {r[0]}/{r[1]}  {r[2]}:{r[3]}  [{r[4]}]  {r[5]}")

    if flagged:
        print("\nFlagged (check these with spot_check.py):")
        for r in flagged:
            print(f"  {r[0]}/{r[1]}  {r[2]}:{r[3]}  {r[4]}  [{r[5]}]  {r[6]}")
    elif verbose:
        print("Nothing flagged.")


if __name__ == "__main__":
    main()