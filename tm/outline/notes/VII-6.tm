<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.5 Asymptotic freedom of the running
  coupling (notes)|VII-5.tm>|<hlink|Part VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-6.tm>|<hlink|VIII.1 Assembly of the main theorem
  (notes) \<rightarrow\>|VIII-1.tm>>

  <ym-title|VII.6. Scaling variants and fixed-field estimates \V detailed
  notes><label|vii6-scaling-variants-and-fixed-field-estimates--detailed-notes>

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

    <with|par-left|1tab|4.1 Reading scales and dynamic stops
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The uniform-band property
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Stage estimates with a moving band
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Checked vanes
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Limits along the ultrafilter
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Degrees below four
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit VII.6: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VII-6.tm>.
  </quotation>

  <hlink|Unit page|../units/VII-6.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
  <hlink|<verbatim|YM/TraceExtension/Prom/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom>
  contains the "Sky" files, 133 files with "dynamic stops". Other outputs are
  <hlink|<verbatim|Trace.first_grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37>
  and <hlink|<verbatim|FreeStress.dim_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54>.
  Also included are <hlink|<verbatim|SharpGram.inletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129>
  and its helpers in <hlink|<verbatim|YM/SharpGram/Clauses.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean>.
  <strong|Size:> 4,205 lines in 374 declarations:

  <\itemize-minus>
    <item>about 3,600 lines in the chain of
    <hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>;

    <item>about 560 further lines in the dynamic-stop files;

    <item>43 lines in the chain of the supply theorem.
  </itemize-minus>

  The unit has two parts.

  <\itemize-minus>
    <item><strong|(A) Scaling sequences at prescribed radii.> The ultraviolet
    construction (III.11) compares the lattice theory with the free field at
    reading scales <math|\<ell\><around|(|b,k|)>=a<rsub|k>*\<mu\><rsub|k><rsup|b>>.
    Varying the band <math|b> over a unit interval makes these scales cover
    every sufficiently small radius. The stage estimates remain valid across
    one change of block factor. They produce an approaching scaling of the
    limit theory along a subsequence of any prescribed positive null
    sequence.

    <item><strong|(B) Degrees below four.> In the limit theory every field of
    degree at most <math|3> is a multiple of the unit. It has a constant
    family of lattice representatives whose stage-<math|k> coefficient size
    is at most <math|<wide|\<beta\>|^><rsub|k>> on an ordered cutoff tail,
    for every sufficiently large <math|k>.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.>

  <em|The family and its stages.>

  <\itemize-minus>
    <item><math|G> is a compact matrix group with simple Lie algebra
    <math|\<frak-g\>>, and <math|C> is a Wilson family with its construction
    record (II.2, III.13).

    <item>Its RG stages <math|k> have spacings
    <math|a<rsub|k>*\<downarrow\>*0> and block factors
    <math|L<rsub|k>=a<rsub|k>/a<rsub|k+1>\<geqslant\>2>.

    <item>The running inverse coupling is
    <math|<wide|\<beta\>|^><rsub|k>=<wide|\<beta\>|\<bar\>>+c<rsub|G>*log
    a<rsub|k><rsup|-1>>, where <math|c<rsub|G>\<gtr\>0>. Put
  </itemize-minus>

  <\equation*>
    \<mu\><rsub|k>=exp <around*|(|<around|(|log log
    <wide|\<beta\>|^><rsub|k>|)><rsup|2>|)>,
  </equation*>

  which grows faster than every positive power of <math|log
  <wide|\<beta\>|^><rsub|k>> and slower than every positive power of
  <math|<wide|\<beta\>|^><rsub|k>> (III.11).

  <\itemize-minus>
    <item>For a real band <math|b>, the <em|reading scale> of stage <math|k>
    is <math|\<ell\><around|(|b,k|)>=a<rsub|k>*\<mu\><rsub|k><rsup|<space|0.17em>b>>.
    For fixed <math|b> it tends to <math|0>.
  </itemize-minus>

  <em|The limit theory and the free reference.>

  <\itemize-minus>
    <item><math|F> is an extraction order and <math|\<Phi\><rsub|F>> its
    filter of ordered cutoff tails on pairs <math|<around|(|N,p|)>> (IV.1).

    <item><math|S> is a limit table of <math|C> along <math|F> (ordered
    smeared limits and generic point limits), with a Euclidean hierarchy
    <math|H>.

    <item><math|\<cal-F\><rsup|S><rsub|d>=<math-up|Label><rsub|d>/<math-up|Null><rsub|d><around|(|S|)>>
    is the filtered field space of degree at most <math|d>,
    <math|\<pi\><rsub|d>:<math-up|Label><rsub|d>\<to\>\<cal-F\><rsup|S><rsub|d>>
    is the projection, and <math|\<b-1\><rsub|d>> is the unit.

    <item>The reference is the free Maxwell table of VI.2: gauge-invariant
    Wick polynomials in a free <math|\<frak-g\>>-valued field. Its field
    spaces are <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>, its unit is
    <math|\<b-1\><rsup|<math-up|free>><rsub|d>> and its hierarchy is
    <math|H<rsub|0>>.

    <item>Correlation kernels on <math|<math-up|Conf><rsub|n>> are written
    <math|<around|\<langle\>|\<phi\><rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*\<phi\><rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsup|S>>
    and <math|<around|\<langle\>|\<cdots\>|\<rangle\>><rsup|<math-up|free>>>.
  </itemize-minus>

  <em|Scalings.> A <em|scaling> (VI.1) consists of

  <\itemize-minus>
    <item>radii <math|r<rsub|k>\<gtr\>0> strictly decreasing to <math|0>,

    <item>constants <math|\<xi\><rsub|k>\<gtr\>0>,

    <item>complex-linear isomorphisms <math|U<rsub|k><around|(|d|)>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-F\><rsup|S><rsub|d>>.
  </itemize-minus>

  It is <em|approaching> (VI.2.7(a)) if the following holds for every
  <math|n> and all <math|v<rsub|i>\<in\>\<cal-F\><rsup|<math-up|free>><rsub|d<rsub|i>>>.
  Put

  <\equation*>
    K<rsub|k><around|(|x|)>=<around|\<langle\>|U<rsub|k>*v<rsub|1>*<around|(|r<rsub|k>*x<rsub|1>|)>*\<cdots\>*U<rsub|k>*v<rsub|n>*<around|(|r<rsub|k>*x<rsub|n>|)>|\<rangle\>><rsup|S>-<around|\<langle\>|v<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*v<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>.
  </equation*>

  The kernels <math|K<rsub|k>> are smooth on <math|<math-up|Conf><rsub|n>>
  and tend to zero locally with an order-zero bound: for every compact
  <math|K\<subset\><math-up|Conf><rsub|n>> and all
  <math|M,\<varepsilon\>\<gtr\>0>, eventually
  <math|<around|\||<big|int>t*K<rsub|k>|\|>\<leqslant\>\<varepsilon\>> for
  every smooth test function <math|t> supported in <math|K> and satisfying
  <math|<around|\<\|\|\>|t|\<\|\|\>><rsub|\<infty\>>\<leqslant\>M>.

  <em|Fixed data.>

  <\itemize-minus>
    <item><math|B> is a binding of the RG history to its price lists,
    <math|O> a Haar budget and <math|J> a chart ratio (III.11).

    <item>(S) is the one-step cost package of III.11.

    <item><math|c<rsub|d>=2*<around|(|w<rsub|d>+1|)>> are the mark exponents
    of III.11, where <math|w<rsub|d>> is the polynomial degree of the
    degree-<math|d> label frame plus <math|4>.

    <item>Write <math|J<rsub|k>> for the price index of stage <math|k>,
    <math|\<Lambda\><rsub|j>> for its block-factor list, and <math|T<rsub|d>>
    for the reference stage of degree <math|d>. Thus
    <math|L<rsub|k>=\<Lambda\><rsub|J<rsub|k+1>>>. Stage packages, poised
    stages, the uniform-band property <math|<math-up|Fire><rsub|d><around|(|z|)>>,
    vanes and checked vanes are defined in Ÿ4.
  </itemize-minus>

  <strong|Proposition VII.6.1 (approaching scalings along a subsequence of
  any null sequence).> Assume:

  <\itemize-minus>
    <item>(i) <math|G> is simple and (S) holds for <math|C>;

    <item>(ii) <math|<around|(|z<rsub|d>|)>> are reals with
    <math|z<rsub|d>\<geqslant\>c<rsub|i>> for all <math|i\<leqslant\>d>;

    <item>(iii) <math|<math-up|Fire><rsub|d><around|(|z<rsub|d>|)>> holds for
    every <math|d> (Definition VII.6.d);

    <item>(iv) <math|dim \<cal-F\><rsup|S><rsub|d>\<leqslant\>dim
    \<cal-F\><rsup|<math-up|free>><rsub|d>> for every <math|d>;

    <item>(v) <math|\<cal-L\>> is an ultrafilter on <math|\<bbb-N\><rsup|2>>
    finer than <math|\<Phi\><rsub|F>>.
  </itemize-minus>

  Let <math|s<rsub|i>\<gtr\>0> with <math|s<rsub|i>\<to\>0>. Then there are a
  strictly increasing <math|f:\<bbb-N\>\<to\>\<bbb-N\>> and a scaling with
  <math|r<rsub|k>=s<rsub|f<around|(|k|)>>> and <math|\<xi\><rsub|k>=1> such
  that:

  <\itemize-minus>
    <item>(a) the scaling is approaching;

    <item>(b) for every <math|d> and all large <math|k>,
    <math|U<rsub|k><around|(|d|)>> is real and covariant under signed
    coordinate permutations between <math|H<rsub|0>> and <math|H>, and
    <math|U<rsub|k><around|(|d|)>*\<b-1\><rsup|<math-up|free>><rsub|d>=\<b-1\><rsub|d>>;

    <item>(c) there are vanes <math|V<rsub|k>> of depth <math|k> with the
    following properties:

    <\itemize-minus>
      <item>their stages tend to infinity;

      <item><math|V<rsub|k>> is checked at level <math|k>;

      <item>its radius is <math|\<ell\><around|(|V<rsub|k>|)>=r<rsub|k>>;

      <item>for every <math|d> and all large <math|k>, the full lift tuple of
      <math|V<rsub|k>> in degrees <math|\<leqslant\>k> converges along
      <math|\<cal-L\>> to a tuple <math|Y<rsub|k>>, and
      <math|U<rsub|k><around|(|d|)>=\<pi\><rsub|d>\<circ\>Y<rsub|k,d>>.
    </itemize-minus>
  </itemize-minus>

  <em|Status:> theorem, with (iii) and (iv) carried as hypotheses. Both are
  supplied inside the construction run, where VII.2 applies this result:

  <\itemize-minus>
    <item>(iii) is produced by the uniform-band construction (III.2);

    <item>(iv) is the rank-width bound (VI.2), applied to the corrected rank
    widths of the seed (IV.1).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>.
  Conclusions (a)\U(c) are the structure <hlink|<verbatim|StarPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23>.

  <strong|Proposition VII.6.2 (checked vanes at prescribed radii).> Assume
  (i)\U(iii) of VII.6.1. Use the ordered and generic point limits from the
  setting. Only smoothness of <math|S>, rather than its full hierarchy, is
  needed here; the free hierarchy <math|H<rsub|0>> is still assumed. Let
  <math|s<rsub|i>\<gtr\>0> with <math|s<rsub|i>\<to\>0>. Then there are

  <\itemize-minus>
    <item>a strictly increasing <math|p:\<bbb-N\>\<to\>\<bbb-N\>> with
    <math|s\<circ\>p> strictly decreasing, and

    <item>for each <math|d\<in\>\<bbb-N\>>, a vane <math|V<rsub|d>> of depth
    <math|d> with stage <math|\<geqslant\>d>, checked at level <math|d>, with
    <math|\<ell\><around|(|V<rsub|d>|)>=s<rsub|p<around|(|d|)>>>.
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|wakesSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87>,
  with <hlink|<verbatim|Vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69>
  and <hlink|<verbatim|TimberSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47>.

  <strong|Proposition VII.6.3 (stage-<math|k> chessboard bound with a moving
  band).> Assume (i) of VII.6.1, let <math|d\<in\>\<bbb-N\>>, and let
  <math|z\<geqslant\>c<rsub|i>> for <math|i\<leqslant\>d>. Fix the following
  data:

  <\itemize-minus>
    <item><math|\<Delta\>\<in\>\<bbb-N\>>, <math|e,u<rsub|0>\<in\>\<bbb-R\>>,
    and stage packages <math|P<rsub|k>> of degree <math|\<leqslant\>d> with
    Taylor order <math|\<Delta\>>, exponent <math|e> and bands
    <math|b<rsub|k>\<leqslant\>u<rsub|0>>;

    <item><math|n\<geqslant\>2> and <math|m+1\<leqslant\>n>;

    <item>labels <math|g<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>> with
    <math|d<rsub|i>\<leqslant\>d>, for <math|0\<leqslant\>i\<leqslant\>m>;

    <item>a compact <math|K\<subset\><math-up|Conf><rsub|m+1>>.
  </itemize-minus>

  Then the following holds for all large <math|k>. Take:

  <\itemize-minus>
    <item>a stage-<math|k> cost record <math|L> of <math|P<rsub|k>> with
    exponent <math|-3>, mark exponent <math|z> and arity bound <math|n>;

    <item><math|N\<gtr\>k>, a period <math|p>, and a stage-<math|k> RG
    representative <math|V> compatible with <math|L> along the same RG
    history;

    <item><math|x> whose rounding to the stage-<math|k> lattice, in units of
    <math|\<ell\><around|(|b<rsub|k>,k|)>>, lies in <math|K> and fits the
    stopping stage;

    <item>stage-<math|k> polynomial lift data <math|T<rsub|i>> of Taylor
    order <math|\<Delta\>> for <math|V>, and labels
    <math|f<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>>, satisfying the
    rescaling equation: after applying <math|T<rsub|i>> and the coupling
    dilation of VII.6.n, the result is <math|g<rsub|i>> weighted by
    <math|\<ell\><around|(|b<rsub|k>,k|)>/a<rsub|k>>.
  </itemize-minus>

  Then for every nonempty subset <math|s\<subset\><around|{|0,\<ldots\>,m|}>>,

  <\equation*>
    \<rho\><rsub|\<cal-T\>><around|(|\<Phi\><rsub|s>|)>\<leqslant\><math-up|bud><rsub|n><around|(|k|)>\<assign\>\<mu\><rsub|k><rsup|-1/<around|(|16*n|)>>.
  </equation*>

  To define <math|\<Phi\><rsub|s>>, introduce commuting markers
  <math|\<eta\><rsub|i>> with <math|\<eta\><rsub|i><rsup|2>=0>. If
  <math|O<rsub|i>> is the lattice probe with label <math|f<rsub|i>>, and
  <math|D> is the free cumulant polynomial of the <math|g<rsub|i>> at the
  rounded, rescaled points, then

  <\equation*>
    \<Phi\><rsub|s>=<around|[|\<eta\><rsub|s>|]>*<around*|(|e<rsup|-D>*<big|prod><rsub|i=0><rsup|m><around|(|1+\<eta\><rsub|i>*O<rsub|i>|)>|)>,<space|2em>\<eta\><rsub|s>=<big|prod><rsub|i\<in\>s>\<eta\><rsub|i>.
  </equation*>

  The exponential is a finite polynomial in the marker algebra.
  <math|\<rho\><rsub|\<cal-T\>>> is the chessboard root at coupling
  <math|\<beta\><rsub|N,p>> over the tiling by cells of the width stage
  <math|m<rsub|0><around|(|b<rsub|k>,k|)>>.

  <em|Status:> theorem. The threshold in <math|k> depends on
  <math|<around|(|d,z,\<Delta\>,e,u<rsub|0>,g,K,n|)>> and on the bands only
  through <math|u<rsub|0>>. This uniformity is the difference with the
  fixed-band <hlink|<verbatim|earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90>
  of III.11.

  <em|Lean:> <hlink|<verbatim|earningsSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91>.
  The form for poised families is <hlink|<verbatim|lava_vSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50>.

  <strong|Proposition VII.6.4 (fixed-field supply in degrees
  <math|\<leqslant\>3>).> Let <math|Y> be a final record for
  <math|<around|(|C,F,S|)>> (VIII.1) and <math|G> simple. Let
  <math|\<varphi\>> be a filter on <math|\<bbb-N\><rsup|2>> finer than
  <math|\<Phi\><rsub|F>>, let <math|d\<leqslant\>3> and let
  <math|x\<in\><math-up|Label><rsub|d>>. Then <math|\<pi\><rsub|d>*x> is
  <em|supplied along <math|\<varphi\>>>. That is, there is
  <math|p\<in\>\<bbb-N\>> such that for all large <math|k> there are
  <math|y\<in\><math-up|Label><rsub|d>> and labels
  <math|q<rsub|N,p<rprime|'>>\<in\><math-up|Label><rsub|d>> with:

  <\itemize-minus>
    <item><math|\<pi\><rsub|d>*y=\<pi\><rsub|d>*x>;

    <item><math|q\<to\>y> along <math|\<varphi\>>;

    <item><math|<math-up|quota><rsub|k><rsup|N,p<rprime|'>><around|(|q<rsub|N,p<rprime|'>>|)>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|<space|0.17em>p>>
    eventually along <math|\<varphi\>>.
  </itemize-minus>

  Here <math|<math-up|quota><rsub|k><rsup|N,p<rprime|'>><around|(|u|)>> is
  the coefficient size of <math|u> at cutoff
  <math|<around|(|N,p<rprime|'>|)>>, written in stage-<math|k> coordinates
  (<hlink|<verbatim|quota>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21>).
  One can take <math|p=1> and <math|q> constant.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|inletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129>,
  <hlink|<verbatim|Supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21>.

  <strong|Proposition VII.6.5 (fields of degree below four).> Let <math|G> be
  simple and let <math|d\<in\>\<bbb-N\>> satisfy <math|d\<less\>4>.

  <\itemize-minus>
    <item>(a) <math|dim \<cal-F\><rsup|<math-up|free>><rsub|d>=1>.

    <item>(b) If <math|Y> is a final record for <math|<around|(|C,F,S|)>>,
    then every <math|u\<in\>\<cal-F\><rsup|S><rsub|d>> is of the form
    <math|t*<space|0.17em>\<b-1\><rsub|d>> with <math|t\<in\>\<bbb-C\>>.
  </itemize-minus>

  <em|Status:> theorem. Used by VII.6.4 and by
  <hlink|<verbatim|vacuum_truncation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L94-L111>.

  <em|Lean:> (a) <hlink|<verbatim|dim_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54>;
  (b) <hlink|<verbatim|first_grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><strong|III.11 (interacting rank).> The stage estimates and
    numerical bounds:

    <\itemize-minus>
      <item>The fixed-band estimates underlying the moving-band argument:

      <\itemize-minus>
        <item><hlink|<verbatim|earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Tael.lean#L58-L90>,
        <hlink|<verbatim|lava_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Reach.lean#L27-L42>;

        <item><hlink|<verbatim|Poised>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27>,
        <hlink|<verbatim|aspect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L36-L76>,
        <hlink|<verbatim|podium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Largo.lean#L21-L29>.
      </itemize-minus>

      <item>The reading-scale arithmetic:

      <\itemize-minus>
        <item><hlink|<verbatim|Station.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L49>,
        <hlink|<verbatim|mag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L47>;

        <item>the rounding <hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Tuning.lean#L24>;

        <item>the rates <hlink|<verbatim|hat_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L55-L56>
        and <hlink|<verbatim|gap_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L60-L88>.
      </itemize-minus>

      <item>The budget <hlink|<verbatim|Ship.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28>
      and the pattern of the root bound <hlink|<verbatim|Ship.rebate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128>
      (III.11, Lemma 4.7).

      <item>The step from root bounds to a pointwise comparison,
      <hlink|<verbatim|Read.full_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250>.

      <item>The one-step cost package <hlink|<verbatim|Scrim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34>.

      <item>The band inequalities <hlink|<verbatim|Checks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28>
      and the vane lift <hlink|<verbatim|wok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31>.
    </itemize-minus>

    <item><strong|III.2 (choice of constants).> Production of the
    uniform-band property by <hlink|<verbatim|embalms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50>,
    <hlink|<verbatim|stagingSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L30-L53>
    and the package extension of III.2. Also the construction runs
    <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>,
    <hlink|<verbatim|plentiful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Bardo.lean#L24-L77>
    and <hlink|<verbatim|merano>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76>.
    These runs:

    <\itemize-minus>
      <item>choose <math|z<rsub|d>=<big|sum><rsub|i\<leqslant\>d>c<rsub|i>>;

      <item>choose an ultrafilter <math|\<cal-L\>> finer than
      <math|\<Phi\><rsub|F>>;

      <item>invoke the uniform-band construction and then the gallery theorem
      of VII.2.
    </itemize-minus>

    <item><strong|III.9, III.10, III.11.> The RG history, background fields
    and one-step bounds used in VII.6.g.

    <item><strong|IV.1.>

    <\itemize-minus>
      <item>Extraction orders and limit tables.

      <item>The chessboard estimate (Lemma IV.1.b; reflection positivity of
      the Wilson action).

      <item>The corrected rank widths <hlink|<verbatim|Cells.RankWidths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L138>
      that give hypothesis (iv).
    </itemize-minus>

    <item><strong|VI.1, VI.2.> The scaling record
    <hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>.
    The free Maxwell table <hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>.
    The rest of the station machinery:

    <\itemize-minus>
      <item>stations and admissibility <hlink|<verbatim|Station.Admissible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97>
      (VI.2.8);

      <item>balanced estimates give stations:
      <hlink|<verbatim|Granular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34>,
      <hlink|<verbatim|supply_wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128>
      (VI.2.s);

      <item><hlink|<verbatim|Approaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53>
      and <hlink|<verbatim|Fades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27>;

      <item>eventual injectivity <hlink|<verbatim|MeterTest.injects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103>;

      <item>the dimension cap <hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>
      and its proof <hlink|<verbatim|cap_given>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115>;

      <item>the fixed-radius analogue <hlink|<verbatim|Stations.equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>
      (VI.2.t);

      <item>the free labels of degree <math|\<less\>4>:
      <hlink|<verbatim|just_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L29-L44>,
      <hlink|<verbatim|below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49>,
      <hlink|<verbatim|span_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Low.lean#L133-L143>.
    </itemize-minus>

    <item><strong|VIII.1.> The final record
    <hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>.
    Part B uses three of its fields:

    <\itemize-minus>
      <item>the construction record;

      <item>the hierarchy laws, giving <math|\<b-1\><rsub|d>\<ne\>0>;

      <item>the comparator, a linear isomorphism
      <math|\<cal-F\><rsup|S><rsub|d>\<cong\>\<cal-F\><rsup|<math-up|free>><rsub|d>>
      for each <math|d>.
    </itemize-minus>

    <item><strong|VII.2 (consumer).> <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>
    proves the last clause of <hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>
    from VII.6.1. That clause says: for every null sequence <math|s> there
    are a subsequence and a scaling with radii <math|s\<circ\>f> carrying the
    trace-comparison witness.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Reflection positivity of the Wilson action (Osterwalder\USeiler,
    Ann. Phys. 110 (1978)) and chessboard estimates
    (Fröhlich\UIsrael\ULieb\USimon, CMP 62 (1978)).

    <item>Baªaban's block-spin renormalization group with background fields
    (CMP, 1983\U1989). It is used only through the stage estimates of
    III.9\UIII.11.

    <item>The intermediate value theorem and recursive (diagonal) choice of
    subsequences.

    <item>Ultrafilter limits in finite-dimensional spaces (bounded sequences
    converge along any ultrafilter).

    <item>For simple <math|\<frak-g\>>: the adjoint representation has no
    nonzero invariant vectors, and invariant symmetric bilinear forms on
    <math|\<frak-g\>> are multiples of the Killing form. Both are used only
    through VI.2.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>Hypotheses carried by VII.6.1: (S), the uniform-band property, the
    dimension cap and the ultrafilter. Their discharge is described above.

    <item>The budget <math|<math-up|bud><rsub|n><around|(|k|)>=exp
    <around|(|-log \<mu\><rsub|k>/<around|(|16*n|)>|)>>. The cost-record
    exponent <math|-3>.

    <item>The mark exponents <math|c<rsub|d>=2*<around|(|w<rsub|d>+1|)>>
    (<hlink|<verbatim|generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18>,
    <hlink|<verbatim|winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Tender.lean#L11>).

    <item>Bands at least <math|d+6>, and the inequalities between three bands
    in VII.6.d.

    <item>Arity bound <math|d+2> for degree <math|d>
    (<hlink|<verbatim|trays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L25>).

    <item>In the stopping rule: the margin <math|\<mu\><rsub|k><rsup|2>> and
    the depth <math|<around|\<lceil\>|<around|(|log
    <wide|\<beta\>|^><rsub|k>|)><rsup|2>|\<rceil\>><rsup|10>>.

    <item>In the checked condition: tolerance <math|1/<around|(|j+1|)>> with
    window radius <math|j+1>, and window radius <math|100> for the two-point
    bound.

    <item>The error <math|<wide|\<beta\>|^><rsub|i><rsup|-1/32>> in Lemma
    VII.6.j.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  For fixed <math|b>, the reading scales <math|\<ell\><around|(|b,k|)>> form
  a discrete null sequence. The fixed-band argument of III.11 also requires a
  plateau of constant block factor across its RG window. These restrictions
  do not ensure that its radii meet a prescribed null sequence. VII.2 needs
  such a sequence to test the trace anomaly at arbitrary short distances.

  Let the band vary over <math|<around|[|b<rsub|0>,b<rsub|0>+1|]>>, with
  <math|b<rsub|0>\<geqslant\>0>. Eventually
  <math|\<mu\><rsub|k>\<leqslant\>\<mu\><rsub|k+1>> and
  <math|L<rsub|k>\<leqslant\>\<mu\><rsub|k+1>>, so

  <\equation*>
    \<ell\><around|(|b<rsub|0>,k|)>=a<rsub|k+1>*L<rsub|k>*\<mu\><rsub|k><rsup|b<rsub|0>>\<leqslant\>a<rsub|k+1>*\<mu\><rsub|k+1><rsup|b<rsub|0>+1>=\<ell\><around|(|b<rsub|0>+1,k+1|)>.
  </equation*>

  The reading intervals therefore overlap and cover all sufficiently small
  positive radii. Continuity in the band gives exact equality with each
  target radius. The stage estimates must now be uniform over a unit interval
  of bands, and their stopping rule must allow a change of block factor. The
  uniform-band input comes from III.2; the modified estimates occupy most of
  this unit.

  The chessboard bound gives a pointwise comparison with free correlations.
  Two auxiliary bands control the strip near the coincidence sets and the
  Riemann-sum error on its complement. These bounds yield admissible stations
  at the target radii. A diagonal choice makes their depth and arity increase
  while their tolerance tends to zero. Their bounded lift tuples converge
  along a single ultrafilter; projection to the limit field spaces gives
  approaching linear maps. Free test functionals make these maps eventually
  injective, and the dimension cap makes them isomorphisms. For degrees below
  four, a separate argument transports the one-dimensional free field spaces
  through the final comparator. Multiples of the unit then have constant
  lattice representatives with the required coefficient bound.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Reading scales and dynamic
  stops><label|41-reading-scales-and-dynamic-stops>

  <strong|Lemma VII.6.a (stopping stages and fit).> Fix a band <math|b> and a
  stage <math|k>. The middle stage <math|m<rsub|1><around|(|b,k|)>> is the
  largest <math|j\<leqslant\>k> for which
  <math|a<rsub|j>\<geqslant\>\<mu\><rsub|k><rsup|2>*\<ell\><around|(|b,k|)>>,
  with value <math|0> if no such <math|j> exists. Put
  <math|Q<rsub|k>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|k>|)><rsup|2>|\<rceil\>>>. The width stage
  <math|m<rsub|0><around|(|b,k|)>> is the largest
  <math|j\<leqslant\>m<rsub|1>> for which
  <math|a<rsub|j>\<geqslant\>Q<rsub|k><rsup|10>*a<rsub|m<rsub|1>>>, again
  with value <math|0> if the set is empty.

  The pair <math|<around|(|b,k|)>> is <em|allowed> when both defining
  inequalities hold at the selected stages,

  <\equation*>
    min <around|(|\<Lambda\><rsub|J<rsub|k>>,\<Lambda\><rsub|J<rsub|k>-1>|)>\<geqslant\>2,<space|2em>J<rsub|m>\<geqslant\>J<rsub|k>-1*<space|1em><around|(|m<rsub|0>\<leqslant\>m\<leqslant\>k|)>.
  </equation*>

  Monotonicity also gives <math|J<rsub|m>\<leqslant\>J<rsub|k>>. Thus each
  block factor in this window is at least <math|\<lambda\><rsub|k>=min
  <around|(|\<Lambda\><rsub|J<rsub|k>>,\<Lambda\><rsub|J<rsub|k>-1>|)>>, and

  <\equation*>
    \<lambda\><rsub|k><rsup|j-m>\<leqslant\>a<rsub|m>/a<rsub|j>*<space|2em><around|(|m<rsub|0>\<leqslant\>m\<leqslant\>j\<leqslant\>k|)>.
  </equation*>

  Round <math|x> to the stage-<math|k> lattice in units of
  <math|\<ell\><around|(|b,k|)>>, and multiply by
  <math|\<ell\><around|(|b,k|)>> to obtain its physical configuration. It
  <em|fits> if that configuration is generic and every coordinate has
  absolute value at most <math|a<rsub|m<rsub|1>>/8>. For fixed
  <math|b\<gtr\>0> and generic <math|x>, it fits for every sufficiently large
  allowed <math|k>. More uniformly, for each <math|R\<in\>\<bbb-R\>> and
  arity <math|n>, every generic rescaled lattice configuration of norm at
  most <math|R> fits for sufficiently large allowed <math|k>, uniformly in
  <math|b>.

  <em|Proof sketch.> The stopping indices are maxima of finite sets. The
  allowed conditions give the two scale margins. Since
  <math|J<rsub|m>\<in\><around|{|J<rsub|k>-1,J<rsub|k>|}>>, multiplying the
  lower block-factor bound gives the ratio estimate. Rounding converges for a
  fixed positive band; the margin <math|\<mu\><rsub|k><rsup|2>\<to\>\<infty\>>
  then absorbs each fixed configuration. For rescaled lattice configurations,
  rounding is exact, so the same margin absorbs <math|R> uniformly in the
  band.

  On an allowed plateau of III.11, the maximum definitions agree with its
  ceiling-based stopping stages: <math|a<rsub|j>/a<rsub|k>=L<rsup|k-j>> turns
  the defining inequalities into the same ceiling inequalities.

  Inputs: <hlink|<verbatim|readySky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L20-L38>,
  <hlink|<verbatim|open_readSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L34-L48>.

  <em|Lean:> <hlink|<verbatim|gainSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L15-L16>,
  <hlink|<verbatim|middleSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31>,
  <hlink|<verbatim|widthSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32>,
  <hlink|<verbatim|AllowedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46>,
  <hlink|<verbatim|FitSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17>;
  fixed versions <hlink|<verbatim|middle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L44>,
  <hlink|<verbatim|Allowed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L93-L96>.
  <em|(proof read; stopping definitions read)>

  <strong|Lemma VII.6.b (overlapping reading intervals).> Let <math|G> be
  simple, <math|b\<geqslant\>0>, and assume <math|max
  <around|(|\<Lambda\><rsub|J<rsub|k>>,\<Lambda\><rsub|J<rsub|k>-1>|)>\<leqslant\>\<mu\><rsub|k>>
  for all sufficiently large <math|k>. Then eventually
  <math|\<ell\><around|(|b,k|)>\<leqslant\>\<ell\><around|(|b+1,k+1|)>>. For
  every <math|J\<in\>\<bbb-N\>> there is <math|r\<gtr\>0> such that each
  <math|s\<in\><around|(|0,r|]>> equals <math|\<ell\><around|(|b+c,k|)>> for
  some <math|k\<geqslant\>J> and <math|c\<in\><around|[|0,1|]>>.

  <em|Proof sketch.> Eventually <math|<wide|\<beta\>|^><rsub|k>\<geqslant\>e>
  and <math|\<mu\><rsub|k>\<leqslant\>\<mu\><rsub|k+1>>. The factor
  <math|L<rsub|k>> is among the two factors controlled at stage <math|k+1>,
  so <math|L<rsub|k>\<leqslant\>\<mu\><rsub|k+1>>. This gives overlap. Choose
  a sufficiently large <math|i\<geqslant\>J> and put
  <math|r=\<ell\><around|(|b,i|)>>. For <math|0\<less\>s\<leqslant\>r>, take
  the least <math|k\<gtr\>i> with <math|\<ell\><around|(|b,k|)>\<leqslant\>s>.
  Then

  <\equation*>
    \<ell\><around|(|b,k|)>\<leqslant\>s\<leqslant\>\<ell\><around|(|b,k-1|)>\<leqslant\>\<ell\><around|(|b+1,k|)>.
  </equation*>

  Continuity of <math|c\<mapsto\>\<ell\><around|(|b+c,k|)>> gives <math|c>.

  <em|Lean:> <hlink|<verbatim|tide_mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L14-L18>,
  <hlink|<verbatim|near_skies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L19-L26>,
  <hlink|<verbatim|gap_curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L27-L31>,
  <hlink|<verbatim|gap_account>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L32-L43>.

  <strong|Lemma VII.6.c (a null sequence is realized at increasing stages).>
  Under the hypotheses of VII.6.b, let <math|s<rsub|j>\<gtr\>0> with
  <math|s<rsub|j>\<to\>0>, and let <math|J\<in\>\<bbb-N\>>. Then there are
  strictly increasing <math|K,P:\<bbb-N\>\<to\>\<bbb-N\>> and
  <math|c<rsub|j>\<in\><around|[|0,1|]>> with <math|P<rsub|j>\<geqslant\>J>
  and <math|s<rsub|K<rsub|j>>=\<ell\><around|(|b+c<rsub|j>,P<rsub|j>|)>>.

  <em|Proof sketch.> Recursion: apply VII.6.b with threshold <math|max
  <around|(|J,P<rsub|j-1>|)>+1>, and pick <math|K<rsub|j>\<gtr\>K<rsub|j-1>>
  with <math|s<rsub|K<rsub|j>>\<leqslant\>r>.

  <em|Lean:> <hlink|<verbatim|gap_orders>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Ramp.lean#L45-L53>.

  <subsection|4.2 The uniform-band property><label|42-the-uniform-band-property>

  <strong|Definition VII.6.d (packages, poised stages and the uniform-band
  property).> A package of degree <math|\<leqslant\>D> consists of a band
  <math|b\<geqslant\>D+6>, a Taylor order <math|\<theta\>\<geqslant\>D>, an
  exponent <math|e>, and a purse of numerical cost parameters at each price
  index. Every purse has band <math|b>, Taylor order <math|\<theta\>>,
  exponent <math|e>, and credit at least <math|b*D+D+2>.

  A finite family of packages is <em|poised at stage <math|k>>, with arity
  bound <math|n>, mark exponent <math|z> and tables
  <math|R<rsub|N,p,d>\<in\><math-up|End><rsub|\<bbb-C\>><around|(|<math-up|Label><rsub|d>|)>>
  for <math|d\<leqslant\>D>, when:

  <\itemize-minus>
    <item><math|T<rsub|d>\<leqslant\>k> for every <math|d\<leqslant\>D>;

    <item><math|max <around|(|\<Lambda\><rsub|J<rsub|k>>,\<Lambda\><rsub|J<rsub|k>-1>|)>\<leqslant\>\<mu\><rsub|k>>;

    <item>for every <math|N\<gtr\>k> and <math|p>, the tables send the
    reference unit label to its frame unit vector, preserve the real
    structure, commute with signed coordinate permutations, and approximate
    the actual stage-<math|k> coordinate maps to relative coefficient-size
    error at most <math|1/2>;

    <item>the sharper relative error bound <math|\<mu\><rsub|k><rsup|-1/2>>
    also holds;

    <item>for each package there is a stage-<math|k> cost record with
    exponent <math|-3>, mark exponent <math|z> and arity bound <math|n>; for
    every <math|N\<gtr\>k> and <math|p>, it has a compatible RG
    representative and polynomial lift data realizing the same tables.
  </itemize-minus>

  The cost record also contains the allowed stopping stages of VII.6.a,
  numerical and background-field bounds along the RG window, room bounds for
  each arity at most <math|n>, and the one-step estimates used in VII.6.g.

  The <em|uniform-band property> <math|<math-up|Fire><rsub|d><around|(|z|)>>
  asserts that there are package families
  <math|P<rsub|s><rsup|<around|(|i|)>>>, <math|i=0,1,2>, base bands
  <math|b<rsub|0>,b<rsub|1>,b<rsub|2>>, and <math|\<kappa\>\<less\>0>,
  satisfying

  <\equation*>
    b<rsub|1>+6\<less\>b<rsub|0>,<space|1em>b<rsub|2>+5\<less\>b<rsub|0>+\<kappa\>,<space|1em><around|(|b<rsub|0>-b<rsub|1>|)>*d*<around|(|d+2|)>+\<kappa\>\<less\>0,<space|1em><around|(|b<rsub|0>-b<rsub|2>|)>*d*<around|(|d+2|)>-b<rsub|0>-\<kappa\>\<less\>0.
  </equation*>

  For <math|s\<in\><around|[|0,1|]>>, the bands are <math|b<rsub|i>+s>, and
  each family's Taylor order and exponent are independent of <math|s>. There
  is a single <math|k<rsub|0>> such that, for every
  <math|k\<geqslant\>k<rsub|0>> and every <math|s\<in\><around|[|0,1|]>>, the
  triple is poised at stage <math|k> with arity bound <math|d+2> and mark
  exponent <math|z>, for some tables.

  <em|Production in III.2.> Starting from its package and block-size
  requests, a local chart ratio and nonnegative mark exponents, the
  construction enlarges a waiting window so that every family paid on the
  enlarged window, with the required covariance of its coordinate maps and a
  binding to the same prices, satisfies <math|<math-up|Fire><rsub|d><around|(|z<rsub|d>|)>>
  for every <math|d>. Packages chosen at bands <math|b<rsub|i>+1> are lowered
  to <math|b<rsub|i>+s> without changing their Taylor orders or exponents.
  The poised-stage threshold is uniform in <math|s\<in\><around|[|0,1|]>>.

  <em|Lean:> <hlink|<verbatim|Tapes.Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47>,
  <hlink|<verbatim|PoisedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28>,
  <hlink|<verbatim|LegacyCostSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45>,
  <hlink|<verbatim|FiresSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32>,
  <hlink|<verbatim|Checks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Medal.lean#L23-L28>,
  <hlink|<verbatim|raises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L14-L22>,
  <hlink|<verbatim|embalms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50>.
  <em|(definitions read; production proof read)>

  <strong|Lemma VII.6.e (leaps).> Let <math|G> be simple and assume
  <math|<math-up|Fire><rsub|d><around|(|z|)>> with base bands
  <math|b<rsub|0>,b<rsub|1>,b<rsub|2>>. Then <math|b<rsub|0>\<gtr\>5>, and
  the following holds for every <math|s<rsub|i>\<gtr\>0> with
  <math|s<rsub|i>\<to\>0>. There are:

  <\itemize-minus>
    <item>a strictly increasing <math|f>;

    <item>strictly increasing stages <math|k<rsub|i>\<geqslant\>k<rsub|0>>;

    <item>offsets <math|e<rsub|k>\<in\><around|[|0,1|]>>;

    <item>tables <math|Y<rsub|i>>;
  </itemize-minus>

  such that the triple <math|P<rsub|e<rsub|k<rsub|i>>>> is poised at stage
  <math|k<rsub|i>> with <math|Y<rsub|i>>, and
  <math|s<rsub|f<around|(|i|)>>=\<ell\><around|(|b<rsub|0>+e<rsub|k<rsub|i>>,k<rsub|i>|)>>.

  <em|Proof sketch.>

  <\enumerate>
    <item><math|b<rsub|0>\<geqslant\>d+6>.

    <item>The poised condition gives <math|max
    <around|(|\<Lambda\><rsub|J<rsub|k>>,\<Lambda\><rsub|J<rsub|k>-1>|)>\<leqslant\>\<mu\><rsub|k>>,
    which is the hypothesis of VII.6.b.

    <item>Apply VII.6.c with base <math|b<rsub|0>> and threshold
    <math|k<rsub|0>>. Put <math|e<rsub|P<rsub|j>>=c<rsub|j>> and <math|e=0>
    elsewhere.

    <item><math|<math-up|Fire><rsub|d>> at <math|s=c<rsub|j>> gives poised
    data at stage <math|P<rsub|j>\<geqslant\>k<rsub|0>>. Here the threshold
    must not depend on <math|s>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|fliesSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L68-L84>,
  <hlink|<verbatim|LeapSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60>,
  <hlink|<verbatim|ArcSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24>.

  <subsection|4.3 Stage estimates with a moving
  band><label|43-stage-estimates-with-a-moving-band>

  <strong|Lemma VII.6.f (= Proposition VII.6.3).>

  <em|Proof sketch.> Follow the fixed-band argument of III.11 with three
  uniform estimates and the modified stopping stages.

  <\enumerate>
    <item>The local probe bounds hold uniformly for bands
    <math|\<leqslant\>u<rsub|0>>.

    <item>The polynomial lifts of the <math|g<rsub|i>> have bounds
    independent of the band.

    <item>The mark exponent <math|z\<geqslant\>c<rsub|d<rsub|i>>> converts
    normalized coefficient bounds on the <math|f<rsub|i>> into
    source-expansion bounds (<hlink|<verbatim|tremor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L19-L41>).

    <item>Per-site affordability holds from some stage <math|u> on. It is
    needed at the width stage <math|m<rsub|0>>.

    <item><math|u\<leqslant\>m<rsub|0>> for large <math|k>. If
    <math|m<rsub|0>\<less\>u>, the bracket condition of VII.6.a would give
    <math|J<rsub|k>-1\<leqslant\>J<rsub|m<rsub|0>>\<leqslant\>J<rsub|u>>,
    contradicting <math|J<rsub|k>\<gtr\>J<rsub|u>+1>. In the fixed version
    the plateau is used here, with <math|J<rsub|k>\<gtr\>J<rsub|u>>.

    <item>Lemma VII.6.g then gives the bound.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|earningsSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91>,
  <hlink|<verbatim|ActumSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L40-L42>.

  <strong|Lemma VII.6.g (root bound at one stage).> Fix a cost record of
  degree bound <math|D>, band <math|b\<geqslant\>0>, purse exponent <math|e>,
  mark exponent <math|z> and arity bound <math|u\<geqslant\>2>. Fix
  <math|N\<geqslant\>k> and a period <math|p>, let
  <math|d<rsub|i>\<leqslant\>D> for <math|0\<leqslant\>i\<leqslant\>m>, and
  assume <math|m+1\<leqslant\>u>, <math|T<rsub|D>\<leqslant\>k> and
  <math|T<rsub|d<rsub|i>>\<leqslant\>k>. Take an RG history from the cutoff
  to <math|m<rsub|0><around|(|b,k|)>> satisfying the cost record, the
  per-site affordability bound at <math|m<rsub|0>>, the required local work
  items, and the implication from the stage-<math|k> seal to its covariance
  model. Let <math|g<rsub|i>,f<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>>
  and polynomial lift data satisfy the rescaling equation of VII.6.3. Assume
  the configuration fits, its rounded position belongs to the specified
  compact set, and the uniform local probe bounds hold there. Write
  <math|\<gamma\>> for the purse credit and <math|M<rsub|k,N,p,d>> for the
  normalized stage-coordinate coefficient size multiplied by the stage
  multiplicity bound. Finally assume:

  <\itemize-minus>
    <item><math|\<mu\><rsub|k><rsup|e>*<space|0.17em>M<rsub|k,N,p,d<rsub|i>><around|(|f<rsub|i>|)>\<leqslant\>\<mu\><rsub|k><rsup|-8>>
    for each probe;

    <item>its lifted polynomial has coefficient sum at most
    <math|\<mu\><rsub|k><rsup|\<gamma\>>>;

    <item>separation of the probe seats implies the source-expansion bound
    with weight <math|g<rsub|k><rsup|z>>, where
    <math|g<rsub|k>=<wide|\<beta\>|^><rsub|k><rsup|-1/2>>.
  </itemize-minus>

  Then <math|\<rho\><rsub|\<cal-T\>><around|(|\<Phi\><rsub|s>|)>\<leqslant\><math-up|bud><rsub|u><around|(|k|)>>
  for every nonempty <math|s>.

  <em|Proof sketch.> The history gives compatible background fields and
  marker estimates at each stage. The covariance model supplies the free
  comparison data, and VII.6.h supplies the source expansion at the middle
  stage. Propagating that expansion to the width stage gives a marker
  estimate with allowance <math|A=e<rsup|2*I>>, where <math|I=log
  \<mu\><rsub|k>/<around|(|16*u|)>>. The per-site affordability and allocated
  cost imply

  <\equation*>
    \<rho\><rsub|\<cal-T\>><around|(|\<Phi\><rsub|s>|)>\<leqslant\>e<rsup|I>/A<rsup|<around|\||s|\|>>\<leqslant\>e<rsup|-I>=<math-up|bud><rsub|u><around|(|k|)>.
  </equation*>

  Root estimate: <hlink|<verbatim|couponSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Soft/Denarii.lean#L31-L62>;
  fixed-band counterpart: <hlink|<verbatim|Ship.rebate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L95-L128>.

  <em|Lean:> <hlink|<verbatim|y_readySky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71>,
  <hlink|<verbatim|yardSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L26-L28>,
  <hlink|<verbatim|invoiceSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Allowance.lean#L40-L41>,
  <hlink|<verbatim|Ship.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28>.

  <strong|Lemma VII.6.h (source expansion at the middle stage).> Fix the
  history, polynomial lift data and labels of VII.6.g. Assume its launch and
  survivor data, the compatible background-field record, the room bound for
  <math|m+1> probes at depth <math|k-m<rsub|1>>, and the leading and
  nonleading marker estimates along the window. If the configuration fits,
  its probe seats are separated, and the normalized coefficient, polynomial
  coefficient and source-expansion bounds of VII.6.g hold, then the marked
  probe product has the required source expansion at <math|m<rsub|1>>.

  More precisely, for every admissible middle-stage numerical bound, there
  are finite source and background families and a distinguished source for
  each cell and nonempty mode subset. They reproduce the propagated marked
  product exactly. Each distinguished source has the prescribed support and
  mode set; on a healthy background it differs from the corresponding
  free-cumulant expression by at most <math|\<mu\><rsub|k><rsup|-3/2>>, after
  the permitted covariance adjustment.

  <em|Proof sketch.> The polynomial coefficient bound controls the probe
  family. The launch and survivor data give the marked-source representation.
  The room, fit and marker estimates propagate it to the middle stage, where
  the support and comparison bounds give the stated expansion.

  <em|Lean:> <hlink|<verbatim|attireSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38>.

  <strong|Lemma VII.6.i (assembly of weighted words).> In a fixed one-step
  stage configuration, assume the background is healthy, the room and
  one-step bounds hold with size constant <math|B\<geqslant\>1>, and
  <math|0\<less\>\<varepsilon\>\<leqslant\>1>. Let <math|P<rsub|u>> be
  polynomials in the mode variables invariant under simultaneous gauge
  rotations, each of total degree at most <math|D> and coefficient sum at
  most <math|r\<geqslant\>0>, with all variables in the permitted probe
  regions. Let <math|S> be a finite list of pairs <math|<around|(|c,w|)>>,
  where <math|c\<in\>\<bbb-R\>> and <math|w> is a word of allowed modes, each
  supported in the selected cell. Then the assembled chart integrands are
  integrable, and

  <\equation*>
    <around*|\||\<cal-A\><around*|(|<big|sum><rsub|<around|(|c,w|)>\<in\>S>c*<big|prod><rsub|u\<in\>w>P<rsub|u>|)>-\<cal-R\><around*|(|<big|sum><rsub|<around|(|c,w|)>\<in\>S>c*<big|prod><rsub|u\<in\>w>P<rsub|u>|)>|\|>\<leqslant\><big|sum><rsub|<around|(|c,w|)>\<in\>S><around|\||c|\|>*<space|0.17em>E<around|(|B,\<varepsilon\>,r,D,<around|\||w|\|>|)>.
  </equation*>

  Here <math|\<cal-A\>> is the chart assembly, <math|\<cal-R\>> is the
  corresponding reference reading with the same cell-orientation test, and
  <math|E> is the one-word error bound from III.11.

  <em|Proof sketch.> Induct on the list. Integrability is preserved by
  addition and scalar multiplication. Linearity and the triangle inequality
  add the one-word errors, with the factor <math|<around|\||c|\|>> for each
  word.

  <em|Lean:> <hlink|<verbatim|sweepSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57>.

  <strong|Lemma VII.6.j (one step at a change of block factor).> Fix a step
  <math|i+1\<to\>i> with <math|i\<less\>N>, a coarse-field pose
  <math|<around|(|o,W,V,v|)>>, a width multiplier <math|w\<in\>\<bbb-N\>>,
  and its auxiliary block-spin choices, forest and fluctuation data. Assume
  the one-step coupling bounds, with the larger of
  <math|\<Omega\><rsub|J<rsub|i+1>>,\<Omega\><rsub|J<rsub|i>>> and the
  smaller of <math|\<alpha\><rsub|J<rsub|i+1>>,\<alpha\><rsub|J<rsub|i>>>.
  Assume also the small-field and Hessian-control bounds on the patch. Put
  <math|x=<wide|\<beta\>|^><rsub|i>>, let <math|<wide|x|~>> be the auxiliary
  reference coupling used in the stationary-field data, let <math|y> be the
  fine reference coupling, and set <math|L=w*B<around|(|y|)>>, where <math|B>
  is the block radius of III.11.

  Let <math|r> be a fine-lattice site. Assume the fluctuation guards on the
  enlarged patch about <math|r>,

  <\equation*>
    2*<around|(|L+1|)>\<less\><math-up|side><rsub|i+1,p>,<space|2em>100*<around|(|1+R<rsub|B><around|(|<wide|x|~>|)>|)>\<leqslant\><math-up|side><rsub|i,p>,
  </equation*>

  and, for every guarded fine bond <math|e>, require its parent to lie inside
  the pose with the margin

  <\equation*>
    <math-up|dist><around|(|o,<math-up|parent><around|(|e|)>|)>+B<around|(|x|)>+2\<leqslant\>W.
  </equation*>

  Then the fine configuration <math|U> constructed by the background-field
  map is healthy at the small-field threshold <math|\<tau\><around|(|y|)>> on
  the radius-<math|L> patch. For every <math|f> and gauge transformation
  <math|t> with <math|t\<cdot\>f=U>, and every coloured incidence <math|j>
  with <math|<math-up|dist><around|(|r,j|)>+2\<leqslant\>L>,

  <\equation*>
    <around*|\||\<cal-O\><rsub|j><around|(|f,t;r,g|)>-<around*|(|<math-up|Re><space|0.17em>m<rsub|j>+<around|(|D*Z|)><rsub|j>|)>|\|>\<leqslant\><wide|\<beta\>|^><rsub|i><rsup|-1/32>.
  </equation*>

  Here <math|R<rsub|B><around|(|s|)>=<around|\<lceil\>|<around|(|log
  s|)><rsup|2>|\<rceil\>>>, <math|g> is the step coupling, and
  <math|\<cal-O\><rsub|j>> is the colour component of <math|g<rsup|-1>> times
  the plaquette curvature, in tree gauge rooted at <math|r> and rotated by
  the adjoint action of <math|t<around|(|r|)>>. The mean <math|m> and linear
  fluctuation correction <math|D*Z> use the same coordinates.

  <em|Proof sketch.> The Hessian-control bound and guards give link estimates
  throughout the enlarged patch. A four-bond estimate makes every tested
  plaquette small, proving health. The link estimate and stationary-field
  curl identity give the displayed error on incidences two lattice units
  inside the patch.

  <em|Lean:> <hlink|<verbatim|laminateSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127>,
  used by <hlink|<verbatim|screensSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Emulation.lean#L33-L71>.

  <strong|Lemma VII.6.k (poised families supply the stage bound).> Assume
  (S), simplicity of <math|G>, and <math|z\<geqslant\>c<rsub|i>> for
  <math|i\<leqslant\>D>. Let <math|P<rsub|k>> be a finite family of
  degree-<math|D> packages whose bands are
  <math|q<rsub|\<alpha\>>+e<rsub|k>>, with
  <math|e<rsub|k>\<in\><around|[|0,1|]>>, and whose Taylor orders and
  exponents are independent of <math|k>. Fix a package index
  <math|\<alpha\>>, labels <math|y<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>>
  with <math|d<rsub|i>\<leqslant\>D>, a compact
  <math|K\<subset\><math-up|Conf><rsub|m+1>>, and <math|2\<leqslant\>n>,
  <math|m+1\<leqslant\>n>. For every sufficiently large <math|k>, every table
  with which <math|P<rsub|k>> is poised, every <math|N\<gtr\>k> and <math|p>,
  and every fitted configuration whose rounded position belongs to <math|K>,
  the bound of VII.6.3 holds for the probes obtained by the vane lift from
  <math|y<rsub|i>>.

  <em|Proof sketch.> Apply VII.6.3 with band ceiling
  <math|q<rsub|\<alpha\>>+1>. The poised data supply the cost record, RG
  representative and polynomial lifts. Inverting the charted table gives the
  rescaling equation.

  <em|Lean:> <hlink|<verbatim|lava_vSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50>.

  <strong|Lemma VII.6.l (pointwise comparison).> Under the hypotheses of
  VII.6.k, fix an extraction order <math|F>, a package index
  <math|\<alpha\>>, a strip exponent <math|\<chi\>>, <math|R\<gtr\>0>, and a
  free word of arity <math|m\<leqslant\>n> with degrees at most <math|D>.
  Assume the free table is smooth. There is <math|C> such that, for every
  sufficiently large <math|k> and every poised table, the lattice
  <math|m>-point function of the lifted probes differs from the free function
  by at most <math|C<space|0.17em><math-up|bud><rsub|n><around|(|k|)>> in the
  ordered upper-limit sense, at each generic stage-<math|k> lattice
  configuration in the rescaled window of radius <math|2*R>.

  Thus, for each configuration and each <math|\<eta\>\<gtr\>0>, the
  difference is eventually at most <math|C<space|0.17em><math-up|bud><rsub|n><around|(|k|)>+\<eta\>>
  along <math|F>; no common cutoff threshold over all configurations is
  asserted.

  <em|Proof sketch.> VII.6.k bounds every nonempty recentred part. The
  chessboard inequality and moment\Ucumulant identity bound the difference of
  moments by the budget times the sum of absolute coefficients of the free
  moment polynomial. Smoothness bounds that finite sum on the compact window.
  At arity zero both moments equal <math|1>.

  Inputs: <hlink|<verbatim|Read.full_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250>.

  <em|Lean:> <hlink|<verbatim|sightSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Suds.lean#L51-L95>.

  <strong|Lemma VII.6.m (balanced estimates).> Under the hypotheses of
  VII.6.k, suppose three base bands <math|q<rsub|x>,q<rsub|y>,q<rsub|w>> and
  <math|c\<less\>0> satisfy

  <\equation*>
    q<rsub|y>+6\<less\>q<rsub|x>,<space|1em>q<rsub|w>+5\<less\>q<rsub|x>+c,<space|1em><around|(|q<rsub|x>-q<rsub|y>|)>*D*n+c\<less\>0,<space|1em><around|(|q<rsub|x>-q<rsub|w>|)>*D*n-q<rsub|x>-c\<less\>0.
  </equation*>

  Assume the free hierarchy is given. Let
  <math|f<around|(|i|)>\<to\>\<infty\>>, and let <math|Y<rsub|i>> be tables
  for which <math|P<rsub|f<around|(|i|)>>> is poised. Then the stations at
  stage <math|f<around|(|i|)>>, main band
  <math|q<rsub|x>+e<rsub|f<around|(|i|)>>> and strip exponent <math|c>
  satisfy the balanced estimates of VI.2 for arity at most <math|n> and every
  window radius <math|R\<gtr\>0>.

  <em|Proof sketch.> Write <math|k=f<around|(|i|)>>. The pointwise error is
  <math|O<around|(|<math-up|bud><rsub|n><around|(|k|)>|)>\<to\>0>. The
  auxiliary package at band <math|q<rsub|y>+e<rsub|k>> supplies the strip
  bound

  <\equation*>
    A<rsub|k>=O<around*|(|\<mu\><rsub|k><rsup|<around|(|q<rsub|x>-q<rsub|y>|)>*D>|)>,
  </equation*>

  and the package at <math|q<rsub|w>+e<rsub|k>> supplies the bound used for
  interpolation off the strip,

  <\equation*>
    B<rsub|k>=O<around*|(|\<mu\><rsub|k><rsup|<around|(|q<rsub|x>-q<rsub|w>|)>*D>|)>.
  </equation*>

  Each auxiliary package supplies both types of local bound; its designated
  role is chosen in the balancing argument. Their stopping stages fit inside
  the main geometric window by the first two inequalities. With
  <math|\<sigma\><rsub|k>=\<mu\><rsub|k><rsup|c>> and normalized spacing
  <math|h<rsub|k>=\<mu\><rsub|k><rsup|-<around|(|q<rsub|x>+e<rsub|k>|)>>\<leqslant\>\<mu\><rsub|k><rsup|-q<rsub|x>>>,
  the last two inequalities give

  <\equation*>
    A<rsub|k><rsup|n>*\<sigma\><rsub|k>\<to\>0,<space|2em>B<rsub|k><rsup|n>*h<rsub|k>/\<sigma\><rsub|k>\<to\>0.
  </equation*>

  The radii tend to zero, and the lift bounds and symmetries hold on ordered
  tails. VI.2's station theorem gives eventual admissibility with any
  positive tolerance.

  Inputs: <hlink|<verbatim|thirdSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Latch.lean#L52-L77>,
  <hlink|<verbatim|w_rightSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Pint.lean#L37-L57>,
  <hlink|<verbatim|supply_wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128>.

  <em|Lean:> <hlink|<verbatim|aspectSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Medal.lean#L39-L90>,
  <hlink|<verbatim|podiumSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Largo.lean#L24-L34>.

  <subsection|4.4 Checked vanes><label|44-checked-vanes>

  <strong|Definition VII.6.n (vanes and checked vanes).> A <em|vane of depth
  <math|D>> consists of a stage <math|k>, band <math|b>, strip exponent
  <math|c>, and complex-linear tables <math|R<rsub|N,p,d>> on
  <math|<math-up|Label><rsub|d>> for <math|d\<leqslant\>D>.

  Its station has radius <math|\<ell\><around|(|b,k|)>>, strip width
  <math|\<mu\><rsub|k><rsup|c>>, and lifts

  <\equation*>
    A<rsub|N,p,d>=R<rsub|N,p,d><rsup|-1>\<circ\>D<rsub|k,N,p,d><rsup|-1>\<circ\>W<rsub|\<mu\><rsub|k><rsup|b>,d>\<circ\>\<iota\><rsub|d>.
  </equation*>

  Here <math|\<iota\><rsub|d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\><math-up|Label><rsub|d>>
  is the canonical equivariant section, <math|W> applies the position scaling
  weight, and <math|D> is the coupling dilation. On a frame vector of
  bidegree <math|<around|(|h,q|)>>, <math|W<rsub|\<rho\>,d>> multiplies by
  <math|\<rho\><rsup|h>>, where <math|h> is the engineering degree, while
  <math|D<rsub|k,N,p,d>> multiplies by <math|s<rsub|k,N,p><rsup|q>>, where
  <math|q> is the number of curvature factors and

  <\equation*>
    s<rsub|k,N,p>=<frac|\<beta\><rsub|N,p;k><rsup|-1/2>|<wide|\<beta\>|^><rsub|k><rsup|-1/2>*\<mu\><rsub|k>>.
  </equation*>

  Here <math|\<beta\><rsub|N,p;k>> is the actual coupling at stage <math|k>.
  If <math|R<rsub|N,p,d>> is not bijective, the lift is zero. Charting
  ensures bijectivity on the cutoff tails used below.

  The vane is <em|checked at level <math|j>> when:

  <\enumerate>
    <item><math|5\<less\>b\<leqslant\>log log <wide|\<beta\>|^><rsub|k>>;

    <item><math|T<rsub|u>\<leqslant\>k> for every <math|u\<leqslant\>D>;

    <item>for every <math|N\<gtr\>k> and <math|p>, its tables obey the
    charting and sharper coordinate bounds in VII.6.d;

    <item>every generic rescaled stage-<math|k> lattice pair of norm at most
    <math|100> fits; for every <math|w\<leqslant\>D>, every pair of free
    basis vectors in degree <math|w>, every <math|N\<gtr\>k> and <math|p>,
    and every fitted pair whose rounded configuration is in the
    radius-<math|100> window, all nonempty recentred parts have chessboard
    root at most <math|1/<around|(|j+1|)>>;

    <item>its station is admissible for arity at most <math|j>, window radius
    <math|j+1>, and tolerance <math|1/<around|(|j+1|)>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69>,
  <hlink|<verbatim|Vane.wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L71>,
  <hlink|<verbatim|wok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31>,
  <hlink|<verbatim|ladd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Ladle.lean#L17-L19>,
  <hlink|<verbatim|ladder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117>,
  <hlink|<verbatim|SeqPair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29>,
  <hlink|<verbatim|TimberSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47>,
  <hlink|<verbatim|Vane.checked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L72>.
  <em|(definitions read)>

  <strong|Lemma VII.6.o (a checked vane below any radius).> Assume
  simplicity, (S), <math|z\<geqslant\>c<rsub|i>> for <math|i\<leqslant\>d>,
  <math|<math-up|Fire><rsub|d><around|(|z|)>>, and the limit-table hypotheses
  of VII.6.2. Let <math|l\<leqslant\>d+2>, <math|s<rsub|i>\<gtr\>0> with
  <math|s<rsub|i>\<to\>0>, <math|Y\<in\>\<bbb-N\>> and
  <math|\<theta\>\<gtr\>0>. There are an index <math|i\<geqslant\>Y>, a stage
  <math|k\<geqslant\>Y>, and a vane of depth <math|d>, stage <math|k>,
  checked at level <math|l>, with

  <\equation*>
    \<ell\><around|(|b,k|)>=s<rsub|i>\<less\>\<theta\>.
  </equation*>

  <em|Proof sketch.> VII.6.e gives increasing stages realizing a subsequence
  of <math|s> at bands in <math|<around|[|b<rsub|0>,b<rsub|0>+1|]>>. The
  two-point condition follows from VII.6.k applied to basis pairs, with arity
  budget <math|d+2>, together with uniform fitting and
  <math|<math-up|bud><rsub|d+2><around|(|k|)>\<to\>0>. There are only
  finitely many degrees and basis pairs. VII.6.m and the station theorem give
  admissibility through arity <math|d+2>, hence through arity <math|l>, at
  window radius <math|l+1> and tolerance <math|1/<around|(|l+1|)>>. Choose a
  stage beyond the reference stages and band ceiling, with both indices at
  least <math|Y> and radius below <math|\<theta\>>.

  Inputs: <hlink|<verbatim|await>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L31-L39>.

  <em|Lean:> <hlink|<verbatim|boatsSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L49-L62>.

  <strong|Lemma VII.6.p (= Proposition VII.6.2).>

  <em|Proof sketch.>

  <\enumerate>
    <item>For each <math|d>, <math|N> and <math|y\<gtr\>0>, VII.6.o with
    <math|l=d>, <math|Y=max <around|(|d,N+1|)>> and <math|\<theta\>=y> gives
    <math|k\<gtr\>N> with <math|s<rsub|k>\<less\>y>, and a vane of depth
    <math|d>, stage <math|\<geqslant\>d>, checked at level <math|d>, with
    radius <math|s<rsub|k>>.

    <item>Choose recursively <math|p*<around|(|d+1|)>\<gtr\>p<around|(|d|)>>
    with <math|s<rsub|p*<around|(|d+1|)>>\<less\>s<rsub|p<around|(|d|)>>>.

    <item>The stages are <math|\<geqslant\>d>, so they tend to infinity.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|wakesSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87>.

  <subsection|4.5 Limits along the ultrafilter><label|45-limits-along-the-ultrafilter>

  <strong|Lemma VII.6.q (limits of station lifts).> Under the ordered-limit
  and hierarchy hypotheses of VII.6.1, let a station of depth <math|D>, with
  radius <math|r\<gtr\>0>, be admissible through arity <math|n<rsub|max>>, on
  the radius-<math|R> window, with tolerance <math|\<varepsilon\>>. Let
  <math|\<cal-L\>> be an ultrafilter finer than <math|\<Phi\><rsub|F>>.
  Assume its degree-<math|d> lift sends <math|\<b-1\><rsub|d><rsup|<math-up|free>>>
  to the scalar label eventually along <math|\<Phi\><rsub|F>>, for every
  <math|d\<leqslant\>D>. Then the lift tuple converges along <math|\<cal-L\>>
  to

  <\equation*>
    Y\<in\><big|prod><rsub|d\<leqslant\>D><math-up|Hom><rsub|\<bbb-C\>><around|(|\<cal-F\><rsub|d><rsup|<math-up|free>>,<math-up|Label><rsub|d>|)>.
  </equation*>

  The maps <math|U<rsub|d>=\<pi\><rsub|d>\<circ\>Y<rsub|d>> are real,
  signed-covariant and unit-preserving for <math|d\<leqslant\>D>. For
  <math|n\<leqslant\>n<rsub|max>>, <math|d<rsub|i>\<leqslant\>D>,
  <math|v<rsub|i>\<in\>\<cal-F\><rsup|<math-up|free>><rsub|d<rsub|i>>>,
  <math|M\<gtr\>0>, and every smooth test <math|t> supported in the
  radius-<math|R> window with <math|<around|\<\|\|\>|t|\<\|\|\>><rsub|\<infty\>>\<leqslant\>M>,

  <\equation*>
    <around*|\||<big|int>t<around|(|x|)>*<around*|(|<around|\<langle\>|U*v<rsub|1>*<around|(|r*x<rsub|1>|)>*\<cdots\>*U*v<rsub|n>*<around|(|r*x<rsub|n>|)>|\<rangle\>><rsup|S>-<around|\<langle\>|v<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*v<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsup|<math-up|free>>|)>*<space|0.17em>d*x|\|>\<leqslant\>\<varepsilon\>*M*<big|prod><rsub|i><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>.
  </equation*>

  <em|Proof sketch.>

  <\enumerate>
    <item>The lifts are eventually bounded, so a nontrivial filter
    <math|\<frak-b\>> finer than <math|\<cal-L\>> along which they converge
    exists (<hlink|<verbatim|finite_extract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L74-L80>).

    <item>Since <math|\<cal-L\>> is an ultrafilter,
    <math|\<frak-b\>=\<cal-L\>>.

    <item>Symmetry and unit identities pass to the limit, as in VI.2's
    <hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>,
    and ordered smeared convergence gives the displayed estimate. The extra
    unit hypothesis covers every degree through <math|D>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|harvestedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Pepper.lean#L11-L60>.

  <strong|Lemma VII.6.r (vanes give approaching maps).> Under the
  ordered-limit and hierarchy hypotheses of VII.6.1, let <math|r<rsub|k>> be
  a strictly decreasing null sequence. Let <math|V<rsub|k>> be vanes of depth
  <math|k> whose stages tend to infinity, checked at level <math|k>, with
  <math|\<ell\><around|(|V<rsub|k>|)>=r<rsub|k>>, and let <math|\<cal-L\>> be
  an ultrafilter finer than <math|\<Phi\><rsub|F>>. Then there are
  complex-linear maps <math|U<rsub|k><around|(|d|)>:\<cal-F\><rsub|d><rsup|<math-up|free>>\<to\>\<cal-F\><rsub|d><rsup|S>>
  such that:

  <\itemize-minus>
    <item><math|<around|(|r<rsub|k>,U<rsub|k>|)>> is approaching;

    <item><math|U<rsub|k><around|(|d|)>> is real, signed-covariant and
    unit-preserving for <math|d\<leqslant\>k>;

    <item><math|U<rsub|k><around|(|d|)>=\<pi\><rsub|d>\<circ\>Y<rsub|k,d>>
    for <math|d\<leqslant\>k>, where <math|Y<rsub|k>> is the
    <math|\<cal-L\>>-limit of the lifts of <math|V<rsub|k>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\enumerate>
    <item>Conditions 2\U3 of VII.6.n give unit preservation of the lifts in
    every degree through <math|k>. VII.6.q then applies to each
    <math|V<rsub|k>>.

    <item>Fix <math|n>, <math|v>, a compact
    <math|K\<subset\><math-up|Conf><rsub|n>>, and <math|M,\<varepsilon\>>.
    For <math|k\<geqslant\>n>, <math|k\<geqslant\>max d<rsub|i>>, <math|K>
    contained in the radius-<math|<around|(|k+1|)>> window, and
    <math|<big|prod><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>*M/<around|(|k+1|)>\<leqslant\>\<varepsilon\>>,
    the estimate at tolerance <math|1/<around|(|k+1|)>> bounds
    <math|<around|\||<big|int>t*K<rsub|k>|\|>> by <math|\<varepsilon\>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|breadSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L13-L31>.

  <strong|Lemma VII.6.s (isomorphisms).> Assume in addition the dimension cap
  (iv). Then there is a scaling with radii <math|r<rsub|k>> and
  <math|\<xi\><rsub|k>=1> such that:

  <\itemize-minus>
    <item><math|U<rsub|k><around|(|d|)>> coincides with the map of VII.6.r
    for all large <math|k> (for each <math|d>);

    <item>(a)\U(c) of VII.6.1 hold.
  </itemize-minus>

  <em|Proof sketch.>

  <\enumerate>
    <item>The maps are eventually injective in each degree by VI.2. Finitely
    many free test functionals separate <math|\<cal-F\><rsup|<math-up|free>><rsub|d>>,
    their rescaled versions converge by the approaching property, and
    injectivity is an open condition.

    <item>Injectivity and <math|dim \<cal-F\><rsup|S><rsub|d>\<leqslant\>dim
    \<cal-F\><rsup|<math-up|free>><rsub|d>> give bijectivity.

    <item>Where the map is not yet bijective, one of the later isomorphisms
    in that degree is substituted. This does not affect any eventual
    property.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|dockedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Mast.lean#L32-L58>.

  <strong|Lemma VII.6.t (= Proposition VII.6.1).>

  <em|Proof sketch.> VII.6.p gives <math|p> and <math|V>. The radii
  <math|s\<circ\>p> form a strictly decreasing null sequence. VII.6.s then
  gives the scaling, with <math|f=p>.

  <em|Lean:> <hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>.

  <em|Consumer.> <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>
  (VII.2) applies VII.6.1 with:

  <\itemize-minus>
    <item>the seed's ordered limits, hierarchy and point limits;

    <item>the free hierarchy supplied by the free-field comparison theorem;

    <item>hypothesis (iv) from the rank-width bound.
  </itemize-minus>

  It selects the lift limits and applies the trace-comparison theorem of
  VII.2. The run <hlink|<verbatim|merano>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Made/Bardo.lean#L25-L76>,
  together with the other runs cited in Ÿ2, supplies the rest:

  <\itemize-minus>
    <item><math|z<rsub|d>=<big|sum><rsub|i\<leqslant\>d>c<rsub|i>>;

    <item><math|<math-up|Fire><rsub|d><around|(|z<rsub|d>|)>> from the
    uniform-band construction;

    <item><math|\<cal-L\>> from the existence of an ultrafilter finer than
    <math|\<Phi\><rsub|F>>.
  </itemize-minus>

  <subsection|4.6 Degrees below four><label|46-degrees-below-four>

  <strong|Lemma VII.6.u (= Proposition VII.6.5).>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>(a) For simple <math|G>, every free polynomial label of degree
    <math|d\<less\>4> is <math|c\<cdot\>1>. The label included in the
    degree-<math|4> filtration is <math|c\<cdot\>1+Q>, where <math|Q> lies in
    the span of the quadratic invariants and is homogeneous of weight
    <math|4> (by the degree-four classification). A label of degree
    <math|\<less\>4> has no weight-<math|4> part, so <math|Q=0>. Since labels
    map onto <math|\<cal-F\><rsup|<math-up|free>><rsub|d>> and the unit is
    nonzero, <math|dim \<cal-F\><rsup|<math-up|free>><rsub|d>=1>. For
    comparison, <math|dim \<cal-F\><rsup|<math-up|free>><rsub|4>=22>
    (<hlink|<verbatim|four_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L112-L114>).

    <item>(b) The comparator of the final record is an isomorphism
    <math|\<cal-F\><rsup|S><rsub|d>\<cong\>\<cal-F\><rsup|<math-up|free>><rsub|d>>,
    so <math|dim \<cal-F\><rsup|S><rsub|d>=1>. Since
    <math|\<b-1\><rsub|d>\<ne\>0>, <math|\<cal-F\><rsup|S><rsub|d>=\<bbb-C\>*\<b-1\><rsub|d>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|dim_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54>,
  <hlink|<verbatim|first_grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Trace2/Transfer.lean#L31-L37>.

  <strong|Lemma VII.6.v (the unit is supplied).> Assume the construction
  record for <math|C>, let <math|\<varphi\>> be finer than
  <math|\<Phi\><rsub|F>>, let <math|G> be simple, and fix
  <math|d\<in\>\<bbb-N\>> and <math|t\<in\>\<bbb-C\>>. Then
  <math|t*\<b-1\><rsub|d>> is supplied along <math|\<varphi\>> with
  <math|p=1>.

  <em|Proof sketch.> Let <math|e<rsub|d><rsup|<math-up|ref>>> be the
  reference unit label. Take the constant family
  <math|q\<equiv\>y=t*<space|0.17em>e<rsub|d><rsup|<math-up|ref>>>, for which
  <math|\<pi\><rsub|d>*y=t*\<b-1\><rsub|d>>. For
  <math|k\<geqslant\>T<rsub|d>> and <math|N\<geqslant\>k>, the quota is
  homogeneous and the unit has stage-<math|k> coordinate
  <math|a<rsub|k><rsup|d>*e<rsub|0>>; this follows from the construction
  record. Hence the quota is <math|<around|\||t|\|>*<space|0.17em>a<rsub|k><rsup|d>>.
  Along <math|\<varphi\>> the cutoff eventually exceeds <math|k>, and for
  large <math|k> both <math|a<rsub|k>\<leqslant\>1> and
  <math|<wide|\<beta\>|^><rsub|k>\<geqslant\><around|\||t|\|>> hold.

  <em|Lean:> <hlink|<verbatim|supplyUnit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L54-L61>,
  <hlink|<verbatim|quota_smul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L33-L37>,
  <hlink|<verbatim|quota_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L38-L48>.

  <strong|Lemma VII.6.w (= Proposition VII.6.4).>

  <em|Proof sketch.> By VII.6.u(b), <math|\<pi\><rsub|d>*x=t*\<b-1\><rsub|d>>.
  Then VII.6.v applies, with the construction record taken from the final
  record.

  <em|Lean:> <hlink|<verbatim|inletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129>.

  <em|Companion statements (VII.4).> The same file contains the dual
  "release" bounds:

  <\itemize-minus>
    <item><hlink|<verbatim|coreRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L65-L85>;

    <item><hlink|<verbatim|physicalRelease>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L87-L117>,
    which supplies an exponent <math|p> such that, for all large <math|k>,
    every nontrivial finer filter along which <math|q\<to\>x> and
    <math|<math-up|quota><rsub|k><around|(|q|)>\<leqslant\>z> eventually
    satisfies <math|<around|\||L*<around|(|\<pi\><rsub|d>*x|)>|\|>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|<space|0.17em>p>*a<rsub|k><rsup|-<around|(|d-w|)>>*z>.
    It assumes construction and work item data, simplicity of <math|G>,
    <math|w\<leqslant\>3>, and <math|L<around|(|\<b-1\><rsub|d>|)>=0> when
    <math|w\<gtr\>0>;

    <item><hlink|<verbatim|outletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124>,
    where <math|L> vanishes on the images of
    <math|\<cal-F\><rsup|S><rsub|e>>, <math|e\<less\>w>, under the inclusions
    of the derivative plan.
  </itemize-minus>

  These results belong to VII.4.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The analytic work extends the estimates of III.11 across a window with two
  neighbouring price indices. The smaller block factor controls the stopping
  depth; the larger and smaller neighbouring price parameters control the
  one-step estimates. At the final root estimate, affordability is charged at
  the width stage itself. These distinctions replace uses of constant-factor
  plateaus.

  The interval covering argument requires one stage threshold for every band
  in a unit interval. Without that uniformity, the band selected by the
  target radius could escape the available estimates. The subsequent diagonal
  choice preserves exact equality with the prescribed radii.

  The scaling maps are real, signed-covariant and unit-preserving eventually
  in each degree. This result does not assert compatibility with inclusions
  between degrees or stress-tensor normalization. The dimension cap supplies
  surjectivity. The ultrafilter keeps all lift limits on the same cutoff
  filter, and the checked tolerances give local order-zero convergence
  without an explicit rate in the prescribed radius. The fixed-field supply
  argument uses the comparator and the unit coefficient identity; it requires
  none of the moving-band estimates.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|scaling (radii,
  constants, isomorphisms)>|<cell|<hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>;
  radii only: <hlink|<verbatim|Zoom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L15-L19>>|<cell|<math|<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k>|)>>>>|<row|<cell|approaching;
  weak vanishing on compacts>|<cell|<hlink|<verbatim|Approaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53>,
  <hlink|<verbatim|Fades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27>>|<cell|<math|K<rsub|k>\<to\>0>
  locally with an order-zero bound>>|<row|<cell|scaling sequence along
  <math|\<cal-L\>> (VII.6.1 (a)\U(c))>|<cell|<hlink|<verbatim|StarPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23>>|<cell|scaling
  sequence along <math|\<cal-L\>>>>|<row|<cell|free Maxwell reference
  table>|<cell|<hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>,
  <hlink|<verbatim|Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>,
  <hlink|<verbatim|Cells.standard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22>>|<cell|<math|\<cal-F\><rsup|<math-up|free>><rsub|d>>,
  <math|H<rsub|0>>>>|<row|<cell|running coupling; growth
  scale>|<cell|<hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>,
  <hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81>,
  <hlink|<verbatim|Perch.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25>>|<cell|<math|<wide|\<beta\>|^><rsub|k>>;
  <math|\<mu\><rsub|k>>; <math|\<mu\><rsub|k><rsup|a>>>>|<row|<cell|band;
  reading scale>|<cell|<verbatim|Panel.arc>, <verbatim|Purse.band>;
  <hlink|<verbatim|Station.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L49>>|<cell|<math|b>;
  <math|\<ell\><around|(|b,k|)>=a<rsub|k>*\<mu\><rsub|k><rsup|b>>>>|<row|<cell|middle
  and width stages; allowed; fit>|<cell|<hlink|<verbatim|middleSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L31>,
  <hlink|<verbatim|widthSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L32>,
  <hlink|<verbatim|AllowedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Station.lean#L42-L46>,
  <hlink|<verbatim|FitSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Hill/Tuning.lean#L15-L17>>|<cell|<math|m<rsub|1><around|(|b,k|)>>,
  <math|m<rsub|0><around|(|b,k|)>>>>|<row|<cell|position weight; coupling
  dilation>|<cell|<hlink|<verbatim|weightTag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L89-L92>,
  <hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>,
  <hlink|<verbatim|shrink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Matrices.lean#L104>>|<cell|<math|W<rsub|\<rho\>,d>>;
  <math|D<rsub|k,N,p,d>>; <math|s<rsub|k,N,p>>>>|<row|<cell|normalized probe
  size>|<cell|<hlink|<verbatim|moneys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Insiders.lean#L50>>|<cell|<math|M<rsub|k,N,p,d>>>>|<row|<cell|stage
  package>|<cell|<hlink|<verbatim|Tapes.Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47>>|<cell|<math|<around|(|b,\<theta\>,e,<text|purses>|)>>>>|<row|<cell|stage-<math|k>
  cost record; poised>|<cell|<hlink|<verbatim|LegacyCostSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L38-L45>,
  <hlink|<verbatim|PoisedSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Plume.lean#L23-L28>>|<cell|poised
  at stage <math|k>>>|<row|<cell|uniform-band
  property>|<cell|<hlink|<verbatim|FiresSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L29-L32>>|<cell|<math|<math-up|Fire><rsub|d><around|(|z|)>>>>|<row|<cell|leap;
  packages with moving band>|<cell|<hlink|<verbatim|LeapSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L56-L60>,
  <hlink|<verbatim|ArcSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L21-L24>>|<cell|\V>>|<row|<cell|budget;
  chessboard root>|<cell|<hlink|<verbatim|Ship.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L28>,
  <hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>>|<cell|<math|<math-up|bud><rsub|n><around|(|k|)>=\<mu\><rsub|k><rsup|-1/<around|(|16*n|)>>>;
  <math|\<rho\><rsub|\<cal-T\>>>>>|<row|<cell|recentred probe
  product>|<cell|<hlink|<verbatim|Read.cylinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L99>,
  <hlink|<verbatim|Read.cumulants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L226>>|<cell|<math|\<Phi\><rsub|s>>>>|<row|<cell|mark
  exponents>|<cell|<hlink|<verbatim|generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SteamW.lean#L18>>|<cell|<math|c<rsub|d>=2*<around|(|w<rsub|d>+1|)>>>>|<row|<cell|one-step
  cost package>|<cell|<hlink|<verbatim|Scrim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Biscuit.lean#L29-L34>>|<cell|(S)>>|<row|<cell|vane;
  its station; checked>|<cell|<hlink|<verbatim|Vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L65-L69>,
  <hlink|<verbatim|wok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Pint.lean#L25-L31>,
  <hlink|<verbatim|TimberSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L42-L47>,
  <hlink|<verbatim|SeqPair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L21-L29>>|<cell|<math|V=<around|(|k,b,c,R|)>>;
  checked at level <math|j>>>|<row|<cell|dimension
  cap>|<cell|<hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>>|<cell|<math|dim
  \<cal-F\><rsup|S><rsub|d>\<leqslant\>dim
  \<cal-F\><rsup|<math-up|free>><rsub|d>>>>|<row|<cell|gallery property
  (VII.2)>|<cell|<hlink|<verbatim|Trace.Over.Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>>|<cell|\V>>|<row|<cell|stage-<math|k>
  coefficient size>|<cell|<hlink|<verbatim|quota>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Least.lean#L20-L21>>|<cell|<math|<math-up|quota><rsub|k><rsup|N,p><around|(|u|)>>>>|<row|<cell|supply;
  release; killing lower degrees>|<cell|<hlink|<verbatim|Supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L18-L21>,
  <hlink|<verbatim|Releases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L23-L26>,
  <hlink|<verbatim|Kills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L28-L29>>|<cell|<math|x>
  supplied along <math|\<varphi\>>; <math|L> released at weight <math|w>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Internal analytic packages.> VII.6.g\Uj retain the room,
    background-field, source-expansion, small-field and Hessian-control
    hypotheses from III.9\UIII.11. Their direct implications and the final
    root estimate are verified, but the numerical definitions and proofs of
    all constituent one-step estimates have not been expanded here. In
    particular, the small-field input explicitly bounds the combined
    nonlinear errors by <math|x<rsup|-1/32>>; the eventual feasibility of
    that input remains part of III.11. The formula and guarded domain of
    VII.6.j are verified.

    <item><strong|Downstream trace argument.> The checked two-point bound is
    retained when the vanes and their lift limits are passed to VII.2. Its
    subsequent analytic use in deriving the trace anomaly is outside this
    unit. No such conclusion is inferred from the weak convergence alone.

    <item><strong|Construction inputs.> The passage from an enlarged paid
    waiting window and covariant coordinate maps to the uniform-band property
    is verified at the cited interfaces. The full construction that pays
    every numerical request belongs to III.2; it is not an additional
    conclusion of VII.6.1.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.5 Asymptotic freedom of the running
  coupling (notes)|VII-5.tm>|<hlink|Part VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-6.tm>|<hlink|VIII.1 Assembly of the main theorem
  (notes) \<rightarrow\>|VIII-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.6. Scaling variants and fixed-field estimates
    \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|5>>
    <associate|3-strategy|<tuple|3|8>>
    <associate|4-steps|<tuple|4|8>>
    <associate|41-reading-scales-and-dynamic-stops|<tuple|4.1|8>>
    <associate|42-the-uniform-band-property|<tuple|4.2|9>>
    <associate|43-stage-estimates-with-a-moving-band|<tuple|4.3|11>>
    <associate|44-checked-vanes|<tuple|4.4|14>>
    <associate|45-limits-along-the-ultrafilter|<tuple|4.5|16>>
    <associate|46-degrees-below-four|<tuple|4.6|17>>
    <associate|5-where-the-difficulty-lies|<tuple|5|18>>
    <associate|6-notation|<tuple|6|19>>
    <associate|7-what-remains-unexplained|<tuple|7|19>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|5|18>>
    <associate|auto-12|<tuple|6|19>>
    <associate|auto-13|<tuple|7|19>>
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|4|8>>
    <associate|auto-5|<tuple|4.1|8>>
    <associate|auto-6|<tuple|4.2|9>>
    <associate|auto-7|<tuple|4.3|11>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|16>>
    <associate|vii6-scaling-variants-and-fixed-field-estimates--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Reading scales and dynamic stops
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The uniform-band property
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Stage estimates with a moving band
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Checked vanes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Limits along the ultrafilter
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Degrees below four
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>