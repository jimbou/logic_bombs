import re
import json
from pathlib import Path

TXT_PATH = "llvm_cov_output.txt"
OUT_JSON = "xmlwf_coverable_lines.json"

XML_COVERAGE_FILES = [
    "xmlparse.c",
    "xmltok.c",
    "xmlrole.c",
    "xmltok_ns.c",
    "xmltok_impl.c",
]


def extract_cov_blocks_anchored(all_text: str, wanted_basenames):
    """
    Extract per-file llvm-cov show blocks using a strict 2-line anchor:
      <path>:
      <spaces><lineno>|...

    Returns dict: { basename -> block_text }
    """
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


def extract_coverable_lines_from_block(block_text: str):
    """
    From a single llvm-cov show block, extract coverable line numbers.

    A line is coverable iff the coverage column is a number (0 or >0).
    """
    coverable = []

    for line in block_text.splitlines():
        # Example:
        # "   36|     54|#define ASCII_A 0x41"
        m = re.match(r"^\s*(\d+)\|\s*(\d+)\|", line)
        if m:
            lineno = int(m.group(1))
            coverable.append(lineno)

    coverable = sorted(set(coverable))
    return coverable


def main():
    with open(TXT_PATH, "r", encoding="utf-8", errors="ignore") as f:
        all_text = f.read()

    blocks = extract_cov_blocks_anchored(all_text, XML_COVERAGE_FILES)

    result = {}

    for fname in XML_COVERAGE_FILES:
        block = blocks.get(fname)
        if not block:
            print(f"[WARN] No coverage block found for {fname}")
            continue

        coverable_lines = extract_coverable_lines_from_block(block)

        result[fname] = {
            "total_coverable_lines": len(coverable_lines),
            "coverable_lines": [str(l) for l in coverable_lines],
        }

    with open(OUT_JSON, "w") as f:
        json.dump(result, f, indent=2)

    print(f"[OK] Wrote {OUT_JSON}")


if __name__ == "__main__":
    main()
