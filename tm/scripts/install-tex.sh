#!/usr/bin/env bash
# Install a minimal TeX Live (TinyTeX) with what the TikZ pictures of the
# manuscript need (latex, dvisvgm, pgf, standalone), for figures.py, which
# runs this only when a picture is missing from the committed cache (CI:
# YM_TEX_INSTALL=tm/scripts/install-tex.sh).
#
# TinyTeX comes from its GitHub releases (rstudio/tinytex-releases; the
# assets are named TinyTeX-1-<platform>-<version>.tar.xz), the packages from
# CTAN with tlmgr. The last line of the output is the bin directory.
#
#   YM_TEX_DIR   where to install (default $RUNNER_TEMP/tinytex or $TMPDIR/tinytex)
set -eo pipefail

dir=${YM_TEX_DIR:-${RUNNER_TEMP:-${TMPDIR:-/tmp}}/tinytex}
case "$(uname -s)-$(uname -m)" in
  Linux-x86_64)  plat=linux-x86_64 ;;
  Linux-aarch64) plat=linux-arm64 ;;
  Darwin-*)      plat=darwin ;;
  *) echo "install-tex: unsupported platform $(uname -s)-$(uname -m)" >&2; exit 1 ;;
esac

if ! ls "$dir"/.TinyTeX/bin/*/tlmgr >/dev/null 2>&1; then
  mkdir -p "$dir"
  tag=$(curl -fsSL https://api.github.com/repos/rstudio/tinytex-releases/releases/latest \
        | python3 -c 'import json,sys; print(json.load(sys.stdin)["tag_name"])')
  url=https://github.com/rstudio/tinytex-releases/releases/download/$tag/TinyTeX-1-$plat-$tag.tar.xz
  echo "install-tex: $url" >&2
  curl -fsSL --retry 3 "$url" | tar -xJ -C "$dir"
fi
bin=$(dirname "$(ls "$dir"/.TinyTeX/bin/*/tlmgr | head -1)")
export PATH=$bin:$PATH

need=()
kpsewhich tikz.sty >/dev/null || need+=(pgf)
kpsewhich standalone.cls >/dev/null || need+=(standalone)
kpsewhich xcolor.sty >/dev/null || need+=(xcolor)
kpsewhich mathtools.sty >/dev/null || need+=(mathtools)
kpsewhich amssymb.sty >/dev/null || need+=(amsfonts)
[[ -x $bin/dvisvgm ]] || need+=(dvisvgm)
if (( ${#need[@]} )); then
  # the TinyTeX release can be older than its package repository, and tlmgr
  # then refuses to install anything until it has updated itself
  echo "install-tex: tlmgr update --self" >&2
  tlmgr update --self >&2
  echo "install-tex: tlmgr install ${need[*]}" >&2
  tlmgr install "${need[@]}" >&2
fi
[[ -x $bin/latex && -x $bin/dvisvgm ]] || { echo "install-tex: latex or dvisvgm missing" >&2; exit 1; }
echo "$bin"
