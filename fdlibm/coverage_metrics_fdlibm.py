import json
import os
import argparse
from collections import Counter


def analyze_coverage(results_json_path, coverable_json_path):
    with open(results_json_path) as f:
        results = json.load(f)

    with open(coverable_json_path) as f:
        coverable = json.load(f)

    # Build lookup: e_xxx → coverable info
    coverable_map = {}
    for path, info in coverable.items():
        base = os.path.basename(path)      # e_log10.c
        key = base.replace(".c", "")       # e_log10
        coverable_map[key] = info

    total_covered = 0
    total_coverable = 0
    percentages = []
    errors = []

    # ---- NEW: counting & duplicates ----
    entry_names = list(results.keys())
    entry_counter = Counter(entry_names)
    duplicates = {k: v for k, v in entry_counter.items() if v > 1}

    for key, runs in results.items():
        name = key.replace("_float", "")   # DO NOT change w_ → e_

        if name not in coverable_map:
            errors.append(f"Missing in coverable JSON: {name}")
            continue

        expected_total = coverable_map[name]["total_coverable_lines"]

        for run in runs:
            covered = run["covered"]
            total = run["total_coverable"]

            if total != expected_total:
                errors.append(
                    f"Mismatch for {name}: result={total}, expected={expected_total}"
                )

            total_covered += covered
            total_coverable += total
            percentages.append(run["coverage_percent"])

    avg_percent = sum(percentages) / len(percentages) if percentages else 0
    global_percent = (
        (total_covered / total_coverable) * 100
        if total_coverable else 0
    )

    return {
        "num_entries": len(entry_names),
        "num_unique_entries": len(set(entry_names)),
        "duplicate_entries": duplicates,
        "average_coverage_percent": round(avg_percent, 2),
        "global_coverage_percent": round(global_percent, 2),
        "total_covered_lines": total_covered,
        "total_coverable_lines": total_coverable,
        "errors": errors,
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("results_json", help="Results JSON file")
    parser.add_argument("coverable_json", help="Coverable-lines JSON file")
    args = parser.parse_args()

    result = analyze_coverage(args.results_json, args.coverable_json)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
