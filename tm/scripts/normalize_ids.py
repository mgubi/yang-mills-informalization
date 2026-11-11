#!/usr/bin/env python3
"""Make the saved documents reproducible (step 6 of build.sh).

    normalize_ids.py FILE.tm ...

A hyperlink inside a heading is copied, expanded, into the table of
contents when TeXmacs generates it, as <locus|<id|%ADDR-ADDR>|...> where the
id is built from memory addresses, so two builds differ. The ids only pair a
locus with its link inside one file: renumber them in order of appearance.
"""
import re, sys

ID = re.compile(r'<id\|(%[0-9A-F]+-[0-9A-F]+)>')
for f in sys.argv[1:]:
    s = open(f, encoding='latin-1', newline='').read()
    ids = {}
    t = ID.sub(lambda m: '<id|%%1-%X>' % ids.setdefault(m.group(1), len(ids) + 1), s)
    if t != s:
        open(f, 'w', encoding='latin-1', newline='').write(t)
