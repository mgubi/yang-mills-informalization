<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero|III-12.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-13.tm>|<hlink|III.14 The construction run: flat
  representations and the ultraviolet rate \<rightarrow\>|III-14.tm>>

  <ym-title|III.13. Alternative construction: one Wilson family for all
  labels><label|iii13-alternative-construction-one-wilson-family-for-all-labels>

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

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Code
    dependencies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Lean source>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <with|par-left|1tab|Additional source locations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Key statements>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  <em|Part III \V Ultraviolet construction (renormalization group).>

  Explains an alternative ultraviolet construction that puts all field labels
  into one Wilson family.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-13.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.12|III-12.tm> <ym-middot> <hlink|Next:
  III.14 \<rightarrow\>|III-14.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> This is the alternative construction for
  <verbatim|habitat>. The Wilson family used by
  <verbatim|YangMills.constructed> comes from the run in
  <hlink|III.14|III-14.tm>; see <hlink|VIII.1|VIII-1.tm> for its assembly.
  The two families are not identified here.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/SharpGram/Common.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean>,
    <hlink|<verbatim|YM/SharpGram/Measured.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean>,
    <hlink|<verbatim|YM/SharpGram/Assembly/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly>,
    <hlink|<verbatim|YM/UVExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension>.
    <strong|Size:> about 22,100 lines in the unit inventory.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Throughout, <math|G> is a compact matrix group with simple nonabelian real
  Lie algebra and <math|b\<gtr\>0> is the Gaussian block-spin penalty. Levels
  run from the coarsest, <math|0>, to the cutoff, <math|N>; <math|p> indexes
  periods. Notation is collected in Ÿ6.

  <strong|Proposition III.13.1 (one ultraviolet and logarithmic family).>
  There exists a Wilson family <math|C>, with penalty <math|b>, satisfying
  all the following.

  <\enumerate>
    <item>It is calibrated: one full choice of constants and a directed
    history generate its history, with the per-step estimates of
    III.9\UIII.12.

    <item>It is consistent: the trajectory is selected, local sections are
    sound, and, for every degree <math|d>,
    <math|d+3\<leqslant\>J<around|(|<math-up|ref><around|(|d|)>|)>>,
    <math|d+1\<leqslant\><math-up|order><rsub|m>> and
    <math|d\<leqslant\><math-up|power><rsub|m>> for
    <math|m\<geqslant\><math-up|ref><around|(|d|)>>. Every degree-<math|d>
    stencil point satisfies <math|20*<around|(|<around|\||x<rsub|i>|\|>+1|)>\<leqslant\><math-up|side><around|(|N,p|)>>
    in each coordinate whenever <math|N\<geqslant\><math-up|ref><around|(|d|)>>.
    Placed basis sections are regular on their footprints, with the
    prescribed derivative bounds of size <math|<math-up|columns><rsub|N>\<theta\><rsub|N><rsup|q>>
    for factor degree <math|q>; transfer is calibrated from
    <math|<math-up|ref><around|(|d|)>> onwards.

    <item>For every <math|d> and <math|R,\<varepsilon\>\<gtr\>0>, there is
    <math|A\<geqslant\>0> such that, for every
    <math|m\<geqslant\><math-up|ref><around|(|d|)>> and all sufficiently
    large <math|N>, every <math|p> and every <math|v\<in\>\<cal-L\><rsub|d>>
    with <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R>, the observable at
    every site is supported in its centred level-<math|m> reflection cell and
    its chessboard root is at most <math|A*a<rsub|m><rsup|-d-\<varepsilon\>>>.
    Here <math|N\<geqslant\><math-up|ref><around|(|d|)>> is required.

    <item>It is the centre of the analytic shooting family of III.13.7.

    <item>The OPE entrance conditions hold: for every <math|d,D,h> with
    <math|D+h=d+4>, there exist <math|t\<gtr\>1> and
    <math|j<around|(|i|)>\<to\>\<infty\>> with
    <math|\<sigma\><rsub|j<around|(|i|)>>/\<sigma\><rsub|i>\<to\>t> for which
    the III.11 shell bounds hold for every choice of labels and extraction
    order; cover sizes satisfy <math|<math-up|cs><rsub|i+1><rsup|2>\<leqslant\>2<math-up|cs><rsub|i><rsup|2>>
    and for every <math|\<varepsilon\>\<gtr\>0>,
    <math|<around|(|L<rsub|i><math-up|cs><rsub|i><rsup|2>|)><rsup|4><around|(|<text|vacuum
    cost>|)>\<leqslant\>\<varepsilon\>*\<sigma\><rsub|i+1>> eventually;
    positive radii satisfy <math|log \<rho\><rsub|i>/\<sigma\><rsub|i>\<to\>-1>.

    <item>There exist coefficient-map bounds <math|W>, allowances
    <math|r:\<bbb-N\>\<to\>\<bbb-N\>> and transfer data giving the
    logarithmic OPE package: III.11 transfer/remainder estimates, triangular
    label steps, auxiliary comparisons, separation bounds, product sup bounds
    and VII.4 arity bounds. Also <math|L<rsub|m>,<math-up|columns><rsub|m>,<math-up|columns><rsub|m+1>\<leqslant\><wide|\<beta\>|^><rsub|m>>,
    <math|r\<to\>\<infty\>>, and the support exponent is <math|100>.

    <item>For these data and every <math|d,N,p,m> with
    <math|<math-up|ref><around|(|d|)>\<leqslant\>m\<less\>N>, there is a
    linear isomorphism <math|T> with

    <\equation*>
      <around|\<\|\|\>|x<rsub|m><around|(|v|)>-T*<around|(|V<rsub|L<rsub|m>>*x<rsub|m+1><around|(|v|)>|)>|\<\|\|\>><rsub|1>\<leqslant\><math-up|barunit><around|(|L<rsub|m>|)><around|\<\|\|\>|<math-up|core><around|(|x<rsub|m+1><around|(|v|)>|)>|\<\|\|\>><rsub|1>*<space|1em><around|(|v\<in\>\<cal-L\><rsub|d>|)>.
    </equation*>

    On a basis vector of engineering grade <math|e> and factor degree
    <math|q>, the only output of grade <math|\<leqslant\>e> is that vector
    times <math|<around|(|\<theta\><rsub|m>/\<theta\><rsub|m+1>|)><rsup|q>>;
    no lower factor degree occurs. The map preserves the unit, commutes with
    core projection and lattice symmetries, and
    <math|<around|\<\|\|\>|T|\<\|\|\>><rsub|1>,<around|\<\|\|\>|T<rsup|-1>|\<\|\|\>><rsub|1>\<leqslant\>K*<around|(|J*<around|(|m+1|)>|)>>,
    where <math|K> comes from <math|W>.

    <item>Coverage holds: some <math|g<around|(|k|)>\<to\>\<infty\>>,
    <math|g<around|(|k|)>\<leqslant\>k>, satisfies
    <math|a<rsub|g<around|(|k|)>>\<leqslant\><wide|\<beta\>|^><rsub|k>*a<rsub|k>>
    eventually, with three depth-<math|d> probe panels poised at level
    <math|g<around|(|k|)>> for every <math|d> and all large <math|k>.

    <item>Along every extraction order satisfying IV.1's cell hypotheses,
    grid approximation holds at arbitrarily fine fixed levels for bounded
    degrees and III.11's allowed reflection pairs. Along each such order,
    complete weak comparison systems exist for every finite demand and degree
    horizon, positive radius bound and real-spin structure on the smooth free
    comparison table.

    <item>Every extraction order <math|f> has a refinement <math|g>,
    extraction base tables <math|A,<around|(|L<rsub|k>|)>,T>, a bin and
    derivative plan along <math|f\<circ\>g>, and a seed for
    <math|<around|(|C,f\<circ\>g,T|)>> with Maxwell ranks for <math|T>.
  </enumerate>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>.

  <strong|Proposition III.13.2 (coordinated family).> There exists one
  <math|C> of penalty <math|b>, consistent, calibrated and floral, with the
  chessboard bound above, III.13.5's fixed-volume limits, the logarithmic
  package, calibrated label steps, coverage and complete weak comparison
  systems along every extraction order satisfying the cell hypotheses. For
  every extraction order <math|F>, there exist a refinement <math|g> and
  table <math|T> giving the ordered limit along the full mesh sequence and
  the periods of <math|F\<circ\>g>, VII.4's OPE services, and a II.2
  construction record for <math|<around|(|C,F\<circ\>g,T|)>>.

  <em|Status:> theorem; <math|C> precedes <math|F>. <em|Lean:>
  <hlink|<verbatim|coordination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37>.

  <strong|Proposition III.13.3 (all phases).> For every extraction order
  <math|f>, there exist <math|C>, a refinement <math|g>, a table <math|T>, a
  construction record <math|F> for <math|<around|(|C,f\<circ\>g,T|)>>, and a
  V.3 reconstruction record <math|\<cal-A\>> for every phase of <math|F>,
  satisfying III.13.2 and completed reconstruction: Wightman realization,
  surjective comparison maps onto the Osterwalder\USchrader Hilbert spaces,
  unique vacuum, phase-uniform light-cone and heat-kernel bounds, trivial
  commutant, continued stress tensor, continuous phase dependence of boundary
  correlations, and barycentre identities. The derivative sector has a
  prescription <math|P> satisfying VII.4's estimates for every fixed finite
  cluster tree and separated spectators, with arbitrary positive power loss.

  <em|Status:> theorem; <math|C> follows <math|f> in the statement, but the
  proof uses III.13.2's common choice. <em|Lean:>
  <hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60>.

  <strong|Proposition III.13.4 (moving-frame Gram limits).> For every
  extraction order <math|f>, there exist <math|C,g,T,F,\<cal-A\>,P>
  satisfying III.13.3, with coverage at the cutoff of <math|F>. For every
  ultrafilter <math|\<cal-U\>> finer than the filter of <math|f\<circ\>g>
  (period large, then mesh large) and every depth <math|D>:

  <\itemize-minus>
    <item>Depth-<math|D> portfolios exist: levels
    <math|k<rprime|'><around|(|k|)>\<to\>\<infty\>>,
    <math|k<rprime|'>\<leqslant\>k>, eventually satisfy
    <math|a<rsub|k>\<leqslant\>a<rsub|k<rprime|'>>\<leqslant\><wide|\<beta\>|^><rsub|k>*a<rsub|k>>,
    with three poised panels for all sufficiently large <math|k>, and
    label-matrix limits along <math|\<cal-U\>> for every sufficiently large
    <math|k>.

    <item>For every portfolio <math|X>, there are isomorphisms
    <math|Y<rsub|k><around|(|d|)>> from the free Maxwell degree-<math|d>
    field space onto that of <math|T>, for all <math|d\<leqslant\>D> and
    <math|k>. Eventually they respect grading through <math|D>; for each
    <math|d\<leqslant\>D>, their Gram forms are bounded and coercive
    uniformly for all sufficiently large <math|k>.

    <item>For each <math|d\<leqslant\>D>, some
    <math|q<rsub|d>\<in\>\<bbb-N\>> gives, for every sufficiently large
    <math|k> and every field <math|x>, representatives
    <math|v<rsub|N,p>\<to\>v> along <math|\<cal-U\>>, projecting to <math|x>,
    with eventual source cost at most <math|<wide|\<beta\>|^><rsub|k><rsup|q<rsub|d>>*a<rsub|k><rsup|d>*<around|\<\|\|\>|Y<rsub|k><around|(|d|)><rsup|-1>*x|\<\|\|\>>>.
    Conversely, some <math|K<rsub|d>\<geqslant\>0> gives
    <math|<around|\<\|\|\>|Y<rsub|k><around|(|d|)><rsup|-1>*x|\<\|\|\>>\<leqslant\>K<rsub|d>*a<rsub|k><rsup|-d>*z>
    for every convergent representative family of cost at most <math|z> along
    any nontrivial filter finer than <math|\<cal-U\>>, for all sufficiently
    large <math|k>.

    <item>For each <math|d\<leqslant\>D>, the Gram form of <math|X> in basis
    <math|Y<rsub|k><around|(|d|)>> converges, as <math|k\<to\>\<infty\>>, to
    the free Maxwell Gram form.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>.

  <strong|Proposition III.13.5 (fixed-volume derivative limits).> For
  <math|C> as in III.13.1 and every <math|d,k\<in\>\<bbb-N\>>, all
  sufficiently large <math|p> (depending on <math|d,k>), every <math|n> and
  labels <math|v<rsub|i>> of degrees <math|\<leqslant\>d>, there exists
  <math|g:<around|(|\<bbb-R\><rsup|4>|)><rsup|n>\<to\>\<bbb-C\>>, continuous
  on <math|\<Omega\><rsub|p><rsup|n>>, such that the following hold along the
  whole sequence <math|N\<to\>\<infty\>>.

  <\itemize-minus>
    <item>Periodic correlations, extended as step functions by coordinatewise
    ceiling projection, converge to <math|g> uniformly on separated compact
    sets.

    <item>Normalized forward differences of every coordinate word <math|u> of
    length <math|\<leqslant\>k> converge there to
    <math|\<partial\><rsub|u>*g>. Multilinear interpolation gives the same
    limits for fixed words of length <math|\<leqslant\>k> of normalized
    differences with positive integer steps and fixed integer stencil
    offsets, including backward and centred differences.

    <item><math|\<partial\><rsub|a>*\<partial\><rsub|u>*g=\<partial\><rsub|<around|(|a,u|)>>*g>
    for <math|<around|\||u|\|>\<less\>k> on <math|\<Omega\><rsub|p><rsup|n>>.

    <item>For every admissible test <math|t>, <math|t*g> is integrable and

    <\equation*>
      a<rsub|N><rsup|4*n>*<big|sum><rsub|r>t<around|(|r|)><around*|\<langle\>|<big|prod><rsub|i>O<rsub|v<rsub|i>><rsup|N,p><around|(|r<rsub|i>|)>|\<rangle\>><rsub|N,p>\<longrightarrow\><big|int>t*g,
    </equation*>

    summing over centred torus representatives.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Poppy.blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108>,
  <hlink|<verbatim|Poppy.Margins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L16-L21>.

  <strong|Proposition III.13.6 (separated lattice points).> Fix <math|p> and
  a member <math|C<rsup|\<b-up-s\>>> of III.13.7 whose shifts satisfy
  <math|s<rsub|N,p>\<to\>s>, <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>>.
  Assume its chessboard bound, slow growth, label-transfer and remainder
  bounds. For every <math|J>, every finite label list <math|u<rsub|i>> with
  <math|<math-up|ref><around|(|deg u<rsub|i>|)>\<leqslant\>J>, and pairwise
  distinct level-<math|J> torus sites <math|o<rsub|i>>, the correlations
  <math|<around|\<langle\>|<big|prod><rsub|i>O<rsub|u<rsub|i>><rsup|N,p><around|(|o<rsub|i>|)>|\<rangle\>><rsub|N,p>>
  converge as <math|N\<to\>\<infty\>>. III.13.7 supplies these bounds for
  every shift assignment; the centre has zero shifts.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Hearth.food>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112>.

  <strong|Proposition III.13.7 (analytic shooting family).> For <math|C> of
  III.13.1 there exist a full choice of per-step constants, a shooting
  structure with an arc, a label-transfer bundle and reference levels such
  that:

  <\enumerate>
    <item>Some <math|r<rsub|\<ast\>>\<gtr\>0>, depending only on those
    constants, works for every <math|N,p>: each real
    <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>> determines exactly one
    Wilson coupling whose fixed-recursion trajectory stays in the prescribed
    scalar bands and reaches <math|<wide|\<beta\>|\<bar\>>+s> at level
    <math|0>. Assignments <math|<around|\||s<rsub|N,p>|\|>\<less\>r<rsub|\<ast\>>>
    define <math|C<rsup|\<b-up-s\>>> with the bundle's labels, sections and
    reference levels, and <math|C=C<rsup|\<b-0\>>>.

    <item>For <math|m\<leqslant\>N>, <math|\<beta\><rsub|m><around|(|N,p;s|)>>
    and normalized activity readings extend holomorphically to
    <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>>, bounded by
    <math|3*<wide|\<beta\>|^><rsub|m>> and
    <math|<math-up|soft>=<math-up|rim>/8>, respectively. For fixed
    <math|m,p>, they converge locally uniformly with every shift derivative
    as <math|N\<to\>\<infty\>>.

    <item>The centre has the calibration package with constant allowance,
    priced sup bounds and extraction base data. Every
    <math|C<rsup|\<b-up-s\>>> has label-transfer, remainder and chessboard
    bounds.

    <item>Some common disc <math|<around|\||z|\|>\<less\>a> lies in the
    shooting domain and carries holomorphic coefficient and transfer data,
    including inverse terminal label maps, for all <math|d,N,p> with
    <math|<math-up|ref><around|(|d|)>\<leqslant\>N>.

    <item>Fix <math|d,m>. For all large <math|p>, every <math|n> and labels
    of degree <math|\<leqslant\>d>, there exist <math|b<rprime|'>\<gtr\>0>,
    holomorphic lattice correlations <math|W<rsub|N><around|(|z,x|)>> on
    <math|<around|\||z|\|>\<less\>b<rprime|'>> and limits
    <math|f<around|(|z,x|)>>. At real <math|s>, <math|W<rsub|N>> equals the
    correlation whenever <math|s<rsub|N,p>=s> and all reference levels fit.
    For every complex <math|z>, <math|f<around|(|z,\<cdot\>|)>> has
    continuous iterated coordinate derivatives through order <math|m> on
    <math|\<Omega\><rsub|p><rsup|n>>; step differences and interpolated
    differences converge to them with every <math|z> derivative, uniformly on
    products of separated spatial compacts and disc compacts. Real-shift
    limits agree with constant-shift fixed-volume limits. For admissible
    <math|t>, <math|<big|int>t*f<around|(|z,\<cdot\>|)>> is holomorphic and
    smeared lattice correlations converge to it locally uniformly with every
    <math|z> derivative.
  </enumerate>

  <em|Status:> theorem, included in III.13.1. <em|Lean:>
  <hlink|<verbatim|Oasis.Floral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1; II.1\UII.2: Wilson measures, labels, observables, extraction
    orders and construction records.

    <item>III.1\UIII.2; III.4\UIII.12: kernels, order of constants,
    chessboard and per-step estimates, selected trajectories and histories;
    III.7 supplies the one-loop annulus coefficient.

    <item>III.15\UIII.16: label costs and analytic tools; IV.1: extraction,
    cell hypotheses and Arzelà\UAscoli.

    <item>V.3; VII.1, VII.3\UVII.4; VIII.1: phase reconstruction, coverage,
    Gram comparison, OPE services and construction records.

    <item>Balaban block-spin renormalization; Banach contraction;
    Vitali\UPorter and the identity principle; Arzelà\UAscoli; dominated
    convergence; reflection-positive chessboard estimates; ultrafilters.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Choose constants in their required order, raising thresholds while
  preserving earlier estimates. Increasing Taylor orders and powers
  accommodate each label degree from its reference level onwards. Shooting
  gives trajectories with prescribed coarse coupling; uniform contraction and
  decay of dependence on remote ultraviolet levels give full-sequence limits
  at each fixed level. Uniform holomorphic bounds then permit Vitali's
  theorem.

  Approximate each renormalized observable by a conditional average of a
  coarse observable with convergent coefficients. Exponential improvement
  beats subexponential coefficient costs, and chessboard estimates control
  products. Dense-grid convergence and large-period slicing yield derivative
  limits. Extraction, OPE and reconstruction results then apply to the same
  family.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Choose constants.> For simple <math|G>, combine the
    per-step estimates, then raise thresholds for shooting, label transfer,
    logarithmic OPE and weak comparison. Instantiate first stage <math|4>,
    Taylor order <math|6+i>, power <math|2+i>, support exponent <math|100>,
    allowances <math|1> and <math|j+1>, and target rate <math|-7/16>; the
    final wait also supplies coverage. <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>.

    <item><strong|Take fixed-level limits.> For the constructed arc,
    contraction has rate <math|1/2> uniformly in cutoff; continuity and
    kinematic convergence give convergence of each iterate. Dependence on
    levels above <math|m+v> decays as <math|<math-up|soft><rsup|v>>, giving
    real-shift limits, then Vitali gives every complex-shift derivative.
    <hlink|<verbatim|Camp.artistry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L70-L71>,
    <hlink|<verbatim|Camp.viva>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L64-L69>
    <em|(proofs read; contraction and decay estimates used as stated)>.

    <item><strong|Pass to correlations.> For convergent real shifts and the
    bundle bounds, effective densities converge uniformly and partition
    integrals stay positively bounded below. The RG identity and coarse
    approximation reduce separated products to convergent effective
    expectations; chessboard errors tend to zero, proving the Cauchy
    property. <hlink|<verbatim|Hearth.food>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112>.

    <item><strong|Obtain derivatives and analyticity.> Large-period slicing
    bounds lattice differences through one extra order; dense-grid
    convergence and Arzelà\UAscoli give spatial derivatives and smearing.
    Holomorphic transfer bounds and Vitali give the analytic correlation
    limits. <hlink|<verbatim|Poppy.blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108>,
    <hlink|<verbatim|Beach.sparksP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63>
    <em|(proofs read through stated transfer estimates)>.

    <item><strong|Assemble common outputs.> Uniqueness identifies full-mesh
    smeared limits with extracted limits. Apply OPE services, every-phase
    reconstruction and Gram comparison; coverage supplies portfolios along
    every finer ultrafilter. <hlink|<verbatim|coordination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37>,
    <hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60>,
    <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>
    <em|(report proofs read)>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Uniform control over arbitrarily many ultraviolet levels and the balance
  between coarse-approximation gains and coefficient costs are the main
  analytic difficulties. Derivative limits require large periods; plain
  smeared limits hold at every fixed period. The coupling/activity disc is
  uniform in cutoff and period, whereas the correlation disc may depend on
  labels and period.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<cal-L\><rsub|d>> is the degree-<math|d> label space;
  <math|<math-up|ref><around|(|d|)>> its reference level. <math|a<rsub|0>=1>,
  <math|a<rsub|m+1>=a<rsub|m>/L<rsub|m>>, <math|\<sigma\><rsub|m>=log
  <around|(|1/a<rsub|m>|)>>; <math|\<ell\><rsub|p>> is the torus side.
  <math|\<Omega\><rsub|p><rsup|n>\<subset\><around|(|\<bbb-R\><rsup|4>|)><rsup|n>>
  consists of configurations distinct modulo
  <math|\<ell\><rsub|p>*\<bbb-Z\><rsup|4>>; admissible tests are
  complex-valued, smooth, compactly supported on distinct configurations,
  with closed support inside <math|<around|(|-\<ell\><rsub|p>/2,\<ell\><rsub|p>/2|)><rsup|4*n>>.
  <math|O<rsub|v><rsup|N,p>> denotes the renormalized observable and brackets
  Wilson expectation. <math|<wide|\<beta\>|\<bar\>>> is the central coarse
  coupling, <math|<wide|\<beta\>|^><rsub|m>> the reference coupling,
  <math|\<theta\><rsub|m>> the threshold, <math|J<around|(|m|)>> the stage.
  <math|x<rsub|m>> are coefficient maps; <math|V<rsub|L>> multiplies grade
  <math|e> by <math|L<rsup|d-e>>. <math|f\<circ\>g> denotes refinement of an
  extraction order. A chessboard root is the absolute reflected-product
  expectation to the reciprocal number of cells.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Quantitative transfer, remainder, shell and comparison contracts remain
  those of III.7, III.11 and VII.4. Internal proofs of several constant
  choices, contraction/remote-level decay, one-step label estimates and
  auxiliary estimates were used as stated; moving-frame proofs belong to
  VII.1/VII.3. The penalty's normalization relative to Balaban's parameter
  remains unverified. The main theorem uses III.14's separate construction:
  equality of its family with this one, or transfer of III.13.5 to it, is not
  established.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-13.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|III.1|III-1.tm>, <hlink|III.10|III-10.tm>,
  <hlink|I.1|I-1.tm>, <hlink|VIII.1|VIII-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.9|III-9.tm>, <hlink|III.16|III-16.tm>, <hlink|III.7|III-7.tm>,
  <hlink|III.5|III-5.tm>, <hlink|III.2|III-2.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|III.11|III-11.tm>, <hlink|II.2|II-2.tm>, <hlink|III.3|III-3.tm>,
  <hlink|III.15|III-15.tm>, <hlink|III.8|III-8.tm>, <hlink|III.6|III-6.tm>,
  <hlink|V.2|V-2.tm>, <hlink|VII.1|VII-1.tm>, <hlink|VII.4|VII-4.tm>,
  <hlink|III.4|III-4.tm>.

  <strong|Referenced by:> none above the threshold.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 22,100 attributed lines; 3,224 line-counted
  declarations; 4,212 assigned declaration names. Of the assigned names,
  4,113 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|multitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79>
    \V 3,983 lines.

    <item>proof of <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>
    and the results it chains to \V 3,662 lines.

    <item>proof of <hlink|<verbatim|multitude_foot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93>
    \V 2,722 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Lamppost/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost>,
    with <hlink|<verbatim|YM/UVExtension/Concert/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert>,
    <hlink|<verbatim|YM/UVExtension/Wick/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wick>,
    <hlink|<verbatim|YM/UVExtension/Payroll/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Payroll>
    \V 1,219 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Wren/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wren>
    \V 1,058 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Lacing/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing>
    \V 961 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Wet/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wet>
    \V 820 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Span/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Span>
    \V 819 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Fallow/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow>
    \V 619 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Steady/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Steady>
    \V 578 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Rainfall/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Rainfall>
    \V 530 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Camp/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp>,
    with <hlink|<verbatim|YM/UVExtension/Spire/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire>
    \V 500 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Eyelet/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Eyelet>
    \V 387 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Strata/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Strata>
    \V 365 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Hearth/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth>
    \V 340 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Guild/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Guild>
    \V 327 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Poppy/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy>
    \V 324 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Mast/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast>
    \V 259 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Bud/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Bud>
    \V 257 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Whirl/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Whirl>
    \V 234 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Oriel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oriel>
    \V 233 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Yard/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Yard>
    \V 207 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Dales/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Dales>
    \V 202 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Tabernacle/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Tabernacle>
    \V 199 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Copse/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse>
    \V 172 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Crown/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Crown>
    \V 167 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Harvest/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest>
    \V 117 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Forest/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest>
    \V 114 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Orchard/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard>
    \V 103 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Linden/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden>
    \V 100 lines.

    <item>proof of <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>
    and the results it chains to \V 97 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Rafter/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Rafter>
    \V 91 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Case/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case>
    \V 77 lines.

    <item>proof of <hlink|<verbatim|coordination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37>
    \V 51 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Gale/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale>
    \V 49 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Oasis/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis>
    \V 33 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Free/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free>
    \V 30 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Upland/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland>
    \V 30 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Above/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Above>
    \V 29 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Beach/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach>
    \V 17 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Willow/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Willow>
    \V 7 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Cloud/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Cloud>
    \V 6 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Reports/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports>
    \V 5 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|YangMills.constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>

    <item><hlink|<verbatim|Bid.vowel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L63>

    <item><hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>

    <item><hlink|<verbatim|Maxwell.Ranks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139>

    <item><hlink|<verbatim|Test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18>

    <item><hlink|<verbatim|EveryPhase.Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>

    <item><hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>

    <item><hlink|<verbatim|EveryPhase.Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>

    <item><hlink|<verbatim|Heading.leads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/LocalDebt.lean#L77-L81>

    <item><hlink|<verbatim|centeredBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23>

    <item><hlink|<verbatim|Extraction.Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>

    <item><hlink|<verbatim|Extraction.Order.Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35>

    <item><hlink|<verbatim|Extraction.suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31>

    <item><hlink|<verbatim|Extraction.growFrom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97>

    <item><hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>

    <item><hlink|<verbatim|Chateau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36>

    <item><hlink|<verbatim|posters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L29-L33>

    <item><hlink|<verbatim|East.CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>

    <item><hlink|<verbatim|sponsored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51>

    <item><hlink|<verbatim|Acme.emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>

    <item><hlink|<verbatim|Velour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Bonus.lean#L34-L36>

    <item><hlink|<verbatim|Ribbons.laurelE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32>

    <item><hlink|<verbatim|stockK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/Dine.lean#L27>

    <item><hlink|<verbatim|Bandage.fly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Stove.lean#L37>

    <item><hlink|<verbatim|stakes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Strudel.lean#L21>

    <item><hlink|<verbatim|Acme.glistens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Summit.lean#L17-L30>

    <item><hlink|<verbatim|Acme.Aroma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19>

    <item><hlink|<verbatim|Next.Extract.Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>

    <item><hlink|<verbatim|Stationary.pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>

    <item><hlink|<verbatim|Fluent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115>

    <item><hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>

    <item><hlink|<verbatim|OPE.Facilities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/ElementaryLog.lean#L12-L13>

    <item><hlink|<verbatim|OPE.Log.aux_delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L19-L25>

    <item><hlink|<verbatim|LogPackage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L29-L33>

    <item><hlink|<verbatim|OPE.halo_delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Gate.lean#L45-L54>

    <item><hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>

    <item><hlink|<verbatim|OPE.AllShapes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45>

    <item><hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>

    <item><hlink|<verbatim|GridApprox.backTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25>

    <item><hlink|<verbatim|GridApprox.back>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22>

    <item><hlink|<verbatim|GridApprox.tariff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78>

    <item><hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>

    <item><hlink|<verbatim|Run.extractible17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90>

    <item><hlink|<verbatim|jointOffers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66>

    <item><hlink|<verbatim|Dense.Coverage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L16-L24>

    <item><hlink|<verbatim|Dense.covered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L26-L33>

    <item><hlink|<verbatim|slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>

    <item><hlink|<verbatim|PricedIn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L29-L37>

    <item><hlink|<verbatim|attains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L65-L71>

    <item><hlink|<verbatim|CalibratedStep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L19-L27>

    <item><hlink|<verbatim|TrueSteps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L29-L32>

    <item><hlink|<verbatim|Weak.Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49>

    <item><hlink|<verbatim|fromCoverage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67>

    <item><hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>

    <item><hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>

    <item><hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>

    <item><hlink|<verbatim|Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>

    <item><hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>

    <item><hlink|<verbatim|Beach.Shoal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L32-L36>

    <item><hlink|<verbatim|Camp.Sign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L40-L41>

    <item><hlink|<verbatim|Camp.trim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L43-L49>

    <item><hlink|<verbatim|Camp.income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L31-L35>

    <item><hlink|<verbatim|Camp.climb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L62-L68>

    <item><hlink|<verbatim|Camp.SummitUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L62>

    <item><hlink|<verbatim|Fallow.reaped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow/Plow.lean#L66-L70>

    <item><hlink|<verbatim|Mast.signs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Coda.lean#L47-L52>

    <item><hlink|<verbatim|Gale.Circuit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L43-L50>

    <item><hlink|<verbatim|Harvest.Barn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L20-L23>

    <item><hlink|<verbatim|Barn.ripe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L27-L30>

    <item><hlink|<verbatim|Harvest.Slicing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L34-L36>

    <item><hlink|<verbatim|Hearth.tasting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L40>

    <item><hlink|<verbatim|Hearth.scaledK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L42-L52>

    <item><hlink|<verbatim|Hearth.seating>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L58-L62>

    <item><hlink|<verbatim|Hearth.arrival>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L65-L72>

    <item><hlink|<verbatim|Hearth.peeling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Spices.lean#L64-L68>

    <item><hlink|<verbatim|Hearth.seatingM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L37-L59>

    <item><hlink|<verbatim|Hearth.banquet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L63-L80>

    <item><hlink|<verbatim|Hearth.closet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L82-L84>

    <item><hlink|<verbatim|strippedOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L82-L84>

    <item><hlink|<verbatim|zPositive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L85-L97>

    <item><hlink|<verbatim|Mast.Cellar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37>

    <item><hlink|<verbatim|Cellar.gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L59>

    <item><hlink|<verbatim|Cellar.yard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L60>

    <item><hlink|<verbatim|Oasis.Spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L41-L49>

    <item><hlink|<verbatim|Oasis.spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L51-L53>

    <item><hlink|<verbatim|Oasis.fruition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Fruition.lean#L33-L41>

    <item><hlink|<verbatim|Pier.mounted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Heath.lean#L28-L50>

    <item><hlink|<verbatim|Poppy.coveringR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L40-L69>

    <item><hlink|<verbatim|Poppy.nourishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L42-L48>

    <item><hlink|<verbatim|Poppy.mature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L61-L62>

    <item><hlink|<verbatim|Poppy.bravo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Summit.lean#L19-L22>

    <item><hlink|<verbatim|Beach.Realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L35-L39>

    <item><hlink|<verbatim|Beach.keep_prefix>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L78-L112>

    <item><hlink|<verbatim|Reports.ultraviolet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L101-L112>

    <item><hlink|<verbatim|Reports.full_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58>

    <item><hlink|<verbatim|Reports.useFull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69>

    <item><hlink|<verbatim|Spire.Uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L37-L41>

    <item><hlink|<verbatim|Upland.Arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L33-L38>

    <item><hlink|<verbatim|Arc.uv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L62-L70>

    <item><hlink|<verbatim|Arc.exists_trial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-13-1>

  <\itemize-minus>
    <item><strong|K-III.13.1> <hlink|<verbatim|forge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost/Blossom.lean#L20-L70>
    <em|(numbered result)> \V Prescribed jets given by bump-type data can be
    realized by a germ holomorphic in the parameter and smooth in the
    variable, matching the given jets.
  </itemize-minus>

  <label|k-iii-13-2>

  <\itemize-minus>
    <item><strong|K-III.13.2> <hlink|<verbatim|tangled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse/Spring.lean#L106-L114>
    <em|(key result)> \V The full Ursell sum over clusters with union cover
    satisfies a budget b/(1-q).
  </itemize-minus>

  <label|k-iii-13-3>

  <\itemize-minus>
    <item><strong|K-III.13.3> <hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60>
    <em|(key result)> \V For simple G and any penalty b\<gtr\>0, one Wilson
    family simultaneously carries calibration, UV, OPE-margin, log, coverage,
    reconstruction and completed-phase properties.
  </itemize-minus>

  <label|k-iii-13-4>

  <\itemize-minus>
    <item><strong|K-III.13.4> <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Wing.lean#L95-L154>
    <em|(main result)> \V For a simple gauge and branching kernel choices,
    there exists a sheet with the given kernel and cost/parameter choices
    such that for all tariffs and scopes, a sequence of scale parameters
    makes all required purchased estimates hold.
  </itemize-minus>

  <label|k-iii-13-5>

  <\itemize-minus>
    <item><strong|K-III.13.5> <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>
    <em|(main result)> \V On one Wilson family, with OPE, reconstruction and
    complete phases, the moving-frame Gram estimates hold and every
    ultrafilter limit of portfolios converges to the model.
  </itemize-minus>

  <label|k-iii-13-6>

  <\itemize-minus>
    <item><strong|K-III.13.6> <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>
    <em|(main result)> \V For any positive penalty b there is a family with
    that kernel penalty that is calibrated, satisfies UV and log OPE
    packages, dense coverage, and extraction base data with Maxwell ranks.
  </itemize-minus>

  <label|k-iii-13-7>

  <\itemize-minus>
    <item><strong|K-III.13.7> <hlink|<verbatim|havens_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/SameFactory.lean#L60-L137>
    <em|(key result)> \V Under support exponent at least 100, there is a
    sheet, price map and threshold with kernel K and stage v satisfying the
    log-purchase conclusion.
  </itemize-minus>

  <label|k-iii-13-8>

  <\itemize-minus>
    <item><strong|K-III.13.8> <hlink|<verbatim|multitude_foot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93>
    <em|(numbered result)> \V Existence of a sheet and price map with kernel
    K satisfying the simultaneous UV/log assembly property.
  </itemize-minus>

  <label|k-iii-13-9>

  <\itemize-minus>
    <item><strong|K-III.13.9> <hlink|<verbatim|survives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L81-L87>
    <em|(key result)> \V The floral property survives for the cellar yard
    built from the rose data at all sides L, for the fixed-volume coarse
    reference.
  </itemize-minus>

  <label|k-iii-13-10>

  <\itemize-minus>
    <item><strong|K-III.13.10> <hlink|<verbatim|snow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Pots.lean#L20-L26>
    <em|(numbered result)> \V There exists a sequence of integers making a
    steepness condition hold for the given sheet and kernel data.
  </itemize-minus>

  <label|k-iii-13-11>

  <\itemize-minus>
    <item><strong|K-III.13.11> <hlink|<verbatim|lives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden/Seasons.lean#L38-L85>
    <em|(key result)> \V For a connected-activity target with an expense
    bound, there is a threshold M such that for all sides L\<geqslant\>M and
    admissible parameters, the target worth estimate holds eventually as
    x\<rightarrow\>\<infty\>.
  </itemize-minus>

  <label|k-iii-13-12>

  <\itemize-minus>
    <item><strong|K-III.13.12> <hlink|<verbatim|sheaf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L57-L67>
    <em|(key result)> \V There is a radius a\<gtr\>0 within the analytic
    domain such that circuits exist for all indices d,N,n with t d
    \<leqslant\> N.
  </itemize-minus>

  <label|k-iii-13-13>

  <\itemize-minus>
    <item><strong|K-III.13.13> <hlink|<verbatim|ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Lights.lean#L74-L78>
    <em|(main result)> \V Under paid-weight and local-ratio hypotheses, there
    exist a kinematic path structure with full paths realizing the given
    endpoint data.
  </itemize-minus>

  <label|k-iii-13-14>

  <\itemize-minus>
    <item><strong|K-III.13.14> <hlink|<verbatim|pocketbook>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Sheets.lean#L69-L79>
    <em|(numbered result)> \V Under scale and cost hypotheses, there is a
    family of banner functions forming a rotor consistent with the tide
    values and growth conditions.
  </itemize-minus>

  <label|k-iii-13-15>

  <\itemize-minus>
    <item><strong|K-III.13.15> <hlink|<verbatim|profiles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free/Lease.lean#L171-L182>
    <em|(key result)> \V For a kernel choice there exist price and rate data
    such that every compatible sheet admits horizons satisfying rack,
    retention, sufficiency and report conditions.
  </itemize-minus>

  <label|k-iii-13-16>

  <\itemize-minus>
    <item><strong|K-III.13.16> <hlink|<verbatim|sparksP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63>
    <em|(key result)> \V There exist a radius b and data W, f forming a shoal
    of order m on the ball.
  </itemize-minus>

  <label|k-iii-13-17>

  <\itemize-minus>
    <item><strong|K-III.13.17> <hlink|<verbatim|turning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L103-L116>
    <em|(key result)> \V There is a path structure with full paths and
    approximants that converge to a limiting coin sequence satisfying the
    one-step conditions.
  </itemize-minus>

  <label|k-iii-13-18>

  <\itemize-minus>
    <item><strong|K-III.13.18> <hlink|<verbatim|inlet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Rolls.lean#L37-L54>
    <em|(key result)> \V There is a radius b such that turn families are
    uniformly bounded on a ball for large N, along with bounds on derivatives
    on compacts.
  </itemize-minus>

  <label|k-iii-13-19>

  <\itemize-minus>
    <item><strong|K-III.13.19> <hlink|<verbatim|uv_commerce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50>
    <em|(key result)> \V The UV extension theorem: an existence statement for
    programs, targets and registers with alloys satisfying budget and
    sheltered conditions at all large levels.
  </itemize-minus>

  <label|k-iii-13-20>

  <\itemize-minus>
    <item><strong|K-III.13.20> <hlink|<verbatim|office>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Clocks.lean#L43-L108>
    <em|(key result)> \V Parameters can be chosen before learning the data L
    so that, after L is revealed, only waiting is required and the target
    mint estimates hold.
  </itemize-minus>

  <label|k-iii-13-21>

  <\itemize-minus>
    <item><strong|K-III.13.21> <hlink|<verbatim|food>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112>
    <em|(key result)> \V Under the main-convergence hypothesis, multi-point
    correlators evaluated at injectively placed lattice locations converge as
    N tends to infinity.
  </itemize-minus>

  <label|k-iii-13-22>

  <\itemize-minus>
    <item><strong|K-III.13.22> <hlink|<verbatim|compose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Circles.lean#L13-L47>
    <em|(key result)> \V Compatible single-scale step data compose into a
    global multi-scale history with prescribed top-level voice satisfying all
    step estimates.
  </itemize-minus>

  <label|k-iii-13-23>

  <\itemize-minus>
    <item><strong|K-III.13.23> <hlink|<verbatim|ceilings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Heal.lean#L24-L114>
    <em|(key result)> \V For a simple gauge and given tolerances, there exist
    constants such that every horizontal calculation admits choices of rates
    and cost parameters satisfying the required inequalities.
  </itemize-minus>

  <label|k-iii-13-24>

  <\itemize-minus>
    <item><strong|K-III.13.24> <hlink|<verbatim|repriseQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Reprise.lean#L45-L258>
    <em|(key result)> \V A single shared linear column-family step: one scale
    of the RG recursion maps a voice and column data to a lower-scale one
    with format, cost and remainder bounds.
  </itemize-minus>

  <label|k-iii-13-25>

  <\itemize-minus>
    <item><strong|K-III.13.25> <hlink|<verbatim|forestation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Wick/Tolls.lean#L27-L61>
    <em|(key result)> \V Under a rate hypothesis with room below a negative
    exponent, there exist a constant and a rate-zero function bounding
    quantities for all configurations in the Bower class, uniformly over
    tubes and steps.
  </itemize-minus>

  <label|k-iii-13-26>

  <\itemize-minus>
    <item><strong|K-III.13.26> <hlink|<verbatim|antilles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Couplet.lean#L57-L89>
    <em|(key result)> \V Given a coefficient X at level m with format and
    remainder bounds, there is a family of solutions down through levels with
    explicit coefficient and density relations to the played tones.
  </itemize-minus>

  <label|k-iii-13-27>

  <\itemize-minus>
    <item><strong|K-III.13.27> <hlink|<verbatim|colorReady>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Choices.lean#L137-L178>
    <em|(key result)> \V For a simple gauge, there exist constants such that,
    along a sequence of scales tending to infinity, the colored recorded data
    lift to path data with controlled leading terms and estimates.
  </itemize-minus>

  <label|k-iii-13-28>

  <\itemize-minus>
    <item><strong|K-III.13.28> <hlink|<verbatim|roomR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Plates.lean#L68-L87>
    <em|(key result)> \V Denominator observables are uniformly bounded and
    their integrals are uniformly bounded below by a positive constant for
    large N.
  </itemize-minus>

  <label|k-iii-13-29>

  <\itemize-minus>
    <item><strong|K-III.13.29> <hlink|<verbatim|basisE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert/Vines.lean#L22-L50>
    <em|(key result)> \V For a connected-activity target, for large side
    lengths there is a rate function such that smoothness and a estimate
    exist for all budget points, uniformly in the data.
  </itemize-minus>

  <label|k-iii-13-30>

  <\itemize-minus>
    <item><strong|K-III.13.30> <hlink|<verbatim|rootwards>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L59-L61>
    <em|(key result)> \V If snapshots converge and every extraction admits a
    further refinement with projected structure, then the slicing condition
    at order d holds for all large base scales p.
  </itemize-minus>

  <label|k-iii-13-31>

  <\itemize-minus>
    <item><strong|K-III.13.31> <hlink|<verbatim|acclaim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Chunk.lean#L34-L138>
    <em|(key result)> \V A renormalization-group step: given a coefficient
    configuration at level i+1 satisfying the guard conditions, there exists
    one at level i compatible with it, with the response and accord
    estimates.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero|III-12.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-13.tm>|<hlink|III.14 The construction run: flat
  representations and the ultraviolet rate \<rightarrow\>|III-14.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.13. Alternative construction: one Wilson family
    for all labels \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|5>>
    <associate|3-strategy|<tuple|3|5>>
    <associate|4-steps|<tuple|4|6>>
    <associate|5-where-the-difficulty-lies|<tuple|5|6>>
    <associate|6-notation|<tuple|6|6>>
    <associate|7-what-remains-unexplained|<tuple|7|7>>
    <associate|additional-source-locations|<tuple|9.1|9>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|9>>
    <associate|auto-11|<tuple|10|12>>
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|7>>
    <associate|auto-8|<tuple|8|7>>
    <associate|auto-9|<tuple|9|7>>
    <associate|code-dependencies|<tuple|8|7>>
    <associate|iii13-alternative-construction-one-wilson-family-for-all-labels|<tuple|?|1>>
    <associate|k-iii-13-1|<tuple|10|12>>
    <associate|k-iii-13-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-12|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-18|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-13-20|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-21|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-13-22|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-24|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-25|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-26|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-27|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-28|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-29|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-30|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-13-31|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-13-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-13-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|7>>
    <associate|unit-difficulty|<tuple|5|6>>
    <associate|unit-inputs|<tuple|5|5>>
    <associate|unit-limitations|<tuple|6|7>>
    <associate|unit-notation|<tuple|5|6>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|5>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|5>>
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

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Code
      dependencies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Lean
      source> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Additional source locations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Key
      statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>