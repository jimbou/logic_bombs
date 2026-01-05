clang -O0 -g -emit-llvm -c \
  xmlwf.c \
  xmlfile.c \
  codepage.c \
  unixfilemap.c \
  xmlmime.c \
  expat/xmlparse.c \
  expat/xmltok.c \
  expat/xmltok_impl.c \
  expat/xmlrole.c \
  -I. -I../lib -I./expat \
  -DXML_GE=1 \
  -DXML_DTD=1 \
  -DXML_POOR_ENTROPY
