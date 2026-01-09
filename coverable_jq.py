import re
import json
from pathlib import Path

COV_TXT = "/home/jim/logic_bombs/jq_normal/coverage_temp/llvm_cov_output.txt"
OUT_JSON = "/home/jim/logic_bombs/jq_all_coverable_lines.json"


def extract_all_blocks(text: str):
    """
    Extract all llvm-cov blocks for src/*.c files.
    Returns: dict { basename -> block_text }
    """
    header_re = re.compile(r"^(?P<path>/.*?/src/[^/]+\.c):\s*$")
    covline_re = re.compile(r"^\s*\d+\|")

    lines = text.splitlines(keepends=True)
    starts = []

    for i in range(len(lines) - 1):
        m = header_re.match(lines[i].rstrip("\n"))
        if m and covline_re.match(lines[i + 1]):
            starts.append((i, m.group("path")))

    blocks = {}
    for idx, (start_i, path) in enumerate(starts):
        end_i = starts[idx + 1][0] if idx + 1 < len(starts) else len(lines)
        blocks[Path(path).name] = "".join(lines[start_i:end_i])

    return blocks


def coverage_from_block(block: str):
    coverable = set()
    covered = set()
    uncovered = set()

    for line in block.splitlines():
        # format: lineno|count|code
        m = re.match(r"^\s*(\d+)\|\s*(\d+)\|", line)
        if not m:
            continue

        lineno = int(m.group(1))
        count = int(m.group(2))

        coverable.add(lineno)
        if count > 0:
            covered.add(lineno)
        else:
            uncovered.add(lineno)

    return coverable, covered, uncovered


def main():
    with open(COV_TXT, "r", encoding="utf-8", errors="ignore") as f:
        text = f.read()

    blocks = extract_all_blocks(text)

    result = {}

    for fname, block in sorted(blocks.items()):
        coverable, covered, uncovered = coverage_from_block(block)

        total = len(coverable)
        cov = len(covered)
        pct = (cov / total * 100.0) if total > 0 else 0.0

        result[fname] = {
            "total_coverable_lines": total,
            "covered_lines": cov,
            "uncovered_lines": len(uncovered),
            "coverage_percent": round(pct, 2),
            "coverable_linenos": sorted(coverable),
        }

    with open(OUT_JSON, "w") as f:
        json.dump(result, f, indent=2)

    print(f"[OK] Coverage written to {OUT_JSON}")
    print(f"[INFO] Files analysed: {len(result)}")


if __name__ == "__main__":
    main()
