import json
from pathlib import Path
from collections import defaultdict

############################################
# Configuration
############################################

KLEE_OUT_DIR = Path("/home/jim/logic_bombs/jq_normal/klee-out-2")
COVERABLE_JSON = Path("/home/jim/logic_bombs/jq_all_coverable_lines.json")
OUT_JSON = "results_jq_normal_z3.json"

############################################
# Helpers
############################################

def load_coverable_lines():
    """
    Load coverable lines per file from jq_all_coverable_lines.json
    Returns dict: { filename -> set(line_numbers) }
    """
    with open(COVERABLE_JSON, "r") as f:
        data = json.load(f)

    coverable = {}
    for fname, info in data.items():
        coverable[fname] = set(map(int, info["coverable_linenos"]))

    return coverable


def parse_cov_file(path: Path):
    """
    Parse a single KLEE .cov file.
    Returns dict: { filename -> set(covered_lines) }
    """
    covered = defaultdict(set)

    with open(path, "r", errors="ignore") as f:
        for line in f:
            line = line.strip()
            if ":" not in line:
                continue

            file_path, lineno = line.rsplit(":", 1)
            try:
                lineno = int(lineno)
            except ValueError:
                continue

            fname = Path(file_path).name
            covered[fname].add(lineno)

    return covered

############################################
# Main
############################################

def main():
    coverable = load_coverable_lines()

    # Aggregate coverage across all .cov files
    total_covered = defaultdict(set)

    cov_files = list(KLEE_OUT_DIR.glob("*.cov"))
    print(f"[INFO] Found {len(cov_files)} .cov files")

    for cov in cov_files:
        per_file = parse_cov_file(cov)
        for fname, lines in per_file.items():
            total_covered[fname].update(lines)

    # Compute coverage for ALL coverable lines
    result = {}

    for fname, coverable_lines in coverable.items():
        covered_lines = total_covered.get(fname, set())

        covered_eff = coverable_lines & covered_lines
        uncovered = coverable_lines - covered_eff

        total = len(coverable_lines)
        covered_n = len(covered_eff)
        uncovered_n = len(uncovered)
        pct = (covered_n / total * 100.0) if total > 0 else 0.0

        result[fname] = {
            "total_coverable": total,
            "covered": covered_n,
            "uncovered": uncovered_n,
            "coverage_percent": round(pct, 2),
            "covered_lines": sorted(covered_eff),
            "uncovered_lines": sorted(uncovered),
        }

    with open(OUT_JSON, "w") as f:
        json.dump(result, f, indent=2)

    print(f"[OK] Wrote coverage results to {OUT_JSON}")

############################################

if __name__ == "__main__":
    main()
