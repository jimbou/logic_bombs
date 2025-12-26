#!/usr/bin/env python3

import json
import statistics
import sys
from pathlib import Path

if len(sys.argv) != 2:
    print(f"Usage: {sys.argv[0]} results.json")
    sys.exit(1)

path = Path(sys.argv[1])

with open(path, "r", encoding="utf-8") as f:
    data = json.load(f)

coverages = []

for bench, runs in data.items():
    for run in runs:
        if "coverage_percent" in run:
            coverages.append(run["coverage_percent"])

if not coverages:
    print("No coverage_percent values found.")
    sys.exit(0)

avg = sum(coverages) / len(coverages)
med = statistics.median(coverages)

print(f"Count   : {len(coverages)}")
print(f"Average : {avg:.2f}%")
print(f"Median  : {med:.2f}%")
