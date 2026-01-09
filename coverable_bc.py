import re
import json
from pathlib import Path

TXT_PATH = "/home/jim/logic_bombs/bc_normal/llvm_cov_output.txt"
OUT_JSON = "bc_all_coverable_lines.json"

SRC_DIR = Path("/home/jim/logic_bombs/bc_normal/src")
BC_COVERAGE_FILES = sorted(p.name for p in SRC_DIR.glob("*.c"))


def extract_cov_blocks_anchored(all_text: str, wanted_basenames):
    wanted_basenames = set(wanted_basenames)

    header_re = re.compile(r"^(?P<path>/.+?\.(?:c|h|cc|cpp)):\s*$")
    covline_re = re.compile(r"^\s*\d+\|")

    lines = all_text.splitlines(keepends=True)

    starts = []
    for i in range(len(lines) - 1):
        m = header_re.match(lines[i].rstrip("\n"))
        if not m:
            continue
        if covline_re.match(lines[i + 1]):
            path = m.group("path")
            starts.append((i, path))

    blocks = {}
    for idx, (start_i, path) in enumerate(starts):
        end_i = starts[idx + 1][0] if idx + 1 < len(starts) else len(lines)
        basename = Path(path).name
        if basename in wanted_basenames:
            blocks[basename] = "".join(lines[start_i:end_i])

    return blocks


def extract_coverage_from_block(block_text: str):
    """
    Returns:
      coverable_lines: set[int]
      covered_lines: set[int]
      uncovered_lines: set[int]
    """
    coverable = set()
    covered = set()
    uncovered = set()

    for line in block_text.splitlines():
        # Example:
        # "  305|  10.0k|   BC_SIG_ASSERT_LOCKED;"
        m = re.match(r"^\s*(\d+)\|\s*([0-9.]+k?|0)\|", line)
        if not m:
            continue

        lineno = int(m.group(1))
        count_str = m.group(2)

        coverable.add(lineno)

        # llvm-cov prints exactly "0" for uncovered
        if count_str == "0":
            uncovered.add(lineno)
        else:
            covered.add(lineno)

    return coverable, covered, uncovered


def main():
    with open(TXT_PATH, "r", encoding="utf-8", errors="ignore") as f:
        all_text = f.read()

    blocks = extract_cov_blocks_anchored(all_text, BC_COVERAGE_FILES)

    result = {}

    for fname in BC_COVERAGE_FILES:
        block = blocks.get(fname)
        if not block:
            continue  # not present in llvm-cov output

        coverable, covered, uncovered = extract_coverage_from_block(block)

        total = len(coverable)
        covered_n = len(covered)
        uncovered_n = len(uncovered)

        coverage_percent = (
            (covered_n / total) * 100.0 if total > 0 else 0.0
        )

        result[fname] = {
            "total_coverable_lines": total,
            "covered_lines": covered_n,
            "uncovered_lines": uncovered_n,
            "coverage_percent": round(coverage_percent, 2),
            "coverable_line_numbers": sorted(map(str, coverable)),
            "uncovered_line_numbers": sorted(map(str, uncovered)),
        }

    with open(OUT_JSON, "w") as f:
        json.dump(result, f, indent=2)

    print(f"[OK] Wrote {OUT_JSON}")
    print(f"[INFO] Files with coverage: {len(result)} / {len(BC_COVERAGE_FILES)}")

    # Optional: global summary
    total_cov = sum(v["total_coverable_lines"] for v in result.values())
    total_uncovered = sum(v["uncovered_lines"] for v in result.values())
    total_covered = total_cov - total_uncovered
    overall_pct = (total_covered / total_cov * 100.0) if total_cov else 0.0

    print(
        f"[SUMMARY] Overall coverage: "
        f"{total_covered}/{total_cov} "
        f"({overall_pct:.2f}%)"
    )


if __name__ == "__main__":
    main()
