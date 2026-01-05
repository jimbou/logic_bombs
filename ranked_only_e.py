import json
from statistics import mean

INPUT_JSON = "/home/jim/logic_bombs/ranked_fdlibm_coverage.json"
OUTPUT_JSON = "/home/jim/logic_bombs/ranked_fdlibm_coverage_only_e.json"

CATEGORIES = [
    "klee_stp",
    "klee_z3",
    "klee_float_z3",
    "concollmic_deepseek",
    "concollmic_claude",
    "concollmic_gpt",
]

with open(INPUT_JSON) as f:
    data = json.load(f)

# Keep only benches starting with e_
e_entries = [entry for entry in data if entry.get("bench", "").startswith("e_")]

if not e_entries:
    raise ValueError("No benchmarks starting with 'e_' found")

# Compute averages per category
avg_entry = {
    "bench": "AVERAGE_e_",
}

for cat in CATEGORIES:
    values = [entry[cat] for entry in e_entries if cat in entry]
    avg_entry[cat] = round(mean(values), 2) if values else 0.0

# New JSON: averages first, then all e_ entries
output = [avg_entry] + e_entries

with open(OUTPUT_JSON, "w") as f:
    json.dump(output, f, indent=2)

print(f"Wrote {len(output)} entries to {OUTPUT_JSON}")
