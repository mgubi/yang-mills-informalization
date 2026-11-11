<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.6 The stationary branch: background
  field of the effective action|III-6.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-7.tm>|<hlink|III.8 Connected activities and backward
  dependence cones \<rightarrow\>|III-8.tm>>

  <ym-title|III.7. Matching the Wilson energy to fourth
  order><label|iii7-matching-the-wilson-energy-to-fourth-order>

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

  Matches the effective action to the Wilson energy through fourth order.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-7.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.6|III-6.tm> <ym-middot> <hlink|Next:
  III.8 \<rightarrow\>|III-8.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/Next/STATIONARY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY>,
    <hlink|<verbatim|YM/WilsonBulk/Spectral/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral>,
    <hlink|<verbatim|YM/UVExtension/Projection/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection>,
    and a few lines of <hlink|<verbatim|YM/UVExtension/Reward/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward>.
    <strong|Size:> 19,945 lines in the source allocation: 19,391 in
    <verbatim|Next/STATIONARY>, 286 in <verbatim|UVExtension/Projection>, 215
    in <verbatim|WilsonBulk/Spectral>, and about 50 elsewhere.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The leading action and one-loop term are represented by exponentially
  weighted curvature paths. The leading action matches Wilson at the finest
  level and the stationary tree action at each step through order four; the
  one-loop coupling shift has slope <math|\<kappa\>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>.

  <strong|Proposition III.7.1 (path data, beds, Fourier kernels).> A leg
  transports the Lie-algebra component <math|\<cal-F\><around|(|u|)>> of
  <math|<around|(|u-u<rsup|-1>|)>/2> from a plaquette along a lattice walk;
  its length is the walk length plus four. A <math|k>-atom contracts <math|k>
  legs with a coefficient tensor <math|a>; it is invariant when the resulting
  polynomial is <math|<math-up|Ad>>-invariant, and its weight is
  <math|<around|\<\|\|\>|a|\<\|\|\>><rsub|1>*e<rsup|\<sigma\><space|0.17em><math-up|length>>>.
  A path datum <math|R> comprises rows <math|\<ell\><rsub|R><around|(|U|)><rsub|<around|(|x,P|)>>=<big|sum><rsub|k>\<lambda\><rsub|P,k><space|0.17em><math-up|leg><rsub|P,k><around|(|U,x|)>>
  for six plaquette orientations and sequences of two-, three- and four-leg
  atoms. For a clip with <math|c<rsub|<math-up|dir>>\<gtr\>0> and absolutely
  convergent series,

  <\equation*>
    <math-up|main><rsub|\<b-up-c\>,R>=<frac|1|384>*<big|sum><rsub|s><around*|[|c<rsub|<math-up|dir>>*E<rsub|W>+<tfrac|1|2><big|sum><rsub|p><around|\||\<ell\><rsub|R><around|(|U|)><rsub|p>|\|><rsup|2>+<big|sum><rsub|x,k><around|(|\<cal-A\><rsub|k><rsup|<around|(|3|)>>+\<cal-A\><rsub|k><rsup|<around|(|4|)>>|)>*<around|(|U,x|)>|]><rsub|U\<to\>s*U>;
  </equation*>

  <math|<math-up|loop><rsub|R>> similarly averages two-leg atoms over signed
  axis permutations.

  <math|<math-up|Bounds><around|(|\<b-up-c\>;\<sigma\>,C,\<Lambda\>|)>>
  requires <math|\<sigma\>\<gtr\>0>, weighted row sums and cubic/quartic sums
  at most <math|C>, loop sum at most <math|\<Lambda\>>, invariant atoms,
  normalization <math|c<rsub|<math-up|dir>>*\<delta\><rsub|P*Q>+<big|sum><rsub|P<rprime|'>><wide|\<ell\>|^><rsub|P<rprime|'>*P><around|(|0|)>*<wide|\<ell\>|^><rsub|P<rprime|'>*Q><around|(|0|)>=\<delta\><rsub|P*Q>>,
  and summable loop coefficients with zero zeroth and first displacement
  moments for each orientation-colour pair.

  A bed <math|B=<around|(|D,<wide|D|~>,H,<wide|H|~>,\<rho\>|)>> consists of
  translation-invariant plaquette kernels; attachment means rows, summed by
  endpoint plaquette and displacement, give <math|\<rho\>>. On
  <math|\<Lambda\><rsub|n>>, <math|<math-up|Floor><around|(|B,\<b-up-c\>,n;\<varepsilon\>,C|)>>
  means <math|D<wide|D|~>=H<wide|H|~>=1>,
  <math|\<Phi\><rsup|<math-ss|T>>*\<Phi\>=H> for
  <math|\<Phi\>=<around|(|<sqrt|c<rsub|<math-up|dir>>>*<space|0.17em>1;\<rho\>|)>>,
  <math|<wide|H|^><around|(|0|)>=1>, <math|H*d<rsub|1>=D*d<rsub|1>>, and
  symmetric <math|H,D> between <math|\<varepsilon\>*I> and <math|C*I>. The
  strip bound is <math|<big|sum><rsub|y>e<rsup|\<sigma\><around|\||y|\|><rsub|1>><around|\||K<around|(|y|)>|\|>\<leqslant\>C>
  entrywise.

  A kernel is strip-analytic of width <math|\<sigma\>> and size <math|K> if
  it is holomorphic, <math|2*\<pi\>>-periodic in every scalar momentum
  coordinate, and bounded by <math|K> where
  <math|<around|\||<math-up|Im><space|0.17em>p<rsub|j,a>|\|>\<less\>\<sigma\>>.
  It records the complexified coefficient <math|D<rsup|r>*F<around|(|0|)>/r!>
  with error <math|\<epsilon\>> if the coefficient on every tuple of
  canonical unit plane waves differs by at most <math|\<epsilon\>> from
  <math|<around|\||\<Lambda\><rsub|n>|\|>> times the kernel when momenta sum
  to zero, and from zero otherwise. For two legs, <math|\<alpha\><rsub|b>> is
  twice the real <math|s<rsup|2>>-coefficient of
  <math|<wide|K|^><rsub|<around|(|b,b|)>,<around|(|1,1|)>>*<around|(|s*e<rsub|0>|)>>;
  the bed quadratic kernel has <math|\<alpha\><rsub|b>=1> when its metric has
  positive strip width and <math|<wide|H|^><around|(|0|)>=1>.

  <em|Status:> definitions; path specifications are from III.1. <em|Lean:>
  <hlink|<verbatim|RG.PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>,
  <hlink|<verbatim|PathData.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>,
  <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>,
  <hlink|<verbatim|Recorded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492>,
  <hlink|<verbatim|alphaPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699>.

  <strong|Proposition III.7.2 (Wilson jet).> For every gauge group <math|G>,
  <math|\<sigma\><rsub|0>\<gtr\>0> and <math|A,Z\<geqslant\>0>, there exist
  <math|0\<less\>\<sigma\>\<leqslant\>\<sigma\><rsub|0>> and
  <math|C\<geqslant\>0> such that: if <math|n<rsub|i>\<to\>\<infty\>>,
  <math|c<rsub|<math-up|dir>>\<leqslant\>Z>,
  <math|\<rho\>\<in\><math-up|strip><around|(|\<sigma\><rsub|0>,A|)>>, Floor
  holds for every side with some bounds <math|a,b>, the bed gauge form is
  signed-permutation invariant on each <math|\<Lambda\><rsub|n<rsub|i>>>, and
  <math|D=1> there, then a datum <math|Q> attached to <math|B> has
  straight-route rows, zero loops, and

  <\equation*>
    Q\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<tau\>,k,\<Lambda\>|)><space|1em><around|(|0\<less\>\<tau\>\<leqslant\>\<sigma\>,k\<geqslant\>max
    <around|(|C,6*A*e<rsup|4*\<sigma\><rsub|0>>|)>,\<Lambda\>\<geqslant\>0|)>.
  </equation*>

  On every <math|\<Lambda\><rsub|n<rsub|i>>>,
  <math|<math-up|main><rsub|\<b-up-c\>,Q><around|(|e<rsup|x>|)>> and
  <math|E<rsub|W><around|(|e<rsup|x>|)>> are real-analytic at zero with equal
  derivatives of every order <math|j\<leqslant\>4>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Stationary.launch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305>.

  <strong|Proposition III.7.3 (one-loop slope).> For simple <math|G>,
  <math|\<sigma\>,\<varepsilon\>,\<tau\>\<gtr\>0> and
  <math|C,Z,A\<geqslant\>0>, there is <math|D\<geqslant\>0> such that, for
  every odd <math|L\<geqslant\>1>, <math|n<rsub|i>\<to\>\<infty\>>, clip
  <math|c<rsub|<math-up|dir>>\<leqslant\>Z>, bed with
  <math|H\<in\><math-up|strip><around|(|\<sigma\>,C|)>>, Floor bounds
  <math|<around|(|\<varepsilon\>,C|)>> on every side and
  signed-permutation-invariant gauge form on these tori, and every attached
  <math|R\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<tau\>,A,\<Lambda\>|)>>
  with <math|\<Lambda\>\<in\>\<bbb-R\>>, the function

  <\equation*>
    \<Pi\><rsub|\<mu\>><around|(|x|)>=<tfrac|1|2>log det
    <around|(|\<cal-H\><rsub|\<b-up-c\>,R><around|(|e<rsup|x>|)>+d<rsub|U>*d<rsub|U><rsup|\<ast\>>+\<cal-M\><rsub|\<mu\>>|)>-log
    det <around|(|d<rsub|U><rsup|\<ast\>>*d<rsub|U>+\<frak-m\><rsub|\<mu\>>|)>,<space|2em>\<mu\>=1/L,
  </equation*>

  has a strip-analytic two-leg recording kernel <math|<wide|Y|^>> with errors
  <math|<around|\||\<Lambda\><rsub|n<rsub|i>>|\|>*e<rsub|i>>,
  <math|e<rsub|i>\<to\>0> exponentially in <math|n<rsub|i>> at an
  <math|L>-dependent rate, and <math|<around|\||\<alpha\><rsub|b><around|(|<wide|Y|^>|)>+\<kappa\>*log
  L|\|>\<leqslant\>D> for every colour <math|b>. Here
  <math|\<cal-H\><around|(|U|)>> is the Hessian at <math|y=0> of
  <math|<math-up|main><rsub|\<b-up-c\>,R><around|(|e<rsup|y>*U|)>>,
  <math|<around|(|d<rsub|U>*\<phi\>|)><rsub|e>=\<phi\><around|(|e<rsub|->|)>-<math-up|Ad><around|(|U<rsub|e>|)>*\<phi\><around|(|e<rsub|+>|)>>,
  <math|\<frak-m\><rsub|\<mu\>>=\<mu\><rsup|2>*<around|[|\<mu\><rsup|2>*<around|(|d<rsub|U><rsup|\<ast\>>*d<rsub|U>+\<mu\><rsup|2>|)><rsup|-1>|]><rsup|9>>,
  and <math|\<cal-M\><rsub|\<mu\>>> applies it componentwise at initial
  endpoints.

  <em|Status:> theorem; <math|D> is independent of <math|L>. <em|Lean:>
  <hlink|<verbatim|pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>.

  <strong|Proposition III.7.4 (one step and iteration).> Fix simple <math|G>,
  kernel parameters <math|K> with penalty <math|a\<gtr\>0>, stage <math|J>,
  <math|\<varepsilon\>,w,\<delta\>\<gtr\>0> and
  <math|D,Z,C,Z<rprime|'>\<geqslant\>0>. There exist output bounds
  <math|A<rsub|\<ast\>>\<geqslant\>0,s\<gtr\>0>; for every input
  <math|\<tau\>\<gtr\>0,A\<geqslant\>0> there exist
  <math|d\<geqslant\>0,\<gamma\>\<gtr\>0,u> and functions
  <math|\<Theta\><rsub|0><around|(|L|)>,\<Lambda\><rsub|0><around|(|L|)>>,
  under these hypotheses:

  <\itemize-minus>
    <item>Admissible steps <math|\<Lambda\><rsub|L*m<rsub|i>>\<to\>\<Lambda\><rsub|m<rsub|i>>>
    use kernel <math|K> and one stage-<math|J> patch, <math|L\<geqslant\>u>,
    <math|m<rsub|i>\<to\>\<infty\>>, <math|m<rsub|i>\<gtr\>1>, and fine sides
    at least <math|100> times the patch extent.

    <item>Fine/coarse clips satisfy <math|p<rsub|<math-up|dir>>\<leqslant\>Z,q<rsub|<math-up|dir>>\<leqslant\>Z<rprime|'>>.
    Fine <math|H,\<rho\>\<in\><math-up|strip><around|(|w,D|)>> with Floor
    <math|<around|(|\<varepsilon\>,D|)>> on every side; coarse
    <math|H<rsub|T>,\<rho\><rsub|T>\<in\><math-up|strip><around|(|\<delta\>,C|)>>
    with Floor <math|<around|(|\<varepsilon\><rprime|'>,C|)>> on every side
    for some real <math|\<varepsilon\><rprime|'>>. Both gauge forms have
    signed-permutation symmetry on their tori.

    <item>A tower satisfies III.1's quadratic interpolation, curl-transport
    and diagonal-transport identities. Its interpolation kernel obeys strip
    bounds <math|<around|(|w,D/L<rsup|1+<around|\||\<nu\>|\|>>|)>> for every
    fine-coordinate difference list <math|<around|\||\<nu\>|\|>\<leqslant\>2>.

    <item>Fine <math|R\<in\><math-up|Bounds><around|(|\<b-up-p\>;\<tau\>,A,\<Lambda\>|)>>
    is attached to <math|B>, <math|\<Lambda\>\<geqslant\>1>. For each
    <math|i>, an axial forest <math|F<rsub|i>> and branch <math|g<rsub|i>>
    with <math|g<rsub|i><around|(|0|)>=0> are given. The branch and fine
    action are real-analytic at zero, and <math|g<rsub|i>> is stationary for
    every block-kernel choice <math|t>; the free-variable second variation at
    <math|<around|(|0,0|)>> is at least <math|\<eta\>*<big|sum><rsub|e><around|\||v<rsub|e>|\|><rsup|2>>
    for a common <math|\<eta\>\<gtr\>0> and every <math|t>. Their derivatives
    are the axial free interpolant minus the copied-field derivative, and
    their tree-level second jets equal the coarse quadratic form. A local
    Haar chart ratio <math|<math-ss|J>> is given.
  </itemize-minus>

  Then there exist <math|Y> attached to <math|T> with straight-route rows and
  <math|\<alpha\>\<in\>\<bbb-R\>> such that

  <\equation*>
    Y\<in\><math-up|Bounds><around|(|\<b-up-q\>;\<eta\><rprime|'>,A<rprime|'>,\<Lambda\><rprime|'>|)><space|1em><around|(|0\<less\>\<eta\><rprime|'>\<leqslant\>s,A<rprime|'>\<geqslant\>A<rsub|\<ast\>>,\<Lambda\><rprime|'>\<geqslant\>max
    <around|(|\<Lambda\><rsub|0><around|(|L|)>,\<Lambda\>/2|)>|)>,<space|2em><around|\||\<alpha\>+\<kappa\>*log
    L|\|>+1\<leqslant\>d.
  </equation*>

  For every <math|i,t>, the tree action <math|S<rsub|t><around|(|x,g<rsub|i><around|(|x|)>|)>>
  and <math|<math-up|main><rsub|\<b-up-q\>,Y><around|(|e<rsup|x>|)>> have
  equal jets through order four. Here

  <\equation*>
    S<rsub|t><around|(|x,z|)>=<math-up|main><rsub|\<b-up-p\>,R><around|(|U<rsub|x,z>|)>+a*<big|sum><rsub|e><around*|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><around|(|V<rsub|e>*\<Pi\><rsub|t><around|(|U<rsub|x,z>|)><rsub|e><rsup|-1>|)>|)>,
  </equation*>

  where <math|V=e<rsup|x>>, <math|U<rsub|x,z>> is the forest lift with free
  variables <math|z>, and <math|\<Pi\><rsub|t>> is the block predictor. The
  one-loop function

  <\equation*>
    <math-up|th><rsub|i,t>=<math-up|loop><rsub|R><around|(|U<rsub|x,g<rsub|i><around|(|x|)>>|)>+<tfrac|1|2>log
    det <math-up|Hess><rsub|z>S<rsub|t><around|(|x,g<rsub|i><around|(|x|)>|)>-log
    <big|prod><rsub|e><math-ss|J><around|(|g<rsub|i><around|(|x|)><rsub|e>|)>
  </equation*>

  is analytic at zero, with positive Hessian determinant nearby. For every
  <math|\<Theta\>\<geqslant\>\<Theta\><rsub|0><around|(|L|)>>,
  <math|c<rprime|'>\<leqslant\>\<gamma\>> and coarse real plane waves
  <math|v=<math-up|Re><around|(|e<rsup|i*p\<cdot\>x>*\<xi\>|)>>,
  <math|w=<math-up|Re><around|(|e<rsup|i*p<rprime|'>\<cdot\>x>*\<zeta\>|)>>
  whose direction-colour amplitudes have modulus at most one,

  <\equation*>
    <mid|\|>D<rsup|2><math-up|th><rsub|i,t><around|(|0|)><around|[|v,w|]>-D<rsup|2>*<around*|(|\<alpha\><space|0.17em><math-up|quad><rsub|\<b-up-q\>,Y>+<math-up|loop><rsub|Y>|)><around|(|0|)><around|[|v,w|]><mid|\|>\<leqslant\><around|\||\<Lambda\><rsub|m<rsub|i>>|\|>*\<Theta\>*e<rsup|-c<rprime|'>*m<rsub|i>>.
  </equation*>

  Both one-loop functions are real-analytic at zero; <math|<math-up|quad>>
  omits cubic/quartic atoms. The drift is independent of <math|L>;
  <math|\<Lambda\><rsub|0>=a<rsub|0>*L<rsup|4>+b<rsub|0>*log L+c<rsub|0>> and
  <math|\<Theta\><rsub|0>=b<rsub|1>*L<rsup|4>> with nonnegative constants.

  For iteration, fix positive stage widths/lower bounds, stage amplitudes,
  <math|K> and clip bounds. Choose maximal path widths
  <math|\<sigma\><rsub|j>> and minimal amplitudes <math|A<rsub|j>>; for every
  <math|0\<less\>\<tau\><rsub|j>\<leqslant\>\<sigma\><rsub|j>,A<rprime|'><rsub|j>\<geqslant\>A<rsub|j>>
  choose drifts <math|d<rsub|j>\<geqslant\>0>, rates
  <math|\<gamma\><rsub|j>\<gtr\>0>, minimal factors <math|u<rsub|j>>; for
  every compatible choice of stage parameters with direct clip coefficients
  below their prescribed bounds, drifts at least <math|d<rsub|j>> and
  block-factor lower bounds at least <math|u<rsub|j>>, and then every
  admissible choice of block factors, choose volume thresholds and Hessian
  bounds <math|\<eta\><rsub|j>\<gtr\>0>; for every admissible protection
  sequence choose coupling-entry thresholds.

  For any subsequent <math|\<Gamma\><rsub|j>\<geqslant\>1>,
  <math|0\<less\>c<rsub|j>\<leqslant\>\<gamma\><rsub|j>>, compatible history
  meeting III.2's thresholds, free-field horizon satisfying III.10's strip,
  Floor, symmetry, top-identity, interpolation and three-form coercivity
  conditions, second horizon with identical beds/interpolation/curl kernels,
  and Haar ratio, there are kinetic data <math|<around|(|\<alpha\><rsub|N,m>,P<rsub|N,m>,g<rsub|N,m>|)>>.

  Every <math|P<rsub|N,m>> is attached with level-<math|m> bounds and loop
  amplitude <math|<math-up|loopCap><rsub|m>>; <math|P<rsub|N,N>> is the
  Wilson top datum on every volume with zero loops. For every
  <math|m\<less\>N>, volume and axial forest, the branches satisfy
  stationarity, the derivative condition, second-variation bound
  <math|\<eta\><rsub|J<rsub|m+1>>>, classical match,
  <math|<around|\||\<alpha\><rsub|N,m>+\<kappa\>*log
  L<rsub|m>|\|>+1\<leqslant\><math-up|drift><rsub|m+1>>, and the finite bound
  with <math|<around|(|\<Gamma\><rsub|J<rsub|m+1>>,c<rsub|J<rsub|m+1>>|)>> at
  loop amplitude both <math|<math-up|loopCap><rsub|m+1>> and <math|1>.

  <em|Status:> step and iteration theorems, conditional on the stated inputs.
  <em|Lean:> <hlink|<verbatim|transition_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182>,
  <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>,
  <hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>.

  <strong|Proposition III.7.5 (completed free inverse).> For stage <math|j>,
  kernel parameters <math|K>, <math|\<sigma\>,\<varepsilon\>\<gtr\>0>,
  <math|\<Omega\>\<geqslant\>0>, there exist <math|\<eta\>\<gtr\>0> and, for
  every <math|L>, <math|A<rsub|L>\<geqslant\>0>: every admissible
  stage-<math|j> patch and bed with <math|H\<in\><math-up|strip><around|(|\<sigma\>/L,\<Omega\>|)>>
  and Floor <math|<around|(|\<varepsilon\>,D|)>> on every side have a
  completed block-Bloch inverse <math|\<cal-G\><rsub|B>\<in\><math-up|strip><around|(|\<eta\>,A<rsub|L>|)>>
  satisfying <math|\<cal-C\><rsub|B>*\<cal-G\><rsub|B>=1> on every step, for
  any coarse side and kernel choice. The joint free form is
  <math|<around|\<langle\>|d*v,H*d*v|\<rangle\>>+a*<around|\<\|\|\>|-Q*v+d<rsub|c>*h|\<\|\|\>><rsup|2>>,
  completed by <math|F<rsub|1/L><rsup|<math-ss|T>>*F<rsub|1/L>>;
  <math|F<rsub|\<mu\>>=d<rsub|<space|-0.17em>1><rsup|\<ast\>>*P<rsub|f>+\<frak-m\><rsub|\<mu\>>*X>,
  with <math|X> minus the fine rooted-frame logarithm derivative. Matrices
  use physical counting bases; <math|\<eta\>> is uniform in <math|L>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|WilsonBulk.uniform_backing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66>.

  <strong|Proposition III.7.6 (Faddeev\UPopov identity).> For an admissible
  step, clip <math|\<b-up-p\>>, <math|R\<in\><math-up|Bounds><around|(|\<b-up-p\>;\<sigma\>,A,\<Lambda\>|)>>
  with <math|\<sigma\>\<gtr\>0,A,\<Lambda\>\<in\>\<bbb-R\>>, an axial branch
  <math|g<around|(|0|)>=0> analytic and stationary for every kernel choice
  with second variation bounded below by <math|\<eta\>*<big|sum><rsub|e><around|\||v<rsub|e>|\|><rsup|2>>,
  <math|\<eta\>\<gtr\>0>, every <math|\<mu\>\<gtr\>0>, kernel choice <math|t>
  and local Haar chart ratio, for coarse fields <math|x> near zero

  <\equation*>
    det \<cal-P\><rsub|\<mu\>>\<gtr\>0,<space|2em><math-up|th>=<math-up|loop><rsub|R><around|(|U<rsub|x,g<around|(|x|)>>|)>+<tfrac|1|2>log
    det \<cal-P\><rsub|\<mu\>>-log det \<cal-G\><rsub|\<mu\>>.
  </equation*>

  Here <math|\<cal-P\><rsub|\<mu\>>> acts on all fine-link and coarse-frame
  directions: it is the left-coordinate Hessian of

  <\equation*>
    <with|math-font|cal*|S><rsub|t><around|(|V;U,h|)>=<math-up|main><rsub|\<b-up-p\>,R><around|(|U|)>+a*<big|sum><rsub|e><around*|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><around*|(|V<rsub|e><around|[|<math-up|gauge><rsub|h>\<Pi\><rsub|t><around|(|U|)>|]><rsub|e><rsup|-1>|)>|)>
  </equation*>

  at <math|V=e<rsup|x>> and the lifted joint stationary configuration,
  completed by <math|F<rsub|\<mu\>><rsup|<math-ss|T>>*F<rsub|\<mu\>>>;
  <math|F<rsub|\<mu\>>=d<rsub|U><rsup|\<ast\>>*P<rsub|f>+\<frak-m\><rsub|\<mu\>>*X>,
  where <math|X> is the rooted-frame derivative at that configuration, and
  <math|\<cal-G\><rsub|\<mu\>>=d<rsub|U><rsup|\<ast\>>*d<rsub|U>+\<frak-m\><rsub|\<mu\>>>.
  The underlying identity is <math|T<rsup|2>*det \<cal-P\><rsub|\<mu\>>=det
  M<around|(|det \<cal-G\><rsub|\<mu\>>|)><rsup|2>>, with axial Hessian
  <math|M> and Haar Jacobian <math|T>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|tribute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: gauge group, Wilson action and Casimir;
    <hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>.

    <item>III.1: path, block-step and kinetic specifications; III.2:
    compatible histories and constant thresholds,
    <hlink|<verbatim|Supply.Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>.

    <item>III.6: analytic stationary branches and free-interpolation
    derivative, <hlink|<verbatim|Integrated.stationary_scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232>.

    <item>III.10: bed symmetry and free-field horizon conditions,
    <hlink|<verbatim|Craft.Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>;
    supplied globally by III.4.

    <item>II.1: Haar chart, <hlink|<verbatim|chart_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84>.
    III.16/III.3: Laurent/Bloch strip calculus.

    <item>Standard results: polarization, lattice Poincaré/Koszul lemma,
    Schur's lemma, Faddeev\UPopov procedure, background-field method, Balaban
    propagator bounds and rotation-invariant shell integration. No one-loop
    coefficient is assumed.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  After lower jets are matched, gauge invariance makes residual Fourier
  Taylor kernels transversal. Quantitative lattice Poincaré division factors
  them through curvature; exponentially decaying Laurent coefficients give
  cubic and quartic path atoms. This matches Wilson at the top and the
  stationary tree action at each coarse level.

  The Faddeev\UPopov identity replaces axial determinants and Haar factors by
  covariant vector and ghost determinants. Uniform inverse bounds permit
  comparison with the infrared-regulated fine determinant. Its continuum
  bubble determines the logarithmic slope; subtracting that multiple of the
  coarse quadratic kernel leaves a fourth-order momentum zero, represented by
  loop atoms.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Fourier kernels and Ward identities.> Local analytic
    translation sums give strip-analytic kernels; vanishing lower jets and
    gauge invariance give transversality in the infinite-volume limit.
    <hlink|<verbatim|gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348>,
    <hlink|<verbatim|withdrew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697>.

    <item><strong|Curvature factorization.> Hadamard division of
    <math|e<rsup|i*p<rsub|j>>-1> solves each leg with controlled strip loss;
    invariant Laurent coefficients give atoms. Successively remove cubic and
    quartic residuals. <hlink|<verbatim|allleg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549>,
    <hlink|<verbatim|assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595>.

    <item><strong|Determinants and inverses.> Axial determinant factorization
    and Haar density give III.7.6; real coercivity followed by complex-strip
    perturbation bounds the completed inverses uniformly in block-scaled
    norms. <hlink|<verbatim|tribute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202>,
    <hlink|<verbatim|post_cert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353>.

    <item><strong|Compute the slope.> Vector and ghost bubbles have angular
    average <math|-<around|(|11/3|)>*C<rsub|G><around|\||k|\|><rsup|-4>>;
    normalized integration over <math|1/L\<less\><around|\||k|\|>\<leqslant\>1>
    yields <math|-\<kappa\>*log L>. The shell error
    <math|O<around|(|<around|\||k*<around|\||<rsup|-3>+L<rsup|-2>|\|>*k|\|><rsup|-6>|)>>
    is integrable with an <math|L>-independent bound; the infrared ball and
    outer region also contribute bounded remainders.
    <hlink|<verbatim|poleSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338>,
    <hlink|<verbatim|absoluteGeode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>.

    <item><strong|Compare and subtract.> Contact terms do not change
    <math|\<alpha\>>; coarse/fine determinant comparison costs
    <math|O<around|(|1|)>>, and aliasing preserves <math|\<alpha\>>. The
    residual two-leg kernel yields loop atoms with zero zeroth and first
    moments. <hlink|<verbatim|quoting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96>,
    <hlink|<verbatim|pole_reduced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L719-L741>,
    <hlink|<verbatim|color_pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435>.

    <item><strong|Iterate.> Input-dependent classical terms carry
    <math|L<rsup|-1>>, inherited loops <math|L<rsup|-2>>; large <math|L>
    fixes output bounds, and coupling thresholds absorb newly generated
    <math|O<around|(|L<rsup|4>|)>> loops. Downward induction gives the
    kinetic data. <hlink|<verbatim|transition_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182>,
    <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The coefficient calculation must reach the blocked determinant with error
  uniform in <math|L>, through contact cancellation and every Fourier alias.
  Curvature factorization must preserve decay and previously imposed leg
  constraints. Output widths and classical amplitudes precede input
  amplitudes. The auxiliary regulator respects gauge transformations and
  unsigned permutations; full signed-permutation symmetry is asserted for the
  blocked action.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<Lambda\><rsub|n>> has <math|n<rsup|4>> sites; <math|U=e<rsup|x>>.
  <math|E<rsub|W><around|(|U|)>=<big|sum><rsub|p><around|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><space|0.17em>U<rsub|p>|)>>
  in representation dimension <math|d<rsub|<math-up|rep>>>; <math|C<rsub|G>>
  is the adjoint Casimir. <math|\<rho\>,H,D> are bed roots, metric and
  diagonal; <math|d<rsub|1>> is the lattice curl, while
  <math|d<rsub|<space|-0.17em>1>> is <math|d<rsub|U>> at <math|U=1>.
  <math|P<rsub|f>> projects onto fine links, <math|Q> is the block average,
  <math|d<rsub|c>> the coarse gradient. Levels <math|m=0,\<ldots\>,N> run
  from coarse to fine, and <math|J<rsub|m+1>\<in\><around|{|J<rsub|m>,J<rsub|m>+1|}>>.
  <math|<math-up|loopCap><rsub|m>> is the allowed loop amplitude.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Subsidiary quotient, strip-perturbation, tadpole/bubble, determinant/Haar,
  contact and alias estimates remain partly at statement level. The reason
  for regulator power nine is unsettled. Global hypotheses have not been
  checked in every downstream application; the complete compactness and
  limiting-jet argument belongs to III.13.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-7.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.16|III-16.tm>, <hlink|III.6|III-6.tm>, <hlink|III.10|III-10.tm>,
  <hlink|III.2|III-2.tm>.

  <strong|Referenced by:> <hlink|VII.2|VII-2.tm>, <hlink|III.2|III-2.tm>,
  <hlink|III.13|III-13.tm>, <hlink|III.4|III-4.tm>, <hlink|III.14|III-14.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|III.12|III-12.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 19,945 attributed lines; 3,533 line-counted
  declarations; 4,156 assigned declaration names. Of the assigned names,
  4,108 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Next/STATIONARY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY>
    \V 19,391 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Projection/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection>
    \V 286 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Spectral/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral>
    \V 215 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/Reward/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward>
    \V 30 lines.

    <item>work package <hlink|<verbatim|YM/UVExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension>
    \V 23 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|free/stationary
    connection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/B70FreeStationaryConnection.lean#L17-L56>

    <item><hlink|<verbatim|Bid.Retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105>

    <item><hlink|<verbatim|Bid.one_for_all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L35-L43>

    <item><hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>

    <item><hlink|<verbatim|Bid.Larger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64>

    <item><hlink|<verbatim|Bid.HeatG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84>

    <item><hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>

    <item><hlink|<verbatim|Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>

    <item><hlink|<verbatim|frontR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Block/Static.lean#L20>

    <item><hlink|<verbatim|tip_fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L700-L708>

    <item><hlink|<verbatim|subtract_fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L710-L727>

    <item><hlink|<verbatim|GrantF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22>

    <item><hlink|<verbatim|medalCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84>

    <item><hlink|<verbatim|rankCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85>

    <item><hlink|<verbatim|coreCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86>

    <item><hlink|<verbatim|Firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199>

    <item><hlink|<verbatim|Rays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29>

    <item><hlink|<verbatim|noteAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L341>

    <item><hlink|<verbatim|root_determines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L491-L502>

    <item><hlink|<verbatim|medals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60>

    <item><hlink|<verbatim|postroom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/FourPoint.lean#L221>

    <item><hlink|<verbatim|certified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L140-L161>

    <item><hlink|<verbatim|bounty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L166-L167>

    <item><hlink|<verbatim|treasury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L63-L114>

    <item><hlink|<verbatim|grenade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338>

    <item><hlink|<verbatim|cannonade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L499>

    <item><hlink|<verbatim|beckon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105>

    <item><hlink|<verbatim|Fluent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115>

    <item><hlink|<verbatim|claiming>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143>

    <item><hlink|<verbatim|BranchRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166>

    <item><hlink|<verbatim|Bubble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177>

    <item><hlink|<verbatim|bump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L18-L49>

    <item><hlink|<verbatim|budding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225>

    <item><hlink|<verbatim|energized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285>

    <item><hlink|<verbatim|FullPaths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305>

    <item><hlink|<verbatim|plowed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335>

    <item><hlink|<verbatim|waits_up>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L353-L358>

    <item><hlink|<verbatim|under_contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391>

    <item><hlink|<verbatim|clocks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L51-L74>

    <item><hlink|<verbatim|BasesFine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L93-L99>

    <item><hlink|<verbatim|transfer_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L105-L113>

    <item><hlink|<verbatim|rowPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171>

    <item><hlink|<verbatim|emitBase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L173-L174>

    <item><hlink|<verbatim|rowPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L176>

    <item><hlink|<verbatim|symbol_match>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L214-L258>

    <item><hlink|<verbatim|born>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L76-L103>

    <item><hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>

    <item><hlink|<verbatim|Hull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L25>

    <item><hlink|<verbatim|Scud>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L26-L38>

    <item><hlink|<verbatim|age_control>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L42-L49>

    <item><hlink|<verbatim|cap_invoice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L74-L80>

    <item><hlink|<verbatim|Transition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90>

    <item><hlink|<verbatim|priceDivision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L84>

    <item><hlink|<verbatim|div_var>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L88-L128>

    <item><hlink|<verbatim|reach_symbol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L122-L159>

    <item><hlink|<verbatim|draft_pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L281-L324>

    <item><hlink|<verbatim|violet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L343-L376>

    <item><hlink|<verbatim|achieved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L377-L386>

    <item><hlink|<verbatim|bequest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L66-L92>

    <item><hlink|<verbatim|profit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Fourier.lean#L454-L482>

    <item><hlink|<verbatim|boundedTip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L24-L41>

    <item><hlink|<verbatim|fine_alpha>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L670-L705>

    <item><hlink|<verbatim|Freezer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/UniformMatrix.lean#L270-L272>

    <item><hlink|<verbatim|poleVec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125>

    <item><hlink|<verbatim|haloRate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141>

    <item><hlink|<verbatim|keelRay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L155>

    <item><hlink|<verbatim|Rally.coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L179-L184>

    <item><hlink|<verbatim|Rally.shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L191-L222>

    <item><hlink|<verbatim|Waves1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L276>

    <item><hlink|<verbatim|Waves2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L277>

    <item><hlink|<verbatim|astronomy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L278-L292>

    <item><hlink|<verbatim|amena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L333>

    <item><hlink|<verbatim|gemF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L356-L363>

    <item><hlink|<verbatim|tideMark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L41-L54>

    <item><hlink|<verbatim|HouseWord.done>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L451-L456>

    <item><hlink|<verbatim|saunter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L528-L535>

    <item><hlink|<verbatim|polar_clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L136-L159>

    <item><hlink|<verbatim|polar_m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L200-L202>

    <item><hlink|<verbatim|joy_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L270-L275>

    <item><hlink|<verbatim|cartWeight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L28>

    <item><hlink|<verbatim|joy_heights>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L292-L304>

    <item><hlink|<verbatim|Wilson_stream>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L312-L326>

    <item><hlink|<verbatim|Pointwise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L373-L377>

    <item><hlink|<verbatim|top_Wilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L441-L471>

    <item><hlink|<verbatim|exchangeYield>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Exchange.lean#L407-L415>

    <item><hlink|<verbatim|matched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L254-L260>

    <item><hlink|<verbatim|veneer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L349-L358>

    <item><hlink|<verbatim|greyson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L363-L403>

    <item><hlink|<verbatim|PoleTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138>

    <item><hlink|<verbatim|rankAux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L45>

    <item><hlink|<verbatim|fineMag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46>

    <item><hlink|<verbatim|inch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/Slabs.lean#L189>

    <item><hlink|<verbatim|SameJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106>

    <item><hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>

    <item><hlink|<verbatim|Precision.mainTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28>

    <item><hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84>

    <item><hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>

    <item><hlink|<verbatim|draft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L51>

    <item><hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>

    <item><hlink|<verbatim|Kin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77>

    <item><hlink|<verbatim|Precision.Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>

    <item><hlink|<verbatim|Attached>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46>

    <item><hlink|<verbatim|\<beta\>\<#302\>_m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>

    <item><hlink|<verbatim|loopCap_m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86>

    <item><hlink|<verbatim|RG.Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>

    <item><hlink|<verbatim|metric_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L161-L162>

    <item><hlink|<verbatim|loop_jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L167-L169>

    <item><hlink|<verbatim|RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>

    <item><hlink|<verbatim|RG.Atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86>

    <item><hlink|<verbatim|interview>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Fumes.lean#L56-L87>

    <item><hlink|<verbatim|fitting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Ink.lean#L79-L99>

    <item><hlink|<verbatim|insideLine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Lines.lean#L89-L109>

    <item><hlink|<verbatim|completedM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L18-L20>

    <item><hlink|<verbatim|jointInverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L22-L23>

    <item><hlink|<verbatim|completion_choice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Joint.lean#L44-L69>

    <item><hlink|<verbatim|same_thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57>

    <item><hlink|<verbatim|hessian_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-7-1>

  <\itemize-minus>
    <item><strong|K-III.7.1> <hlink|<verbatim|gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348>
    <em|(key result)> \V A summable family of local analytic functionals with
    weighted bounds sums to an analytic function with uniformly controlled
    jet bounds, dimension-free.
  </itemize-minus>

  <label|k-iii-7-2>

  <\itemize-minus>
    <item><strong|K-III.7.2> <hlink|<verbatim|vanish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625>
    <em|(key result)> \V For simple gauge group and distinct axes with
    vanishing leap-tip coefficient, the relevant data function vanishes to
    order four along the axes.
  </itemize-minus>

  <label|k-iii-7-3>

  <\itemize-minus>
    <item><strong|K-III.7.3> <hlink|<verbatim|withdrew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697>
    <em|(key result)> \V Uniform lift conditions transfer along a sequence of
    analytic forces tending to zero, except for ray vanishing orders.
  </itemize-minus>

  <label|k-iii-7-4>

  <\itemize-minus>
    <item><strong|K-III.7.4> <hlink|<verbatim|frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Chart.lean#L421-L435>
    <em|(numbered result)> \V The Army property is preserved on composing
    with frame evaluation components.
  </itemize-minus>

  <label|k-iii-7-5>

  <\itemize-minus>
    <item><strong|K-III.7.5> <hlink|<verbatim|wedlock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379>
    <em|(key result)> \V There exists a family of kernels with exponentially
    decaying bounds and analytic rays that realizes the prescribed generating
    data.
  </itemize-minus>

  <label|k-iii-7-6>

  <\itemize-minus>
    <item><strong|K-III.7.6> <hlink|<verbatim|wall_lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587>
    <em|(key result)> \V A cycle-valued leg with cost and jet bounds is a
    coboundary of a leg one degree higher with controlled cost, preserving
    vanishing on the wall.
  </itemize-minus>

  <label|k-iii-7-7>

  <\itemize-minus>
    <item><strong|K-III.7.7> <hlink|<verbatim|carry_plan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278>
    <em|(key result)> \V Under convergence hypotheses, the limiting row-scape
    of a sequence of kernels coincides with the carried row from the limit
    object at real momenta.
  </itemize-minus>

  <label|k-iii-7-8>

  <\itemize-minus>
    <item><strong|K-III.7.8> <hlink|<verbatim|allleg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549>
    <em|(key result)> \V For arity at least three, a contractible family of
    cost-bounded functions is the curl of a family of cost-bounded
    potentials, with cost loss by a constant factor.
  </itemize-minus>

  <label|k-iii-7-9>

  <\itemize-minus>
    <item><strong|K-III.7.9> <hlink|<verbatim|strokes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201>
    <em|(numbered result)> \V A cost-bounded picture admits a real,
    color-invariant Laurent representation with controlled cost at fixed
    arity.
  </itemize-minus>

  <label|k-iii-7-10>

  <\itemize-minus>
    <item><strong|K-III.7.10> <hlink|<verbatim|colors_align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216>
    <em|(key result)> \V For an analytic function with controlled recorded
    data and a shaded picture and skin, the series expansion matches the
    function to the stated aperture order.
  </itemize-minus>

  <label|k-iii-7-11>

  <\itemize-minus>
    <item><strong|K-III.7.11> <hlink|<verbatim|scene_gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61>
    <em|(key result)> \V For a given roll and price data there exists a
    budget gap parameter, from the stationary scene.
  </itemize-minus>

  <label|k-iii-7-12>

  <\itemize-minus>
    <item><strong|K-III.7.12> <hlink|<verbatim|tribute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202>
    <em|(key result)> \V Near zero, the completed Hessian determinant is
    positive and the Haar-to-counting Jacobian ratio is controlled inside the
    exponential patches.
  </itemize-minus>

  <label|k-iii-7-13>

  <\itemize-minus>
    <item><strong|K-III.7.13> <hlink|<verbatim|stadium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664>
    <em|(key result)> \V For self-adjoint-symmetric tactics with bounded
    serial norms, the carried matrix of the force operator is stable with a
    uniform constant on real momenta.
  </itemize-minus>

  <label|k-iii-7-14>

  <\itemize-minus>
    <item><strong|K-III.7.14> <hlink|<verbatim|filing_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234>
    <em|(numbered result)> \V The filing data are firm with controlled bounds
    and vanish to order four along axes, and are recorded against the loop
    series at order zero.
  </itemize-minus>

  <label|k-iii-7-15>

  <\itemize-minus>
    <item><strong|K-III.7.15> <hlink|<verbatim|launch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305>
    <em|(key result)> \V Given input bed data, there is a path datum whose
    main term agrees to fourth jet order with the Wilson energy and satisfies
    bounds, uniformly for large volumes.
  </itemize-minus>

  <label|k-iii-7-16>

  <\itemize-minus>
    <item><strong|K-III.7.16> <hlink|<verbatim|assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595>
    <em|(key result)> \V Real-analytic extensions with jet control can be
    matched, up to order-five error, by classical emitted data built from
    atoms with wall bounds, uniformly along large volumes.
  </itemize-minus>

  <label|k-iii-7-17>

  <\itemize-minus>
    <item><strong|K-III.7.17> <hlink|<verbatim|extra_curves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103>
    <em|(key result)> \V For atom families with wall bounds, classical
    curvature terms from cubic and quartic vertices are realized by pictures
    with uniform bounds enabling the induction.
  </itemize-minus>

  <label|k-iii-7-18>

  <\itemize-minus>
    <item><strong|K-III.7.18> <hlink|<verbatim|quoting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96>
    <em|(key result)> \V A grant bound yields footprint bounds for bounded
    plane-density performances, used for flux, transition and ceiling caps.
  </itemize-minus>

  <label|k-iii-7-19>

  <\itemize-minus>
    <item><strong|K-III.7.19> <hlink|<verbatim|drift_tip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818>
    <em|(key result)> \V For a simple gauge group and screened data, the
    alpha payment of the profitable cue vanishes for each color index.
  </itemize-minus>

  <label|k-iii-7-20>

  <\itemize-minus>
    <item><strong|K-III.7.20> <hlink|<verbatim|post_cert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353>
    <em|(key result)> \V Under weighted two-end budget conditions, the
    force-kernel operator built from the tactics satisfies a freezing
    (coercivity) certificate with constants independent of the patch.
  </itemize-minus>

  <label|k-iii-7-21>

  <\itemize-minus>
    <item><strong|K-III.7.21> <hlink|<verbatim|uniform_backing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66>
    <em|(key result)> \V For beds with strip metric and floors, the joint
    inverse is uniformly bounded in the strip norm with constants depending
    only on the level, and inverts the completed matrix.
  </itemize-minus>

  <label|k-iii-7-22>

  <\itemize-minus>
    <item><strong|K-III.7.22> <hlink|<verbatim|pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>
    <em|(key result)> \V For every simple gauge group, the fluent (annulus)
    certificate holds.
  </itemize-minus>

  <label|k-iii-7-23>

  <\itemize-minus>
    <item><strong|K-III.7.23> <hlink|<verbatim|honored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68>
    <em|(key result)> \V Given inputs, one can choose convergence widths and
    constants independent of later kinetic data so that the grant-type bounds
    hold for all patches and path data along sequences of sides tending to
    infinity.
  </itemize-minus>

  <label|k-iii-7-24>

  <\itemize-minus>
    <item><strong|K-III.7.24> <hlink|<verbatim|setWest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382>
    <em|(key result)> \V For bounded loop data, there are constants such that
    for all small patches and admissible families, one can construct order-3
    and order-4 weighted texts bounding the stationary expansion with
    explicit constants.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.6 The stationary branch: background
  field of the effective action|III-6.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-7.tm>|<hlink|III.8 Connected activities and backward
  dependence cones \<rightarrow\>|III-8.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.7. Matching the Wilson energy to fourth order
    \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|5>>
    <associate|3-strategy|<tuple|3|5>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|6>>
    <associate|6-notation|<tuple|6|6>>
    <associate|7-what-remains-unexplained|<tuple|7|6>>
    <associate|additional-source-locations|<tuple|9.1|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|7>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|6>>
    <associate|auto-8|<tuple|8|7>>
    <associate|auto-9|<tuple|9|7>>
    <associate|code-dependencies|<tuple|8|7>>
    <associate|iii7-matching-the-wilson-energy-to-fourth-order|<tuple|?|1>>
    <associate|k-iii-7-1|<tuple|10|12>>
    <associate|k-iii-7-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-12|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-13|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-14|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-15|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-16|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-17|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-18|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-19|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-20|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-7-21|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-7-22|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-7-23|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-7-24|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-7-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-7-9|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|7>>
    <associate|unit-difficulty|<tuple|6|6>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|5>>
    <associate|unit-limitations|<tuple|6|6>>
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