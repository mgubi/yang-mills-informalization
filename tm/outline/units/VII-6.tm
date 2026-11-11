<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.5 Asymptotic freedom of the running
  coupling|VII-5.tm>|<hlink|Part VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-6.tm>|<hlink|VIII.1 Assembly of the main theorem
  \<rightarrow\>|VIII-1.tm>>

  <ym-title|VII.6. Scaling variants and fixed-field
  estimates><label|vii6-scaling-variants-and-fixed-field-estimates>

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

  <em|Part VII \V Identification as Yang\UMills.>

  Adapts observable estimates to prescribed scale sequences and gives a
  separate low-degree field estimate.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VII-6.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VII.5|VII-5.tm> <ym-middot> <hlink|Next:
  VIII.1 \<rightarrow\>|VIII-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
    <hlink|<verbatim|YM/TraceExtension/Prom/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom>,
    with outputs in <verbatim|Trace2>, <verbatim|FREE_STRESS_CERTIFICATE> and
    <verbatim|SharpGram>. <strong|Size:> 4,205 lines in 374 declarations.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.> Let <math|G> be a compact matrix group with simple Lie
  algebra, <math|C> a Wilson family with its construction record, and
  <math|F> an extraction order with ordered-tail filter
  <math|\<Phi\><rsub|F>> on cutoff pairs <math|<around|(|N,p|)>>. Let
  <math|S> be its limit table, with ordered smeared and generic point limits
  and Euclidean hierarchy <math|H>; the free Maxwell reference has hierarchy
  <math|H<rsub|0>>. Write <math|\<cal-F\><rsup|S><rsub|d>=<math-up|Label><rsub|d>/<math-up|Null><rsub|d><around|(|S|)>>,
  projection <math|\<pi\><rsub|d>> and unit <math|\<b-1\><rsub|d>>, and
  similarly <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>. Fix the RG-history
  binding, Haar budget and chart ratio of III.11. Its one-step cost
  assumption is (S), and <math|c<rsub|d>=2*<around|(|w<rsub|d>+1|)>>, where
  <math|w<rsub|d>> is the degree-<math|d> label-frame polynomial degree plus
  <math|4>.

  A scaling consists of positive radii <math|r<rsub|k>> strictly decreasing
  to zero, positive constants <math|\<xi\><rsub|k>>, and complex-linear
  isomorphisms <math|U<rsub|k><around|(|d|)>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-F\><rsup|S><rsub|d>>.
  It is <em|approaching> when, for every arity and free fields
  <math|v<rsub|i>\<in\>\<cal-F\><rsup|<math-up|free>><rsub|d<rsub|i>>>, the
  smooth kernels

  <\equation*>
    K<rsub|k><around|(|x|)>=<around|\<langle\>|U<rsub|k>*v<rsub|1>*<around|(|r<rsub|k>*x<rsub|1>|)>*\<cdots\>*U<rsub|k>*v<rsub|n>*<around|(|r<rsub|k>*x<rsub|n>|)>|\<rangle\>><rsup|S>-<around|\<langle\>|v<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*v<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>
  </equation*>

  satisfy: for every compact <math|K\<subset\><math-up|Conf><rsub|n>> and
  <math|M,\<varepsilon\>\<gtr\>0>, eventually
  <math|<around|\||<big|int>t*K<rsub|k>|\|>\<leqslant\>\<varepsilon\>> for
  every smooth <math|t> supported in <math|K> with
  <math|<around|\<\|\|\>|t|\<\|\|\>><rsub|\<infty\>>\<leqslant\>M>.

  <strong|Proposition VII.6.1 (prescribed null sequences).> Assume (S), real
  <math|z<rsub|d>\<geqslant\>c<rsub|i>> for every <math|i\<leqslant\>d>, the
  uniform-band property <math|<math-up|Fire><rsub|d><around|(|z<rsub|d>|)>>
  for every <math|d>, and <math|dim \<cal-F\><rsup|S><rsub|d>\<leqslant\>dim
  \<cal-F\><rsup|<math-up|free>><rsub|d>> for every <math|d>. Let
  <math|\<cal-L\>> be an ultrafilter on <math|\<bbb-N\><rsup|2>> finer than
  <math|\<Phi\><rsub|F>>. For every positive null sequence <math|s<rsub|i>>,
  there exist strictly increasing <math|f:\<bbb-N\>\<to\>\<bbb-N\>> and an
  approaching scaling with <math|r<rsub|k>=s<rsub|f<around|(|k|)>>> and
  <math|\<xi\><rsub|k>=1>. For each <math|d>, eventually
  <math|U<rsub|k><around|(|d|)>> is real, covariant under signed coordinate
  permutations between <math|H<rsub|0>,H>, and unit-preserving. There are
  depth-<math|k> vanes <math|V<rsub|k>>, checked at level <math|k>, whose
  stages tend to infinity and whose radii equal <math|r<rsub|k>>; for each
  <math|d>, eventually their full lift tuples through degree <math|k>
  converge along <math|\<cal-L\>> to <math|Y<rsub|k>>, with
  <math|U<rsub|k><around|(|d|)>=\<pi\><rsub|d>\<circ\>Y<rsub|k,d>>.

  <em|Status:> theorem conditional on the stated inputs. III.2 supplies the
  uniform-band property; VI.2 supplies the dimension cap from IV.1's
  corrected rank widths in the construction used by VII.2. <em|Lean:>
  <hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>.

  <strong|Proposition VII.6.2 (checked vanes).> Assume (S),
  <math|z<rsub|d>\<geqslant\>c<rsub|i>> for <math|i\<leqslant\>d>, and
  <math|<math-up|Fire><rsub|d><around|(|z<rsub|d>|)>> for every <math|d>.
  Retain the ordered and generic point limits, smoothness of <math|S>, and
  <math|H<rsub|0>>; the full hierarchy <math|H> is unnecessary. For every
  positive null sequence <math|s>, there exist strictly increasing
  <math|p:\<bbb-N\>\<to\>\<bbb-N\>>, with <math|s\<circ\>p> strictly
  decreasing, and depth-<math|d> vanes <math|V<rsub|d>> of stage
  <math|\<geqslant\>d>, checked at level <math|d>, with radius
  <math|s<rsub|p<around|(|d|)>>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|wakesSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87>.

  <strong|Proposition VII.6.3 (moving-band chessboard bound).> Assume (S).
  Fix <math|d\<in\>\<bbb-N\>>, <math|z\<geqslant\>c<rsub|i>> for
  <math|i\<leqslant\>d>, Taylor order <math|\<Delta\>\<in\>\<bbb-N\>>, real
  exponent <math|e>, real band ceiling <math|u<rsub|0>>, and
  degree-<math|\<leqslant\>d> stage packages <math|P<rsub|k>> with order
  <math|\<Delta\>>, exponent <math|e> and bands
  <math|b<rsub|k>\<leqslant\>u<rsub|0>>. Fix <math|n,m\<in\>\<bbb-N\>> with
  <math|n\<geqslant\>2>, <math|m+1\<leqslant\>n>, labels
  <math|g<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>> with
  <math|d<rsub|i>\<leqslant\>d> for <math|0\<leqslant\>i\<leqslant\>m>, and
  compact <math|K\<subset\><math-up|Conf><rsub|m+1>>. For all sufficiently
  large <math|k>, take any:

  <\itemize-minus>
    <item>stage-<math|k> cost record for <math|P<rsub|k>> with exponent
    <math|-3>, mark exponent <math|z> and arity bound <math|n>;

    <item>cutoff <math|N\<gtr\>k>, period <math|p>, and compatible
    stage-<math|k> RG representative along the same history;

    <item>configuration whose stage-<math|k> rounding, in units of
    <math|\<ell\><around|(|b<rsub|k>,k|)>>, lies in <math|K> and fits the
    stopping stage;

    <item>order-<math|\<Delta\>> polynomial lifts <math|T<rsub|i>> for that
    representative and labels <math|f<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>>
    whose images under <math|T<rsub|i>> and the coupling dilation equal
    <math|g<rsub|i>> weighted by <math|\<ell\><around|(|b<rsub|k>,k|)>/a<rsub|k>>.
  </itemize-minus>

  For every nonempty <math|s\<subset\><around|{|0,\<ldots\>,m|}>>,

  <\equation*>
    \<rho\><rsub|\<cal-T\>><around|(|\<Phi\><rsub|s>|)>\<leqslant\>\<mu\><rsub|k><rsup|-1/<around|(|16*n|)>>,<space|2em>\<Phi\><rsub|s>=<around|[|\<eta\><rsub|s>|]>*<around*|(|e<rsup|-D>*<big|prod><rsub|i=0><rsup|m><around|(|1+\<eta\><rsub|i>*O<rsub|i>|)>|)>.
  </equation*>

  Here the commuting markers satisfy <math|\<eta\><rsub|i><rsup|2>=0>,
  <math|\<eta\><rsub|s>=<big|prod><rsub|i\<in\>s>\<eta\><rsub|i>>,
  <math|O<rsub|i>> is the probe labelled <math|f<rsub|i>>, and <math|D> is
  the free cumulant polynomial of <math|g<rsub|i>> at the rounded rescaled
  points. The exponential is finite. The root uses coupling
  <math|\<beta\><rsub|N,p>> and width-stage cells. The threshold depends on
  <math|<around|(|d,z,\<Delta\>,e,u<rsub|0>,g,K,n|)>>, with band dependence
  only through <math|u<rsub|0>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|earningsSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91>.

  <strong|Proposition VII.6.4 (fixed-field supply).> Let <math|Y> be a final
  record for <math|<around|(|C,F,S|)>>, <math|\<varphi\>> a filter finer than
  <math|\<Phi\><rsub|F>>, <math|d\<in\>\<bbb-N\>> with <math|d\<leqslant\>3>,
  and <math|x\<in\><math-up|Label><rsub|d>>. There is <math|p\<in\>\<bbb-N\>>
  such that, for all large <math|k>, there are
  <math|y\<in\><math-up|Label><rsub|d>> and cutoff labels <math|q> with
  <math|\<pi\><rsub|d>*y=\<pi\><rsub|d>*x>, <math|q\<to\>y> along
  <math|\<varphi\>>, and <math|<math-up|quota><rsub|k><rsup|N,p<rprime|'>><around|(|q<rsub|N,p<rprime|'>>|)>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|p>>
  eventually along <math|\<varphi\>>. One can take <math|p=1> and <math|q>
  constant.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|inletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129>.

  <strong|Proposition VII.6.5 (degrees below four).> For every
  <math|d\<in\>\<bbb-N\>> with <math|d\<less\>4>, <math|dim
  \<cal-F\><rsup|<math-up|free>><rsub|d>=1>. If <math|Y> is a final record
  for <math|<around|(|C,F,S|)>>, every <math|u\<in\>\<cal-F\><rsup|S><rsub|d>>
  equals <math|t*\<b-1\><rsub|d>> for some <math|t\<in\>\<bbb-C\>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|dim_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54>,
  <hlink|<verbatim|first_grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>III.2: uniform-band construction; III.9\UIII.11: RG histories and
    stage estimates, including (S).

    <item>IV.1: extraction, limit tables, reflection positivity and corrected
    rank widths.

    <item>VI.1\UVI.2: free Maxwell comparison, stations, eventual injectivity
    and dimension cap.

    <item>VIII.1: final record, comparator isomorphisms and nonzero unit.

    <item>Intermediate value theorem, diagonal subsequences,
    finite-dimensional ultrafilter limits, Wilson chessboard estimates, and
    invariant theory for simple Lie algebras.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Varying the reading band over a unit interval makes successive reading
  intervals overlap, so they cover every sufficiently small radius. Uniform
  stage estimates across one block-factor change then permit exact prescribed
  radii. Chessboard comparison and two auxiliary bands control coincidence
  strips and Riemann sums; diagonal selection and ultrafilter limits produce
  approaching maps. Eventual injectivity and the dimension cap make them
  isomorphisms. Low-degree supply follows separately from the comparator and
  unit coordinates.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Dynamic stopping windows allow two neighbouring price indices.
    Under the block-factor bound supplied by poised stages, continuity gives
    overlapping reading intervals and exact radii. <hlink|Reading
    intervals|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L32-L43>.

    <item>Uniform probe and lift bounds propagate source expansions to the
    width stage; affordability there gives VII.6.3. <hlink|Root
    estimate|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Soft/Denarii.lean#L31-L62>.

    <item>Two auxiliary bands make the strip and interpolation errors vanish;
    station admissibility follows. <hlink|Balanced
    estimates|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Medal.lean#L39-L90>.

    <item>Diagonal choice gives checked vanes; bounded lifts converge along
    the common ultrafilter. Projection preserves symmetry and the unit;
    eventual injectivity plus the dimension cap gives bijectivity.
    <hlink|Lift limits|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Pepper.lean#L11-L60>,
    <hlink|isomorphisms|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L32-L58>.

    <item>Below degree four, the comparator transfers one-dimensionality.
    Constant unit representatives have quota
    <math|<around|\||t|\|>*a<rsub|k><rsup|d>\<leqslant\><wide|\<beta\>|^><rsub|k>>
    eventually. <hlink|Unit supply|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L54-L61>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The stage threshold must be uniform over the entire band interval. Two
  neighbouring price indices replace constant-factor plateaus. The dimension
  cap supplies surjectivity; weak convergence alone does not give the
  downstream trace argument. Scaling compatibility across degrees and
  stress-tensor normalization are not asserted.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|a<rsub|k>*\<downarrow\>*0> is the stage spacing, with block factors
  <math|a<rsub|k>/a<rsub|k+1>\<geqslant\>2>;
  <math|<wide|\<beta\>|^><rsub|k>=<wide|\<beta\>|\<bar\>>+c<rsub|G>*log
  a<rsub|k><rsup|-1>>, <math|c<rsub|G>\<gtr\>0>; <math|\<mu\><rsub|k>=exp
  <around|(|<around|(|log log <wide|\<beta\>|^><rsub|k>|)><rsup|2>|)>>;
  <math|\<ell\><around|(|b,k|)>=a<rsub|k>*\<mu\><rsub|k><rsup|b>>. Quota
  means stage-coordinate coefficient size; <math|<math-up|Conf><rsub|n>> is
  the configuration space of distinct points.

  The <hlink|coupling dilation|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L104>
  multiplies a frame vector with <math|q> curvature factors by
  <math|s<rsub|k,N,p><rsup|q>>, where <math|s<rsub|k,N,p>=\<beta\><rsub|N,p;k><rsup|-1/2>/<around|(|<wide|\<beta\>|^><rsub|k><rsup|-1/2>*\<mu\><rsub|k>|)>>
  and <math|\<beta\><rsub|N,p;k>> is the actual stage coupling. Position
  weighting multiplies an engineering-degree-<math|h> frame vector by the
  corresponding scale to power <math|h>.

  A degree-<math|D> package has band <math|b\<geqslant\>D+6>, Taylor order
  <math|\<theta\>\<geqslant\>D>, exponent <math|e> and price-index cost
  parameters with credit at least <math|b*D+D+2>. <hlink|Poised
  stages|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28>
  have reached the reference stages, both neighbouring block factors are at
  most <math|\<mu\><rsub|k>>, and their tables preserve the unit, reality and
  signed covariance, with relative coordinate errors at most <math|1/2> and
  <math|\<mu\><rsub|k><rsup|-1/2>>. Each package has a cost record with
  exponent <math|-3>, the specified mark and arity bounds, and compatible
  representatives and polynomial lifts realizing those tables for every
  <math|N\<gtr\>k,p>.

  The <hlink|uniform-band property|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32>
  <math|<math-up|Fire><rsub|d><around|(|z|)>> requires three package families
  with bands <math|b<rsub|i>+s>, <math|s\<in\><around|[|0,1|]>>, fixed Taylor
  orders and exponents, and <math|\<kappa\>\<less\>0> satisfying

  <\equation*>
    b<rsub|1>+6\<less\>b<rsub|0>,<space|1em>b<rsub|2>+5\<less\>b<rsub|0>+\<kappa\>,<space|1em><around|(|b<rsub|0>-b<rsub|1>|)>*d*<around|(|d+2|)>+\<kappa\>\<less\>0,<space|1em><around|(|b<rsub|0>-b<rsub|2>|)>*d*<around|(|d+2|)>-b<rsub|0>-\<kappa\>\<less\>0.
  </equation*>

  One threshold makes every triple poised for every
  <math|s\<in\><around|[|0,1|]>>, with arity bound <math|d+2> and mark
  exponent <math|z>.

  A depth-<math|D> <hlink|vane|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69>
  records stage <math|k>, band <math|b>, strip exponent and complex-linear
  cutoff tables on labels through degree <math|D>. <hlink|Checked at level
  <math|j>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47>
  requires <math|5\<less\>b\<leqslant\>log log <wide|\<beta\>|^><rsub|k>>,
  reference stages reached through degree <math|D>, and the table bounds
  above for every <math|N\<gtr\>k,p>. All generic rescaled lattice pairs of
  norm at most <math|100> fit; every degree-<math|\<leqslant\>D> free basis
  pair has recentred chessboard roots at most <math|1/<around|(|j+1|)>> on
  the fitted radius-<math|100> window. Its station is admissible through
  arity <math|j>, at window radius <math|j+1> and tolerance
  <math|1/<around|(|j+1|)>>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Constituent one-step estimates and eventual feasibility of the nonlinear
  small-field bounds remain in III.11. Paying all numerical requests belongs
  to III.2. The checked two-point bounds' role in deriving the trace anomaly
  belongs to VII.2.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VII-6.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|III.11|III-11.tm>, <hlink|I.1|I-1.tm>,
  <hlink|III.1|III-1.tm>, <hlink|II.2|II-2.tm>, <hlink|II.1|II-1.tm>,
  <hlink|IV.1|IV-1.tm>, <hlink|III.4|III-4.tm>, <hlink|VI.2|VI-2.tm>,
  <hlink|III.16|III-16.tm>, <hlink|V.2|V-2.tm>, <hlink|III.10|III-10.tm>,
  <hlink|VI.1|VI-1.tm>.

  <strong|Referenced by:> <hlink|III.2|III-2.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|VIII.1|VIII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 4,205 attributed lines; 374 line-counted
  declarations; 616 assigned declaration names. Of the assigned names, 598
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>
    and the results it chains to \V 3,601 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Prom/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom>
    \V 561 lines.

    <item>proof of <hlink|<verbatim|inletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129>
    \V 43 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Cells.RankWidths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L138>

    <item><hlink|<verbatim|Cells.standard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22>

    <item><hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>

    <item><hlink|<verbatim|Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>

    <item><hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>

    <item><hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>

    <item><hlink|<verbatim|ladder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117>

    <item><hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>

    <item><hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>

    <item><hlink|<verbatim|Scrim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34>

    <item><hlink|<verbatim|raises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L14-L22>

    <item><hlink|<verbatim|trays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L25>

    <item><hlink|<verbatim|ladd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Ladle.lean#L17-L19>

    <item><hlink|<verbatim|podium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Largo.lean#L21-L29>

    <item><hlink|<verbatim|Checks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28>

    <item><hlink|<verbatim|aspect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L36-L76>

    <item><hlink|<verbatim|wok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31>

    <item><hlink|<verbatim|Poised>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27>

    <item><hlink|<verbatim|lava_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42>

    <item><hlink|<verbatim|generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18>

    <item><hlink|<verbatim|tremor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L19-L41>

    <item><hlink|<verbatim|winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11>

    <item><hlink|<verbatim|earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90>

    <item><hlink|<verbatim|Ship.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28>

    <item><hlink|<verbatim|Ship.rebate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128>

    <item><hlink|<verbatim|Read.cumulants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L226>

    <item><hlink|<verbatim|Read.full_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250>

    <item><hlink|<verbatim|Read.cylinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L99>

    <item><hlink|<verbatim|moneys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Insiders.lean#L50>

    <item><hlink|<verbatim|weightTag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L89-L92>

    <item><hlink|<verbatim|Tapes.Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47>

    <item><hlink|<verbatim|Perch.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25>

    <item><hlink|<verbatim|middle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L44>

    <item><hlink|<verbatim|mag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L47>

    <item><hlink|<verbatim|Station.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L49>

    <item><hlink|<verbatim|hat_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L55-L56>

    <item><hlink|<verbatim|gap_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L60-L88>

    <item><hlink|<verbatim|Allowed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L93-L96>

    <item><hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tuning.lean#L24>

    <item><hlink|<verbatim|supply_wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128>

    <item><hlink|<verbatim|Granular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34>

    <item><hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>

    <item><hlink|<verbatim|cap_given>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110>

    <item><hlink|<verbatim|cap_given>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115>

    <item><hlink|<verbatim|Stations.equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>

    <item><hlink|<verbatim|MeterTest.injects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103>

    <item><hlink|<verbatim|quota>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21>

    <item><hlink|<verbatim|Zoom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L15-L19>

    <item><hlink|<verbatim|Approaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53>

    <item><hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>

    <item><hlink|<verbatim|Station.Admissible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97>

    <item><hlink|<verbatim|finite_extract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L74-L80>

    <item><hlink|<verbatim|Fades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27>

    <item><hlink|<verbatim|plentiful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Bardo.lean#L24-L77>

    <item><hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>

    <item><hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81>

    <item><hlink|<verbatim|YM/SharpGram/Clauses.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean>

    <item><hlink|<verbatim|outletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124>

    <item><hlink|<verbatim|Supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21>

    <item><hlink|<verbatim|Releases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L23-L26>

    <item><hlink|<verbatim|Kills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L28-L29>

    <item><hlink|<verbatim|quota_smul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L33-L37>

    <item><hlink|<verbatim|quota_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L38-L48>

    <item><hlink|<verbatim|coreRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L65-L85>

    <item><hlink|<verbatim|physicalRelease>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L87-L117>

    <item><hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>

    <item><hlink|<verbatim|vacuum_truncation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L94-L111>

    <item><hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>

    <item><hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>

    <item><hlink|<verbatim|merano>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76>

    <item><hlink|<verbatim|traySky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L26>

    <item><hlink|<verbatim|platterSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L27>

    <item><hlink|<verbatim|LegacyCostSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45>

    <item><hlink|<verbatim|ActumSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L40-L42>

    <item><hlink|<verbatim|yardSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L26-L28>

    <item><hlink|<verbatim|invoiceSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L40-L41>

    <item><hlink|<verbatim|gainSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L15-L16>

    <item><hlink|<verbatim|middleSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31>

    <item><hlink|<verbatim|widthSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32>

    <item><hlink|<verbatim|AllowedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46>

    <item><hlink|<verbatim|FitSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17>

    <item><hlink|<verbatim|readySky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L20-L38>

    <item><hlink|<verbatim|embalms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50>

    <item><hlink|<verbatim|LeapSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60>

    <item><hlink|<verbatim|agendasSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L61-L67>

    <item><hlink|<verbatim|fliesSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L68-L84>

    <item><hlink|<verbatim|podiumSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Largo.lean#L24-L34>

    <item><hlink|<verbatim|thirdSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Latch.lean#L52-L77>

    <item><hlink|<verbatim|w_rightSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Pint.lean#L37-L57>

    <item><hlink|<verbatim|stagingSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L30-L53>

    <item><hlink|<verbatim|tide_mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L14-L18>

    <item><hlink|<verbatim|near_skies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L19-L26>

    <item><hlink|<verbatim|gap_curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L27-L31>

    <item><hlink|<verbatim|gap_orders>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L45-L53>

    <item><hlink|<verbatim|ArcSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24>

    <item><hlink|<verbatim|open_readSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L34-L48>

    <item><hlink|<verbatim|sightSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L51-L95>

    <item><hlink|<verbatim|screensSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Emulation.lean#L33-L71>

    <item><hlink|<verbatim|await>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean>

    <item><hlink|<verbatim|SeqPair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29>

    <item><hlink|<verbatim|await>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L31-L39>

    <item><hlink|<verbatim|boatsSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62>

    <item><hlink|<verbatim|Vane.wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L71>

    <item><hlink|<verbatim|Vane.checked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L72>

    <item><hlink|<verbatim|breadSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L13-L31>

    <item><hlink|<verbatim|StarPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23>

    <item><hlink|<verbatim|span_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Low.lean#L133-L143>

    <item><hlink|<verbatim|four_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L112-L114>

    <item><hlink|<verbatim|just_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L29-L44>

    <item><hlink|<verbatim|below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49>

    <item><hlink|<verbatim|Cells.RankWidths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UV_STRESS>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vii-6-1>

  <\itemize-minus>
    <item><strong|K-VII.6.1> <hlink|<verbatim|laminateSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127>
    <em|(key result)> \V A nonlinear observable bound on the actual stencil:
    given sufficient pose and payments, the observable is valid on the fine
    patch and close to the critical bias on the coarse field.
  </itemize-minus>

  <label|k-vii-6-2>

  <\itemize-minus>
    <item><strong|K-VII.6.2> <hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>
    <em|(main result)> \V If the firing property holds in all dimensions
    under simple group, scrim, and dimension-above hypotheses, then for any
    sequence of scales tending to zero there is a subsequence along which a
    scaling limit star-path exists.
  </itemize-minus>

  <label|k-vii-6-3>

  <\itemize-minus>
    <item><strong|K-VII.6.3> <hlink|<verbatim|wakesSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87>
    <em|(key result)> \V From the firing property one extracts a subsequence
    of scales and vanes with checked properties and radii equal to the
    prescribed decreasing scales.
  </itemize-minus>

  <label|k-vii-6-4>

  <\itemize-minus>
    <item><strong|K-VII.6.4> <hlink|<verbatim|earningsSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91>
    <em|(key result)> \V Variant of the earnings estimate allowing parameters
    that vary with the sequence index within bounds.
  </itemize-minus>

  <label|k-vii-6-5>

  <\itemize-minus>
    <item><strong|K-VII.6.5> <hlink|<verbatim|y_readySky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71>
    <em|(numbered result)> \V A dynamic-stop variant of the readiness
    estimate bounding a root-test quantity by a budget.
  </itemize-minus>

  <label|k-vii-6-6>

  <\itemize-minus>
    <item><strong|K-VII.6.6> <hlink|<verbatim|lava_vSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50>
    <em|(key result)> \V The uniform endpoint estimate on compact sets holds
    for the dynamic-stops poised notion.
  </itemize-minus>

  <label|k-vii-6-7>

  <\itemize-minus>
    <item><strong|K-VII.6.7> <hlink|<verbatim|attireSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38>
    <em|(numbered result)> \V Under spacing, fit and stake hypotheses, a
    surviving-configuration property (Chast) holds for the dynamic-stops
    variant.
  </itemize-minus>

  <label|k-vii-6-8>

  <\itemize-minus>
    <item><strong|K-VII.6.8> <hlink|<verbatim|sweepSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57>
    <em|(key result)> \V Under support conditions, the tray functions are
    integrable and the assembled functional differs from the reference
    platter by at most the summed budget grantS.
  </itemize-minus>

  <label|k-vii-6-9>

  <\itemize-minus>
    <item><strong|K-VII.6.9> <hlink|<verbatim|inletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129>
    <em|(major result)> \V For inputs of grade at most three, the projected
    input supplies the required fixed-field estimate.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.5 Asymptotic freedom of the running
  coupling|VII-5.tm>|<hlink|Part VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-6.tm>|<hlink|VIII.1 Assembly of the main theorem
  \<rightarrow\>|VIII-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.6. Scaling variants and fixed-field estimates
    \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|3>>
    <associate|4-steps|<tuple|4|3>>
    <associate|5-where-the-difficulty-lies|<tuple|5|4>>
    <associate|6-notation|<tuple|6|4>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|5>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|5>>
    <associate|auto-11|<tuple|10|9>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|3>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-vii-6-1|<tuple|10|9>>
    <associate|k-vii-6-2|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-3|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-4|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-5|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-6|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-7|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-8|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-vii-6-9|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|key-statements|<tuple|10|9>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|5|4>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|4>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|3>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
    <associate|vii6-scaling-variants-and-fixed-field-estimates|<tuple|?|1>>
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