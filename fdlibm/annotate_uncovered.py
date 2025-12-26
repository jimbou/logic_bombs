import json
import re
from pathlib import Path

JSON_PATH = "/home/jim/logic_bombs/fdlibm/results_fdlibm_klee_simple_z3_updated.json"
SRC_DIR = Path("/home/jim/logic_bombs/fdlibm/fdlibm_coverage")

with open(JSON_PATH) as f:
    data = json.load(f)

for key, runs in data.items():
    if not runs:
        continue

    entry = runs[0]

    coverable = set(int(x) for x in entry.get("coverable_lines", []))
    covered = set(int(x) for x in entry.get("covered_lines", []))

    uncovered = coverable - covered
    if not uncovered:
        continue

    src_path = SRC_DIR / f"{key}.c"
    if not src_path.exists():
        print(f"[WARN] Source file not found: {src_path}")
        continue

    lines = src_path.read_text().splitlines()

    for lineno in uncovered:
        idx = lineno - 1
        if idx < 0 or idx >= len(lines):
            print(f"[WARN] Line {lineno} out of range in {src_path}")
            continue

        line = lines[idx]

        # Strip comments (both // and /* */ starts)
        code_only = re.split(r'//|/\*', line, 1)[0].strip()

        # Skip structural else-only lines
        if re.match(r'^\}?\s*else\s*\{?\s*$', code_only):
            continue

        # Avoid double annotation
        if "//uncovered" not in line:
            lines[idx] = line + " //uncovered"


    src_path.write_text("\n".join(lines))
    print(f"[OK] Annotated {len(uncovered)} uncovered lines in {src_path}")
