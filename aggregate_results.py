import json
from collections import OrderedDict

IN_JSON = "/home/jim/logic_bombs/jq_float/results_jq_float_z3.json"
OUT_JSON = "/home/jim/logic_bombs/jq_float/results_jq_float_z3_with_summary.json"

with open(IN_JSON, "r") as f:
    data = json.load(f)

total_coverable = 0
total_covered = 0
coverage_values = []

for fname, info in data.items():
    total_coverable += info["total_coverable"]
    total_covered += info["covered"]
    coverage_values.append(info["coverage_percent"])

avg_coverage = sum(coverage_values) / len(coverage_values) if coverage_values else 0.0
total_coverage = (total_covered / total_coverable * 100.0) if total_coverable > 0 else 0.0

out = OrderedDict()
out["__summary__"] = {
    "average_coverage_percent": round(avg_coverage, 2),
    "total_coverage_percent": round(total_coverage, 2),
    "total_coverable": total_coverable,
    "total_covered": total_covered,
}

out.update(data)

with open(OUT_JSON, "w") as f:
    json.dump(out, f, indent=2)

print(f"[OK] Wrote summary-enhanced coverage to {OUT_JSON}")
