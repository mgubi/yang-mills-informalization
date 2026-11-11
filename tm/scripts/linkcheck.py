#!/usr/bin/env python3
"""Check the internal links of the site.

    linkcheck.py HTMLDIR OUT.json

Every relative link must point to a page of the site and, if it has a
fragment, to an element with that id. Writes the sorted list of broken links
("page -> href") to OUT.json and prints a summary.
"""
import glob, json, os, re, sys
from html.parser import HTMLParser


class Page(HTMLParser):
    def __init__(self):
        super().__init__()
        self.ids, self.hrefs = set(), []

    def handle_starttag(self, tag, attrs):
        a = dict(attrs)
        if 'id' in a:
            self.ids.add(a['id'])
        if tag == 'a' and 'href' in a:
            self.hrefs.append(a['href'])


root, out = sys.argv[1], sys.argv[2]
pages = {}
for f in glob.glob(os.path.join(root, '**/*.html'), recursive=True):
    p = Page()
    p.feed(open(f, encoding='utf-8').read())
    pages[os.path.normpath(os.path.relpath(f, root))] = p
n = 0
broken = []
for f, p in sorted(pages.items()):
    for h in p.hrefs:
        if re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*:', h):
            continue
        n += 1
        path, _, frag = h.partition('#')
        tgt = os.path.normpath(os.path.join(os.path.dirname(f), path)) if path else f
        if tgt not in pages or (frag and frag not in pages[tgt].ids):
            broken.append(f'{f} -> {h}')
broken = sorted(set(broken))
json.dump(broken, open(out, 'w'), indent=0)
print(f'links: {len(pages)} pages, {n} internal links, {len(broken)} broken')
for b in broken:
    print('links: broken', b)
