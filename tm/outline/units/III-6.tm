<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.5 Cluster expansion of the polymer
  gas|III-5.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-6.tm>|<hlink|III.7 Matching the Wilson energy to fourth
  order \<rightarrow\>|III-7.tm>>

  <ym-title|III.6. The stationary branch: background field of the effective
  action><label|iii6-the-stationary-branch-background-field-of-the-effective-action>

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

  Constructs and estimates the stationary background field around which the
  effective action is expanded.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-6.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.5|III-5.tm> <ym-middot> <hlink|Next:
  III.7 \<rightarrow\>|III-7.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/Bid/Station.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean>,
    <hlink|<verbatim|YM/Bid/Craft.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean>,
    <hlink|<verbatim|YM/Push/STATIONARY_UNIFORM/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM>,
    <hlink|<verbatim|YM/Planned/STATIONARY_JET_PORT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT>,
    <hlink|<verbatim|YM/Extra/ITERATION_NO_LOSS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS>.
    <strong|Size:> 21,329 lines in the source allocation, including attached
    packages.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.> <math|G> is the gauge group and <math|\<frak-g\>> its Lie
  algebra. In dimension four, <math|f=L*c>, with odd <math|L\<geqslant\>3>
  and patch order <math|J\<geqslant\>4>. Sums use counting measure and
  physical colour coordinates. A step <math|S> has kernel choices <math|K>,
  penalty <math|\<kappa\>\<gtr\>0>, tagged predictors <math|Q<rsub|k>>, and
  radius <math|R<rsub|S>=<around|(|J+7|)>*L>. \PLarger\Q means unique
  selected minimizing frames and predictors, nonempty fallback axial frames,
  <math|100*R<rsub|S>\<leqslant\>f>, and <math|c\<gtr\>1>. A forest <math|H>
  has one block-centred rooted tree per block, height at most <math|4*L>;
  <math|H<rsup|<math-up|fr>>> denotes free bonds.

  Here <math|x> is a coarse <math|\<frak-g\>>-valued bond field and <math|a>
  a free-bond field. The axis field is <math|U<rsup|H><around|(|x,a|)>=e<rsup|a>*\<cal-R\><around|(|e<rsup|x>|)>>
  on free bonds and <math|1> on tree bonds; <math|\<cal-R\>> copies coarse
  links onto crossing fine bonds. With the symmetrized Wilson, row-square,
  cubic and quartic main term <math|\<cal-M\><rsub|p>>,

  <\equation*>
    \<cal-T\><rsup|H><rsub|k><around|(|x,a|)>=\<cal-M\><rsub|p><around|(|W;U<rsup|H><around|(|x,a|)>|)>+\<kappa\>*<big|sum><rsub|b><math-up|price><around*|(|e<rsup|x<rsub|b>>*Q<rsub|k><around|(|U<rsup|H><around|(|x,a|)>|)><rsub|b><rsup|-1>|)>,<space|2em><math-up|price><around|(|U|)>=<around|\<\|\|\>|U-1|\<\|\|\>><rsup|2>/<around|(|2*c<rsub|G><rsup|2>|)>.
  </equation*>

  A critical branch has <math|\<rho\><around|(|0|)>=0>, is analytic at
  <math|0>, and satisfies <math|D<rsub|a>*\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>=0>
  near <math|0> for every tag, with every tested action jointly analytic
  there. For a local exponential-chart Haar density
  <math|J<rsub|<with|math-font|cal*|J>>>, its thermal function is

  <\equation*>
    \<Theta\><rsup|H><rsub|k><around|(|x|)>=<math-up|loop><rsub|W><around|(|U<rsup|H><around|(|x,\<rho\><around|(|x|)>|)>|)>+<tfrac|1|2>log
    det <math-up|Hess><rsub|a>\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>-<big|sum><rsub|e\<in\>H<rsup|<math-up|fr>>>log
    J<rsub|<with|math-font|cal*|J>><around|(|\<rho\><around|(|x|)><rsub|e>|)>.
  </equation*>

  <strong|Proposition III.6.1 (tested second jet; F03).> Let <math|S> be
  larger, <math|H> a forest, <math|B> a bed with floor
  <math|<around|(|a,A|)>> for clip <math|p> on <math|\<Lambda\><rsub|f>>, and
  <math|W> have bounds <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>>, be
  attached to <math|B>, with <math|B> sworn. Assume main-term analyticity
  along analytic families through the identity. For every tag <math|k>,
  <math|\<cal-T\><rsup|H><rsub|k>> is analytic at <math|0>, its value and
  gradient vanish, and for all <math|<around|(|x,a|)>,<around|(|x<rprime|'>,a<rprime|'>|)>>,

  <\equation*>
    D<rsup|2>*\<cal-T\><rsup|H><rsub|k><around|(|0|)><around|[|<around|(|x,a|)>,<around|(|x<rprime|'>,a<rprime|'>|)>|]>=<around|\<langle\>|d*s,M<rsub|B>*d*s<rprime|'>|\<rangle\>>+\<kappa\><around|\<langle\>|x-P*s,x<rprime|'>-P*s<rprime|'>|\<rangle\>>,<space|2em>s=\<iota\>*x+a,<space|1em>s<rprime|'>=\<iota\>*x<rprime|'>+a<rprime|'>.
  </equation*>

  Free-bond fields are extended by zero on tree bonds. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Bid.F03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L78-L81>.

  <strong|Proposition III.6.2 (main-term analyticity; F02).> If <math|W> has
  bounds <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>>, <math|X> is a
  finite-dimensional real normed space, <math|x<rsub|0>\<in\>X>, and
  <math|A<around|(|y|)>> is a configuration family with
  <math|A<around|(|x<rsub|0>|)>=1> and link matrices analytic at
  <math|x<rsub|0>>, then <math|\<cal-M\><rsub|p><around|(|W;A<around|(|y|)>|)>>
  is analytic at <math|x<rsub|0>>. <em|Status:> theorem; supplies III.6.1's
  analyticity assumption. <em|Lean:> <hlink|<verbatim|Bid.F02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L73>.

  <strong|Proposition III.6.3 (vertical gap; F01).> Assume shell comparison
  E02. For every <math|<around|(|G,L,J,K,a|)>> with <math|a\<gtr\>0> there is
  <math|\<eta\>\<gtr\>0> such that, for all sides <math|c,f>, larger <math|S>
  with these parameters, forests <math|H>, clips <math|p>, beds <math|B> with
  floor <math|<around|(|a,A|)>> for clip <math|p> on
  <math|\<Lambda\><rsub|f>> for some <math|A>, and path data <math|W> whose
  tested actions have the analyticity and jets of III.6.1,

  <\equation*>
    D<rsub|a><rsup|2>*\<cal-T\><rsup|H><rsub|k><around|(|0,0|)><around|[|v,v|]>\<geqslant\>\<eta\>*<big|sum><rsub|e><around|\||v<rsub|e>|\|><rsup|2>
  </equation*>

  for every tag <math|k> and free-bond field <math|v>. One may take
  <math|\<eta\>=min <around|(|a,\<kappa\>|)>/<around|(|1+\<beta\>+\<gamma\>|)>>,
  where <math|\<beta\>=2*C<rsub|<math-up|E02>><rsup|2>*L<rsup|4>\<cdot\>4\<cdot\>6<around|\||X|\|><rsup|2>>,
  <math|\<gamma\>=2*L<rsup|4>>, and <math|X=<around|{|-R<rsub|S>,\<ldots\>,R<rsub|S>|}><rsup|4>>.
  Thus <math|\<eta\>> is independent of volume, forest, <math|B> beyond its
  floor, and <math|W>. <em|Status:> theorem conditional on E02, proved in
  III.10. <em|Lean:> <hlink|<verbatim|Bid.F01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L68-L71>.

  <strong|Proposition III.6.4 (branch, tangent and value; F04).> Let <math|S>
  be larger, <math|H> a forest, <math|B,C> beds, <math|p> a clip, <math|W> a
  path datum, and <math|T> towers for <math|<around|(|S,B,C|)>> satisfying
  diagonal identities. Assume every tested action has the analyticity and
  jets of III.6.1, a vertical gap <math|a\<gtr\>0>, and a floor
  <math|<around|(|v,u|)>> for <math|C> on <math|\<Lambda\><rsub|c>> for some
  clip <math|q> and real <math|v,u>. There is a critical branch with

  <\equation*>
    D*\<rho\><around|(|0|)>=<math-up|rel><rsub|H>,<space|2em>D<rsup|2><around|[|\<cal-T\><rsup|H><rsub|k>|(>*\<cdummy\>,\<rho\><around|(|\<cdummy\><around|)||)>|]><around|(|0|)><around|[|x,x<rprime|'>|]>=<around|\<langle\>|d*x,M<rsub|C>*d*x<rprime|'>|\<rangle\>>.
  </equation*>

  For every tag the stationary value is analytic with zero value and
  gradient. <em|Status:> theorem giving a germ. <em|Lean:>
  <hlink|<verbatim|Bid.F04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L86-L90>.

  <strong|Proposition III.6.5 (forest independence; F05).> Let <math|S> be
  larger, <math|H,H<rprime|'>> forests, <math|W> have bounds
  <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>>, and
  <math|\<rho\>,\<rho\><rprime|'>> be critical branches with positive gaps
  <math|a,b>, respectively. Given a local chart ratio
  <math|<with|math-font|cal*|J>>, for every tag and <math|x> near <math|0>
  the stationary values and thermal functions agree between forests.
  <em|Status:> theorem; thermal equality has additive constant zero.
  <em|Lean:> <hlink|<verbatim|Bid.F05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L94-L99>,
  <hlink|<verbatim|Work.F05.same_thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57>.

  <strong|Proposition III.6.6 (assembled branch).> For every
  <math|<around|(|G,L,J,K,a|)>> with <math|a\<gtr\>0> there is
  <math|\<eta\>\<gtr\>0>: for every larger <math|S> with these parameters,
  forest <math|H>, beds <math|B,C>, clips <math|p,q>, path datum <math|W> and
  towers <math|T>, assume diagonal identities for <math|<around|(|S,B,C|)>>,
  floors <math|<around|(|a,A|)>> for <math|<around|(|B,p|)>> on
  <math|\<Lambda\><rsub|f>> and <math|<around|(|v,u|)>> for
  <math|<around|(|C,q|)>> on <math|\<Lambda\><rsub|c>> for some real
  <math|A,v,u>, bounds <math|<around|(|p,\<sigma\>,C<rsub|0>,\<Lambda\>|)>>
  for <math|W>, attachment to <math|B>, and <math|B> sworn. Then III.6.3
  holds with <math|\<eta\>> and there is a branch satisfying III.6.4.
  <em|Status:> theorem with no work-item assumptions. <em|Lean:>
  <hlink|<verbatim|Bid.Scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L102-L106>,
  <hlink|<verbatim|Integrated.stationary_scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232>.

  <strong|Proposition III.6.7 (volume-independent ball).> (a) Assign finite
  horizontal and vertical coordinate sets <math|\<iota\>,\<tau\>> to torus
  sites by <math|\<ell\>>, with multiplicity at most <math|K<rsub|0>>, using
  sup norms and periodic max-distance. Fix
  <math|C<rsub|0>,a<rsub|0>,r,m\<gtr\>0>, integer <math|n\<geqslant\>3>.
  Suppose <math|f:\<bbb-R\><rsup|\<iota\>\<sqcup\>\<tau\>>\<to\>\<bbb-R\>> is
  analytic on <math|<around|\<\|\|\>|z|\<\|\|\>><rsub|\<infty\>>\<less\>r>
  and, for every such <math|z>, <math|1\<leqslant\>k\<leqslant\>n>,
  coordinate tuple and <math|1\<leqslant\>j\<leqslant\>k>,

  <\equation*>
    <around|\||\<partial\><rsub|q<rsub|1>>*\<cdots\>*\<partial\><rsub|q<rsub|k>>*f<around|(|z|)>|\|>\<leqslant\>C<rsub|0>*e<rsup|-a<rsub|0>*<big|sum><rsub|i><math-up|dist><around|(|\<ell\><around|(|q<rsub|j>|)>,\<ell\><around|(|q<rsub|i>|)>|)>>.
  </equation*>

  If <math|\<nabla\><rsub|\<tau\>>*f<around|(|0|)>=0> and
  <math|D<rsup|2><rsub|\<tau\>*\<tau\>>*f<around|(|0|)>\<geqslant\>m*I>,
  there are <math|0\<less\>r<rsub|<math-up|hor>>\<leqslant\>r<rsub|<math-up|zone>>\<leqslant\>r<rsub|<math-up|safe>>\<less\>r>,
  depending only on <math|<around|(|K<rsub|0>,C<rsub|0>,a<rsub|0>,r,m|)>>,
  and a map <math|g:\<bbb-R\><rsup|\<iota\>>\<to\>\<bbb-R\><rsup|\<tau\>>>
  with <math|g<around|(|0|)>=0> such that for
  <math|<around|\<\|\|\>|x|\<\|\|\>><rsub|\<infty\>>\<less\>r<rsub|<math-up|hor>>>,
  <math|g> is analytic at <math|x>, has norm at most
  <math|r<rsub|<math-up|zone>>/2>, and is the unique vertical critical point
  in the closed <math|r<rsub|<math-up|zone>>>-ball.

  (b) Fix <math|G>, real <math|\<mu\>,C>, order <math|J>, choices <math|K>,
  and integer <math|n\<geqslant\>3>. Auxiliary constants can be chosen before
  <math|L> so that (a) applies to every clip <math|p>, real
  <math|\<Lambda\>>, larger <math|S> of order <math|J> with choices <math|K>,
  forest <math|H>, and <math|W> with bounds
  <math|<around|(|p,\<mu\>,C,\<Lambda\>|)>>. One branch serves all tags;
  radii depend on the auxiliary constants, <math|p,L>, but not
  <math|c,f,H,\<Lambda\>> or <math|W> beyond its bounds. Coarse coordinates
  are located at fine block roots. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Receipt.throughout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215>,
  <hlink|<verbatim|Before.graph>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294>.

  <strong|Proposition III.6.8 (localized derivatives).> For every integer
  <math|N\<geqslant\>0>, assume III.6.7(b), choose auxiliary constants at
  order <math|N+3>, and take any branch satisfying its analytic, size and
  uniqueness conclusions. For every tag, on the closed joint
  <math|r<rsub|<math-up|safe>>>-ball the vertical Hessian is analytic,
  <math|\<geqslant\>m/2>, with localized coefficient derivatives through
  <math|N+1>. Every principal sub-block shifted by <math|t*I>,
  <math|t\<geqslant\>0>, is invertible: its inverse is exponentially
  localized with constant <math|O<around|(|<around|(|1+t|)><rsup|-1>|)>>, has
  localized derivatives through <math|N+1> and <math|\<ell\><rsup|2>> norm at
  most <math|<around|(|m/2+t|)><rsup|-1>>; its log determinant is analytic
  with localized derivatives of orders <math|1,\<ldots\>,N+1>, bounded
  proportionally to <math|<around|(|1+t|)><rsup|-1>>. On the horizontal ball,
  <math|g> and its graph have localized derivatives of orders
  <math|1,\<ldots\>,N+2>, the classical action of orders
  <math|1,\<ldots\>,N+3>, and the Hessian along the branch has the same block
  package. Constants depend only on the corresponding bounds and radii. No
  volume-independent value bound for the action or log determinant is
  asserted. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Counter.service>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145>,
  <hlink|<verbatim|BlockPack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84>.

  <strong|Proposition III.6.9 (one iteration level).> Assume III.2's
  pre-<math|L> constants, warm-up and paid schedule; a horizon of beds
  <math|M<rsub|N,m>> and towers with prescribed strip/derivative bounds,
  floors on every torus, diagonal/stack identities and identity diagonal at
  cutoff (<hlink|<verbatim|Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>);
  sworn beds at the periods used; harmonic towers (zero-momentum two-form
  coefficient independent of fine block residue); a levelwise gap quote
  supplied by <hlink|<verbatim|Iteration.post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106>;
  a local chart ratio; and the <hlink|<verbatim|fresh-data
  hypotheses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96>.
  These supply bounded fresh cubic, quartic and loop atoms for every
  admissible datum and family of branches satisfying (i) below,
  classical/thermal matchings on chosen forests/tags per period (possibly
  different choices), and cutoff cubic/quartic atoms.

  For every <math|m\<less\>N> and path datum <math|T> funded at <math|m+1>,
  there are <math|R> funded at <math|m>, branches <math|\<rho\><rsub|p,F>>
  for every period and forest, and <math|\<alpha\>\<in\>\<bbb-R\>>, such
  that:

  <\itemize-minus>
    <item>(i) Each branch satisfies III.6.6 with the
    level-<math|<around|(|m+1|)>> gap, tower map and bed <math|M<rsub|N,m>>.

    <item>(ii) <math|<around|\||\<alpha\>+\<kappa\><rsub|G>*log
    L<rsub|m>|\|>+1\<leqslant\><math-up|drift><rsub|m+1>>.

    <item>(iii) For every period, forest and tag, the stationary tested
    action for <math|T> with the level-<math|<around|(|m+1|)>> clip has the
    same jets through order four as <math|\<cal-M\><rsub|q><around|(|R;e<rsup|x>|)>>,
    with level-<math|m> clip <math|q>.

    <item>(iv) Every thermal function is analytic with positive Hessian
    determinant near zero. For all tags and real parts
    <math|w<rsub|1>,w<rsub|2>> of complex plane waves with every axis/colour
    coefficient of modulus at most one,
  </itemize-minus>

  <\equation*>
    <around|\||D<rsup|2>*\<Theta\><rsup|F><rsub|k><around|(|0|)><around|[|w<rsub|1>,w<rsub|2>|]>-D<rsup|2>*<around|(|\<alpha\>*\<cal-M\><rsub|q><rsup|<around|(|2|)>><around|(|R|)>+<math-up|loop><rsub|R>|)><around|(|0|)><around|[|w<rsub|1>,w<rsub|2>|]>|\|>\<leqslant\><around|\||\<Lambda\><rsub|c>|\|>*\<Gamma\>*\<lambda\><rsub|m+1>*e<rsup|-\<gamma\>*c>.
  </equation*>

  Here <math|\<Gamma\>,\<gamma\>\<gtr\>0> are chosen after <math|L>;
  <math|R,\<alpha\>> serve all periods and forests.
  <math|\<cal-M\><rsup|<around|(|2|)>>> is the full symmetrized
  Wilson-plus-row-square term, including higher-order dependence. There is
  also a funded datum at cutoff <math|N> whose main term has Wilson-energy
  jets through order four. <em|Status:> theorem under these hypotheses.
  <em|Lean:> <hlink|<verbatim|Iteration.extend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150>,
  <hlink|<verbatim|Iteration.peak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L35-L48>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>III.1: block-spin data, forest gauges, root-trivial gauge
    invariance, tower identities and Haar-preserving forest changes
    (<hlink|<verbatim|Profiles.spending>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Profiles.lean#L57-L77>).

    <item>III.10: E02 shell comparison (<hlink|<verbatim|Work.E02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244>);
    III.3: free kernels; III.2: constant schedule; III.9: one-loop slope
    <math|\<kappa\><rsub|G>>.

    <item>I.1, II.1\UII.2: lattice forms, group geometry, path bounds;
    III.16: analytic derivatives and jets.

    <item>Analytic implicit/inverse function theorems, Weierstrass normal
    convergence, change of variables, Banach contraction, Combes\UThomas
    estimates; Baªaban's background-field method.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Forest gauge removes blockwise gauge directions; curvature and the
  predictor penalty control the remaining links. The vertical gap gives a
  stationary germ, with tangent and quadratic value identified by the towers.
  Under forest changes, the Hessian's squared Jacobian cancels the
  Haar-density ratio in the thermal function.

  Exponential inverse-Hessian decay supplies a volume-independent sup-norm
  bound for Newton contraction. Differentiated stationarity and resolvent
  identities control localized derivatives. The iteration joins transported
  atoms to supplied fresh classical and one-loop data.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Analyticity and jets.> Exponential summability gives
    normally convergent holomorphic row/atom series; quadratic limits and the
    floor identity give III.6.1 after chart composition.
    <hlink|<verbatim|Work.F02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L141-L143>,
    <hlink|<verbatim|Work.F03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L159-L175>.
    <em|(proof read; metric and cubic/quartic limits: statement only)>

    <item><strong|Gap.> Linearize E02, square and sum link bounds, then use
    the floor and penalty to control vertical directions.
    <hlink|<verbatim|Work.F01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L266-L311>.

    <item><strong|Branch and tangent.> Tags agree near identity; apply the
    analytic implicit function theorem, then differentiate stationarity and
    use <math|D<rsup|2>*\<cal-T\><around|(|0|)><around|[|<around|(|y,b|)>,<around|(|x,<math-up|rel><rsub|H>x|)>|]>=<around|\<langle\>|d*y,M<rsub|C>*d*x|\<rangle\>>>
    to identify the tangent and stationary quadratic value.
    <hlink|<verbatim|Work.F04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L149-L159>.

    <item><strong|Forest comparison.> Transport critical graphs by
    root-trivial gauge transformations; Haar change of variables cancels the
    determinant Jacobian. <hlink|<verbatim|Work.F05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L60-L67>.

    <item><strong|Uniform radius.> Combes\UThomas decay gives summable
    inverse rows; Newton contraction yields the ball, using a direct shell
    estimate and Wilson positivity without beds or attachment.
    <hlink|<verbatim|inverse_sealed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L171-L208>,
    <hlink|<verbatim|Receipt.throughout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215>,
    <hlink|<verbatim|Before.graph>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294>.
    <em|(proof read; direct shell/action-derivative estimates: statement
    only)>

    <item><strong|Localized jets.> Differentiate
    <math|D<around|(|M<rsup|-1>|)>=-M<rsup|-1>*<around|(|D*M|)>*M<rsup|-1>>
    and <math|D*log det M=<math-up|tr><around|(|M<rsup|-1>*D*M|)>>, control
    the index sums by exponential convolution, and compose with the
    stationary graph. <hlink|<verbatim|inverse_lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108>,
    <hlink|<verbatim|Counter.service>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145>.
    <em|(proof read for inverse induction and assembly; convolution and
    composition: statement only)>

    <item><strong|Iteration.> Join fresh atoms to inherited atoms, whose
    cubic and quartic charges carry factors <math|L<rsup|-2>> and
    <math|L<rsup|-4>>; use the schedule for the drift bound. Match jets on
    reference forests and transfer the classical and thermal matchings to
    every forest and tag. <hlink|<verbatim|Iteration.extend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150>.
    <em|(proof read for assembly; inherited-atom bounds and matching:
    statement only)>
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Curvature alone leaves flat and gauge directions. The gap is uniform in
  volume; no lower bound uniform in <math|L> is asserted. A spectral gap
  alone gives no uniform sup-norm radius: exponential summability is also
  needed. The conclusions concern local stationarity and ball uniqueness,
  without global constrained minimization.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <\itemize-minus>
    <item><math|P>: predictor derivative; <math|\<iota\>>: linearized
    replica; <math|d>: lattice exterior derivative.

    <item>A bed <math|B> consists of translation-invariant plaquette kernels,
    with metric <math|M<rsub|B>>, roots <math|R<rsub|B>> and diagonal kernel
    <math|D<rsub|B>> (<hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>).
    A floor <math|<around|(|a,A|)>> includes
    <math|M<rsub|B>=c<rsub|p>*I+R<rsub|B><rsup|\<top\>>*R<rsub|B>>,
    metric/diagonal inverse identities, <math|<wide|M|^><rsub|B><around|(|0|)>=I>,
    <math|M<rsub|B>*d=D<rsub|B>*d>, symmetry, and quadratic bounds
    <math|a*I\<leqslant\>M<rsub|B>,D<rsub|B>\<leqslant\>A*I>
    (<hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>).
    Attachment identifies row coefficients, summed by offset and plaquette
    type, with <math|R<rsub|B>>; swornness means
    signed-coordinate-permutation invariance of
    <math|<around|\<langle\>|d*A,M<rsub|B>*d*A|\<rangle\>>>
    (<hlink|<verbatim|Attached>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46>,
    <hlink|<verbatim|Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>).

    <item>Towers satisfy <hlink|<verbatim|Towers.Diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86>.
    With <math|K<rsub|B>=d<rsup|\<top\>>*M<rsub|B>*d> and linearized block
    average <math|<wide|Q|\<bar\>>>, their map obeys
    <math|K<rsub|B>*\<cal-W\>=<wide|Q|\<bar\>><rsup|\<top\>>*K<rsub|C>>,
    <math|<wide|Q|\<bar\>>\<cal-W\>=1-\<kappa\><rsup|-1>*K<rsub|C>>;
    <math|<math-up|rel><rsub|H>=<around|(|<wide|\<cal-W\>|^><rsub|H>-\<iota\>|)>\|<rsub|H<rsup|<math-up|fr>>>>,
    where <math|<wide|\<cal-W\>|^><rsub|H>> is its forest-gauge transform.

    <item>A clip <math|p> carries <math|c<rsub|p>\<gtr\>0>. Path data
    <math|W> contain row series of transported plaquette variables and
    invariant loop, cubic and quartic atoms. Bounds
    <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>> require exponential-length
    summability, row/cubic/quartic bounds <math|C>, loop bound
    <math|\<Lambda\>>, row normalization <math|c<rsub|p>*\<delta\><rsub|i*j>+<big|sum><rsub|k>r<rsub|k*i>*r<rsub|k*j>=\<delta\><rsub|i*j>>,
    and summable vanishing loop zeroth and first offset moments in every
    offset component, for every pair of plaquette types and colours
    (<hlink|<verbatim|Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>).
    Here <math|r<rsub|i*j>> sums row-<math|i> coefficients of plaquette type
    <math|j>. \PFunded\Q further specifies root-kernel rows on fixed
    coordinate paths, level bounds and weighted cubic/quartic caps
    (<hlink|<verbatim|Work item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39>).

    <item>A local chart ratio has positive measurable analytic density
    <math|J<rsub|<with|math-font|cal*|J>>>,
    <math|J<rsub|<with|math-font|cal*|J>><around|(|0|)>=1>, on a
    positive-radius ball where <math|exp> is injective with open image; a
    positive scale times this density pushes forward to probability Haar
    measure restricted to that image (<hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>).
    The thermal Hessian uses the orthonormal colour basis.

    <item>Localization means <math|<around|\||\<partial\><rsub|q<rsub|1>>*\<cdots\>*\<partial\><rsub|q<rsub|k>>*A<rsub|i*j>|\|>\<leqslant\>C<rsub|k>*e<rsup|-a<rsub|k>*<around|(|<math-up|dist><around|(|i,j|)>+<big|sum><rsub|\<nu\>><math-up|dist><around|(|i,q<rsub|\<nu\>>|)>|)>>>
    using assigned sites; omit <math|j> for maps, and use III.6.7(a) for
    scalars.
  </itemize-minus>

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The fresh classical/quantum matching assumptions remain undischarged here:
  <hlink|<verbatim|IterationRecipe.stocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L102-L112>
  retains <hlink|<verbatim|Heating>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L83-L97>.
  Comparison of uniform radii with downstream small-field thresholds, the
  all-level induction (III.12), and geometric realization of period
  comparison remain unverified. F06\UF09 and primary-integral/atom-regularity
  supporting packages have statements only; rotation/Ward material belongs to
  VI.1.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-6.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.16|III-16.tm>, <hlink|IV.1|IV-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|VI.1|VI-1.tm>, <hlink|III.10|III-10.tm>, <hlink|III.3|III-3.tm>,
  <hlink|V.2|V-2.tm>, <hlink|V.1|V-1.tm>, <hlink|III.2|III-2.tm>,
  <hlink|VIII.1|VIII-1.tm>.

  <strong|Referenced by:> <hlink|III.10|III-10.tm>, <hlink|III.2|III-2.tm>,
  <hlink|VII.2|VII-2.tm>, <hlink|III.4|III-4.tm>, <hlink|III.14|III-14.tm>,
  <hlink|III.3|III-3.tm>, <hlink|III.15|III-15.tm>, <hlink|III.7|III-7.tm>,
  <hlink|III.9|III-9.tm>, <hlink|III.13|III-13.tm>, <hlink|III.12|III-12.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|III.11|III-11.tm>, <hlink|III.8|III-8.tm>,
  <hlink|III.5|III-5.tm>, <hlink|VIII.1|VIII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 21,329 attributed lines; 2,681 line-counted
  declarations; 3,169 assigned declaration names. Of the assigned names,
  2,781 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|outer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121>
    and the results it chains to \V 4,431 lines.

    <item>work package <hlink|<verbatim|YM/Planned/PRIMARY_INTEGRAL_295/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295>
    \V 3,662 lines.

    <item>work package <hlink|<verbatim|YM/Push/STATIONARY_UNIFORM/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM>
    \V 3,274 lines.

    <item>work package <hlink|<verbatim|YM/Extra/ITERATION_NO_LOSS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS>
    \V 1,700 lines.

    <item>work package <hlink|<verbatim|YM/Further/PHYSICAL_PERIOD_LIMIT_F933/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933>
    \V 1,262 lines.

    <item>work package <hlink|<verbatim|YM/Planned/STATIONARY_JET_PORT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT>
    \V 1,123 lines.

    <item>work package <hlink|<verbatim|YM/Next/ROTATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS>
    \V 1,080 lines.

    <item>work package <hlink|<verbatim|YM/Work/F05/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05>
    \V 731 lines.

    <item>work package <hlink|<verbatim|YM/Work/F03/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03>
    \V 580 lines.

    <item>work package <hlink|<verbatim|YM/Work/F06/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06>
    \V 499 lines.

    <item>work package <hlink|<verbatim|YM/Planned/ATOM_REGULAR_ESTIMATE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE>
    \V 474 lines.

    <item>work package <hlink|<verbatim|YM/Work/F08/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08>
    \V 416 lines.

    <item>work package <hlink|<verbatim|YM/Next/WARD_BIN/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/WARD_BIN>
    \V 370 lines.

    <item>work package <hlink|<verbatim|YM/Work/F02/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02>
    \V 247 lines.

    <item>work package <hlink|<verbatim|YM/Work/F04/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04>
    \V 166 lines.

    <item>work package <hlink|<verbatim|YM/Analytic/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analytic>
    \V 107 lines.

    <item>work package <hlink|<verbatim|YM/Further/ROOTED_INTERACTING_REMAINDER/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ROOTED_INTERACTING_REMAINDER>
    \V 4 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Bid.pinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166>

    <item><hlink|<verbatim|Cops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L44-L47>

    <item><hlink|<verbatim|Bid.E02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52>

    <item><hlink|<verbatim|Bid.cospons>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113>

    <item><hlink|<verbatim|gaugeFiscal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L31-L32>

    <item><hlink|<verbatim|stretch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L34-L36>

    <item><hlink|<verbatim|bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L38>

    <item><hlink|<verbatim|crop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L39>

    <item><hlink|<verbatim|Comptroller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45>

    <item><hlink|<verbatim|Prismatic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L47>

    <item><hlink|<verbatim|Fires>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L59-L62>

    <item><hlink|<verbatim|Larger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64>

    <item><hlink|<verbatim|HeatG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84>

    <item><hlink|<verbatim|Calibration.lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Calibration.lean#L66-L94>

    <item><hlink|<verbatim|all_forests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L80-L89>

    <item><hlink|<verbatim|transplant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L91-L103>

    <item><hlink|<verbatim|OnShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L41-L45>

    <item><hlink|<verbatim|Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33>

    <item><hlink|<verbatim|select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L50-L55>

    <item><hlink|<verbatim|resume>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L70-L112>

    <item><hlink|<verbatim|Iteration.sweep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L18-L35>

    <item><hlink|<verbatim|Luna.uniformZero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L166-L172>

    <item><hlink|<verbatim|Fresco.subscribed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Fresco.lean#L98-L148>

    <item><hlink|<verbatim|PriceGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101>

    <item><hlink|<verbatim|SameJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106>

    <item><hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>

    <item><hlink|<verbatim|mainTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28>

    <item><hlink|<verbatim|secondTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L30>

    <item><hlink|<verbatim|replica>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36>

    <item><hlink|<verbatim|linearCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L38-L39>

    <item><hlink|<verbatim|AxisChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L56>

    <item><hlink|<verbatim|lifting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L60-L61>

    <item><hlink|<verbatim|noiseTaylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L79>

    <item><hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84>

    <item><hlink|<verbatim|Critical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91>

    <item><hlink|<verbatim|relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95>

    <item><hlink|<verbatim|Guessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98>

    <item><hlink|<verbatim|ChartRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26>

    <item><hlink|<verbatim|hessian>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44>

    <item><hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>

    <item><hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>

    <item><hlink|<verbatim|extracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27>

    <item><hlink|<verbatim|K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>

    <item><hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>

    <item><hlink|<verbatim|stationed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L81-L91>

    <item><hlink|<verbatim|along_block>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L56-L59>

    <item><hlink|<verbatim|Counter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88>

    <item><hlink|<verbatim|Counter.background>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L95-L112>

    <item><hlink|<verbatim|wallet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L110-L130>

    <item><hlink|<verbatim|zeroGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L132-L133>

    <item><hlink|<verbatim|symbolic_gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L137-L166>

    <item><hlink|<verbatim|Receipt.adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L101-L176>

    <item><hlink|<verbatim|Receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33>

    <item><hlink|<verbatim|reserveX>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L42-L43>

    <item><hlink|<verbatim|Receipt.snaps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L62-L76>

    <item><hlink|<verbatim|Receipt.priced_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92>

    <item><hlink|<verbatim|Before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L142-L158>

    <item><hlink|<verbatim|pre_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L160-L167>

    <item><hlink|<verbatim|Before.receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L196-L211>

    <item><hlink|<verbatim|Before.full_pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L216-L239>

    <item><hlink|<verbatim|Before.Service>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L245-L251>

    <item><hlink|<verbatim|tiltedCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L157-L168>

    <item><hlink|<verbatim|Sealed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L41>

    <item><hlink|<verbatim|Scatter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Scatter.lean#L68-L69>

    <item><hlink|<verbatim|StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25>

    <item><hlink|<verbatim|StepData.Choices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34>

    <item><hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>

    <item><hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>

    <item><hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>

    <item><hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>

    <item><hlink|<verbatim|Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>

    <item><hlink|<verbatim|sum_ports_sq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L136-L165>

    <item><hlink|<verbatim|F01.sum_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L174-L206>

    <item><hlink|<verbatim|curl_floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L218-L230>

    <item><hlink|<verbatim|chord_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L22-L28>

    <item><hlink|<verbatim|vertical_hessian>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L233-L250>

    <item><hlink|<verbatim|F01.hess_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L252-L262>

    <item><hlink|<verbatim|mainTerm_contDiffAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L126-L139>

    <item><hlink|<verbatim|rowExt_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L30-L41>

    <item><hlink|<verbatim|atomExt_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L51-L57>

    <item><hlink|<verbatim|F02.analytic_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02/Series.lean#L57-L74>

    <item><hlink|<verbatim|inclusion_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L121-L149>

    <item><hlink|<verbatim|F03.from_flat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L151-L156>

    <item><hlink|<verbatim|inclusion_works>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L67-L80>

    <item><hlink|<verbatim|F03.live_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L86-L119>

    <item><hlink|<verbatim|F03.hessian_of_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L102-L117>

    <item><hlink|<verbatim|hessian_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L120-L142>

    <item><hlink|<verbatim|noise_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L107-L128>

    <item><hlink|<verbatim|flat_jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L168-L188>

    <item><hlink|<verbatim|quadratic_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L23-L38>

    <item><hlink|<verbatim|main_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L63-L77>

    <item><hlink|<verbatim|metric_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Metric.lean#L135-L140>

    <item><hlink|<verbatim|F04.stationary_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L128-L147>

    <item><hlink|<verbatim|F04.invertible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L32-L60>

    <item><hlink|<verbatim|exists_branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L62-L86>

    <item><hlink|<verbatim|F04.tangent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L88-L126>

    <item><hlink|<verbatim|F04.prediction_germ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L36-L61>

    <item><hlink|<verbatim|tested_germ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L78-L86>

    <item><hlink|<verbatim|F04.test_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Pairing.lean#L49-L66>

    <item><hlink|<verbatim|mainTerm_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L55-L59>

    <item><hlink|<verbatim|root_noise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L66-L75>

    <item><hlink|<verbatim|F05.tested_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L87-L92>

    <item><hlink|<verbatim|loop_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L94-L98>

    <item><hlink|<verbatim|station_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Calculus.lean#L112-L150>

    <item><hlink|<verbatim|F05.graph_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L37-L67>

    <item><hlink|<verbatim|hessian_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79>

    <item><hlink|<verbatim|F05.toll_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Jacobian.lean#L129-L142>

    <item><hlink|<verbatim|move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85>

    <item><hlink|<verbatim|switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45>

    <item><hlink|<verbatim|YM/Work/F01>\U<verbatim|F09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-6-1>

  <\itemize-minus>
    <item><strong|K-III.6.1> <hlink|<verbatim|harmonic_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06/Harmonic.lean#L99-L126>
    <em|(key result)> \V If a block-row operator has spectral margin v and
    strip bounds, then its zero-mode quadratic form is bounded below by v
    times the squared norm.
  </itemize-minus>

  <label|k-iii-6-2>

  <\itemize-minus>
    <item><strong|K-III.6.2> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128>
    <em|(main result)> \V The all-phase positivity margin statement F06
    holds, repaired via near-harmonic estimates.
  </itemize-minus>

  <label|k-iii-6-3>

  <\itemize-minus>
    <item><strong|K-III.6.3> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146>
    <em|(key result)> \V Stack construction at uniform widths yields actual
    kernels for every compatible pair of tori with pre-L prices.
  </itemize-minus>

  <label|k-iii-6-4>

  <\itemize-minus>
    <item><strong|K-III.6.4> <hlink|<verbatim|hessian_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L118-L131>
    <em|(numbered result)> \V Hessian determinants in the two graph spaces
    differ by the square of the Jacobian determinant of the coordinate change
    near zero.
  </itemize-minus>

  <label|k-iii-6-5>

  <\itemize-minus>
    <item><strong|K-III.6.5> <hlink|<verbatim|same_thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57>
    <em|(key result)> \V Thermal (shell) functions computed from two
    different graphs with critical points agree near zero.
  </itemize-minus>

  <label|k-iii-6-6>

  <\itemize-minus>
    <item><strong|K-III.6.6> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150>
    <em|(key result)> \V The period-by-period algebra of the stack satisfies
    the F09 specification, giving retained support, price ordering and
    commitment.
  </itemize-minus>

  <label|k-iii-6-7>

  <\itemize-minus>
    <item><strong|K-III.6.7> <hlink|<verbatim|link_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108>
    <em|(numbered result)> \V Each fine-bond component of a tree-vanishing
    direction is bounded by a constant times nearby plaquette color
    differences plus a correction term.
  </itemize-minus>

  <label|k-iii-6-8>

  <\itemize-minus>
    <item><strong|K-III.6.8> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201>
    <em|(key result)> \V Positive spectral margin implies existence of root
    rows with controlled strip bounds, as required by the later stages.
  </itemize-minus>

  <label|k-iii-6-9>

  <\itemize-minus>
    <item><strong|K-III.6.9> <hlink|<verbatim|estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/MomentFD.lean#L105-L148>
    <em|(numbered result)> \V If the 2k-th derivative of a smooth
    characteristic function is bounded by C, then the 2k-th moment of the
    measure is finite and at most C.
  </itemize-minus>

  <label|k-iii-6-10>

  <\itemize-minus>
    <item><strong|K-III.6.10> <hlink|<verbatim|accrue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Trellis.lean#L157-L170>
    <em|(numbered result)> \V If all n-fold finite differences are bounded by
    C on a window, the Newton remainder is bounded by C times size to the n.
  </itemize-minus>

  <label|k-iii-6-11>

  <\itemize-minus>
    <item><strong|K-III.6.11> <hlink|<verbatim|anchored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE/Pin.lean#L94-L134>
    <em|(numbered result)> \V On a healthy configuration there is a gauge
    from the origin with link chord distance bounded by 4t(1+distance) in a
    cube.
  </itemize-minus>

  <label|k-iii-6-12>

  <\itemize-minus>
    <item><strong|K-III.6.12> <hlink|<verbatim|moment_probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Rays.lean#L108-L111>
    <em|(numbered result)> \V The n-th derivative at zero of a translated
    pulse function equals i^n times the n-th directional moment of the
    weight.
  </itemize-minus>

  <label|k-iii-6-13>

  <\itemize-minus>
    <item><strong|K-III.6.13> <hlink|<verbatim|throughout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215>
    <em|(key result)> \V The stationary branch is given by a single analytic
    graph on the whole stationarity corridor, via a uniform sup-radius
    implicit function theorem for score tensors.
  </itemize-minus>

  <label|k-iii-6-14>

  <\itemize-minus>
    <item><strong|K-III.6.14> <hlink|<verbatim|tile_detects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Bigrade.lean#L141-L159>
    <em|(numbered result)> \V A symmetric tensor vanishing on a radial probe
    tile vanishes on all directions of the corresponding total weight.
  </itemize-minus>

  <label|k-iii-6-15>

  <\itemize-minus>
    <item><strong|K-III.6.15> <hlink|<verbatim|spinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104>
    <em|(key result)> \V Mixed second derivatives of the torus statements for
    matched systems differ by M times small minus large by at most an
    exponentially small tail in N.
  </itemize-minus>

  <label|k-iii-6-16>

  <\itemize-minus>
    <item><strong|K-III.6.16> <hlink|<verbatim|lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Energy.lean#L133-L145>
    <em|(numbered result)> \V The spectral response kernel is bounded below
    by a constant times 1/(w+E) times decay factors for all energies.
  </itemize-minus>

  <label|k-iii-6-17>

  <\itemize-minus>
    <item><strong|K-III.6.17> <hlink|<verbatim|inverse_lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108>
    <em|(key result)> \V Jet (derivative) bounds on a matrix and a bound on
    its base inverse yield localized derivative bounds of all orders for the
    inverse.
  </itemize-minus>

  <label|k-iii-6-18>

  <\itemize-minus>
    <item><strong|K-III.6.18> <hlink|<verbatim|establish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L88-L108>
    <em|(key result)> \V Under cable bounds at order N+1, a reusable block
    package giving order- and radius-sensitive log and inverse jet estimates
    exists.
  </itemize-minus>

  <label|k-iii-6-19>

  <\itemize-minus>
    <item><strong|K-III.6.19> <hlink|<verbatim|sticker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Oval.lean#L167-L179>
    <em|(key result)> \V Chain rule estimate to order k for comparisons of
    genuine and predicted paths yields uniform bounds independent of e and t
    in (0,1].
  </itemize-minus>

  <label|k-iii-6-20>

  <\itemize-minus>
    <item><strong|K-III.6.20> <hlink|<verbatim|generated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/SplitRadial.lean#L153-L169>
    <em|(numbered result)> \V Every polynomial log-link direction of weight
    at most a is generated by linear parts of a holonomy variation and site
    gauge variations.
  </itemize-minus>

  <label|k-iii-6-21>

  <\itemize-minus>
    <item><strong|K-III.6.21> <hlink|<verbatim|pure_moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Bijets.lean#L99-L111>
    <em|(numbered result)> \V The moments of powers of a single axis-probe
    form equal the principal prediction exactly on every row, for low order.
  </itemize-minus>

  <label|k-iii-6-22>

  <\itemize-minus>
    <item><strong|K-III.6.22> <hlink|<verbatim|pure_alloc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Unload.lean#L230-L278>
    <em|(key result)> \V For homogeneous symmetric tensors, the outgoing
    expansion decomposes into graded pieces with norm bounds
    C\<\|\|\>A\<\|\|\>L^{-(i+1)} and exact top-degree weight L^{n+1} times
    the original diagonal.
  </itemize-minus>

  <label|k-iii-6-23>

  <\itemize-minus>
    <item><strong|K-III.6.23> <hlink|<verbatim|deliver>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/RollFilm.lean#L53-L105>
    <em|(key result)> \V For positive scale, there is a uniform constant C
    such that for every flight and prism there is a prism related to it by a
    reel bound with constant C.
  </itemize-minus>

  <label|k-iii-6-24>

  <\itemize-minus>
    <item><strong|K-III.6.24> <hlink|<verbatim|link_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/LCharge.lean#L145-L251>
    <em|(key result)> \V For any gauge, scale, and kernel choices there exist
    constants such that the pre-L pricing harness holds for the shell test.
  </itemize-minus>

  <label|k-iii-6-25>

  <\itemize-minus>
    <item><strong|K-III.6.25> <hlink|<verbatim|cancellation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/FlatCancel.lean#L123-L132>
    <em|(key result)> \V If directional leading terms along log-link curves
    vanish below order q, then iterated derivatives of f at 0 vanish on
    polynomial-space inputs of total weight below q.
  </itemize-minus>

  <label|k-iii-6-26>

  <\itemize-minus>
    <item><strong|K-III.6.26> <hlink|<verbatim|lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Columns.lean#L115-L120>
    <em|(key result)> \V The column function's iterated derivative at 0
    vanishes on tuples of potentials whose total weight is below the column's
    grade.
  </itemize-minus>

  <label|k-iii-6-27>

  <\itemize-minus>
    <item><strong|K-III.6.27> <hlink|<verbatim|upper_end>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/HighTable.lean#L88-L122>
    <em|(numbered result)> \V Every tensor coefficient entry before removing
    the diagonal is bounded by a constant times a power of the unit step.
  </itemize-minus>

  <label|k-iii-6-28>

  <\itemize-minus>
    <item><strong|K-III.6.28> <hlink|<verbatim|billFor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86>
    <em|(key result)> \V Uniformly in data, the true probe path and the
    forecast path agree up to a C^n fuzz of size
    D(1+B)exp(-\<sigma\>\<chi\>/2) near the origin.
  </itemize-minus>

  <label|k-iii-6-29>

  <\itemize-minus>
    <item><strong|K-III.6.29> <hlink|<verbatim|preBill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Ledger.lean#L57-L74>
    <em|(key result)> \V There is a uniform constant C such that every entry
    of the receipt matrix is bounded by C times a power of the unit step
    determined by the grade.
  </itemize-minus>

  <label|k-iii-6-30>

  <\itemize-minus>
    <item><strong|K-III.6.30> <hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/East.lean#L112-L139>
    <em|(key result)> \V There is a uniform constant C such that the primary
    transition matrix has a leading (triangular with bounded entries)
    structure for all flights and parameters in the blend.
  </itemize-minus>

  <label|k-iii-6-31>

  <\itemize-minus>
    <item><strong|K-III.6.31> <hlink|<verbatim|moments>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L178-L211>
    <em|(key result)> \V All transverse spectral moments of the
    reflection-positive measure are finite with bound polynomial in inverse
    margin r.
  </itemize-minus>

  <label|k-iii-6-32>

  <\itemize-minus>
    <item><strong|K-III.6.32> <hlink|<verbatim|pay_moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L246-L303>
    <em|(numbered result)> \V Some inverse power weight in the time energy
    times transverse moments is integrable for the pressed measure.
  </itemize-minus>

  <label|k-iii-6-33>

  <\itemize-minus>
    <item><strong|K-III.6.33> <hlink|<verbatim|walk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Walk.lean#L159-L172>
    <em|(key result)> \V For a mixed cluster of axes with nonpositive
    weights, the correction cost along an axis is bounded by any positive
    budget once the scale parameter is large, for suitably small growth rate.
  </itemize-minus>

  <label|k-iii-6-34>

  <\itemize-minus>
    <item><strong|K-III.6.34> <hlink|<verbatim|cross_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Cross.lean#L152-L189>
    <em|(numbered result)> \V A Cauchy-Schwarz bound: the cross term is at
    most t times one weighted integral plus the other divided by t.
  </itemize-minus>

  <label|k-iii-6-35>

  <\itemize-minus>
    <item><strong|K-III.6.35> <hlink|<verbatim|one_mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mode.lean#L99-L183>
    <em|(numbered result)> \V One-variable subtraction on fixed transverse
    profiles yields a budget for tensor-product tests after raising the
    time-collision order.
  </itemize-minus>

  <label|k-iii-6-36>

  <\itemize-minus>
    <item><strong|K-III.6.36> <hlink|<verbatim|line_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean#L215-L239>
    <em|(key result)> \V For a collinear mixed word, projected cluster costs
    on a line obey an explicit budget with missing-axis price.
  </itemize-minus>

  <label|k-iii-6-37>

  <\itemize-minus>
    <item><strong|K-III.6.37> <hlink|<verbatim|mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean#L115-L180>
    <em|(key result)> \V The cone-weighted integrals of the conserved stress
    tensor are integrable and satisfy a decaying budget with exponent gained
    from the low-energy estimate.
  </itemize-minus>

  <label|k-iii-6-38>

  <\itemize-minus>
    <item><strong|K-III.6.38> <hlink|<verbatim|exterior_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120>
    <em|(main result)> \V Exterior packets of the Ward integrand against
    position tests have integrals of budget -101, i.e. decay faster than any
    chosen power.
  </itemize-minus>

  <label|k-iii-6-39>

  <\itemize-minus>
    <item><strong|K-III.6.39> <hlink|<verbatim|blows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114>
    <em|(key result)> \V At external distances the actual Ward integrand is
    eventually integrable and its integrals decay at budget rate -1.
  </itemize-minus>

  <label|k-iii-6-40>

  <\itemize-minus>
    <item><strong|K-III.6.40> <hlink|<verbatim|flux_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113>
    <em|(key result)> \V The flux of a stress tensor against a compactly
    supported smooth field equal to a rotation generator near the points
    equals minus the local spin turn.
  </itemize-minus>

  <label|k-iii-6-41>

  <\itemize-minus>
    <item><strong|K-III.6.41> <hlink|<verbatim|outer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121>
    <em|(main result)> \V Under the hierarchy and conservation hypotheses,
    the line-sum property holds and the local turn vanishes on configuration
    points lying on a line.
  </itemize-minus>

  <label|k-iii-6-42>

  <\itemize-minus>
    <item><strong|K-III.6.42> <hlink|<verbatim|service>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145>
    <em|(key result)> \V The actual stationary branch and Hessian supply the
    counter interface needed for matching at every funded use, without extra
    assumptions.
  </itemize-minus>

  <label|k-iii-6-43>

  <\itemize-minus>
    <item><strong|K-III.6.43> <hlink|<verbatim|extend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150>
    <em|(key result)> \V There exist path data, a branch, and a weight
    forming an admissible move extending a same-estimate propagation from
    cutoff to level zero.
  </itemize-minus>

  <label|k-iii-6-44>

  <\itemize-minus>
    <item><strong|K-III.6.44> <hlink|<verbatim|onMeeting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Enclosures.lean#L107-L144>
    <em|(key result)> \V Given a classical matching of the stationary branch,
    a fixed-L Taylor remainder estimate with uniform sup bounds holds for the
    real color-entry configuration.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.5 Cluster expansion of the polymer
  gas|III-5.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-6.tm>|<hlink|III.7 Matching the Wilson energy to fourth
  order \<rightarrow\>|III-7.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.6. The stationary branch: background field of
    the effective action \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|5>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|6>>
    <associate|6-notation|<tuple|6|6>>
    <associate|7-what-remains-unexplained|<tuple|7|6>>
    <associate|additional-source-locations|<tuple|9.1|8>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|8>>
    <associate|auto-11|<tuple|10|12>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|6>>
    <associate|auto-8|<tuple|8|7>>
    <associate|auto-9|<tuple|9|7>>
    <associate|code-dependencies|<tuple|8|7>>
    <associate|iii6-the-stationary-branch-background-field-of-the-effective-action|<tuple|?|1>>
    <associate|k-iii-6-1|<tuple|10|12>>
    <associate|k-iii-6-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-12|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-13|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-14|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-15|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-16|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-17|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-18|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-6-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-20|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-21|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-22|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-23|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-24|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-25|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-26|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-27|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-28|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-6-29|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-30|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-31|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-32|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-33|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-34|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-35|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-36|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-37|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-38|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-6-39|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-6-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-40|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-6-41|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-6-42|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-6-43|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-6-44|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-6-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-6-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|7>>
    <associate|unit-difficulty|<tuple|7|5>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|unit-limitations|<tuple|<with|mode|<quote|math>|<rigid|->>|6>>
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