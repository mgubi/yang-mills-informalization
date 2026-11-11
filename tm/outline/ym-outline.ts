<TeXmacs|2.1.5>

<style|source>

<\body>
  <\active*>
    <\src-title>
      <src-package|ym-outline|1.0>

      <src-purpose|Style of the TeXmacs version of the Yang-Mills
      informalization outline: page title, navigation bars and their HTML
      renderings. The documents are generated from the Markdown sources by
      tm/build.sh.>
    </src-title>
  </active*>

  <use-package|max-html>

  <\active*>
    <\src-comment>
      Typography: TeX Gyre Pagella for text and formulas, as the HTML pages
      (max-html.css); headings and strong text in dark red. A continuous
      page on screen.
    </src-comment>
  </active*>

  <assign|font|TeX Gyre Pagella>

  <assign|math-font|TeX Gyre Pagella>

  <assign|font-base-size|11>

  <assign|strong-color|#7a1f1f>

  <assign|ym-grey|#6b6b6b>

  <assign|page-medium|papyrus>

  <assign|par-mode|left>

  <assign|par-par-sep|0.5fn>

  <\active*>
    <\src-comment>
      Markdown headings carry their own numbers: no automatic numbers.
    </src-comment>
  </active*>

  <assign|section-display-numbers|<macro|false>>

  <assign|subsection-display-numbers|<macro|false>>

  <assign|subsubsection-display-numbers|<macro|false>>

  <assign|paragraph-display-numbers|<macro|false>>

  <assign|subparagraph-display-numbers|<macro|false>>

  <\active*>
    <\src-comment>
      The page title (the level-1 heading of the Markdown page). It is not
      a section, so that it stays out of the table of contents; in HTML it
      is the h1 of the page.
    </src-comment>
  </active*>

  <assign|ym-title|<\macro|body>
    <\with|par-mode|left|par-hyphen|professional>
      <vspace*|0.5fn><with|font-size|1.68|font-series|bold|color|<value|strong-color>|<arg|body>><vspace|1fn>
    </with>
  </macro>>

  <assign|tmhtml-ym-title|<macro|body|<html-tag|h1|<arg|body>>>>

  <\active*>
    <\src-comment>
      Navigation. ym-nav: the links to the main pages, at the top of every
      page (ym-nav-here marks the current page, ym-nav-sep separates the
      links); ym-unit-nav: previous unit, part, next unit.
    </src-comment>
  </active*>

  <assign|ym-middot|<macro|<with|mode|math|\<cdot\>>>>

  <assign|tmhtml-ym-middot|<macro|\<centerdot\>>>

  <assign|ym-nav-sep|<macro|<space|0.5em><with|color|<value|ym-grey>|<ym-middot>><space|0.5em>>>

  <assign|tmhtml-ym-nav-sep|<macro|<html-class|ym-sep|\<centerdot\>>>>

  <assign|ym-nav-here|<macro|body|<with|font-series|bold|<arg|body>>>>

  <assign|tmhtml-ym-nav-here|<macro|body|<html-class|ym-here|<arg|body>>>>

  <assign|ym-nav|<\macro|body>
    <\with|font-size|0.84|par-mode|left|par-par-sep|0.2fn>
      <arg|body>
    </with>
  </macro>>

  <assign|tmhtml-ym-nav|<macro|body|<html-div-class|ym-nav|<arg|body>>>>

  <assign|ym-unit-nav|<\macro|prev|part|next>
    <\with|font-size|0.84|par-mode|left>
      <arg|prev><htab|1em><arg|part><htab|1em><arg|next>
    </with>
  </macro>>

  <assign|tmhtml-ym-unit-nav|<macro|prev|part|next|<html-div-class|ym-unit-nav|<html-class|ym-prev|<arg|prev>><html-class|ym-part|<html-tag|span|<arg|part>>><html-class|ym-next|<arg|next>>>>>

  <\active*>
    <\src-comment>
      Collapsible blocks (\<less\>details\<gtr\> in the Markdown): open in
      TeXmacs, a details element in HTML.
    </src-comment>
  </active*>

  <assign|ym-details|<\macro|summary|body>
    <strong|<arg|summary>>

    <arg|body>
  </macro>>

  <assign|tmhtml-ym-details|<macro|summary|body|<html-tag|details|<html-tag|summary|<arg|summary>><arg|body>>>>

  <\active*>
    <\src-comment>
      Code blocks (Markdown fences). In HTML they are exported as one pre
      element, so that line breaks and indentation are kept.
    </src-comment>
  </active*>

  <assign|tmhtml-lean-code|<macro|body|<verbatim|<arg|body>>>>

  <assign|tmhtml-shell-code|<macro|body|<verbatim|<arg|body>>>>

  <assign|tmhtml-verbatim-code|<macro|body|<verbatim|<arg|body>>>>

  <\active*>
    <\src-comment>
      Section headings in the colour of strong text, as in the HTML pages.
    </src-comment>
  </active*>

  <assign|sectional-normal-bold|<macro|name|<style-with|src-compact|none|<sectional-normal|<with|color|<value|strong-color>|<strong|<arg|name>>>>>>>

  <assign|sectional-short-bold|<macro|name|<style-with|src-compact|none|<sectional-short|<with|color|<value|strong-color>|<strong|<arg|name>>>>>>>

  <\active*>
    <\src-comment>
      HTML export: the stylesheet and script of the max-html plugin, then
      the collection's own stylesheet. build.sh copies them next to the
      pages of every folder.
    </src-comment>
  </active*>

  <assign|html-extra-css|<tuple|max-html.css|ym-outline.css>>

  <assign|html-extra-javascript-src|<tuple|max-html.js>>

  <\active*>
    <\src-comment>
      MathJax configuration, read before MathJax is loaded. The exporter of
      TeXmacs Upsilon writes aligned inside an equation as
      equationsbase (mgubi/texmacs#611); the fix of the max-html plugin
      does not take effect under Upsilon, so the environment is defined
      here. Backslashes are written with String.fromCharCode(92).
    </src-comment>
  </active*>

  <assign|html-extra-javascript|<tuple|var bs = String.fromCharCode(92); window.MathJax = {tex: {environments: {equationsbase: [bs + 'begin{aligned}', bs + 'end{aligned}']}, macros: {ring: [bs + 'mathring{#1}', 1]}}};>>
</body>

<\initial>
  <\collection>
    <associate|preamble|true>
  </collection>
</initial>
