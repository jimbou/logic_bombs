clang -O0 -g -emit-llvm -c \
  -Dmain=xmlwf_prog_main \
  -DXML_NS=0 \
  xmlwf.c \
  -I. -I../lib \
  -DXML_GE=1 -DXML_DTD=1

clang -O0 -g -emit-llvm -c \
  xmlfile.c codepage.c unixfilemap.c xmlmime.c \
  ../lib/xmlparse.c ../lib/xmltok.c \
  ../lib/xmltok_impl.c ../lib/xmlrole.c \
  -I. -I../lib

clang -O0 -g -emit-llvm -c xmlwf_harness.c

llvm-link *.bc -o xmlwf.bc
klee   --libc=uclibc   --search=nurs:covnew   --write-cov --allow-external-sym-calls   xmlwf.bc