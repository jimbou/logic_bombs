#!/usr/bin/env bash
set -euo pipefail

############################
# CONFIG
############################
XMLWF_DIR="$(pwd)"
EXPAT_ROOT="$(cd .. && pwd)"
LIB_DIR="$EXPAT_ROOT/lib"

EXE="xmlwf_cov"
PROFRAW="xmlwf.profraw"
PROFDATA="xmlwf.profdata"
OUT_JSON="xmlwf_coverable_lines.json"

BUILD_DIR=".cov_build"
LIB_A="$BUILD_DIR/libexpat_cov.a"

SRC_FILES=(
  "$XMLWF_DIR/xmlwf.c"
  "$XMLWF_DIR/xmlfile.c"
  "$XMLWF_DIR/codepage.c"
  "$XMLWF_DIR/unixfilemap.c"
  "$XMLWF_DIR/xmlmime.c"
  "$LIB_DIR/xmlparse.c"
  "$LIB_DIR/xmltok.c"
  "$LIB_DIR/xmltok_impl.c"
  "$LIB_DIR/xmltok_ns.c"      # ✅ REQUIRED
  "$LIB_DIR/xmlrole.c"
)

############################
# TOOLS
############################
LLVM_COV="$(command -v llvm-cov)"
LLVM_PROFDATA="$(command -v llvm-profdata)"
AR="$(command -v ar)"
RANLIB="$(command -v ranlib)"
CLANG="$(command -v clang)"

############################
# PREP
############################
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"

CFLAGS=(
  -O0 -g
  -fprofile-instr-generate
  -fcoverage-mapping
  -I"$XMLWF_DIR"
  -I"$EXPAT_ROOT"
  -I"$LIB_DIR"
  -DXML_GE=1
  -DXML_DTD=1
  -DXML_NS=1     
)

############################
# STEP 1: BUILD libexpat
############################
echo "==> Building coverage-instrumented libexpat"

"$CLANG" "${CFLAGS[@]}" -c "$LIB_DIR/xmlparse.c"      -o "$BUILD_DIR/xmlparse.o"
"$CLANG" "${CFLAGS[@]}" -c "$LIB_DIR/xmltok.c"        -o "$BUILD_DIR/xmltok.o"
"$CLANG" "${CFLAGS[@]}" -c "$LIB_DIR/xmltok_impl.c"   -o "$BUILD_DIR/xmltok_impl.o"
"$CLANG" "${CFLAGS[@]}" -c "$LIB_DIR/xmltok_ns.c"     -o "$BUILD_DIR/xmltok_ns.o"
"$CLANG" "${CFLAGS[@]}" -c "$LIB_DIR/xmlrole.c"       -o "$BUILD_DIR/xmlrole.o"

"$AR" rcs "$LIB_A" \
  "$BUILD_DIR/xmlparse.o" \
  "$BUILD_DIR/xmltok.o" \
  "$BUILD_DIR/xmltok_impl.o" \
  "$BUILD_DIR/xmltok_ns.o" \
  "$BUILD_DIR/xmlrole.o"

"$RANLIB" "$LIB_A"

############################
# STEP 2: BUILD xmlwf
############################
echo "==> Building xmlwf (native, original main)"

"$CLANG" "${CFLAGS[@]}" \
  "$XMLWF_DIR/xmlwf.c" \
  "$XMLWF_DIR/xmlfile.c" \
  "$XMLWF_DIR/codepage.c" \
  "$XMLWF_DIR/unixfilemap.c" \
  "$XMLWF_DIR/xmlmime.c" \
  "$LIB_A" \
  -o "$EXE"

############################
# STEP 3: RUN ONCE
############################
echo "==> Running xmlwf once"

LLVM_PROFILE_FILE="$PROFRAW" "./$EXE" >/dev/null 2>&1 || true
"$LLVM_PROFDATA" merge "$PROFRAW" -o "$PROFDATA"

############################
# STEP 4: EXTRACT COVERAGE
############################
echo "==> Extracting coverable lines"

echo "{}" > "$OUT_JSON"

for SRC in "${SRC_FILES[@]}"; do
  echo "  Processing $(basename "$SRC")"

  mapfile -t LINES < <(
    "$LLVM_COV" show "$EXE" \
      -instr-profile="$PROFDATA" \
      --show-line-counts \
      "$SRC" \
    | awk -F'\\|' '
        $1 ~ /^[[:space:]]*[0-9]+[[:space:]]*$/ && $2 ~ /[0-9]/ {
          gsub(/[[:space:]]/, "", $1);
          print $1
        }
      ' | sort -n | uniq
  )

  jq \
    --arg src "$SRC" \
    --argjson total "${#LINES[@]}" \
    --argjson lines "$(printf '%s\n' "${LINES[@]}" | jq -R . | jq -s .)" \
    '
    .[$src] = {
      total_coverable_lines: $total,
      coverable_lines: $lines
    }
    ' "$OUT_JSON" > "$OUT_JSON.tmp"

  mv "$OUT_JSON.tmp" "$OUT_JSON"
done

rm -f "$PROFRAW"

echo "==> DONE"
echo "Binary: $EXE"
echo "Coverage: $OUT_JSON"
