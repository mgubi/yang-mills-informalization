#!/usr/bin/env python3
"""Every \\label of the LaTeX manuscript must become an anchor of its HTML page.

    labelcheck.py META.json PAGE.html

META.json is written by tex_prep.py ("labels": the \\label keys of the
document body). Exits with status 1, naming the labels without an element
id="label" in PAGE.html, whether or not anything refers to them: a lost
label means lost content (an undefined block whose body the exporter drops)
or a lost equation number.
"""
import json, sys
from html.parser import HTMLParser


class Ids(HTMLParser):
    def __init__(self):
        super().__init__()
        self.ids = set()

    def handle_starttag(self, tag, attrs):
        for k, v in attrs:
            if k in ('id', 'name') and v:
                self.ids.add(v)


labels = json.load(open(sys.argv[1], encoding='utf-8')).get('labels', [])
p = Ids()
p.feed(open(sys.argv[2], encoding='utf-8').read())
missing = [l for l in labels if l not in p.ids]
print(f'labels: {len(labels)} in the LaTeX source, {len(labels) - len(missing)} anchors in the HTML')
if missing:
    print('error: labels of the LaTeX source without an anchor in the HTML:', file=sys.stderr)
    for l in missing:
        print('  ' + l, file=sys.stderr)
    sys.exit(1)
