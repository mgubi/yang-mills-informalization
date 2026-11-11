<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<ym-nav-here|Home><ym-nav-sep><hlink|The
  theorem|statement.tm><ym-nav-sep><hlink|The proof in one
  reading|summary.tm><ym-nav-sep><hlink|Architecture|outline/index.tm><ym-nav-sep><hlink|Units|outline/units.tm><ym-nav-sep><hlink|Glossary|glossary.tm><ym-nav-sep><hlink|FAQ|faq.tm><ym-nav-sep><hlink|Work
  items|outline/work-items.tm><ym-nav-sep><hlink|Data|data/index.tm><ym-nav-sep><hlink|Method|method.tm><ym-nav-sep><hlink|Provenance|provenance.tm><ym-nav-sep><hlink|Changes|CHANGELOG.tm>>

  <ym-title|Yang\UMills informalization><label|yangmills-informalization>

  <\table-of-contents|toc>
    <with|par-left|2tab|<with|font-size|0.92|<locus|<id|%1-1>|<link|hyperlink|<id|%1-1>|<url|provenance.tm>>|Where
    do the ideas come from?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1>>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The proof at
    five levels of detail> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|In
    collaboration with <with|font-shape|italic|Humanise Yang\UMills>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The theorem, in
    brief> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The proof at a
    glance> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|How the map was
    made> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Status>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Compiled Lean
    files> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|How to cite>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|License>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>
  </table-of-contents>

  <strong|A map of OpenAI's Lean proof of the construction of
  four-dimensional Yang\UMills theory, and a natural-language outline built
  from it.>

  In October 2026 OpenAI announced a proof, formalized in Lean 4, that
  four-dimensional quantum Yang\UMills theory can be constructed as a scaling
  limit of Wilson lattice gauge theory. On 11 November 2026 the Lean source
  (<hlink|<verbatim|OpenAI-YM-20261028>|https://github.com/yang-mills-group/OpenAI-YM-20261028>)
  was released.

  The source is about one million lines of Lean in 9,477 files. No informal
  proof accompanies it. The code uses arbitrary nicknames for its objects
  (<verbatim|Treasury>, <verbatim|Jewel>, <verbatim|Sheet>,
  <verbatim|sails>\<ldots\>), and its folders record the history of its
  development rather than its mathematical structure.

  This repository is an attempt to make that proof readable. Using AI agents,
  we:

  <\enumerate>
    <item><strong|map> the proof: we compute its dependency graph from the
    main theorem down, and divide it into eight parts and thirty-two units;

    <item><strong|outline> it in natural language, at several levels of
    detail, from a short account of the whole proof down to an outline of
    each unit with every statement linked to the Lean;

    <item><strong|write> a complete natural-language account of the proof on
    that skeleton: a <hlink|manuscript|https://github.com/scottnarmstrong/yang-mills-informalization/tree/main/manuscript>,
    being written in public (under construction).
  </enumerate>

  The outline is a rough draft written by machines. Its purpose is to be
  checked, corrected and rewritten by people.

  <\quotation>
    <subsubsection|<hlink|Where do the ideas come from?|provenance.tm>>

    A component-by-component analysis of which parts of the proof follow
    Balaban's programme for lattice gauge theories, which follow OpenAI's
    2026 papers on two-dimensional sigma models, which come from other
    constructive work (Gaw¦dzki\UKupiainen, Brydges\UYau,
    Magnen\URivasseau\USénéor), which are standard, and which appear new,
    with the evidence on both sides. <strong|<hlink|Read the analysis
    \<rightarrow\>|provenance.tm>>
  </quotation>

  <section|The proof at five levels of detail><label|the-proof-at-five-levels-of-detail>

  The repository presents the same proof at five levels of detail. Each level
  links down to the next, and everything from level 3 down is linked to the
  exact lines of the Lean source. Start at the top and go down as far as you
  need.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|level>>|<cell|>|<cell|<strong|what
  you get>>>|<row|<cell|<strong|1>>|<cell|<hlink|<strong|The main
  theorem>|statement.tm>>|<cell|What is proved: the Lean statement verbatim,
  a commentary in words, and the full statement in ordinary mathematics, with
  what is and is not claimed.>>|<row|<cell|<strong|2>>|<cell|<hlink|<strong|The
  proof in one reading>|summary.tm>>|<cell|A high-level account of the whole
  proof: the strategy, the key mechanism of each part, what is new, where the
  difficulty lies.>>|<row|<cell|<strong|3>>|<cell|<hlink|<strong|The
  architecture>|outline/index.tm>>|<cell|The eight parts of the proof, from
  the lattice setting through the renormalization group to the identification
  as Yang\UMills; what each part hands to the next; the interface between the
  ultraviolet construction and the infinite-volume
  limit.>>|<row|<cell|<strong|4>>|<cell|<hlink|<strong|The
  units>|outline/units.tm>>|<cell|The proof divided into thirty-two units,
  mathematically coherent pieces grouped by part. Each unit has its own page
  with its <strong|outline> (about three to ten pages: the propositions it
  proves, what it uses, the strategy, the main steps), a link to its
  <strong|detailed notes> (the full account, with a proof sketch for every
  step), and its <strong|Lean map>: the source and the key statements in
  plain language, each linked to its exact lines. In all, 989 key statements
  cover the 413,000 lines of source attributed to the
  units.>>|<row|<cell|<strong|5>>|<cell|<hlink|<strong|The full
  proof>|https://github.com/scottnarmstrong/yang-mills-informalization/tree/main/manuscript>
  <em|(under construction)>>|<cell|A complete manuscript: Part I, the theorem
  and the architecture of its proof (about 35 pages), and Part II, the proofs
  (about 150 pages), written for a mathematician in constructive field theory
  or probability. Sections appear as they are written and are revised as they
  are checked against the Lean.>>>>>

  <strong|All in one PDF.> Levels 2\U4 \V the proof in one reading, the
  architecture and the thirty-two unit outlines \V as a single
  <hlink|PDF|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/pdf/yang-mills-outline.pdf>
  (164 pages; <hlink|LaTeX source|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/pdf/yang-mills-outline.tex>).
  The detailed notes of all units are a separate
  <hlink|PDF|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/pdf/yang-mills-detailed-notes.pdf>
  (595 pages). Links to the Lean point to the exact lines, as on the web
  pages.

  <strong|Reference material>, used at every level:

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<hlink|<strong|Where
  the ideas come from>|provenance.tm>>|<cell|Which parts of the proof follow
  Balaban's programme, which follow OpenAI's 2026 papers on two-dimensional
  sigma models, which are standard, and which appear new; component by
  component, with the evidence on both sides.>>|<row|<cell|<hlink|<strong|Glossary>|glossary.tm>>|<cell|The
  code's nicknames (<verbatim|Treasury>, <verbatim|Jewel>, <verbatim|Sheet>,
  \<ldots\>) translated into mathematics.>>|<row|<cell|<hlink|<strong|The
  work items>|outline/work-items.tm>>|<cell|The code's own decomposition of
  the limit theory into about one hundred stated obligations, each with what
  it proves.>>|<row|<cell|<hlink|<strong|How this was
  made>|method.tm>>|<cell|Method, checks against OpenAI's compiled record,
  the review rounds, and how far each level can be
  trusted.>>|<row|<cell|<hlink|<strong|FAQ and evidence
  guide>|faq.tm>>|<cell|Questions about the result, its limits and what each
  check establishes.>>|<row|<cell|<hlink|<strong|Changes>|CHANGELOG.tm>>|<cell|Publications,
  corrections and changes to the mathematical
  account.>>|<row|<cell|<hlink|<strong|Data>|data/index.tm>>|<cell|Tables of
  the units, the unit of every declaration, and the key statements, with
  links.>>>>>

  The exact statement and the unit outlines have different review scopes.
  Each unit displays its current status and remaining limitations. See
  <hlink|how the map was made and what was checked|method.tm>.

  All links to Lean point to the fixed commit
  <hlink|<verbatim|3456e5e>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>
  of the released source.

  <section|In collaboration with <em|Humanise
  Yang\UMills>><label|in-collaboration-with-humanise-yangmills>

  This project is carried out in collaboration with Martin Hairer's
  <hlink|<strong|humanise-yang-mills>|https://github.com/hairer/humanise-yang-mills>,
  a crowd-sourced effort to turn the Lean formalization into a human-readable
  monograph whose statements and arguments can be traced to a fixed version
  of the code.

  The map, the units, the glossary and the links collected here are meant as
  input to that effort: a first pass at its "start at the final theorem and
  work backwards to a graph of mathematical results".

  <section|The theorem, in brief><label|the-theorem-in-brief>

  For every compact matrix group G whose Lie algebra is simple and nonabelian
  (for instance SU(N), N \<geqslant\> 2), the Lean proof constructs the
  following.

  <\itemize-minus>
    <item><strong|A family of lattice theories.> A family of Wilson lattice
    gauge theories on four-dimensional tori, with lattice spacings a
    \<rightarrow\> 0 and couplings \<beta\> with \<beta\> / log(1/a)
    converging to a positive constant. The public statement leaves the
    constant unspecified. The construction gives the asymptotic-freedom value
    11 C_G / (24\<pi\>\<twosuperior\>), where C_G is the Casimir constant.

    <item><strong|Local observables.> Renormalized lattice versions of all
    gauge-invariant local polynomials in the curvature and its covariant
    derivatives.

    <item><strong|Limits.> Their correlation functions converge: first as the
    lattice spacing tends to zero at fixed volume, along the whole sequence
    of spacings; then as the volume tends to infinity, along a subsequence
    that may be extracted from any given sequence of volumes.

    <item><strong|A quantum field theory on \<bbb-R\>\<#2074\>.> The limits
    are smooth Euclidean correlation functions on \<bbb-R\>\<#2074\> away
    from coincident points. They decompose into <em|phases>. A selected phase
    (in the detailed theorem, every phase) reconstructs to a relativistic
    quantum field theory in Minkowski space satisfying Wightman-type axioms:
    unique vacuum, positive energy, Poincaré covariance, locality.

    <item><strong|Short-distance structure.> The theory has an operator
    product expansion with error bounds. In the selected phase, the two-point
    correlation of the centered stress-tensor trace, at separation <math|r>
    along the time axis, is asymptotic to <math|3*dim
    <around|(|\<frak-g\>|)>/<around|(|\<pi\><rsup|4>*r<rsup|8>*log<rsup|2><around|(|1/r|)>|)>>.
    This excludes the finite Wick-type free-field profiles specified in the
    <hlink|exact statement|statement.tm>.
  </itemize-minus>

  <strong|Not claimed:> uniqueness or subsequence-independence of the
  infinite-volume limit, clustering of the full limit, a mass gap, or
  agreement with perturbation theory to all orders.

  <section|The proof at a glance><label|the-proof-at-a-glance>

  The map divides the source into eight parts. The <hlink|data|data/index.tm>
  record the declaration assignments and size estimates; these counts should
  be distinguished from the declarations reached by the <hlink|seventeen
  verification results|method.tm#1-the-dependency-graph>.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|part>>|<cell|>|<cell|<strong|what
  it does>>|<cell|<strong|share>>>|<row|<cell|I>|<cell|Setting>|<cell|Lattice
  tori, compact gauge groups, the Wilson measure and its lattice
  symmetries.>|<cell|\<less\>1%>>|<row|<cell|II>|<cell|Data of the
  construction>|<cell|Field labels and their lattice representatives; polymer
  activities and their norms; the Wilson <em|family> of spacings, volumes and
  couplings; reflection-positive cells.>|<cell|4%>>|<row|<cell|III>|<cell|<strong|Ultraviolet
  construction>>|<cell|A Balaban-type renormalization group at fixed volume:
  block-spin steps with a gauge fixing compatible with the lattice
  symmetries, Gaussian integration and determinants, cluster expansions, a
  background field matched to the Wilson action, the flow of the coupling,
  bounds on irrelevant terms, and the order in which all constants are
  chosen. It proves bounds uniform in the volume and convergence as the
  lattice spacing tends to zero.>|<cell|<strong|70%>>>|<row|<cell|IV>|<cell|Infinite
  volume>|<cell|Extraction of a subsequence of volumes along which all
  correlations converge, from the uniform bounds and reflection positivity;
  the Euclidean axioms of the limit.>|<cell|2%>>|<row|<cell|V>|<cell|Phases
  and reconstruction>|<cell|Decomposition of the limit into phases;
  Osterwalder\USchrader reconstruction of a Wightman theory for each
  phase.>|<cell|4%>>|<row|<cell|VI>|<cell|Symmetry>|<cell|Ward identities, a
  conserved stress tensor, the rotation and boost
  actions.>|<cell|5%>>|<row|<cell|VII>|<cell|Identification as
  Yang\UMills>|<cell|Comparison with free Maxwell fields at short distance;
  the trace anomaly and non-freeness; the running coupling; the operator
  product expansion and contact extensions.>|<cell|11%>>|<row|<cell|VIII>|<cell|Assembly>|<cell|The
  main theorem.>|<cell|3%>>>>>

  <strong|The ultraviolet and infinite-volume parts meet in a short, clean
  interface.> For a fine enough lattice:

  <\itemize-minus>
    <item>every renormalized observable satisfies a chessboard
    (reflection-positivity) bound uniform in the volume;

    <item>correlation kernels at separated points are bounded uniformly in
    the volume;

    <item>at each fixed volume the kernels converge as the spacing tends to
    zero.
  </itemize-minus>

  These bounds and reflection positivity support the infinite-volume
  extraction. Reconstruction and identification also use thin-slab bounds,
  Ward identities, rotation and boost constructions, and comparison with free
  Maxwell fields. Parts IV\UVI are organised in the code itself as about
  seventy numbered <em|work items>, each stating one obligation and proving
  it in its own file. They are a ready-made skeleton for an exposition.

  <section|How the map was made><label|how-the-map-was-made>

  The dependency graph is computed from the compiled Lean: for every
  declaration, every declaration its elaborated statement and proof use,
  including the dependencies Lean inserts silently (2.26 million references).

  We compared the declarations reached from the release's seventeen named
  verification results with OpenAI's compiled record: the two sets differ by
  50 of about 74,000 declarations after auxiliary constants are attributed to
  their owners. This comparison does not check every edge or the English
  explanations; see <hlink|the exact scope|method.tm#1-the-dependency-graph>.

  The graph is then reduced in steps:

  <\itemize-minus>
    <item>lemmas used in only one proof are folded into it;

    <item>results are ranked by the size of their proofs, and the shared
    machinery is grouped;

    <item>the result is divided into units: mathematically coherent pieces,
    cut so that the dependency order is respected wherever the mathematics
    allows.
  </itemize-minus>

  Two independent AI readers read every candidate statement and judged its
  importance (main result, key result, technical lemma, bookkeeping). They
  wrote a one-sentence plain-language summary of each. Their importance
  labels had Cohen's \<kappa\> = 0.72; this measures agreement on those
  labels, not mathematical correctness. Before being applied here, each step
  was tested on an earlier OpenAI formalization (finite-time blow-up for
  Navier\UStokes) whose human-written structure is known. Details and caveats
  are in <hlink|<verbatim|method.md>|method.tm>.

  <section|Status><label|status>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|Dependency
  structure>|<cell|Computed from the compiled Lean; reachable sets for
  seventeen named results compared with OpenAI's record (<hlink|scope and
  limits|method.tm#1-the-dependency-graph>).>>|<row|<cell|Units>|<cell|Computed
  from the dependency graph, then cut along the
  mathematics.>>|<row|<cell|Plain-language summaries and
  glossary>|<cell|AI-written. Glossary readings are marked <em|certain>,
  <em|probable> or <em|tentative>; these labels do not apply to every summary
  and are separate from unit review status.>>|<row|<cell|Precise statement of
  the main theorem>|<cell|<hlink|Published|statement.tm>: the public theorem
  compared definition by definition with the Lean. Some additional
  construction clauses remain summarized; see <hlink|review
  scope|method.tm#statement-and-explanation-checks>.>>|<row|<cell|Unit
  outlines>|<cell|All 32 are published; each is marked <em|draft>,
  <em|checked> or <em|edited>. See the <hlink|status
  meanings|method.tm#unit-outline-status> and each unit's limitations.>>>>>

  <hlink|Report a correction|https://github.com/scottnarmstrong/yang-mills-informalization/issues>:
  include the page and heading, quote the sentence, and give a proposed
  correction or a Lean source link.

  <section|Compiled Lean files><label|compiled-lean-files>

  To load the pinned Lean source with precompiled project files, download the
  <hlink|compiled build of commit <verbatim|3456e5e>|https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e>.
  The commands below check the download checksum and reuse the compiled
  files; they do not rebuild the proof from source:

  <\shell-code>
    git clone https://github.com/yang-mills-group/OpenAI-YM-20261028 && cd
    OpenAI-YM-20261028

    git checkout 3456e5e75cf8d4cd558955a5c7638fba2d68f464

    lake exe cache get \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #
    Mathlib, from the official cache

    gh release download lean-build-3456e5e -R
    scottnarmstrong/yang-mills-informalization -p 'ym-build-*' -p SHA256SUMS

    cat ym-build-3456e5e.tgz.part0 ym-build-3456e5e.tgz.part1 \<gtr\>
    ym-build-3456e5e.tgz && sha256sum -c SHA256SUMS

    lake unpack ym-build-3456e5e.tgz

    lake build WilsonReference WilsonConstruction \ \ \ \ \ \ \ # all targets
    up to date: nothing is recompiled
  </shell-code>

  The archive is 2.2 GB, in two parts, and unpacks to 8.8 GB. The
  <hlink|release notes|https://github.com/scottnarmstrong/yang-mills-informalization/releases/tag/lean-build-3456e5e>
  also give a download with <verbatim|curl>.

  <section|How to cite><label|how-to-cite>

  Use the metadata in <hlink|CITATION.cff|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/CITATION.cff>.
  Include the revision of this repository you consulted, the unit and result
  identifiers when relevant, and the fixed Lean source commit
  <hlink|<verbatim|3456e5e75cf8d4cd558955a5c7638fba2d68f464>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.
  The citation describes this map and outline; cite the Lean source
  separately when referring to the formal proof.

  <section|License><label|license>

  This repository is licensed under the <hlink|Apache License
  2.0|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/LICENSE>.
  The Lean source it describes is \<copyright\> OpenAI, also released under
  the Apache License 2.0; see the <hlink|source
  repository|https://github.com/yang-mills-group/OpenAI-YM-20261028>.
</body>

<\initial>
  <\collection>
    <associate|html-title|Yang\UMills informalization \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9|7>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-3|<tuple|2|3>>
    <associate|auto-4|<tuple|3|3>>
    <associate|auto-5|<tuple|4|4>>
    <associate|auto-6|<tuple|5|5>>
    <associate|auto-7|<tuple|6|6>>
    <associate|auto-8|<tuple|7|6>>
    <associate|auto-9|<tuple|8|6>>
    <associate|compiled-lean-files|<tuple|7|6>>
    <associate|how-the-map-was-made|<tuple|5|5>>
    <associate|how-to-cite|<tuple|8|6>>
    <associate|in-collaboration-with-humanise-yangmills|<tuple|2|3>>
    <associate|license|<tuple|9|7>>
    <associate|status|<tuple|6|6>>
    <associate|the-proof-at-a-glance|<tuple|4|4>>
    <associate|the-proof-at-five-levels-of-detail|<tuple|1|2>>
    <associate|the-theorem-in-brief|<tuple|3|3>>
    <associate|yangmills-informalization|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|2tab>|<with|font-size|<quote|0.92>|<locus|<id|%1-1>|<link|hyperlink|<id|%1-1>|<url|provenance.tm>>|Where
      do the ideas come from?> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      proof at five levels of detail> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|In
      collaboration with <with|font-shape|<quote|italic>|Humanise
      Yang\UMills>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      theorem, in brief> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      proof at a glance> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      the map was made> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Status>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Compiled
      Lean files> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|How
      to cite> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|License>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>