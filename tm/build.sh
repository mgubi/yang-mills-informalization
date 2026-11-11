#!/usr/bin/env bash
# Regenerate the TeXmacs documents (tm/**/*.tm) from the Markdown sources of
# the repository, then export them to the HTML site in tm/html/.
#
#   tm/build.sh            Markdown -> .tm -> HTML, only what changed
#   tm/build.sh --no-html  Markdown -> .tm only
#   tm/build.sh --html     HTML only, from the .tm files in tm/
#   tm/build.sh --full     rebuild everything (combines with the above)
#
# Builds are incremental: tm/.build-state.json, written after every
# successful build, records what each page was built from (scripts/plan.py).
# A page is rebuilt when its Markdown, the pages its links resolve against,
# or its navigation data changed, or when its output is missing or was
# edited. Everything is rebuilt when there is no record, the set of pages
# changed, the tools changed (tm/scripts, tm/ym-outline.ts, tm/resources,
# this file, max-html, TeXmacs), or with --full. After an incremental build
# the links of the whole site are checked; a broken link that the last full
# build did not have triggers a full rebuild.
#
# The Markdown files are only read. Everything is built in a scratch folder
# ($YM_BUILD_DIR, default: a fresh temporary folder) and installed into tm/
# at the end, only if every step succeeded.
#
# Environment:
#   TEXMACS_BIN    TeXmacs Upsilon (Qt port) executable; default: searched in
#                  /Applications, ~/Applications and ~/Downloads.
#   MAX_HTML_DIR   the max-html plugin; default ~/.TeXmacs/plugins/max-html.
#   YM_BUILD_DIR   scratch folder (kept after the run if given).
#   YM_TIMEOUT     seconds allowed per TeXmacs run (default 1800).
#   YM_REPO_URL, YM_REPO_BRANCH  where links to non-page files point
#                  (default: the origin remote, branch main).

set -e
shopt -s nullglob

# portable helpers (bash 3.2 on macOS, bash 5 on Linux)
abspath() { (cd "$1" && pwd -P); }
dir_of() { case $1 in */*) printf '%s\n' "${1%/*}" ;; *) printf '.\n' ;; esac; }
# read a file of lines into the array named $1
read_lines() { local _n=$1 _l; eval "$_n=()"; while IFS= read -r _l || [[ -n $_l ]]; do [[ -n $_l ]] && eval "$_n+=(\"\$_l\")"; done < "$2"; }

here=$(abspath "$(dirname "$0")")
repo=$(dirname "$here")
scripts=$here/scripts
state=$here/.build-state.json
self=$here/$(basename "$0")
t0=$SECONDS

mode=all full=0 args=("$@")
for a in "$@"; do
  case "$a" in
    --no-html) mode=tm ;;
    --html) mode=html ;;
    --full) full=1 ;;
    *) echo "usage: $0 [--full] [--no-html|--html]" >&2; exit 2 ;;
  esac
done

# --- TeXmacs and the max-html plugin ---------------------------------------
tm_bin=${TEXMACS_BIN:-}
if [[ -z "$tm_bin" ]]; then
  for c in "/Applications/TeXmacs Upsilon Qt.app" "$HOME/Applications/TeXmacs Upsilon Qt.app" \
           "$HOME/Downloads/TeXmacs Upsilon Qt.app"; do
    if [[ -x "$c/Contents/MacOS/TeXmacs" ]]; then tm_bin="$c/Contents/MacOS/TeXmacs"; break; fi
  done
fi
[[ -n "$tm_bin" && -x "$tm_bin" ]] || { echo "TeXmacs Upsilon (Qt) not found; set TEXMACS_BIN" >&2; exit 1; }

max_html=${MAX_HTML_DIR:-$HOME/.TeXmacs/plugins/max-html}
[[ -f "$max_html/packages/max-html.ts" ]] || { echo "max-html plugin not found; set MAX_HTML_DIR" >&2; exit 1; }
max_html=$(abspath "$max_html")

# --- scratch folder and a private TeXmacs home ------------------------------
if [[ -n "${YM_BUILD_DIR:-}" ]]; then
  mkdir -p "$YM_BUILD_DIR"
  B=$(abspath "$YM_BUILD_DIR")
  rm -rf "$B/md" "$B/raw" "$B/post" "$B/stage" "$B/home" "$B/html" "$B/plan"
else
  B=$(mktemp -d "${TMPDIR:-/tmp}/ym-tm.XXXXXX")
  trap 'rm -rf "$B"' EXIT
fi
H=$B/home
mkdir -p "$H/plugins"
if [[ -e "$HOME/.TeXmacs/fonts" ]]; then ln -s "$HOME/.TeXmacs/fonts" "$H/fonts"; fi
ln -s "$max_html" "$H/plugins/max-html"

# run a Scheme expression in a headless TeXmacs, with tmio.scm loaded
tm_run() {
  local log=$1 expr=$2
  TEXMACS_HOME_PATH=$H QT_QPA_PLATFORM=offscreen QT_LOGGING_RULES='qt.qpa.*=false' \
    "$tm_bin" -headless -x "(begin (load \"$scripts/tmio.scm\") (catch #t (lambda () $expr) (lambda args (display \"YM-ERROR \") (write args) (newline))) (quit-TeXmacs))" \
    > "$log" 2>&1 &
  local pid=$! i=0
  while kill -0 $pid 2>/dev/null; do
    sleep 1; i=$((i+1))
    if (( i > ${YM_TIMEOUT:-1800} )); then kill $pid; echo "TeXmacs timed out (log: $log)" >&2; return 1; fi
  done
  wait $pid || true
  if grep -a 'YM-ERROR' "$log" >&2; then echo "errors in TeXmacs run (log: $log)" >&2; return 1; fi
}

stage=$B/stage
mkdir -p "$stage"

# --- 1. Markdown -> patched Markdown (links, anchors); plan -----------------
if [[ $mode != html ]]; then
  python3 "$scripts/prep.py" "$repo" "$B/md"
else
  mkdir -p "$B/md"
fi
tools=$(python3 "$scripts/plan.py" tools "$here" "$tm_bin" "$max_html")
python3 "$scripts/plan.py" plan "$state" "$here" "$B/md" "$mode" "$full" "$tools" "$B/plan"
kind=$(cat "$B/plan/kind")
read_lines pages "$B/plan/pages.lst"
read_lines convert "$B/plan/convert.lst"
read_lines export_ "$B/plan/export.lst"
if [[ $kind == none ]]; then
  echo "done in $((SECONDS - t0)) s"
  exit 0
fi
(( ${#pages[@]} )) || { echo "no pages found" >&2; exit 1; }

# --- 2-4. Markdown -> .tm for the pages to convert --------------------------
if (( ${#convert[@]} )); then
  mkdir -p "$B/raw" "$B/post"
  : > "$B/import.lst"; : > "$B/undump.lst"
  for t in "${convert[@]}"; do
    f=${t//\//__}; f=${f%.tm}.scm
    printf '%s\t%s\n' "$B/md/${t%.tm}.md" "$B/raw/$f" >> "$B/import.lst"
    printf '%s\t%s\n' "$B/post/$f" "$stage/$t" >> "$B/undump.lst"
    mkdir -p "$stage/$(dir_of "$t")"
  done
  echo "import: ${#convert[@]} pages"
  tm_run "$B/import.log" "(ym-import-all \"$B/import.lst\")"
  python3 "$scripts/post.py" "$B/md/pages.json" "$B/raw" "$B/post" "$B/plan/convert.lst"
  tm_run "$B/undump.log" "(ym-undump-all \"$B/undump.lst\")"
  for t in "${convert[@]}"; do
    [[ -s "$stage/$t" ]] || { echo "document not written: $t" >&2; exit 1; }
  done
fi
# pages exported but not converted: their current .tm
for t in ${export_[@]+"${export_[@]}"}; do
  if [[ ! -f "$stage/$t" ]]; then
    [[ -f "$here/$t" ]] || { echo "missing $here/$t (run with --full)" >&2; exit 1; }
    mkdir -p "$stage/$(dir_of "$t")"; cp "$here/$t" "$stage/$t"
  fi
done
work=()
while IFS= read -r l; do [[ -n $l ]] && work+=("$l"); done < <(printf '%s\n' ${convert[@]+"${convert[@]}"} ${export_[@]+"${export_[@]}"} | awk '!seen[$0]++')
# the style package next to the documents of every folder (TeXmacs does not
# resolve relative paths such as ../../ym-outline in the style tuple)
for p in ${work[@]+"${work[@]}"}; do cp "$here/ym-outline.ts" "$stage/$(dir_of "$p")/"; done

# check: tags that the style does not define (primitives excepted)
if (( ${#convert[@]} )); then
  : > "$B/check.lst"
  for p in "${convert[@]}"; do printf '%s\t-\n' "$stage/$p" >> "$B/check.lst"; done
  tm_run "$B/check.log" "(ym-tagcheck-all \"$B/check.lst\")"
  prims='arg|around|around\*|assign|big|cell|concat|cwith|datoms|document|frac|htab|long-arrow|macro|mid|next-line|no-break|repeat|row|rprime|rsub|rsup|space|sqrt|table|tformat|twith|vspace|vspace\*|with|wide|wide\*|left|right|tabular|lsub|lsup|rsup|neg|tree|op|line-break|new-line|image|tuple|value|if|equal|unequal|or|and|not|merge|quote|compound|hlink|label|reference|move|resize|hspace|surround'
  undef=$(grep -a '^YM-UNDEF' "$B/check.log" | grep -avE " ($prims)\$" || true)
  if [[ -n "$undef" ]]; then echo "warning: undefined tags:"; printf '%s\n' "$undef" | sed "s|$stage/||"; fi
fi

# --- 5. typeset (table of contents) and export to HTML ----------------------
html=$B/html
mkdir -p "$html"
if (( ${#export_[@]} )); then
  : > "$B/html.lst"
  for p in "${export_[@]}"; do
    mkdir -p "$html/$(dir_of "$p")"
    printf '%s\t%s\n' "$stage/$p" "$html/${p%.tm}.html" >> "$B/html.lst"
  done
  echo "html: ${#export_[@]} pages"
  tm_run "$B/html.log" "(ym-html-all \"$B/html.lst\")"
  for p in "${export_[@]}"; do
    [[ -s "$html/${p%.tm}.html" ]] || { echo "missing $html/${p%.tm}.html" >&2; exit 1; }
  done
fi

# --- 6. install --------------------------------------------------------------
# ids of links copied into tables of contents made reproducible
if (( ${#work[@]} )); then
  python3 "$scripts/normalize_ids.py" "${work[@]/#/$stage/}"
fi
if [[ $kind == full && $mode != html ]]; then
  # every generated document and every copy of the style in a subfolder
  find "$here" -mindepth 2 \( -name '*.tm' -o -name 'ym-outline.ts' \) \
       -not -path "$here/html/*" -not -path "$here/scripts/*" -not -path "$here/resources/*" -delete
  rm -f "$here"/*.tm
fi
if [[ $kind == full && $mode != tm ]]; then
  rm -rf "$here/html"
fi
# a copy of the style next to the documents of every folder
while IFS= read -r d; do
  [[ -z $d || $d == . ]] && continue
  mkdir -p "$here/$d"; cp "$here/ym-outline.ts" "$here/$d/ym-outline.ts"
done < <(for p in "${pages[@]}"; do dir_of "$p"; done | sort -u)
for p in ${work[@]+"${work[@]}"}; do
  mkdir -p "$here/$(dir_of "$p")"; cp "$stage/$p" "$here/$p"
done
if [[ $mode != tm ]]; then
  for p in ${export_[@]+"${export_[@]}"}; do
    mkdir -p "$here/html/$(dir_of "$p")"; cp "$html/${p%.tm}.html" "$here/html/${p%.tm}.html"
  done
  # stylesheets and scripts next to the pages of every folder
  while IFS= read -r d; do
    cp "$max_html/resources/max-html.css" "$max_html/resources/max-html.js" \
       "$here/resources/ym-outline.css" "$d/"
  done < <(find "$here/html" -type d)
fi

# --- 7. links of the whole site; record ------------------------------------
broken=-
missing_html=$(cd "$here" && for p in "${pages[@]}"; do [[ -f html/${p%.tm}.html ]] || echo x; done)
if [[ $mode != tm && -n "$missing_html" ]]; then
  echo "links: not checked, some pages have no HTML yet (run without --no-html)"
elif [[ $mode != tm ]]; then
  broken=$B/broken.json
  python3 "$scripts/linkcheck.py" "$here/html" "$broken"
  if [[ $kind == incremental ]]; then
    new=$(python3 -c '
import json, sys
old = set(json.load(open(sys.argv[1])).get("broken_links", []))
print("\n".join(sorted(set(json.load(open(sys.argv[2]))) - old)))' "$state" "$broken")
    if [[ -n "$new" ]]; then
      echo "links: broken links that the last full build did not have:"
      printf '%s\n' "$new"
      echo "build: falling back to a full rebuild"
      rm -f "$state"
      if [[ -z "${YM_BUILD_DIR:-}" ]]; then rm -rf "$B"; fi   # exec skips the EXIT trap
      exec "$self" --full "${args[@]}"
    fi
  elif [[ $(python3 -c 'import json,sys; print(len(json.load(open(sys.argv[1]))))' "$broken") != 0 ]]; then
    echo "WARNING: the site has broken links (listed above); they come from the Markdown"
  fi
fi
python3 "$scripts/plan.py" record "$state" "$here" "$B/md" "$mode" \
  "$B/plan/convert.lst" "$B/plan/export.lst" "$broken" "$tools" "$repo"
printf '%s\n' "rebuilt (${kind}): ${#convert[@]} converted, ${#export_[@]} exported: ${work[*]}" | fold -s -w 100
site=""; [[ $mode != tm ]] && site=", site in $here/html (start at html/index.html)"
echo "done in $((SECONDS - t0)) s: ${#pages[@]} documents in $here$site"
