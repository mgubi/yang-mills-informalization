<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.8 Connected activities and backward
  dependence cones (notes)|III-8.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-9.tm>|<hlink|III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms (notes) \<rightarrow\>|III-10.tm>>

  <ym-title|III.9. The marginal flow: the running coupling and its reset \V
  detailed notes><label|iii9-the-marginal-flow-the-running-coupling-and-its-reset--detailed-notes>

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

    <with|par-left|1tab|4.1 Reference scales
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The Wilson start-up
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 The scalar response
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 The reset step
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Continuity of the transport
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Entry thresholds
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Assembly and the running law
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Auxiliary results
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.9: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-9.tm>.
  </quotation>

  <hlink|Unit page|../units/III-9.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> chapter 21: <hlink|<verbatim|YM/UVNext/COUPLING_RESET/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET>,
  <hlink|<verbatim|YM/AnalyticBridge/VERIFIED_RESET_STEP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP>,
  <hlink|<verbatim|YM/Extra/WILSON_STARTUP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP>,
  <hlink|<verbatim|YM/Push/BETA_TRANSPORT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT>,
  <hlink|<verbatim|YM/Further/STRONG_STARTUP_CREDIT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT>,
  <hlink|<verbatim|YM/Push/PRICE_COMPILER/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER>,
  <hlink|<verbatim|YM/Extra/MULTISOURCE_BOUNDS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS>.
  It also includes five small packages: <hlink|<verbatim|PhysicalNext/UNMASKED_THROUGH_LAUNCH>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH>,
  <hlink|<verbatim|Planned/RECIPE_STARTUP_PORT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT>,
  <hlink|<verbatim|R2I/Wind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Wind>,
  <hlink|<verbatim|Further/THRESHOLD_SOURCE_RESTART>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/THRESHOLD_SOURCE_RESTART>
  and <hlink|<verbatim|PhysicalNext/SERVICE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/SERVICE>.
  The interfaces this unit fills are in <hlink|<verbatim|YM/RG/History.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean>
  and <hlink|<verbatim|YM/PCalc/Band.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean>,
  both in unit III.1. <strong|Size:> 7,215 lines in the main-theorem closure:

  <block|<tformat|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|package>>|<cell|<strong|lines>>>|<row|<cell|verified
  reset step>|<cell|2,659>>|<row|<cell|Wilson
  start-up>|<cell|2,422>>|<row|<cell|transport of the
  coupling>|<cell|652>>|<row|<cell|coupling
  reset>|<cell|592>>|<row|<cell|multi-source
  bounds>|<cell|344>>|<row|<cell|each remaining package>|<cell|at most
  213>>>>>

  <strong|Conventions.>

  <\itemize-minus>
    <item><strong|Levels.> Levels <math|m=0,1,\<ldots\>,N> run from the
    coarsest to the finest:

    <\itemize-minus>
      <item><math|m=0> is the torus of side <math|L<rsub|p>> at unit spacing;
      the sides <math|L<rsub|p>> are multiples of <math|4> and strictly
      increase with <math|p>;

      <item><math|m=N> is the Wilson lattice.
    </itemize-minus>

    <item><strong|Blocking.> The step <math|m+1\<to\>m> blocks by an odd
    factor <math|L<rsub|m>\<geqslant\>3>. The spacing at level <math|m> is
    <math|a<rsub|m>=<around|(|L<rsub|0>*\<cdots\>*L<rsub|m-1>|)><rsup|-1>>,
    and the scale is <math|s<rsub|m>\<assign\>log
    <around|(|1/a<rsub|m>|)>=<big|sum><rsub|i\<less\>m>log L<rsub|i>>. We
    write <math|\<Lambda\><rsub|m>> for the level-<math|m> torus (at volume
    index <math|p>) and <math|<around|\||\<Lambda\><rsub|m>|\|>> for its
    number of sites.

    <item><strong|Gauge group.> <math|G\<subset\>U<around|(|n|)>> is closed,
    and its Lie algebra <math|\<frak-g\>> carries the inner product
    <math|<around|\<langle\>|X,Y|\<rangle\>>=-<math-up|Retr><around|(|X*Y|)>/n>.

    <item><strong|Plaquettes.> <math|s<around|(|u|)>=1-<math-up|Retr>u/n> is
    the plaquette function. <math|F<rsub|p><around|(|U|)>\<in\>\<frak-g\>> is
    the orthogonal projection of <math|<tfrac|1|2><around|(|U<rsub|p>-U<rsub|p><rsup|-1>|)>>,
    and <math|S<rsub|W>=<big|sum><rsub|p>s<around|(|U<rsub|p>|)>> is the
    Wilson action. Since <math|s<around|(|e<rsup|X>|)>=<around|\||X|\|><rsup|2>/2+O<around|(|<around|\||X|\|><rsup|4>|)>>,
    the inverse coupling <math|\<beta\>> equals <math|1/g<rsub|0><rsup|2>> in
    this normalization.
  </itemize-minus>

  <strong|Effective actions.> An effective action at level <math|m> is a
  <em|representation> <math|\<rho\>=<around|(|P,c,E,K,b,\<beta\>,v|)>>. It
  evaluates to

  <\equation*>
    \<rho\><around|(|U|)>=exp <around*|(|v\|\<Lambda\><rsub|m>\|-\<beta\>*<space|0.17em>\<cal-K\><rsub|P><around|(|U|)>-\<cal-L\><rsub|P><around|(|U|)>-\<cal-E\><around|(|U|)>|)>*<space|0.17em>\<cal-G\><around|(|U|)>.
  </equation*>

  <\itemize-minus>
    <item><strong|The kinetic functional <math|\<cal-K\><rsub|P>>.> This is
    the <math|\<beta\>>-coefficient of the leading terms of the path data
    <math|P>:

    <\itemize-minus>
      <item>a clipped plaquette term;

      <item>smeared curvature-squared terms;

      <item>cubic and quartic local polynomials in curvatures along lattice
      paths.
    </itemize-minus>

    These are averaged over the point group of the lattice, i.e. signed
    permutations of the axes.

    <item><strong|The other factors.> <math|\<cal-L\><rsub|P>> is the
    <math|\<beta\>>-independent loop functional. <math|\<cal-E\>> is the sum
    of the regular activities multiplied by their small-field indicators.
    Their weighted norms are summed at each anchor. <math|\<cal-G\>> is the
    gas of forced activities, whose weighted uniform bounds are summed over
    supports containing each site. <math|b=<around|(|k,q,a,B,t|)>> records
    the derivative order <math|k\<geqslant\>6>, spatial power
    <math|q\<geqslant\>2>, support exponent <math|a\<gtr\>0>, cover radius
    <math|B\<geqslant\>1> and threshold <math|0\<less\>t\<leqslant\>1> of the
    polymer norms.

    <item><strong|Normalization.> The zero-momentum quadratic symbol of the
    <math|\<beta\>>-term is the identity on plaquette orientations. The loop
    kernel has vanishing zeroth and first moments. These conditions fix the
    normalization of <math|\<beta\>> within the representation.
  </itemize-minus>

  <strong|The block-spin step.> <math|T<rsup|<around|(|m|)>><rsub|\<beta\><rprime|'>>>
  denotes one step from level <math|m+1> to level <math|m> at inverse
  coupling <math|\<beta\><rprime|'>>:

  <\equation*>
    <around|(|T<rsup|<around|(|m|)>><rsub|\<beta\><rprime|'>>*\<rho\><rprime|'>|)><around|(|V|)>=<big|int>k<rsub|\<beta\><rprime|'>><around|(|V,U|)>*<space|0.17em>\<rho\><rprime|'><around|(|U|)>*<space|0.17em>d*U.
  </equation*>

  The kernel <math|k<rsub|\<beta\><rprime|'>>> is a probability kernel (unit
  III.1). Densities are taken relative to product Haar probability measure
  and are not normalized.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  This unit tracks the scalar coefficient <math|\<beta\>> of the normalized
  curvature-squared term through the blocking history. Its three results are:

  <\itemize-minus>
    <item><strong|(a) Start-up.> With the start-up bounds, Wilson top path
    data and recipe acceptance, the Wilson weight at the finest level is
    admissible for every <math|\<beta\>> in the band.

    <item><strong|(b) One step.> Given the early presentation, local bounds,
    numerical conditions and recipe acceptance stated below, one block-spin
    step followed by a <em|reset> of <math|\<beta\>> maps a continuous
    admissible family at level <math|m+1> to one at level <math|m>. The
    coupling moves by <math|\<alpha\><rsub|N,m>+d>, where
    <math|\<alpha\><rsub|N,m>> is the one-loop coefficient of the step and
    <math|<around|\||d|\|>\<leqslant\>r<rsub|m>\<leqslant\>1>.

    <item><strong|(c) Thresholds.> The delay-dependent numerical conditions
    hold beyond entry thresholds, provided the earlier constants satisfy the
    compatibility inequalities of III.9.7. These choices respect the order of
    constants in III.2.
  </itemize-minus>

  Combined with the shooting argument of III.2 and the constructions of
  III.10 and III.13, this yields the selected history of III.9.3 and the law
  <math|\<beta\><rsub|N,p>/log <around|(|1/a<rsub|N>|)>\<to\>\<kappa\>> of
  the main theorem.

  <strong|Proposition III.9.1 (the slope constant).> Let <math|\<frak-g\>> be
  simple and nonabelian, and let <math|<around|(|b<rsub|i>|)>> be an
  orthonormal basis of <math|<around|(|\<frak-g\>,|\<langle\>>\<cdot\>,\<cdot\><around|\<rangle\>||)>>.
  Put

  <\equation*>
    C<rsub|G>=-<frac|1|dim \<frak-g\>>*<big|sum><rsub|i><math-up|tr><rsub|\<frak-g\>><around*|(|<around|(|<math-up|ad>b<rsub|i>|)><rsup|2>|)>,<space|2em>\<kappa\>=<frac|11*<space|0.17em>C<rsub|G>|24*\<pi\><rsup|2>>.
  </equation*>

  Then <math|\<kappa\>\<gtr\>0>.

  Here <math|C<rsub|G>> is the adjoint Casimir in the chosen inner product,
  and <math|\<kappa\>=2*b<rsub|0>> in the conventional one-loop notation
  <math|b<rsub|0>=11*C<rsub|G>/<around|(|48*\<pi\><rsup|2>|)>>. For
  <math|S*U<around|(|N|)>> in the defining representation, this normalization
  gives <math|C<rsub|G>=2*N<rsup|2>> and <math|\<kappa\>=11*N<rsup|2>/<around|(|12*\<pi\><rsup|2>|)>>.

  The invariant form <math|-<math-up|tr><around|(|<math-up|ad>X<space|0.17em><math-up|ad>Y|)>>
  is <math|C<rsub|G><around|\<langle\>|X,Y|\<rangle\>>>. Its value at
  <math|<around|(|X,X|)>> is <math|<big|sum><rsub|i><around|\||<around|[|X,b<rsub|i>|]>|\|><rsup|2>>,
  and nonabelianness makes this positive for some <math|X>. Thus
  <math|C<rsub|G>\<gtr\>0>.

  <em|Status:> definition; positivity is a theorem and uses simplicity.
  Inside this unit only two things are used: <math|\<kappa\>\<gtr\>0>, and
  the identity <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\>*log
  L<rsub|m>>. The fact that the one-loop coefficient of the actual blocked
  action is <math|-\<kappa\>*log L+O<around|(|1|)>> is proved in III.7, where
  <math|11/<around|(|24*\<pi\><rsup|2>|)>> is the value of an explicit
  momentum integral (Ÿ2).

  <em|Lean:> <hlink|<verbatim|YM.Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>,
  <hlink|<verbatim|YM.Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>,
  <hlink|<verbatim|YM.Gauge.slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>,
  <hlink|<verbatim|YM.Gauge.trace_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L71-L75>.

  <strong|Proposition III.9.2 (reference coupling and scale functions).> Fix
  <math|\<kappa\>\<gtr\>0>, <math|<wide|\<beta\>|\<bar\>>\<gtr\>1> and an
  infinite sequence of odd block factors <math|L<rsub|m>\<geqslant\>3>.
  Define

  <\equation*>
    <wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>,<space|1em>M<rsub|m>=e<rsup|<around|(|log
    log <wide|\<beta\>|^><rsub|m>|)><rsup|2>>,<space|1em>t<rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-1/2>*M<rsub|m>,<space|1em>\<varepsilon\><rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-11/10>,<space|1em><wide|\<varepsilon\>|~><rsub|m>=e<rsup|-M<rsub|m><rsup|1/5>>,
  </equation*>

  and set <math|B<rsub|m>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>|\<rceil\>>> and
  <math|\<frak-B\><rsub|m>=<around|[|<wide|\<beta\>|^><rsub|m>/2,<space|0.17em>2*<wide|\<beta\>|^><rsub|m>|]>>.
  These are, in order: the reference coupling, the threshold multiplier, the
  small-field threshold, the regular and forced allowances, the cover size
  and the band.

  Then <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\>*log
  L<rsub|m>>, <math|<wide|\<beta\>|^>> is nondecreasing, and
  <math|s<rsub|m>\<geqslant\>m*log 3>, so
  <math|<wide|\<beta\>|^><rsub|m>\<to\>\<infty\>>.

  The scale conditions are <em|hypotheses> on the scale sequence, not
  consequences of the definitions. They are:

  <\itemize-minus>
    <item><strong|Size conditions.> <math|<wide|\<beta\>|^><rsub|m>\<gtr\>1>
    and <math|t<rsub|m>\<leqslant\>1>. For every volume index <math|p>, the
    level-<math|m> side is at least <math|100*<around|(|B<rsub|m>+1|)>>, and
    the level-<math|<around|(|m+1|)>> side is at least
    <math|100*<around|(|R<rsub|m>+1|)>>, where <math|R<rsub|m>> is the
    block-patch radius.

    <item><strong|Stage index.> The stage index satisfies
    <math|J<rsub|m>\<geqslant\>4>, is nondecreasing,
    <math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1>, and
    <math|J<rsub|m>\<to\>\<infty\>>. The derivative orders, spatial powers
    and support exponents are nondecreasing along the levels. There are
    nondecreasing stage block factors <math|\<ell\><rsub|j>> with
    <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>>.

    <item><strong|Smallness exponent.> <math|0\<less\>\<theta\><rsub|J<rsub|m>>\<leqslant\>1/J<rsub|m>>,
    and <math|\<theta\>> is antitone.

    <item><strong|Gentle scales.> <math|log L<rsub|m>/s<rsub|m>\<to\>0>.

    <item><strong|Drift and logarithmic costs.> With <math|\<omega\><rsub|j>>
    the drift allowance of stage <math|j>,

    <\equation*>
      <frac|\<omega\><rsub|J<rsub|m+1>>|log
      L<rsub|m>>\<leqslant\>J<rsub|m+1><rsup|-2>,<space|2em><frac|log
      <around|(|1+<text|paths>+<text|width><rsup|-1>+<text|columns>+<text|relaxation>+<text|support
      exponent>|)><rsub|J<rsub|m+1>>|log L<rsub|m>>\<leqslant\>J<rsub|m+1><rsup|-2>.
    </equation*>
  </itemize-minus>

  <em|Status:> definitions (III.1) and elementary theorems. The scale
  conditions are part of the scale sequence produced in III.2.

  <em|Lean:> <hlink|<verbatim|Calendar.hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>,
  <hlink|<verbatim|threshold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83>,
  <hlink|<verbatim|allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84>,
  <hlink|<verbatim|forcedAllowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85>,
  <hlink|<verbatim|coverSize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82>,
  <hlink|<verbatim|Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>,
  <hlink|<verbatim|Shoot.band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63>,
  <hlink|<verbatim|Deployment.hat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45>,
  <hlink|<verbatim|Timing.hat_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42>,
  <hlink|<verbatim|Schedule.divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>.

  <strong|Proposition III.9.3 (selected histories).> A <em|history> assigns
  to all <math|N,p> and <math|m\<leqslant\>N> a level-<math|m> representation
  <math|\<rho\><rsub|N,p,m>> with coupling <math|\<beta\><rsub|N,p,m>>. It is
  <em|selected> if the following hold.

  <\enumerate>
    <item><strong|Common path data.> The path data <math|P<rsub|N,m>> of
    <math|\<rho\><rsub|N,p,m>> do not depend on <math|p>.

    <item><strong|Shape.> <math|\<rho\><rsub|N,p,m>> carries the
    level-<math|m> norm parameters and clip. It is lawful at level <math|m>:

    <\itemize-minus>
      <item>its path data obey the stage bounds, with loop cap
      <math|2*M<rsub|m><rsup|\<theta\><rsub|J<rsub|m>>>>;

      <item>its regular activities are local, gauge invariant, vanish at the
      flat field, and have zero Hessian on affine link directions whenever
      their supports do not wrap; their norm bound is
      <math|\<varepsilon\><rsub|m>>;

      <item>its forced activities satisfy the locality, eligibility and
      symmetry conditions of II.2, with norm bound
      <math|<wide|\<varepsilon\>|~><rsub|m>>.
    </itemize-minus>

    The whole activity family transforms under translations and signed
    permutations of the axes.

    Moreover <math|\<beta\><rsub|N,p,m>\<in\>\<frak-B\><rsub|m>>.

    <item><strong|Start.> <math|v<rsub|N,p,N>=0> and
    <math|\<rho\><rsub|N,p,N><around|(|U|)>=e<rsup|-\<beta\><rsub|N,p,N>*S<rsub|W><around|(|U|)>>>
    for all <math|U>.

    <item><strong|Transfer.> For <math|m\<less\>N>,
    <math|\<rho\><rsub|N,p,m>=T<rsup|<around|(|m|)>><rsub|\<beta\><rsub|N,p,m+1>>*\<rho\><rsub|N,p,m+1>>
    at every configuration, and

    <\equation*>
      <around|\||\<beta\><rsub|N,p,m+1>-\<beta\><rsub|N,p,m>-\<kappa\>*log
      L<rsub|m>|\|>\<leqslant\>\<omega\><rsub|J<rsub|m+1>>.
    </equation*>

    <item><strong|End point.> <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>.

    <item><strong|Running.> For every <math|\<varepsilon\>\<gtr\>0> there is
    <math|m<rsub|0>> with <math|<around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<varepsilon\>*s<rsub|m>>
    for all <math|m\<geqslant\>m<rsub|0>>, <math|N\<geqslant\>m> and all
    <math|p>.
  </enumerate>

  <em|Consequences:>

  <\itemize-minus>
    <item><strong|Partition function.> For all <math|m\<leqslant\>N>,
    <math|<big|int>\<rho\><rsub|N,p,m>*<space|0.17em>d<math-up|Haar>=Z<rsub|W><around|(|\<Lambda\><rsub|N,p>;\<beta\><rsub|N,p,N>|)>>,
    the Wilson partition function.

    <item><strong|Running law.> <math|\<beta\><rsub|N,p,m>/s<rsub|m>\<to\>\<kappa\>>
    uniformly in <math|N\<geqslant\>m> and <math|p>, because
    <math|s<rsub|m>\<to\>\<infty\>>.

    <item><strong|Bare coupling.> The bare coupling of the Wilson family,
    <math|\<beta\><rsub|N,p>\<assign\>\<beta\><rsub|N,p,N>>, satisfies
    <math|sup<rsub|p><around|\||\<beta\><rsub|N,p>/log
    <around|(|1/a<rsub|N>|)>-\<kappa\>|\|>\<to\>0>. This is (Reg1) of the
    main theorem with <math|b<rsub|\<ast\>>=\<kappa\>=2*b<rsub|0>>. The
    continuum running-coupling comparison belongs to VII.5.
  </itemize-minus>

  <em|Status:> (1)\U(6) are a specification (III.1). It is proved for the
  history of the main theorem in III.13 (<hlink|<verbatim|Spire.Uses.exists_bolt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85>),
  using the reset steps of III.9.5, the step program from III.10, and the
  finite-cutoff construction of Lemma 4.22. The interval shooting of Lemma
  4.20 also gives a selected history from the step program. In both
  constructions, Lemma 4.21 derives (6) from (4) and (5).

  The partition identity follows by induction from probability-kernel
  normalization and integrability of lawful representations. The calibration
  condition of VIII.1 requires one datum (scales, kinetic data and recipe)
  and one family of trails realizing this history, with every step a reset
  step for all <math|N,p> and <math|m\<less\>N>.

  <em|Lean:> <hlink|<verbatim|History.Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>,
  <hlink|<verbatim|Conv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218>,
  <hlink|<verbatim|Transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227>,
  <hlink|<verbatim|Running>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230>,
  <hlink|<verbatim|History.partition_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L242-L249>,
  <hlink|<verbatim|Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>.

  <strong|Proposition III.9.4 (one reset step along a curve).> Fix a datum
  <math|\<frak-D\>> consisting of three things:

  <\itemize-minus>
    <item>levels satisfying the scale and kernel conditions of III.9.2 and
    Ÿ2, and meeting the entry thresholds of the fixed numerical choices;

    <item>a compatible horizon, a local Haar chart, positive post-block
    constants, and kinetic data <math|<around|(|\<alpha\><rsub|N,m>,P<rsub|N,m>|)>>
    satisfying the planned one-loop conditions (Ÿ2);

    <item>a recipe, with initial, retention and continuation tests.
  </itemize-minus>

  Fix <math|N,p> and <math|m\<less\>N>, let <math|I=<around|[|l,u|]>> with
  <math|l\<leqslant\>u>, and let <math|x\<mapsto\>\<rho\><rprime|'><rsub|x>>
  (<math|x\<in\>I>) be a continuous curve of admissible
  level-<math|<around|(|m+1|)>> representations.

  <\itemize-minus>
    <item><em|Admissible> means: path data <math|P<rsub|N,m+1>>, the
    level-<math|<around|(|m+1|)>> norm parameters and clip, lawful with the
    level-<math|<around|(|m+1|)>> constants, and accepted by the recipe.

    <item><em|Continuous> means: <math|\<beta\>> and <math|v> are continuous;
    the regular and forced addresses, including supports, inventories and
    eligibility tests, are fixed; and the coefficients vary continuously in
    the weighted sum of regular sup-jet norms and forced uniform norms.
    Regular jets are measured only where their supports are small-field, at
    the prescribed derivative order and spatial power.
  </itemize-minus>

  Write <math|\<beta\><rprime|'><rsub|x>=\<beta\><around|(|\<rho\><rprime|'><rsub|x>|)>>
  and <math|H<rsub|x>=T<rsup|<around|(|m|)>><rsub|\<beta\><rprime|'><rsub|x>>*\<rho\><rprime|'><rsub|x>>.
  Let <math|<around|(|c<rsub|m>,r<rsub|m>|)>> be the reset constants of the
  stage pair <math|<around|(|J<rsub|m+1>,J<rsub|m>|)>>, with
  <math|c<rsub|m>\<gtr\>0> and <math|0\<less\>r<rsub|m>\<leqslant\>1>. Let
  <math|g=g<rsub|J<rsub|m+1>>\<gtr\>0> be the prescribed fine-stage
  forced-decay constant. Assume:

  <\itemize-minus>
    <item><strong|(P) Priced.> <math|\<eta\>=\<eta\><rsub|J<rsub|m>>> is a
    sensor constant (Lemma 4.7), and <math|2*<around|(|c<rsub|m>+1|)>*\<varepsilon\><rsub|m>\<leqslant\>\<eta\>*<space|0.17em>t<rsub|m><rsup|2>*<space|0.17em>r<rsub|m>>.

    <item><strong|(V) Probe.> <math|V> is a small-field configuration with
    <math|\<cal-K\><rsub|P<rsub|N,m>><around|(|V|)>\<geqslant\><around|\||\<Lambda\><rsub|m>|\|>*\<eta\>*t<rsub|m><rsup|2>>.
    Such a <math|V> exists by (P).

    <item><strong|(I) Income.> There is a family <math|F<around|(|x,d|)>>,
    <math|x\<in\>I>, <math|<around|\||d|\|>\<leqslant\>r<rsub|m>>, of
    level-<math|m> activities with fixed addresses, valid with
    <math|<around|(|\<varepsilon\><rsub|m>,<wide|\<varepsilon\>|~><rsub|m>|)>>.
    Assume the catalogue conditions: each coefficient is continuous in its
    regular sup-jet norm or forced uniform norm, and every convergent
    parameter sequence admits a subsequence with common summable majorants in
    those weighted norms. Moreover <math|H<rsub|x><around|(|1|)>,H<rsub|x><around|(|V|)>\<gtr\>0>,
    and

    <\equation*>
      <mid|\|><around|(|\<beta\><rprime|'><rsub|x>+\<alpha\><rsub|N,m>|)>*\<cal-K\><around|(|V|)>+\<cal-L\><around|(|V|)>-log
      <frac|H<rsub|x><around|(|1|)>|H<rsub|x><around|(|V|)>><mid|\|>\<leqslant\><around|\||\<Lambda\><rsub|m>|\|>*c<rsub|m>*\<varepsilon\><rsub|m>,
    </equation*>

    <\equation*>
      <around|\||\<cal-E\><rsub|F<around|(|x,b|)>><around|(|V|)>-\<cal-E\><rsub|F<around|(|x,a|)>><around|(|V|)>|\|>\<leqslant\><around|\||\<Lambda\><rsub|m>|\|>*c<rsub|m>*\<varepsilon\><rsub|m>*<around|\||b-a|\|>.
    </equation*>

    <item><strong|(R) Remainder.> Put

    <\equation*>
      <math-up|shape><rsub|x,d><around|(|U|)>=e<rsup|-<around|(|\<beta\><rprime|'><rsub|x>+\<alpha\><rsub|N,m>+d|)>*\<cal-K\><around|(|U|)>-\<cal-L\><around|(|U|)>-\<cal-E\><rsub|F<around|(|x,d|)>><around|(|U|)>>*<space|0.17em>\<cal-G\><rsub|F<around|(|x,d|)>><around|(|U|)>.
    </equation*>

    Require:

    <\itemize-minus>
      <item><em|Shape control:> <math|<around|\||<math-up|shape><rsub|x,a><around|(|U|)>-H<rsub|x><around|(|U|)>/H<rsub|x><around|(|1|)>|\|>\<leqslant\>C<rsub|x,U><space|0.17em><around|\||f<around|(|x,a|)>|\|>>
      for all <math|U> and <math|<around|\||a|\|>\<leqslant\>r<rsub|m>>,
      where <math|f> is the scalar residual of Lemma 4.9 and, for each
      <math|x,U>, a finite <math|C<rsub|x,U>\<geqslant\>0> works for every
      <math|<around|\||a|\|>\<leqslant\>r<rsub|m>>;

      <item><em|Forced bound:> the forced activities are bounded by
      <math|e<rsup|-g*<space|0.17em>M<rsub|m+1><rsup|2>>>;

      <item><em|Recipe:> the recipe accepts every exact trial.
    </itemize-minus>
  </itemize-minus>

  Conclusion. There is a continuous <math|d:I\<to\><around|[|-r<rsub|m>,r<rsub|m>|]>>
  with the following properties. Let <math|\<rho\><rsub|x>> have path data
  <math|P<rsub|N,m>>, activities <math|F<around|(|x,d<around|(|x|)>|)>>,
  coupling <math|\<beta\><rprime|'><rsub|x>+\<alpha\><rsub|N,m>+d<around|(|x|)>>
  and <math|v<rsub|x>=<around|\||\<Lambda\><rsub|m>|\|><rsup|-1>*log
  H<rsub|x><around|(|1|)>>. Then:

  <\itemize-minus>
    <item><math|x\<mapsto\>\<rho\><rsub|x>> is a continuous curve;

    <item><math|\<rho\><rsub|x>=H<rsub|x>> at every configuration;

    <item><math|\<rho\><rsub|x>> is admissible, its forced activities are
    bounded by <math|e<rsup|-g*M<rsub|m+1><rsup|2>>>, and
    <math|<around|\||\<beta\><around|(|\<rho\><rsub|x>|)>-\<beta\><rprime|'><rsub|x>-\<alpha\><rsub|N,m>|\|>=<around|\||d<around|(|x|)>|\|>\<leqslant\>r<rsub|m>\<leqslant\>1>.
  </itemize-minus>

  Exact density transfer, recipe continuation, admissibility, the stronger
  forced bound and the error bound <math|<around|\||\<beta\>-\<beta\><rprime|'>-\<alpha\><rsub|N,m>|\|>\<leqslant\>1>
  define a <em|reset step>. Without (R), the same <math|d> is the unique zero
  in <math|<around|[|-r<rsub|m>,r<rsub|m>|]>> of the scalar residual. In that
  case <math|\<rho\><rsub|x><around|(|1|)>=H<rsub|x><around|(|1|)>> and
  <math|\<rho\><rsub|x><around|(|V|)>=H<rsub|x><around|(|V|)>>.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|CouplingReset.advance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189>,
  <hlink|<verbatim|correct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173>,
  <hlink|<verbatim|Income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L78-L85>,
  <hlink|<verbatim|Remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L97-L103>,
  <hlink|<verbatim|PricedReset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L66-L69>,
  <hlink|<verbatim|Usable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58>,
  <hlink|<verbatim|Directed.Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55>.

  <strong|Proposition III.9.5 (explicit reset and step program).>

  (a) <em|Explicit correction.> Fix the datum, input curve and reset
  constants of III.9.4, and assume <math|G> is simple and the input couplings
  lie in <math|\<frak-B\><rsub|m+1>>. Suppose that, for every
  <math|x\<in\>I>, the blocked density has the early presentation

  <\equation*>
    H<rsub|x><around|(|U|)>=exp <around*|(|\<tau\><rsub|x>\|\<Lambda\><rsub|m>\|-\<beta\><rprime|'><rsub|x>*\<cal-K\><around|(|U|)>-\<cal-L\><around|(|U|)>-<big|sum><rsub|i>\<chi\><rsub|X<rsub|i>><around|(|U|)>*E<rsub|x,i><around|(|U|)>|)>*<space|0.17em>\<cal-G\><rsub|x><around|(|U|)>*<space|0.17em>e<rsup|-\<alpha\><rsub|N,m>*\<cal-S\><around|(|U|)>>,
  </equation*>

  where <math|\<chi\><rsub|X>> indicates that <math|X> is small-field and
  <math|\<cal-S\>> is the masked quadratic receipt of the coarse path data.
  Assume:

  <\itemize-minus>
    <item>The early regular functions are local, gauge invariant and smooth
    through the required derivative order. Their sup-jet bounds
    <math|h<rsub|x,i>\<geqslant\>0> satisfy, at every anchor <math|o>,

    <\equation*>
      <big|sum><rsub|i:o<rsub|i>=o>e<rsup|<around|(|a+3|)><space|0.17em><math-up|cover><rsub|B<rsub|m>><around|(|X<rsub|i>|)>>*h<rsub|x,i>\<leqslant\>H<rsub|x><rsup|E>,
    </equation*>

    where <math|a> is the level-<math|m> support exponent. The early forced
    functions satisfy the forced-family conditions and a site-pinned bound
    <math|w<rsub|x>> at support exponent <math|a+1>. The full family
    transforms under translations and the point group.

    <item>The addresses are fixed along <math|I>, and the early functions
    satisfy the coefficient-continuity and summable-tail conditions used in
    III.9.4(I).

    <item>The reset is priced; the clip is compatible with the coarse norm
    parameters; and the width and cubic conditions hold. There are numerical
    output bounds <math|e<rsub|x>,k<rsub|x>> such that
    <math|H<rsub|x><rsup|E>\<leqslant\>c<rsub|m>*\<varepsilon\><rsub|m>/4>,
    the regular and forced reorganization estimates fit within
    <math|e<rsub|x>,k<rsub|x>>, and these bounds imply both validity with
    <math|<around|(|\<varepsilon\><rsub|m>,<wide|\<varepsilon\>|~><rsub|m>|)>>
    and the forced bound <math|e<rsup|-g*M<rsub|m+1><rsup|2>>>. These are the
    fee and closure conditions of Lemma 4.17.

    <item>The recipe accepts the reorganized representation and its
    continuation from <math|\<rho\><rprime|'><rsub|x>>.
  </itemize-minus>

  Then the reset correction is the isotropic Hessian coefficient
  <math|\<delta\><rsub|x>> of the early regular functions (Lemma 4.12):

  <\equation*>
    d<around|(|x|)>=\<delta\><rsub|x>,<space|2em>\<beta\><around|(|\<rho\><rsub|x>|)>=\<beta\><rprime|'><rsub|x>+\<alpha\><rsub|N,m>+\<delta\><rsub|x>,<space|2em>t<rsub|m><rsup|2><around|\||\<delta\><rsub|x>|\|>\<leqslant\>H<rsub|x><rsup|E>\<leqslant\>c<rsub|m>*\<varepsilon\><rsub|m>/4,<space|2em>v<rsub|x>=\<tau\><rsub|x>-<around|\||\<Lambda\><rsub|m>|\|><rsup|-1>*<big|sum><rsub|i>E<rsub|x,i><around|(|1|)>.
  </equation*>

  The output is continuous and has all the properties of III.9.4. The
  Gaussian-sector formulation additionally requires its integration licenses
  and the identity between that integral and the push; a direct early
  presentation of the push supplies the equality used in the reset.

  (b) <em|Program.> Assume <math|G> is simple. Suppose the numerical
  conditions above hold at every level, the early presentation and its local
  bounds and continuity are available along every continuous admissible input
  curve with couplings in <math|\<frak-B\><rsub|m+1>>, and the recipe accepts
  these outputs. Suppose also that the start-up curves below exist and pass
  the recipe's initial and retention tests. Then:

  <\itemize-minus>
    <item>For all <math|N,p>, there is a continuous admissible curve
    <math|\<beta\>\<mapsto\>F<around|(|\<beta\>|)>> on
    <math|\<frak-B\><rsub|N>> with coupling <math|\<beta\>>, vacuum constant
    <math|0> and density <math|e<rsup|-\<beta\>*S<rsub|W>>>, passing the
    initial tests.

    <item>For all <math|N,p,m\<less\>N>, every continuous admissible input
    curve on a closed interval has, when its couplings lie in
    <math|\<frak-B\><rsub|m+1>>, a continuous output curve related to it
    pointwise by reset steps. The finer bound
    <math|<around|\||\<beta\>-\<beta\><rprime|'>-\<alpha\><rsub|N,m>|\|>\<leqslant\>r<rsub|m>>
    also holds.
  </itemize-minus>

  The output coupling may lie outside <math|\<frak-B\><rsub|m>>; shooting
  restricts the parameter interval to restore the band (Lemma 4.20).

  <em|Status:> conditional theorems. III.10 supplies the physical inputs,
  including the Gaussian-sector identity and the early presentation. Its
  <hlink|Roost.Factor.worksNow|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L59>
  concludes the step program from these results.

  <em|Lean:> <hlink|<verbatim|Return.reset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90>,
  <hlink|<verbatim|Return.result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L56-L57>,
  <hlink|<verbatim|Collection.earlyValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27>,
  <hlink|<verbatim|Use.supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88>,
  <hlink|<verbatim|CouplingReset.program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70>,
  <hlink|<verbatim|Supplier.ports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L54-L65>,
  <hlink|<verbatim|Directed.Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72>,
  <hlink|<verbatim|Return.Prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L28-L35>,
  <hlink|<verbatim|Collection.Fees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L49-L51>,
  <hlink|<verbatim|Collection.Compared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Comparison.lean#L72-L74>.

  <strong|Proposition III.9.6 (Wilson start-up).> Let <math|c> be a clip and
  <math|b> a set of norm parameters with <math|0\<less\>t\<leqslant\>1>. They
  are <em|compatible> if <math|c<rsub|<math-up|dir>>\<leqslant\>1>,
  <math|B\<geqslant\>2>, and <math|t*<space|0.17em>e<rsup|<around|(|B-2|)>/c<rsub|<math-up|rel>>>\<geqslant\>2>.

  <\enumerate>
    <item><strong|Exact start.> For every <math|\<beta\>\<in\>\<bbb-R\>> and
    every configuration <math|U>, <math|\<rho\><rsup|<math-up|start>><rsub|\<beta\>><around|(|U|)>=e<rsup|-\<beta\>*S<rsub|W><around|(|U|)>>>.
    Here <math|\<rho\><rsup|<math-up|start>><rsub|\<beta\>>> has:

    <\itemize-minus>
      <item>the <em|Wilson top> path data
      <math|P<rsup|<math-up|top>><rsub|c>> (Lemma 4.2);

      <item><math|v=0>;

      <item>regular activities <math|\<beta\>*<around|(|1-c<rsub|<math-up|dir>>|)>\<times\>>
      (the one-plaquette residuals of small-field plaquettes), averaged over
      the point group;

      <item>forced activities <math|e<rsup|-\<beta\><space|0.17em><math-up|charge><around|(|D,U|)>>>,
      one for each connected component <math|D> of the large-field region for
      the padded adjacency relation.
    </itemize-minus>

    <item><strong|Residual bound.> For every gauge group <math|G> and all
    orders <math|k> and spatial powers <math|q> there are <math|C\<gtr\>0>
    and <math|\<delta\>\<in\><around|(|0,1|]>> with the following property.
    For every set of norm parameters with order <math|k>, power <math|q> and
    threshold <math|t\<leqslant\>\<delta\>>, every torus, every plaquette
    <math|p> and every site <math|o> of <math|p>, the residual
    <math|R<rsub|p>> has weighted sup-jet norm at most <math|C*t<rsup|5>> at
    <math|o>.

    <item><strong|Eventual bounds and continuity.> For each fixed stage with
    <math|c<rsub|<math-up|dir>>\<leqslant\>1>, there is
    <math|\<beta\><rsup|\<ast\>>> such that, for every realized choice of
    levels and every <math|N> at that stage with
    <math|<wide|\<beta\>|^><rsub|N>\<geqslant\>\<beta\><rsup|\<ast\>>>, the
    start-up conditions hold: compatibility, small threshold, and the regular
    and forced norm bounds <math|\<varepsilon\><rsub|N>,<wide|\<varepsilon\>|~><rsub|N>>.
    The start-up curve is continuous on <math|\<frak-B\><rsub|N>>. It is
    admissible for a given recipe if its prescribed top paths are
    <math|P<rsup|<math-up|top>>>, these paths satisfy the stage bounds, and
    its initial and retention tests accept the displayed curve.

    <item><strong|Installation.> Suppose the old kinetic data satisfy the
    planned conditions, the Wilson top paths satisfy the stage bounds, and a
    revised horizon is supplied whose top quadratic datum is the Wilson one,
    whose lower data agree with the old horizon, and whose initial stationary
    guesses agree. Then the kinetic data can be replaced by data for that
    horizon with <math|P<rsub|N,N>=P<rsup|<math-up|top>>>, the same
    <math|\<alpha\>>, and every planned condition preserved.
  </enumerate>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|WilsonStartup.Start.evaluates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103>,
  <hlink|<verbatim|residual_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101>,
  <hlink|<verbatim|Start.Allows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L43-L48>,
  <hlink|<verbatim|Timing.enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139>,
  <hlink|<verbatim|Planned.Port.card>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71>,
  <hlink|<verbatim|Change.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82>,
  <hlink|<verbatim|WilsonStartup.Decent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ownership.lean#L20-L23>,
  <hlink|<verbatim|Design.Suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Match.lean#L52-L54>,
  <hlink|<verbatim|Change.Overlay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L22-L25>.

  <strong|Proposition III.9.7 (entry thresholds).> Fix a pre-block stage
  profile and assume <math|G> is simple. There are sensor constants
  <math|\<eta\><rsub|j>\<gtr\>0>, chosen before the block sizes, with the
  following property. Fix the block factors <math|\<ell\><rsub|j>>, exponents
  <math|0\<less\>\<theta\><rsub|j>\<leqslant\>1>, reset constants,
  forced-decay forecasts and post-block costs. For each allowed stage
  transition <math|i\<leqslant\>j\<leqslant\>i+1>, let <math|f<rsub|j*i>> be
  the inherited coefficient and assume

  <\equation*>
    8*f<rsub|j*i>\<leqslant\>q<rsub|i>*\<ell\><rsub|j><rsup|min>,<space|2em>u<rsub|j*i><around|(|x|)>\<longrightarrow\>0*<space|1em><around|(|x\<to\>\<infty\>|)>,
  </equation*>

  where <math|q<rsub|i>=1/<around|[|64*<around|(|1+A<rsub|i>|)>|]>\<gtr\>0>,
  <math|A<rsub|i>\<geqslant\>0> is the coefficient of the early size in the
  regular reorganization bound (Lemma 4.17), and
  <math|\<ell\><rsub|j><rsup|min>> is the preassigned block-size floor.

  Every entry-threshold record <math|V> has a componentwise increase <math|U>
  such that every further increase <math|W\<geqslant\>U> satisfies the
  following conditions beyond its thresholds:

  <\itemize-minus>
    <item>the reset pricing inequality;

    <item>the cubic inequality of Lemma 4.10;

    <item>clip compatibility when <math|c<rsub|<math-up|dir>>\<leqslant\>1>,
    the width condition and the regular and forced reorganization
    inequalities;

    <item>the inherited inequality of Lemma 4.17.
  </itemize-minus>

  For a realized choice of levels, these conclusions require the same stage
  profile, block factors and exponents, and payment of the thresholds:
  <math|W<rsup|<math-up|entry>><rsub|J<rsub|m+1>>\<leqslant\><wide|\<beta\>|^><rsub|m>>
  for every <math|m>. To obtain III.9.5's physical bounds, also assume
  <math|4*q<rsub|i>\<leqslant\>c<rsub|j*i>> and
  <math|4*g<rsub|j>\<leqslant\><math-up|rate><rsub|j*i>>; raising thresholds
  does not supply these inequalities or the early presentation. Start-up
  bounds admit the same monotone choice of thresholds when
  <math|c<rsub|<math-up|dir>>\<leqslant\>1> at every used stage.

  <em|Status:> theorem about numerical conditions, conditional on the
  compatibility inequalities stated above.

  <em|Lean:> <hlink|<verbatim|Time.beforeWait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89>,
  <hlink|<verbatim|StrongStartup.prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107>,
  <hlink|<verbatim|Timing.choose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L27-L38>,
  <hlink|<verbatim|Time.credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Tables.lean#L36>.

  <strong|Proposition III.9.8 (marker-rooted to site-pinned polymer sums).>
  Fix <math|M,\<mu\>\<in\>\<bbb-N\>>, <math|a\<in\>\<bbb-R\>> and
  <math|c\<geqslant\>0>. Let <math|<around|(|X<rsub|i>|)>> be polymers on a
  four-dimensional torus with weights <math|f<rsub|i>\<geqslant\>0>, indexed
  by an arbitrary set. Fix a finite set of marker names; each polymer carries
  a subset of these names, the markers sitting at sites
  <math|o<around|(|v|)>>, with at most <math|\<mu\>> markers per site.
  Suppose that every polymer with <math|f<rsub|i>\<gtr\>0> contains the site
  of one of its markers, and that for every marker <math|v>

  <\equation*>
    <big|sum><rsub|i:<space|0.17em>v<text| is a marker of
    >i>e<rsup|<around|(|a+1|)><space|0.17em><math-up|cover><rsub|M><around|(|X<rsub|i>|)>>*f<rsub|i>\<leqslant\>c.
  </equation*>

  All sums of nonnegative terms here are required to be summable, including
  when the index set is uncountable. Then for every site <math|x>

  <\equation*>
    <big|sum><rsub|i:<space|0.17em>x\<in\>X<rsub|i>>e<rsup|a<space|0.17em><math-up|cover><rsub|M><around|(|X<rsub|i>|)>>*f<rsub|i>\<leqslant\>\<mu\>*<space|0.17em>e*<space|0.17em><around|(|2*<around|(|16*M+9|)>|)><rsup|4>*<space|0.17em>c,
  </equation*>

  uniformly in the size of the torus.

  <em|Status:> theorem. It is used for observable insertions in III.12 and
  III.15, not for the coupling flow.

  <em|Lean:> <hlink|<verbatim|Extra.Multi.root_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199>.

  <strong|What the rest of the construction uses.>

  <\itemize-minus>
    <item>The shape, band and transfer clauses of III.9.3.

    <item>The reference coupling <math|<wide|\<beta\>|^>> used in the later
    estimates.

    <item>The step program III.9.5(b), the input of the shooting.

    <item>The finer accuracy <math|<around|\||\<beta\><rsub|N,p,m>-\<beta\><rsub|N,p,m+1>-\<alpha\><rsub|N,m>|\|>\<leqslant\>r<rsub|m>>.

    <item>III.9.8.
  </itemize-minus>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|III.1 (block-spin step and interfaces).> This unit uses:

    <\itemize-minus>
      <item>the step <math|T<rsup|<around|(|m|)>><rsub|\<beta\>>> with its
      symmetry, gauge covariance and probability normalization
      (<hlink|<verbatim|Calendar.op>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88-L91>,
      <hlink|<verbatim|BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128>,
      <hlink|<verbatim|StepData.push_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Push.lean#L37-L43>);

      <item>the interface records for histories and selection, the datum
      <math|\<frak-D\>> (<hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>),
      and reset step / program;

      <item>the conversion of a reset step into the transfer inequality
      (<hlink|<verbatim|Directed.links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63>).
      This uses <math|<around|\||\<beta\>-\<beta\><rprime|'>-\<alpha\>|\|>\<leqslant\>1>
      and <math|<around|\||\<alpha\>+\<kappa\>*log
      L|\|>+1\<leqslant\>\<omega\>>.
    </itemize-minus>

    <item><strong|II.2 (polymer activities).> Representations, activities,
    their bounds and the large-field masks:
    <hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>,
    <hlink|<verbatim|Activities.Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111>,
    <hlink|<verbatim|EBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L98-L100>,
    <hlink|<verbatim|KBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L102-L104>,
    <hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>,
    <hlink|<verbatim|PathData.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>.

    <item><strong|III.2 (order of constants and shooting).> This unit uses:

    <\itemize-minus>
      <item>the constants chosen before the block size, and the block sizes
      (<hlink|<verbatim|Supply.Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>,
      <hlink|<verbatim|Supply.Large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48>).
      At each used stage, the block factor <math|\<ell\><rsub|j>> satisfies
      <math|\<omega\><rsub|j>/log \<ell\><rsub|j>\<leqslant\>\<kappa\>/4> and
      <math|\<omega\><rsub|j>/log \<ell\><rsub|j>\<leqslant\>j<rsup|-2>>.

      <item>the record of the scale sequence having met every entry threshold
      (<hlink|<verbatim|Supply.Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>);

      <item>the shooting construction and the running estimate (Lemmas
      4.20\U4.21).
    </itemize-minus>

    <item><strong|III.7 (one-loop coefficient).> The kinetic data satisfy the
    planned conditions (<hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>).
    Among them:

    <\itemize-minus>
      <item><math|<around|\||\<alpha\><rsub|N,m>+\<kappa\>*log
      L<rsub|m>|\|>+1\<leqslant\>\<omega\><rsub|J<rsub|m+1>>>;

      <item>the Hessian of the fluctuation term (fine loop functional plus
      <math|<tfrac|1|2>log det> of the fluctuation Hessian minus the log Haar
      Jacobian) agrees with that of <math|\<alpha\><rsub|N,m>> times the
      coarse quadratic action plus the coarse loop functional, with an error
      bounded by <math|<around|\||\<Lambda\><rsub|m>|\|>*\<Gamma\>*\<Lambda\>*e<rsup|-c<space|0.17em><math-up|side><around|(|\<Lambda\><rsub|m>|)>>>
      on every pair of bounded plane-wave directions
      (<hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>);

      <item><math|P<rsub|N,N>> matches the Wilson energy to fourth order.
    </itemize-minus>

    The bound on <math|\<alpha\>> comes from
    <hlink|<verbatim|Stationary.pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>,
    which, for fixed admissible analytic input parameters, constructs
    one-loop coefficients and constants <math|D\<geqslant\>0,L<rsub|min>>
    with <math|<around|\||\<alpha\>+\<kappa\>*log L|\|>\<leqslant\>D> for
    every odd <math|L\<geqslant\>L<rsub|min>>
    (<hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>).
    The constant is produced by two steps:

    <\itemize-minus>
      <item>the scalar-minus-half-vector bubble equals
      <math|2<space|0.17em><math-up|pole><around|(|p|)>>, where
      <math|<math-up|pole><around|(|p|)>=4*C<rsub|G>*<around*|(|p<rsub|1><rsup|2>\|p*<around|\||<rsup|-6>-4*p<rsub|1><rsup|2>*p<rsub|0><rsup|2>|\|>*p\|<rsup|-8>-<around|\||p|\|><rsup|-4>|)>>
      (<hlink|<verbatim|haloRate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141>,
      <hlink|<verbatim|poleVec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125>);

      <item><math|<around|(|2*\<pi\>|)><rsup|-4>*<big|int><rsub|\<mu\>\<leqslant\><around|\||p|\|>\<leqslant\>1><math-up|pole>=-\<kappa\>*log
      \<mu\><rsup|-1>> (<hlink|<verbatim|poleSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338>),
      with the remaining errors bounded (<hlink|<verbatim|absoluteGeode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>).
    </itemize-minus>

    The angular average of <math|<math-up|pole>> is
    <math|-<tfrac|11|3>C<rsub|G><around|\||p|\|><rsup|-4>>, the classical
    split <math|<tfrac|1|3>-4> into orbital and spin parts.

    <item><strong|III.13 (kinetic data and history).> Finite-cutoff kinetic
    data are built by downward recursion in <math|m>. The limiting one-step
    relation used to compare such data contracts with factor
    <math|<tfrac|1|2>> (<hlink|<verbatim|Reward.fieldArray>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L15-L46>,
    <hlink|<verbatim|Reward.step_contracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/AtLimit.lean#L46-L66>,
    <hlink|<verbatim|Reward.ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L49-L62>).
    The selected history of the main theorem is also built there.

    <item><strong|III.10 and III.4 (the nonlinear step).> These provide the
    hypotheses of III.9.5:

    <\itemize-minus>
      <item>the identification of the blocked density with a Gaussian-sector
      integral (<hlink|<verbatim|Return.earnings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L56-L61>);

      <item>its early presentation (<hlink|<verbatim|Return.atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71>);

      <item>the local activity bounds (<hlink|<verbatim|Collection.Local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Trays.lean#L35-L40>),
      continuity and recipe acceptance.
    </itemize-minus>

    These are delivered by <hlink|<verbatim|Rain.glazing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104>
    and <hlink|<verbatim|Roost.Factor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50>.

    <item><strong|I.1 and III.16 (analytic toolkit).> Lie-group facts and
    Taylor jets of the plaquette function.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Intermediate value theorem, and continuity of the inverse of a
    uniformly increasing family.

    <item>Taylor's formula with uniform constants on compact sets.

    <item>Schur's lemma: an <math|<math-up|Ad>>-invariant bilinear form on a
    simple <math|\<frak-g\>> is a multiple of the inner product.

    <item>The representation theory of the hyperoctahedral group on plaquette
    orientations, used through explicit reflections and permutations.

    <item>Fourier analysis on tori, analytic matrix inversion and exponential
    decay of Fourier coefficients.
  </itemize-minus>

  References:

  <\itemize-minus>
    <item>One-loop <math|\<beta\>>-function: Gross\UWilczek, <em|Phys. Rev.
    Lett.> 30 (1973) 1343; Politzer, <em|Phys. Rev. Lett.> 30 (1973) 1346.

    <item>The orbital/spin split <math|<tfrac|1|3>-4>: Nielsen, <em|Am. J.
    Phys.> 49 (1981) 1171; Hughes, <em|Nucl. Phys. B> 186 (1981) 376.

    <item>Lattice gauge theory: Wilson, <em|Phys. Rev. D> 10 (1974) 2445;
    Seiler, <em|Lecture Notes in Physics> 159 (1982).

    <item>Block-spin renormalization of lattice gauge fields with
    coupling-constant renormalization in four dimensions: Baªaban,
    <em|Commun. Math. Phys.> 109 (1987) 249; 116 (1988) 1; 119 (1988) 243;
    122 (1989) 175 and 355.

    <item>Exposition of Baªaban's method: Dimock, "The renormalization group
    according to Balaban" I\UIII (<em|Rev. Math. Phys.> 25 (2013); <em|J.
    Math. Phys.> 54 (2013); <em|Ann. Henri Poincaré> 15 (2014)).

    <item>Tracking a marginal coupling and choosing the bare parameters so
    that the flow ends at a prescribed value: Bauerschmidt\UBrydges\USlade,
    <em|Introduction to a Renormalisation Group Method>, LNM 2242 (2019).
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item><strong|The drift allowances <math|\<omega\><rsub|j>>.> These are
    constants fixed before the block size, with
    <math|\<omega\><rsub|j>\<geqslant\>1+D>. The one-loop error <math|D> is
    fixed in III.7 and III.13, and <math|\<omega\>> is then made small
    relative to <math|log L> by choosing <math|L> large (III.2).

    <item><strong|The exponents.> The exponents <math|-1/2>, <math|-11/10>,
    <math|<around|(|log log|)><rsup|2>> and <math|1/5> in III.9.2 are part of
    the definitions.

    <item><strong|The hypotheses of III.9.5(a).> These are carried here as
    assumptions and discharged in III.10.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The nonlinear step gives an early presentation of the blocked density. Its
  marginal coefficient has three contributions: the input coupling
  <math|\<beta\><rprime|'>>, the one-loop shift <math|\<alpha\><rsub|N,m>>,
  and the isotropic Hessian coefficient <math|\<delta\>> of the early regular
  functions. The reset sets <math|\<beta\>=\<beta\><rprime|'>+\<alpha\><rsub|N,m>+\<delta\>>.
  Subtracting flat values and quadratic projections, adding compensating path
  terms, and absorbing mask discrepancies into the forced gas preserves the
  full density. The output activity bounds and
  <math|<around|\||\<delta\>|\|>\<leqslant\>r<rsub|m>\<leqslant\>1>, together
  with <math|<around|\||\<alpha\><rsub|N,m>+\<kappa\>*log
  L<rsub|m>|\|>+1\<leqslant\>\<omega\>>, give the transfer inequality.

  Two configurations identify the reset: the flat field and a small-field
  stripe <math|V> with <math|\<cal-K\><around|(|V|)>\<geqslant\><around|\||\<Lambda\>|\|>*\<eta\>*t<rsup|2>>.
  Matching at the flat field fixes <math|v=<around|\||\<Lambda\>|\|><rsup|-1>*log
  H<around|(|1|)>>. Matching the log-ratio at <math|V> gives a scalar
  equation <math|f<around|(|x,d|)>=0>. The pricing and activity-motion bounds
  make <math|f> increasing with slope at least
  <math|\<cal-K\><around|(|V|)>/2>, and give
  <math|<around|\||f<around|(|x,0|)>|\|>\<leqslant\>\<cal-K\><around|(|V|)>*r/2>.
  Its unique root lies in <math|<around|[|-r,r|]>> and depends continuously
  on <math|x>. Shape control gives equality at every configuration. For the
  reorganized activities, <math|f<around|(|x,d|)>=<around|(|d-\<delta\><rsub|x>|)>*\<cal-K\><around|(|V|)>>,
  so the correction is explicit.

  The interval shooting chains these steps from the Wilson lattice down to
  level <math|0>. At each level, the transfer inequality forces the two
  endpoint couplings to lie on opposite sides of
  <math|<around|[|<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>/2,<wide|\<beta\>|\<bar\>>+2*\<kappa\>*s<rsub|m>|]>>.
  Continuity selects a subinterval whose couplings stay within that window
  and attain its endpoints. At level <math|0>, a surviving bare parameter
  gives <math|\<beta\><rsub|0>=<wide|\<beta\>|\<bar\>>>. Summing the transfer
  errors gives the running law, uniformly in cutoff and volume. III.13 uses
  compatible finite-cutoff fixed points to obtain the centered history and
  its analytic continuations.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Reference scales><label|41-reference-scales>

  <strong|Lemma 4.1 (recursion of the reference coupling).>
  <math|s<rsub|m+1>=s<rsub|m>+log L<rsub|m>>, so
  <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\>*log
  L<rsub|m>>. <math|<wide|\<beta\>|^>> is nondecreasing if
  <math|\<kappa\>\<geqslant\>0>. Since <math|L<rsub|i>\<geqslant\>3>,
  <math|s<rsub|m>\<geqslant\>m*log 3\<to\>\<infty\>>, and
  <math|<wide|\<beta\>|^><rsub|m>\<to\>\<infty\>> when
  <math|\<kappa\>\<gtr\>0>.

  <em|Sketch:> <math|a<rsub|m>=<around|(|L<rsub|0>*\<cdots\>*L<rsub|m-1>|)><rsup|-1>>
  and the definitions.

  <em|Lean:> <hlink|<verbatim|Schedule.scale_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L124-L127>,
  <hlink|<verbatim|Deployment.hat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Levels.lean#L43-L45>,
  <hlink|<verbatim|Timing.hat_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L40-L42>,
  <hlink|<verbatim|Schedule.divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>.

  <subsection|4.2 The Wilson start-up><label|42-the-wilson-start-up>

  <strong|Lemma 4.2 (splitting the plaquette action).> Write
  <math|s<around|(|u|)>=<around|\||F<around|(|u|)>|\|><rsup|2>/2+Q<rsub|4><around|(|F<around|(|u|)>|)>+R<around|(|u|)>>.
  Near the identity, curvature gives local coordinates on <math|G>. Here
  <math|Q<rsub|4>> is the diagonal fourth Taylor coefficient of the plaquette
  function in those coordinates. The odd coefficients vanish by inversion
  symmetry. The residual <math|R>, defined by the displayed identity for
  every <math|u\<in\>G>, has vanishing derivatives of orders
  <math|0,\<ldots\>,4> at the identity.

  For <math|c<rsub|<math-up|dir>>\<leqslant\>1>, the top path data
  <math|P<rsup|<math-up|top>><rsub|c>> consist of:

  <\itemize-minus>
    <item>the clipped plaquette term, which equals
    <math|c<rsub|<math-up|dir>>*<space|0.17em>s<around|(|U<rsub|p>|)>> in the
    small-field region;

    <item>the row term <math|<sqrt|1-c<rsub|<math-up|dir>>>*<space|0.17em>F<rsub|p>>,
    contributing <math|<around|(|1-c<rsub|<math-up|dir>>|)><around|\||F<rsub|p>|\|><rsup|2>/2>;

    <item>the quartic atoms <math|<around|(|1-c<rsub|<math-up|dir>>|)>*Q<rsub|4><around|(|F<rsub|p>|)>>;

    <item>no cubic and no loop terms.
  </itemize-minus>

  They satisfy the zero-momentum normalization
  (<math|c<rsub|<math-up|dir>>+<around|(|1-c<rsub|<math-up|dir>>|)>=1>). On
  the small-field region, <math|\<beta\>*S<rsub|W>=\<beta\>*<space|0.17em>\<cal-K\><rsub|P<rsup|<math-up|top>>>+\<beta\>*<around|(|1-c<rsub|<math-up|dir>>|)>*<big|sum><rsub|p>R<rsub|p>>.

  <em|Sketch:> The derivative of the curvature map at the identity is the
  identity, so the analytic inverse function theorem gives curvature
  coordinates. Inversion sends <math|F> to <math|-F> and preserves <math|s>.
  Taylor expansion through order <math|4> gives the quadratic and quartic
  terms and the residual. The identity <math|s=<tfrac|1|2><math-up|chord><rsup|2>>
  fixes the normalization.

  <em|Lean:> <hlink|<verbatim|convert_taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L156-L164>,
  <hlink|<verbatim|surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L166>,
  <hlink|<verbatim|surplus_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L168-L179>,
  <hlink|<verbatim|Design.top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38>,
  <hlink|<verbatim|Design.principal_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L156-L162>.

  <strong|Lemma 4.3 (exact start).> For a compatible pair
  <math|<around|(|c,b|)>>, every <math|\<beta\>> and every <math|U>: the
  path-data channels of <math|P<rsup|<math-up|top>>> at <math|\<beta\>>, plus
  the regular activities (residuals of small-field plaquettes), plus the
  large-field remainders, add up to <math|\<beta\>*S<rsub|W><around|(|U|)>>,
  the sum being averaged over the point group. Moreover the gas equals
  <math|exp <around|(|-\<beta\>\<cdot\><text|(large-field remainder)>|)>>.
  Hence <math|\<rho\><rsup|<math-up|start>><rsub|\<beta\>>=e<rsup|-\<beta\>*S<rsub|W>>>,
  which is III.9.6(1).

  <em|Sketch:> Fix <math|U>. The only nonzero gas term is the family of
  connected components of the large-field region for the padded adjacency
  relation (cover size <math|B\<geqslant\>2> and the compatibility condition
  separate the padded components). So the gas collapses to a single product
  <math|<big|prod><rsub|D>e<rsup|-\<beta\><space|0.17em><math-up|charge><around|(|D,U|)>>>.
  The charges sum to the large-field remainder, and the channel identity
  accounts for the rest.

  <em|Lean:> <hlink|<verbatim|channel_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Channels.lean#L72-L87>,
  <hlink|<verbatim|Start.gas_raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L81-L94>,
  <hlink|<verbatim|Start.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L70-L75>,
  <hlink|<verbatim|Start.evaluates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Gas.lean#L96-L103>.

  <strong|Lemma 4.4 (one-plaquette residual).> This is III.9.6(2).

  <em|Sketch:> <math|R<rsub|p>> is a real-analytic function of the four link
  matrices of <math|p>. On a small-field plaquette (chord
  <math|\<leqslant\>t>) its derivatives of order <math|l\<leqslant\>k> along
  directions of size <math|\<leqslant\>t*<around|(|1+4|)><rsup|q>> are
  bounded by <math|C<rsub|l>*t<rsup|5>>. This is Taylor's formula with the
  flatness of Lemma 4.2 and compactness of <math|G>; the factor
  <math|<around|(|1+4|)><rsup|q>> is the spatial weight of sites within
  distance <math|4>. Take <math|C=1+<big|sum><rsub|l>C<rsub|l>> and the
  smallest <math|\<delta\>>.

  <em|Lean:> <hlink|<verbatim|residual_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L76-L101>,
  <hlink|<verbatim|residual_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L62-L68>,
  <hlink|<verbatim|healthy_chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L70-L74>,
  <hlink|<verbatim|Quad.small_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Residual.lean#L161-L183>.

  <strong|Lemma 4.5 (eventual start-up bounds).> Under the hypotheses of
  III.9.6(3), the start-up bounds hold beyond a stage-dependent threshold,
  uniformly in <math|N,p> and <math|\<beta\>\<in\>\<frak-B\><rsub|N>>. With
  the top-path bounds and recipe approval specified there, the start-up curve
  is admissible.

  <em|Sketch:> Put <math|x=<wide|\<beta\>|^><rsub|N>> and
  <math|M=e<rsup|<around|(|log log x|)><rsup|2>>>. The regular bound is a
  stage-dependent constant times <math|2*x*t<rsub|N><rsup|5>=2*x<rsup|-3/2>*M<rsup|5>=o<around|(|x<rsup|-11/10>|)>>.
  For the forced terms, the proof uses a decay exponent <math|M> and an
  additional polymer-counting factor <math|e<rsup|\<gamma\>>-1>, with
  <math|\<gamma\>=e<rsup|-M/2>>. The connected-polymer estimate bounds the
  forced norm by <math|e<rsup|-M+1>\<leqslant\>e<rsup|-M<rsup|1/5>>> for
  large <math|x>. Compatibility follows from
  <math|B<rsub|N>\<asymp\><around|(|log x|)><rsup|2>> and
  <math|t<rsub|N>=x<rsup|-1/2>*M>. These estimates give the displayed
  continuous start-up family; admissibility also uses its path bounds and the
  recipe tests.

  <em|Lean:> <hlink|<verbatim|Timing.enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Clock.lean#L113-L139>,
  <hlink|<verbatim|Start.ink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Ink.lean#L104-L122>,
  <hlink|<verbatim|Start.Loan.kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L130-L143>,
  <hlink|<verbatim|Planned.Port.card>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L52-L71>.

  <strong|Lemma 4.6 (installing the Wilson top).> Assume the old fine paths
  satisfy the stationary, positive-Hessian, initial-guess, classical-matching
  and finite-period one-loop conditions for a step. Let the new fine paths
  have the same main-action jets through order <math|4>, and suppose both
  fine loop kernels vanish. With the same local Haar chart and block
  branches, there are new stationary data satisfying those same conditions,
  with the same coarse paths and one-loop coefficient. With the revised
  horizon and top-path bounds of III.9.6(4), this replacement gives planned
  kinetic data at every cutoff, preserving the stationary data for
  <math|m+1\<less\>N>.

  <em|Sketch:> Equality of fourth jets gives equality of the fluctuation
  Hessians at the flat field and of their determinant jets through order
  <math|2>. The analytic implicit function theorem constructs the new
  stationary branch; finite-order agreement transfers the initial guess,
  classical match and one-loop bound. The old and Wilson top actions both
  match the Wilson energy through order <math|4>. Only the step
  <math|N\<to\>N-1> changes.

  <em|Lean:> <hlink|<verbatim|Change.top_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/TopStep.lean#L160-L180>,
  <hlink|<verbatim|Change.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Engine.lean#L62-L82>.

  <subsection|4.3 The scalar response><label|43-the-scalar-response>

  <strong|Lemma 4.7 (sensor).> Assume <math|\<frak-g\>\<ne\><around|{|0|}>>,
  fix a clip with <math|A=c<rsub|<math-up|dir>>\<gtr\>0>, and let
  <math|C\<geqslant\>0>. Then there is <math|\<eta\>\<gtr\>0>, depending only
  on these data, with the following property. For every even torus side,
  every path datum satisfying the path bounds with cap <math|C>, and every
  set of norm parameters with <math|0\<less\>t\<leqslant\>1>, there is a
  configuration <math|V> that is small-field everywhere and satisfies
  <math|\<cal-K\><around|(|V|)>\<geqslant\><around|\||\<Lambda\>|\|>*<space|0.17em>\<eta\>*<space|0.17em>t<rsup|2>>.

  <em|Sketch:>

  <\itemize-minus>
    <item>Choose <math|u\<in\>G> with chord <math|h=\<tau\>*t>, where
    <math|\<tau\>=min <around|(|\<varepsilon\><rsub|G>,<tfrac|1|4>,A/<around|(|512*<around|(|1+C|)>|)>|)>>;
    such <math|u> exists by the intermediate value theorem along a
    one-parameter subgroup.

    <item>Put <math|u> on the axis-<math|0> links at sites whose coordinate
    <math|1> is even, and <math|1> elsewhere. Every
    <math|<around|(|0,1|)>>-plaquette has chord <math|h>, and every plaquette
    has chord <math|\<leqslant\>4*h\<leqslant\>t>.

    <item>The quadratic term contributes <math|\<geqslant\><around|\||\<Lambda\>|\|>*A*h<rsup|2>/2>.
    The cubic and quartic atoms contribute at least
    <math|-<around|\||\<Lambda\>|\|>*<around|(|C*<around|(|4*h|)><rsup|3>+C*<around|(|4*h|)><rsup|4>|)>\<geqslant\>-<around|\||\<Lambda\>|\|>*A*h<rsup|2>/4>.

    <item>The point-group average permutes plaquettes and preserves these
    bounds. Hence <math|\<eta\>=A*\<tau\><rsup|2>/4>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|CouplingReset.sensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L96-L142>,
  <hlink|<verbatim|reachable_chord>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L40-L54>.

  <strong|Lemma 4.8 (monotone response, continuous root).> Let
  <math|I=<around|[|l,u|]>> with <math|l\<leqslant\>u>, let
  <math|r\<geqslant\>0>, and let <math|f:I\<times\><around|[|-r,r|]>\<to\>\<bbb-R\>>
  satisfy:

  <\itemize-minus>
    <item>there is <math|\<mu\>\<gtr\>0> such that
    <math|f<around|(|x,b|)>-f<around|(|x,a|)>\<geqslant\>\<mu\>*<around|(|b-a|)>>
    for every <math|x\<in\>I> and <math|-r\<leqslant\>a\<leqslant\>b\<leqslant\>r>;

    <item><math|f<around|(|x,\<cdot\>|)>> is continuous for every
    <math|x\<in\>I>, and <math|f<around|(|\<cdummy\>,a|)>> is continuous for
    every <math|a\<in\><around|[|-r,r|]>>;

    <item><math|<around|\||f<around|(|x,0|)>|\|>\<leqslant\>\<mu\>*r> for
    every <math|x\<in\>I>.
  </itemize-minus>

  Then there is a unique <math|d<around|(|x|)>\<in\><around|[|-r,r|]>> with
  <math|f<around|(|x,d<around|(|x|)>|)>=0>. The function <math|d> is
  continuous, and <math|<around|\||d<around|(|x|)>-a|\|>\<leqslant\><around|\||f<around|(|x,a|)>|\|>/\<mu\>>
  for every <math|x\<in\>I> and <math|a\<in\><around|[|-r,r|]>>.

  <em|Sketch:> <math|f<around|(|x,-r|)>\<leqslant\>0\<leqslant\>f<around|(|x,r|)>>,
  so the intermediate value theorem gives a zero, unique by strict
  monotonicity. Moreover <math|<around|\||d<around|(|y|)>-d<around|(|x|)>|\|>\<leqslant\><around|\||f<around|(|y,d<around|(|x|)>|)>-f<around|(|x,d<around|(|x|)>|)>|\|>/\<mu\>\<to\>0>.

  <em|Lean:> <hlink|<verbatim|Response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L27-L31>,
  <hlink|<verbatim|Response.balance_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L80-L83>,
  <hlink|<verbatim|Response.continuous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L54-L58>,
  <hlink|<verbatim|solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Root.lean#L60-L70>.

  <strong|Lemma 4.9 (two-point readout).> Fix path data, a clip, norm
  parameters and activities <math|F<around|(|x,d|)>> whose regular functions
  vanish at the flat configuration. Let <math|V> be small-field everywhere
  and suppose <math|H<rsub|x><around|(|1|)>,H<rsub|x><around|(|V|)>\<gtr\>0>.
  Define

  <\equation*>
    f<around|(|x,d|)>=<around|(|\<beta\><rprime|'><rsub|x>+\<alpha\>+d|)>*<space|0.17em>\<cal-K\><around|(|V|)>+\<cal-L\><around|(|V|)>+\<cal-E\><rsub|F<around|(|x,d|)>><around|(|V|)>-log
    <frac|H<rsub|x><around|(|1|)>|H<rsub|x><around|(|V|)>>.
  </equation*>

  Install the trial with coupling <math|\<beta\><rprime|'><rsub|x>+\<alpha\>+d<around|(|x|)>>
  and vacuum constant <math|v<rsub|x>=<around|\||\<Lambda\>|\|><rsup|-1>*log
  H<rsub|x><around|(|1|)>>. If <math|f<around|(|x,d<around|(|x|)>|)>=0>, the
  trial equals <math|H<rsub|x>> at <math|1> and at <math|V>. If moreover the
  template satisfies shape control (III.9.4(R)), it equals <math|H<rsub|x>>
  at every configuration.

  <em|Sketch:> At <math|U=1> the kinetic, loop and activity terms vanish and
  the gas is <math|1>. At small-field <math|V> the gas is <math|1>. Shape
  control at a zero of <math|f> gives <math|<math-up|shape>=H<rsub|x>/H<rsub|x><around|(|1|)>>.

  <em|Lean:> <hlink|<verbatim|Template.residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65>,
  <hlink|<verbatim|Template.passes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L99-L105>,
  <hlink|<verbatim|Template.realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L119-L125>,
  <hlink|<verbatim|Template.response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L131-L140>.

  <strong|Lemma 4.10 (surplus from a pre-reset presentation).> Suppose that
  on <math|V=1> and on every small-field <math|V>

  <\equation*>
    H<rsub|x><around|(|V|)>=exp <around*|(|u<rsub|x>\|\<Lambda\><rsub|m>\|-\<beta\><rprime|'><rsub|x>*<space|0.17em>\<cal-M\><around|(|V|)>-\<alpha\><rsub|N,m>*<space|0.17em>\<cal-S\><around|(|V|)>-\<cal-L\><around|(|V|)>-\<cal-E\><rsub|x><around|(|V|)>|)>,
  </equation*>

  where <math|\<cal-M\>> is the unmasked main term (quadratic, cubic and
  quartic), <math|\<cal-S\>> its quadratic part, and <math|\<cal-E\><rsub|x>>
  has size <math|\<leqslant\>c<rsub|m>*\<varepsilon\><rsub|m>/4>. Assume the
  coarse path bounds with cap <math|C> and the cubic condition
  <math|<around|\||\<alpha\><rsub|N,m>|\|>*<space|0.17em>2*C*t<rsub|m><rsup|3>\<leqslant\>c<rsub|m>*\<varepsilon\><rsub|m>/2>.
  Then the surplus inequality of III.9.4(I) holds. If, in addition, the
  output activities satisfy the catalogue and slow-variation assumptions of
  III.9.4(I), then all of (I) holds.

  <em|Sketch:>

  <\itemize-minus>
    <item>On small-field <math|V>, <math|\<cal-K\><around|(|V|)>=\<cal-M\><around|(|V|)>>
    and the loop functional is unmasked.

    <item><math|<around|\||\<cal-K\><around|(|V|)>-\<cal-S\><around|(|V|)>|\|>\<leqslant\>2*C<around|\||\<Lambda\>|\|>*t<rsup|3>>,
    since the cubic and quartic atoms are <math|O<around|(|t<rsup|3>|)>> per
    site.

    <item>The regular activities at <math|1> and at <math|V> cost
    <math|2\<cdot\><around|\||\<Lambda\>|\|>*c*\<varepsilon\>/4>.

    <item>The cubic condition absorbs <math|<around|\||\<alpha\>|\|>*<space|0.17em><around|\||\<cal-K\>-\<cal-S\>|\|>>.
    It holds eventually because <math|<around|\||\<alpha\>|\|>\<leqslant\>\<omega\>+\<kappa\>*log
    L> and <math|t<rsup|3>\<ll\><wide|\<beta\>|^><rsup|-11/10>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Prereset.income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L91-L96>,
  <hlink|<verbatim|Prereset.value_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Regular.lean#L73-L87>,
  <hlink|<verbatim|pays_surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L124-L143>,
  <hlink|<verbatim|higher_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L52-L69>,
  <hlink|<verbatim|CubicGate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L96-L98>,
  <hlink|<verbatim|within_alpha>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L89-L94>.

  <subsection|4.4 The reset step><label|44-the-reset-step>

  <strong|Lemma 4.11 (one step).> This is III.9.4.

  <em|Sketch:>

  <\itemize-minus>
    <item>(P) and (V) give <math|<around|\||\<Lambda\><rsub|m>|\|>*<around|(|c<rsub|m>+1|)>*\<varepsilon\><rsub|m>\<leqslant\><tfrac|1|2>\<cal-K\><around|(|V|)>*r<rsub|m>>.

    <item>Slow motion in <math|d> gives slope
    <math|\<geqslant\>\<mu\>\<assign\><tfrac|1|2>\<cal-K\><around|(|V|)>>.

    <item>The surplus inequality and <math|<around|\||\<cal-E\><around|(|V|)>|\|>\<leqslant\><around|\||\<Lambda\>|\|>*\<varepsilon\><rsub|m>>
    give <math|<around|\||f<around|(|x,0|)>|\|>\<leqslant\>\<mu\>*r<rsub|m>>.

    <item><math|f> is continuous in <math|x> by Lemma 4.15.

    <item>Lemma 4.8 gives <math|d>; Lemma 4.9 installs the trial; (R) gives
    the identity at all configurations, the forced bound and recipe
    acceptance.

    <item><math|<around|\||\<beta\>-\<beta\><rprime|'>-\<alpha\>|\|>=<around|\||d|\|>\<leqslant\>r<rsub|m>\<leqslant\>1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|correct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L157-L173>,
  <hlink|<verbatim|advance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L175-L189>,
  <hlink|<verbatim|Income.paidResponse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L121-L137>,
  <hlink|<verbatim|Income.balance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L139-L152>.

  <strong|Lemma 4.12 (the marginal coefficient of the activities).> Let
  <math|f> be a local, gauge-invariant regular function anchored at <math|o>,
  smooth through the prescribed derivative order, and let <math|\<frak-g\>>
  be simple. The second derivative of <math|f> at the trivial configuration,
  along the canonical affine link test fields centered at <math|o>, with
  curls <math|X> in orientation <math|b> and <math|Y> in orientation
  <math|b<rprime|'>>, equals <math|<math-up|coeff><rsub|f><around|(|b,b<rprime|'>|)><around|\<langle\>|X,Y|\<rangle\>>>
  (Schur). For the projection used below, retain this Hessian coefficient
  when the support enlarged by the radius-<math|2> halo of <math|o> does not
  wrap around the torus, and set the projected coefficient to <math|0>
  otherwise.

  For a family <math|A> of such functions with an anchored regular norm
  bound, whose addresses and values transform under translations and the
  point group, assume the torus side is at least <math|4> and put

  <\equation*>
    \<delta\><around|(|A|)>=<big|sum><rsub|f<text| anchored at
    >0>q<rsub|f><around|(|01,01|)>.
  </equation*>

  Here <math|q<rsub|f>> denotes the projected coefficient just defined. Then:

  <\itemize-minus>
    <item>for every site <math|o>, <math|<big|sum><rsub|f<text| anchored at
    >o>q<rsub|f><around|(|b,b<rprime|'>|)>=\<delta\><around|(|A|)>*<space|0.17em>\<b-1\><rsub|b=b<rprime|'>>>;

    <item>the sum of the projected Hessian forms at <math|o> is
    <math|\<delta\><around|(|A|)>*<big|sum><rsub|b><around|\||w<rsub|b>|\|><rsup|2>>.
    Its quadratic energy is <math|<tfrac|1|2>\<delta\><around|(|A|)>*<big|sum><rsub|b><around|\||w<rsub|b>|\|><rsup|2>>;

    <item>if <math|A> has regular size <math|c>, then
    <math|t<rsup|2><around|\||\<delta\><around|(|A|)>|\|>\<leqslant\>c>.
  </itemize-minus>

  <em|Sketch:> Gauge invariance makes each color bilinear form invariant
  under the adjoint action, hence scalar by simplicity. For each pair of
  distinct plaquette orientations, reflecting an axis belonging to exactly
  one of them reverses the corresponding off-diagonal coefficient; its sum
  therefore vanishes. Signed permutations carry each diagonal coefficient to
  <math|<around|(|01,01|)>>. The bound follows from the second derivative in
  a direction of size <math|t>.

  <em|Lean:> <hlink|<verbatim|Averaging.delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75>,
  <hlink|<verbatim|Averaging.isotropic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L77-L98>,
  <hlink|<verbatim|Averaging.identity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L100-L102>,
  <hlink|<verbatim|Averaging.delta_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L103-L112>,
  <hlink|<verbatim|label_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L34-L40>,
  <hlink|<verbatim|projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Projection.lean#L89-L90>.

  <strong|Lemma 4.13 (exact reorganization).> Assume the early presentation,
  local bounds, compatible clip, width, reorganization inequalities and
  recipe acceptance of III.9.5(a). Let <math|\<delta\><rsub|x>> be the
  coefficient of Lemma 4.12. The reorganized representation has the same
  paths, coupling <math|\<beta\><rprime|'><rsub|x>+\<alpha\><rsub|N,m>+\<delta\><rsub|x>>,
  and vacuum constant <math|\<tau\><rsub|x>-<around|\||\<Lambda\><rsub|m>|\|><rsup|-1>*<big|sum><rsub|i>E<rsub|x,i><around|(|1|)>>.
  Its density equals <math|H<rsub|x>> at every configuration, and it obeys
  the level-<math|m> allowances and the forced bound
  <math|e<rsup|-g*M<rsub|m+1><rsup|2>>>.

  <em|Sketch:> For an early regular function <math|E<rsub|i>> with support
  <math|X<rsub|i>> and anchor <math|o<rsub|i>>, put
  <math|Y<rsub|i>=X<rsub|i>\<cup\><math-up|halo><rsub|2><around|{|o<rsub|i>|}>>.
  Let <math|Q<rsub|i>> be one half of its projected Hessian applied to the
  local clover curvatures, and set <math|E<rsub|i><rsup|0>=E<rsub|i>-E<rsub|i><around|(|1|)>-Q<rsub|i>>.
  Define <math|D<rsub|i>> to vanish when <math|Y<rsub|i>> is small-field, and
  otherwise by

  <\equation*>
    D<rsub|i>=E<rsub|i><around|(|1|)>+\<chi\><rsub|<around|{|o<rsub|i>|}>>*Q<rsub|i>-\<chi\><rsub|X<rsub|i>>*E<rsub|i>.
  </equation*>

  Then, at every configuration,

  <\equation*>
    \<chi\><rsub|X<rsub|i>>*E<rsub|i>=E<rsub|i><around|(|1|)>+\<chi\><rsub|<around|{|o<rsub|i>|}>>*Q<rsub|i>-D<rsub|i>+\<chi\><rsub|Y<rsub|i>>*E<rsub|i><rsup|0>.
  </equation*>

  The projected terms sum to <math|\<delta\><rsub|x>/2> times the small-field
  clover-curvature square. The regular terms also acquire
  <math|\<delta\><rsub|x>> times the difference between each quadratic clover
  proxy and its original quadratic path term, and
  <math|-<around|(|\<alpha\><rsub|N,m>+\<delta\><rsub|x>|)>> times each
  masked cubic or quartic path term. The remaining mask discrepancies become
  logarithmic factors in the forced gas.

  More precisely, let <math|\<cal-E\><rsup|<math-up|new>><rsub|x>> denote the
  resulting regular sum and <math|\<ell\><rsub|x>> the sum of these
  logarithmic factors before they are absorbed into the gas. The activity and
  path splitting identities give

  <\equation*>
    <around|(|\<alpha\><rsub|N,m>+\<delta\><rsub|x>|)>*\<cal-K\>+\<cal-E\><rsup|<math-up|new>><rsub|x>-\<ell\><rsub|x>=\<alpha\><rsub|N,m>*\<cal-S\>+\<cal-E\><rsup|<math-up|early>><rsub|x>-<big|sum><rsub|i>E<rsub|x,i><around|(|1|)>.
  </equation*>

  Absorbing <math|e<rsup|\<ell\><rsub|x>>> into the original forced gas
  proves equality of the full densities, including at configurations where
  masks fail. The reorganization estimates bound the regular terms and the
  added forced factors; the numerical closure conditions give the claimed
  allowances. Recipe acceptance is a separate hypothesis.

  The trial activities are independent of the correction parameter <math|d>.
  Thus exact equality at <math|d=\<delta\><rsub|x>> gives
  <math|f<around|(|x,d|)>=<around|(|d-\<delta\><rsub|x>|)>*\<cal-K\><around|(|V|)>>
  and shape control on <math|<around|[|-r<rsub|m>,r<rsub|m>|]>>. The unique
  root of Lemma 4.11 is therefore <math|\<delta\><rsub|x>>.

  <em|Lean:> <hlink|<verbatim|Collection.Local.actual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L92-L95>,
  <hlink|<verbatim|Local.exponent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L70-L82>,
  <hlink|<verbatim|Return.settled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Payment.lean#L77-L84>,
  <hlink|<verbatim|Return.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L74-L94>,
  <hlink|<verbatim|Return.earns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L37-L42>,
  <hlink|<verbatim|Return.remainders>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L44-L61>,
  <hlink|<verbatim|Return.physical_shape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L30-L36>,
  <hlink|<verbatim|Return.reset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Advance.lean#L64-L90>,
  <hlink|<verbatim|Residual.splits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Residual.lean#L114-L120>,
  <hlink|<verbatim|Local.first_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L54-L59>,
  <hlink|<verbatim|Collection.path_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Rewrites.lean#L77-L93>.
  <em|(proof read, including the reorganized activities in
  <hlink|<verbatim|Local.renew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128>)>

  <strong|Lemma 4.14 (from per-step inputs to the program).> This is
  III.9.5(b). The numerical conditions (<hlink|<verbatim|Use.Machine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L41-L49>),
  the existence of early presentations along every admissible input curve
  (<hlink|<verbatim|Use.Offering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L77-L81>)
  and the start-up curves (<hlink|<verbatim|Use.Origins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L83-L84>)
  together give the step program, assuming <math|G> is simple and the machine
  uses the compatible recipe and physical bounds of III.9.5.

  <em|Sketch:> For each input curve, Lemma 4.7 provides a probe. Lemma 4.13
  provides (I) and (R). Lemma 4.11 then gives the output curve and the bound
  <math|<around|\||\<beta\>-\<beta\><rprime|'>-\<alpha\>|\|>\<leqslant\>r<rsub|m>>.

  <em|Lean:> <hlink|<verbatim|Use.supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L85-L88>,
  <hlink|<verbatim|Machine.packet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Downstream.lean#L71-L74>,
  <hlink|<verbatim|Supplier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L41-L47>,
  <hlink|<verbatim|program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Stability.lean#L67-L70>.

  <subsection|4.5 Continuity of the transport><label|45-continuity-of-the-transport>

  <strong|Lemma 4.15 (joint continuity of the blocked density).> Let
  <math|x\<mapsto\>\<rho\><rprime|'><rsub|x>> be a continuous curve of lawful
  representations with fixed path data, clip and norm parameters, and assume
  the block kernel satisfies the branch conditions of III.1. Then
  <math|<around|(|x,V|)>\<mapsto\><around|(|T<rsup|<around|(|m|)>><rsub|\<beta\><rprime|'><rsub|x>>*\<rho\><rprime|'><rsub|x>|)><around|(|V|)>>
  is jointly continuous, and <math|x\<mapsto\>\<rho\><rprime|'><rsub|x><around|(|U|)>>
  is continuous for every <math|U>.

  <em|Sketch:> Continuity of the activities in the polymer norm gives uniform
  convergence of the additive part and of the gas in <math|U>. This yields a
  local uniform bound on <math|\<rho\><rprime|'><rsub|y>>, and dominated
  convergence applies under the kernel. The kernel itself is continuous in
  <math|\<beta\>> and in the coarse configuration.

  <em|Lean:> <hlink|<verbatim|FixedRepData.continuous_push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L122-L131>,
  <hlink|<verbatim|FixedRepData.continuous_eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L93-L97>,
  <hlink|<verbatim|Catalog.stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Catalog.lean#L39-L45>.

  <subsection|4.6 Entry thresholds><label|46-entry-thresholds>

  <strong|Lemma 4.16 (monotone thresholds).> Let
  <math|T<rsub|j><around|(|x|)>> be properties, one for each stage <math|j>,
  each holding for all large <math|x>. Then any record <math|u<rsub|j>> can
  be raised to a nondecreasing record <math|m<rsub|j>\<geqslant\>u<rsub|j>>
  such that <math|T<rsub|j><around|(|x|)>> holds for all
  <math|x\<geqslant\>m<rsub|j>>. For each fine stage <math|j>, combine the
  two possible coarse targets <math|i=j> and <math|i=max <around|(|j-1,0|)>>
  first.

  <em|Sketch:> Take <math|m<rsub|j>> to be the prefix maximum of <math|max
  (<text|threshold><rsub|i>,u<rsub|i>)> over <math|i\<leqslant\>j>.

  <em|Lean:> <hlink|<verbatim|collect_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L111-L118>,
  <hlink|<verbatim|eventually_transitions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L126-L131>,
  <hlink|<verbatim|StepStages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27>,
  <hlink|<verbatim|DelayLe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38>.

  <strong|Lemma 4.17 (eventual reset inequalities).> Fix an allowed
  transition from fine stage <math|j> to coarse stage <math|i>, its block
  factor <math|L>, and all the constants in III.9.7. Write
  <math|x=<wide|\<beta\>|^><rsub|m>>, <math|y=x+\<kappa\>*log L>,
  <math|M=e<rsup|<around|(|log log x|)><rsup|2>>> and <math|q<rsub|i>> for
  the early-activity fraction. The conclusions are uniform for
  <math|<around|\||\<alpha\>|\|>\<leqslant\>\<omega\><rsub|j>+\<kappa\>*log
  L> and <math|\<beta\>\<in\><around|[|y/2,2*y|]>>. Then all the
  delay-dependent reset conditions hold for sufficiently large <math|x>.

  <em|Sketch:> The sufficient pricing condition
  <math|2*<around|(|c+1|)>\<leqslant\>\<eta\>*r*M<rsup|2>> holds because
  <math|M\<to\>\<infty\>>. Multiplication by <math|x<rsup|-1>> gives
  <math|2*<around|(|c+1|)>*x<rsup|-1>\<leqslant\>\<eta\>*r*t<rsup|2>>; since
  <math|\<varepsilon\>=x<rsup|-11/10>\<leqslant\>x<rsup|-1>> for
  <math|x\<geqslant\>1>, this implies the required pricing inequality. The
  cubic condition follows from <math|t<rsup|3>/\<varepsilon\>=x<rsup|-2/5>*M<rsup|3>\<to\>0>.

  For the local reorganization, its regular bound has the form
  <math|A<rsub|i>*H+B<rsub|i><around|\||\<alpha\>|\|>*t<rsup|3>>, with
  <math|A<rsub|i>,B<rsub|i>> fixed before <math|L>. The choice
  <math|H=q<rsub|i>*\<varepsilon\>>, with
  <math|A<rsub|i>*q<rsub|i>\<leqslant\>1/64>, leaves room for an output bound
  <math|\<varepsilon\>/32>. The forced estimate controls both the early
  forced terms and the added logarithmic factors, at support exponent
  <math|a+1>, where <math|a> is the coarse support exponent. The width
  condition is <math|4*<around|(|a+1|)>\<leqslant\>\<sigma\>*B>, where
  <math|\<sigma\>> is the path-decay width. It holds since
  <math|B\<to\>\<infty\>>, as does clip compatibility. The corresponding
  forced output bound is <math|e<rsup|-R<rsub|j*i><around|(|y,\<beta\>|)>>>.
  If <math|4*g<rsub|j>\<leqslant\><math-up|rate><rsub|j*i>> and
  <math|\<beta\>\<in\><around|[|y/2,2*y|]>>, its definition gives
  <math|R<rsub|j*i><around|(|y,\<beta\>|)>\<geqslant\>g<rsub|j>*M<around|(|y|)><rsup|2>>;
  for large <math|x> it also gives the ordinary forced allowance at <math|x>.

  The inherited condition is

  <\equation*>
    <around*|(|f<rsub|j*i>/L+u<rsub|j*i><around|(|x|)>|)>*\<varepsilon\><around|(|y|)>+\<cal-R\><rsub|j*i><around|(|x,y,\<beta\>|)>\<leqslant\>q<rsub|i>*\<varepsilon\><around|(|x|)>,<space|2em>\<beta\>\<in\><around|[|y/2,2*y|]>.
  </equation*>

  Here <math|\<cal-R\><rsub|j*i>> is the fixed step-estimator residual at
  exponent <math|\<theta\><rsub|j>>; it is
  <math|o<around|(|\<varepsilon\><around|(|x|)>|)>> uniformly in this band
  when <math|\<theta\><rsub|j>\<leqslant\>1>, and
  <math|u<rsub|j*i><around|(|x|)>\<to\>0>. The pre-block inequality gives
  <math|f<rsub|j*i>/L\<leqslant\>q<rsub|i>/8>. Together with
  <math|\<varepsilon\><around|(|y|)>/\<varepsilon\><around|(|x|)>\<to\>1>,
  these bounds prove the inequality. Lemma 4.16 combines the conditions in
  the order: inherited estimates, local reorganization, cubic estimate, reset
  pricing; the sensors were fixed before <math|L>.

  <em|Lean:> <hlink|<verbatim|can_delay_reset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L56-L62>,
  <hlink|<verbatim|buys_reset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L71-L89>,
  <hlink|<verbatim|sensors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L46-L49>,
  <hlink|<verbatim|delay_cubic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Precision.lean#L100-L106>,
  <hlink|<verbatim|Time.cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126>,
  <hlink|<verbatim|Time.late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L48-L59>,
  <hlink|<verbatim|Time.open_shop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L62-L65>,
  <hlink|<verbatim|Time.now>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Opening.lean#L84-L119>,
  <hlink|<verbatim|Time.rawGate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L30-L56>,
  <hlink|<verbatim|Time.beforeWait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inherited.lean#L75-L89>.

  <strong|Lemma 4.18 (joint start-up thresholds).> Assume <math|G> is simple
  and <math|c<rsub|<math-up|dir>>\<leqslant\>1> at every used stage. Fix the
  observable sections, marker bounds and nonnegative additional start-up
  requests. Before choosing block sizes, enlarge the path and column bounds
  so that the Wilson top paths satisfy the stage bounds and the column bound
  is at least the factorial of the derivative order. Then the block-size
  floors and the coupling and scale thresholds can be enlarged so that every
  realized choice of levels meeting them has the start-up bounds of Lemma 4.5
  and the following additional bounds. Write
  <math|x=<wide|\<beta\>|^><rsub|N>>, <math|t=t<rsub|N>>, <math|M=M<rsub|N>>,
  <math|B=B<rsub|N>> and <math|a> for the support exponent at stage
  <math|j=J<rsub|N>>.

  <\itemize-minus>
    <item>For every prescribed observable section of degree
    <math|d\<leqslant\>j>, its stencil diameter is at most <math|B>, and

    <\equation*>
      <wide|\<varepsilon\>|~><rsub|N>*C<rsub|d>*t<rsup|-s<rsub|d>>\<leqslant\><sqrt|<wide|\<varepsilon\>|~><rsub|N>>,
    </equation*>

    where <math|s<rsub|d>> is the total slot order of its section family and
    <math|C<rsub|d>\<geqslant\>1> bounds its evaluation on every
    configuration by <math|C<rsub|d>> times the coefficient
    <math|\<ell\><rsup|1>> norm.

    <item>For <math|\<beta\>\<in\><around|[|x/4,2*x|]>>, the start-up regular
    bound remains <math|\<varepsilon\><rsub|N>> after increasing the support
    exponent by any preassigned <math|\<delta\><rsub|j>\<geqslant\>0>. The
    connected-polymer estimate retains a forced-decay factor
    <math|e<rsup|-\<nu\>*M<rsup|2>>>, where
    <math|\<nu\>=<around|(|128*h<rsub|4>|)><rsup|-1>\<gtr\>0> and
    <math|h<rsub|4>=2<rsup|4>*<space|0.17em>4!> is the order of the lattice
    point group; its final forced bound is at most
    <math|<wide|\<varepsilon\>|~><rsub|N>>.

    <item>The mixture estimates have <math|B\<geqslant\>8>,
    <math|x<rsup|-1/2>*<around|(|k+1|)>*e<rsup|a*5<rsup|4>>\<leqslant\>1>,
    and a connected-polymer bound at most <math|1/2> with support exponent
    increased by <math|8>.

    <item>For each preassigned integer observation radius <math|r<rsub|j>>,
    the first-step numerical bound is

    <\equation*>
      <around|(|4*B+1|)><rsup|4>*<around|(|2*r<rsub|j>*B+1|)><rsup|4>*<space|0.17em>8*<around*|[|<frac|b<rsub|K>|2>+D<rsub|G>*log
      <around*|(|4*<around|(|1+2*x|)>|)>|]>\<leqslant\><frac|x*<space|0.17em>t<rsup|2>|64*h<rsub|4>>,
    </equation*>

    where <math|b<rsub|K>\<gtr\>0> is the kernel penalty and
    <math|D<rsub|G>=dim<rsub|\<bbb-R\>>M<rsub|n><around|(|\<bbb-C\>|)>>.
  </itemize-minus>

  These conclusions persist when the thresholds are increased.

  <em|Sketch:> At a fixed stage only finitely many observable degrees are
  requested. At fixed stage, the stencil and cylinder constants are fixed,
  while <math|B\<to\>\<infty\>> and <math|e<rsup|-M<rsup|1/5>>> absorbs every
  fixed power of <math|t<rsup|-1>>. The additional support weights and the
  first-step cost grow polynomially in <math|log x>, whereas
  <math|x*t<rsup|2>=M<rsup|2>> grows faster than every such polynomial. Take
  common thresholds and enlarge the block-size floors for the cross-level
  support estimates. The joint pricing theorem also increases the scale
  thresholds, while preserving the prescribed volume and growth data. This
  establishes numerical preparation; subsequent nonlinear steps still require
  their own activity estimates.

  <em|Lean:> <hlink|<verbatim|StrongStartup.prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L87-L107>,
  <hlink|<verbatim|StrongStartup.before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Pricing.lean#L47-L64>,
  <hlink|<verbatim|Extra.Multi.pricing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Schedule.lean#L98-L111>,
  <hlink|<verbatim|Timing.receive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Fast.lean#L44-L51>,
  <hlink|<verbatim|ThroughLaunch.developer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L105-L138>,
  <hlink|<verbatim|Mark.Ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Author.lean#L34-L36>,
  <hlink|<verbatim|StrongStartup.Escrow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Reserve.lean#L69-L76>,
  <hlink|<verbatim|StrongStartup.BondFuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/STRONG_STARTUP_CREDIT/Sleeves.lean#L51-L52>,
  <hlink|<verbatim|Mixture.Extras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/MixRoom.lean#L75-L78>.

  <subsection|4.7 Assembly and the running
  law><label|47-assembly-and-the-running-law>

  <strong|Lemma 4.19 (bounds at the edges of the shooting window).> Assume
  <math|\<kappa\>\<gtr\>0> and <math|<wide|\<beta\>|\<bar\>>\<gtr\>0>. Put
  <math|\<phi\><rsub|m>=<wide|\<beta\>|\<bar\>>+<tfrac|\<kappa\>|2>s<rsub|m>>
  and <math|\<psi\><rsub|m>=<wide|\<beta\>|\<bar\>>+2*\<kappa\>*s<rsub|m>>.
  Then <math|<around|[|\<phi\><rsub|m>,\<psi\><rsub|m>|]>\<subset\>\<frak-B\><rsub|m>>,
  and <math|\<phi\><rsub|0>=\<psi\><rsub|0>=<wide|\<beta\>|\<bar\>>>. Assume
  <math|\<omega\><rsub|J<rsub|m+1>>\<leqslant\><tfrac|\<kappa\>|4>log
  L<rsub|m>> (guaranteed by the choice of block sizes). If a step satisfies
  the transfer inequality, then:

  <\itemize-minus>
    <item>input coupling <math|\<phi\><rsub|m+1>> forces output coupling
    <math|\<less\>\<phi\><rsub|m>>;

    <item>input coupling <math|\<psi\><rsub|m+1>> forces output coupling
    <math|\<gtr\>\<psi\><rsub|m>>.
  </itemize-minus>

  <em|Sketch:> <math|\<beta\><rsub|m>\<leqslant\>\<phi\><rsub|m+1>-\<kappa\>*log
  L<rsub|m>+\<omega\>\<leqslant\>\<phi\><rsub|m>-<tfrac|\<kappa\>|4>log
  L<rsub|m>>, and symmetrically for <math|\<psi\>>.

  <em|Lean:> <hlink|<verbatim|Shoot.gates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90>,
  <hlink|<verbatim|Shoot.limits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68>,
  <hlink|<verbatim|Shoot.Drifting.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79>.

  <strong|Lemma 4.20 (shooting in the bare coupling).> Suppose the step
  program holds and <math|G> is simple. Then for all <math|N,p> there is a
  trail <math|<around|(|\<rho\><rsub|N,p,m>|)><rsub|m\<leqslant\>N>> with the
  following properties:

  <\itemize-minus>
    <item>it starts with a Wilson start-up
    <math|e<rsup|-\<beta\>*S<rsub|W>>>;

    <item>each level is admissible, with coupling in
    <math|<around|[|\<phi\><rsub|m>,\<psi\><rsub|m>|]>>;

    <item>consecutive levels satisfy the transfer clause;

    <item><math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>.
  </itemize-minus>

  Choosing these trails for all <math|N,p> gives a history satisfying
  (1)\U(5) of III.9.3. The common-path clause follows because every trail
  uses the same prescribed <math|P<rsub|N,m>>.

  <em|Sketch:> Decreasing induction on <math|m> carries an interval
  <math|<around|[|l,u|]>> of bare couplings and a continuous curve of trails.

  <\itemize-minus>
    <item>At <math|m=N>, restrict the start-up curve to
    <math|<around|[|\<phi\><rsub|N>,\<psi\><rsub|N>|]>>.

    <item>At each step, apply the step program, giving an output curve over
    the same interval. By Lemma 4.19 its couplings at <math|l> and <math|u>
    lie below <math|\<phi\><rsub|m>> and above <math|\<psi\><rsub|m>>. A
    compactness and intermediate-value argument gives
    <math|<around|[|l<rprime|'>,u<rprime|'>|]>\<subset\><around|[|l,u|]>>
    whose image is <math|<around|[|\<phi\><rsub|m>,\<psi\><rsub|m>|]>>, with
    <math|\<phi\><rsub|m>,\<psi\><rsub|m>> attained at the ends.

    <item>At <math|m=0> the left end gives
    <math|\<beta\><rsub|0>=<wide|\<beta\>|\<bar\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Shoot.steps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154>,
  <hlink|<verbatim|Shoot.narrow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49>,
  <hlink|<verbatim|Shoot.successful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159>,
  <hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>,
  <hlink|<verbatim|Graces.winnow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50>.

  <strong|Lemma 4.21 (running).> For a history on levels satisfying the
  drift-smallness and stage-divergence conditions of III.9.2, clauses (4) and
  (5) of III.9.3 imply clause (6).

  <em|Sketch:>

  <\itemize-minus>
    <item>By induction from <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>=<wide|\<beta\>|^><rsub|0>>:
    <math|<around|\||\<beta\><rsub|N,p,i>-<wide|\<beta\>|^><rsub|i>|\|>\<leqslant\><big|sum><rsub|k=1><rsup|i>\<omega\><rsub|J<rsub|k>>>.

    <item>Given <math|\<varepsilon\>>, pick <math|j> with
    <math|J<rsub|k+1><rsup|-2>\<leqslant\>\<varepsilon\>/2> for
    <math|k\<geqslant\>j>, using <math|J\<to\>\<infty\>>.

    <item>The drift condition gives <math|<big|sum><rsub|k\<leqslant\>i>\<omega\><rsub|J<rsub|k>>\<leqslant\><big|sum><rsub|k\<leqslant\>j>\<omega\><rsub|J<rsub|k>>+<tfrac|\<varepsilon\>|2><around|(|s<rsub|i>-s<rsub|j>|)>>.

    <item>This is <math|\<leqslant\>\<varepsilon\>*s<rsub|i>> for <math|i>
    large, since <math|s<rsub|i>\<to\>\<infty\>>. The bound is uniform in
    <math|N\<geqslant\>i> and <math|p>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Shoot.trajectory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>,
  <hlink|<verbatim|Orchard.traject>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Orchard/First.lean#L55-L88>.
  The second version replaces (5) by the band at level <math|0>.

  <strong|Lemma 4.22 (the history of the main theorem).> Fix the compatible
  data of III.13, including its analytic continuation bounds and
  finite-cutoff solutions. For every <math|N,p> and every real <math|b> with
  <math|<around|\||b|\|>\<less\>r<rsub|\<ast\>>>, there is a trail in that
  construction with level-<math|0> coupling <math|<wide|\<beta\>|\<bar\>>+b>.
  Its bare coupling is unique within the specified class of finite-cutoff
  solutions. The coupling and activity arrays admit analytic continuation to
  the complex disc <math|<around|\||b|\|>\<less\>r<rsub|\<ast\>>>, with
  <math|r<rsub|\<ast\>>\<gtr\>0> independent of <math|N,p>. At <math|b=0>,
  these trails form a selected history, and every step is a reset step.

  <em|Sketch:> III.13 solves a coupled finite-cutoff fixed-point problem for
  all the level couplings. For real offsets its fixed point gives real trails
  and the stated endpoint; the comparison theorem gives uniqueness in this
  class. At <math|b=0>, their admissibility gives the common paths and
  level-wise bounds; their reset steps give exact transfer. Lemma 4.21
  supplies running. This is the history used in the Wilson family. The
  calibration condition records its realized trails and reset steps; it does
  not assert uniqueness among all representations of the same density.

  <em|Lean:> <hlink|<verbatim|Spire.Uses.exists_bolt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L78-L85>,
  <hlink|<verbatim|Spire.Uses.hits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L68>,
  <hlink|<verbatim|Upland.Arc.exists_trial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75>,
  <hlink|<verbatim|Mast.calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36>,
  <hlink|<verbatim|Upland.Arc.finiteCut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L55-L58>,
  <hlink|<verbatim|Spire.Fitted.acts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Orbs.lean#L41-L42>,
  <hlink|<verbatim|Spire.Fitted.unions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Alpine.lean#L64-L70>.
  <em|(proof read for the displayed assembly and finite-cutoff uniqueness
  theorem; inputs from III.13)>

  <subsection|4.8 Auxiliary results><label|48-auxiliary-results>

  <strong|Lemma 4.23 (marker-rooted sums).> This is III.9.8.

  <em|Sketch:>

  <\itemize-minus>
    <item>If <math|x\<in\>X<rsub|i>> and a marker <math|v> of
    <math|X<rsub|i>> sits in <math|X<rsub|i>>, then
    <math|<math-up|dist><around|(|o<around|(|v|)>,x|)>\<leqslant\><math-up|cover><rsub|M><around|(|X<rsub|i>|)>*<around|(|4*M+2|)>+2*M>.
    So <math|e<rsup|a<space|0.17em><math-up|cover>>\<leqslant\>e<rsup|<around|(|a+1|)><math-up|cover>>*<space|0.17em>e<rsup|1-<math-up|dist>/<around|(|4*M+2|)>>>.

    <item>Summing over <math|i> marker by marker gives at most <math|c> per
    marker.

    <item>Summing over markers gives <math|\<leqslant\>\<mu\>*<big|sum><rsub|y>e<rsup|1-<math-up|dist><around|(|y,x|)>/<around|(|4*M+2|)>>\<leqslant\>\<mu\>*e*<around|(|2*<around|(|16*M+9|)>|)><rsup|4>>,
    uniformly in the torus.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Extra.Multi.root_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L161-L199>,
  <hlink|<verbatim|torus_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_BOUNDS/Root.lean#L136-L156>.

  <strong|Lemma 4.24 (decay of a shifted Gram inverse).> Fix a finite channel
  set <math|I>, <math|r,\<eta\>\<gtr\>0> and <math|A\<geqslant\>0>. There are
  <math|C\<geqslant\>0> and <math|\<tau\>\<gtr\>0>, depending only on
  <math|I,r,\<eta\>,A>, such that every real convolution kernel <math|P> on
  <math|\<bbb-Z\><rsup|4>> with

  <\equation*>
    <big|sum><rsub|z\<in\>\<bbb-Z\><rsup|4>>e<rsup|\<eta\><around|\||z|\|><rsub|1>><around|\||P<rsub|a*b><around|(|z|)>|\|>\<leqslant\>A<space|2em><around|(|a,b\<in\>I|)>
  </equation*>

  has a real convolution kernel <math|S> with the corresponding bound
  <math|C> at exponent <math|\<tau\>>, and, on every torus,

  <\equation*>
    S<rsub|n>*<around*|(|r*I+P<rsub|n><rsup|<math-ss|T>>*P<rsub|n>|)>=I.
  </equation*>

  Here <math|P<rsub|n>,S<rsub|n>> are periodizations. Thus
  <math|S<rsub|n>=<around|(|r*I+P<rsub|n><rsup|<math-ss|T>>*P<rsub|n>|)><rsup|-1>>,
  uniformly in the torus side.

  <em|Sketch:> On real momentum, <math|r*I+<wide|P|^><around|(|k|)><rsup|\<ast\>><wide|P|^><around|(|k|)>>
  is positive definite. Compactness in the fixed finite channel space and the
  weighted kernel bound give invertibility and a uniform inverse bound in a
  narrower complex strip. Fourier coefficient estimates give an exponentially
  summable inverse kernel. The discrete Fourier transform identifies its
  periodization with the inverse matrix on every torus.

  <em|Lean:> <hlink|<verbatim|Polar.deliver>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L86-L91>,
  <hlink|<verbatim|Polar.invert_tori>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Transform.lean#L48-L84>,
  <hlink|<verbatim|Polar.writes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Polar.lean#L142-L163>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The early presentation with local bounds comes from III.10, the one-loop
  coefficient from III.7, and the compatible kinetic data from III.13. Given
  those inputs, the reset must preserve the full masked density, including
  failed-mask discrepancies and the forced gas. Two-point matching alone does
  not prove that identity. Lemma 4.13 supplies it and proves the output
  activity bounds.

  The marginal coefficient is isolated by gauge symmetry, simplicity and
  lattice isotropy. It is a Hessian coefficient, so its quadratic energy
  carries a factor <math|1/2>. The Wilson start-up has a uniform
  <math|O<around|(|t<rsup|5>|)>> residual even when individual links are far
  from the identity. Continuity in the bare parameter must hold in the
  activity norms despite the hard configuration masks; shooting depends on
  this continuity.

  The block factors grow. The planned one-loop condition implies
  <math|\<omega\><rsub|J<rsub|m+1>>\<geqslant\>1>, while the drift condition
  gives <math|log L<rsub|m>\<geqslant\>J<rsub|m+1><rsup|2>\<to\>\<infty\>>.
  The gentle-scale condition requires <math|log
  L<rsub|m>=o<around|(|s<rsub|m>|)>>. The reset correction is small:

  <\equation*>
    <around|\||\<delta\><rsub|x>|\|>\<leqslant\><frac|c<rsub|m>|4>*<wide|\<beta\>|^><rsub|m><rsup|-1/10>*e<rsup|-2<around|(|log
    log <wide|\<beta\>|^><rsub|m>|)><rsup|2>>.
  </equation*>

  The constants <math|c<rsub|m>> depend on the stage pair, so this is a
  fixed-stage estimate. The separate one-loop error is bounded independently
  of <math|L> once its earlier parameters are fixed; no decay of that error
  in <math|L> is required. The argument gives
  <math|\<beta\><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>+o<around|(|s<rsub|m>|)>>
  uniformly in the cutoff and volume. It does not give a bounded remainder or
  a two-loop expansion.

  The coarsest coupling is prescribed exactly. Shooting chooses the bare
  coupling separately for each cutoff and volume and restricts the surviving
  parameter intervals to keep every level in its band. The uniqueness theorem
  in III.13 applies to its specified continuation class.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|<math|\<kappa\>=<frac|11*C<rsub|G>|24*\<pi\><rsup|2>>=2*b<rsub|0>>>|<cell|<hlink|<verbatim|Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>,
  <hlink|<verbatim|Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>>|<cell|slope
  of <math|\<beta\>> against <math|log <around|(|1/a|)>>>>|<row|<cell|<math|s<rsub|m>>,
  <math|a<rsub|m>>, <math|L<rsub|m>>>|<cell|<hlink|<verbatim|Schedule.scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>,
  <hlink|<verbatim|Schedule.a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>,
  <verbatim|block>>|<cell|scale <math|log <around|(|1/a<rsub|m>|)>>, spacing,
  block factor (odd, <math|\<geqslant\>3>)>>|<row|<cell|<math|<wide|\<beta\>|\<bar\>>>>|<cell|<verbatim|Calendar.bar>
  ("barrier")>|<cell|coupling at the coarsest
  level>>|<row|<cell|<math|<wide|\<beta\>|^><rsub|m>>,
  <math|\<frak-B\><rsub|m>>>|<cell|<hlink|<verbatim|Calendar.hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>,
  <hlink|<verbatim|band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63>>|<cell|reference
  coupling, band <math|<around|[|<wide|\<beta\>|^>/2,2*<wide|\<beta\>|^>|]>>>>|<row|<cell|<math|t<rsub|m>>,
  <math|M<rsub|m>>, <math|B<rsub|m>>>|<cell|<hlink|<verbatim|threshold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L83>,
  <hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L81>,
  <hlink|<verbatim|coverSize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L82>>|<cell|small-field
  threshold, its multiplier, cover size>>|<row|<cell|<math|\<varepsilon\><rsub|m>>,
  <math|<wide|\<varepsilon\>|~><rsub|m>>>|<cell|<hlink|<verbatim|allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L84>,
  <hlink|<verbatim|forcedAllowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L85>>|<cell|sizes
  of regular and forced activities>>|<row|<cell|<math|J<rsub|m>>,
  <math|\<omega\><rsub|j>>, <math|\<theta\><rsub|j>>>|<cell|<verbatim|Calendar.J>,
  <hlink|<verbatim|Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61>
  (<verbatim|drift>), <verbatim|theta>>|<cell|stage index, drift allowance,
  smallness exponent>>|<row|<cell|<math|\<rho\>=<around|(|P,c,E,K,b,\<beta\>,v|)>>>|<cell|<hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>>|<cell|effective
  action ("representation")>>|<row|<cell|<math|\<cal-K\><rsub|P>>>|<cell|<hlink|<verbatim|BetaTransport.kinetic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/BETA_TRANSPORT/Curve.lean#L22-L25>>|<cell|<math|\<beta\>>-coefficient
  of the leading terms>>|<row|<cell|<math|T<rsup|<around|(|m|)>><rsub|\<beta\>>>>|<cell|<hlink|<verbatim|StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>>|<cell|one
  block-spin step>>|<row|<cell|<math|\<beta\><rsub|N,p,m>>,
  <math|\<rho\><rsub|N,p,m>>>|<cell|<verbatim|History.\<beta\>>,
  <verbatim|History.rep>>|<cell|selected history>>|<row|<cell|<math|\<alpha\><rsub|N,m>>,
  <math|P<rsub|N,m>>>|<cell|<hlink|<verbatim|Kin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77>
  (<verbatim|alpha>, <verbatim|path>)>|<cell|one-loop shift of the step, path
  data>>|<row|<cell|<math|\<frak-D\>>>|<cell|<hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>>|<cell|scale
  sequence, kinetic data and recipe>>|<row|<cell|reset
  step>|<cell|<hlink|<verbatim|Directed.Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49-L55>>|<cell|one
  step with exact transfer and <math|<around|\<lvert\>|\<beta\>-\<beta\><rprime|'>-\<alpha\>|\<rvert\>>\<leqslant\>1>>>|<row|<cell|step
  program>|<cell|<hlink|<verbatim|Directed.Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72>>|<cell|start-up
  curves and reset along all admissible curves>>|<row|<cell|<math|<around|(|c<rsub|m>,r<rsub|m>|)>>>|<cell|<hlink|<verbatim|ResetPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Prices.lean#L38-L43>
  (<verbatim|cost>, <verbatim|radius>)>|<cell|income multiplier, reset window
  (<math|\<leqslant\>1>)>>|<row|<cell|<math|\<eta\><rsub|j>>, probe
  <math|V>>|<cell|<hlink|<verbatim|Sensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Probe.lean#L92-L94>,
  <hlink|<verbatim|Usable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Advance.lean#L55-L58>>|<cell|lower
  bound <math|\<cal-K\><around|(|V|)>\<geqslant\><around|\<lvert\>|\<Lambda\>|\<rvert\>>*\<eta\>*t<rsup|2>>>>|<row|<cell|<math|f<around|(|x,d|)>>,
  <math|d>>|<cell|<hlink|<verbatim|Template.residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/COUPLING_RESET/Reset.lean#L64-L65>>|<cell|scalar
  residual, coupling correction>>|<row|<cell|<math|\<chi\><rsub|X>>,
  <math|Q<rsub|i>>, <math|E<rsub|i><rsup|0>>,
  <math|D<rsub|i>>>|<cell|<hlink|<verbatim|Residual.splits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Residual.lean#L114-L120>>|<cell|small-field
  indicator, local quadratic projection, subtracted regular function, mask
  discrepancy>>|<row|<cell|<math|\<delta\><around|(|A|)>>>|<cell|<hlink|<verbatim|Averaging.delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Isotropy.lean#L75>>|<cell|isotropic
  curvature-squared coefficient of activities>>|<row|<cell|early
  presentation>|<cell|<hlink|<verbatim|Collection.earlyValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Evaluation.lean#L26-L27>,
  <hlink|<verbatim|Return.atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Inputs.lean#L70-L71>>|<cell|blocked
  density before the reset>>|<row|<cell|<math|P<rsup|<math-up|top>>>,
  <math|R<rsub|p>>, <math|Q<rsub|4>>>|<cell|<hlink|<verbatim|Design.top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Design.lean#L34-L38>,
  <hlink|<verbatim|residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Face.lean#L58>,
  <hlink|<verbatim|fourth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Curvature.lean#L154>>|<cell|Wilson
  top path data, one-plaquette residual, quartic
  coefficient>>|<row|<cell|<math|\<rho\><rsup|<math-up|start>><rsub|\<beta\>>>>|<cell|<hlink|<verbatim|Bid.Cake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L27-L28>
  with <verbatim|payload>, <verbatim|dictionary>>|<cell|Wilson start-up
  representation>>|<row|<cell|compatible <math|<around|(|c,b|)>>>|<cell|<verbatim|WilsonStartup.Decent>>|<cell|<math|c<rsub|<math-up|dir>>\<leqslant\>1>,
  <math|B\<geqslant\>2>, <math|t*e<rsup|<around|(|B-2|)>/c<rsub|<math-up|rel>>>\<geqslant\>2>>>|<row|<cell|<math|\<phi\><rsub|m>,\<psi\><rsub|m>>>|<cell|<hlink|<verbatim|floorBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57>,
  <hlink|<verbatim|ceilBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58>>|<cell|shooting
  window>>|<row|<cell|numerical bounds and entry thresholds>|<cell|glossary
  item 1>|<cell|constants in the polymer norm estimates and lower bounds on
  <math|<wide|\<beta\>|^>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Nonlinear inputs.> The reset is conditional on the early
    presentation, stronger local activity bounds and continuity. Their supply
    is the conclusion of <hlink|Rain.glazing|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Glazing.lean#L97-L104>
    and <hlink|Roost.Factor.offering|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L56>.
    Their assembly proofs identify the required inputs; the underlying
    nonlinear and Gaussian-sector estimates belong to III.10 and III.4 and
    are not independently verified here.

    <item><strong|Activity reorganization.> The explicit splitting and the
    proof of <hlink|Local.renew|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128>
    give Lemma 4.13. A full written proof should expand the local
    reorganization constants and the connected-polymer estimate that absorbs
    the logarithmic factors. Their detailed norm estimates are inputs from
    II.2 and III.10.

    <item><strong|Finite-cutoff uniqueness.> The uniqueness in Lemma 4.22
    concerns the class of solutions specified in III.13, with its fixed data
    and continuation bounds. This construction solves coupled fixed-point
    equations rather than choosing a subinterval by Lemma 4.20. The displayed
    assembly and uniqueness theorem have been checked; the analytic existence
    and comparison estimates underneath them remain for III.13. Real offsets
    satisfy <math|<around|\||b|\|>\<less\>r<rsub|\<ast\>>>; complex offsets
    parametrize analytic continuations, not real positive densities.

    <item><strong|Relaxed histories.> The intermediate history predicate with
    no endpoint restriction is distinct from the selected-history
    specification. Its running estimate uses the band at level <math|0>. The
    final centered history satisfies the exact endpoint clause.

    <item><strong|Numerical and bibliographic scope.> Lemma 4.18 gives the
    start-up numerical bounds; their use for source polynomials and
    first-step observations requires the norm definitions in III.12 and
    III.15. The cited numerical preparation does not itself construct those
    observables or their nonlinear continuations. The literature citations in
    Ÿ2 are background references; their exact bibliographic details and
    comparison with this construction remain unchecked here.

    <item><strong|Verification scope.> The correspondence checks use the
    supplied Lean source and link table. No Lean build or independent
    axiom-closure check was performed. The package sizes and main-theorem
    dependency counts are retained from the unit map (tentative).
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.8 Connected activities and backward
  dependence cones (notes)|III-8.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-9.tm>|<hlink|III.10 One full nonlinear renormalization
  step: bounds on irrelevant terms (notes) \<rightarrow\>|III-10.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.9. The marginal flow: the running coupling and
    its reset \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|3>>
    <associate|2-what-it-uses|<tuple|2|10>>
    <associate|3-strategy|<tuple|3|13>>
    <associate|4-steps|<tuple|4|13>>
    <associate|41-reference-scales|<tuple|4.1|13>>
    <associate|42-the-wilson-start-up|<tuple|4.2|13>>
    <associate|43-the-scalar-response|<tuple|4.3|15>>
    <associate|44-the-reset-step|<tuple|4.4|16>>
    <associate|45-continuity-of-the-transport|<tuple|4.5|18>>
    <associate|46-entry-thresholds|<tuple|4.6|18>>
    <associate|47-assembly-and-the-running-law|<tuple|4.7|20>>
    <associate|48-auxiliary-results|<tuple|4.8|21>>
    <associate|5-where-the-difficulty-lies|<tuple|5|22>>
    <associate|6-notation|<tuple|6|23>>
    <associate|7-what-remains-unexplained|<tuple|7|24>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|4.6|18>>
    <associate|auto-11|<tuple|4.7|20>>
    <associate|auto-12|<tuple|4.8|21>>
    <associate|auto-13|<tuple|5|22>>
    <associate|auto-14|<tuple|6|23>>
    <associate|auto-15|<tuple|7|24>>
    <associate|auto-2|<tuple|2|10>>
    <associate|auto-3|<tuple|3|13>>
    <associate|auto-4|<tuple|4|13>>
    <associate|auto-5|<tuple|4.1|13>>
    <associate|auto-6|<tuple|4.2|13>>
    <associate|auto-7|<tuple|4.3|15>>
    <associate|auto-8|<tuple|4.4|16>>
    <associate|auto-9|<tuple|4.5|18>>
    <associate|iii9-the-marginal-flow-the-running-coupling-and-its-reset--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Reference scales
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The Wilson start-up
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 The scalar response
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 The reset step
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Continuity of the transport
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Entry thresholds
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Assembly and the running law
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>