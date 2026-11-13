<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|index.tm><ym-nav-sep><hlink|The
  theorem|statement.tm><ym-nav-sep><hlink|The proof in one
  reading|summary.tm><ym-nav-sep><hlink|Architecture|outline/index.tm><ym-nav-sep><hlink|Units|outline/units.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|FAQ|faq.tm><ym-nav-sep><hlink|Work
  items|outline/work-items.tm><ym-nav-sep><hlink|Data|data/index.tm><ym-nav-sep><hlink|Method|method.tm><ym-nav-sep><hlink|Provenance|provenance.tm><ym-nav-sep><ym-nav-here|Changes>>

  <ym-title|Changes><label|changes>

  These notes record publications and corrections that affect readers'
  understanding of the result. The <hlink|unit index|outline/units.tm>
  records current outline statuses. All Lean references concern source commit
  <hlink|<verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

  <section|2026-11-13><label|2026-11-13>

  <\itemize-minus>
    <item><strong|Third draft of the manuscript (278 pages).> An exposition
    pass on the second draft, driven by a handoff from reading experiments
    with readers new to the construction. Part I now says on its first page
    what kind of object the result is and states plainly what is not proved
    (a unique zero-energy vector does not give a spectral gap); it defines
    gauge changes, curvature, jets and the stress tensor by operations a
    reader can perform, with a pure-gauge example, the block step as a joint
    probability law, what a tag records, and the Gaussian comparison by its
    covariance. Part II gained worked paths and tables at the passages
    readers found hardest: from one protected sector to uniform closure of
    the induction, the exterior angular estimate, the weighted Ward-transfer
    error and the signed contact induction; also the identity behind
    compression and products, figures for the four-word exchange and the
    Hilbert spaces of reconstruction, and the variables and windows of the
    block integral. The effective-density constant formerly called the
    "vacuum scalar" is now the scalar normalization
    <math|v<rsub|<math-up|sc>>>; "vacuum" refers only to the reconstructed
    state. No statement changed. Every change was reviewed against the Lean
    by a second model family.
  </itemize-minus>

  <section|2026-11-12><label|2026-11-12>

  <\itemize-minus>
    <item><strong|Second draft of the manuscript (265 pages).> Revised after
    two expert human reviews, six reviewer reports and a comparison with a
    collaborator's draft. Part I is rebuilt: the result in plain words, the
    definitions needed to state the theorem, <strong|Theorem B as the main
    theorem> (p. 14), a strategy section (why the ultraviolet induction
    closes, the order of limits, how rotations are recovered, the trace law,
    the operator product expansion), then the principal statements with proof
    ideas. The literal formal statement (Theorem A) and the formal-interface
    conventions are in Section 8, at the end of Part I. Part II gained worked
    examples (the curvature square; two-field OPE; nested collisions),
    extracted lemmas for the decisive steps, and figures; the proof of the
    one-mark step (Lemma 14.5 of the first draft) was corrected (wrapping
    terms stay in the regular remainder, as in the Lean). Every changed
    statement was checked against the Lean; the <hlink|correspondence
    table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/manuscript/correspondence.tsv>
    is published.
  </itemize-minus>

  <section|2026-11-11><label|2026-11-11>

  <\itemize-minus>
    <item><strong|Manuscript revised after an independent review.> Three
    referees read the whole first draft; every suggestion was adjudicated
    against the text and the Lean before being applied, and the changes were
    checked (in the ultraviolet sections this filled gaps from the Lean: a
    single-valued step map, convergence of the free forms, the leading map of
    the marked expansion, the block-to-fine comparison, the torus
    localization). Three rounds of cross-section checks matched every
    citation between sections with the statement it cites; a typographic pass
    covered every page. 241 pages.

    <item><strong|First draft of the manuscript.> The
    <hlink|manuscript|manuscript/index.tm> now has a complete first draft
    (<hlink|PDF|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/manuscript/main.pdf>,
    226 pages): Part I (theorem, principal statements, deduction) and Part II
    (all proofs, Sections 10\U19), each section through its review cycle.
    Revisions continue.

    <item><strong|How the manuscript is written.> A detailed account of the
    writing process \V statements first, roles, the review cycle, the
    records, what it has caught and what it does not establish \V in
    <hlink|manuscript/PROCESS.md|manuscript/PROCESS.tm>, linked from this
    page and the manuscript page. Part I of the manuscript has completed its
    review cycle; the first two Part II sections (C and F) are drafted and
    under re-check.

    <item><strong|The manuscript joins this repository.> It is now in
    <hlink|manuscript/|manuscript/index.tm>, as level 5, the full proof
    (under construction); the separate repository is archived.

    <item><strong|Outlines condensed.> Each unit page now shows an outline of
    three to ten pages, condensed from the unit's detailed notes and checked
    against them sentence by sentence; the full notes are on a separate page
    per unit and in their own <hlink|PDF|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/pdf/yang-mills-detailed-notes.pdf>.

    <item><strong|All unit outlines edited; one PDF.> All thirty-two outlines
    have been through the three review rounds. The summary, the architecture
    and the outlines are available as one
    <hlink|PDF|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/pdf/yang-mills-outline.pdf>.

    <item><strong|Where the ideas come from.> A <hlink|provenance
    analysis|provenance.tm>: which parts of the proof follow Balaban's
    programme, which follow OpenAI's 2026 papers on two-dimensional sigma
    models, which are standard, and which appear new.

    <item><strong|Reading aids.> A <hlink|FAQ|faq.tm>; a guide in the
    <hlink|statement|statement.tm> from each clause of the theorem to the
    units that explain it; <hlink|notes on the data tables|data/index.tm>; a
    short entrance and navigation on every unit page, with code dependencies
    labelled as such.

    <item><strong|Statement published.> The <hlink|statement
    page|statement.tm> gives the formal public theorem, its mathematical
    transcription, additional conclusions of the construction and explicit
    nonclaims. It distinguishes the assessment document's date, 10 November,
    from publication with the source on 11 November.

    <item><strong|Summary published and corrected.> The
    <hlink|overview|summary.tm> explains the whole argument. The selected
    phase is chosen only for a one-dimensional ground-state space; no
    additional trace condition is used in that choice. No mass gap is proved,
    and no gaplessness result is asserted.

    <item><strong|Unit outlines published.> All thirty-two <hlink|unit
    pages|outline/units.tm> are available. Their review has three rounds:
    draft, comparison and rewriting against the Lean, then further
    mathematical checking and editing. The index shows the round reached by
    each unit; the local limitations remain part of the account.

    <item><strong|Dependency graph rebuilt from compiled Lean.> The graph now
    includes references in elaborated types and proofs, including implicit
    references missed by the earlier source-text graph. <hlink|Method and
    comparison scope|method.tm#1-the-dependency-graph> distinguish the
    seventeen verification roots, unit allocation and mathematical
    prerequisites.

    <item><strong|Compiled build released.> The <hlink|compiled Lean
    release|https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e>
    provides project files for exploring the fixed source. <hlink|Build
    guidance|method.tm#source-compilation-and-kernel-checking> separates
    loading these files from rebuilding and replaying the formal proof.

    <item><strong|Manuscript started in public.> A complete account is being
    written at <hlink|manuscript/|manuscript/index.tm>. It is under
    construction.

    <item><strong|Reader-review corrections.> Added a
    <hlink|clause-to-explanation guide|statement.tm#clause-to-explanation-guide>,
    an <hlink|FAQ and evidence guide|faq.tm>, and <hlink|citation
    guidance|index.tm#how-to-cite>. Clarified that the trace asymptotic
    concerns a selected-phase two-point function on the time axis, and
    preserved the unique vacuum of the selected relativistic theory.
    Distinguished the main Wilson family from the alternative construction in
    III.13, updated the fixed-volume convergence explanation, and corrected
    the reference-coupling formula in the
    <hlink|glossary|glossary.tm#ym-rg-calendar-hatbeta>.
  </itemize-minus>

  <hlink|Repository|index.tm> <ym-middot> <hlink|Citation
  metadata|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/CITATION.cff>
  <ym-middot> <hlink|Report a correction|https://github.com/scottnarmstrong/yang-mills-informalization/issues>
</body>

<\initial>
  <\collection>
    <associate|html-title|Changes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|2026-11-11|<tuple|3|1>>
    <associate|2026-11-12|<tuple|2|1>>
    <associate|2026-11-13|<tuple|1|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|changes|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2026-11-13>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2026-11-12>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2026-11-11>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>