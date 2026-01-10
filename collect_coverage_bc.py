import json
from pathlib import Path
from collections import defaultdict

############################################
# Configuration
############################################

COV_DIR = Path("/home/jim/logic_bombs/bc_float/bc_float_z3")
COVERABLE_JSON = Path("/home/jim/logic_bombs/bc_all_coverable_lines.json")
OUT_JSON = "/home/jim/logic_bombs/bc_float/results_bc_z3.json"

FILES_OF_INTEREST = {
    "lex.c",
    "num.c",
    "parse.c",
    "bc_parse.c",
    "program.c",
    "read.c",
    "vm.c",
}

############################################
# Helpers
############################################

def load_coverable():
    with open(COVERABLE_JSON, "r") as f:
        data = json.load(f)

    coverable = {}
    for fname, info in data.items():
        if fname in FILES_OF_INTEREST:
            coverable[fname] = set(map(int, info["coverable_line_numbers"]))

    return coverable


def parse_cov_file(path: Path):
    """
    Parse KLEE-style .cov file:
    Each line is:
        src/file.c:LINE
    """
    covered = defaultdict(set)

    with open(path, "r", errors="ignore") as f:
        for line in f:
            line = line.strip()

            # Skip junk lines like ":0"
            if ":" not in line:
                continue

            file_part, line_part = line.rsplit(":", 1)

            if not line_part.isdigit():
                continue

            fname = Path(file_part).name
            lineno = int(line_part)

            covered[fname].add(lineno)

    return covered


############################################
# Main
############################################

def main():
    coverable = load_coverable()

    total_covered = defaultdict(set)

    cov_files = list(COV_DIR.glob("*.cov"))
    print(f"[INFO] Found {len(cov_files)} .cov files")

    for cov in cov_files:
        per_file = parse_cov_file(cov)

        for fname, lines in per_file.items():
            if fname in FILES_OF_INTEREST:
                total_covered[fname].update(lines)


    # Compute coverage
    result = {}

    for fname in FILES_OF_INTEREST:
        cov_lines = coverable.get(fname, set())
        covered = total_covered.get(fname, set())

        covered_eff = covered & cov_lines
        uncovered = cov_lines - covered_eff

        total = len(cov_lines)
        covered_n = len(covered_eff)
        uncovered_n = len(uncovered)

        pct = (covered_n / total * 100.0) if total > 0 else 0.0

        result[fname] = {
            "total_coverable": total,
            "covered": covered_n,
            "uncovered": uncovered_n,
            "coverage_percent": round(pct, 2),
            "covered_lines": sorted(map(str, covered_eff)),
            "uncovered_lines": sorted(map(str, uncovered)),
        }

    with open(OUT_JSON, "w") as f:
        json.dump(result, f, indent=2)

    print(f"[OK] Wrote coverage summary to {OUT_JSON}")


if __name__ == "__main__":
    main()
