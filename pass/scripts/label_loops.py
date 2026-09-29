#!/usr/bin/env python3
"""Label every IR loop in pass/results/ with its source loop kind.

    python3 pass/scripts/label_loops.py   ->  X_O0.labeled.json per result file + loop_kinds.tsv

Only -O0 results are labeled: at -O0 nothing is inlined, so each loop's src_loc has
one entry, pointing at the loop in the source.

Rule: take the loop's debug location (src_loc, from LoopFinderPass), find the source
loops containing it (libclang for C, syn for Rust), pick the one at the same nesting
depth as the IR loop. Kinds: for / while / do-while / while-let / loop, plus
  goto       C loop built from a backward goto (no loop statement)
  library    code lives in std/core/alloc/a dependency -> exclude from tool stats
  unmatched  check by hand;   no-debug-info: IR built without line tables
"""
import glob, json, os, re, subprocess
from collections import Counter

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
RS_TOOL = os.path.join(ROOT, "pass", "tools", "loop_ast_rs")
# /rust/deps/: std's own dependencies (e.g. hashbrown, behind HashMap) -- rustc
# records their paths under /rust/deps/<crate>-<version>/, not under /library/.
LIBRARY = re.compile(r"/library/(core|alloc|std)/|/\.cargo/|^/usr/|/rust/deps/")
cache = {}


def c_loops(path):
    import clang.cindex as ci
    if not ci.Config.loaded:  # libclang.so, not libclang-cpp.so
        ci.Config.set_library_file(sorted(glob.glob("/usr/lib/llvm-*/lib/libclang.so*"))[-1])
    build = os.path.join(ROOT, ".build", "coreutils")  # config.h + gnulib headers
    tu = ci.Index.create().parse(path, args=[f"-I{build}/{d}" for d in ("", "lib", "src")])
    kinds = {ci.CursorKind.FOR_STMT: "for", ci.CursorKind.WHILE_STMT: "while",
             ci.CursorKind.DO_STMT: "do-while"}
    return [{"kind": kinds[c.kind], "start": [c.extent.start.line, c.extent.start.column],
             "end": [c.extent.end.line, c.extent.end.column]}
            for c in tu.cursor.walk_preorder()
            if c.kind in kinds and c.location.file and c.location.file.name == path]


def rust_loops(path):
    subprocess.run(["cargo", "build", "--release", "-q"], cwd=RS_TOOL, check=True)
    out = subprocess.run([f"{RS_TOOL}/target/release/loop_ast_rs", path],
                         capture_output=True, text=True).stdout
    return [json.loads(line) for line in out.splitlines()]


def source_loops(path):
    if path not in cache:
        loops = rust_loops(path) if path.endswith(".rs") else c_loops(path)
        for L in loops:  # nesting depth = number of loops containing this one (incl. itself)
            L["depth"] = sum(M["start"] <= L["start"] <= M["end"] for M in loops)
        cache[path] = loops
    return cache[path]


def label(loop):
    chain = loop.get("src_loc")
    if not chain:
        return "no-debug-info"
    loc = chain[0]  # where the loop's code is written
    path = os.path.normpath(os.path.join(loc["dir"], loc["file"]))
    if LIBRARY.search(path):
        return "library"
    if not os.path.exists(path):
        return "unmatched"
    pos = [loc["line"], loc["col"]]
    containing = [L for L in source_loops(path) if L["start"] <= pos <= L["end"]]
    for L in containing:
        if path.endswith(".c") and L["start"] == pos:  # clang: exact loop start
            return L["kind"]
    for L in containing:
        if L["depth"] == loop.get("depth"):
            return L["kind"]
    return "goto" if path.endswith(".c") else "unmatched"


def entries(node):  # every dict with a src_loc, wherever it sits in the JSON
    if isinstance(node, dict):
        if "src_loc" in node:
            yield node
        node = list(node.values())
    if isinstance(node, list):
        for v in node:
            yield from entries(v)


results = os.path.join(ROOT, "pass", "results")
rows = ["lang\ttool\tlevel\tkind\tcount\n"]
for f in sorted(glob.glob(f"{results}/*/*/*_O0.json")):  # -O0 only; not .labeled/.filtered
    data = json.load(open(f))
    counts = Counter()
    for loop in entries(data):
        loop["loop_kind"] = label(loop)
        counts[loop["loop_kind"]] += 1
    json.dump(data, open(f[:-5] + ".labeled.json", "w"), indent=1)
    lang, tool, name = f.split(os.sep)[-3:]
    level = name[:-5].rsplit("_", 1)[-1]
    print(lang, tool, level, dict(counts))
    rows += [f"{lang}\t{tool}\t{level}\t{k}\t{n}\n" for k, n in sorted(counts.items())]
open(f"{results}/loop_kinds.tsv", "w").writelines(rows)