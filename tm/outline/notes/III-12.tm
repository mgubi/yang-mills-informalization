<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.11 Interacting rank, Gaussian
  comparison and the stress tensor (notes)|III-11.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-12.tm>|<hlink|III.13 Alternative construction: one
  Wilson family for all labels (notes) \<rightarrow\>|III-13.tm>>

  <ym-title|III.12. Bounds uniform in the volume and convergence as the
  spacing tends to zero \V detailed notes><label|iii12-bounds-uniform-in-the-volume-and-convergence-as-the-spacing-tends-to-zero--detailed-notes>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. What this
    unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. What it
    uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Strategy>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Steps>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <with|par-left|1tab|4.1 Calculus of the chessboard budget
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Detectors, rank detection and the closure lemma
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Differences of primaries (III.12.2)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Observable transfer and coupling dependence
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Convergence in the mesh
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.12: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-12.tm>.
  </quotation>

  <hlink|Unit page|../units/III-12.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> chapter 30, <hlink|<verbatim|YM/FullVolume/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume>.
  <strong|Size:> 18,973 lines in the main-theorem closure.

  <strong|Scope.> This unit proves volume-uniform bounds and takes the
  ultraviolet limit at each fixed volume. It has three outputs:

  <\itemize-minus>
    <item>(a) Bounds on lattice correlation functions of composite
    observables and of their finite differences at separated points. The
    bounds are uniform in the volume and eventually uniform in the cutoff.

    <item>(b) Convergence of these correlation functions as
    <math|N\<to\>\<infty\>> at each fixed volume, with smooth limits.

    <item>(c) Power-series bounds on their dependence on the renormalized
    coupling. The assembly uses these.
  </itemize-minus>

  <strong|Notation.>

  <\itemize-minus>
    <item><math|N> is the mesh index. The lattice spacing is
    <math|a<rsub|N>=1/D<rsub|N>>, where <math|D<rsub|N>=\<ell\><rsub|0>*\<cdots\>*\<ell\><rsub|N-1>>
    is a product of odd block sizes.

    <item><math|p> is the volume index. <math|\<Lambda\><rsub|N,p>> is the
    torus of physical side <math|L<rsub|p>>, with <math|L<rsub|p>*D<rsub|N>>
    sites per axis. The block size <math|\<ell\><rsub|j>> and the physical
    period <math|L<rsub|p>> are different quantities.

    <item><math|m,j,k> are renormalization-group levels.
    <math|\<beta\><rsub|N,p>> is the bare inverse coupling,
    <math|\<bbb-E\><rsub|N,p>> the Wilson expectation, and
    <math|<wide|\<beta\>|^><rsub|j>> the renormalized inverse coupling at
    level <math|j>.

    <item><math|<math-up|Lab><rsub|d>> is the finite-dimensional space of
    labels of degree <math|d>. <math|O<rsub|N,p><around|(|v;o|)>> is the
    lattice representative of <math|v\<in\><math-up|Lab><rsub|d>> at the site
    <math|o> (II.1).

    <item><math|\<cal-N\><rsub|d>\<subset\><math-up|Lab><rsub|d>> is the
    equation ideal of the free Maxwell field, and
    <math|F<rsub|d>=<math-up|Lab><rsub|d>/\<cal-N\><rsub|d>>.

    <item><em|Eventually in the mesh> means: there is <math|N<rsub|0>> such
    that the statement holds for all <math|N\<geqslant\>N<rsub|0>> and all
    <math|p> (the filter <hlink|<verbatim|mesh>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13>).
    In statements of the form \Pfor all large <math|m>, eventually in the
    mesh,\Q <math|N<rsub|0>> may depend on <math|m>.

    <item>A sequence <math|w<rsub|N,p>> in a normed space has <em|sub-power
    growth> if for every <math|\<varepsilon\>\<gtr\>0>, eventually in the
    mesh, <math|<around|\<\|\|\>|w<rsub|N,p>|\<\|\|\>>\<leqslant\>a<rsub|N><rsup|-\<varepsilon\>>>
    (<hlink|<verbatim|Sluggish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38>).
    The quantity <hlink|<verbatim|flight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40>
    <math|<around|(|\<varepsilon\>|)>> equals
    <math|a<rsub|N><rsup|-\<varepsilon\>>>, because
    <hlink|<verbatim|scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>
    <math|<around|(|N|)>=log a<rsub|N><rsup|-1>>.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Definitions.>

  <\itemize-minus>
    <item>A <em|trial> <math|F> is a family of complex functions
    <math|F<rsub|N,p><around|(|o|)>> of the gauge field on
    <math|\<Lambda\><rsub|N,p>>, indexed by a site <math|o>. It is <em|local>
    if, eventually in the mesh, it is translation covariant and each
    <math|F<rsub|N,p><around|(|o|)>> is gauge invariant, measurable, bounded
    and depending only on links within <math|o+X>, for one fixed finite
    <math|X\<subset\>\<bbb-Z\><rsup|4>> (<hlink|<verbatim|Local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Stencils.lean#L20-L22>,
    <hlink|<verbatim|Stencil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29>).

    <item><em|Chessboard root at scale <math|m>.> For <math|m\<leqslant\>N>,
    <math|T<rsub|m><around|(|o|)>> is the tiling of
    <math|\<Lambda\><rsub|N,p>> by cubes of physical side <math|a<rsub|m>>
    with one cell centred at <math|o> (<hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40>).
    Let <math|G> be bounded, measurable and gauge invariant, localized in the
    central cell. Then <math|R<rsub|m><around|(|G|)>=<mid|\|>\<bbb-E\><rsub|N,p>*<big|prod><rsub|c>G<rsup|<around|(|c|)>><mid|\|><rsup|1/\<sharp\><text|cells>>>.
    Here <math|G<rsup|<around|(|c|)>>> is obtained by reflecting <math|G>
    into the cell <math|c> through the cell walls, and is complex conjugated
    after an odd number of reflections. The number of cells is
    <math|\<sharp\><text|cells>=<around|(|L<rsub|p>/a<rsub|m>|)><rsup|4>>
    (<hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>).

    <item><math|F> is <em|affordable at cost> <math|u<around|(|m,N,p|)>> if
    <math|F> is local and the following holds for all large <math|m>,
    eventually in the mesh: <math|F<rsub|N,p><around|(|0|)>> is localized in
    the central cell of <math|T<rsub|m><around|(|0|)>> and
    <math|R<rsub|m><around|(|F<rsub|N,p><around|(|0|)>|)>\<leqslant\>u<around|(|m,N,p|)>>.

    <\itemize-minus>
      <item><math|F> is <em|owed at cost> <math|v<around|(|N,p|)>> if it is
      affordable at a cost independent of <math|m>.

      <item><math|F> is <em|funded> if it is affordable at a cost
      <math|u<around|(|m|)>> independent of <math|<around|(|N,p|)>>.
    </itemize-minus>

    Lean: <hlink|<verbatim|Affords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22>,
    <hlink|<verbatim|Owed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24>,
    <hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28>.

    <item><em|Normalized differences:> <math|<around|(|\<Delta\><rsub|\<mu\>>*F|)><rsub|N,p><around|(|o|)>=a<rsub|N><rsup|-1>*<around*|(|F<rsub|N,p>*<around|(|o+e<rsub|\<mu\>>|)>-F<rsub|N,p><around|(|o|)>|)>>,
    and <math|\<Delta\><rsub|l>=\<Delta\><rsub|\<mu\><rsub|1>>*\<cdots\>*\<Delta\><rsub|\<mu\><rsub|k>>>
    for a list <math|l=<around|(|\<mu\><rsub|1>,\<ldots\>,\<mu\><rsub|k>|)>>
    of axes (<hlink|<verbatim|farther>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17>,
    <hlink|<verbatim|hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21>).

    <item>A <em|coin> of degree <math|d> is a sequence
    <math|x=<around|(|x<rsub|N,p>|)>> in <math|<math-up|Lab><rsub|d>> whose
    inverse terminal coordinates have sub-power growth
    (<hlink|<verbatim|Coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147>).
    Thus, if <math|\<tau\><rsub|d;N,p>> is the terminal coordinate
    isomorphism, <math|<around|\<\|\|\>|\<tau\><rsub|d;N,p><rsup|-1>*x<rsub|N,p>|\<\|\|\>>\<leqslant\>a<rsub|N><rsup|-\<varepsilon\>>>
    eventually for every <math|\<varepsilon\>\<gtr\>0>. Under the consistency
    conditions on the family, bounded label sequences are coins.
    <math|O<around|(|x|)>> denotes the trial
    <math|O<rsub|N,p><around|(|x<rsub|N,p>;\<cdot\>|)>>.

    <item>A <em|presentation> is, for each <math|d> and each
    <math|<around|(|N,p|)>>, an idempotent linear map <math|\<pi\><rsub|N,p>>
    on <math|<math-up|Lab><rsub|d>> (<hlink|<verbatim|Presentation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41>,
    IV.1). The kernel condition is an additional hypothesis.

    <item>For a real configuration <math|x>, write
    <math|\<alpha\><rsub|N><around|(|x|)><rsub|i*\<mu\>>=<around|\<lceil\>|x<rsub|i*\<mu\>>/a<rsub|N>|\<rceil\>>>
    for its coordinatewise ceiling address
    (<hlink|<verbatim|address>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Round.lean#L18>).
    This is the right endpoint convention. Interpolation means multilinear
    interpolation on the corresponding cubes
    (<hlink|<verbatim|interpolated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panes.lean#L52-L53>).
  </itemize-minus>

  <strong|Proposition III.12.1 (kernel bounds uniform in the volume).> Let
  <math|R> be a run (Ÿ2) for a simple gauge group <math|G>, with Wilson
  family <math|C>. Fix <math|n>, labels <math|v<rsub|i>\<in\><math-up|Lab><rsub|d<rsub|i>>>
  (<math|1\<leqslant\>i\<leqslant\>n>), a finite list <math|\<lambda\>> of
  pairs (slot <math|i>, axis <math|\<mu\>>), and <math|r\<gtr\>0>. Then there
  are <math|B\<geqslant\>0> and <math|N<rsub|0>> with the following property.
  For all <math|N\<geqslant\>N<rsub|0>>, <math|p> and integer configurations
  <math|x> satisfying <math|a<rsub|N><space|0.17em><math-up|dist><around|(|x<rsub|i>,x<rsub|j>|)>\<geqslant\>r>
  for <math|i\<ne\>j>,

  <\equation*>
    <mid|\|>\<Delta\><rsub|\<lambda\>>*<space|0.17em>\<bbb-E\><rsub|N,p>*<around*|[|O<rsub|N,p><around|(|v<rsub|1>;x<rsub|1>|)>*\<cdots\>*O<rsub|N,p><around|(|v<rsub|n>;x<rsub|n>|)>|]><mid|\|>\<leqslant\>B.
  </equation*>

  Here <math|\<Delta\><rsub|<around|(|i,\<mu\>|)>>> is the normalized forward
  difference in <math|x<rsub|i>> along <math|e<rsub|\<mu\>>>, and
  <math|<math-up|dist>> is the periodic <math|\<ell\><rsup|\<infty\>>>
  lattice distance. <math|N<rsub|0>> and <math|B> may depend on
  <math|R,n,<around|(|v<rsub|i>|)>,\<lambda\>,r>, but not on <math|p>.
  <em|Status:> theorem, for every run; the run supplies all inputs (Ÿ2).
  <em|Lean:> <hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>
  (statement), <hlink|<verbatim|gKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L15-L16>
  (the differenced kernel), <hlink|<verbatim|genuine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62>
  (theorem), <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61>
  (reduction to III.12.2).

  <strong|Proposition III.12.2 (derivative closure of the chessboard
  budget).> Let <math|R> be a run for a simple <math|G>. Let
  <math|w=<around|(|w<rsub|N,p>|)>> be a sequence in
  <math|<math-up|Lab><rsub|d>> with <math|<around|\<\|\|\>|w<rsub|N,p>|\<\|\|\>>\<leqslant\>K>
  eventually in the mesh, for some <math|K\<geqslant\>0>, and let <math|l> be
  a list of axes. Then <math|\<Delta\><rsub|l>*O<around|(|w|)>> is funded:
  for some <math|u<around|(|m|)>> and all large <math|m>, eventually in the
  mesh it is localized in the central cell and
  <math|R<rsub|m>*<around|(|\<Delta\><rsub|l>*O<around|(|w|)><rsub|N,p><around|(|0|)>|)>\<leqslant\>u<around|(|m|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Run.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33>.

  <strong|Proposition III.12.3 (closure lemma).> Fix a degree <math|d>. Let
  <math|C> be a Wilson family satisfying its consistency conditions and the
  following hypotheses:

  <\enumerate>
    <item>the centred budget (Ÿ2);

    <item>the scale-selection data of Ÿ2;

    <item>sound section data <math|V<rsub|e>> and linear automorphisms
    <math|W<rsub|e>> of the abstract labels, for every degree <math|e>,
    satisfying the section, symmetry and exact local identities described in
    Ÿ2;

    <item>a presentation <math|\<pi\>> and the full section-comparison data
    of Ÿ2, including the quantitative comparison with <math|V<rsub|e>>,
    identification of <math|ker \<pi\><rsub|N,p>> with a dressed equation
    ideal, and a bound <math|sup<rsub|N,p><around|\<\|\|\>|\<pi\><rsub|N,p>|\<\|\|\>>\<less\>\<infty\>>
    for each degree;

    <item>degree-<math|d> detector rows satisfying the placement and
    bounded-lift conditions of Lemma 4.6 and the short-distance comparison of
    Lemma 4.8 (<hlink|<verbatim|VitalRank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52>).
  </enumerate>

  Let <math|F> be a funded trial whose values
  <math|F<rsub|N,p><around|(|o|)>> are continuous functions of the gauge
  field, and let <math|l> be a list of axes. Let <math|x> be a coin of degree
  <math|d> such that <math|O<around|(|x|)>-\<Delta\><rsub|l>*F> is owed at a
  cost <math|u<rsub|N,p>\<to\>0> in the mesh. Then <math|\<Delta\><rsub|l>*F>
  is funded. <em|Status:> theorem under the stated hypotheses. For a run,
  these follow from its ties, with the detector comparison obtained from its
  short-distance estimates (Ÿ2). <em|Lean:>
  <hlink|<verbatim|improved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78>,
  <hlink|<verbatim|cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63>.

  <strong|Proposition III.12.4 (uniform rank detection).> Assume hypotheses
  1\U5 of III.12.3 and fix a list <math|l> of axes. For all large <math|k>
  and all sufficiently small <math|b\<gtr\>0> there is <math|Z\<geqslant\>0>
  such that, eventually in the mesh,

  <\equation*>
    <around|\<\|\|\>|\<pi\><rsub|N,p>*x|\<\|\|\>>\<leqslant\>Z<space|0.17em><mid|\|>\<cal-P\><rsub|k,b,l;N,p>*<around|(|\<pi\><rsub|N,p>*x|)><mid|\|><space|2em><text|for
    all >x\<in\><math-up|Lab><rsub|d>.
  </equation*>

  Here <math|\<cal-P\><rsub|k,b,l;N,p>:<math-up|Lab><rsub|d>\<to\>\<bbb-C\><rsup|J>>
  is the linear detector of Lemma 4.6: correlations with fixed partners,
  averaged successively in the directions of <math|l> over lengths between
  <math|b> and <math|2*b>. Repeated axes give repeated averages. <em|Status:>
  theorem (conditional on 1\U5). <em|Lean:>
  <hlink|<verbatim|trained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91>,
  <hlink|<verbatim|probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88>.

  <strong|Proposition III.12.5 (labels in the equation ideal give negligible
  observables).> Assume the consistency conditions on <math|C> and hypotheses
  2\U4 of III.12.3. Let <math|x> be a coin of degree <math|d> with
  <math|\<pi\><rsub|N,p>*x<rsub|N,p>=0> for all <math|<around|(|N,p|)>>. Then
  <math|O<around|(|x|)>> is owed at cost <math|a<rsub|N><rsup|1/32>>: it is
  local, and for all large <math|m>, eventually in the mesh,
  <math|R<rsub|m><around|(|O<around|(|x|)><rsub|N,p><around|(|0|)>|)>\<leqslant\>a<rsub|N><rsup|1/32>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|sweep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19>,
  <hlink|<verbatim|banked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115>.

  <strong|Proposition III.12.6 (polynomial bounds on the dependence on the
  coupling).> Let <math|R> be a run, <math|T> a
  <hlink|campaign|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27>
  for <math|R> with <hlink|pillars|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>
  <math|W>, and assume the bounds <hlink|<verbatim|Sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28>.
  Let <math|<wide|\<beta\>|\<bar\>>> be the target level-0 coupling and
  <math|w\<gtr\>0> the fan width (<hlink|<verbatim|ask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72>).
  Fix <math|p>, labels <math|V<rsub|0>> (an <math|n>-tuple) and
  <math|r\<gtr\>0>. Then there are <math|b,m\<in\>\<bbb-N\>> with
  <math|m\<geqslant\>1>, <math|B\<geqslant\>0> and
  <math|c\<in\><around|(|0,1|]>> with the following property.

  Take <math|m\<leqslant\>j\<less\>N> and <math|a\<in\><around|[|-1,1|]>>.
  Take a family <math|s\<mapsto\>F<around|(|s|)>>,
  <math|s\<in\><around|[|-1,1|]>>, of admissible campaign members, with the
  same block sequence, sections and labels, whose level-0 inverse coupling at
  <math|<around|(|N,p|)>> is <math|<wide|\<beta\>|\<bar\>>+w*<space|0.17em>a*<space|0.17em>s>.
  Use the expectation and representatives of the attached auxiliary transfer
  family; their correlations agree with those of the actual successful
  trajectory at these positive cutoffs (Lemma 4.18). Take an
  <math|r>-separated configuration <math|o> of sites of
  <math|\<Lambda\><rsub|j+1,p>>, embedded into <math|\<Lambda\><rsub|N,p>>.
  Then the correlation

  <\equation*>
    s\<longmapsto\>\<bbb-E\><rsup|F*<around|(|c*s/2|)>><rsub|N,p><around*|[|<big|prod><rsub|i>O<around|(|V<rsub|0,i>;o<rsub|i>|)>|]>,<space|2em>s\<in\><around|[|-1,1|]>,
  </equation*>

  equals <math|<big|sum><rsub|i\<geqslant\>0>P<rsub|i>*s<rsup|i>> with
  <math|<big|sum><rsub|i><around|\||P<rsub|i>|\|>\<leqslant\>B*<space|0.17em>a<rsub|j+1><rsup|-b>>.
  The constants depend only on the campaign data, <math|p>, the labels and
  <math|r>. <em|Status:> theorem, conditional on the campaign records. These
  are supplied on the main-theorem route by the assembly (VIII.1). <em|Lean:>
  <hlink|<verbatim|Face.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51>,
  <hlink|<verbatim|PaidBeam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32>,
  <hlink|<verbatim|Ray.sun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22>
  (<math|=<around|[|-1,1|]>>), <hlink|<verbatim|intervalClock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34>
  (<math|=a<rsub|j+1><rsup|-1>> at level <math|j+1>),
  <hlink|<verbatim|slash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L58>,
  <hlink|<verbatim|verso>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L65>.

  <strong|Proposition III.12.7 (Cauchy property in the mesh at fixed
  volume).> Fix a simple gauge group and one renormalization-group
  construction, with its stationary-path bounds, free amplification,
  observable-transfer bounds and common reference sections. Assume the
  uniform perturbation estimates for that construction (Ÿ2). Fix <math|p>.
  Let <math|<around|(|C<rsub|n>|)>> be families formed from histories in this
  construction at cutoffs <math|f<around|(|n|)>\<to\>\<infty\>>. Assume:

  <\itemize-minus>
    <item>(i) <hlink|<verbatim|Rising>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L19-L22>:
    each history is a selected branch from a level <math|k> on, and agrees
    with a fixed kinetic path. The stationary kinetic paths converge with a
    strict reserve in their admissible bounds. For every fixed level
    <math|i\<geqslant\>k>, the inverse couplings are Cauchy and the polymer
    activities admit Cauchy representatives in the common weighted space
    (<hlink|<verbatim|Helmet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35>).

    <item>(ii) For each label degree used below, its reference level
    <math|t<around|(|d|)>> satisfies <math|k\<leqslant\>t<around|(|d|)>> and
    <math|d+3\<leqslant\>J<around|(|t<around|(|d|)>|)>>. The transfer data
    are based at the reference section at <math|t<around|(|d|)>> and are
    obtained by composing the branch transfers of Lemma 4.16.

    <item>(iii) For every sufficiently large base level <math|r>, the
    multiscale remainder bounds hold for all sufficiently large sequence
    indices <math|n>. Their label allowances <math|\<zeta\><around|(|d,r|)>>
    are eventually positive for each degree used, and their occupancy
    allowances are at least <math|1> at every level.
  </itemize-minus>

  Fix a finite label list <math|<around|(|v<rsub|i>|)><rsub|i=1><rsup|s>> and
  a configuration <math|x\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|s>> with
  <math|x<rsub|i>-x<rsub|j>\<nin\>L<rsub|p>*\<bbb-Z\><rsup|4>> for
  <math|i\<ne\>j>. Assume that <math|x> <hlink|lies exactly on a common
  lattice|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L12>
  of some level <math|r>: <math|x=a<rsub|r>*z> for an integer configuration
  <math|z>. Then the correlations of <math|C<rsub|n>> at cutoff
  <math|f<around|(|n|)>>, evaluated at the coordinatewise ceiling lattice
  points of <math|x>, form a Cauchy sequence in <math|n>. <em|Status:>
  theorem under these hypotheses. For a run equipped with a campaign,
  pillars, fixed-level convergence data and the uniform perturbation
  estimates (Ÿ2), it applies with <math|C<rsub|n>=C> and
  <math|f<around|(|n|)>=n>. <em|Lean:> <hlink|<verbatim|Rising.cinema>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45>,
  <hlink|<verbatim|Rising.arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103>;
  run instance <hlink|<verbatim|Campaign.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38>.

  <strong|Proposition III.12.8 (positional ultraviolet limit).> Let <math|C>
  be a Wilson family and <math|e> a strictly increasing sequence of mesh
  indices. Assume:

  <\itemize-minus>
    <item>the conclusion of III.12.1 (<hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>);

    <item>the lattice correlations at coordinatewise ceiling lattice points
    are Cauchy along <math|e> at every configuration satisfying
    <math|x<rsub|i*\<mu\>>-x<rsub|j*\<mu\>>\<nin\>L<rsub|p>*\<bbb-Z\>> for
    every <math|i\<ne\>j> and every axis <math|\<mu\>>
    (<hlink|<verbatim|Purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58>).
  </itemize-minus>

  Then for every <math|p>, <math|n> and <math|v<rsub|1>,\<ldots\>,v<rsub|n>>
  there is a function <math|f> on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>,
  <math|C<rsup|\<infty\>>> on <math|<math-up|NoHit><rsub|p>=<around|{|x:x<rsub|i>-x<rsub|j>\<nin\>L<rsub|p>*\<bbb-Z\><rsup|4>*<around|(|i\<neq\>j|)>|}>>
  (<hlink|<verbatim|NoHit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26>),
  such that:

  <\itemize-minus>
    <item>(a) for every smooth compactly supported test function <math|t>
    whose support avoids collisions and lies strictly inside the centred
    period cell in every coordinate, the smeared lattice sums converge along
    <math|e> to <math|<big|int>t*f>;

    <item>(b) fix any finite list of coordinate directions (slot, axis), and
    in each direction choose integers <math|q<rsub|->,q<rsub|+>\<geqslant\>0>
    with <math|q<rsub|->+q<rsub|+>\<gtr\>0>. Use the stencil
    <math|<around|(|F*<around|(|x+q<rsub|+>*e|)>-F*<around|(|x-q<rsub|->*e|)>|)>/<around|(|<around|(|q<rsub|->+q<rsub|+>|)>*a<rsub|N>|)>>.
    If <math|g> is the corresponding iterated coordinate derivative of
    <math|f>, then:

    <\itemize-minus>
      <item>along <math|e<around|(|s<rsub|i>|)>> for every sequence
      <math|s<rsub|i>\<to\>\<infty\>>, the difference quotients at lattice
      configurations whose physical positions converge to
      <math|x\<in\><math-up|NoHit><rsub|p>> converge to
      <math|g<around|(|x|)>> (<hlink|<verbatim|Cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L55-L58>);

      <item>their multilinear interpolations converge locally uniformly on
      <math|<math-up|NoHit><rsub|p>>;

      <item><math|t*g> is integrable and the smeared sums of the differences
      converge to <math|<big|int>t*g> for every test <math|t> as in (a).
    </itemize-minus>
  </itemize-minus>

  <em|Status:> theorem under the two displayed hypotheses. For a run with a
  campaign, pillars, fixed-level convergence and uniform perturbation
  estimates, the full-sequence instance <math|e=<around|(|0,1,2,\<ldots\>|)>>
  is <hlink|<verbatim|Campaign.realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>.
  Its pointwise Cauchy hypothesis is derived from III.12.7 in
  <hlink|<verbatim|Campaign.purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44>.
  <em|Lean:> <hlink|<verbatim|PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36>,
  <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47>.
  <hlink|<verbatim|printed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L52-L57>
  is a variant along an extraction order and is not on the main-theorem
  route.

  <strong|Use in the assembly.> The record
  <hlink|<verbatim|Final.Jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149>
  is produced by <hlink|<verbatim|jewelOf17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111>.
  Its fields take the outputs of this unit:

  <\itemize-minus>
    <item>The kernel-bound conclusion is III.12.1.

    <item>The full-mesh conclusion is III.12.8 on the full sequence. This is
    (D5); through <hlink|<verbatim|from_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126>
    it gives the ordered limit with the full ultraviolet sequence, (D4).

    <item>The analytic-family conclusion uses III.12.6, through the chain of
    Ÿ4.4 ending in <hlink|<verbatim|Fan.standing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104>
    and <hlink|<verbatim|Travel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L84-L99>.
  </itemize-minus>

  <section|2. What it uses><label|2-what-it-uses>

  <strong|The run and its ties.> A <hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>
  (II.2, III.14) fixes the block sizes and numerical bounds, bare history,
  interlevel gauge maps and observable transfers. Its degree-<math|d>
  reference level satisfies <math|J<around|(|t<around|(|d|)>|)>\<geqslant\>d+3>,
  and its Wilson family satisfies the consistency conditions.

  <hlink|<verbatim|Run.again>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75>,
  proved through <hlink|<verbatim|ahead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72>
  gives an extracted hierarchy and reconstruction after refining any
  extraction order, together with <hlink|<verbatim|Run.Ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71>,
  which has these fields:

  <\itemize-minus>
    <item>The centred budget <hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>
    for the family. For every <math|d>, every <math|R\<gtr\>0> and every
    <math|\<varepsilon\>\<gtr\>0> there is <math|A\<geqslant\>0> such that,
    for every <math|m\<geqslant\>t<around|(|d|)>>, eventually in <math|N>,
    for all <math|p>, all <math|v\<in\><math-up|Lab><rsub|d>> with
    <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R> and all sites <math|o>:
    <math|O<rsub|N,p><around|(|v;o|)>> is localized in the cell of
    <math|T<rsub|m><around|(|o|)>> centred at <math|o>, and its chessboard
    root is at most <math|A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>>
    (<hlink|<verbatim|centeredBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23>).

    <item>The <hlink|scale-selection conditions|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Prior.lean#L15-L18>.

    <item>Remainder and regularity estimates for observables (III.11).

    <item>Section data <math|V<rsub|d>>, dressings <math|W<rsub|d>>
    satisfying <hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58>,
    a presentation, and <hlink|<verbatim|Hearthside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20>.

    <item>For every limit table and every degree <math|d>, detector rows
    (<hlink|<verbatim|Columns.Trials>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L53-L66>)
    with the short-distance data <hlink|<verbatim|Purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84>.
  </itemize-minus>

  Under the section hypotheses of III.12.3, the section is sound, has the
  prescribed polynomial realization and finite regularity bounds, and its
  dressing commutes with signed lattice symmetries and conjugation. Dressed
  equation labels satisfy the distant-spectator identity of Lemma 4.10.

  The <hlink|section-comparison estimates|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Canopy.lean#L30-L32>
  include cutoff-dependent automorphisms <math|A<rsub|d;N,p>> on terminal
  coordinates, auxiliary comparison columns, and a sub-power sequence
  <math|E<rsub|d><around|(|N|)>>. Eventually, uniformly in <math|p>,
  <math|A<rsub|d;N,p>> is the symmetry-averaged map determined by these
  columns and its inverse increases coefficient size by at most a factor
  <math|2>. For every comparison column and every signed or conjugated
  version, the centred root of the difference between the auxiliary section
  evaluation and the chosen section evaluation is bounded by

  <\equation*>
    C<rsub|d><around|(|m,k|)>*E<rsub|d><around|(|N|)>*a<rsub|N><rsup|1/8>.
  </equation*>

  This holds for every admissible auxiliary level <math|k\<less\>N> and
  centred scale <math|m\<leqslant\>N>; <math|C<rsub|d><around|(|m,k|)>> is
  the comparison constant from III.11. The scale-selection data choose such a
  <math|k> for each sufficiently large <math|m>. The kernel of
  <math|\<pi\><rsub|N,p>> is the image of <math|\<cal-N\><rsub|d>> under the
  dressing, threshold rescaling, terminal map and <math|A<rsub|d;N,p>>. The
  data also retain the projection symmetries and the finite-cutoff equation
  and difference comparisons needed by extraction.

  Other existence formulations are <hlink|<verbatim|Run.ramp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L55-L60>,
  <hlink|<verbatim|realized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L83-L95>,
  <hlink|<verbatim|dagger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L28-L49>,
  <hlink|<verbatim|rampant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L38-L76>,
  <hlink|<verbatim|Final.july>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164>.

  <strong|From other units.>

  <\itemize-minus>
    <item><strong|III.11.>

    <\itemize-minus>
      <item>The centred budget for the run's family is
      <hlink|<verbatim|gardena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40>,
      via <hlink|<verbatim|coastwise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Baskets.lean#L36-L67>
      and <hlink|<verbatim|tent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Balloon.lean#L22-L47>.
      The centred logarithmic root bound is eventually at most
      <math|<around|(|d+\<varepsilon\>|)>*log a<rsub|i><rsup|-1>>.

      <item>The short-distance estimates for detector lifts compare their
      cumulant polynomials with the free Maxwell profile in chessboard norm.
      The lifts are bounded and admissibly placed, and the rescaled test
      configurations converge.

      <item>The remainder comparison for normalized local observables and
      their regularity constants is the input of
      <hlink|<verbatim|prepared_rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49>.
    </itemize-minus>

    <item><strong|II.1.> Labels and representatives. The normalized
    observables <math|a<rsub|N><rsup|d>*F>
    (<hlink|<verbatim|unpriced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L25-L26>)
    and their regularity class (<hlink|<verbatim|clothed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L28-L29>,
    <hlink|<verbatim|section_bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L90-L118>,
    <hlink|<verbatim|offmask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L133-L151>).
    <hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>:
    the root on a coarse tiling at any interior offset is bounded by the
    centred root at a finer scale. The matching rate
    <hlink|<verbatim|gamma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Estimate.lean#L68>
    <math|=1/8>.

    <item><strong|II.2.> The Wilson family, its consistency conditions
    (translation covariance, locality of the representatives, continuity) and
    the run record.

    <item><strong|IV.1.> Tilings, chessboard roots and localized observables.
    <hlink|<verbatim|Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>
    holds for every <math|\<beta\>\<geqslant\>0>
    (<hlink|<verbatim|laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24>)
    and gives two inequalities:

    <\itemize-minus>
      <item>the chessboard inequality <math|<around|\||\<bbb-E\>*<big|prod><rsub|c>G<rsub|c><rsup|<around|(|c|)>>|\|>\<leqslant\><big|prod><rsub|c>R<around|(|G<rsub|c>|)>>;

      <item>the triangle inequality <math|R*<around|(|G+G<rprime|'>|)>\<leqslant\>R<around|(|G|)>+R<around|(|G<rprime|'>|)>>.
    </itemize-minus>

    <hlink|<verbatim|seamless>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84>
    gives <math|\<beta\><rsub|N,p>\<geqslant\>0>. Also:
    <hlink|<verbatim|stepTotal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103>
    (Lipschitz bound in the positions for correlations at separated points,
    derived from centred budgets); <hlink|<verbatim|growFrom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97>
    (Cauchy on a dense set plus asymptotic equicontinuity gives locally
    uniform convergence).

    <item><strong|III.2.> Existence of the section-comparison data and the
    numerical parameter sequence.

    <item><strong|III.6, III.8, III.9, III.10.> Histories and selected
    branches; stationary-branch records (used in
    <hlink|<verbatim|Rising.flooded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35>).
    The running coupling satisfies <math|<wide|\<beta\>|^><rsub|j>=<math-up|const>+\<kappa\><rsub|G>*log
    a<rsub|j><rsup|-1>> with <math|\<kappa\><rsub|G>\<gtr\>0>
    (<hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>).
    The large-field radius grows without bound in <math|<wide|\<beta\>|^>>
    (<hlink|<verbatim|radiusB_tendsto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L210-L211>).

    <item><strong|VIII.1.> <hlink|<verbatim|Winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63>,
    proved by <hlink|<verbatim|offers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89>,
    gives fixed-level convergence of the inverse couplings and normalized
    activities for sequences of successful trajectories whose level-0
    couplings converge. It includes the kinetic-path reserve, free
    amplification and analytic versions of the limits. The activity norm
    includes regular derivatives, forced terms and support weights; the
    scalar part of the effective action is excluded. The assembly supplies
    its stationary-path, free-amplification and uniform perturbation inputs;
    the pillars identify the run's transfers with the branch transfers. The
    bare coupling's analytic extension is
    <hlink|<verbatim|bareTrial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77>.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Reflection positivity of the Wilson action: Osterwalder\USeiler,
    <em|Ann. Phys.> 110 (1978).

    <item>Chessboard estimates: Fröhlich\UIsrael\ULieb\USimon, <em|Comm.
    Math. Phys.> 62 (1978) and <em|J. Stat. Phys.> 22 (1980); Shlosman,
    <em|Russian Math. Surveys> 41 (1986).

    <item>The chessboard seminorm (triangle inequality for <math|R>):
    Fröhlich\ULieb, <em|Comm. Math. Phys.> 60 (1978); Biskup, <em|Reflection
    positivity and phase transitions in lattice spin models> (2009).

    <item>Summation by parts. Stability of injectivity of a linear map under
    small perturbations. The dimension count for a linear map of known rank.

    <item>Arzelà\UAscoli type arguments. Taylor's theorem with remainder.

    <item>Absolutely convergent power series, uniqueness from their values on
    a real interval, polynomial coefficient estimates and dominated
    convergence for series.

    <item>The renormalization-group control of effective actions uniformly in
    the volume: Balaban, <em|Comm. Math. Phys.> 1984\U1989 (references as in
    III.9).
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The exponent <math|-d-\<varepsilon\>> in the centred budget.
    III.12.2 uses it with <math|\<varepsilon\>=1>.

    <item>The matching chain: rate <math|\<gamma\>=1/8>, giving an owed cost
    <math|a<rsub|N><rsup|1/16>> in Lemma 4.14; the equation-ideal estimate
    gives <math|a<rsub|N><rsup|1/32>> (III.12.5).

    <item>The tail factor <math|e<rsup|-B<rsub|j>/64>>
    (<hlink|<verbatim|brisk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Sever.lean#L16>),
    where <math|B<rsub|j>> is the budget radius at level <math|j>. Positions
    must have mutual lattice distance at least <math|B<rsub|j><rsup|2>> at
    level <math|j>.

    <item>All numerical thresholds of the run (III.2).
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The centred budget applies to primaries with bounded physical labels. A
  normalized difference carries the divergent factor
  <math|a<rsub|N><rsup|-1>>, so it needs a separate argument. The local
  regularity estimates and the matching theorem of III.11 write
  <math|\<Delta\><rsub|l>*O<around|(|w|)>> as a
  degree-<math|<around|(|d+<around|\||l|\|>|)>> primary
  <math|O<around|(|x|)>> with an error of root cost
  <math|a<rsub|N><rsup|1/16>>. The inverse terminal coordinates of <math|x>
  have only sub-power control. To bound <math|\<pi\>*x>, test against fixed
  partner observables and average in the differenced directions. Summation by
  parts bounds these tests by <math|<around|(|2/b|)><rsup|<around|\||l|\|>>>
  times an undifferenced correlation bound. At short distances the detector
  approaches a free Maxwell matrix that separates the quotient by the
  equation ideal. Finite-dimensional stability then bounds <math|\<pi\>*x>.
  The auxiliary equation sections have zero chessboard root by their
  distant-spectator identity; section comparison makes
  <math|O<around|(|x-\<pi\>*x|)>> negligible. Thus
  <math|\<Delta\><rsub|l>*O<around|(|w|)>> is funded, and the chessboard
  inequality bounds products at separated points (III.12.1\UIII.12.5).

  For convergence, fix the volume and an intermediate level <math|j>.
  Fixed-level convergence of the couplings, normalized activities and
  effective insertions makes the scalar-normalized level-<math|j> correlation
  Cauchy as the cutoff grows. The full correlation differs from it by at most
  <math|2*F<rsub|0>*e<rsup|-B<rsub|j>/64>> for all sufficiently large
  cutoffs, where <math|F<rsub|0>> is independent of the cutoff and <math|j>.
  Since <math|B<rsub|j>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|j>|)><rsup|2>|\<rceil\>>\<to\>\<infty\>>, the full
  correlations are Cauchy at configurations lying on a common lattice.
  Positional Lipschitz bounds extend convergence from this dense set to every
  non-collision configuration. Taylor bounds identify limits of differences
  with derivatives, giving smoothness and the smeared limits
  (III.12.7\UIII.12.8).

  For dependence on the coupling, vary the level-0 value in a family
  parametrized by <math|<wide|\<beta\>|\<bar\>>+w*s>. After reducing the
  parameter interval, the lattice correlations have absolutely convergent
  power series whose coefficient norms grow polynomially in
  <math|a<rsub|j><rsup|-1>>, uniformly in the cutoff (III.12.6). Their real
  level-to-level differences are <math|O<around|(|a<rsub|j>|)>>. A polynomial
  coefficient estimate after a further interval reduction makes the
  differences summable in coefficient norm. Fixed-level Cauchy convergence of
  the series then gives analytic continuum correlations on a complex disc.
  This uses the same fixed-level convergence input as the preceding
  paragraph, together with the additional analytic estimates.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Calculus of the chessboard
  budget><label|41-calculus-of-the-chessboard-budget>

  Throughout ŸŸ4.1\U4.3, the family satisfies its consistency conditions. In
  Ÿ4.2, assume hypotheses 1\U5 of III.12.3, with the same detector rows and
  presentation throughout.

  <strong|Lemma 4.1 (closure properties).> For trials <math|F,H> and costs
  <math|u,v>:

  <\itemize-minus>
    <item><math|<math-up|Aff><around|(|F,u|)>> and
    <math|<math-up|Aff><around|(|H,v|)>> imply
    <math|<math-up|Aff><around|(|F\<pm\>H,u+v|)>>.

    <item><math|<math-up|Aff><around|(|F,u|)>> implies
    <math|<math-up|Aff><around|(|c*F,<around|\||c|\|>*u|)>> for any
    <math|c=c<rsub|N,p>\<in\>\<bbb-C\>>.

    <item><math|<math-up|Aff><around|(|0,0|)>>, and finite sums behave the
    same way.

    <item>Affordability is monotone in the cost.

    <item>It is unchanged if <math|F> is modified off a tail of the mesh.
  </itemize-minus>

  Hence funded trials form a vector space. <em|Sketch:> linear combinations
  preserve locality; the root is homogeneous and satisfies the chessboard
  triangle inequality. <em|Lean:> <hlink|<verbatim|Affords.sub>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L63-L79>,
  <hlink|<verbatim|Affords.scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L80-L87>,
  <hlink|<verbatim|Affords.enlarged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L61-L62>,
  <hlink|<verbatim|Affords.recurses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L107-L110>,
  <hlink|<verbatim|Funded.sub>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L116-L118>;
  negation, addition, the zero trial and finite sums are treated in
  <hlink|the same file|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean>.

  <strong|Lemma 4.2 (all offsets).> Let <math|F> be affordable at cost
  <math|u>. For every <math|m> and every integer <math|J\<geqslant\>1> there
  is <math|k\<geqslant\>m> with the following property, eventually in the
  mesh. For every tiling of physical cell side <math|a<rsub|m>> and every
  site <math|x> in its central cell at least one <math|J>-th of the cell side
  from each wall, <math|F<rsub|N,p><around|(|x|)>> is localized in that cell
  and its root on the tiling is at most <math|u<around|(|k,N,p|)>>.
  <em|Sketch:> choose <math|k> with <math|3*J*a<rsub|k>\<leqslant\>a<rsub|m>>
  and apply the offset comparison (II.1), using translation covariance.
  <em|Lean:> <hlink|<verbatim|Affords.every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L39-L60>.
  <em|(proof read; offset comparison imported from II.1)>

  <strong|Lemma 4.3 (bounded primaries are funded).> Under the centred
  budget, let <math|v<rsub|N,p>\<in\><math-up|Lab><rsub|d>> satisfy
  <math|<around|\<\|\|\>|v<rsub|N,p>|\<\|\|\>>\<leqslant\>Y> eventually in
  the mesh for some fixed <math|Y>. Then <math|O<around|(|v|)>> is funded,
  with <math|u<around|(|m|)>=A*<space|0.17em>a<rsub|m><rsup|-d-1>>.
  <em|Sketch:> apply the centred budget with <math|\<varepsilon\>=1> and
  <math|R=max <around|(|1,Y|)>>, at the offset <math|0>. <em|Lean:>
  <hlink|<verbatim|Funded.primaries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L119-L128>.

  <strong|Lemma 4.4 (products at separated points).> Let
  <math|F<rsub|1>,\<ldots\>,F<rsub|n>> be affordable at costs
  <math|u<rsub|1>,\<ldots\>,u<rsub|n>>, and let <math|r\<gtr\>0>. For all
  large <math|k>, eventually in the mesh, every configuration <math|z> with
  <math|a<rsub|N><space|0.17em><math-up|dist><around|(|z<rsub|i>,z<rsub|j>|)>\<geqslant\>r>
  satisfies

  <\equation*>
    <mid|\|>\<bbb-E\><rsub|N,p>*<big|prod><rsub|i>F<rsub|i><around|(|z<rsub|i>|)><mid|\|>\<leqslant\><big|prod><rsub|i>u<rsub|i><around|(|k,N,p|)>.
  </equation*>

  If all <math|F<rsub|i>> are funded, the left side is bounded uniformly,
  eventually in the mesh. <em|Sketch:>

  <\itemize-minus>
    <item>Choose <math|l> with <math|a<rsub|l>\<less\>r>, and <math|k> with
    <math|6*n*<space|0.17em>a<rsub|k>\<less\>a<rsub|l>>.

    <item>Translate the tiling of side <math|a<rsub|l>> so that each
    <math|z<rsub|i>> lies in the interior margin of width <math|3*a<rsub|k>>
    of its cell. Distinct points lie in distinct cells, since their distance
    exceeds the cell side.

    <item>Write each <math|F<rsub|i><around|(|z<rsub|i>|)>> as the reflected
    copy of an observable localized in the central cell. The centred estimate
    at scale <math|k> and the offset comparison bound its root by
    <math|u<rsub|i><around|(|k,N,p|)>>.

    <item>Apply the chessboard inequality. The remaining cells carry the
    constant <math|1>, whose root is <math|1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|cohort>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L39-L66>,
  <hlink|<verbatim|FullVolume.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L68-L71>.

  <strong|Lemma 4.5 (III.12.1 from III.12.2).> Suppose
  <math|\<Delta\><rsub|l>*O<around|(|v|)>> is funded for every fixed label
  <math|v>, in every degree, and every list <math|l>. Then the bounds of
  III.12.1 hold for <math|C>. <em|Sketch:> induction on the list
  <math|\<lambda\>> of pairs (slot, axis). Differencing slot <math|i>
  differences its insertion (<hlink|<verbatim|actuate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L27-L45>),
  by linearity of expectation. Thus the differenced kernel is a correlation
  of <math|\<Delta\><rsub|l<rsub|i>>*O<around|(|v<rsub|i>|)>>, each funded.
  Conclude by Lemma 4.4. Then <hlink|<verbatim|genuine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62>
  applies III.12.2 to constant sequences. <em|Lean:>
  <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61>.

  <subsection|4.2 Detectors, rank detection and the closure
  lemma><label|42-detectors-rank-detection-and-the-closure-lemma>

  <strong|Lemma 4.6 (detectors; summation by parts).> A detector row <math|j>
  at test scale <math|k> consists of:

  <\itemize-minus>
    <item>a test configuration <math|y<rsub|k,j>\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|1+e<rsub|j>>>,
    with distinct projections on every coordinate axis and contained in a box
    of side <math|a<rsub|<math-up|width><around|(|k|)>>>;

    <item>partner labels <math|w<rsub|k,j,u>> (lifted basis labels whose
    norms, for fixed <math|k>, are bounded uniformly in <math|N,p> and the
    finite indices).
  </itemize-minus>

  For a trial <math|F>, the <em|monitor> is the correlation
  <math|M<rsub|j><around|(|F|)><around|(|x|)>=\<bbb-E\><rsub|N,p>*<around*|[|F<around|(|x<rsub|0>|)>*<big|prod><rsub|u>O<around|(|w<rsub|k,j,u>;x<rsub|u>|)>|]>>
  (<hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14>).
  The <em|assay> averages the first slot over
  <math|n<rsub|b>=<around|\<lceil\>|b/a<rsub|N>|\<rceil\>>> consecutive sites
  in each direction of <math|l>, starting at the prescribed lattice
  approximation of <math|y<rsub|k,j>> (<hlink|<verbatim|assay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86>).
  The detector is <math|\<cal-P\><rsub|k,b,l><around|(|x|)><rsub|j>=<math-up|assay><rsub|j><around|(|O<around|(|x|)>|)>>.
  For each fixed <math|k,l>, there is <math|b<rsub|0>\<gtr\>0> such that, for
  every <math|0\<less\>b\<less\>b<rsub|0>>, the following hold:

  <\itemize-minus>
    <item>(a) if <math|F> is funded with continuous values, then
    <math|<around|\<\|\|\>|<math-up|assay><around|(|\<Delta\><rsub|l>*F|)>|\<\|\|\>>\<leqslant\>v>
    eventually in the mesh, for some constant <math|v> depending on
    <math|F,k,b,l>;

    <item>(b) if <math|F> is owed at a cost <math|u<rsub|N,p>\<to\>0>, then
    <math|<math-up|assay><around|(|F|)>\<to\>0>.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item><hlink|<verbatim|scores_hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L43-L51>:
    <math|M<rsub|j>*<around|(|\<Delta\><rsub|l>*F|)>> is the
    <math|a<rsub|N>>-normalized lattice difference of
    <math|M<rsub|j><around|(|F|)>> in the first slot.

    <item><hlink|<verbatim|same_delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L40-L45>:
    averaging <math|n> consecutive normalized differences telescopes to
    <math|<around|(|n*a<rsub|N>|)><rsup|-1>*<around*|(|f*<around|(|x+n*e<rsub|\<mu\>>|)>-f<around|(|x|)>|)>>,
    with <math|n*a<rsub|N>\<in\><around|[|b,2*b|]>>. Iterating gives
    <hlink|<verbatim|reserve_abs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L89-L101>:
    <math|<around|\||<math-up|assay><around|(|\<Delta\><rsub|l>*F|)>|\|>\<leqslant\><around|(|2/b|)><rsup|<around|\||l|\|>>*sup
    <around|\||M<rsub|j><around|(|F|)>|\|>> near the test point.

    <item><hlink|<verbatim|warded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L86-L101>:
    near a generic test point, <math|<around|\||M<rsub|j><around|(|F|)>|\|>\<leqslant\>u<around|(|w|)>\<cdot\>A>.
    This is Lemma 4.4 applied to <math|F> and the partners, which are funded
    by Lemma 4.3 (<hlink|<verbatim|siblingsPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L80-L83>).

    <item>For (b), averaging does not increase the bound
    (<hlink|<verbatim|rounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L77-L87>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|invites>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139>.

  <strong|Lemma 4.7 (averaging is harmless on primaries).> For every
  <math|\<varepsilon\>\<gtr\>0> and <math|k>, for small <math|b> and
  eventually in the mesh, <math|<around|\||\<cal-P\><rsub|k,b,l><around|(|\<beta\><rsub|c>|)><rsub|j>-M<rsub|j><around|(|O<around|(|\<beta\><rsub|c>|)>|)><around|(|y<rsub|k,j>|)>|\|>\<leqslant\>\<varepsilon\>>
  for all rows <math|j> and all lifted basis labels <math|\<beta\><rsub|c>>.
  <em|Sketch:> <hlink|<verbatim|lobby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202>
  gives a radius <math|t\<gtr\>0> such that correlations of labels of bounded
  norm vary by less than <math|\<varepsilon\>> within distance <math|t> of
  the test configuration. This follows from the positional Lipschitz bound
  derived from the centred budget (IV.1), uniformly in <math|p>. Then choose
  <math|2<around|\||l|\|>*b\<leqslant\>t>. <em|Lean:>
  <hlink|<verbatim|probesUp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78>.
  <em|(proof read; the single-step Lipschitz bound is an input from IV.1)>

  <strong|Lemma 4.8 (short distances: the free Maxwell values).> For every
  <math|\<varepsilon\>\<gtr\>0>, eventually in <math|k>, eventually in the
  mesh, simultaneously for all rows <math|j> and basis indices <math|c>:
  <math|<around|\||M<rsub|j><around|(|O<around|(|\<beta\><rsub|c>|)>|)><around|(|y<rsub|k,j>|)>-\<phi\><rsub|j*c>|\|>\<less\>\<varepsilon\>>.
  Here <math|\<phi\><rsub|j*c>> is the value of the <math|j>-th test of the
  free Maxwell table on the <math|c>-th basis vector of <math|F<rsub|d>>
  (<hlink|<verbatim|focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21>).
  <em|Sketch:> the short-distance comparison of III.11 makes the lattice
  correlation approach the free Maxwell correlation at the rescaled test
  configuration. The latter configurations converge to the prescribed free
  tests, whose correlations are continuous there. <em|Lean:>
  <hlink|<verbatim|gaugesFull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L24-L46>,
  packaged as <hlink|<verbatim|VitalRank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52>.
  <em|(proof read; short-distance estimates imported from III.11)>

  <strong|Lemma 4.9 (rank detection; III.12.4).> The matrix
  <math|<around|(|\<phi\><rsub|j*c>|)>> is injective on <math|F<rsub|d>>
  (<hlink|<verbatim|true_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L73-L83>):
  the free tests separate the quotient. <em|Sketch:>

  <\itemize-minus>
    <item><hlink|<verbatim|firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L20-L39>
    gives <math|\<delta\>,L\<gtr\>0>: every linear map whose matrix is
    <math|\<delta\>>-close to <math|<around|(|\<phi\><rsub|j*c>|)>> satisfies
    <math|<around|\<\|\|\>|y|\<\|\|\>>\<leqslant\>L\<\|\|\>\<cdot\><space|0.17em>y\<\|\|\>>.

    <item>Take <math|\<varepsilon\>=\<delta\>/4>. The entries of
    <math|\<cal-P\>*<around|(|\<pi\>*\<beta\><rsub|c>|)>> are within
    <math|\<delta\>> of <math|\<phi\><rsub|\<cdot\>c>>, by three estimates:
    Lemma 4.7; Lemma 4.8; and <math|\<cal-P\>*<around|(|\<beta\><rsub|c>-\<pi\>*\<beta\><rsub|c>|)>\<to\>0>,
    which holds by Lemma 4.10 and Lemma 4.6(b).

    <item><math|<math-up|rank><space|0.17em>\<pi\><rsub|N,p>\<leqslant\>dim
    F<rsub|d>> (<hlink|<verbatim|weighed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L21-L47>).
    Indeed <math|ker \<pi\><rsub|N,p>> is the dressed image of
    <math|\<cal-N\><rsub|d>>, and <math|\<cal-N\><rsub|d>> is the null space
    of the free table by the exact free-field projection.

    <item><hlink|<verbatim|rank_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L42-L56>:
    the map <math|y\<mapsto\>\<pi\><around|(|<big|sum><rsub|c>y<rsub|c>*\<beta\><rsub|c>|)>>
    is injective by the previous steps, hence onto
    <math|<math-up|ran><space|0.17em>\<pi\>> by dimension. This gives
    <math|<around|\<\|\|\>|\<pi\>*x|\<\|\|\>>\<leqslant\>Z*<around|\<\|\|\>|\<cal-P\>*<around|(|\<pi\>*x|)>|\<\|\|\>>>
    with <math|Z=A<space|0.17em><around|(|dim
    F<rsub|d>|)>*<space|0.17em>V*<space|0.17em>L>. Here <math|A> bounds
    <math|<around|\<\|\|\>|\<pi\>|\<\|\|\>>> and <math|V> bounds
    <math|<around|\<\|\|\>|\<beta\><rsub|c>|\<\|\|\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|trained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91>.

  <strong|Lemma 4.10 (equation terms; III.12.5).> Let <math|x> be a coin with
  <math|\<pi\>*x=0>. Then <math|O<around|(|x|)>> is owed at cost
  <math|a<rsub|N><rsup|1/32>>. <em|Sketch:> undo the section-comparison
  automorphism and terminal map to obtain a terminal-coordinate row <math|y>
  of sub-power growth whose associated abstract labels belong to the dressed
  equation ideal. The inverse coefficient-size bound in Ÿ2 controls this
  change of coordinates.

  <\itemize-minus>
    <item><hlink|<verbatim|ocean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ocean.lean#L41-L75>:
    <math|O<around|(|x|)>-H<around|(|y|)>> is owed at
    <math|a<rsub|N><rsup|1/32>>. Here <math|H<around|(|y|)><rsub|N,p><around|(|o|)>>
    is the bare lattice evaluation of the section data at <math|o>, scaled by
    <math|a<rsub|N><rsup|-d>>. The proof goes through
    <hlink|<verbatim|studded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L23-L29>,
    a bound by a constant times a sub-power factor times
    <math|a<rsub|N><rsup|1/8>>.

    <item><hlink|<verbatim|hole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L61-L90>:
    <math|H<around|(|y|)>> is owed at cost <math|0>. By the section
    hypotheses, the evaluation of a dressed element of
    <math|\<cal-N\><rsub|d>> is <hlink|<verbatim|MicroAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31>:
    for every <math|\<beta\>\<neq\>0> and every large torus, its Wilson
    expectation against any bounded measurable observable depending only on
    links at lattice distance <math|\<gtr\>s> vanishes. The spectator need
    not be gauge invariant. Once the cell side exceeds <math|2*s+2> lattice
    units, the copies in the other cells are such observables. So the
    chessboard product has expectation <math|0> and <math|R<rsub|m>=0>.
  </itemize-minus>

  The auxiliary equation sections are an input from II.1 (Ÿ7). <em|Lean:>
  <hlink|<verbatim|sweep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19>,
  <hlink|<verbatim|banked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115>.

  <strong|Lemma 4.11 (a priori bound on <math|\<pi\>*x>).> Under the
  hypotheses of III.12.3, there is a constant <math|A> such that
  <math|<around|\<\|\|\>|\<pi\><rsub|N,p>*x<rsub|N,p>|\<\|\|\>>\<leqslant\>A>
  eventually in the mesh. <em|Sketch:>

  <\itemize-minus>
    <item>By Lemma 4.6, <math|<around|\<\|\|\>|\<cal-P\><around|(|x|)>|\<\|\|\>>=<around|\<\|\|\>|<math-up|assay><around|(|O<around|(|x|)>|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|<math-up|assay><around|(|\<Delta\><rsub|l>*F|)>|\<\|\|\>>+<around|\<\|\|\>|<math-up|assay><around|(|O<around|(|x|)>-\<Delta\><rsub|l>*F|)>|\<\|\|\>>\<leqslant\>c>.

    <item>Put <math|X=\<pi\>*x>, <math|\<theta\>=<around|(|1+<around|\<\|\|\>|X|\<\|\|\>>|)><rsup|-1>>
    and <math|z=\<theta\>*<around|(|x-X|)>>. Since
    <math|<around|\||\<theta\>|\|>\<leqslant\>1>, <math|\<theta\>*x> is a
    coin. Since <math|<around|\<\|\|\>|\<theta\>*X|\<\|\|\>>\<leqslant\>1>,
    <math|\<theta\>*X> is a coin too. Thus <math|z> is a coin and
    <math|\<pi\>*z=0>, so <math|Z<around|\<\|\|\>|\<cal-P\><around|(|z|)>|\<\|\|\>>\<leqslant\><frac|1|2>>
    eventually by Lemmas 4.10 and 4.6(b).

    <item>Hence <math|<around|\<\|\|\>|X|\<\|\|\>>\<leqslant\>Z<around|\<\|\|\>|\<cal-P\><around|(|X|)>|\<\|\|\>>\<leqslant\>Z*<around|\<\|\|\>|\<cal-P\><around|(|x|)>*<around|\<\|\|\>|+Z|\<\|\|\>>*\<cal-P\>*<around|(|x-X|)>|\<\|\|\>>\<leqslant\>Z*c+<tfrac|1|2><around|(|1+<around|\<\|\|\>|X|\<\|\|\>>|)>>.
  </itemize-minus>

  Rearrange to obtain <math|A=2*Z*c+1>. <em|Lean:>
  <hlink|<verbatim|cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63>.

  <strong|Lemma 4.12 (closure lemma; III.12.3).>
  <math|O<around|(|\<pi\>*x|)>> is funded by Lemmas 4.11 and 4.3.
  <math|O<around|(|x-\<pi\>*x|)>> is owed at
  <math|a<rsub|N><rsup|1/32>\<to\>0> by Lemma 4.10, hence funded: a cost
  tending to <math|0> is eventually below <math|1>
  (<hlink|<verbatim|fixed_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L65-L67>).
  So <math|O<around|(|x|)>> is funded. Finally
  <math|\<Delta\><rsub|l>*F=O<around|(|x|)>-<around*|(|O<around|(|x|)>-\<Delta\><rsub|l>*F|)>>
  is funded, by Lemma 4.1. <em|Lean:> <hlink|<verbatim|improved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78>.

  <subsection|4.3 Differences of primaries
  (III.12.2)><label|43-differences-of-primaries-iii122>

  <strong|Lemma 4.13 (regularity under normalized differences).> Call
  <math|F> <em|tucked of degree <math|d>> if the following holds. There are a
  stencil containing <math|0> and sequences <math|c<rsub|N,p>,b<rsub|N,p>> of
  sub-power growth. Eventually in the mesh, for every site <math|o>,
  <math|a<rsub|N><rsup|d>*F<rsub|N,p><around|(|o|)>> is regular on the
  stencil around <math|o>, its field-derivative bounds are at most
  <math|c<rsub|N,p>>, and its sup norm is at most <math|b<rsub|N,p>>. Then:

  <\itemize-minus>
    <item>for a simple gauge group, <math|O<around|(|w|)>> is tucked of
    degree <math|d> for every coin <math|w>;

    <item>if <math|F> is tucked of degree <math|d> and the constants for
    shifting the field-derivative bounds by one lattice site have sub-power
    growth, then <math|\<Delta\><rsub|\<mu\>>*F> is tucked of degree
    <math|d+1>. The run's remainder data supply these shift bounds.
  </itemize-minus>

  <em|Sketch:> <math|a<rsub|N><rsup|d>*O<around|(|w|)>> is the section
  evaluation at the threshold-scaled coefficients
  (<hlink|<verbatim|charged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L121-L126>,
  II.1); the bounds come from the regularity and supremum estimates for
  section evaluations. For the difference,
  <math|a<rsub|N><rsup|d+1>*\<Delta\><rsub|\<mu\>>*F<around|(|o|)>=a<rsub|N><rsup|d>*F*<around|(|o+e<rsub|\<mu\>>|)>-a<rsub|N><rsup|d>*F<around|(|o|)>>.
  The stencil grows by one step, and the derivative bounds pick up the
  sub-power shift cost. <em|Lean:> <hlink|<verbatim|Tucked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49>,
  <hlink|<verbatim|Tucked.up>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L60-L75>,
  <hlink|<verbatim|Tucked.farther>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L77-L95>,
  <hlink|<verbatim|Tucked.hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L97-L101>.

  <strong|Lemma 4.14 (matching a local observable by a primary).> Assume a
  simple gauge group, the scale-selection data and the observable remainder
  and regularity bounds of III.11 (Ÿ2). Let <math|F> be tucked of degree
  <math|d>, local, and continuous as a function of the gauge field at the
  insertion site <math|0>, eventually in the mesh. Then there is a coin
  <math|v> of degree <math|d> such that <math|O<around|(|v|)>-F> is owed at
  cost <math|a<rsub|N><rsup|1/16>>. <em|Sketch:> apply the local regularity
  comparison of III.11 to <math|a<rsub|N><rsup|d>*F>. After undoing this
  normalization, the centred root of <math|O<around|(|v|)>-F> at scale
  <math|m> is at most a constant (depending on <math|m> and an auxiliary
  level chosen by the scale-selection conditions) times a sub-power factor
  times <math|a<rsub|N><rsup|\<gamma\>>>, with <math|\<gamma\>=1/8>.
  <hlink|<verbatim|readyCoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L35-L46>
  and the sub-power absorption estimate absorb the sub-power factor into
  <math|a<rsub|N><rsup|1/8-1/16>>. <em|Lean:>
  <hlink|<verbatim|prepared_rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49>.
  <em|(statement and reduction read; the III.11 inputs statement only)>

  <strong|Lemma 4.15 (proof of III.12.2).> In a run for a simple gauge group,
  let <math|w> be eventually bounded in the mesh and set
  <math|F=O<around|(|w|)>>. Lemma 4.3 funds <math|F>. By Lemma 4.13,
  <math|\<Delta\><rsub|l>*F> is tucked of degree <math|d+<around|\||l|\|>>;
  it is also local and continuous in the gauge field. Lemma 4.14 gives a coin
  <math|x> of that degree with <math|O<around|(|x|)>-\<Delta\><rsub|l>*F>
  owed at <math|a<rsub|N><rsup|1/16>\<to\>0>. The run's ties supply
  hypotheses 1\U5 at degree <math|d+<around|\||l|\|>>, so III.12.3 funds
  <math|\<Delta\><rsub|l>*F>. <em|Lean:> <hlink|<verbatim|Run.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33>.

  <subsection|4.4 Observable transfer and coupling
  dependence><label|44-observable-transfer-and-coupling-dependence>

  The analytic transfer bounds use III.12.6's campaign data; analytic
  continuum convergence also uses III.12.7's fixed-level convergence and
  perturbation inputs.

  <strong|Lemma 4.16 (composition of observable transfers).> Fix a simple
  gauge group, a branch from level <math|k> to cutoff <math|N>, the
  observable-transfer bounds and compatible intermediate representations of
  Ÿ2. Fix <math|k\<leqslant\>r\<leqslant\>N> and
  <math|d+3\<leqslant\>J<around|(|r|)>>. There are degree-<math|d> transfer
  data based at the reference section at <math|r>, obtained by composing the
  one-step transfers along the branch. <em|Sketch:> a one-step transfer tool
  with its capacity estimate acts on an observable at level <math|m+1> and
  produces an observable at level <math|m> whose density is the exact
  renormalization-group pushforward with the degree-dependent block
  normalization. It preserves linearity and symmetry and supplies
  coefficient, remainder and response bounds
  (<hlink|<verbatim|motor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247>).
  These steps compose with the prescribed top observable
  (<hlink|<verbatim|composeT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78>).
  The branch includes selectedness, available coefficient spaces and the
  one-step transfer data (<hlink|<verbatim|Branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L30-L33>);
  its estimates provide the required capacities. <em|Lean:>
  <hlink|<verbatim|Branch.composing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63>.
  Fixed-level convergence follows from <hlink|<verbatim|Branch.stays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53>,
  using the stability of the step maps under two cutoff subsequences
  (<hlink|<verbatim|Branch.tiers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59>)
  (Lemma 4.19). <em|(proof read for composition and fixed-level reduction;
  one-step capacity estimate statement only)>

  <strong|Lemma 4.17 (power series in the tuning parameter, level by level).>
  Assume the campaign data and estimates of III.12.6. Write
  <math|f\<in\><math-up|PB><around|(|t|)>> if
  <math|f<around|(|s|)>=<big|sum><rsub|i>P<rsub|i>*s<rsup|i>> on
  <math|<around|[|-1,1|]>> with <math|<big|sum><around|\<\|\|\>|P<rsub|i>|\<\|\|\>>\<leqslant\>t>.
  This class is closed under sums (<math|<math-up|PB><around|(|t|)>+<math-up|PB><around|(|t<rprime|'>|)>\<subset\><math-up|PB><around|(|t+t<rprime|'>|)>>)
  and under rescaling <math|s\<mapsto\>a*s> with
  <math|<around|\||a|\|>\<leqslant\>1>.

  <\itemize-minus>
    <item>The one-step analytic capacity estimates bound the remainder map,
    applied to a coefficient vector <math|x>, by
    <math|<math-up|PB><around|(|\<nu\><around|\<\|\|\>|x|\<\|\|\>>|)>>. Here
    <math|\<nu\>> is the prescribed one-step bound in the completed remainder
    norm; the parameter interval has already been reduced by a factor
    <math|2>.

    <item>A bound <math|<math-up|PB><around|(|t|)>> at level <math|m>
    propagates to level <math|m+1> as <math|<math-up|PB><around|(|\<ell\><rsub|m>*t|)>>
    (<hlink|<verbatim|linked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80>),
    or as <math|<math-up|PB><around|(|2*v<rsub|T>*\<chi\><rsub|d>*t|)>>
    (<hlink|<verbatim|destination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78>).

    <item>Here <math|v<rsub|T>> is the prescribed transfer bound and
    <math|\<chi\><rsub|d>> the finite-dimensional coefficient constant. Since
    <math|<big|prod><rsub|m=0><rsup|j>\<ell\><rsub|m>=a<rsub|j+1><rsup|-1>>,
    iterating gives bounds polynomial in <math|a<rsub|j+1><rsup|-1>>.
  </itemize-minus>

  <hlink|<verbatim|cruise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98>
  gives per-label bounds. <hlink|<verbatim|polynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72>
  bounds a correlation item at <math|s\<mapsto\>c*s> by
  <math|B<rsub|0>*a<rsub|j+1><rsup|-b<rsub|0>>> for fixed
  <math|B<rsub|0>,b<rsub|0>>. Here <math|c> is fixed by
  <hlink|<verbatim|aperture>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L62-L68>
  so that <math|<around|\||c|\|>*<space|0.17em>Q/Z<rsub|\<ast\>>\<leqslant\><frac|1|2>>,
  where <math|Q> bounds the source contribution and
  <math|Z<rsub|\<ast\>>\<gtr\>0> bounds the scalar-normalized partition
  function from below; see also <hlink|<verbatim|storms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74>.
  <hlink|<verbatim|Face.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51>
  identifies the item for the full mode with the correlation
  (<hlink|<verbatim|absolute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33>),
  which gives III.12.6. The weighted analytic bounds for the
  parameter-dependent effective densities
  (<hlink|<verbatim|attic_close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88>,
  <hlink|<verbatim|many>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104>,
  <hlink|<verbatim|program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102>)
  belong to this fan analysis. <hlink|<verbatim|Amp.give>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L16-L39>
  and <hlink|<verbatim|Amp.stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43>
  extend a multilinear series from a dense isometric image, with geometric
  bounds; this builds the series on real jets without complexifying the
  field. <em|(proof read for the power-series calculus, parameter rescaling,
  interval selection and final correlation bound; intermediate analytic
  estimates statement only)>

  <strong|Lemma 4.18 (analytic continuum correlations).> Assume a campaign
  and pillars, the analytic estimates of III.12.6, fixed-level convergence
  and the uniform perturbation estimates of Ÿ2. Fix <math|p>, finitely many
  labels, a compact <math|K\<subset\><math-up|NoHit><rsub|p>> and
  <math|q\<in\>\<bbb-N\>>. There is a positive parameter width, independent
  of the cutoff, and an open neighbourhood <math|\<Omega\>> of <math|K>
  within <math|<math-up|NoHit><rsub|p>>, on which the limiting kernels are
  <math|C<rsup|q>> in position and analytic in the complex parameter. For
  each spatial stencil list of length at most <math|q>, the lattice kernels,
  their multilinear interpolations and their admissible smeared sums have
  analytic continuations whose parameter derivatives of every fixed order
  converge uniformly on compact subdiscs and compact spatial subsets of
  <math|\<Omega\>>. <em|Sketch:> <hlink|<verbatim|pricedB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96>
  gives coefficient-norm bounds <math|B*a<rsub|j><rsup|-b>> for differenced
  kernels on a fixed compact set. <hlink|<verbatim|traceS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96>
  chooses series representing these kernels. Their real values at consecutive
  levels differ by <math|O<around|(|a<rsub|j>|)>>. <hlink|A polynomial
  coefficient estimate|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Pier.lean#L25-L42>
  after a fixed reduction of the parameter interval turns this into a
  coefficient-norm bound <math|C<sqrt|a<rsub|j>>>, summable in <math|j>. For
  each fixed <math|j>, <hlink|Cauchy convergence of the real
  values|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Zoom.lean#L43-L48>
  gives Cauchy convergence of the series in the cutoff after another interval
  reduction (<hlink|<verbatim|astronomer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77>).
  Thus the series converge uniformly in position
  (<hlink|<verbatim|charted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109>).
  Their absolutely convergent complex power series give analytic limits and
  convergence of all parameter derivatives on smaller discs. The width may
  depend on <math|p,K,q>. The final identification uses the actual successful
  Wilson trajectories, whose <hlink|correlations agree with those of the
  auxiliary transfer families|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Real.lean#L71-L73>
  at every positive cutoff. This is the content of the analytic spatial
  statement <hlink|<verbatim|Spending>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L85-L91>
  and its theorem <hlink|<verbatim|Fan.standing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104>,
  used by the assembly's analytic family. <em|(proof read for the
  series-convergence and final assembly reductions; spatial derivative
  identification statement only)>

  <strong|Additional estimates in this folder.>

  <\itemize-minus>
    <item>Under the connected-activity hypotheses of III.8, the large-field
    step estimate applies when its rate parameter is at most <math|-7/16>
    (<hlink|<verbatim|projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101>,
    namespace of the connected-activity bounds, III.8).

    <item>Under the one-step source, degree, threshold and release hypotheses
    of III.10, the primary insertion satisfies its step estimate
    (<hlink|<verbatim|primaryJG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129>,
    III.10).

    <item>Fix <math|g\<less\>e>, <math|w\<less\>w<rprime|'>>,
    <math|w\<leqslant\>1>, a torus with at least four sites per axis, and a
    budget point and clipping parameter satisfying the admissibility and
    kinetic-width conditions. There is <math|t\<gtr\>0> such that every
    <math|<around|\||a|\|>\<leqslant\>t> sends a representation with bounds
    <math|<around|(|\<sigma\>,C,\<Lambda\>,g,w|)>> to one with bounds
    <math|<around|(|\<sigma\>,C,\<Lambda\>,e,w<rprime|'>|)>>, preserving its
    evaluation (<hlink|<verbatim|earned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67>).

    <item>Comparisons of rank data between two cutoff sequences
    (<hlink|<verbatim|cams>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79>,
    <hlink|<verbatim|linters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130>).

    <item>The connected-activity and stationary-branch results used by these
    estimates.
  </itemize-minus>

  These are inputs to the transfer and analytic estimates, not additional
  convergence assertions. Their full hypotheses and proofs belong to
  III.8\UIII.10; see Ÿ7.

  <subsection|4.5 Convergence in the mesh><label|45-convergence-in-the-mesh>

  <strong|Lemma 4.19 (fixed-level convergence).> In the setting of III.12.7,
  fix <math|m\<geqslant\>k> and above the reference levels of all labels
  used. Then:

  <\itemize-minus>
    <item>the inverse couplings and weighted activities are Cauchy
    (<hlink|<verbatim|flooded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35>,
    by the fixed-level convergence input);

    <item>the level-<math|m> coefficients and coins of each label converge
    (<hlink|<verbatim|grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56>,
    by stability of the composed transfers);

    <item>the effective observable and its polymer parts converge uniformly
    (<hlink|<verbatim|hail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L57-L61>).
    The property <hlink|<verbatim|Confluence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12>
    means eventual uniform boundedness and uniform Cauchy convergence.
  </itemize-minus>

  <em|Sketch:> the kinetic-path reserve and activity convergence control the
  normalized density. Stability of the composed transfers gives Cauchy
  coefficients and remainders; evaluation preserves their uniform Cauchy
  bounds. <em|(proof read for these reductions; transfer stability estimates
  statement only)>

  <strong|Lemma 4.20 (correlations computed at a fixed level converge).> Let
  the level-<math|j> data be as in Lemma 4.19. Assume the effective
  insertions and their polymer components are measurable, and that the
  scalar-normalized partition function is eventually bounded below by
  <math|a\<gtr\>0>. Then the level-<math|j> value

  <\equation*>
    C<rsub|j><rsup|I><around|(|n|)>=Z<rsub|j,n><rsup|-1>*<big|int>Q<rsub|j,n><rsup|I><around|(|U|)>*<space|0.17em>d*\<mu\><rsub|<math-up|Haar>><around|(|U|)>
  </equation*>

  is Cauchy in <math|n> for every fixed label subset <math|I>. Here
  <math|Q<rsub|j,n><rsup|I>> is the coefficient indexed by <math|I> in the
  scalar-normalized effective polynomial obtained by retaining the vacuum and
  singleton source data; <math|Z<rsub|j,n>> is its vacuum normalization, and
  <math|\<mu\><rsub|<math-up|Haar>>> is the product Haar probability measure.
  <em|Sketch:> uniform convergence passes through the Haar integral. The
  normalizations have a positive limit, so the quotients converge. The
  additive action scalar cancels. <em|Lean:>
  <hlink|<verbatim|Confluence.laven>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39>,
  <hlink|<verbatim|Rising.latter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L57-L66>,
  with the uniform bounds <hlink|<verbatim|ships>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L51-L53>
  and <hlink|<verbatim|limitVault>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L29-L33>.

  <strong|Lemma 4.21 (tail bound uniform in the cutoff).> In the setting of
  III.12.7, fix a non-collision configuration lying exactly on a lattice of
  some level. Choose a sufficiently large base level <math|r>, above the
  reference levels and with distinct insertion sites. Fix positive label
  weights so that their weighted coefficient costs are within the allowances
  at <math|r>; these weights exist by <hlink|<verbatim|creditP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L62-L63>.
  For every fixed subset <math|I> of the labels, there is
  <math|F<rsub|0>\<geqslant\>0>, independent of <math|j> and the cutoff, such
  that for each sufficiently large <math|j\<gtr\>r>, eventually in <math|n>,

  <\equation*>
    <around|\||p<rsub|n><rsup|I>-C<rsub|j><rsup|I><around|(|n|)>|\|>\<leqslant\>2*F<rsub|0>*e<rsup|-B<rsub|j>/64>.
  </equation*>

  Here <math|p<rsub|n><rsup|I>> is the product correlation at cutoff
  <math|f<around|(|n|)>> and <math|C<rsub|j><rsup|I><around|(|n|)>> is its
  scalar-normalized level-<math|j> approximation. The lower threshold on
  <math|j> ensures separation by <math|B<rsub|j><rsup|2>> lattice units,
  support exponent at least <math|2>, and
  <math|e<rsup|B<rsub|j>/64>\<gtr\>2>. The threshold on <math|n> may depend
  on <math|j>. <em|Sketch:> propagate the exact polynomial density of the
  inserted observables down the renormalization group. The weighted remainder
  estimate controls its part of degree at least two. Separation forces a
  nonzero such term to occupy enough blocks to gain the factor
  <math|e<rsup|-B<rsub|j>/64>>. The remaining omission estimate divides by a
  uniformly positive scalar-normalized partition function. Uniform bounds on
  the effective insertions at <math|r> and <math|j> follow from Lemma 4.19;
  the final numerator depends only on the data at <math|r>. <em|Lean:>
  <hlink|<verbatim|Sever.echoes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Peat.lean#L41-L64>.
  <em|(proof read for the exact-density, remainder and omission reduction;
  underlying multiscale estimates are inputs)>

  <strong|Lemma 4.22 (Cauchy property).> Under the hypotheses of Lemma 4.21,
  <math|p<rsub|n><rsup|I>> is Cauchy for every fixed subset <math|I> of the
  labels. <em|Sketch:> <math|B<rsub|j>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|j>|)><rsup|2>|\<rceil\>>>, so
  <math|g<around|(|j|)>=e<rsup|B<rsub|j>/64>\<to\>\<infty\>> because
  <math|<wide|\<beta\>|^><rsub|j>=<math-up|const>+\<kappa\><rsub|G>*log
  a<rsub|j><rsup|-1>\<to\>\<infty\>>. Choose <math|j> with
  <math|g<around|(|j|)>\<gtr\>2> and <math|2*F<rsub|0>/g<around|(|j|)>\<leqslant\>\<varepsilon\>/4>.
  Lemma 4.21 bounds <math|<around|\||p<rsub|n><rsup|I>-C<rsub|j><rsup|I><around|(|n|)>|\|>>
  by <math|\<varepsilon\>/4> for large <math|n>. Lemma 4.20 gives the Cauchy
  property of <math|C<rsub|j><rsup|I><around|(|n|)>>. Conclude with the
  triangle inequality. <em|Lean:> <hlink|<verbatim|Rising.arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103>.

  <strong|Lemma 4.23 (III.12.7).> Under the hypotheses of III.12.7, take the
  subset containing all labels. The full-subset quantity is the correlation
  itself (<hlink|<verbatim|absolute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33>).
  The positions are <math|o<rsub|N>=<math-up|wrap><around|(|\<alpha\><rsub|N><around|(|x|)>|)>>.
  For <math|x\<in\><math-up|NoHit><rsub|p>> lying exactly on a lattice of
  some level, these satisfy the separation <math|B<rsub|j><rsup|2>> for all
  large <math|j> by the lattice-ancestry estimates, and they are injective at
  the base level. <em|Lean:> <hlink|<verbatim|Rising.cinema>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45>.

  <strong|Lemma 4.24 (all non-collision points, full sequence).> For a run
  with a campaign, pillars, fixed-level convergence and uniform perturbation
  estimates, III.12.7 holds on the full sequence of cutoffs
  (<hlink|<verbatim|Campaign.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38>,
  with the same cutoff-dependent history family repeated for every sequence
  index and <math|f<around|(|n|)>=n>). Configurations lying exactly on some
  lattice are dense. III.12.1 gives a local Lipschitz bound
  (<hlink|<verbatim|localLip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L42-L54>),
  hence asymptotic equicontinuity on compact subsets of
  <math|<math-up|NoHit><rsub|p>> (<hlink|<verbatim|circulating>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L38-L54>).
  The dense-set convergence theorem (IV.1) then gives locally uniform
  convergence on <math|<math-up|NoHit><rsub|p>>, in particular the Cauchy
  property on the subset with no coordinate ties. <em|Lean:>
  <hlink|<verbatim|Campaign.purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44>.

  <strong|Lemma 4.25 (positional limits; III.12.8).> Assume the two
  hypotheses of III.12.8.

  <\itemize-minus>
    <item><hlink|<verbatim|established>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L60-L61>:
    the kernels converge locally uniformly on <math|<math-up|NoHit><rsub|p>>
    to a continuous <math|f>. The argument is the one of Lemma 4.24.

    <item><hlink|<verbatim|from_previous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125>:
    if the <math|l>-differences converge, so do the differences with one
    additional coordinate direction <math|a>. Fix <math|q=min
    <around|(|t/2,r/3,\<varepsilon\>/<around|(|8*<around|(|B+1|)>|)>|)>\<gtr\>0>,
    where <math|t> is a neighbourhood radius and <math|r,B> are the Taylor
    constants. Choose integers <math|n<rsub|N>> with
    <math|k<rsub|N>=n<rsub|N>*a<rsub|N>\<in\><around|[|q,2*q|]>> and
    <math|k<rsub|N>\<to\>q>. If <math|a<rsub|N>*x<rsub|N>\<to\>x>, compare
    the unit difference <math|D<rsub|N>> with
    <math|W<rsub|N>=k<rsub|N><rsup|-1>*<around|(|F<rsub|N>*<around|(|x<rsub|N>+n<rsub|N>*e<rsub|a>|)>-F<rsub|N><around|(|x<rsub|N>|)>|)>>.
    Both endpoint values converge (<hlink|<verbatim|returns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L21-L31>),
    so <math|W<rsub|N>> converges. The Taylor estimate
    <math|<around|\||F<rsub|N>*<around|(|x<rsub|N>+n<rsub|N>*e<rsub|a>|)>-F<rsub|N><around|(|x<rsub|N>|)>-k<rsub|N>*D<rsub|N>|\|>\<leqslant\>B*k<rsub|N><rsup|2>>
    (<hlink|<verbatim|taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L58-L77>)
    gives <math|<around|\||W<rsub|N>-D<rsub|N>|\|>\<leqslant\>\<varepsilon\>/4>
    eventually. Hence <math|D<rsub|N>> is Cauchy.

    <item>Limits of differences are derivatives of <math|f>, so
    <math|f\<in\>C<rsup|\<infty\>><around|(|<math-up|NoHit><rsub|p>|)>>
    (<hlink|<verbatim|reachable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L90-L92>).

    <item>Every fixed forward/backward interval stencil is a finite average
    of translates of a unit forward difference. These translates approach the
    same physical point, so they have the same derivative limit. Multilinear
    interpolation preserves this limit. For admissible tests, the
    corresponding piecewise constant Riemann sums have an integrable bound on
    a fixed compact set, and dominated convergence gives the smeared limits.
  </itemize-minus>

  Under the hypotheses of Lemma 4.24, the run instance is
  <hlink|<verbatim|Campaign.realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>:
  III.12.8 applied to III.12.1 and Lemma 4.24. <em|Lean:>
  <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47>.
  <em|(proof read for equicontinuity, Taylor comparison, derivative
  convergence, stencil averaging, interpolation and smearing)>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Matching controls only inverse terminal coordinates. Rank detection must
  bound the projected physical labels, while the equation-section comparison
  controls the projection kernel. These estimates precede every limit.

  The estimates of III.12.1\UIII.12.5 are uniform in every admitted volume.
  The convergence results III.12.7\UIII.12.8 fix the volume first. Their
  thresholds may depend on the period, labels, compact spatial set,
  derivative order and test function. The parameter width in Lemma 4.18 may
  also depend on these data.

  All positional limits are off collisions on the torus, including
  configurations with coordinate ties and configurations crossing the
  boundary of a period cell. Extension across collisions belongs to VII.4.
  Every derivative order or stencil is fixed before the cutoff threshold is
  chosen.

  Sub-power factors are absorbed by the positive error exponents. Fixed-level
  convergence uses a positive lower bound on the scalar-normalized partition
  function; the additive action scalar need not converge.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|eventually
  in the mesh>|<cell|<hlink|<verbatim|mesh>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13>>|<cell|for
  <math|N\<geqslant\>N<rsub|0>> and all <math|p>>>|<row|<cell|sub-power
  growth>|<cell|<hlink|<verbatim|Sluggish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38>,
  <hlink|<verbatim|flight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40>>|<cell|<math|<around|\||w|\|>\<leqslant\>a<rsub|N><rsup|-\<varepsilon\>>>
  for all <math|\<varepsilon\>\<gtr\>0>; flight
  <math|<around|(|\<varepsilon\>|)>=a<rsub|N><rsup|-\<varepsilon\>>>>>|<row|<cell|trial
  <math|F>, local>|<cell|<verbatim|Trial>,
  <hlink|<verbatim|Stencil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29>>|<cell|site-indexed
  lattice observables on a fixed stencil>>|<row|<cell|<math|T<rsub|m><around|(|o|)>>,
  <math|R<rsub|m>>>|<cell|<hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40>,
  <hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>>|<cell|centred
  tiling of side <math|a<rsub|m>>; chessboard root>>|<row|<cell|affordable,
  owed, funded>|<cell|<hlink|<verbatim|Affords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22>,
  <hlink|<verbatim|Owed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24>,
  <hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28>>|<cell|centred
  root bound by <math|u<around|(|m,N,p|)>>, <math|v<around|(|N,p|)>>,
  <math|u<around|(|m|)>>>>|<row|<cell|<math|\<Delta\><rsub|\<mu\>>>,
  <math|\<Delta\><rsub|l>>>|<cell|<hlink|<verbatim|farther>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17>,
  <hlink|<verbatim|hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21>>|<cell|<math|a<rsub|N>>-normalized
  forward differences>>|<row|<cell|tucked of degree
  <math|d>>|<cell|<hlink|<verbatim|Tucked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49>>|<cell|<math|a<rsub|N><rsup|d>*F>
  regular with sub-power bounds>>|<row|<cell|coin;
  <math|O<around|(|x|)>>>|<cell|<hlink|<verbatim|Coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147>,
  <verbatim|Bid.upper>>|<cell|label sequence with sub-power inverse terminal
  coordinates; its representative>>|<row|<cell|<math|\<pi\><rsub|N,p>>>|<cell|<hlink|<verbatim|Presentation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41>,
  <hlink|<verbatim|display>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L50>>|<cell|idempotent
  with kernel the dressed equation ideal>>|<row|<cell|<math|M<rsub|j>>,
  detector <math|\<cal-P\><rsub|k,b,l>>>|<cell|<hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14>,
  <hlink|<verbatim|assay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86>,
  <hlink|<verbatim|probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88>>|<cell|test
  correlation; iterated directional average>>|<row|<cell|<math|\<phi\><rsub|j*c>>>|<cell|<hlink|<verbatim|focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21>>|<cell|free
  Maxwell value of test <math|j> on basis vector
  <math|c>>>|<row|<cell|centred budget>|<cell|<hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>>|<cell|root
  <math|\<leqslant\>A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>>>>|<row|<cell|kernel
  bounds>|<cell|<hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>>|<cell|III.12.1>>|<row|<cell|run,
  ties>|<cell|<hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>,
  <hlink|<verbatim|Run.Ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71>>|<cell|record
  of one construction; its inputs for this unit>>|<row|<cell|fan parameter
  <math|s\<in\><around|[|-1,1|]>>>|<cell|<hlink|<verbatim|Ray.sun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22>,
  <hlink|<verbatim|ask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72>>|<cell|level-0
  coupling <math|<wide|\<beta\>|\<bar\>>+w*s>>>|<row|<cell|<math|<math-up|PB><around|(|t|)>>>|<cell|<hlink|<verbatim|PaidBeam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32>>|<cell|power
  series on <math|<around|[|-1,1|]>> with <math|\<ell\><rsup|1>> coefficient
  norm <math|\<leqslant\>t>>>|<row|<cell|<math|a<rsub|j><rsup|-1>>>|<cell|<hlink|<verbatim|intervalClock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34>>|<cell|<math|D<rsub|j>=\<ell\><rsub|0>*\<cdots\>*\<ell\><rsub|j-1>>>>|<row|<cell|campaign,
  pillars, sky>|<cell|<hlink|<verbatim|Campaign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27>,
  <hlink|<verbatim|Pillars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>,
  <hlink|<verbatim|Sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28>>|<cell|records
  carrying the fan and its bounds>>|<row|<cell|fixed-level convergence;
  function convergence>|<cell|<hlink|<verbatim|Helmet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35>,
  <hlink|<verbatim|Confluence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12>>|<cell|Cauchy
  couplings and weighted activities; eventual uniform boundedness and uniform
  Cauchy convergence of functions>>|<row|<cell|point-Cauchy
  property>|<cell|<hlink|<verbatim|Purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58>>|<cell|Cauchy
  correlations at ceiling addresses when no coordinate projections
  tie>>|<row|<cell|positional limit>|<cell|<hlink|<verbatim|PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36>>|<cell|III.12.8;
  (D5) of the main statement>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Local matching and equation sections.> Lemma 4.14 imports
    the local-to-primary estimate of III.11; only its reduction to a coin and
    an <math|a<rsub|N><rsup|1/16>> root bound is checked here. The
    construction of the auxiliary sections from the Maxwell equation ideal,
    and its relation to a lattice Schwinger\UDyson identity, remain
    unverified. Lemma 4.10 uses their exact distant-spectator identity,
    without identifying it with the Wilson action's naive equation of motion.

    <item><strong|One-step observable transfer.> The capacity estimate used
    by Lemma 4.16 remains at statement level. Its coefficient and remainder
    constants require the one-step analysis.

    <item><strong|Analytic estimates.> The intermediate weighted estimates in
    Lemma 4.17 and the identification of spatial derivatives of the analytic
    limit in Lemma 4.18 remain at statement level. The outer
    series-convergence argument is checked.

    <item><strong|Additional estimates in Ÿ4.4.> The large-field and
    primary-step results and the two transfer comparisons retain their full
    hypotheses in III.8\UIII.10. Their proofs, and the detailed small-shift
    lawfulness estimate, are not checked here.

    <item><strong|Fixed-level convergence and tails.> The analytic
    trajectory-convergence theorem and the multiscale remainder and omission
    estimates remain imported inputs; their applications are checked. The
    tail argument needs only <math|B<rsub|j>=<around|\<lceil\>|<around|(|log
    <wide|\<beta\>|^><rsub|j>|)><rsup|2>|\<rceil\>>\<to\>\<infty\>>, not
    geometric decay in <math|j>.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.11 Interacting rank, Gaussian
  comparison and the stress tensor (notes)|III-11.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-12.tm>|<hlink|III.13 Alternative construction: one
  Wilson family for all labels (notes) \<rightarrow\>|III-13.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.12. Bounds uniform in the volume and
    convergence as the spacing tends to zero \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|6>>
    <associate|3-strategy|<tuple|3|8>>
    <associate|4-steps|<tuple|4|9>>
    <associate|41-calculus-of-the-chessboard-budget|<tuple|4.1|9>>
    <associate|42-detectors-rank-detection-and-the-closure-lemma|<tuple|4.2|10>>
    <associate|43-differences-of-primaries-iii122|<tuple|4.3|12>>
    <associate|44-observable-transfer-and-coupling-dependence|<tuple|4.4|13>>
    <associate|45-convergence-in-the-mesh|<tuple|4.5|14>>
    <associate|5-where-the-difficulty-lies|<tuple|5|16>>
    <associate|6-notation|<tuple|6|17>>
    <associate|7-what-remains-unexplained|<tuple|7|18>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|5|16>>
    <associate|auto-11|<tuple|6|17>>
    <associate|auto-12|<tuple|7|18>>
    <associate|auto-2|<tuple|2|6>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|4|9>>
    <associate|auto-5|<tuple|4.1|9>>
    <associate|auto-6|<tuple|4.2|10>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|14>>
    <associate|iii12-bounds-uniform-in-the-volume-and-convergence-as-the-spacing-tends-to-zero--detailed-notes|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      What this unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      What it uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Strategy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Steps> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1 Calculus of the chessboard budget
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Detectors, rank detection and the
      closure lemma <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Differences of primaries (III.12.2)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Observable transfer and coupling
      dependence <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Convergence in the mesh
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>