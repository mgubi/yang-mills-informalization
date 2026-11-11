<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.4 Operator product expansion and
  contact extensions|VII-4.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-5.tm>|<hlink|VII.6 Scaling variants and fixed-field
  estimates \<rightarrow\>|VII-6.tm>>

  <ym-title|VII.5. Asymptotic freedom of the running
  coupling><label|vii5-asymptotic-freedom-of-the-running-coupling>

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

  Relates the running coupling to its leading logarithmic asymptotic under
  the construction hypotheses.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VII-5.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VII.4|VII-4.tm> <ym-middot> <hlink|Next:
  VII.6 \<rightarrow\>|VII-6.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> The coupling result is in
  <verbatim|YM/Pert/Asymptotics>; the allocation also includes auxiliary
  algebra and limit lemmas from other folders, as explained below.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
    <hlink|<verbatim|YM/Pert/Asymptotics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics>,
    <hlink|<verbatim|YM/Extra/WEAK_SCALING_ACTLAW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW>,
    <hlink|<verbatim|YM/TraceExtension/Foundation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation>,
    <hlink|<verbatim|YM/TraceExtension/Soot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot>.
    <strong|Size:> 232 lines, 43 declarations.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  For VII.5.1\U3, let <math|G\<subset\>U<around|(|q|)>> be compact,
  <math|q\<geqslant\>1>. Write <math|2*b<rsub|0>=\<kappa\><rsub|G>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>,
  <math|a<rsub|m>=<around|(|<big|prod><rsub|k\<less\>m>b<rsub|k>|)><rsup|-1>>,
  <math|s<rsub|m>=log <around|(|1/a<rsub|m>|)>>, with odd
  <math|b<rsub|k>\<geqslant\>3>. The trajectory has inverse couplings
  <math|\<beta\><rsub|N,p,m>>, bare endpoint
  <math|\<beta\><rsub|N,p>=\<beta\><rsub|N,p,N>>, reference value
  <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>\<gtr\>0>, and
  <math|g<rsub|N,p,m>=\<beta\><rsub|N,p,m><rsup|-1/2>>. Simple means real
  simple and nonabelian. The running clause says that for every
  <math|\<varepsilon\>\<gtr\>0>, eventually in <math|m>,

  <\equation*>
    <around|\||\<beta\><rsub|N,p,m>-<around|(|<wide|\<beta\>|\<bar\>>+2*b<rsub|0>*s<rsub|m>|)>|\|>\<leqslant\>\<varepsilon\>*s<rsub|m>
  </equation*>

  uniformly for <math|N\<geqslant\>m> and <math|p\<in\>\<bbb-N\>>.

  <strong|Proposition VII.5.1.> If the family satisfies the construction
  conditions (II.2), then for every <math|\<varepsilon\>\<gtr\>0> there is
  <math|m<rsub|0>\<geqslant\>1> such that

  <\equation*>
    <around*|\||\<beta\><rsub|N,p,m>/s<rsub|m>-2*b<rsub|0>|\|>\<less\>\<varepsilon\><space|2em><around|(|m\<geqslant\>m<rsub|0>,N\<geqslant\>m,p\<in\>\<bbb-N\>|)>.
  </equation*>

  <em|Status:> theorem; only the running clause is used, without simplicity.
  <em|Lean:> <hlink|<verbatim|YM.Pert.Asymptotics.zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>.

  <strong|Corollary VII.5.2.> Under the construction conditions and
  simplicity of <math|\<frak-g\>>, the Wilson family satisfies (Reg1): for
  every <math|\<varepsilon\>\<gtr\>0> there is <math|N<rsub|0>\<geqslant\>1>
  such that <math|<around|\||\<beta\><rsub|N,p>/s<rsub|N>-b<rsub|\<ast\>>|\|>\<less\>\<varepsilon\>>
  for all <math|N\<geqslant\>N<rsub|0>> and <math|p\<in\>\<bbb-N\>>, where
  <math|b<rsub|\<ast\>>=2*b<rsub|0>\<gtr\>0>. <em|Status:> theorem in VIII.1.
  <em|Lean:> <hlink|<verbatim|YangMills.regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25>.

  <strong|Proposition VII.5.3.> Under the same hypotheses, for any
  lattice-level and volume sequences <math|<around|(|N<rsub|i>|)>,<around|(|k<rsub|i>|)>>
  with <math|i\<leqslant\>N<rsub|i>> eventually,

  <\equation*>
    g<rsub|N<rsub|i>,k<rsub|i>,i>*<sqrt|s<rsub|i>>\<longrightarrow\><around|(|2*b<rsub|0>|)><rsup|-1/2>,<space|2em>g<rsub|N<rsub|i>,k<rsub|i>,i><rsup|2>*s<rsub|i>\<longrightarrow\><around|(|2*b<rsub|0>|)><rsup|-1>.
  </equation*>

  <em|Status:> theorem; the second limit follows by squaring. <em|Lean:>
  <hlink|<verbatim|YM.Pert.Asymptotics.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48>.

  For VII.5.4\U5, <math|\<cal-F\><rsub|d>,\<cal-F\><rsub|d><rsup|\<circ\>>>
  are finite-dimensional complex label spaces of degree at most <math|d> in
  Euclidean hierarchies on <math|S> and its free Maxwell comparison table, on
  the same reference labels. Derivative plans have inclusions
  <math|\<iota\><rsub|d\<to\>e>> and derivatives
  <math|\<partial\><rsub|d,a>>. Exact compatibility means preserving
  inclusions, signed permutations <math|\<Gamma\><rsub|4>>, conjugation and
  units.

  <strong|Proposition VII.5.4.> Fix the free Maxwell data of VI.2, including
  the finite separating tests and boundary, polynomial and internal-rotation
  conditions. Its plan <math|W> satisfies the inclusion, derivative and
  orientation axioms; <math|J<rsup|\<circ\>>> satisfies Ward identities with
  translation part <math|\<kappa\>*\<partial\><rsup|W>> and rotation part
  <math|\<kappa\>> times the infinitesimal rotation action, where
  <math|\<kappa\>\<ne\>0> and <math|\<partial\><rsup|W><rsub|4>\<ne\>0>. Let
  <math|V> satisfy the inclusion and derivative axioms. Suppose
  <math|J\<in\>\<cal-F\><rsub|4><rsup|4\<times\>4>> is symmetric, real,
  <math|\<Gamma\><rsub|4>>-covariant and satisfies
  <math|<big|sum><rsub|a>\<partial\><rsup|V><rsub|4,a>*J<rsub|a*b>=0> for
  every <math|b>, and <math|<around|(|J,p,Y|)>> satisfies the local Ward
  identities. If some <math|c\<in\>\<bbb-R\>> satisfies
  <math|p<rsub|4,a>=c*\<partial\><rsup|V><rsub|4,a>> for all
  <math|a=1,\<ldots\>,4>, there exist <math|D,N,M\<in\>\<bbb-N\>>,
  <math|R<rsub|0>\<geqslant\>1> such that
  <math|c/\<xi\><rsub|k>\<to\>\<kappa\>> for every tracking scaling sequence
  at every level <math|<around|(|n,d,j,R|)>\<geqslant\><around|(|N,D,M,R<rsub|0>|)>>
  componentwise (VI.1). Also, for any hierarchy and local Ward identities,
  <math|p\<ne\>0> implies <math|J\<ne\>0>. A scaling sequence has
  complex-linear isomorphisms <math|U<rsub|k><around|(|d|)>:\<cal-F\><rsub|d><rsup|\<circ\>>\<to\>\<cal-F\><rsub|d>>,
  positive strictly decreasing <math|r<rsub|k>\<to\>0> and
  <math|\<xi\><rsub|k>\<gtr\>0>. Tracking <math|<around|(|V,W,J|)>> at
  <math|<around|(|n,d,j,R|)>> requires exact compatibility through <math|max
  <around|(|d,4|)>>, convergence of transported correlations at
  <math|r<rsub|k>*x> for each fixed list of at most <math|n> fields of
  degrees at most <math|d>, to the free correlations, with all Fréchet
  derivatives through order <math|j>, uniformly on
  <math|<around|{|x:<around|\<\|\|\>|x|\<\|\|\>>\<leqslant\>R,<around|\<\|\|\>|x<rsub|a>-x<rsub|b>|\<\|\|\>><rsub|\<infty\>>\<geqslant\>R<rsup|-1>*<around|(|a\<ne\>b|)>|}>>,
  and <math|\<xi\><rsub|k><rsup|-1>*r<rsub|k><rsup|4>*U<rsub|k><around|(|4|)><rsup|-1>*J<rsub|a*b>\<to\>J<rsup|\<circ\>><rsub|a*b>>.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|YM.Extra.WeakScaling.tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>,
  <hlink|<verbatim|flux_nontrivial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70>.

  <strong|Proposition VII.5.5.> Let <math|V,W> satisfy the inclusion and
  orientation axioms. For every <math|d> there is a complex-linear,
  <math|\<Gamma\><rsub|4>>-equivariant, conjugation-preserving retraction
  <math|P<rsub|d>> of <math|\<iota\><rsup|W><rsub|d>\<assign\>\<iota\><rsup|W><rsub|d\<to\>d+1>>.
  For any complex-linear isomorphisms <math|A<rsub|d>:\<cal-F\><rsub|d><rsup|\<circ\>>\<to\>\<cal-F\><rsub|d>>,
  define

  <\equation*>
    X<rsub|0>=A<rsub|0>,<space|2em>X<rsub|d+1>=\<iota\><rsup|V><rsub|d>*X<rsub|d>*P<rsub|d>+A<rsub|d+1>*<around|(|1-\<iota\><rsup|W><rsub|d>*P<rsub|d>|)>.
  </equation*>

  Fix <math|D\<in\>\<bbb-N\>>. If <math|A<rsub|d>> preserve symmetries and
  units for <math|d\<leqslant\>D>, then <math|X<rsub|d>> are exactly
  compatible through degree <math|D>. For sequences of such isomorphisms
  <math|A<rsub|d><rsup|<around|(|k|)>>> satisfying
  <math|<around|(|A<rsub|d+1><rsup|<around|(|k|)>>|)><rsup|-1>*\<iota\><rsup|V><rsub|d>*A<rsub|d><rsup|<around|(|k|)>>*v\<to\>\<iota\><rsup|W><rsub|d>*v>
  for every <math|d\<less\>D,v>, one has <math|<around|(|A<rsub|d><rsup|<around|(|k|)>>|)><rsup|-1>*X<rsub|d><rsup|<around|(|k|)>>\<to\>1>
  in operator norm for every <math|d\<leqslant\>D>. These
  <math|X<rsub|d><rsup|<around|(|k|)>>> are eventually bijective; replacing
  nonbijective terms by <math|A<rsub|d><rsup|<around|(|k|)>>> gives
  isomorphisms <math|<wide|X|~><rsub|d><rsup|<around|(|k|)>>> with
  <math|<around|(|A<rsub|d><rsup|<around|(|k|)>>|)><rsup|-1>*<wide|X|~><rsub|d><rsup|<around|(|k|)>>*v\<to\>v>.
  If the original frames preserve symmetries and units through <math|D>, the
  replacements are eventually exactly compatible simultaneously through
  <math|D>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>,
  <hlink|<verbatim|adjusted_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102>,
  <hlink|<verbatim|perturb_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129>,
  <hlink|<verbatim|relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148>.

  <strong|Proposition VII.5.6.> Along any filter: (a) for an injective linear
  map <math|f:E\<to\>X> between finite-dimensional real normed spaces,
  <math|f<around|(|a<rsub|y>|)>\<to\>f<around|(|e|)>> implies
  <math|a<rsub|y>\<to\>e>; (b) continuous real-linear maps
  <math|f<rsub|y>,g:<around|(|\<bbb-R\><rsup|4>|)><rsup|n>\<to\>\<bbb-C\>>
  satisfy <math|f<rsub|y>\<to\>g> in operator norm if
  <math|f<rsub|y><around|(|e<rsub|i,a>|)>\<to\>g<around|(|e<rsub|i,a>|)>> at
  all <math|4*n> coordinate vectors. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|norm_fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51>,
  <hlink|<verbatim|norm_fit_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70>.

  <strong|Definition VII.5.7.> In gauge-invariant radial-jet polynomials,
  with curvature weight 2 and derivatives adding 1, for
  <math|t\<in\>\<bbb-R\><rsup|4>> set

  <\equation*>
    \<frak-s\>=<tfrac|1|4><big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,F<rsub|i*j>|\<rangle\>>,<space|1em>T<rsup|<around|(|t|)>><rsub|a*b>=\<delta\><rsub|a*b>*<around*|(|t<rsub|0>*\<b-1\>+t<rsub|1>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|a*i>|\<rangle\>>+4*t<rsub|2>*\<frak-s\>|)>+<around|(|1-\<delta\><rsub|a*b>|)>*t<rsub|3>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|b*i>|\<rangle\>>.
  </equation*>

  Here <math|F,\<partial\>*F> are linear curls of degree-0 and degree-1
  radial Taylor coefficients. These are polynomial identities before
  quotienting by null fields. Put <math|T<rsup|<math-up|can>>=T<rsup|<around|(|0,1,-1/4,1|)>>>,
  <math|\<mu\><rsup|1><rsub|b>=<big|sum><rsub|i><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|b>*F<rsub|b*i>|\<rangle\>>>,
  <math|\<mu\><rsup|2><rsub|b>=<big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,\<partial\><rsub|b>*F<rsub|i*j>|\<rangle\>>>,
  <math|E<rsub|b>=<big|sum><rsub|a,i><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|a>*F<rsub|a*i>|\<rangle\>>>,
  and, for <math|w\<in\>\<bbb-R\><rsup|3>>,

  <\equation*>
    \<beta\><around|(|w|)>=w<rsub|0>*\<mu\><rsup|1>+w<rsub|1>*\<mu\><rsup|2>+w<rsub|2>*E,<space|1em>\<delta\><around|(|w|)>=\<beta\><around|(|2*<around|(|w<rsub|0>-w<rsub|2>|)>,2*w<rsub|1>+w<rsub|2>/2,w<rsub|2>|)>.
  </equation*>

  Both <math|\<mu\><rsup|1>,\<mu\><rsup|2>> belong to the real space
  <math|\<cal-R\><rsub|1>> of real, <math|\<Gamma\><rsub|4>>-covariant
  vectors of degree at most 5. Every degree-0 radial jet is realised by a
  constant-curvature free Maxwell field with affine potential. <em|Status:>
  definitions and two lemmas. <em|Lean:> <hlink|<verbatim|raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70>,
  <hlink|<verbatim|basisV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66>,
  <hlink|<verbatim|bareVector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33>,
  <hlink|<verbatim|shell_affine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50>.

  <strong|Definition VII.5.8.> Fix a family, nondecreasing
  <math|K:\<bbb-N\>\<to\>\<bbb-R\>> with <math|K\<geqslant\>1>, degree
  <math|d>, stages <math|\<ell\><rsub|d>\<leqslant\>k\<leqslant\>N>, volume
  <math|p>, and <math|u\<in\>\<bbb-R\>>. The sharp read-out bound asserts
  <math|u<around|\<\|\|\>|c<rsub|k>|\<\|\|\>><rsub|1>\<leqslant\>4*<around|(|1+n<rsub|k>|)>*w>
  for every <math|w\<geqslant\>0> and every chain of insertion presentations
  <math|A<rsub|i>> at the origin, with coefficient vectors <math|c<rsub|i>>,
  remainder costs <math|q<rsub|i>> and densities <math|\<cal-D\><rsub|i>>,
  satisfying the admissibility conditions of III.12 (regular and forced
  remainders, with square-root forced allowance),
  <math|c<rsub|\<ell\><rsub|d>>=0>, and, for every
  <math|\<ell\><rsub|d>\<leqslant\>i\<less\>k>,

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|\<cal-D\><rsub|i>>|<cell|=b<rsub|i><rsup|d>*\<cal-T\><rsup|<around|(|i|)>><rsub|\<beta\><rsub|N,p,i+1>>*\<cal-D\><rsub|i+1>,>>|<row|<cell|<around|\<\|\|\>|c<rsub|i>-B<rsub|i>*S<rsub|i>*c<rsub|i+1>|\<\|\|\>><rsub|1>>|<cell|\<leqslant\>b<rsub|i><rsup|-3/8>*<around|(|<around|\<\|\|\>|P*c<rsub|i+1>|\<\|\|\>><rsub|1>+q<rsub|i+1>|)>,>>|<row|<cell|q<rsub|i>>|<cell|\<leqslant\>K<rsub|i>\<\|\|\>P*S<rsub|i>c<rsub|i+1>\<\|\|\><rsub|1>+b<rsub|i><rsup|-3/8>*q<rsub|i+1>.>>>>
    </aligned>
  </equation*>

  For each <math|\<ell\><rsub|d>\<leqslant\>i\<less\>k>, costs
  <math|q<rsub|i>,q<rsub|i+1>> are nonnegative and <math|B<rsub|i>> is a
  complex-linear automorphism commuting with <math|P>, with
  <math|<around|\<\|\|\>|B<rsub|i><rsup|\<pm\>1>*c|\<\|\|\>><rsub|1>\<leqslant\>K<rsub|i><around|\<\|\|\>|c|\<\|\|\>><rsub|1>>
  for every <math|c>. For <math|\<ell\><rsub|d>\<leqslant\>i\<leqslant\>k>,
  the admissible remainder cost is at most <math|q<rsub|i>>, and
  <math|q<rsub|k>\<leqslant\>w+n<rsub|k>*<around|(|w+<around|\<\|\|\>|c<rsub|k>|\<\|\|\>><rsub|1>|)>>.
  <em|Status:> definition. <em|Lean:> <hlink|<verbatim|YM.MergeProof.Accent.SharpRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: Casimir positivity and divergent logarithmic scales
    (<hlink|<verbatim|Schedule.divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>);
    II.2, III.1\U2: construction conditions, selected histories and shooting
    (<hlink|<verbatim|YM.Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>).

    <item>III.7, III.9: one-loop shift and coupling reset.

    <item>IV.1, VI.1\U2: hierarchies, derivative plans, Ward identities,
    A04\UA05 and free Maxwell data (<hlink|<verbatim|MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>);
    III.12: insertion estimates.

    <item>Standard results: Cesàro summation, continuity of square root and
    reciprocal, Maschke averaging, finite-dimensional continuity and openness
    of invertibility.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  The inverse coupling follows a linear reference trajectory in logarithmic
  scale. Uniform one-step errors sum to <math|o<around|(|s<rsub|m>|)>> around
  <math|<wide|\<beta\>|\<bar\>>+2*b<rsub|0>*s<rsub|m>>. Division by
  <math|s<rsub|m>\<to\>\<infty\>> removes the reference coupling. The
  auxiliary arguments compare two limits proportional to the same nonzero
  derivative, which determines the stress normalisation. Averaged retractions
  split each inclusion; correcting frames recursively on the included
  subspace makes compatibility exact, while the relative correction tends to
  the identity.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Given <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>> and
    transfer errors bounded by <math|\<delta\><rsub|m+1>> with
    <math|\<delta\><rsub|m+1>/log b<rsub|m>\<leqslant\>J*<around|(|m+1|)><rsup|-2>\<to\>0>,
    summation gives the uniform running clause. Split off a finite initial
    segment and bound the remaining error by a small multiple of
    <math|s<rsub|m>> (III.2). <hlink|<verbatim|trajectory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>.

    <item>Divide by <math|s<rsub|m>>; specialise to <math|m=N> for (Reg1),
    and use continuity of inverse square root for VII.5.3; positivity uses
    simplicity. <hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>,
    <hlink|<verbatim|comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48>.

    <item>A04\UA05 give derivative and Ward limits; a linear functional
    nonzero on <math|\<partial\><rsup|W><rsub|4>> extracts
    <math|c/\<xi\><rsub|k>\<to\>\<kappa\>>.
    <hlink|<verbatim|tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>.

    <item>Average retractions over <math|\<Gamma\><rsub|4>> and conjugation;
    the recursive correction preserves inclusions and tends to the original
    frames in relative operator norm, ensuring eventual invertibility.
    <hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>,
    <hlink|<verbatim|perturb_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129>.

    <item>At the polynomial level, sign cancellation gives covariance of
    <math|\<mu\><rsup|1>,\<mu\><rsup|2>>; constant curvature realises every
    degree-0 jet on a Maxwell solution. <hlink|<verbatim|momentum1_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34>,
    <hlink|<verbatim|shell_affine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The analytic work lies upstream in the one-loop estimate, coupling reset
  and shooting. This unit establishes the leading lattice logarithm; the main
  theorem retains only a positive slope through (Reg1).

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|C<rsub|\<frak-g\>>> is the Casimir for
  <math|<around|\<langle\>|X,Y|\<rangle\>>=-q<rsup|-1><math-up|Re><space|0.17em><math-up|tr><around|(|X*Y|)>>.
  For an orthonormal basis <math|<around|(|e<rsub|i>|)>>,
  <math|C<rsub|\<frak-g\>>=-<around|(|dim
  \<frak-g\>|)><rsup|-1>*<big|sum><rsub|i><math-up|tr><rsub|\<frak-g\>><around|(|<around|(|<math-up|ad><space|0.17em>e<rsub|i>|)><rsup|2>|)>>,
  with value 0 if <math|\<frak-g\>=0>. In VII.5.8, <math|\<ell\><rsub|d>> is
  the family\<#2019\>s reference stage, <math|P> removes the unit coordinate,
  <math|<around|\<\|\|\>|c|\<\|\|\>><rsub|1>=<big|sum><rsub|\<alpha\>><around|\||c<rsub|\<alpha\>>|\|>>,
  <math|<around|(|S<rsub|i>*c|)><rsub|\<alpha\>>=b<rsub|i><rsup|d-d<rsub|\<alpha\>>>*c<rsub|\<alpha\>>>,
  <math|K<rsub|i>=K*<around|(|J*<around|(|i+1|)>|)>>; <math|n<rsub|k>> is the
  column number. Here <math|d<rsub|\<alpha\>>> is label weight and <math|J>
  the scale-stage index. In VII.5.4, <math|\<xi\><rsub|k>\<gtr\>0> is stress
  normalisation.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The one-loop integral belongs to III.7. A declaration establishing cutoff
  removal, infinite-volume limits and comparison with a coupling from
  continuum correlations has not been identified (tentative).
  Tracking-sequence existence belongs to VI.1 and VII.1; the read-out bound
  requires upstream one-step hypotheses.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VII-5.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|IV.1|IV-1.tm>, <hlink|I.1|I-1.tm>,
  <hlink|III.16|III-16.tm>, <hlink|VI.1|VI-1.tm>, <hlink|II.1|II-1.tm>.

  <strong|Referenced by:> <hlink|VII.2|VII-2.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 232 attributed lines; 43 line-counted
  declarations; 43 assigned declaration names. Of the assigned names, 43 are
  in the compiled closure of the seventeen headline results. These quantities
  have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Extra/WEAK_SCALING_ACTLAW/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW>
    \V 162 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Foundation/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation>
    \V 37 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Asymptotics/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics>
    \V 18 lines.

    <item>proof of <hlink|<verbatim|comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48>
    \V 14 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Soot/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot>
    \V 1 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|YangMills.WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22>

    <item><hlink|<verbatim|Duet.Woke>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L115-L127>

    <item><hlink|<verbatim|direction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L65-L69>

    <item><hlink|<verbatim|Lighthouse.Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>

    <item><hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48>

    <item><hlink|<verbatim|Pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69>

    <item><hlink|<verbatim|carry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L44-L45>

    <item><hlink|<verbatim|aisle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57>

    <item><hlink|<verbatim|DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>

    <item><hlink|<verbatim|StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>

    <item><hlink|<verbatim|perturb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L106-L108>

    <item><hlink|<verbatim|Near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111>

    <item><hlink|<verbatim|eventually_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135>

    <item><hlink|<verbatim|rotateChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140>

    <item><hlink|<verbatim|rotate_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L142-L143>

    <item><hlink|<verbatim|Graded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172>

    <item><hlink|<verbatim|averaged_cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L27-L32>

    <item><hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66>

    <item><hlink|<verbatim|Exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76>

    <item><hlink|<verbatim|adjusted_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L78-L79>

    <item><hlink|<verbatim|components>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60>

    <item><hlink|<verbatim|scale_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39>

    <item><hlink|<verbatim|kappa_sign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L56-L70>

    <item><hlink|<verbatim|Free>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Station.lean#L28>

    <item><hlink|<verbatim|YM.FullVolume.stretching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L28-L30>

    <item><hlink|<verbatim|trace_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158>

    <item><hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>

    <item><hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>

    <item><hlink|<verbatim|YM.Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>

    <item><hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>

    <item><hlink|<verbatim|Schedule.scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>

    <item><hlink|<verbatim|Schedule.a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>

    <item><hlink|<verbatim|Maxwell.equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>

    <item><hlink|<verbatim|Directed.links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63>

    <item><hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>

    <item><hlink|<verbatim|b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13>

    <item><hlink|<verbatim|b0_normalizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14>

    <item><hlink|<verbatim|regulatorRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35>

    <item><hlink|<verbatim|YM.Pert.ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66>

    <item><hlink|<verbatim|YM.Pert.centered_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116>

    <item><hlink|<verbatim|RawOne>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L53>

    <item><hlink|<verbatim|eom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L105>

    <item><hlink|<verbatim|stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L177-L181>

    <item><hlink|<verbatim|weyl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L187>

    <item><hlink|<verbatim|pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L50-L51>

    <item><hlink|<verbatim|pairDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L57-L58>

    <item><hlink|<verbatim|Conv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218>

    <item><hlink|<verbatim|Transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227>

    <item><hlink|<verbatim|Running>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230>

    <item><hlink|<verbatim|YM.RG.History.Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>

    <item><hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>

    <item><hlink|<verbatim|YM.SharpGram.Weak.Portfolio.tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>

    <item><hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>

    <item><hlink|<verbatim|successful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159>

    <item><hlink|<verbatim|Family.beta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38>

    <item><hlink|<verbatim|Format>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61>

    <item><hlink|<verbatim|remBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68>

    <item><hlink|<verbatim|Spin.comparator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L38>

    <item><hlink|<verbatim|mere>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88>

    <item><hlink|<verbatim|coordinates1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L112-L124>

    <item><hlink|<verbatim|momentum2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14>

    <item><hlink|<verbatim|momentum1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16>

    <item><hlink|<verbatim|sumPerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20>

    <item><hlink|<verbatim|momentum2_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24>

    <item><hlink|<verbatim|momentum2_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27>

    <item><hlink|<verbatim|shell_quadratic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L52-L61>

    <item><hlink|<verbatim|through_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L96-L110>

    <item><hlink|<verbatim|proj3>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L31>

    <item><hlink|<verbatim|mat3>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L32>

    <item><hlink|<verbatim|euler>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L38-L52>

    <item><hlink|<verbatim|bareCoordinates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L54-L63>

    <item><hlink|<verbatim|square4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66>

    <item><hlink|<verbatim|mechanical_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69>

    <item><hlink|<verbatim|conformal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L71-L72>

    <item><hlink|<verbatim|eom_vector_raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L73-L74>

    <item><hlink|<verbatim|rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80>

    <item><hlink|<verbatim|rho_eom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L85-L88>

    <item><hlink|<verbatim|attain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52>

    <item><hlink|<verbatim|YM.Trace.Terrace.Sceptre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Knell.lean#L62-L66>

    <item><hlink|<verbatim|Lease>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22>

    <item><hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183>

    <item><hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vii-5-1>

  <\itemize-minus>
    <item><strong|K-VII.5.1> <hlink|<verbatim|comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48>
    <em|(key result)> \V The running regulator coefficient times the square
    root of log inverse lattice spacing tends to 1/sqrt(2 b0), giving the
    leading-log asymptotics of the running coupling.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.4 Operator product expansion and
  contact extensions|VII-4.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-5.tm>|<hlink|VII.6 Scaling variants and fixed-field
  estimates \<rightarrow\>|VII-6.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.5. Asymptotic freedom of the running coupling
    \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|9>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-vii-5-1|<tuple|10|9>>
    <associate|key-statements|<tuple|10|9>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|5|5>>
    <associate|unit-inputs|<tuple|1|4>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|vii5-asymptotic-freedom-of-the-running-coupling|<tuple|?|1>>
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