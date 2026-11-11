"""Read and write TeXmacs strees written by tmio.scm (Guile `write` for
strings, so control characters appear as \\xHH; escapes).

A node is a Python str (a TeXmacs string: Cork encoded, kept as latin-1 code
points) or a list [label, child, ...]."""
import re


def parse(s):
    i, n = 0, len(s)
    stack = [[]]
    while i < n:
        c = s[i]
        if c == '(':
            stack.append([]); i += 1
        elif c == ')':
            node = stack.pop(); stack[-1].append(node); i += 1
        elif c == '"':
            j = i + 1; buf = []
            while True:
                d = s[j]
                if d == '\\':
                    e = s[j + 1]
                    if e == 'x':
                        m = re.compile(r'[0-9a-fA-F]+;').match(s, j + 2)
                        if m:   # Guile 2/3: \x16;
                            buf.append(chr(int(m.group(0)[:-1], 16))); j = m.end()
                        else:   # Guile 1.8: \x16
                            buf.append(chr(int(s[j + 2:j + 4], 16))); j += 4
                    else:
                        buf.append({'n': '\n', 't': '\t', 'r': '\r', '"': '"', '\\': '\\',
                                    '0': '\0', 'a': '\a', 'f': '\f', 'v': '\v',
                                    'b': '\b'}.get(e, e)); j += 2
                elif d == '"':
                    break
                else:
                    buf.append(d); j += 1
            stack[-1].append(Str(''.join(buf))); i = j + 1
        elif c in ' \t\n\r':
            i += 1
        else:
            j = i
            while j < n and s[j] not in ' \t\n\r()"':
                j += 1
            stack[-1].append(Sym(s[i:j])); i = j
    return stack[0][0]


class Str(str):
    pass


class Sym(str):
    pass


def to_tree(x):
    if isinstance(x, list):
        return [str(x[0])] + [to_tree(y) for y in x[1:]]
    return str(x)


def load(path):
    return to_tree(parse(open(path, encoding='latin-1', newline='').read()))


def _q(s):
    out = ['"']
    for ch in s:
        o = ord(ch)
        if ch == '\\':
            out.append('\\\\')
        elif ch == '"':
            out.append('\\"')
        elif o < 0x20 or o == 0x7f:
            out.append('\\x%x;' % o)
        else:
            out.append(ch)
    out.append('"')
    return ''.join(out)


def _w(x, out):
    if isinstance(x, list):
        out.append('(' + x[0])
        for y in x[1:]:
            out.append(' '); _w(y, out)
        out.append(')')
    else:
        out.append(_q(x))


def dump(x, path):
    out = []; _w(x, out)
    open(path, 'w', encoding='latin-1', newline='').write(''.join(out))


def is_node(x, label=None):
    return isinstance(x, list) and (label is None or x[0] == label)


def text_of(x):
    if isinstance(x, list):
        return ''.join(text_of(y) for y in x[1:])
    return x
