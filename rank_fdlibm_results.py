#!/usr/bin/env python3

import json
import argparse
from pathlib import Path
from collections import defaultdict


def normalize_bench(name: str) -> str:
    # strip _float suffix if present
    return name[:-6] if name.endswith("_float") else name


def load_klee(path: Path, label: str, table: dict):
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    for bench, runs in data.items():
        b = normalize_bench(bench)
        if not runs:
            continue
        # take first run (your files only have one)
        cov = runs[0].get("coverage_percent")
        if cov is not None:
            table[b][label] = cov


def load_concollmic(path: Path, label: str, table: dict):
    with open(path, "r", encoding="utf-8") as f:
        data = json.load(f)

    for entry in data.get("benches", []):
        b = entry.get("bench")
        cov = entry.get("coverage_percent")
        if b is not None and cov is not None:
            table[b][label] = cov


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--klee-stp", required=True, type=Path)
    parser.add_argument("--klee-z3", required=True, type=Path)
    parser.add_argument("--klee-float-z3", required=True, type=Path)
    parser.add_argument("--concollmic-deepseek", required=True, type=Path)
    parser.add_argument("--concollmic-claude", required=True, type=Path)
    parser.add_argument("--concollmic-gpt", required=True, type=Path)
    parser.add_argument("-o", "--out", required=True, type=Path)

    args = parser.parse_args()

    table = defaultdict(dict)

    # Load KLEE
    load_klee(args.klee_stp, "klee_stp", table)
    load_klee(args.klee_z3, "klee_z3", table)
    load_klee(args.klee_float_z3, "klee_float_z3", table)

    # Load ConcoLLMic
    load_concollmic(args.concollmic_deepseek, "concollmic_deepseek", table)
    load_concollmic(args.concollmic_claude, "concollmic_claude", table)
    load_concollmic(args.concollmic_gpt, "concollmic_gpt", table)

    results = []

    for bench, vals in table.items():
        covs = list(vals.values())
        avg = round(sum(covs) / len(covs), 2) if covs else 0.0

        entry = {
            "bench": bench,
            "average_coverage": avg,
        }
        entry.update(vals)
        results.append(entry)

    # Rank from lowest to highest average coverage
    results.sort(key=lambda x: x["average_coverage"])

    with open(args.out, "w", encoding="utf-8") as f:
        json.dump(results, f, indent=2)

    print(f"Wrote ranked coverage to {args.out}")
    print(f"Total benches: {len(results)}")


if __name__ == "__main__":
    main()
