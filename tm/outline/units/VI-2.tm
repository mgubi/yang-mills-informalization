<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.1 Ward identities, the rotation action
  and the conserved stress tensor|VI-1.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Detailed
  notes|../notes/VI-2.tm>|<hlink|VII.1 Free Maxwell fields for the
  short-distance comparison \<rightarrow\>|VII-1.tm>>

  <ym-title|VI.2. The free Maxwell stress tensor and the local Ward
  charge><label|vi2-the-free-maxwell-stress-tensor-and-the-local-ward-charge>

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

  <em|Part VI \V Symmetry: stress tensor and Ward identities.>

  Builds the free Maxwell stress tensor and uses comparison data to normalize
  the interacting Ward identities.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VI-2.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VI.1|VI-1.tm> <ym-middot> <hlink|Next: VII.1
  \<rightarrow\>|VII-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VI, symmetry: stress tensor and Ward identities.
    <strong|Lean:> <hlink|<verbatim|YM/Next/MAXWELL>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL>,
    <hlink|<verbatim|YM/UVNext/FREE_STRESS_CERTIFICATE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE>,
    <hlink|<verbatim|YM/Next/UV_STRESS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS>,
    <hlink|<verbatim|YM/Pert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert>.
    <strong|Size:> 14,179 lines in the source allocation (Maxwell 8.2k,
    free-stress classification 3.1k, UV stress 2.6k, Pert 0.2k).
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Throughout, <math|G> satisfies I.1, <math|\<frak-g\>> is its Lie algebra,
  spacetime indices run from zero to three, and <math|c> indexes an
  orthonormal colour basis. A Maxwell wave is a smooth
  <math|\<frak-g\>>-valued two-form satisfying <math|d*f=0> and
  <math|<big|sum><rsub|a>\<partial\><rsub|a>*f<rsub|a*b>=0>. The algebra
  <math|\<cal-W\>> consists of complex polynomials in homogeneous on-shell
  Taylor coefficients of order <math|j>, weighted <math|j+2>;
  <math|\<cal-P\><rsub|d>> is its <math|<math-up|Ad><around|(|G|)>>-invariant
  sector of weight at most <math|d>. Wick correlations contract only between
  sites, using the curl\Ucurl of <math|G<rsub|0><around|(|x|)>=<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)><rsup|-1>>.
  Set

  <\equation*>
    T<rsup|<math-up|free>><rsub|a*b>=<big|sum><rsub|c,i>F<rsup|c><rsub|a*i>*F<rsup|c><rsub|b*i>-<tfrac|1|4>\<delta\><rsub|a*b>*<big|sum><rsub|c,i,k>F<rsup|c><rsub|i*k>*F<rsup|c><rsub|i*k>.
  </equation*>

  Let <math|\<Theta\>> be its bilinear polarization, normalized by
  <math|\<Theta\><around|(|f,f|)>=2*T<rsup|<math-up|free>><around|(|f|)>>;
  <math|j<rsup|v><rsub|a>=<big|sum><rsub|b>v<rsub|b>*\<Theta\><rsub|a*b>> and
  <math|\<Phi\><rsub|\<chi\>><around|(|j|)>=-<big|sum><rsub|a><big|int>\<partial\><rsub|a>*\<chi\>*<space|0.17em>j<rsub|a>>.

  <strong|Proposition VI.2.1 (free table).> For every register <math|L> and
  <math|d\<geqslant\>0>, substitution gives a complex linear isomorphism
  <math|\<iota\><rsub|d>:\<cal-F\><rsup|<math-up|free>><rsub|d>\<to\>\<cal-P\><rsub|d>>;
  a label is null exactly when its polynomial vanishes on every on-shell
  Taylor tower. Correlations are Wick moments. The table satisfies IV.1's
  Euclidean hierarchy, including point and smeared reflection positivity, and
  is real-analytic at distinct points. Each fixed correlation derivative is
  bounded by <math|C*r<rsup|-A>> for mutual sup-distances at least <math|r>,
  <math|0\<less\>r\<leqslant\>1>, with <math|A,C\<geqslant\>0>. Taylor
  differentiation gives <math|\<partial\><rsup|<math-up|free>>:\<cal-F\><rsub|d><rsup|<math-up|free>>\<to\>\<cal-F\><rsub|d+1><rsup|<math-up|free>>>
  with inclusion, derivative and orientation laws. The <math|O<around|(|4|)>>
  action and generators <math|\<rho\>> satisfy VI.1's rotation laws and
  preserve correlations. The stress is symmetric, real, traceless, centred
  and conserved in degree five. Simplicity is unnecessary. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114>,
  <hlink|<verbatim|fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L33-L35>,
  <hlink|<verbatim|realStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L176-L179>.

  <strong|Proposition VI.2.2 (local charge).> Let <math|U> be open,
  <math|x\<in\>U>, <math|f> a Maxwell wave on <math|U>, <math|v> a smooth
  conformal Killing field on <math|\<bbb-R\><rsup|4>>, and real
  <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>><around|(|U|)>> equal one near
  <math|x>. Put <math|f<rsup|p,x><around|(|y|)>=<around|\<langle\>|p<around|(|F|)><around|(|x|)>*F<around|(|y|)>|\<rangle\>><rsub|0>>.
  For each component probe <math|p=F<rsup|c><rsub|i*l>>,

  <\equation*>
    \<Phi\><rsub|\<chi\>><around|(|j<rsup|v><around|(|f<rsup|p,x>,f|)>|)>=-p*<around|(|\<cal-L\><rsub|v>*f|)><around|(|x|)>,<space|2em>\<cal-L\><rsub|v>*f=d*\<iota\><rsub|v>*f.
  </equation*>

  If <math|\<cal-L\><rsub|v>*f> is a Maxwell wave, this holds for every probe
  of every order <math|j\<geqslant\>0>. Translations, centred rotations and
  dilation give respectively <math|-\<partial\><rsub|a><around|[|p<around|(|f|)>|]>>,
  <math|-<around|(|\<omega\>\<cdot\>p|)><around|(|f|)>> and
  <math|-<around|(|j+2|)>*p<around|(|f|)>> at <math|x>. Flux vanishes for two
  Maxwell waves near <math|<math-up|supp><space|0.17em>\<chi\>>, and for two
  generated fields with source <math|x> when <math|v> is homogeneous about
  <math|x> of degree zero or one. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Maxwell.Free.local_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156>,
  <hlink|<verbatim|jet_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186>,
  <hlink|<verbatim|two_flux_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128>.

  <strong|Proposition VI.2.3 (polynomial Ward identities).> For
  <math|n\<geqslant\>0>, distinct <math|x<rsub|0>,\<ldots\>,x<rsub|n>>,
  <math|p<rsub|i>\<in\>\<cal-W\>>, and real
  <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>>> equal one near
  <math|x<rsub|0>> with spectators outside its support,

  <\equation*>
    -<big|sum><rsub|a,b><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*v<rsub|b><around|(|y|)>*<around|\<langle\>|T<rsup|<math-up|free>><rsub|a*b><around|(|y|)>*<big|prod><rsub|i>p<rsub|i><around|(|x<rsub|i>|)>|\<rangle\>><rsub|0>*<space|0.17em>d*y=-<around|\<langle\>|<around|(|D*p<rsub|0>|)><around|(|x<rsub|0>|)>*<big|prod><rsub|i\<gtr\>0>p<rsub|i><around|(|x<rsub|i>|)>|\<rangle\>><rsub|0>.
  </equation*>

  Here <math|<around|(|v,D|)>> is <math|<around|(|e<rsub|a>,\<partial\><rsub|a>|)>>,
  <math|<around|(|\<omega\>*<around|(|y-x<rsub|0>|)>,\<rho\><around|(|\<omega\>|)>|)>>
  for <math|\<omega\>\<in\><with|math-font|Euler|s*o><around|(|4|)>>, or
  <math|<around|(|y-x<rsub|0>,\<varepsilon\>|)>>, where <math|\<varepsilon\>>
  multiplies monomials by weight. Thus <math|\<tau\>*T<rsup|<math-up|free>>>
  has translation/rotation rows <math|-\<tau\>*\<partial\><rsup|<math-up|free>>,-\<tau\>*\<rho\>>
  for every real <math|\<tau\>>; normalization to
  <math|+\<partial\><rsup|<math-up|free>>> gives
  <math|-T<rsup|<math-up|free>>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Maxwell.Free.moment_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200>.

  <strong|Proposition VI.2.4 (free stress line).> Suppose <math|G> is simple
  and <math|W> satisfies the free derivative and orientation laws. Its
  derivative maps are <math|\<partial\><rsup|<math-up|free>>>. Let
  <math|\<cal-Z\>> be the real space of centred symmetric real
  signed-covariant degree-four tensors, and <math|\<cal-V\>> the real
  signed-covariant degree-five vectors. Then

  <\equation*>
    <math-up|div>:\<cal-Z\>\<twoheadrightarrow\>\<cal-V\>,<space|1em>dim<rsub|\<bbb-R\>>
    \<cal-Z\>=3,<space|1em>dim<rsub|\<bbb-R\>> \<cal-V\>=2,<space|1em>ker
    <math-up|div>=\<bbb-R\>*T<rsup|<math-up|free>>.
  </equation*>

  Every lighthouse with this plan and stress
  <math|\<tau\>*T<rsup|<math-up|free>>>, <math|\<tau\>\<ne\>0>, satisfies
  (FD). <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L125-L132>.

  <strong|Proposition VI.2.5 (Maxwell data).> For simple <math|G>, every
  Wilson family <math|C> and real <math|\<tau\>\<ne\>0>,
  <math|<around|(|\<partial\><rsup|<math-up|free>>,R,\<tau\>*T<rsup|<math-up|free>>,-\<tau\>|)>>
  satisfies all lighthouse laws and extends to Maxwell data for <math|C>. The
  derivative is nonzero in degree four. For all sufficiently large <math|d>,
  finitely many derivatives of Ward sums at distinct collinear configurations
  perpendicular to the component axis detect exactly
  <math|\<bbb-R\>*\<partial\><rsup|<math-up|free>>> among complex linear
  vector maps <math|\<cal-F\><rsub|d><rsup|<math-up|free>>\<to\>\<cal-F\><rsub|d+1><rsup|<math-up|free>>>
  that kill the unit, are real, signed-covariant and preserve every
  lower-degree image with degree raised by one.

  The datum includes the hierarchy, VI.1's Casimir data, and compatible
  degreewise continuous proper orthochronous Lorentz representations,
  agreeing with spatial rotations, commuting with time-reflected conjugation
  and having boost generator <math|-i*\<rho\>>. For every
  <math|d\<geqslant\>4>, any alternating real-bilinear family of complex
  linear endomorphisms of <math|\<cal-F\><rsub|d><rsup|<math-up|free>>>
  <math|T<around|(|u,v|)>>, <math|u,v\<in\><with|math-font|Euler|s*o><around|(|4|)>>,
  that is real, equivariant under orientation-preserving signed permutations,
  kills the unit and preserves lower-degree images, vanishes if all its Ward
  sums vanish for every <math|u,v>, every arity <math|m\<geqslant\>0>, every
  degree-<math|d> field tuple and every distinct-point configuration. Every
  Maxwell datum can retain its plan, rotations, hierarchy and Lorentz
  representation while acquiring stress <math|\<tau\>*T<rsup|<math-up|free>>>,
  full stress rotation covariance and (FD). Its Ward constant is necessarily
  <math|-\<tau\>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>,
  <hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>,
  <hlink|<verbatim|required>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L158-L161>.

  <strong|Proposition VI.2.6 (strict positivity).> For every axis <math|a>,
  <math|x<rsub|a>\<gtr\>0> and nonzero <math|p\<in\>\<cal-W\>>,
  <math|<around|\<langle\>|<around|(|\<vartheta\><rsub|a>*p|)>*<around|(|\<theta\><rsub|a>*x|)>*p<around|(|x|)>|\<rangle\>><rsub|0>\<gtr\>0>.
  Every finite set of distinct coordinate probes has positive-definite
  reflected propagator Gram matrix there. Finite families of
  positive-half-space words, with distinct sites within each word, satisfy
  reflection positivity. For every <math|d\<geqslant\>0>, a polynomial in
  <math|\<cal-P\><rsub|d>> annihilated by all distinct-point spectator tests
  from <math|\<cal-P\><rsub|d>> is zero. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|detects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110>,
  <hlink|<verbatim|ghosts_out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L80-L99>.

  <strong|Proposition VI.2.7 (limit stress).> Assume II.2's Wilson
  construction conditions, ordered smeared convergence and generic point
  limits along <math|F> to a table <math|S> with Euclidean hierarchy
  <math|H>, an inclusion/derivative plan <math|W> on <math|S>, a free
  hierarchy <math|H<rsub|0>>, and a lighthouse with inclusion, derivative,
  orientation and (FD) laws. Assume VI.2.8's station property and
  <math|dim<rsub|\<bbb-C\>>\<cal-F\><rsub|d><rsup|S>\<leqslant\>dim<rsub|\<bbb-C\>>\<cal-F\><rsub|d><rsup|<math-up|free>>>
  for all <math|d\<geqslant\>0>. There exists an approaching stable scaling
  <math|X=<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k,d>|)>>, initially with
  <math|\<xi\><rsub|k>=1>. For every such scaling, interacting divergence
  <math|\<cal-Z\><rsup|S>\<to\>\<cal-V\><rsup|S>>, defined as in VI.2.4, is
  onto with one-dimensional real kernel. There exist
  <math|0\<ne\>J\<in\>\<cal-Z\><rsup|S>> with zero divergence and an
  approaching stable refinement <math|Y> by subsequence and change of
  <math|\<xi\><rsub|k>> such that

  <\equation*>
    \<xi\><rsub|k><rsup|-1>*U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|a*b>|)>\<to\>T<rsub|0,a*b>.
  </equation*>

  For every finite arity/degree/derivative bound and <math|R\<geqslant\>1>,
  tails give tracks intertwining symmetries, units and inclusions through
  degree <math|max <around|(|d,4|)>>, satisfying the stress limit above, with
  correlation derivatives converging uniformly on <math|K<rsub|R,n>> for each
  fixed tuple; tails may depend on tuple and tolerance. Thus <math|J>
  satisfies VI.1's comparison law. <em|Status:> conditional theorem.
  <em|Lean:> <hlink|<verbatim|Stations.equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>,
  <hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>.

  <strong|Proposition VI.2.8 (stations).> Fix the extraction data of VI.2.7.
  A depth-<math|D> station consists of <math|r\<gtr\>0> and complex linear
  lattice lifts <math|A:\<cal-F\><rsub|d><rsup|<math-up|free>>\<to\><math-up|Ref><rsub|d>>,
  <math|d\<leqslant\>D>. Admissibility requires eventual uniform boundedness,
  reality, signed covariance and preservation of the degree-zero unit, and,
  for every tuple of arity <math|n\<leqslant\>n<rsub|max>> and degrees at
  most <math|D>, smooth complex test supported in <math|K<rsub|R,n>>,
  <math|M\<gtr\>0> with <math|<around|\<\|\|\>|t|\<\|\|\>><rsub|\<infty\>>\<leqslant\>M>,
  and <math|\<eta\>\<gtr\>0>, eventual lattice/free smeared discrepancy along
  the ordered cutoff tails at most <math|\<varepsilon\>*M*<big|prod><rsub|i><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>+\<eta\>>,
  using test <math|r<rsup|-4*n>*t*<around|(|\<cdummy\>/r|)>>. An admissible
  station yields complex linear continuum maps with the same symmetries and
  estimate without <math|\<eta\>>:

  <\equation*>
    <around*|\||<big|int>t<around|(|y|)>*<around*|[|<around|\<langle\>|<big|prod><rsub|i>U*v<rsub|i>*<around|(|r*y<rsub|i>|)>|\<rangle\>><rsup|S>-<around|\<langle\>|<big|prod><rsub|i>v<rsub|i><around|(|y<rsub|i>|)>|\<rangle\>><rsub|0>|]>*d*y|\|>\<leqslant\>\<varepsilon\>*M*<big|prod><rsub|i><around|\<\|\|\>|v<rsub|i>|\<\|\|\>>.
  </equation*>

  The cutoff tail may depend on the tuple, test, <math|M> and <math|\<eta\>>.
  The station property requires these for every
  <math|D,n<rsub|max>\<geqslant\>0>, <math|R\<geqslant\>1> and
  <math|\<varepsilon\>,\<delta\>\<gtr\>0>, with
  <math|r\<leqslant\>\<delta\>>. Balanced grid, strip and finite-difference
  estimates of detailed Lemma VI.2.s, for all finite bounds, imply it.
  <em|Status:> definitions and conditional theorems. <em|Lean:>
  <hlink|<verbatim|Station.Admissible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L89-L97>,
  <hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>,
  <hlink|<verbatim|realizes_stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L134-L140>.

  <strong|Proposition VI.2.9 (normalized limit).> Let <math|C> be a Wilson
  family, <math|F> an extraction order, <math|S> a table with plan <math|W>,
  <math|M> a Maxwell datum with lighthouse Ward constant
  <math|\<kappa\>\<ne\>0>, and <math|I=<around|(|J<rsub|0>,p<rsup|I>,Y<rsup|I>|)>>.
  Assume VIII.1's ultraviolet-data conditions for these objects. Assume
  <math|W>'s inclusion/derivative laws, <math|0\<ne\>J<rsub|0>\<in\>\<cal-Z\><rsup|S>>,
  (FD), and an approaching stable scaling with
  <math|\<xi\><rsub|k><rsup|-1>*U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|0,a*b>|)>\<to\>T<rsub|0,a*b>>.
  Every symmetric real conserved signed-covariant
  <math|J\<in\><around|(|\<cal-F\><rsub|4><rsup|S>|)><rsup|4\<times\>4>>
  satisfying translation Ward rows <math|W> and some rotation Ward rows obeys

  <\equation*>
    U<rsub|k,4><rsup|-1>*<around|(|r<rsub|k><rsup|4>*J<rsub|a*b>|)>\<to\>\<kappa\><rsup|-1>*T<rsub|0,a*b>.
  </equation*>

  For every finite free-field tuple, any mixture of transported fields and
  rescaled stress slots converges with every derivative uniformly on compact
  distinct-point sets to the free correlation with every stress slot replaced
  by <math|\<kappa\><rsup|-1>*T<rsub|0>>; the interacting insertions are
  evaluated at <math|r<rsub|k>*y<rsub|i>>. Canonically <math|\<kappa\>=-1>,
  so each stress slot tends to <math|-T<rsup|<math-up|free>>>. <em|Status:>
  conditional theorem. <em|Lean:> <hlink|<verbatim|Pert.meter_physical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144>,
  <hlink|<verbatim|Pert.mixed_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>III.16: Taylor spaces and Wick moments; IV.1: quotient fields,
    extraction and dimension bound.

    <item>V.1: smeared positivity and derivative bounds; VI.1: Ward,
    rotation, track and Casimir laws.

    <item>III.10: Maxwell assembly; III.11: balanced comparison and shell
    estimates.

    <item>VII.5: normalization ratios; VIII.1: data conditions.

    <item>Standard results: Wick/Fock factorization, Gaussian reflection
    positivity, Cartan's formula, approximate identities, rank\Unullity,
    compactness and Fourier inversion.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Strict reflected positivity identifies quotient fields with on-shell
  polynomials. Local flux gives the Ward identities; finite-dimensional
  classification gives the conserved stress line. Stations produce comparison
  isomorphisms. Transporting derivatives and recentering tensors transfers
  divergence rank to the interacting table. Conservation determines its
  stress line, and translation Ward identities fix its normalization.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Factor reflected Wick pairings through a positive-definite Gram
    matrix and the Fock inner product; invertibility excludes residual
    polynomials. <hlink|<verbatim|core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L44-L92>.

    <item>Smooth the Green kernel, integrate by parts twice and remove the
    approximate identity to obtain <math|-\<cal-L\><rsub|v>*f>; differentiate
    the source for higher probes. <hlink|<verbatim|local_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156>,
    <hlink|<verbatim|jet_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186>.

    <item>Split Wick contractions by the destinations of the stress legs.
    Homogeneity and source-free conservation cancel the unmixed terms.
    <hlink|<verbatim|fees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L115-L172>.

    <item>Classify three tensors and at most two vectors; two independent
    propagator tests give divergence rank two.
    <hlink|<verbatim|rank_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L43-L47>.

    <item>Bounded-degree spectators detect arbitrary weights; dilation and
    inversion eliminate derivative candidates after subtracting a scalar
    derivative. Rotational Ward identities and quarter turns eliminate
    alternating internal rows, completing Maxwell data with the Lorentz and
    Casimir inputs. <hlink|<verbatim|scanner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132>,
    <hlink|<verbatim|erasing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118>.

    <item>Balanced strip-volume and grid-interpolation errors give stations.
    Compactness of bounded lifts and ordered smeared convergence produce
    continuum panels. <hlink|<verbatim|cutoff_balance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L102-L129>,
    <hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>.

    <item>Correct station panels to preserve inclusions; separating tests
    give injectivity, and the dimension bound gives isomorphisms.
    <hlink|<verbatim|Stations.equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>.

    <item>Integration by parts gives <math|r<rsub|k>*U<rsub|k,d+1><rsup|-1>*W<rsub|a>*U<rsub|k,d>\<to\>\<partial\><rsub|a><rsup|<math-up|free>>>;
    gradient closure and Fourier inversion give smooth convergence.
    Recentring then permits rank transfer.
    <hlink|<verbatim|travels_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L183-L196>,
    <hlink|<verbatim|differential_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195>.

    <item>Compactness on a normalized stress sphere selects a conserved
    limit; (FD) identifies it with <math|T<rsub|0>> after one sign choice.
    Writing <math|c*<around|(|J-<around|\<langle\>|J|\<rangle\>>*\<b-1\>|)>=J<rsub|0>>,
    comparing Ward rows gives <math|c/\<xi\><rsub|k>\<to\>\<kappa\>> and the
    physical limit. <hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>,
    <hlink|<verbatim|meter_physical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L118-L144>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Exact isomorphisms and recentering are needed for rank transfer.
  Bounded-degree detection and alternating Ward-row rigidity require more
  than positivity. Conservation fixes a line; Ward normalization fixes its
  scale and sign.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<theta\><rsub|a>,\<vartheta\><rsub|a>>: reflection in
  <math|y<rsub|a>=0> and reflected conjugation. A probe of order <math|j> is
  a real linear functional on the homogeneous order-<math|j> on-shell Taylor
  space. <math|\<cal-F\><rsub|d><rsup|S>>: degree-<math|d> fields.
  <math|T<rsub|0>,\<kappa\>>: lighthouse stress and Ward constant.
  <math|R,\<rho\>>: free rotations and their generators.
  <math|<math-up|div>J=<big|sum><rsub|a>W<rsub|a>*J<rsub|a*b>>. (FD): onto
  divergence, one-dimensional kernel, nonzero centred conserved stress.
  <math|K<rsub|R,n>>: configurations of total norm at most <math|R> and
  mutual sup-distance at least <math|R<rsup|-1>>. Scaling: isomorphisms
  <math|U<rsub|k,d>>, strictly decreasing <math|r<rsub|k>\<to\>0>,
  <math|\<xi\><rsub|k>\<gtr\>0>; approaching means, for each fixed field
  tuple, the rescaled interacting/free correlation difference tends to zero
  uniformly against smooth complex tests supported in any fixed compact
  subset of <math|<math-up|Conf><rsub|n>> with sup norm at most one;
  <math|<math-up|Conf><rsub|n>> denotes distinct-point configurations; stable
  means eventual compatibility with reality, signed symmetries, units and
  inclusions.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Subsidiary Gram/Fock, invariant-spanning, propagator-table, bounded-order
  detection, averaging, Lorentz and Casimir proofs remain inputs. III.11 must
  supply balanced estimates and shell bounds; underlying track Ward estimates
  also remain inputs. Lean's mixed-correlation theorem specializes to VI.1's
  assembled stress.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VI-2.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|IV.1|IV-1.tm>, <hlink|VI.1|VI-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|VIII.1|VIII-1.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|III.11|III-11.tm>, <hlink|VII.3|VII-3.tm>, <hlink|VII.6|VII-6.tm>,
  <hlink|VII.1|VII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 14,179 attributed lines; 1,690 line-counted
  declarations; 1,944 assigned declaration names. Of the assigned names,
  1,922 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Next/MAXWELL/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL>
    \V 8,208 lines.

    <item>work package <hlink|<verbatim|YM/UVNext/FREE_STRESS_CERTIFICATE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE>
    \V 3,148 lines.

    <item>work package <hlink|<verbatim|YM/Next/UV_STRESS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS>
    \V 2,602 lines.

    <item>work package <hlink|<verbatim|YM/Pert/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert>
    \V 221 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|YM.Bid.masts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L24-L29>

    <item><hlink|<verbatim|Climb.Lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29>

    <item><hlink|<verbatim|Lighthouse.Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>

    <item><hlink|<verbatim|ActLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51>

    <item><hlink|<verbatim|Climb.Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>

    <item><hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>

    <item><hlink|<verbatim|Scaling.meter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L54-L55>

    <item><hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>

    <item><hlink|<verbatim|shellSector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64>

    <item><hlink|<verbatim|Table.StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>

    <item><hlink|<verbatim|YM.Extra.WeakScaling.flux_nontrivial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70>

    <item><hlink|<verbatim|YM.Extra.WeakScaling.tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>

    <item><hlink|<verbatim|WickPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24>

    <item><hlink|<verbatim|YM.Maxwell.observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>

    <item><hlink|<verbatim|Shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44>

    <item><hlink|<verbatim|YM.Maxwell.Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>

    <item><hlink|<verbatim|MergeProof.East.CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>

    <item><hlink|<verbatim|YM.MergeProof.Acme.readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>

    <item><hlink|<verbatim|YM.MergeProof.Acme.emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>

    <item><hlink|<verbatim|radial_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L220-L247>

    <item><hlink|<verbatim|drift_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L249-L255>

    <item><hlink|<verbatim|sector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Algebra.lean#L108-L116>

    <item><hlink|<verbatim|angular_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Angular.lean#L181-L195>

    <item><hlink|<verbatim|complete_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L29-L46>

    <item><hlink|<verbatim|gear_laws>, <verbatim|gear_motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L54-L61>

    <item><hlink|<verbatim|beacon_signal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Beacon.lean#L74-L136>

    <item><hlink|<verbatim|born>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Born.lean#L51-L70>

    <item><hlink|<verbatim|cap_moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L69-L75>

    <item><hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L90-L113>

    <item><hlink|<verbatim|Contact.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L56-L98>

    <item><hlink|<verbatim|Killing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L140-L143>

    <item><hlink|<verbatim|current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L145>

    <item><hlink|<verbatim|current_div>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L151-L181>

    <item><hlink|<verbatim|exportFlux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L184-L185>

    <item><hlink|<verbatim|singleFlux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L187>

    <item><hlink|<verbatim|sourcefree_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L239-L250>

    <item><hlink|<verbatim|cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Current.lean#L31-L33>

    <item><hlink|<verbatim|low_motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Depth.lean#L162-L181>

    <item><hlink|<verbatim|rewired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Derives.lean#L27-L28>

    <item><hlink|<verbatim|voyage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L173-L177>

    <item><hlink|<verbatim|launched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Descent.lean#L179-L181>

    <item><hlink|<verbatim|matrix_meal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L66-L87>

    <item><hlink|<verbatim|pulse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L101-L102>

    <item><hlink|<verbatim|K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L123>

    <item><hlink|<verbatim|sample>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Kernel.lean#L22-L23>

    <item><hlink|<verbatim|Maxwell.Free.herald>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L29-L34>

    <item><hlink|<verbatim|regulated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L147-L148>

    <item><hlink|<verbatim|variation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Regulator.lean#L49>

    <item><hlink|<verbatim|finite_lenses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L92-L123>

    <item><hlink|<verbatim|silence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L40-L42>

    <item><hlink|<verbatim|ghost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L65-L76>

    <item><hlink|<verbatim|polStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L24-L25>

    <item><hlink|<verbatim|pol_conservation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stress.lean#L76-L117>

    <item><hlink|<verbatim|cabinets_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Studio.lean#L141-L158>

    <item><hlink|<verbatim|gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L153-L170>

    <item><hlink|<verbatim|original>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L172>

    <item><hlink|<verbatim|address>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L39>

    <item><hlink|<verbatim|scheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L80-L83>

    <item><hlink|<verbatim|Motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L24-L28>

    <item><hlink|<verbatim|straight_motion>, <verbatim|rotational_motion>,
    <verbatim|radial_motion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L34-L60>

    <item><hlink|<verbatim|signed_section>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L29-L72>

    <item><hlink|<verbatim|corrected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Arrange.lean#L78-L81>

    <item><hlink|<verbatim|FreeDiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L153-L158>

    <item><hlink|<verbatim|centerEquiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L77-L82>

    <item><hlink|<verbatim|closed_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L158-L181>

    <item><hlink|<verbatim|tiltScale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L19-L20>

    <item><hlink|<verbatim|scaled_identity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L22-L48>

    <item><hlink|<verbatim|bend_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Focus.lean#L67-L92>

    <item><hlink|<verbatim|Wheel.Spots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Fringe.lean#L38-L42>

    <item><hlink|<verbatim|Balances>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L24-L31>

    <item><hlink|<verbatim|pays_film>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L72-L99>

    <item><hlink|<verbatim|Granular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L30-L34>

    <item><hlink|<verbatim|DimAbove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L108>

    <item><hlink|<verbatim|cap_given>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L110-L115>

    <item><hlink|<verbatim|Stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L121-L125>

    <item><hlink|<verbatim|MeterTest.injects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L88-L103>

    <item><hlink|<verbatim|on_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L106-L124>

    <item><hlink|<verbatim|focused_track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L173-L194>

    <item><hlink|<verbatim|focused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L197-L202>

    <item><hlink|<verbatim|subsector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L53-L68>

    <item><hlink|<verbatim|center_expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L88-L104>

    <item><hlink|<verbatim|GradientFamily.jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Local.lean#L152-L181>

    <item><hlink|<verbatim|Stations.ranging>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L27-L41>

    <item><hlink|<verbatim|Approaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L52-L53>

    <item><hlink|<verbatim|Stations.build_curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Rates.lean#L55-L73>

    <item><hlink|<verbatim|Stations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L112-L114>

    <item><hlink|<verbatim|Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L118>

    <item><hlink|<verbatim|Station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L68-L71>

    <item><hlink|<verbatim|currentDiv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L117-L119>

    <item><hlink|<verbatim|KernelSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L75-L80>

    <item><hlink|<verbatim|Vectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Tensor.lean#L87-L97>

    <item><hlink|<verbatim|calibrated_smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Vary.lean#L62-L71>

    <item><hlink|<verbatim|Fades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Weak.lean#L24-L27>

    <item><hlink|<verbatim|Org.erases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152>

    <item><hlink|<verbatim|Org.MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>

    <item><hlink|<verbatim|Org.IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>

    <item><hlink|<verbatim|Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>

    <item><hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>

    <item><hlink|<verbatim|common_stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L38-L49>

    <item><hlink|<verbatim|same_translation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L57-L63>

    <item><hlink|<verbatim|kappa_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L65-L74>

    <item><hlink|<verbatim|Pert.Supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L22-L32>

    <item><hlink|<verbatim|ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66>

    <item><hlink|<verbatim|centered_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116>

    <item><hlink|<verbatim|torch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L111>

    <item><hlink|<verbatim|scope_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L33-L41>

    <item><hlink|<verbatim|mixed_space>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L56-L71>

    <item><hlink|<verbatim|line_dim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L73-L79>

    <item><hlink|<verbatim|canonicalStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L82>

    <item><hlink|<verbatim|lighting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Certificate.lean#L86-L94>

    <item><hlink|<verbatim|every_light>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L41-L51>

    <item><hlink|<verbatim|ignite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L77-L134>

    <item><hlink|<verbatim|west_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L100-L103>

    <item><hlink|<verbatim|cross_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L104-L107>

    <item><hlink|<verbatim|east_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pivots.lean#L96-L99>

    <item><hlink|<verbatim|negated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L132-L151>

    <item><hlink|<verbatim|at_tower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L96-L118>

    <item><hlink|<verbatim|YM.Work.A09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90>

    <item><hlink|<verbatim|YM.Work.A10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115>

    <item><hlink|<verbatim|YM.Work.A12.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336>

    <item><hlink|<verbatim|YM.Work.A14.laws_of_oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415>

    <item><hlink|<verbatim|YM.Work.B08.smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L193-L203>

    <item><hlink|<verbatim|YM.Work.B10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>

    <item><hlink|<verbatim|YM.Work.D06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vi-2-1>

  <\itemize-minus>
    <item><strong|K-VI.2.1> <hlink|<verbatim|variation_center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Affine.lean#L180-L218>
    <em|(numbered result)> \V Centered field weights for a Killing generator
    pick out a single jet order and act by the transformation on the
    homogeneous solution.
  </itemize-minus>

  <label|k-vi-2-2>

  <\itemize-minus>
    <item><strong|K-VI.2.2> <hlink|<verbatim|kernel_pole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Pole.lean#L238-L260>
    <em|(key result)> \V The leg kernel between two jet probes is a harmonic
    multipole of order 4+j+l.
  </itemize-minus>

  <label|k-vi-2-3>

  <\itemize-minus>
    <item><strong|K-VI.2.3> <hlink|<verbatim|two_flux_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Repeat.lean#L63-L128>
    <em|(key result)> \V For a Killing drive with homogeneity at most one and
    a cutoff equal to one near x, the double flux of two pulses at x
    vanishes.
  </itemize-minus>

  <label|k-vi-2-4>

  <\itemize-minus>
    <item><strong|K-VI.2.4> <hlink|<verbatim|halves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Fock.lean#L188-L206>
    <em|(numbered result)> \V A pairing cost over a concatenated reflected
    and original list factors as a bilinear form between two packets under
    weight compatibility.
  </itemize-minus>

  <label|k-vi-2-5>

  <\itemize-minus>
    <item><strong|K-VI.2.5> <hlink|<verbatim|classification>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Stabilizer.lean#L145-L179>
    <em|(key result)> \V Linear maps satisfying the symmetric propagator
    pairing are all scalar multiples of the canonical feed map.
  </itemize-minus>

  <label|k-vi-2-6>

  <\itemize-minus>
    <item><strong|K-VI.2.6> <hlink|<verbatim|local_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Contact.lean#L137-L156>
    <em|(key result)> \V The flux of the pulse source at the marked leg
    against a test function equals minus the variation of the action, i.e.
    the local Ward charge identity.
  </itemize-minus>

  <label|k-vi-2-7>

  <\itemize-minus>
    <item><strong|K-VI.2.7> <hlink|<verbatim|jet_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Force.lean#L131-L186>
    <em|(main result)> \V For a wave-type variation, the single flux of a jet
    probe pulse equals minus the sample of the variation at the point.
  </itemize-minus>

  <label|k-vi-2-8>

  <\itemize-minus>
    <item><strong|K-VI.2.8> <hlink|<verbatim|level_detects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Strict.lean#L122-L142>
    <em|(key result)> \V If a polynomial in jets vanishes at the heat level
    at a point off the reflection plane, it annihilates every Taylor tower.
  </itemize-minus>

  <label|k-vi-2-9>

  <\itemize-minus>
    <item><strong|K-VI.2.9> <hlink|<verbatim|coordGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Gram.lean#L82-L105>
    <em|(key result)> \V For any finite alphabet of one-point coordinate
    probes, the reflected Gram matrix at a point off the reflection plane is
    positive definite.
  </itemize-minus>

  <label|k-vi-2-10>

  <\itemize-minus>
    <item><strong|K-VI.2.10> <hlink|<verbatim|spot_high>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Grain.lean#L81-L113>
    <em|(numbered result)> \V A test function pairing with a bounded function
    is bounded by M times (\<alpha\><ym-middot>volume plus A<ym-middot>band
    cost<ym-middot>\<sigma\>) given a smaller bound near the singular film.
  </itemize-minus>

  <label|k-vi-2-11>

  <\itemize-minus>
    <item><strong|K-VI.2.11> <hlink|<verbatim|cost_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Annulus.lean#L195-L226>
    <em|(numbered result)> \V The signed comparison cost passes to the limit
    along a filter, with coefficients allowed to vary with cutoffs.
  </itemize-minus>

  <label|k-vi-2-12>

  <\itemize-minus>
    <item><strong|K-VI.2.12> <hlink|<verbatim|single_cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Contact.lean#L106-L124>
    <em|(key result)> \V The single-contraction cross stress flux through a
    cutoff equal to one near the origin equals minus the derivative of the
    field component at the origin.
  </itemize-minus>

  <label|k-vi-2-13>

  <\itemize-minus>
    <item><strong|K-VI.2.13> <hlink|<verbatim|names>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Pressure.lean#L167-L171>
    <em|(key result)> \V For simple gauge group and nonzero \<tau\>, any
    Maxwell data can be replaced by canonical Maxwell data with current
    torch, \<kappa\>=-\<tau\>, same vacuum, window and kernel, and free
    divergence property.
  </itemize-minus>

  <label|k-vi-2-14>

  <\itemize-minus>
    <item><strong|K-VI.2.14> <hlink|<verbatim|exposed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Hidden.lean#L113-L137>
    <em|(key result)> \V For a simple gauge group there is a single weight
    bound d such that any polynomial in the shell sector that lies in the
    ghost (weight \<leqslant\> d) space must vanish.
  </itemize-minus>

  <label|k-vi-2-15>

  <\itemize-minus>
    <item><strong|K-VI.2.15> <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>
    <em|(key result)> \V For a simple gauge group there exists Maxwell data
    realizing the free-field time evolution and vacuum.
  </itemize-minus>

  <label|k-vi-2-16>

  <\itemize-minus>
    <item><strong|K-VI.2.16> <hlink|<verbatim|equivalences>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Invert.lean#L132-L181>
    <em|(key result)> \V The weak estimates at stations produce a scaling
    whose path gives the exact isomorphisms between the two hierarchies.
  </itemize-minus>

  <label|k-vi-2-17>

  <\itemize-minus>
    <item><strong|K-VI.2.17> <hlink|<verbatim|cutoff_balance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Glide.lean#L102-L129>
    <em|(key result)> \V The actual cutoff smears differ from the target
    smears by at most M\<varepsilon\> in the upper-limit sense along the
    ordered filter.
  </itemize-minus>

  <label|k-vi-2-18>

  <\itemize-minus>
    <item><strong|K-VI.2.18> <hlink|<verbatim|battery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/TripleMeter.lean#L63-L80>
    <em|(numbered result)> \V The three-point function with a torch insertion
    equals an explicit product of charge and crossing of bare curls, the only
    sector needed for the flux coefficient.
  </itemize-minus>

  <label|k-vi-2-19>

  <\itemize-minus>
    <item><strong|K-VI.2.19> <hlink|<verbatim|moment_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Recurse.lean#L123-L145>
    <em|(numbered result)> \V Multiplying a site's polynomial by a probe
    symbol equals a sum over contractions of the probe with the other sites.
  </itemize-minus>

  <label|k-vi-2-20>

  <\itemize-minus>
    <item><strong|K-VI.2.20> <hlink|<verbatim|supply_wheel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Granular.lean#L121-L128>
    <em|(key result)> \V For large scale, the station is admissible: the
    quantitative payment estimates hold uniformly over all caps and words.
  </itemize-minus>

  <label|k-vi-2-21>

  <\itemize-minus>
    <item><strong|K-VI.2.21> <hlink|<verbatim|moment_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Taxes.lean#L177-L200>
    <em|(key result)> \V For arbitrary Wick polynomials, the shell flux of
    the composite stress insertion equals minus the moment with the first
    polynomial rewired by the generator.
  </itemize-minus>

  <label|k-vi-2-22>

  <\itemize-minus>
    <item><strong|K-VI.2.22> <hlink|<verbatim|triangle_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Triangle.lean#L365-L371>
    <em|(key result)> \V For probes tested at three distinct points with
    repeated letters at two sites, the triplet Wick moment equals four times
    a product of leg kernels in a triangle pattern.
  </itemize-minus>

  <label|k-vi-2-23>

  <\itemize-minus>
    <item><strong|K-VI.2.23> <hlink|<verbatim|produce_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Limit.lean#L129-L167>
    <em|(key result)> \V One can construct a nonzero divergence-free current
    in the kernel, with a coherent scaling along one curve, from the weak
    comparison.
  </itemize-minus>

  <label|k-vi-2-24>

  <\itemize-minus>
    <item><strong|K-VI.2.24> <hlink|<verbatim|precise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Layout.lean#L118-L154>
    <em|(key result)> \V For grid layouts of mixed arrays, there are
    constants controlling the correlation estimates eventually along the
    filter, using that cells are distinct on the torus.
  </itemize-minus>

  <label|k-vi-2-25>

  <\itemize-minus>
    <item><strong|K-VI.2.25> <hlink|<verbatim|scanner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Scenes.lean#L125-L132>
    <em|(key result)> \V For a simple gauge group, for all sufficiently large
    d there is a selection at level d that ensembles the scheme against the
    hierarchy's spin.
  </itemize-minus>

  <label|k-vi-2-26>

  <\itemize-minus>
    <item><strong|K-VI.2.26> <hlink|<verbatim|shines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L36-L42>
    <em|(key result)> \V For a simple gauge group and nonzero parameter
    \<tau\>, the herald for a register realizes the free hierarchy's spin.
  </itemize-minus>

  <label|k-vi-2-27>

  <\itemize-minus>
    <item><strong|K-VI.2.27> <hlink|<verbatim|harvested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Station.lean#L132-L180>
    <em|(numbered result)> \V An admissible station yields a panel that is
    straight and approximates the continuum kernels on tests up to the stated
    error.
  </itemize-minus>

  <label|k-vi-2-28>

  <\itemize-minus>
    <item><strong|K-VI.2.28> <hlink|<verbatim|commute_ghost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Statistic.lean#L104-L150>
    <em|(key result)> \V Under a Ward-type vanishing hypothesis, the
    commutator of the rewiring operator with a stress-annihilating map lies
    in the ghost ideal at the given degree.
  </itemize-minus>

  <label|k-vi-2-29>

  <\itemize-minus>
    <item><strong|K-VI.2.29> <hlink|<verbatim|align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Parity.lean#L88-L103>
    <em|(numbered result)> \V A vector with a given binary parity character
    lies in a subspace if it holds on spanning generators of matching aligned
    parity.
  </itemize-minus>

  <label|k-vi-2-30>

  <\itemize-minus>
    <item><strong|K-VI.2.30> <hlink|<verbatim|differential_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/UV_STRESS/Dimension.lean#L165-L195>
    <em|(key result)> \V Under stable scaling approximation, the
    current-divergence map is onto and its kernel is one-dimensional (a
    single stress line).
  </itemize-minus>

  <label|k-vi-2-31>

  <\itemize-minus>
    <item><strong|K-VI.2.31> <hlink|<verbatim|charges_quiet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Magnitude.lean#L142-L181>
    <em|(key result)> \V For vectors of models in the specified color class,
    the quiet condition holds iff the vector is a real multiple of the leaves
    vector.
  </itemize-minus>

  <label|k-vi-2-32>

  <\itemize-minus>
    <item><strong|K-VI.2.32> <hlink|<verbatim|erasing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/AwayTeam.lean#L48-L118>
    <em|(key result)> \V For a simple gauge group, the free hierarchy's spin
    structure satisfies the internal finite Ward (erasing) test for the
    scheme.
  </itemize-minus>

  <label|k-vi-2-33>

  <\itemize-minus>
    <item><strong|K-VI.2.33> <hlink|<verbatim|capped_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/VRank.lean#L102-L116>
    <em|(key result)> \V The space of vectors in the Bianchi/Maxwell quotient
    has dimension at most two.
  </itemize-minus>

  <label|k-vi-2-34>

  <\itemize-minus>
    <item><strong|K-VI.2.34> <hlink|<verbatim|detects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Core.lean#L94-L110>
    <em|(key result)> \V For a nonzero Wick polynomial and a point at
    positive distance from the reflection plane, the reflected score is
    strictly positive.
  </itemize-minus>

  <label|k-vi-2-35>

  <\itemize-minus>
    <item><strong|K-VI.2.35> <hlink|<verbatim|exhaust>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/StressSpace.lean#L115-L122>
    <em|(key result)> \V Every element of the kernel space of the stress
    certificate equals a three-parameter painted stress form.
  </itemize-minus>

  <label|k-vi-2-36>

  <\itemize-minus>
    <item><strong|K-VI.2.36> <hlink|<verbatim|positive_table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Caps.lean#L137-L155>
    <em|(key result)> \V The free table of the Maxwell field is reflection
    positive.
  </itemize-minus>

  <label|k-vi-2-37>

  <\itemize-minus>
    <item><strong|K-VI.2.37> <hlink|<verbatim|mixed_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lifted.lean#L85-L124>
    <em|(key result)> \V On compact separated sets, scaled physical mixed
    correlators converge in all derivatives to the free mixed-tag correlators
    built from the Maxwell data.
  </itemize-minus>

  <label|k-vi-2-38>

  <\itemize-minus>
    <item><strong|K-VI.2.38> <hlink|<verbatim|hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/System.lean#L106-L114>
    <em|(key result)> \V The free Maxwell model satisfies the hierarchy
    axioms of ranks, derivatives and multipole bounds.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.1 Ward identities, the rotation action
  and the conserved stress tensor|VI-1.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Detailed
  notes|../notes/VI-2.tm>|<hlink|VII.1 Free Maxwell fields for the
  short-distance comparison \<rightarrow\>|VII-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VI.2. The free Maxwell stress tensor and the local
    Ward charge \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|5>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|6>>
    <associate|7-what-remains-unexplained|<tuple|7|6>>
    <associate|additional-source-locations|<tuple|9.1|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|7>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|6>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|k-vi-2-1|<tuple|10|11>>
    <associate|k-vi-2-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-13|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-14|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-15|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-16|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-17|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-18|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-19|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vi-2-20|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-21|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-22|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-23|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-2-24|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-25|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-26|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-27|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-28|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-29|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-3|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vi-2-30|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-31|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-32|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-33|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-2-34|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-2-35|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-2-36|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-2-37|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-2-38|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-2-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vi-2-9|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|9|5>>
    <associate|unit-inputs|<tuple|1|4>>
    <associate|unit-limitations|<tuple|6|6>>
    <associate|unit-notation|<tuple|5|6>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|5>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|vi2-the-free-maxwell-stress-tensor-and-the-local-ward-charge|<tuple|?|1>>
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