<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit|IV-1.tm>|<hlink|Part
  V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Detailed
  notes|../notes/V-1.tm>|<hlink|V.2 Osterwalder-Schrader reconstruction of a
  Wightman theory \<rightarrow\>|V-2.tm>>

  <ym-title|V.1. Decomposition of the limit into
  phases><label|v1-decomposition-of-the-limit-into-phases>

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

  <em|Part V \V Phases and reconstruction.>

  Decomposes the mixed Euclidean limit into phases and explains the selection
  of a phase with a unique vacuum.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/V-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: IV.1|IV-1.tm> <ym-middot> <hlink|Next: V.2
  \<rightarrow\>|V-2.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> The phase selection and its reconstruction do not
  prove a mass gap. See <hlink|V.2|V-2.tm> and <hlink|V.3|V-3.tm>.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> V, phases and reconstruction. <strong|Lean:>
    <hlink|<verbatim|YM/OS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS>,
    <hlink|<verbatim|YM/Phase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase>,
    <hlink|<verbatim|YM/Ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground>,
    <hlink|<verbatim|YM/Heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat>,
    <hlink|<verbatim|YM/SNAG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG>,
    <hlink|<verbatim|YM/Paley>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley>,
    <hlink|<verbatim|YM/Spectral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spectral>,
    the work items B01\UB18 in <hlink|<verbatim|YM/Work>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>,
    and the assembly files <hlink|<verbatim|Bid/Phase.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean>,
    <hlink|<verbatim|Bid/Fetch.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean>,
    <hlink|<verbatim|Bid/Market.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Market.lean>,
    <hlink|<verbatim|Org/Phase.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean>.
    <strong|Size:> about 5,700 lines in line-counted declarations in the
    source allocation, including about 2,700 in B01\UB18, plus the assembly
    files.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <math|S> is the limit table; words are separated unless stated otherwise.
  \PHierarchy\Q means permutation symmetry, normalization and unit labels,
  signed-axis symmetries and reality, translation invariance, point and
  smeared reflection positivity for every coordinate axis, smoothness on
  separated configurations, and caps on all derivatives (IV.1). A cap bounds
  each fixed correlation derivative by <math|C*r<rsup|-A>> for
  <math|0\<less\>r\<leqslant\>1> and mutual sup-distance
  <math|\<geqslant\>r>, with <math|C\<geqslant\>0>, <math|A\<in\>\<bbb-N\>>
  depending on arity, degrees, labels and derivative order. The OS inner
  product is <math|<around|\<langle\>|b,b<rprime|'>|\<rangle\>>=S*<around|(|\<Theta\>*b\<cdot\>b<rprime|'>|)>>,
  and <math|\<Omega\>=<around|\||\<emptyset\>|\<rangle\>>>.

  <strong|Proposition V.1.1 (chambers and ground space).> For every <math|S>
  satisfying the hierarchy and coordinate axis <math|a>, its OS space carries
  a strongly continuous self-adjoint contraction semigroup and a commuting
  strongly continuous spatial unitary group,
  <math|E<rsub|t>\|b\<rangle\>=<around|\||b+t*e<rsub|a>|\<rangle\>>>,
  <math|U<rsub|y>\|b\<rangle\>=<around|\||b+y|\<rangle\>>>
  (<math|t\<geqslant\>0>, <math|y\<perp\>e<rsub|a>>). These identities hold
  for every <math|a>-positive <math|b>. This is a chamber. The fixed space
  <math|\<cal-H\><rsub|0>> of all <math|E<rsub|t>> contains <math|\<Omega\>>,
  and <math|E<rsub|t>*\<psi\>\<to\>P<rsub|0>*\<psi\>> for every
  <math|\<psi\>>, where <math|P<rsub|0>> projects onto
  <math|\<cal-H\><rsub|0>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|OS.implement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L63-L104>,
  <hlink|<verbatim|OS.Semigroup.emerges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Core.lean#L38-L78>.

  <strong|Proposition V.1.2 (spectral calculus).> In every chamber, writing
  <math|E<rsub|t>=e<rsup|-t*H>>, there is a strongly continuous unitary group
  determined by <math|e<rsup|i*s*H>*E<rsub|1>*\<psi\>=E<rsub|1><rsup|1-i*s>*\<psi\>>
  through continuous functional calculus. The strongly continuous unitary
  representation <math|V<around|(|x|)>=e<rsup|i*x<rsup|a>*H>*U<rsub|x-x<rsup|a>*e<rsub|a>>>
  has a projection-valued measure <math|P>; for every <math|\<psi\>>,
  <math|\<mu\><rsub|\<psi\>><around|(|B|)>=<around|\<langle\>|\<psi\>,P<around|(|B|)>*\<psi\>|\<rangle\>>>
  is supported in <math|p<rsup|a>\<geqslant\>0>, and, for every <math|x> and
  <math|<math-up|Im><space|0.17em>z\<geqslant\>0>,

  <\equation*>
    <around|\<langle\>|\<psi\>,V<around|(|x|)>*e<rsup|i<around|(|<math-up|Re><space|0.17em>z|)>*H>*E<rsub|<math-up|Im><space|0.17em>z>*\<psi\>|\<rangle\>>=<big|int>e<rsup|i*p\<cdot\>x>*e<rsup|i*p<rsup|a>*z>*<space|0.17em>d*\<mu\><rsub|\<psi\>><around|(|p|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Semigroup.unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L50-L58>,
  <hlink|<verbatim|Spectral.Orbit.total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L52-L119>,
  <hlink|<verbatim|Semigroup.heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L108-L114>.

  <strong|Proposition V.1.3 (slab operators).> Under the hierarchy and bench
  V.1.7, every time-axis chamber has unique bounded
  <math|T<rsub|d><around|(|w|)>> for <math|d\<gtr\>0>, <math|w> in
  <math|<around|(|0,d|)>>, satisfying <math|T<rsub|d><around|(|w|)>\|b\<rangle\>=<around|\||w\<cdot\>\<tau\><rsub|d>*b|\<rangle\>>>
  for every positive <math|b>. For every <math|D\<in\>\<bbb-N\>>,
  <math|\<rho\>\<gtr\>0>, some <math|C\<gtr\>0>,
  <math|\<kappa\>\<in\>\<bbb-N\>> give

  <\equation*>
    <around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\>C<rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>
  </equation*>

  for all <math|d\<gtr\>0>, <math|0\<less\>r\<leqslant\>1>, and
  <math|r>-buffered <math|w> with degrees <math|\<leqslant\>D>, label norms
  <math|\<leqslant\>\<rho\>>; the empty-word bound is <math|1>. With the
  plan's derivative identities, for fixed <math|d> and labels,
  <math|T<rsub|d><around|(|w<around|(|x|)>|)>> is
  norm-<math|C<rsup|\<infty\>>> on the open slab configuration set, and
  coordinate differentiation replaces the corresponding label by
  <math|\<partial\><rsub|j>*v>. More generally this smoothness holds for any
  slab family satisfying (B) on a time-axis chamber of <math|S<rprime|'>>,
  provided <math|S,S<rprime|'>> satisfy the hierarchy, <math|S<rprime|'>>
  respects <math|S>, and <math|S<rprime|'>> satisfies the derivative
  identities of the plan on <math|S>. <em|Status:> theorem conditional on the
  bench. <em|Lean:> <hlink|<verbatim|Work.B01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B01.lean#L50-L71>,
  <hlink|<verbatim|Work.B02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>.

  <strong|Proposition V.1.4 (compressed algebra).> Assume the hierarchy,
  <math|O<around|(|4|)>>-covariance, a time-axis chamber and a slab family
  satisfying V.1.3's insertion identity. Then spatial translations fix
  <math|\<cal-H\><rsub|0>> pointwise. For every separated <math|w>,
  <math|M<around|(|w|)>=P<rsub|0>*T<rsub|d>*<around|(|w+s|)>\|<rsub|\<cal-H\><rsub|0>>>
  is independent of admissible <math|s,d>;
  <math|M<around|(|b|)>*\<Omega\>=P<rsub|0>\|b\<rangle\>> for positive
  <math|b>, and <math|<around|\<langle\>|\<Omega\>,M<around|(|w|)>*\<Omega\>|\<rangle\>>=S<around|(|w|)>>.
  For any finite collection of separated words <math|q<rsub|i>> and shifts
  <math|a<rsub|i><around|(|n|)>> with <math|t*<around|(|a<rsub|j><around|(|n|)>-a<rsub|i><around|(|n|)>|)>\<to\>+\<infty\>>
  for <math|i\<less\>j>, the concatenations are eventually separated and
  their correlations tend to <math|<around|\<langle\>|\<Omega\>,<big|prod><rsub|i>M<around|(|q<rsub|i>|)>*\<Omega\>|\<rangle\>>>,
  regardless of spatial shifts. The generated norm-closed
  <math|\<ast\>>-algebra <math|\<cal-A\>> is commutative; <math|\<Omega\>> is
  cyclic and separating. With smooth slab laws, <math|M> is
  permutation/translation invariant, satisfies
  <math|M<around|(|\<emptyset\>|)>=1>, permits dropping unit labels together
  with their points, satisfies <math|M<around|(|w|)><rsup|\<ast\>>=M*<around|(|\<Theta\>*w|)>>,
  is multilinear through products of <math|F<rsub|d><around|(|S|)>> and
  norm-smooth in positions; <math|\<cal-A\>> is separable. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|Ground.adjunction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L149-L161>,
  <hlink|<verbatim|Work.B03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B03.lean#L405-L415>.

  <strong|Proposition V.1.5 (decomposition).> Under V.1.4 including
  smoothness, <math|X=<math-up|Spec><around|(|\<cal-A\>|)>> is compact
  metrizable, with full-support Borel probability <math|\<nu\>>. Its points
  bijectively parametrize characters <math|\<chi\><rsub|\<xi\>>>; every
  evaluation is continuous and <math|<big|int><rsub|X>\<chi\><rsub|\<xi\>><around|(|p|)>*d*\<nu\>=<around|\<langle\>|\<Omega\>,p*\<Omega\>|\<rangle\>>>
  for all <math|p\<in\>\<cal-A\>>. Each <math|S<rsup|\<xi\>><around|(|w|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|w|)>|)>>,
  extended by zero off separated configurations, is a table; evaluations are
  continuous in <math|\<xi\>>, and <math|S<around|(|w|)>=<big|int><rsub|X>S<rsup|\<xi\>><around|(|w|)>*d*\<nu\>>
  for every separated <math|w>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Ground.resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L126-L140>,
  <hlink|<verbatim|Resolution.barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117>.

  <strong|Proposition V.1.6 (phase laws).> Assume V.1.3\UV.1.5 with smooth
  laws for the field-algebra plan, the Seed, grid hypothesis and
  field-algebra laws on <math|S>. For every separated word <math|w>,
  <math|M<around|(|w|)>=M*<around|(|\<vartheta\>*w|)>> with arbitrary complex
  labels, and <math|M<around|(|w|)>=M*<around|(|K*w|)>> for every
  <math|K\<in\>O<around|(|4|)>>. For every <math|\<xi\>\<in\>X>,
  <math|S<rsup|\<xi\>>> satisfies the hierarchy, respects <math|S>, is
  <math|O<around|(|4|)>>-covariant for the same action, inclusion/derivative
  identities and stress-tensor Ward identities, and
  <math|N<rsub|d><around|(|S<rsup|\<xi\>>|)>=N<rsub|d><around|(|S|)>> for
  every degree <math|d>. For every <math|D\<in\>\<bbb-N\>>,
  <math|\<rho\>\<gtr\>0>, some <math|K\<gtr\>0>,
  <math|\<kappa\>\<in\>\<bbb-N\>> give <math|<around|\||S<rsup|\<xi\>><around|(|w|)>|\|>\<leqslant\>K<rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>>
  uniformly in <math|\<xi\>>, <math|0\<less\>r\<leqslant\>1>, and words with
  degrees <math|\<leqslant\>D>, label norms <math|\<leqslant\>\<rho\>>,
  mutual sup-distance <math|\<geqslant\>r>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Work.B05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L90-L115>,
  <hlink|<verbatim|Retain.lift_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Picks.lean#L128-L158>.

  <strong|Proposition V.1.7 (bench).> For every <math|D\<in\>\<bbb-N\>>,
  <math|\<rho\>\<gtr\>0>, some <math|C<rsub|0>\<gtr\>0>,
  <math|\<kappa\>\<in\>\<bbb-N\>> work for every <math|d\<gtr\>0>,
  <math|0\<less\>r\<leqslant\>1>, nonempty <math|r>-buffered <math|w> with
  degrees <math|\<leqslant\>D>, norms <math|\<leqslant\>\<rho\>>: there are a
  lattice level <math|b> and <math|s\<leqslant\>d>,
  <math|s\<in\>a<rsub|b>*\<bbb-N\>>, with <math|w> in
  <math|<around|(|0,s|)>>, such that every positive <math|v> has
  <math|B<rsub|v>> satisfying

  <\equation*>
    <around|\||S*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)>|\|>\<leqslant\>B<rsub|v>*A<rsup|4*n>*<space|1em><around|(|n\<geqslant\>0|)>,<space|2em>A=C<rsub|0><rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>,
  </equation*>

  where <math|v<rsub|0>=v>, <math|v<rsub|n+1>=\<tau\><rsub|s>*<around|(|\<Theta\>*w|)>\<cdot\>\<tau\><rsub|s>*<around|(|w\<cdot\>\<tau\><rsub|s>*v<rsub|n>|)>>.
  <em|Status:> hypothesis here, proved in VII.4 for every Seed table.
  <em|Lean:> <hlink|<verbatim|Next.Phase.seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>.

  <strong|Proposition V.1.8 (vacuum uniqueness).> Given V.1.5 and the
  hierarchy for every phase, fix a time-axis chamber for each <math|\<xi\>>.
  Then <math|\<cal-H\><rsub|0><rsup|\<xi\>>=\<bbb-C\>*\<Omega\><rsub|\<xi\>>>
  for <math|\<nu\>>-almost every <math|\<xi\>>, so such phases exist. Every
  time-axis phase chamber has slab operators with
  <math|<around|\<\|\|\>|T<rsub|d><rsup|\<xi\>><around|(|w|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>>,
  inheriting (B) whenever the original family has it, and, under V.1.6,
  smoothness. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Cluster.lifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L91-L110>,
  <hlink|<verbatim|Work.B13.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B13.lean#L91-L105>.

  <strong|Proposition V.1.9 (selected-phase certificate).> For every Wilson
  family with extraction order and limit <math|S>, assuming its Seed, grid
  hypothesis and field algebra with laws, there exist a time-axis chamber of
  <math|S> with spatially fixed ground space, a smooth slab family satisfying
  (B), decomposition as V.1.5 with every phase satisfying V.1.6's hierarchy,
  field laws and null-space equality, and a selected phase with a time-axis
  chamber having ground space <math|\<bbb-C\>*\<Omega\>> and smooth slab
  family. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Phase.Loom.cleanse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L60-L76>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>IV.1: hierarchy and <hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>,
    including cell bounds and corrected-field data.

    <item>VII.4: bench; III.11: <hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>,
    the grid hypothesis with cutoff-independent bounded approximants.

    <item>VI.1: <hlink|<verbatim|Spec.Algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L28-L31>
    and field laws; V.2: <hlink|<verbatim|Kernel.Gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L34-L38>
    completion; I.1, II.1: lattice and Wilson family.

    <item>OS doubling; chessboard estimates; continuous functional calculus;
    SNAG; Paley\UWiener; Gelfand\UNaimark; Riesz\UMarkov; dominated
    convergence; Cartan\UDieudonné.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Compress bounded slab insertions to the ground space. Their commutative
  algebra describes infinite-time-separated observables; characters yield
  phase tables and the vacuum state supplies their mixing measure. Operator
  identities give laws in every phase; an integrated variance identity
  selects a unique-vacuum phase almost everywhere.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Construct contractions by OS doubling; functional calculus and SNAG
    give spectral measures, with positive energy from half-plane analyticity.
    <hlink|<verbatim|OS.contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Flow.lean#L70-L89>,
    <hlink|<verbatim|Semigroup.nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L102-L104>.

    <item>Turn bench train bounds into slab norms by the power argument;
    absorb leftover width with <math|E<rsub|d-s>>.
    <hlink|<verbatim|Drive.against>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L20-L60>.

    <item>Rotate spatial displacements into time to fix ground vectors;
    exchange middle clusters in a four-cluster limit to prove commutativity.
    <hlink|<verbatim|Ground.inert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L185-L188>,
    <hlink|<verbatim|Ground.exchanges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L72-L93>.

    <item>Gelfand\URiesz gives a compact metrizable spectrum and the vacuum
    measure; separation of <math|\<Omega\>> gives full support.
    <hlink|<verbatim|Ground.resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L126-L140>.

    <item>For real labels, <math|D=M<around|(|w|)>-M*<around|(|\<vartheta\>*w|)>>
    is skew-adjoint. Positivity of variances of many bounded lattice
    approximants forces <math|-<around|\<\|\|\>|D*\<Omega\>|\<\|\|\>><rsup|2>\<geqslant\>0>;
    separation gives <math|D=0>. <hlink|<verbatim|Work.B05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L90-L115>.

    <item>Transfer positivity and Ward identities before applying characters.
    Corrected-field detector moments, full support and finite-dimensional
    injectivity preserve null spaces. <hlink|<verbatim|Work.B08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L206-L209>,
    <hlink|<verbatim|Work.B09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09.lean#L12-L15>,
    <hlink|<verbatim|Retain.lift_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Picks.lean#L128-L158>.

    <item>Dominated convergence makes <math|<around|\<\|\|\>|P<rsub|0><rsup|\<xi\>>\|b|\<rangle\>>\<\|\|\><rsup|2>-<around|\||S<rsup|\<xi\>><around|(|b|)>|\|><rsup|2>>
    have integral zero; one common countable total family gives uniqueness
    almost everywhere. <hlink|<verbatim|Cluster.exp_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L56-L86>,
    <hlink|<verbatim|Work.B14.universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L119-L143>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Phase reflection needs lattice variance positivity; null-space retention
  needs quantitative corrected-field estimates. Neither follows merely from
  the abstract character decomposition. No clustering, unique vacuum or
  spectral gap is assumed.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|t<around|(|x|)>>: last coordinate; <math|e<rsub|a>>: coordinate unit
  vector; <math|v\<in\>V<rsub|d>>: degree-<math|d> label. Separated means
  distinct points. <math|<around|\||w|\|>>: word length;
  <math|w\<cdot\>w<rprime|'>>: concatenation; <math|\<tau\><rsub|s>>: time
  translation; <math|\<Theta\>>: antilinear OS reflection with reversal;
  <math|\<vartheta\>>: linear time reflection. Positive words have positive
  times; <math|r>-buffered means mutual sup-distance <math|\<geqslant\>r> and
  times in <math|<around|[|r,d-r|]>>. <math|N<rsub|d><around|(|S|)>>
  comprises labels vanishing against every separated spectator family;
  <math|F<rsub|d><around|(|S|)>=V<rsub|d>/N<rsub|d><around|(|S|)>>. A table
  <math|S<rprime|'>> respects <math|S> when
  <math|N<rsub|d><around|(|S|)>\<subset\>N<rsub|d><around|(|S<rprime|'>|)>>
  for every <math|d>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Ultraviolet packing, bounded approximants and corrected-field estimates
  remain external inputs. With copy number and approximation index fixed, the
  variance argument takes cutoff limits before large translations, then sends
  copy number to infinity and approximation error to zero. Vacuum uniqueness
  for every phase belongs to V.3; selection here is noncanonical.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/V-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|IV.1|IV-1.tm>, <hlink|I.1|I-1.tm>,
  <hlink|V.2|V-2.tm>, <hlink|III.10|III-10.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.16|III-16.tm>, <hlink|VIII.1|VIII-1.tm>, <hlink|VI.1|VI-1.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>, <hlink|V.3|V-3.tm>,
  <hlink|V.2|V-2.tm>, <hlink|VII.4|VII-4.tm>, <hlink|VI.1|VI-1.tm>,
  <hlink|III.10|III-10.tm>, <hlink|III.6|III-6.tm>, <hlink|VII.2|VII-2.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 5,713 attributed lines; 635 line-counted
  declarations; 784 assigned declaration names. Of the assigned names, 776
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
    (in part, 17%) \V 11,420 lines.

    <item>work package <hlink|<verbatim|YM/Ground/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground>,
    with <hlink|<verbatim|YM/Phase/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase>
    \V 1,159 lines.

    <item>work package <hlink|<verbatim|YM/OS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS>
    \V 710 lines.

    <item>work package <hlink|<verbatim|YM/Work/B02/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02>
    \V 446 lines.

    <item>work package <hlink|<verbatim|YM/SNAG/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG>
    \V 417 lines.

    <item>work package <hlink|<verbatim|YM/Heat/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat>
    \V 411 lines.

    <item>work package <hlink|<verbatim|YM/Work/B09/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09>
    \V 375 lines.

    <item>work package <hlink|<verbatim|YM/Paley/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley>
    \V 273 lines.

    <item>work package <hlink|<verbatim|YM/Spectral/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spectral>
    \V 29 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Bid.Episode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L18-L27>

    <item><hlink|<verbatim|cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L33>

    <item><hlink|<verbatim|Episode.Sold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L38-L40>

    <item><hlink|<verbatim|Bid.episode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L96-L100>

    <item><hlink|<verbatim|Bid.Looms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Market.lean#L10-L36>

    <item><hlink|<verbatim|Bid.Bench>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L21-L24>

    <item><hlink|<verbatim|Bid.Seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L27>

    <item><hlink|<verbatim|Bid.depot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L41-L43>

    <item><hlink|<verbatim|Bid.Theme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L45-L56>

    <item><hlink|<verbatim|Bid.Garland>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L72-L80>

    <item><hlink|<verbatim|Bid.OneCap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98>

    <item><hlink|<verbatim|RankWidths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L138>

    <item><hlink|<verbatim|Cells.standard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22>

    <item><hlink|<verbatim|Columns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L38-L46>

    <item><hlink|<verbatim|Trials.Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L98-L118>

    <item><hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>

    <item><hlink|<verbatim|Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>

    <item><hlink|<verbatim|Rotation.Oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48>

    <item><hlink|<verbatim|StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>

    <item><hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>

    <item><hlink|<verbatim|EveryPhase.every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L146-L153>

    <item><hlink|<verbatim|PointLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L68>

    <item><hlink|<verbatim|Ground.overline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L111-L119>

    <item><hlink|<verbatim|Ground.almost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L128>

    <item><hlink|<verbatim|Ground.slim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L129-L143>

    <item><hlink|<verbatim|Ground.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L145-L162>

    <item><hlink|<verbatim|Steady>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L20>

    <item><hlink|<verbatim|Ground.pins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L38-L43>

    <item><hlink|<verbatim|Ground.at_any>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L71-L87>

    <item><hlink|<verbatim|Ground.M>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L89-L91>

    <item><hlink|<verbatim|Ground.overtops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L109-L133>

    <item><hlink|<verbatim|Ground.across_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L135-L150>

    <item><hlink|<verbatim|Ground.rays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L153-L183>

    <item><hlink|<verbatim|Ground.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L26-L39>

    <item><hlink|<verbatim|Ground.future_train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L41-L93>

    <item><hlink|<verbatim|Ground.same_up>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L45-L61>

    <item><hlink|<verbatim|Ground.gens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L95-L136>

    <item><hlink|<verbatim|Ground.attains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L115-L124>

    <item><hlink|<verbatim|Ground.tiny>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L34-L41>

    <item><hlink|<verbatim|Ground.supports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L43-L66>

    <item><hlink|<verbatim|Semigroup.roots_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Extend.lean#L42-L65>

    <item><hlink|<verbatim|Semigroup.pillar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Imaginary.lean#L33-L46>

    <item><hlink|<verbatim|Semigroup.edge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Imaginary.lean#L49>

    <item><hlink|<verbatim|Semigroup.altitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L75-L93>

    <item><hlink|<verbatim|MergeProof.Accent.grilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83>

    <item><hlink|<verbatim|MergeProof.Acme.glistens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Summit.lean#L17-L30>

    <item><hlink|<verbatim|Next.Phase.replicas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L119-L151>

    <item><hlink|<verbatim|Next.Phase.rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L55-L77>

    <item><hlink|<verbatim|Next.Phase.travel_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304>

    <item><hlink|<verbatim|Semigroup.ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Core.lean#L14>

    <item><hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>

    <item><hlink|<verbatim|OS.Semigroup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Flow.lean#L94-L106>

    <item><hlink|<verbatim|Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101-L104>

    <item><hlink|<verbatim|Spread.AllCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L111-L113>

    <item><hlink|<verbatim|Spread.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L153-L162>

    <item><hlink|<verbatim|Slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L19>

    <item><hlink|<verbatim|buffer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L21-L22>

    <item><hlink|<verbatim|OS.producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>

    <item><hlink|<verbatim|OS.QRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71>

    <item><hlink|<verbatim|OS.size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L95-L114>

    <item><hlink|<verbatim|Phase.reflects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L19-L20>

    <item><hlink|<verbatim|Phase.Scripts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L25-L32>

    <item><hlink|<verbatim|Phase.Vendor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L34-L40>

    <item><hlink|<verbatim|Phase.Stall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L42-L46>

    <item><hlink|<verbatim|Phase.Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L50-L54>

    <item><hlink|<verbatim|Paley.supports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley/Half.lean#L63-L113>

    <item><hlink|<verbatim|Paley.Air>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley/Line.lean#L31-L34>

    <item><hlink|<verbatim|Paley.heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley/Mapped.lean#L28-L57>

    <item><hlink|<verbatim|Pert.withFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31>

    <item><hlink|<verbatim|Grid.anti>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L33>

    <item><hlink|<verbatim|Grid.event>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L51-L54>

    <item><hlink|<verbatim|Grid.Covering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L63-L67>

    <item><hlink|<verbatim|Grid.Expects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L78-L79>

    <item><hlink|<verbatim|Retain.pair_near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L100-L117>

    <item><hlink|<verbatim|Retain.Tall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L21>

    <item><hlink|<verbatim|Retain.bit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L22-L58>

    <item><hlink|<verbatim|Retain.\<Delta\>one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L73>

    <item><hlink|<verbatim|Retain.\<Delta\>two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L75-L77>

    <item><hlink|<verbatim|Retain.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L81-L83>

    <item><hlink|<verbatim|OS.Selection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127-L134>

    <item><hlink|<verbatim|Selection.Certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L136-L148>

    <item><hlink|<verbatim|omega0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L32-L33>

    <item><hlink|<verbatim|Chamber.UniqueHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L35>

    <item><hlink|<verbatim|atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L46>

    <item><hlink|<verbatim|Spread.algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L54>

    <item><hlink|<verbatim|Spread.insertValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L59-L63>

    <item><hlink|<verbatim|Spread.Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L72>

    <item><hlink|<verbatim|Resolution.Out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L78-L86>

    <item><hlink|<verbatim|Resolution.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L89-L91>

    <item><hlink|<verbatim|Retain.result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Picks.lean#L62-L108>

    <item><hlink|<verbatim|Phase/Square.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Square.lean>

    <item><hlink|<verbatim|Grid.horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Square.lean#L38-L50>

    <item><hlink|<verbatim|Grid.estimates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Square.lean#L56-L63>

    <item><hlink|<verbatim|Cluster.selects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L111-L114>

    <item><hlink|<verbatim|Cluster.fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L31-L36>

    <item><hlink|<verbatim|Cluster.champ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L41-L47>

    <item><hlink|<verbatim|Cluster.horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L88-L89>

    <item><hlink|<verbatim|Spec.Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>

    <item><hlink|<verbatim|Spec.Materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47>

    <item><hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>

    <item><hlink|<verbatim|Spectral.PVM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spectral/Projection.lean#L19-L29>

    <item><hlink|<verbatim|B02/Slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02/Slab.lean>

    <item><hlink|<verbatim|B05.real_depot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L48-L88>

    <item><hlink|<verbatim|Work/B06.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B06.lean>

    <item><hlink|<verbatim|B07.state_smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L108-L117>

    <item><hlink|<verbatim|Work.B07.state>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L12-L13>

    <item><hlink|<verbatim|B07.state_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L83-L106>

    <item><hlink|<verbatim|B08.char_nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L27-L33>

    <item><hlink|<verbatim|B09.has_evaluator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09/Core.lean#L114-L129>

    <item><hlink|<verbatim|B09.Evaluates.flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09/Shell.lean#L147-L215>

    <item><hlink|<verbatim|B10.capped_tags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L72-L90>

    <item><hlink|<verbatim|B11.phase_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B11.lean#L60-L73>

    <item><hlink|<verbatim|B11.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B11.lean#L75-L89>

    <item><hlink|<verbatim|Work.B12.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B12.lean#L81-L92>

    <item><hlink|<verbatim|B13.buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B13.lean#L51-L72>

    <item><hlink|<verbatim|Work.B14.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L145-L148>

    <item><hlink|<verbatim|Work.B15.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B15.lean#L108-L118>

    <item><hlink|<verbatim|B16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B16.lean#L185-L190>

    <item><hlink|<verbatim|B17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B17.lean#L71-L90>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-v-1-1>

  <\itemize-minus>
    <item><strong|K-V.1.1> <hlink|<verbatim|norm_remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02/Analysis.lean#L134-L153>
    <em|(numbered result)> \V A mean-value estimate bounds the remainder
    f(y)-f(x)-B(y-x) by C\|y-x\|, with constants uniform in observing
    vectors.
  </itemize-minus>

  <label|k-v-1-2>

  <\itemize-minus>
    <item><strong|K-V.1.2> <hlink|<verbatim|arcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L138-L148>
    <em|(key result)> \V Multi-cluster expectations converge to the vacuum
    matrix element of a product of operators, with eventually distinct
    cluster points.
  </itemize-minus>

  <label|k-v-1-3>

  <\itemize-minus>
    <item><strong|K-V.1.3> <hlink|<verbatim|universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L119-L143>
    <em|(key result)> \V There is a single countable list of test addresses
    whose images under any symmetric smooth Schwinger space span a dense
    subspace, independent of the space.
  </itemize-minus>

  <label|k-v-1-4>

  <\itemize-minus>
    <item><strong|K-V.1.4> <hlink|<verbatim|smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L193-L203>
    <em|(key result)> \V Point Gram bounds together with basic, real-spin and
    smoothness conditions imply reflection positivity for arbitrary smeared
    joint tests.
  </itemize-minus>

  <label|k-v-1-5>

  <\itemize-minus>
    <item><strong|K-V.1.5> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>
    <em|(key result)> \V The hierarchy requirements hold with only a respects
    condition, not equality of null spaces.
  </itemize-minus>

  <label|k-v-1-6>

  <\itemize-minus>
    <item><strong|K-V.1.6> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B03.lean#L405-L415>
    <em|(key result)> \V For separated words, one can shift into a slab
    locally and compress on a fixed subspace, yielding the required local
    realization.
  </itemize-minus>

  <label|k-v-1-7>

  <\itemize-minus>
    <item><strong|K-V.1.7> <hlink|<verbatim|plant_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02/Slab.lean#L307-L341>
    <em|(numbered result)> \V Matrix elements of the spread against any pair
    of plants are differentiable with explicit derivative.
  </itemize-minus>

  <label|k-v-1-8>

  <\itemize-minus>
    <item><strong|K-V.1.8> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>
    <em|(key result)> \V The given spread satisfies operator-norm laws, with
    differentiable matrix elements and uniform remainder control.
  </itemize-minus>

  <label|k-v-1-9>

  <\itemize-minus>
    <item><strong|K-V.1.9> <hlink|<verbatim|realization>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107>
    <em|(key result)> \V Given a hierarchy satisfying the hypotheses, a
    coordinate Osterwalder\USchrader semigroup chamber exists in each axis.
  </itemize-minus>

  <label|k-v-1-10>

  <\itemize-minus>
    <item><strong|K-V.1.10> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B06.lean#L238-L242>
    <em|(key result)> \V The bid B06 holds: individual invariance of M with
    phase reflection as input.
  </itemize-minus>

  <label|k-v-1-11>

  <\itemize-minus>
    <item><strong|K-V.1.11> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B04.lean#L168-L177>
    <em|(key result)> \V The flash-pair grid passage statement (bid B04)
    holds.
  </itemize-minus>

  <label|k-v-1-12>

  <\itemize-minus>
    <item><strong|K-V.1.12> <hlink|<verbatim|P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L50>
    <em|(key result)> \V Defines the projection-valued measure giving the
    full SNAG spectral decomposition of the group representation.
  </itemize-minus>

  <label|k-v-1-13>

  <\itemize-minus>
    <item><strong|K-V.1.13> <hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L52-L119>
    <em|(main result)> \V The spectrum of the relevant commuting family is
    total, i.e. its spectral support exhausts the whole space (a SNAG-type
    theorem).
  </itemize-minus>

  <label|k-v-1-14>

  <\itemize-minus>
    <item><strong|K-V.1.14> <hlink|<verbatim|heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L108-L114>
    <em|(numbered result)> \V The mixed displaced matrix element at complex
    parameter in the upper half plane equals an integral of a plane wave
    against the damped spectral measure.
  </itemize-minus>

  <label|k-v-1-15>

  <\itemize-minus>
    <item><strong|K-V.1.15> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09.lean#L12-L15>
    <em|(key result)> \V The bid B09 holds: transfer to every character with
    the whole-word values.
  </itemize-minus>

  <label|k-v-1-16>

  <\itemize-minus>
    <item><strong|K-V.1.16> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L90-L115>
    <em|(key result)> \V The B05 requirement holds: the packaged statement
    about the reconstructed correlation objects at the synchronized order is
    established.
  </itemize-minus>

  <label|k-v-1-17>

  <\itemize-minus>
    <item><strong|K-V.1.17> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B18.lean#L130-L133>
    <em|(key result)> \V The B18 requirement holds: episode statements for
    the corrected detectors are established.
  </itemize-minus>

  <label|k-v-1-18>

  <\itemize-minus>
    <item><strong|K-V.1.18> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L119-L124>
    <em|(key result)> \V The bid B07 holds, a reflection-related invariance
    statement on tables of words.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit|IV-1.tm>|<hlink|Part
  V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Detailed
  notes|../notes/V-1.tm>|<hlink|V.2 Osterwalder-Schrader reconstruction of a
  Wightman theory \<rightarrow\>|V-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|V.1. Decomposition of the limit into phases \U
    Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|4>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|10>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-v-1-1|<tuple|10|10>>
    <associate|k-v-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-v-1-17|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-v-1-18|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-v-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-v-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-v-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-v-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|key-statements|<tuple|10|10>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|7|4>>
    <associate|unit-inputs|<tuple|1|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|4>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|v1-decomposition-of-the-limit-into-phases|<tuple|?|1>>
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