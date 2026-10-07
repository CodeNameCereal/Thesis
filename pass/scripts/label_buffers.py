#!/usr/bin/env python3
"""
label_buffers.py -- adds "code_origin" to every BufferAccessPass entry.

Reads   pass/results_buffer/<lang>/<tool>/<tool>_<lvl>.json
Writes  pass/results_buffer/<lang>/<tool>/<tool>_<lvl>.labeled.json
        pass/results_buffer/buffer_summary.tsv
            (count per lang / tool / level / code_origin / index_kind)

code_origin comes only from the entry's "file" (source path in the debug info):
  tool     the tool's own source
             C:    .build/coreutils/src/<name>.c
             Rust: .build/uutils-coreutils/src/uu/<tool>/...
  project  other code of the same project
             C:    the rest of .build/coreutils/ (gnulib lib/, src/*.h e.g. system.h)
             Rust: .build/uutils-coreutils/src/uucore/...
  library  everything else: Rust std/core/alloc (/rustc/...), crates from the
           cargo registry, system headers (/usr/...)
  unknown  empty "file" (IR without line tables)

project and tool are kept apart; add them up from the TSV if needed.

Usage (from repo root):  python3 pass/scripts/label_buffers.py
"""

import json
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
RESULTS = ROOT / "pass" / "results_buffer"
SUMMARY = RESULTS / "buffer_summary.tsv"


def code_origin(path: str, lang: str, tool: str) -> str:
    if not path:
        return "unknown"
    if lang == "c_cpp" and "/coreutils/" in path and "/uutils-coreutils/" not in path:
        if "/coreutils/src/" in path and path.endswith(".c"):
            return "tool"
        return "project"
    if lang == "rust" and "/uutils-coreutils/" in path:
        if f"/src/uu/{tool}/" in path:
            return "tool"
        return "project"
    return "library"


def main() -> int:
    if not RESULTS.is_dir():
        print(f"error: {RESULTS} not found -- run the passes first", file=sys.stderr)
        return 1

    rows = []  # (lang, tool, level, origin, index_kind, count)
    for f in sorted(RESULTS.glob("*/*/*.json")):
        if f.name.endswith(".labeled.json"):
            continue
        lang, tool = f.parent.parent.name, f.parent.name
        level = f.stem.rsplit("_", 1)[-1]  # echo_O0 -> O0

        entries = json.loads(f.read_text())
        for e in entries:
            e["code_origin"] = code_origin(e.get("file", ""), lang, tool)

        out = f.with_name(f.stem + ".labeled.json")
        out.write_text(json.dumps(entries, indent=2) + "\n")

        counts = Counter((e["code_origin"], e["index_kind"]) for e in entries)
        for (origin, kind), n in sorted(counts.items()):
            rows.append((lang, tool, level, origin, kind, n))

        by_origin = Counter(e["code_origin"] for e in entries)
        print(f"{lang} {tool} {level} {dict(sorted(by_origin.items()))}")

    with SUMMARY.open("w") as fh:
        fh.write("lang\ttool\tlevel\tcode_origin\tindex_kind\tcount\n")
        for r in rows:
            fh.write("\t".join(map(str, r)) + "\n")
    print(f"summary -> {SUMMARY}")
    return 0


if __name__ == "__main__":
    sys.exit(main())