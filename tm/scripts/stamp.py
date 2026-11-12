#!/usr/bin/env python3
"""Put a note at the top of the home page (html/index.html) naming the
revision of the source repository the site was built from, with a link to
the commit on GitHub.

    stamp.py INDEX_HTML REPO_URL COMMIT DATE

Idempotent: an existing note is replaced, so that an incremental build that
does not re-export index.html still gets the current revision.
"""
import html
import re
import sys

page, url, commit, date = sys.argv[1:5]
s = open(page, encoding='utf-8').read()
s = re.sub(r'\n?\s*<div class="ym-revision">.*?</div>', '', s, flags=re.S)
note = ('\n    <div class="ym-revision">This site is generated from revision '
        f'<a href="{html.escape(url)}/commit/{commit}"><code>{commit[:7]}</code></a> '
        f'({html.escape(date)}) of the '
        f'<a href="{html.escape(url)}">source repository</a>.</div>')
m = re.search(r'<div class="ym-nav">.*?</div>', s, flags=re.S)
if m:
    s = s[:m.end()] + note + s[m.end():]
else:
    m = re.search(r'<body[^>]*>', s)
    if not m:
        raise SystemExit(f'stamp: no <body> in {page}')
    s = s[:m.end()] + note + s[m.end():]
open(page, 'w', encoding='utf-8').write(s)
print(f'stamp: home page names revision {commit[:7]} ({date})')
