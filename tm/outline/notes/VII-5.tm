<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.4 Operator product expansion and
  contact extensions (notes)|VII-4.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-5.tm>|<hlink|VII.6 Scaling variants and fixed-field
  estimates (notes) \<rightarrow\>|VII-6.tm>>

  <ym-title|VII.5. Asymptotic freedom of the running coupling \V detailed
  notes><label|vii5-asymptotic-freedom-of-the-running-coupling--detailed-notes>

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

    <with|par-left|1tab|4.1 The running coupling
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Normalisation of the stress tensor (VII.5.4)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Exactly compatible frames (VII.5.5)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Finite-dimensional convergence (VII.5.6)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The classical stress-tensor algebra (VII.5.7)
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
    The full account of unit VII.5: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VII-5.tm>.
  </quotation>

  <hlink|Unit page|../units/VII-5.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
  <hlink|<verbatim|YM/Pert/Asymptotics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics>
  (the running coupling). Auxiliary declarations are in
  <hlink|<verbatim|YM/Extra/WEAK_SCALING_ACTLAW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW>
  (files <verbatim|Orientation>, <verbatim|Criteria>, <verbatim|Adjust>,
  <verbatim|Analysis>, <verbatim|Station>), from
  <hlink|<verbatim|YM/TraceExtension/Foundation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation>
  (files <verbatim|Caps>, <verbatim|Dilate>), and one definition from
  <hlink|<verbatim|YM/TraceExtension/Soot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot>.
  <strong|Size:> 232 lines in 43 declarations: 32 lines in
  <verbatim|Pert/Asymptotics> (5 declarations), 162 in
  <verbatim|WEAK_SCALING_ACTLAW> (24), 37 in
  <verbatim|TraceExtension/Foundation> (13), 1 in
  <verbatim|TraceExtension/Soot> (1).

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|(A) The running coupling (5 declarations).> The inverse squared
  coupling of the constructed renormalization-group trajectory grows
  logarithmically, uniformly in the lattice level and the volume (VII.5.1).
  This gives the regularity clause (Reg1) of the main theorem with slope
  <math|b<rsub|\<ast\>>=2*b<rsub|0>> (VII.5.2). It also gives the law
  <math|g<rsup|2>*log <around|(|1/a|)>\<to\>1/<around|(|2*b<rsub|0>|)>>
  (VII.5.3).

  <strong|(B) Auxiliary results (38 declarations).>

  <\itemize-minus>
    <item>VII.5.4: the normalisation of the stress tensor along free-field
    scaling sequences (used by VI.2).

    <item>VII.5.5: exactly compatible frames, built from approximately
    compatible ones (used by VII.1).

    <item>VII.5.6: two elementary convergence lemmas (used by III.12).

    <item>VII.5.7\UVII.5.8: the definitions of the classical stress-tensor
    algebra and a read-out predicate (used by VI.1, VII.2, VIII.1).
  </itemize-minus>

  <strong|Setting for (A).>

  <\itemize-minus>
    <item><em|Gauge group.> <math|G\<subset\>U<around|(|q|)>>,
    <math|q\<geqslant\>1>, is a compact matrix group with Lie algebra
    <math|\<frak-g\>> and inner product <math|<around|\<langle\>|X,Y|\<rangle\>><rsub|\<frak-g\>>=-<frac|1|q><math-up|Re><space|0.17em><math-up|tr><around|(|X*Y|)>>.
    For an orthonormal basis <math|<around|(|e<rsub|i>|)>>, define
    <math|C<rsub|\<frak-g\>>\<assign\>-<around|(|dim
    \<frak-g\>|)><rsup|-1>*<big|sum><rsub|i><math-up|tr><rsub|\<frak-g\>><around|(|<around|(|<math-up|ad><space|0.17em>e<rsub|i>|)><rsup|2>|)>>,
    with value <math|0> when <math|\<frak-g\>=0>. Here and below, simple
    means real simple and nonabelian. If <math|\<frak-g\>> is simple, its
    Killing form equals <math|-C<rsub|\<frak-g\>><around|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>><rsub|\<frak-g\>>>.
    For <math|S*U<around|(|q|)>\<subset\>U<around|(|q|)>> with
    <math|q\<geqslant\>2>, this gives <math|C<rsub|\<frak-g\>>=2*q<rsup|2>>.
    Put

    <\equation*>
      \<kappa\><rsub|G>\<assign\><frac|11*<space|0.17em>C<rsub|\<frak-g\>>|24*\<pi\><rsup|2>>,<space|2em>b<rsub|0>\<assign\><frac|11*<space|0.17em>C<rsub|\<frak-g\>>|48*\<pi\><rsup|2>>=<tfrac|1|2>\<kappa\><rsub|G>.
    </equation*>

    <item><em|Scales.> The block factors <math|b<rsub|k>\<geqslant\>3> are
    odd. Set <math|D<rsub|m>=<big|prod><rsub|k\<less\>m>b<rsub|k>>,
    <math|a<rsub|m>=1/D<rsub|m>> and

    <\equation*>
      s<rsub|m>\<assign\>log <around|(|1/a<rsub|m>|)>=<big|sum><rsub|k\<less\>m>log
      b<rsub|k>.
    </equation*>

    Then <math|s<rsub|m>\<to\>\<infty\>>.

    <item><em|Trajectory.> For a lattice level <math|N>, a volume index
    <math|p> and a stage <math|m\<leqslant\>N>, <math|\<beta\><rsub|N,p,m>>
    is the coefficient of the normalised kinetic term in the effective action
    at spacing <math|a<rsub|m>>. The represented density is obtained from the
    Wilson weight by <math|N-m> block-spin steps.

    <\itemize-minus>
      <item><math|\<beta\><rsub|N,p>\<assign\>\<beta\><rsub|N,p,N>> is the
      bare coupling of the main theorem.

      <item><math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>\<gtr\>0> for
      every <math|N,p>. This is the renormalization condition at unit scale.

      <item>The reference line is <math|<wide|\<beta\>|^><rsub|m>\<assign\><wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*s<rsub|m>>.
      One has <math|\<beta\><rsub|N,p,m>\<in\><around|[|<wide|\<beta\>|^><rsub|m>/2,<space|0.17em>2*<wide|\<beta\>|^><rsub|m>|]>>.

      <item>The running coupling is <math|g<rsub|N,p,m>\<assign\>\<beta\><rsub|N,p,m><rsup|-1/2>>.
    </itemize-minus>
  </itemize-minus>

  The <strong|running clause> (R) of the construction conditions reads: for
  every <math|\<varepsilon\>\<gtr\>0> there is <math|m<rsub|0>> such that

  <\equation*>
    <around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<varepsilon\>*<space|0.17em>s<rsub|m><space|1em><text|for
    all >m\<geqslant\>m<rsub|0>,N\<geqslant\>m,p\<in\>\<bbb-N\>.
  </equation*>

  <strong|Proposition VII.5.1 (uniform logarithmic growth of the inverse
  squared coupling).> Let the family satisfy its construction conditions
  (II.2). For every <math|\<varepsilon\>\<gtr\>0> there is
  <math|m<rsub|0>\<geqslant\>1> such that

  <\equation*>
    <around*|\||<frac|\<beta\><rsub|N,p,m>|s<rsub|m>>-2*b<rsub|0>|\|>\<less\>\<varepsilon\><space|2em><text|for
    all >m\<geqslant\>m<rsub|0>,N\<geqslant\>m,p\<in\>\<bbb-N\>.
  </equation*>

  <em|Status:> theorem. Of the construction conditions only (R) is used.
  Simplicity of <math|\<frak-g\>> is not needed. <em|Lean:>
  <hlink|<verbatim|YM.Pert.Asymptotics.zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>,
  with <hlink|<verbatim|b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13>
  and <hlink|<verbatim|b0_normalizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14>.

  <strong|Corollary VII.5.2 ((Reg1) for the constructed family).> Let
  <math|\<frak-g\>> be simple and let the family satisfy its construction
  conditions. Then its Wilson family satisfies (Reg1) with slope
  <math|b<rsub|\<ast\>>=2*b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>\<gtr\>0>:
  for every <math|\<varepsilon\>\<gtr\>0> there is
  <math|N<rsub|0>\<geqslant\>1> with

  <\equation*>
    <around*|\||<frac|\<beta\><rsub|N,p>|log
    <around|(|1/a<rsub|N>|)>>-b<rsub|\<ast\>>|\|>\<less\>\<varepsilon\><space|1em><text|for
    all >N\<geqslant\>N<rsub|0><text| and all >p.
  </equation*>

  <em|Status:> theorem, proved in VIII.1 as the first clause of the
  regularity of the constructed family. It is VII.5.1 at <math|m=N>, together
  with <math|C<rsub|\<frak-g\>>\<gtr\>0> (I.1). This is how the main theorem
  uses part (A). The main theorem asserts the existence of a positive slope
  without specifying its value. <em|Lean:>
  <hlink|<verbatim|YangMills.regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25>
  (running clause of <hlink|<verbatim|YangMills.WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22>),
  via <hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>.

  <strong|Proposition VII.5.3 (asymptotic freedom of the running coupling).>
  Let <math|\<frak-g\>> be simple and let the family satisfy its construction
  conditions. Let <math|<around|(|N<rsub|i>|)>> and
  <math|<around|(|k<rsub|i>|)>> be sequences of lattice levels and volume
  indices with <math|i\<leqslant\>N<rsub|i>> for all large <math|i>. Then

  <\equation*>
    lim<rsub|i\<to\>\<infty\>> g<rsub|N<rsub|i>,k<rsub|i>,i>*<space|0.17em><sqrt|log
    <around|(|1/a<rsub|i>|)>>=<frac|1|<sqrt|2*b<rsub|0>>>,<space|2em><text|equivalently><space|2em>g<rsub|N<rsub|i>,k<rsub|i>,i><rsup|2>*<space|0.17em>log
    <around|(|1/a<rsub|i>|)>\<longrightarrow\><frac|1|2*b<rsub|0>>.
  </equation*>

  <\itemize-minus>
    <item>For <math|N<rsub|i>=i> this is the law of the bare coupling,
    <math|g<rsub|0><around|(|a|)><rsup|2>\<sim\><around*|(|2*b<rsub|0>*log
    <around|(|1/a|)>|)><rsup|-1>>.

    <item>For <math|N<rsub|i>\<geqslant\>i> it is the law of the effective
    coupling at spacing <math|a<rsub|i>> of any finer lattice. No condition
    is placed on the volumes <math|k<rsub|i>>.
  </itemize-minus>

  <em|Status:> theorem; its square gives the second limit. No other
  declaration cites it. <em|Lean:> <hlink|<verbatim|YM.Pert.Asymptotics.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48>,
  <hlink|<verbatim|regulatorRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35>.

  <strong|Setting for (B).>

  <\itemize-minus>
    <item><em|Spaces and maps.>

    <\itemize-minus>
      <item><math|\<cal-F\><rsub|d>> is the finite-dimensional complex space
      of labels of degree at most <math|d> in a correlation table <math|S>
      carrying a Euclidean hierarchy <math|H> (IV.1).

      <item><math|\<cal-F\><rsup|\<circ\>><rsub|d>> is the corresponding
      space of the free Maxwell comparison table, with its hierarchy
      <math|H<rsup|\<circ\>>>, built on the same reference labels (VI.1).

      <item>A <em|derivative plan> (IV.1) on either table consists of
      complex-linear inclusions <math|\<iota\><rsub|d\<to\>e>>
      (<math|d\<leqslant\>e>) and complex-linear partial derivatives
      <math|\<partial\><rsub|d,a>:\<cal-F\><rsub|d>\<to\>\<cal-F\><rsub|d+1>>,
      <math|a=1,\<ldots\>,4>.

      <item>The inclusion axiom says that inserting
      <math|\<iota\><rsub|d\<to\>e>*v> in a separated correlation gives the
      same value as inserting <math|v>. It implies injectivity,
      <math|\<iota\><rsub|d\<to\>d>=1>, transitivity and preservation of the
      unit. The derivative axiom identifies insertion of
      <math|\<partial\><rsub|d,a>*v> with differentiation of the correlation
      in that insertion point.

      <item>The orientation axioms say that inclusions commute with the
      hyperoctahedral group <math|\<Gamma\><rsub|4>> of signed permutations
      (<math|384> elements) and with conjugation. Derivatives commute with
      conjugation and transform as vectors under <math|\<Gamma\><rsub|4>>.
    </itemize-minus>

    <item><em|Stress data.> A <em|candidate stress tensor> is a family
    <math|J=<around|(|J<rsub|a*b>|)>> in <math|\<cal-F\><rsub|4>>. Its
    <em|local Ward identities> (IV.1, VI.1) involve a translation part
    <math|p=<around|(|p<rsub|d,a>:\<cal-F\><rsub|d>\<to\>\<cal-F\><rsub|d+1>|)>>
    and a rotation part <math|Y>.

    <item><em|Free Maxwell data> (VI.2, VIII.1): the comparison data
    specified in Ÿ2, including a derivative plan <math|W>, a rotation action,
    a tensor <math|J<rsup|\<circ\>>> and <math|\<kappa\>\<ne\>0>. The plan
    satisfies the inclusion, derivative and orientation axioms;
    <math|J<rsup|\<circ\>>> satisfies the local Ward identities with
    translation part <math|\<kappa\>*<space|0.17em>\<partial\><rsup|W>> and
    rotation part <math|\<kappa\>> times the infinitesimal rotation action;
    and the family <math|\<partial\><rsup|W><rsub|4>=<around|(|\<partial\><rsup|W><rsub|4,a>|)><rsub|a>>
    is nonzero.

    <item><em|Scaling sequences.> A <em|scaling sequence> (VI.1) consists of
    frames <math|U<rsub|k><around|(|d|)>:\<cal-F\><rsup|\<circ\>><rsub|d>\<to\>\<cal-F\><rsub|d>>
    (complex-linear isomorphisms), positive, strictly decreasing scales
    <math|r<rsub|k>\<to\>0> and stress normalisations
    <math|\<xi\><rsub|k>\<gtr\>0>.

    <item><em|Tracking.> A scaling sequence <em|tracks>
    <math|<around|(|V,W,J|)>> at level <math|<around|(|n,d,j,R|)>> (VI.1) if
    three conditions hold:

    <\itemize-minus>
      <item>the frames are exactly compatible with inclusions, signed
      permutations, conjugation and units up to degree <math|max
      <around|(|d,4|)>>;

      <item>for each fixed list of at most <math|n> fields of degrees at most
      <math|d>, the correlations transported by <math|U<rsub|k>> and
      evaluated at <math|r<rsub|k>*x> converge, with all Fréchet derivatives
      of orders <math|0,\<ldots\>,j>, uniformly on the window
      <math|<around|{|x:<around|\<\|\|\>|x|\<\|\|\>>\<leqslant\>R,<around|\<\|\|\>|x<rsub|a>-x<rsub|b>|\<\|\|\>><rsub|\<infty\>>\<geqslant\>R<rsup|-1><text|for
      all >a\<ne\>b|}>>, to the free correlations;

      <item><math|\<xi\><rsub|k><rsup|-1>*r<rsub|k><rsup|4>*<space|0.17em>U<rsub|k><around|(|4|)><rsup|-1>*J<rsub|a*b>\<to\>J<rsup|\<circ\>><rsub|a*b>>.
    </itemize-minus>
  </itemize-minus>

  <strong|Proposition VII.5.4 (normalisation of the stress tensor along
  free-field scaling sequences).> Fix the two hierarchies and the free
  Maxwell comparison data above. Let <math|V> be a derivative plan on
  <math|S> satisfying the inclusion and derivative axioms. Let <math|J> be
  symmetric, real and <math|\<Gamma\><rsub|4>>-covariant, with
  <math|<big|sum><rsub|a>\<partial\><rsup|V><rsub|4,a>*J<rsub|a*b>=0> for
  every <math|b>, and let <math|<around|(|J,p,Y|)>> satisfy the local Ward
  identities.

  (a) Suppose <math|p<rsub|4,a>=c*<space|0.17em>\<partial\><rsup|V><rsub|4,a>>
  for <math|a=1,\<ldots\>,4> and some <math|c\<in\>\<bbb-R\>>. Then there are
  <math|D,N,M\<in\>\<bbb-N\>> and <math|R<rsub|0>\<geqslant\>1> such that
  <math|c/\<xi\><rsub|k>\<to\>\<kappa\>> for every scaling sequence that
  tracks <math|<around|(|V,W,J|)>> at a level <math|<around|(|n,d,j,R|)>>
  with <math|n\<geqslant\>N>, <math|d\<geqslant\>D>, <math|j\<geqslant\>M>
  and <math|R\<geqslant\>R<rsub|0>>.

  (b) If <math|p\<neq\>0>, then <math|J\<neq\>0>.

  <em|Status:> theorems. Part (a) uses A04 and A05 (VI.1); part (b) requires
  only the hierarchy and local Ward identities. <em|Lean:>
  <hlink|<verbatim|YM.Extra.WeakScaling.tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>,
  <hlink|<verbatim|scale_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39>,
  <hlink|<verbatim|flux_nontrivial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70>.
  Used in VI.2 by <hlink|<verbatim|YM.Pert.ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66>
  and <hlink|<verbatim|YM.Pert.centered_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116>.

  <strong|Proposition VII.5.5 (exactly compatible frames).> Suppose <math|S>
  and its free comparison table carry Euclidean hierarchies. Let <math|V> and
  <math|W> be derivative plans on these tables satisfying the inclusion and
  orientation axioms.

  (a) For every <math|d> there is a <math|\<bbb-C\>>-linear map
  <math|P<rsub|d>:\<cal-F\><rsup|\<circ\>><rsub|d+1>\<to\>\<cal-F\><rsup|\<circ\>><rsub|d>>
  with <math|P<rsub|d>*<space|0.17em>\<iota\><rsup|W><rsub|d\<to\>d+1>=1>
  that commutes with <math|\<Gamma\><rsub|4>> and with conjugation.

  (b) Let the <math|P<rsub|d>> be as in (a), fix <math|D\<in\>\<bbb-N\>>, and
  let <math|A<rsub|d>:\<cal-F\><rsup|\<circ\>><rsub|d>\<to\>\<cal-F\><rsub|d>>
  be complex-linear isomorphisms for every <math|d>. Define recursively

  <\equation*>
    X<rsub|0>\<assign\>A<rsub|0>,<space|2em>X<rsub|d+1>\<assign\>\<iota\><rsup|V><rsub|d\<to\>d+1>*<space|0.17em>X<rsub|d>*<space|0.17em>P<rsub|d>+A<rsub|d+1>*<around*|(|1-\<iota\><rsup|W><rsub|d\<to\>d+1>*P<rsub|d>|)>.
  </equation*>

  Suppose that for every <math|d\<leqslant\>D> the map <math|A<rsub|d>>
  commutes with <math|\<Gamma\><rsub|4>> and conjugation and maps unit to
  unit. Then:

  <\itemize-minus>
    <item><math|X<rsub|e>*<space|0.17em>\<iota\><rsup|W><rsub|d\<to\>e>=\<iota\><rsup|V><rsub|d\<to\>e>*<space|0.17em>X<rsub|d>>
    for all <math|d\<leqslant\>e\<leqslant\>D>;

    <item>for <math|d\<leqslant\>D>, each <math|X<rsub|d>> commutes with
    <math|\<Gamma\><rsub|4>> and conjugation and maps unit to unit.
  </itemize-minus>

  (c) Let <math|A<rsup|<around|(|k|)>><rsub|d>> be complex-linear
  isomorphisms such that, for every <math|d\<less\>D> and every <math|v>,

  <\equation*>
    <around|(|A<rsup|<around|(|k|)>><rsub|d+1>|)><rsup|-1>*<space|0.17em>\<iota\><rsup|V><rsub|d\<to\>d+1>*<space|0.17em>A<rsup|<around|(|k|)>><rsub|d>*<space|0.17em>v\<longrightarrow\>\<iota\><rsup|W><rsub|d\<to\>d+1>*v*<space|2em><around|(|k\<to\>\<infty\>|)>.
  </equation*>

  Let <math|X<rsup|<around|(|k|)>>> be built from
  <math|A<rsup|<around|(|k|)>>> as in (b). Then for every
  <math|d\<leqslant\>D>:

  <\itemize-minus>
    <item><math|<around|(|A<rsup|<around|(|k|)>><rsub|d>|)><rsup|-1>*X<rsup|<around|(|k|)>><rsub|d>\<to\>1>
    in operator norm;

    <item><math|X<rsup|<around|(|k|)>><rsub|d>> is bijective for all large
    <math|k>;

    <item>the isomorphisms <math|<wide|X|~><rsup|<around|(|k|)>><rsub|d>>
    (equal to <math|X<rsup|<around|(|k|)>><rsub|d>> when it is bijective and
    to <math|A<rsup|<around|(|k|)>><rsub|d>> otherwise) satisfy
    <math|<around|(|A<rsup|<around|(|k|)>><rsub|d>|)><rsup|-1>*<wide|X|~><rsup|<around|(|k|)>><rsub|d>*v\<to\>v>
    for every <math|v>.
  </itemize-minus>

  If the <math|A<rsup|<around|(|k|)>><rsub|d>> also preserve the symmetries
  and units in (b), then, for all sufficiently large <math|k>, the frames
  <math|<wide|X|~><rsup|<around|(|k|)>><rsub|d>> are exactly compatible
  simultaneously in all degrees <math|d\<leqslant\>D>.

  <em|Status:> theorem (finite-dimensional algebra and analysis). <em|Lean:>
  <hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>,
  <hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66>,
  <hlink|<verbatim|Exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76>,
  <hlink|<verbatim|adjusted_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102>,
  <hlink|<verbatim|Near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111>,
  <hlink|<verbatim|perturb_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129>,
  <hlink|<verbatim|eventually_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135>,
  <hlink|<verbatim|rotateChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140>,
  <hlink|<verbatim|relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148>,
  <hlink|<verbatim|Graded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172>.
  Used in VII.1 by <hlink|<verbatim|YM.SharpGram.Weak.Portfolio.tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>.
  Exact compatibility is also used in III.13 and VIII.1.

  <strong|Proposition VII.5.6 (finite-dimensional convergence).>

  (a) Let <math|f:E\<to\>X> be an injective linear map between
  finite-dimensional real normed spaces. If
  <math|f<around|(|a<rsub|y>|)>\<to\>f<around|(|e|)>> along a filter, then
  <math|a<rsub|y>\<to\>e>.

  (b) Let <math|f<rsub|y>,g:<around|(|\<bbb-R\><rsup|4>|)><rsup|n>\<to\>\<bbb-C\>>
  be continuous real-linear maps, and fix a filter on the index set of
  <math|y>. If <math|f<rsub|y><around|(|e<rsub|i,a>|)>\<to\>g<around|(|e<rsub|i,a>|)>>
  at each of the <math|4*n> coordinate vectors, then <math|f<rsub|y>\<to\>g>
  in operator norm along that filter.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|norm_fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51>,
  <hlink|<verbatim|norm_fit_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70>,
  <hlink|<verbatim|components>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60>.
  Used in III.12 by <hlink|<verbatim|YM.FullVolume.stretching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L28-L30>.

  <strong|Definition VII.5.7 (the classical stress-tensor algebra).> Labels
  of degree <math|d> are gauge-invariant polynomials of weight at most
  <math|d> in radial Taylor coefficients at the base point. In the formulas
  below, <math|F> and <math|\<partial\>*F> denote the linear curls of the
  degree-0 and degree-1 Taylor coefficients used in the free Maxwell
  comparison. The curvature has weight 2 and each derivative adds 1 (II.1).
  <math|<around|\<langle\>|\<cdummy\>,\<cdummy\>|\<rangle\>>> denotes the
  invariant inner product on <math|\<frak-g\>>. These are polynomial
  identities, before passing to the quotient by null fields; they do not
  multiply limiting fields at coincident points.

  <\itemize-minus>
    <item><em|Weight 4.> The square is <math|\<frak-s\>\<assign\><frac|1|4>*<big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,F<rsub|i*j>|\<rangle\>>>,
    summed over ordered pairs. The candidate stress tensors of VI.1 form the
    family

    <\equation*>
      T<rsup|<around|(|t|)>><rsub|a*b>=\<delta\><rsub|a*b>*<around*|(|t<rsub|0>*\<b-1\>+t<rsub|1>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|a*i>|\<rangle\>>+t<rsub|2>*<big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,F<rsub|i*j>|\<rangle\>>|)>+<around|(|1-\<delta\><rsub|a*b>|)>*<space|0.17em>t<rsub|3>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|b*i>|\<rangle\>>.
    </equation*>

    The <em|canonical> tensor is <math|T<rsup|<math-up|can>>\<assign\>T<rsup|<around|(|0,1,-1/4,1|)>>>,
    that is, <math|T<rsup|<math-up|can>><rsub|a*b>=<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|b*i>|\<rangle\>>-\<delta\><rsub|a*b>*<space|0.17em>\<frak-s\>>.

    <item><em|Weight 5.> Define the vectors

    <\equation*>
      \<mu\><rsup|1><rsub|b>\<assign\><big|sum><rsub|i><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|b>*F<rsub|b*i>|\<rangle\>>=<tfrac|1|2>\<partial\><rsub|b>*<big|sum><rsub|i><around|\||F<rsub|b*i>|\|><rsup|2>,<space|2em>\<mu\><rsup|2><rsub|b>\<assign\><big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,\<partial\><rsub|b>*F<rsub|i*j>|\<rangle\>>=<tfrac|1|2>\<partial\><rsub|b>*<big|sum><rsub|i,j><around|\||F<rsub|i*j>|\|><rsup|2>,
    </equation*>

    and the equation-of-motion vector <math|E<rsub|b>\<assign\><big|sum><rsub|a,i><around|\<langle\>|F<rsub|b*i>,\<partial\><rsub|a>*F<rsub|a*i>|\<rangle\>>>
    (VI.1). Let <math|\<cal-R\><rsub|1>> be the real space of real,
    <math|\<Gamma\><rsub|4>>-covariant vectors of degree at most 5 (VI.1).
    Define <math|\<beta\>,\<delta\>:\<bbb-R\><rsup|3>\<to\>\<cal-R\><rsub|1>>
    by

    <\equation*>
      \<beta\><around|(|w|)>\<assign\>w<rsub|0>*\<mu\><rsup|1>+w<rsub|1>*\<mu\><rsup|2>+w<rsub|2>*E,<space|2em>\<delta\><around|(|w|)>\<assign\>\<beta\><around*|(|2*<around|(|w<rsub|0>-w<rsub|2>|)>,2*w<rsub|1>+<tfrac|1|2>w<rsub|2>,w<rsub|2>|)>.
    </equation*>
  </itemize-minus>

  The definitions have two accompanying lemmas:

  <\itemize-minus>
    <item><math|\<mu\><rsup|1>,\<mu\><rsup|2>\<in\>\<cal-R\><rsub|1>>;

    <item>every degree-0 radial jet is realised by a constant-curvature free
    Maxwell field, with an affine potential.
  </itemize-minus>

  <em|Status:> definitions and two lemmas. <em|Lean:>
  <hlink|<verbatim|square4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66>,
  <hlink|<verbatim|raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70>,
  <hlink|<verbatim|momentum1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16>,
  <hlink|<verbatim|momentum2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14>,
  <hlink|<verbatim|momentum1_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34>,
  <hlink|<verbatim|momentum2_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27>,
  <hlink|<verbatim|momentum2_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24>,
  <hlink|<verbatim|basisV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66>,
  <hlink|<verbatim|bareVector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33>
  (with <hlink|<verbatim|mat3>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L32>,
  <hlink|<verbatim|proj3>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L31>),
  <hlink|<verbatim|shell_affine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50>,
  <hlink|<verbatim|sumPerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20>.
  The facts proved about these objects in VI.1 and VII.2 are listed in Ÿ4.5.

  <strong|Definition VII.5.8 (sharp read-out bound).> Fix the family, a
  nondecreasing control function <math|K:\<bbb-N\>\<to\>\<bbb-R\>> with
  <math|K<around|(|j|)>\<geqslant\>1> for every <math|j>, a degree <math|d>,
  stages <math|\<ell\><rsub|d>\<leqslant\>k\<leqslant\>N>, a volume index
  <math|p> and <math|u\<in\>\<bbb-R\>>. Write
  <math|<around|\<\|\|\>|c|\<\|\|\>><rsub|1>\<assign\><big|sum><rsub|\<alpha\>><around|\||c<rsub|\<alpha\>>|\|>>
  for the coefficient norm, and let <math|P> remove the unit coordinate. Here
  <math|\<ell\><rsub|d>> is the reference stage fixed by the family. The
  predicate quantifies over every <math|w\<geqslant\>0> and all insertion
  presentations <math|A<rsub|i>> with coefficient vectors <math|c<rsub|i>>,
  remainder costs <math|q<rsub|i>>, inserted densities
  <math|\<cal-D\><rsub|i>> and insertion points at the origin. They must
  satisfy:

  <\itemize-minus>
    <item>At each <math|\<ell\><rsub|d>\<leqslant\>i\<leqslant\>k>,
    <math|A<rsub|i>> has the admissible regular and forced remainders of
    III.12, with total remainder cost at most <math|q<rsub|i>>, using the
    square root of the stage-<math|i> forced allowance.

    <item><math|c<rsub|\<ell\><rsub|d>>=0>. Only this coefficient vector must
    vanish at the reference stage.

    <item>The full inserted densities obey
    <math|\<cal-D\><rsub|i>=b<rsub|i><rsup|d>*<space|0.17em>\<cal-T\><rsup|<around|(|i|)>><rsub|\<beta\><rsub|N,p,i+1>>*\<cal-D\><rsub|i+1>>
    for <math|\<ell\><rsub|d>\<leqslant\>i\<less\>k>.

    <item>Put <math|<around|(|S<rsub|i>*c|)><rsub|\<alpha\>>\<assign\>b<rsub|i><rsup|d-d<rsub|\<alpha\>>>*c<rsub|\<alpha\>>>,
    where <math|d<rsub|\<alpha\>>> is the weight of the basis label, and
    <math|K<rsub|i>\<assign\>K*<around|(|J*<around|(|i+1|)>|)>>. For each
    <math|\<ell\><rsub|d>\<leqslant\>i\<less\>k>,
    <math|q<rsub|i>,q<rsub|i+1>\<geqslant\>0> and there is a complex-linear
    automorphism <math|B<rsub|i>> commuting with <math|P> such that
    <math|<around|\<\|\|\>|B<rsub|i>*c|\<\|\|\>><rsub|1>,<around|\<\|\|\>|B<rsub|i><rsup|-1>*c|\<\|\|\>><rsub|1>\<leqslant\>K<rsub|i><around|\<\|\|\>|c|\<\|\|\>><rsub|1>>
    for every <math|c>, and

    <\equation*>
      <around|\<\|\|\>|c<rsub|i>-B<rsub|i>*S<rsub|i>*c<rsub|i+1>|\<\|\|\>><rsub|1>\<leqslant\>b<rsub|i><rsup|-3/8>*<around|(|<around|\<\|\|\>|P*c<rsub|i+1>|\<\|\|\>><rsub|1>+q<rsub|i+1>|)>,<space|2em>q<rsub|i>\<leqslant\>K<rsub|i>\<\|\|\>P*S<rsub|i>*c<rsub|i+1>\<\|\|\><rsub|1>+b<rsub|i><rsup|-3/8>*q<rsub|i+1>.
    </equation*>

    <item>The terminal cost satisfies <math|q<rsub|k>\<leqslant\>w+n<rsub|k>*<around|(|w+<around|\<\|\|\>|c<rsub|k>|\<\|\|\>><rsub|1>|)>>,
    where <math|w\<geqslant\>0> and <math|n<rsub|k>> is the stage-<math|k>
    column number.
  </itemize-minus>

  The sharp read-out predicate is the assertion that every such chain
  satisfies

  <\equation*>
    u<space|0.17em><around|\<\|\|\>|c<rsub|k>|\<\|\|\>><rsub|1>\<leqslant\>4*<around|(|1+n<rsub|k>|)>*w.
  </equation*>

  <em|Status:> definition. The admissibility and remainder conditions are
  those of <hlink|<verbatim|Format>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61>,
  <hlink|<verbatim|remBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68>;
  the complete chain conditions are <hlink|<verbatim|Duet.Woke>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L115-L127>
  and <hlink|<verbatim|direction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L65-L69>.
  <em|Lean:> <hlink|<verbatim|YM.MergeProof.Accent.SharpRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26>.
  Used by: <hlink|<verbatim|YM.Trace.Terrace.Sceptre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Knell.lean#L62-L66>
  and the cost lemmas of VII.2.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\itemize-minus>
    <item><em|I.1 (gauge group and scales).>

    <\itemize-minus>
      <item><math|C<rsub|\<frak-g\>>> (<hlink|<verbatim|YM.Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>)
      and <math|\<kappa\><rsub|G>>, which is <em|defined> as
      <math|11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>
      (<hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>).

      <item>For simple <math|\<frak-g\>>, the Killing-form identity in Ÿ1 is
      <hlink|<verbatim|trace_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158>.

      <item>Positivity <math|C<rsub|\<frak-g\>>\<gtr\>0> and
      <math|\<kappa\><rsub|G>\<gtr\>0> for simple <math|\<frak-g\>>
      (<hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>,
      <hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>).

      <item><math|a<rsub|m>=1/D<rsub|m>> (<hlink|<verbatim|Schedule.a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>);
      <math|s<rsub|m>> is <em|defined> as <math|log <around|(|1/a<rsub|m>|)>>
      (<hlink|<verbatim|Schedule.scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>);
      and <math|s<rsub|m>\<to\>\<infty\>>
      (<hlink|<verbatim|Schedule.divergent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120>).
    </itemize-minus>

    <item><em|II.2 (construction conditions)>
    <hlink|<verbatim|YM.Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>.
    Its first field says that the trajectory is a selected history (III.1).
    The bare coupling is <hlink|<verbatim|Family.beta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38>,
    that is, <math|\<beta\><rsub|N,p,N>>.

    <item><em|III.1 (selected history)> <hlink|<verbatim|YM.RG.History.Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>.
    It contains:

    <\itemize-minus>
      <item><math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>;

      <item>the per-step relation <math|<around|\||\<beta\><rsub|N,p,m+1>-\<beta\><rsub|N,p,m>-\<kappa\><rsub|G>*log
      b<rsub|m>|\|>\<leqslant\>\<delta\><rsub|m+1>>
      (<hlink|<verbatim|Transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227>);

      <item>the band <math|<around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>>
      (<hlink|<verbatim|Conv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218>);

      <item>the running clause (R) (<hlink|<verbatim|Running>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230>),
      with <math|<wide|\<beta\>|^><rsub|m>> given by
      <hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>.
    </itemize-minus>

    <item><em|III.2 (choice of constants, shooting).>

    <\itemize-minus>
      <item>(R) is derived in <hlink|<verbatim|YM.RG.Shoot.trajectory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>.
      The inputs are <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>, the
      per-step relation, and <math|\<delta\><rsub|m+1>/log
      b<rsub|m>\<leqslant\>J*<around|(|m+1|)><rsup|-2>>, where
      <math|J<around|(|m|)>\<to\>\<infty\>> is the stage index of the scale
      sequence (Lemma VII.5.b).

      <item>The history with <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>
      is produced by shooting (<hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>,
      <hlink|<verbatim|successful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159>).

      <item>The per-step relation follows from the coupling reset (III.9). If
      the one-loop shift <math|\<alpha\><rsub|N,m>> satisfies
      <math|<around|\||\<alpha\><rsub|N,m>+\<kappa\><rsub|G>*log
      b<rsub|m>|\|>+1\<leqslant\>\<delta\><rsub|m+1>> and the reset changes
      <math|\<beta\>> by <math|\<alpha\><rsub|N,m>> with error at most
      <math|1>, the triangle inequality gives the transfer bound. This is
      <hlink|<verbatim|Directed.links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63>,
      using <hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>.
    </itemize-minus>

    <item><em|VIII.1:> uses VII.5.2 in the assembly of the main theorem.

    <item><em|For VII.5.4.>

    <\itemize-minus>
      <item>The work items A04 (<hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183>)
      and A05 (<hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121>),
      both proved in VI.1. Along tracking scaling sequences of sufficient
      arity, degree, derivative order and window size, they give:
      <math|r<rsub|k>*<space|0.17em>\<partial\><rsup|V><rsub|d>> conjugated
      by the frames converges to <math|\<partial\><rsup|W><rsub|d>>; and
      <math|<around|(|r<rsub|k>/\<xi\><rsub|k>|)>*<space|0.17em>p<rsub|d>>
      conjugated by the frames converges to
      <math|\<kappa\>*<space|0.17em>\<partial\><rsup|W><rsub|d>>.

      <item>The tracking notion (<hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48>)
      and the hypotheses on <math|J> (<hlink|<verbatim|Pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69>),
      from VI.1.

      <item>The Ward identities (<hlink|<verbatim|StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>)
      and derivative plans (<hlink|<verbatim|DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>),
      from IV.1.

      <item>The free Maxwell data (<hlink|<verbatim|MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>,
      <hlink|<verbatim|Lighthouse.Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>).
      Besides the data in Ÿ1, the full package includes finite separating
      tests and the boundary, polynomial and internal-rotation conditions of
      VI.2. The ratio argument uses the free hierarchy, derivative and Ward
      identities, and the nonzero degree-4 derivative.
    </itemize-minus>

    <item><em|For VII.5.5:> the inclusion and orientation axioms of
    derivative plans (IV.1), and the free comparison table
    (<hlink|<verbatim|Spin.comparator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L38>,
    VI.1).

    <item><em|For VII.5.7:>

    <\itemize-minus>
      <item>the label polynomials <math|<around|\<langle\>|F<rsub|a*b>,F<rsub|c*d>|\<rangle\>>>
      (<hlink|<verbatim|pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L50-L51>)
      and <math|<around|\<langle\>|F<rsub|a*b>,\<partial\><rsub|i>*F<rsub|c*d>|\<rangle\>>>
      (<hlink|<verbatim|pairDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L57-L58>);

      <item><math|E> (<hlink|<verbatim|eom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L105>),
      the family <math|T<rsup|<around|(|t|)>>>
      (<hlink|<verbatim|stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L177-L181>,
      <hlink|<verbatim|weyl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L187>)
      and <math|\<cal-R\><rsub|1>> (<hlink|<verbatim|RawOne>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L53>),
      all from VI.1;

      <item>the ideal of labels vanishing on free Maxwell solutions
      (<hlink|<verbatim|Maxwell.equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>),
      from III.16.
    </itemize-minus>

    <item><em|For VII.5.8:> the comparison-chain definitions of III.2 and the
    insertion estimates of III.12. For the constructed family,
    <hlink|<verbatim|attain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52>
    (III.2) supplies the read-out field of the trace-analysis assumptions
    under its scale and one-step hypotheses.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item><em|Asymptotic freedom.> Gross\UWilczek and Politzer (Phys. Rev.
    Lett. 30, 1973). In the conventional normalisation for
    <math|S*U<around|(|q|)>>, with <math|\<beta\>=2*q/g<rsup|2>>, the
    one-loop law is <math|1/g<rsup|2>\<sim\>2*b<rsub|0><rsup|<math-up|conv>>*log
    <around|(|1/a|)>> with <math|b<rsub|0><rsup|<math-up|conv>>=11*q/<around|(|48*\<pi\><rsup|2>|)>>.

    <\itemize-minus>
      <item>Here <math|\<beta\>=1/g<rsub|0><rsup|2>> in the normalisation
      <math|<around|\<langle\>|X,Y|\<rangle\>><rsub|\<frak-g\>>=-<frac|1|q><math-up|Re><space|0.17em><math-up|tr><around|(|X*Y|)>>,
      and <math|C<rsub|\<frak-g\>>=2*q<rsup|2>>. So
      <math|b<rsub|\<ast\>>=2*b<rsub|0>=11*q<rsup|2>/<around|(|12*\<pi\><rsup|2>|)>=2*q\<cdot\>2*b<rsub|0><rsup|<math-up|conv>>>,
      which agrees with the conventional law.

      <item>For <math|S*U<around|(|2|)>>,
      <math|b<rsub|\<ast\>>=11/<around|(|3*\<pi\><rsup|2>|)>>.

      <item>For the relation between the bare coupling and the lattice
      spacing see Creutz, <em|Quarks, Gluons and Lattices> (1983).
    </itemize-minus>

    <item><em|Block-spin RG for lattice gauge fields.> Balaban's
    renormalization group (Comm. Math. Phys. 109 (1987), 116 (1988), and
    related papers) provides the background for the marginal-flow estimate.
    The specific input here is the per-step bound of III.9; (R) follows by
    summation.

    <item><em|Exactly compatible frames.> Averaging over a finite group gives
    equivariant projections (Maschke). In finite dimension, injective linear
    maps form an open set, and linear maps are continuous.

    <item><em|Classical stress tensor.> The symmetric gauge-field stress
    tensor <math|T<rsup|<math-up|can>>> is conserved on the equations of
    motion and is traceless in four dimensions (classical scale invariance;
    Callan\UColeman\UJackiw, Ann. Phys. 59, 1970). The breaking of
    tracelessness in the quantum theory is the trace anomaly
    (Adler\UCollins\UDuncan 1977; Collins\UDuncan\UJoglekar 1977), treated in
    VII.2.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The value <math|\<kappa\><rsub|G>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>
    is a definition (I.1), and <math|b<rsub|0>\<assign\>\<kappa\><rsub|G>/2>,
    so <math|\<kappa\><rsub|G>=2*b<rsub|0>> holds by unfolding. That
    <math|\<kappa\><rsub|G>> is the actual slope of the trajectory is the
    content of the per-step relation, proved in Part III.

    <item><math|<wide|\<beta\>|\<bar\>>\<gtr\>0> is the fixed reference
    coupling (III.2). The limiting slope is independent of
    <math|<wide|\<beta\>|\<bar\>>>; the convergence thresholds may depend on
    it.

    <item>VII.5.1 assumes the construction conditions. VII.5.2\UVII.5.3
    additionally assume simplicity. The auxiliary hypotheses are stated in
    Ÿ1.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  <strong|Part (A).> The coupling law follows from the one-step bound by
  summation and division by the logarithmic scale.

  <\enumerate>
    <item><em|Marginal flow (III.9).> Blocking from stage <math|m+1> to stage
    <math|m> gives <math|\<beta\><rsub|N,p,m>=\<beta\><rsub|N,p,m+1>-\<kappa\><rsub|G>*log
    b<rsub|m>+e<rsub|N,p,m>>, with <math|<around|\||e<rsub|N,p,m>|\|>\<leqslant\>\<delta\><rsub|m+1>>
    and <math|\<delta\><rsub|m+1>/log b<rsub|m>\<leqslant\>J*<around|(|m+1|)><rsup|-2>\<to\>0>.
    The reset uses the one-loop estimate of III.7.

    <item><em|Shooting and summation (III.2).> For each <math|N,p> the bare
    coupling <math|\<beta\><rsub|N,p,N>> is chosen so that the flow reaches
    <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>; this is the
    renormalization condition at unit scale. Summing the per-step relation
    from step 0 to step <math|m> gives

    <\equation*>
      <around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\><big|sum><rsub|i\<less\>m>\<delta\><rsub|i+1>.
    </equation*>

    Since <math|\<delta\><rsub|i+1>=o<around|(|log b<rsub|i>|)>> and
    <math|s<rsub|m>=<big|sum><rsub|i\<less\>m>log b<rsub|i>\<to\>\<infty\>>,
    the right side is <math|o<around|(|s<rsub|m>|)>> by a Cesàro argument.
    The bound is uniform in <math|N\<geqslant\>m> and in <math|p>, because
    the per-step bounds are.

    <item><em|Division by <math|s<rsub|m>> (this unit).> Since
    <math|<wide|\<beta\>|\<bar\>>/s<rsub|m>\<to\>0>, one gets
    <math|\<beta\><rsub|N,p,m>/s<rsub|m>\<to\>\<kappa\><rsub|G>=2*b<rsub|0>>,
    uniformly. Taking <math|m=N> gives (Reg1); taking square roots gives the
    coupling law.
  </enumerate>

  The result concerns the actual inverse coupling of the trajectory,
  including its bare endpoint. It does not identify this quantity with a
  coupling defined from continuum correlations.

  <strong|Part (B).> The auxiliary arguments use finite-dimensional limits
  and equivariant linear algebra.

  <\itemize-minus>
    <item><em|VII.5.4> compares two convergent sequences in a
    finite-dimensional space. Along a free-field scaling sequence, the
    rescaled derivative <math|r<rsub|k>*\<partial\><rsup|V><rsub|4>> tends to
    <math|\<partial\><rsup|W><rsub|4>\<neq\>0>. The rescaled flux
    <math|<around|(|r<rsub|k>/\<xi\><rsub|k>|)>*p<rsub|4>=<around|(|c/\<xi\><rsub|k>|)>*<space|0.17em>r<rsub|k>*\<partial\><rsup|V><rsub|4>>
    tends to <math|\<kappa\>*<space|0.17em>\<partial\><rsup|W><rsub|4>>.
    Hence the scalar <math|c/\<xi\><rsub|k>> tends to <math|\<kappa\>>.

    <item><em|VII.5.5> uses equivariant averaging and a recursive correction:

    <\enumerate>
      <item>an equivariant retraction of each inclusion, obtained by
      averaging over <math|\<Gamma\><rsub|4>> and conjugation;

      <item>a recursive correction, degree by degree, that turns
      approximately compatible frames into exactly compatible ones;

      <item>a perturbation argument showing the correction is eventually
      invertible and asymptotically equal to the original frames.
    </enumerate>

    <item><em|VII.5.7> is the algebra of stress tensors quadratic in <math|F>
    under the hyperoctahedral group. On the lattice only
    <math|\<Gamma\><rsub|4>> acts, so the candidate family has four
    parameters and its divergences have three coordinates. For simple
    <math|\<frak-g\>>, conservation on free Maxwell fields singles out the
    canonical tensor up to scale and addition of a constant multiple of
    <math|\<delta\><rsub|a*b>*\<b-1\>>. The canonical tensor is traceless.
  </itemize-minus>

  <section|4. Steps><label|4-steps>

  <subsection|4.1 The running coupling><label|41-the-running-coupling>

  <strong|Lemma VII.5.a (normalisation).>
  <math|2*b<rsub|0>=\<kappa\><rsub|G>>. <em|Proof.> Unfold both definitions.
  <em|Lean:> <hlink|<verbatim|b0_normalizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14>.

  <strong|Lemma VII.5.b (the running clause; input from III.2).> Let
  <math|\<delta\>:\<bbb-N\>\<to\><around|[|0,\<infty\>|)>> and
  <math|J:\<bbb-N\>\<to\>\<bbb-N\>> satisfy
  <math|J<around|(|m|)>\<geqslant\>1> and
  <math|J<around|(|m|)>\<to\>\<infty\>>. With the scales and reference line
  of Ÿ1, suppose:

  <\itemize-minus>
    <item><math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>> for all
    <math|N,p>;

    <item><math|<around|\||\<beta\><rsub|N,p,m+1>-\<beta\><rsub|N,p,m>-\<kappa\><rsub|G>*log
    b<rsub|m>|\|>\<leqslant\>\<delta\><rsub|m+1>> for <math|m\<less\>N>;

    <item><math|\<delta\><rsub|m+1>/log b<rsub|m>\<leqslant\>J*<around|(|m+1|)><rsup|-2>>
    for every <math|m>.
  </itemize-minus>

  Then (R) holds.

  <em|Proof sketch.>

  <\enumerate>
    <item>Since <math|s<rsub|m+1>=s<rsub|m>+log b<rsub|m>>, induction on
    <math|m> gives <math|<around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<Delta\><rsub|m>\<assign\><big|sum><rsub|i\<less\>m>\<delta\><rsub|i+1>>
    for <math|m\<leqslant\>N>.

    <item>Given <math|\<varepsilon\>>, choose <math|j> with
    <math|J*<around|(|i+1|)><rsup|-2>\<leqslant\>\<varepsilon\>/2> for
    <math|i\<geqslant\>j>. Then <math|\<Delta\><rsub|m>\<leqslant\>\<Delta\><rsub|j>+<frac|\<varepsilon\>|2>*<around|(|s<rsub|m>-s<rsub|j>|)>>
    for <math|m\<geqslant\>j>.

    <item>For <math|m> large, <math|\<Delta\><rsub|j>\<leqslant\><frac|\<varepsilon\>|2>*s<rsub|m>>,
    hence <math|\<Delta\><rsub|m>\<leqslant\>\<varepsilon\>*s<rsub|m>>.
  </enumerate>

  The constants and thresholds do not involve <math|N> or <math|p>.
  <em|Lean:> <hlink|<verbatim|YM.RG.Shoot.trajectory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>
  (III.2).

  <strong|Lemma VII.5.c (= Proposition VII.5.1).> <em|Proof sketch.>

  <\enumerate>
    <item>Apply (R) with <math|\<varepsilon\>/4>. Because
    <math|s<rsub|m>\<to\>\<infty\>>, one may also require
    <math|s<rsub|m>\<geqslant\>4*<around|(|<around|\||<wide|\<beta\>|\<bar\>>|\|>+1|)>/\<varepsilon\>>.

    <item>Then <math|s<rsub|m>\<gtr\>0> and
    <math|<around|\||<wide|\<beta\>|\<bar\>>|\|>\<less\><frac|\<varepsilon\>|4>*s<rsub|m>>.

    <item>With <math|\<kappa\><rsub|G>=2*b<rsub|0>>, the triangle inequality
    gives

    <\equation*>
      <around|\||\<beta\><rsub|N,p,m>-2*b<rsub|0>*s<rsub|m>|\|>\<leqslant\><around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>+<around|\||<wide|\<beta\>|\<bar\>>|\|>\<less\>\<varepsilon\>*s<rsub|m>.
    </equation*>

    <item>Divide by <math|s<rsub|m>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>.

  <strong|Lemma VII.5.d (= Corollary VII.5.2).> <em|Proof sketch.> The slope
  is <math|2*b<rsub|0>>, which is positive because
  <math|C<rsub|\<frak-g\>>\<gtr\>0> for simple <math|\<frak-g\>>. Given
  <math|\<varepsilon\>>, take <math|N<rsub|0>\<assign\>m<rsub|0>> from
  VII.5.1 and specialise to <math|m=N>. The bare coupling of the public
  family is <math|\<beta\><rsub|N,p,N>>, and its <math|log
  <around|(|1/a<rsub|N>|)>> is <math|s<rsub|N>> by definition. <em|Lean:>
  <hlink|<verbatim|YangMills.regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25>
  (VIII.1).

  <strong|Lemma VII.5.e (= Proposition VII.5.3).> <em|Proof sketch.>

  <\enumerate>
    <item>For each <math|\<varepsilon\>>, eventually both
    <math|i\<geqslant\>m<rsub|0><around|(|\<varepsilon\>|)>> and
    <math|i\<leqslant\>N<rsub|i>>. So VII.5.1 gives
    <math|\<beta\><rsub|N<rsub|i>,k<rsub|i>,i>/s<rsub|i>\<to\>2*b<rsub|0>>.

    <item>Since <math|\<kappa\><rsub|G>\<gtr\>0> for simple
    <math|\<frak-g\>>, <math|2*b<rsub|0>\<gtr\>0>. Then
    <math|x\<mapsto\><sqrt|x>> is continuous at <math|2*b<rsub|0>> and
    <math|y\<mapsto\>y<rsup|-1>> is continuous at
    <math|<sqrt|2*b<rsub|0>>\<ne\>0>. Hence
    <math|<around|(|\<beta\><rsub|N<rsub|i>,k<rsub|i>,i>/s<rsub|i>|)><rsup|-1/2>\<to\><around|(|2*b<rsub|0>|)><rsup|-1/2>>.

    <item>For all sufficiently large <math|i>, both <math|s<rsub|i>> and
    <math|\<beta\><rsub|N<rsub|i>,k<rsub|i>,i>> are positive, so
    <math|\<beta\><rsub|N<rsub|i>,k<rsub|i>,i><rsup|-1/2>*s<rsub|i><rsup|1/2>=<around|(|\<beta\><rsub|N<rsub|i>,k<rsub|i>,i>/s<rsub|i>|)><rsup|-1/2>>,
    and <math|s<rsub|i>=log <around|(|1/a<rsub|i>|)>> by definition.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48>.

  <subsection|4.2 Normalisation of the stress tensor
  (VII.5.4)><label|42-normalisation-of-the-stress-tensor-vii54>

  <strong|Lemma VII.5.f (ratio lemma).> Let <math|Z> be a finite-dimensional
  real normed space. If <math|X<rsub|k>\<to\>x\<neq\>0> in <math|Z> and
  <math|f<rsub|k>*X<rsub|k>\<to\>c*<space|0.17em>x> with
  <math|f<rsub|k>\<in\>\<bbb-R\>>, then <math|f<rsub|k>\<to\>c>. <em|Proof
  sketch.> Choose a linear functional <math|\<ell\>> with
  <math|\<ell\><around|(|x|)>\<neq\>0>. Then
  <math|\<ell\><around|(|X<rsub|k>|)>\<ne\>0> eventually, and
  <math|f<rsub|k>=\<ell\>*<around|(|f<rsub|k>*X<rsub|k>|)>/\<ell\><around|(|X<rsub|k>|)>\<to\>c>.
  <em|Lean:> <hlink|<verbatim|scale_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39>.

  <strong|Lemma VII.5.g (= VII.5.4(a)).> <em|Proof sketch.>

  <\enumerate>
    <item>A04 at degree 4 gives thresholds beyond which
    <math|X<rsub|k>\<assign\>r<rsub|k>*<space|0.17em>U<rsub|k><around|(|5|)><rsup|-1>*\<partial\><rsup|V><rsub|4>*U<rsub|k><around|(|4|)>\<to\>x\<assign\>\<partial\><rsup|W><rsub|4>>.

    <item>A05 at degree 4, applied to <math|<around|(|J,p,Y|)>>, gives
    thresholds beyond which <math|<around|(|r<rsub|k>/\<xi\><rsub|k>|)>*<space|0.17em>U<rsub|k><around|(|5|)><rsup|-1>*p<rsub|4>*U<rsub|k><around|(|4|)>\<to\>\<kappa\>*<space|0.17em>\<partial\><rsup|W><rsub|4>>.

    <item>Take the componentwise maximum of the two sets of thresholds.

    <item>Substituting <math|p<rsub|4>=c*<space|0.17em>\<partial\><rsup|V><rsub|4>>
    in step 2 gives <math|<around|(|c/\<xi\><rsub|k>|)>*X<rsub|k>\<to\>\<kappa\>*x>,
    where <math|x\<ne\>0> is part of the free data. Lemma VII.5.f gives
    <math|c/\<xi\><rsub|k>\<to\>\<kappa\>>.
  </enumerate>

  The transport is <math|U<rsub|k>*<around|(|d+1|)><rsup|-1><around|(|<space|0.17em>\<cdummy\><space|0.17em>|)>*U<rsub|k><around|(|d|)>>,
  as defined by <hlink|<verbatim|carry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L44-L45>
  and <hlink|<verbatim|aisle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57>.

  <em|Lean:> <hlink|<verbatim|tracks_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54>.

  <strong|Lemma VII.5.h (= VII.5.4(b)).> <em|Proof sketch.> Suppose
  <math|J=0>. The translation Ward identity writes every correlation with an
  insertion of <math|p<rsub|d,a>*v> as a flux of <math|J> through a shell,
  which is then <math|0>. Correlations separate the elements of
  <math|\<cal-F\><rsub|d+1>>, so <math|p=0>. <em|Lean:>
  <hlink|<verbatim|flux_nontrivial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70>.

  <em|Remark (sign of <math|c*\<kappa\>>).> Suppose in addition that tracking
  sequences exist at every level. Then <math|c*\<kappa\>\<gtr\>0>: since
  <math|\<xi\><rsub|k>\<gtr\>0>, <math|c/\<xi\><rsub|k>> has the sign of
  <math|c>, and its limit is <math|\<kappa\>\<ne\>0>. This is
  <hlink|<verbatim|kappa_sign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L56-L70>.
  It is not assigned to this unit and is not used by the main theorem. VI.2
  uses only (a), and obtains <math|c\<neq\>0> from <math|\<kappa\>\<ne\>0>.

  <subsection|4.3 Exactly compatible frames
  (VII.5.5)><label|43-exactly-compatible-frames-vii55>

  <strong|Lemma VII.5.i (equivariant retraction, = VII.5.5(a)).> <em|Proof
  sketch.>

  <\enumerate>
    <item><math|\<iota\><rsup|W>> is injective, so it has a linear left
    inverse <math|R>.

    <item>Average over <math|\<Gamma\><rsub|4>>:
    <math|Q\<assign\><around|\||\<Gamma\><rsub|4>|\|><rsup|-1>*<big|sum><rsub|s\<in\>\<Gamma\><rsub|4>>s<rsup|-1>*R*s>.
    Since <math|\<iota\><rsup|W>> commutes with <math|\<Gamma\><rsub|4>>,
    <math|Q> is again a left inverse, and <math|Q> is
    <math|\<Gamma\><rsub|4>>-equivariant.

    <item>Let <math|\<theta\>> be the conjugation, an antilinear involution.
    Put <math|P\<assign\><frac|1|2>*<around|(|Q+\<theta\>*Q*\<theta\>|)>>.
    Then <math|P> is <math|\<bbb-C\>>-linear. It is a left inverse, since
    <math|\<iota\><rsup|W>> commutes with <math|\<theta\>>. It commutes with
    <math|\<theta\>>. It stays <math|\<Gamma\><rsub|4>>-equivariant, since
    <math|\<theta\>> commutes with <math|\<Gamma\><rsub|4>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>,
  <hlink|<verbatim|averaged_cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L27-L32>.

  <strong|Lemma VII.5.j (exactness of the correction, = VII.5.5(b)).>
  <em|Proof sketch.>

  <\enumerate>
    <item><em|One step.> <math|X<rsub|d+1>*\<iota\><rsup|W>*v=\<iota\><rsup|V>*X<rsub|d>*P<rsub|d>*\<iota\><rsup|W>*v+A<rsub|d+1>*<around|(|\<iota\><rsup|W>*v-\<iota\><rsup|W>*P<rsub|d>*\<iota\><rsup|W>*v|)>=\<iota\><rsup|V>*X<rsub|d>*v>.

    <item><em|Intertwining for <math|d\<leqslant\>e>.> Induction on <math|e>,
    using <math|\<iota\><rsub|d\<to\>e+1>=\<iota\><rsub|e\<to\>e+1>*\<iota\><rsub|d\<to\>e>>
    and <math|\<iota\><rsub|d\<to\>d>=1>.

    <item><em|Symmetries.> Induction on <math|d>. Let <math|g> be a signed
    permutation or the conjugation. Then <math|g> commutes with
    <math|P<rsub|d>>, <math|\<iota\><rsup|W>>, <math|\<iota\><rsup|V>>,
    <math|A<rsub|d+1>> and, by induction, with <math|X<rsub|d>>. Hence it
    commutes with both terms of <math|X<rsub|d+1>>.

    <item><em|Units.> <math|\<b-1\><rsub|d+1>=\<iota\><rsup|W>*\<b-1\><rsub|d>>,
    so <math|X<rsub|d+1>*\<b-1\><rsub|d+1>=\<iota\><rsup|V>*X<rsub|d>*\<b-1\><rsub|d>=\<iota\><rsup|V>*\<b-1\><rsub|d>=\<b-1\><rsub|d+1>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|adjusted_succ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L78-L79>,
  <hlink|<verbatim|adjusted_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102>.

  <strong|Lemma VII.5.k (asymptotic identity).> Under the hypotheses of
  VII.5.5(c), for <math|d\<leqslant\>D>, <math|\<Pi\><rsup|<around|(|k|)>><rsub|d>\<assign\><around|(|A<rsup|<around|(|k|)>><rsub|d>|)><rsup|-1>*X<rsup|<around|(|k|)>><rsub|d>\<to\>1>
  in operator norm. <em|Proof sketch.>

  <\enumerate>
    <item>Put <math|\<Phi\><rsup|<around|(|k|)>><rsub|d>\<assign\><around|(|A<rsup|<around|(|k|)>><rsub|d+1>|)><rsup|-1>*\<iota\><rsup|V>*A<rsup|<around|(|k|)>><rsub|d>>.
    Then

    <\equation*>
      \<Pi\><rsup|<around|(|k|)>><rsub|d+1>*v=\<Phi\><rsup|<around|(|k|)>><rsub|d>*<space|0.17em>\<Pi\><rsup|<around|(|k|)>><rsub|d>*P<rsub|d>*v+<around|(|v-\<iota\><rsup|W>*P<rsub|d>*v|)>,<space|2em>\<Pi\><rsup|<around|(|k|)>><rsub|0>=1.
    </equation*>

    <item><math|\<Phi\><rsup|<around|(|k|)>><rsub|d>\<to\>\<iota\><rsup|W>>
    pointwise by hypothesis, hence in norm (finite dimension).

    <item>By induction, <math|\<Pi\><rsup|<around|(|k|)>><rsub|d>*P<rsub|d>*v\<to\>P<rsub|d>*v>.

    <item>Therefore <math|\<Pi\><rsup|<around|(|k|)>><rsub|d+1>*v\<to\>\<iota\><rsup|W>*P<rsub|d>*v+v-\<iota\><rsup|W>*P<rsub|d>*v=v>.
    Finite dimensionality converts pointwise convergence to operator-norm
    convergence.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|perturb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L106-L108>,
  <hlink|<verbatim|perturb_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129>.

  <strong|Lemma VII.5.l (bijectivity and the new frames, VII.5.5(c)).>
  <em|Proof sketch.>

  <\enumerate>
    <item><math|\<Pi\><rsup|<around|(|k|)>><rsub|d>\<to\>1> in norm, and
    injective operators form an open set. So
    <math|\<Pi\><rsup|<around|(|k|)>><rsub|d>>, and hence
    <math|X<rsup|<around|(|k|)>><rsub|d>>, is injective for large <math|k>.

    <item><math|dim \<cal-F\><rsup|\<circ\>><rsub|d>=dim \<cal-F\><rsub|d>>
    (by <math|A<rsup|<around|(|k|)>><rsub|d>>), so
    <math|X<rsup|<around|(|k|)>><rsub|d>> is bijective.

    <item>Hence <math|<wide|X|~><rsup|<around|(|k|)>><rsub|d>=X<rsup|<around|(|k|)>><rsub|d>>
    eventually, and <math|<around|(|A<rsup|<around|(|k|)>><rsub|d>|)><rsup|-1>*<wide|X|~><rsup|<around|(|k|)>><rsub|d>*v\<to\>v>
    for every <math|v>.

    <item>Intersect the eventual sets for <math|d=0,\<ldots\>,D>. If the
    original frames satisfy the symmetry and unit conditions of (b), all
    corrected frames then agree with the exactly compatible maps
    <math|X<rsup|<around|(|k|)>><rsub|d>> on this degree range.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|eventually_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135>,
  <hlink|<verbatim|rotate_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L142-L143>,
  <hlink|<verbatim|relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148>.

  <em|Use.> In VII.1 the frames of the free-field scaling sequence intertwine
  the inclusions only asymptotically. VII.5.5 replaces them by frames that
  are exactly graded for all large <math|k> and asymptotically equal to the
  original ones, as tracking requires (<hlink|<verbatim|tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>).

  <subsection|4.4 Finite-dimensional convergence
  (VII.5.6)><label|44-finite-dimensional-convergence-vii56>

  <strong|Lemma VII.5.m (= Proposition VII.5.6).> <em|Proof sketch.>

  <\itemize-minus>
    <item>(a) A linear left inverse <math|g> of <math|f> is continuous in
    finite dimension, so <math|a<rsub|y>=g*f<around|(|a<rsub|y>|)>\<to\>g*f<around|(|e|)>=e>.

    <item>(b) Every point of <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>> is
    <math|<big|sum><rsub|i,a>v<rsub|i,a>*e<rsub|i,a>>. Hence evaluation at
    the <math|4*n> coordinate vectors is an injective real-linear map from
    the space of complex-valued real-linear maps to
    <math|\<bbb-C\><rsup|4*n>>, and (a) applies.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|norm_fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51>,
  <hlink|<verbatim|components>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60>,
  <hlink|<verbatim|norm_fit_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70>.

  <subsection|4.5 The classical stress-tensor algebra
  (VII.5.7)><label|45-the-classical-stress-tensor-algebra-vii57>

  <strong|Lemma VII.5.n (covariance of <math|\<mu\><rsup|1>,\<mu\><rsup|2>>).>
  For a signed permutation <math|t> with signs
  <math|\<varepsilon\><rsub|t><around|(|\<cdummy\>|)>>:

  <\equation*>
    t\<cdot\>\<mu\><rsup|2><rsub|a>=\<varepsilon\><rsub|t><around|(|a|)>*<space|0.17em>\<mu\><rsup|2><rsub|t<around|(|a|)>>,<space|2em>t\<cdot\>\<mu\><rsup|1><rsub|a>=\<varepsilon\><rsub|t><around|(|a|)>*<space|0.17em>\<mu\><rsup|1><rsub|t<around|(|a|)>>.
  </equation*>

  Both are real. <em|Proof sketch.> <math|t> multiplies
  <math|<around|\<langle\>|F<rsub|i*j>,\<partial\><rsub|b>*F<rsub|i*j>|\<rangle\>>>
  by <math|\<varepsilon\><around|(|i|)>*\<varepsilon\><around|(|j|)>*<space|0.17em>\<varepsilon\><around|(|b|)>*\<varepsilon\><around|(|i|)>*\<varepsilon\><around|(|j|)>=\<varepsilon\><around|(|b|)>>
  and relabels the indices. The double sum over <math|<around|(|i,j|)>> is
  invariant under reindexing by <math|t>. For <math|\<mu\><rsup|1><rsub|b>>,
  the sign is <math|\<varepsilon\><around|(|b|)><rsup|3>*\<varepsilon\><around|(|i|)><rsup|2>=\<varepsilon\><around|(|b|)>>,
  and the remaining index is reindexed in the same way. Reality follows from
  the real inner products. <em|Lean:> <hlink|<verbatim|momentum2_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24>,
  <hlink|<verbatim|momentum1_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34>,
  <hlink|<verbatim|momentum2_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27>,
  <hlink|<verbatim|sumPerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20>.

  <strong|Lemma VII.5.o (affine shells).> Every degree-0 radial jet is
  realised by a free Maxwell field with constant curvature and an affine
  potential. <em|Proof sketch.> The associated potential has constant
  curvature, so <math|<big|sum><rsub|a>\<partial\><rsub|a>*F<rsub|a*b>=0>.
  <em|Lean:> <hlink|<verbatim|shell_affine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50>.
  VII.2 uses this, with its degree-1 analogue
  <hlink|<verbatim|shell_quadratic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L52-L61>,
  to build test jets on Maxwell solutions.

  <strong|Consequences in VI.1 and VII.2.> Write
  <math|T<rsup|<around|(|0,w|)>>\<assign\>T<rsup|<around|(|0,w<rsub|0>,w<rsub|1>,w<rsub|2>|)>>>
  for <math|w\<in\>\<bbb-R\><rsup|3>>.

  <\enumerate>
    <item><em|Trace (VI.1).> <math|<big|sum><rsub|a>T<rsup|<around|(|0,w|)>><rsub|a*a>=4*<around|(|w<rsub|0>+4*w<rsub|1>|)>*<space|0.17em>\<frak-s\>>.
    In particular <math|T<rsup|<math-up|can>>> is traceless
    (<hlink|<verbatim|mechanical_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69>,
    <hlink|<verbatim|conformal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L71-L72>).

    <item><em|Divergence (VII.2).> <math|\<delta\><around|(|w|)><rsub|b>=<big|sum><rsub|a>\<partial\><rsub|a>*T<rsup|<around|(|0,w|)>><rsub|a*b>>
    (<hlink|<verbatim|euler>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L38-L52>).
    The key identity is the Bianchi consequence

    <\equation*>
      <big|sum><rsub|a,i><around|\<langle\>|F<rsub|a*i>,\<partial\><rsub|a>*F<rsub|b*i>|\<rangle\>>=<tfrac|1|2>\<mu\><rsup|2><rsub|b>.
    </equation*>

    With it, the shear part <math|<big|sum><rsub|a\<ne\>b>\<partial\><rsub|a>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|b*i>|\<rangle\>>>
    equals <math|E<rsub|b>+<frac|1|2>*\<mu\><rsup|2><rsub|b>-2*\<mu\><rsup|1><rsub|b>>.

    <item><em|Coordinates (VII.2).> For simple <math|\<frak-g\>>,
    <math|\<beta\>> and <math|\<delta\>> are bijections
    <math|\<bbb-R\><rsup|3>\<to\>\<cal-R\><rsub|1>>
    (<hlink|<verbatim|coordinates1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L112-L124>,
    <hlink|<verbatim|bareCoordinates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L54-L63>).
    Under the same simplicity hypothesis, <math|\<beta\><around|(|w|)>>
    vanishes on free Maxwell solutions if and only if
    <math|w<rsub|0>=w<rsub|1>=0> (<hlink|<verbatim|through_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L96-L110>).

    <item><em|Conservation of the canonical tensor (VII.2).>
    <math|\<delta\><around|(|1,-<tfrac|1|4>,1|)>=E>:
    <math|T<rsup|<math-up|can>>> is conserved on the equations of motion
    (<hlink|<verbatim|eom_vector_raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L73-L74>).

    <item><em|The functional <math|\<rho\>> (VII.2).> For simple
    <math|\<frak-g\>>, define <math|\<rho\>:\<cal-R\><rsub|1>\<to\>\<bbb-R\>>
    by <math|\<rho\><around|(|\<delta\><around|(|w|)>|)>\<assign\>-4*<around|(|w<rsub|0>+4*w<rsub|1>|)>>.
    Then <math|<big|sum><rsub|a>T<rsup|<around|(|0,w|)>><rsub|a*a>=-\<rho\><around|(|\<delta\><around|(|w|)>|)>*<space|0.17em>\<frak-s\>>.
    The functional <math|\<rho\>> vanishes on vectors whose components vanish
    on free Maxwell solutions (<hlink|<verbatim|rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80>,
    <hlink|<verbatim|rho_eom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L85-L88>).
  </enumerate>

  For simple <math|\<frak-g\>>, a tensor in this four-parameter family is
  conserved on free Maxwell fields precisely when it is a multiple of
  <math|T<rsup|<math-up|can>>> plus a constant multiple of
  <math|\<delta\><rsub|a*b>*\<b-1\>>. With the unit term removed, its trace
  is determined by its divergence through <math|\<rho\>>. VII.2 uses this
  functional in <hlink|<verbatim|Lease>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22>
  and its limiting comparison <hlink|<verbatim|mere>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The logarithmic coupling law uses only the uniform running clause and
  elementary real analysis. The analytic work lies in the upstream one-loop
  estimate, the coupling reset and the construction of a trajectory reaching
  <math|<wide|\<beta\>|\<bar\>>> at unit scale. The auxiliary results use
  finite-dimensional linear algebra, equivariant averaging and scalar-ratio
  limits.

  The result is uniform both in the volume index <math|p> and in the finer
  lattice level <math|N\<geqslant\>m>. Thus VII.5.3 allows arbitrary volume
  sequences. If inverse couplings converge as <math|N,p\<to\>\<infty\>> at
  fixed <math|m>, their limits inherit the non-strict bound
  <math|<around|\||\<beta\>/s<rsub|m>-2*b<rsub|0>|\|>\<leqslant\>\<varepsilon\>>
  for <math|m\<geqslant\>m<rsub|0><around|(|\<varepsilon\>|)>>. Existence of
  those limits and comparison with a coupling defined by continuum
  correlations require separate results.

  Only the leading logarithm is established here, for the coefficients of the
  lattice effective actions. No two-loop correction or
  <math|\<Lambda\>>-parameter is asserted. The main theorem uses VII.5.1
  through (Reg1), retaining only the existence of a positive slope.
  Proposition VII.5.3 is not used in the assembly.

  The 38 auxiliary declarations serve other parts of the proof: stress
  normalisation in VI.2, frame correction in VII.1, convergence in III.12,
  and classical stress algebra and read-out estimates in VI.1 and VII.2.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|Casimir
  constant>|<cell|<hlink|<verbatim|YM.Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>>|<cell|<math|C<rsub|\<frak-g\>>>
  (<math|=2*q<rsup|2>> for <math|S*U<around|(|q|)>>)>>|<row|<cell|slope
  constant>|<cell|<hlink|<verbatim|YM.Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>>|<cell|<math|\<kappa\><rsub|G>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>>>|<row|<cell|one-loop
  coefficient>|<cell|<hlink|<verbatim|b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13>>|<cell|<math|b<rsub|0>=\<kappa\><rsub|G>/2>;
  slope <math|b<rsub|\<ast\>>=2*b<rsub|0>>>>|<row|<cell|lattice spacing at
  stage <math|m>>|<cell|<hlink|<verbatim|Schedule.a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>>|<cell|<math|a<rsub|m>=1/D<rsub|m>>>>|<row|<cell|logarithmic
  scale>|<cell|<hlink|<verbatim|Schedule.scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>>|<cell|<math|s<rsub|m>=log
  <around|(|1/a<rsub|m>|)>>>>|<row|<cell|coupling at stage
  <math|m>>|<cell|<verbatim|C.path.\<beta\> N p
  m>>|<cell|<math|\<beta\><rsub|N,p,m>>; bare coupling
  <math|\<beta\><rsub|N,p>=\<beta\><rsub|N,p,N>>>>|<row|<cell|reference
  line>|<cell|<hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>>|<cell|<math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*s<rsub|m>>>>|<row|<cell|running
  clause>|<cell|<hlink|<verbatim|Running>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230>>|<cell|(R)>>|<row|<cell|running
  coupling>|<cell|<hlink|<verbatim|regulatorRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35>>|<cell|<math|g<rsub|N,p,m>=\<beta\><rsub|N,p,m><rsup|-1/2>>>>|<row|<cell|free
  comparison table>|<cell|<hlink|<verbatim|Free>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Station.lean#L28>>|<cell|<math|\<cal-F\><rsup|\<circ\>><rsub|d>>>>|<row|<cell|equivariant
  retraction>|<cell|<hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>>|<cell|<math|P<rsub|d>>>>|<row|<cell|corrected
  frames>|<cell|<hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66>,
  <hlink|<verbatim|rotateChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140>>|<cell|<math|X<rsub|d>>,
  <math|<wide|X|~><rsup|<around|(|k|)>><rsub|d>>>>|<row|<cell|exact
  compatibility up to degree <math|D>>|<cell|<hlink|<verbatim|Exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76>,
  <hlink|<verbatim|Graded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172>>|<cell|"exactly
  graded">>|<row|<cell|asymptotic intertwining>|<cell|<hlink|<verbatim|Near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111>>|<cell|hypothesis
  of VII.5.5(c)>>|<row|<cell|square of the
  curvature>|<cell|<hlink|<verbatim|square4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66>>|<cell|<math|\<frak-s\>=<frac|1|4>*<big|sum><rsub|i,j><around|\<langle\>|F<rsub|i*j>,F<rsub|i*j>|\<rangle\>>>>>|<row|<cell|canonical
  stress tensor>|<cell|<hlink|<verbatim|raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70>>|<cell|<math|T<rsup|<math-up|can>>>>>|<row|<cell|weight-5
  vectors>|<cell|<hlink|<verbatim|momentum1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16>,
  <hlink|<verbatim|momentum2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14>>|<cell|<math|\<mu\><rsup|1>>,
  <math|\<mu\><rsup|2>>>>|<row|<cell|coordinates on
  <math|\<cal-R\><rsub|1>>>|<cell|<hlink|<verbatim|basisV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66>>|<cell|<math|\<beta\><around|(|w|)>>>>|<row|<cell|divergence
  of <math|T<rsup|<around|(|0,w|)>>>>|<cell|<hlink|<verbatim|bareVector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33>>|<cell|<math|\<delta\><around|(|w|)>>>>|<row|<cell|sharp
  read-out bound>|<cell|<hlink|<verbatim|SharpRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26>>|<cell|Definition
  VII.5.8>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|The upstream one-loop calculation.> The transfer bound is
    traced through the coupling reset and the one-loop shift bound in Ÿ2. The
    evaluation of the momentum integral giving
    <math|11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>> belongs to
    III.7; its analytic proof is not verified here. The coupling results in
    this unit take the construction conditions as hypotheses.

    <item><strong|The coupling after the limits.> The assessment's Theorem
    7.2 concerns <math|g<rsub|W><around|(|r|)>> after removal of the initial
    cutoff and a subsequential infinite-volume limit, together with
    comparison to a coupling read from continuum correlations. VII.5.3 proves
    the lattice-stage law. A declaration establishing the additional limits
    and comparison has not been identified here (tentative). The files
    <verbatim|Beacon>, <verbatim|Hymnal> and <verbatim|Musicology> in
    <verbatim|YM/RemainderComparison> are possible starting points.

    <item><strong|Existence of the comparison inputs.> VII.5.4 assumes the
    free Maxwell data of VI.2 and a Euclidean hierarchy on <math|S>; it gives
    a conclusion for every tracking sequence meeting its finite thresholds.
    It does not construct such sequences. Their existence belongs to VI.1 and
    VII.1. Likewise, the supply of the read-out bound in III.2 uses the
    hypotheses of the theorem linked in Ÿ2; the underlying one-step estimates
    are outside this unit.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.4 Operator product expansion and
  contact extensions (notes)|VII-4.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-5.tm>|<hlink|VII.6 Scaling variants and fixed-field
  estimates (notes) \<rightarrow\>|VII-6.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.5. Asymptotic freedom of the running coupling
    \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|7>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-the-running-coupling|<tuple|4.1|10>>
    <associate|42-normalisation-of-the-stress-tensor-vii54|<tuple|4.2|11>>
    <associate|43-exactly-compatible-frames-vii55|<tuple|4.3|12>>
    <associate|44-finite-dimensional-convergence-vii56|<tuple|4.4|13>>
    <associate|45-the-classical-stress-tensor-algebra-vii57|<tuple|4.5|13>>
    <associate|5-where-the-difficulty-lies|<tuple|5|14>>
    <associate|6-notation|<tuple|6|15>>
    <associate|7-what-remains-unexplained|<tuple|7|15>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|14>>
    <associate|auto-11|<tuple|6|15>>
    <associate|auto-12|<tuple|7|15>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|10>>
    <associate|auto-5|<tuple|4.1|10>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|13>>
    <associate|vii5-asymptotic-freedom-of-the-running-coupling--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The running coupling
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Normalisation of the stress tensor
      (VII.5.4) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Exactly compatible frames (VII.5.5)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Finite-dimensional convergence
      (VII.5.6) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The classical stress-tensor algebra
      (VII.5.7) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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