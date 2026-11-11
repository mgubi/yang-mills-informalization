<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> II.1 Field labels and their lattice
  representatives (notes)|II-1.tm>|<hlink|Part
  II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Unit
  outline|../units/II-2.tm>|<hlink|III.1 The block-spin step and the
  symmetric gauge fixing (notes) \<rightarrow\>|III-1.tm>>

  <ym-title|II.2. Marker algebra, polymer combinatorics and Gaussian
  estimates \V detailed notes><label|ii2-marker-algebra-polymer-combinatorics-and-gaussian-estimates--detailed-notes>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. What this
    unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|A. Marker algebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|B. Polymer combinatorics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|C. Switching <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|D. Gaussian polynomial calculus
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|E. Numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. What it
    uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Strategy>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Steps>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <with|par-left|1tab|4.1 Marker algebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.2 Components and the tree bound
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.3 Two kinds of overlap
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.4 Switching <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|4.5 Gaussian calculus
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <with|par-left|1tab|4.6 Numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit II.2: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/II-2.tm>.
  </quotation>

  <hlink|Unit page|../units/II-2.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> II, Data of the construction. <strong|Lean:>
  <hlink|<verbatim|YM/Marker/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker>,
  <hlink|<verbatim|YM/Ac/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac>,
  <hlink|<verbatim|YM/Ovens/Coffee.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean>,
  <hlink|<verbatim|YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean>,
  <hlink|<verbatim|YM/Extra/MULTISOURCE_TRAJECTORIES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES>,
  <hlink|<verbatim|YM/Push/GRID_APPROXIMATION/Nil.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean>,
  <hlink|<verbatim|YM/MergeProof/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof>,
  <hlink|<verbatim|YM/Next/RANK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK>,
  <hlink|<verbatim|YM/Vac/Treasury.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean>.
  <strong|Size:> 3,691 lines in 793 declarations used by the main theorem.

  This unit supplies the algebraic, combinatorial and numerical estimates
  used to multiply and sum polymer activities in Part III, especially in the
  Gaussian comparison of III.11. The activity format is defined in III.1; the
  Wilson family and construction record in II.1; reflection-positive cells in
  IV.1.

  The results fall into five groups: marker algebra (II.2.1\UII.2.4), polymer
  combinatorics and forced-activity fusion (II.2.5\UII.2.8), switching
  (II.2.9), Gaussian polynomial calculus (II.2.10\UII.2.11), and numerical
  scale comparisons (II.2.12\UII.2.13). They are used in III.8\UIII.13,
  III.15, VII.2, VII.4 and VII.6; the vacuum-energy estimate also enters V.2.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Conventions.>

  <\itemize-minus>
    <item><math|\<Lambda\>> is a four-dimensional periodic lattice.

    <item>A <em|support> is a finite subset of <math|\<Lambda\>>, and
    <math|<math-up|dist>> is the lattice separation.

    <item>For <math|M\<in\>\<bbb-N\>> and a support <math|X>, the
    <strong|cover number> <math|<math-up|cov><rsub|M><around|(|X|)>> is the
    least cardinality of a set <math|D\<subseteq\>\<Lambda\>> such that the
    union <math|B<rsub|M><around|(|D|)>> of the balls of radius <math|M>
    around <math|D> contains <math|X> and is connected for nearest-neighbour
    steps (<hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>,
    <hlink|<verbatim|covers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L52-L55>,
    I.1).

    <item>The parameters of the polymer norms are
    <math|P=<around|(|r,q,e<rsub|P>,B,t<rsub|P>|)>>, with
    <math|r,q,B\<in\>\<bbb-N\>>, <math|r\<geqslant\>6>,
    <math|q\<geqslant\>2>, <math|B\<geqslant\>1>, <math|e<rsub|P>\<gtr\>0>
    and <math|0\<less\>t<rsub|P>\<leqslant\>1>: smoothness order, power,
    support exponent, cover size and threshold. The mass of an envelope
    <math|c> on support <math|X> is <math|e<rsup|e<rsub|P><math-up|cov><rsub|B><around|(|X|)>>*c>.

    <item>Two facts from I.1 are used:

    <\itemize-minus>
      <item><math|<around|\||X|\|>\<leqslant\><around|(|2*M+1|)><rsup|4><space|0.17em><math-up|cov><rsub|M><around|(|X|)>>
      (<hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>);

      <item><math|<math-up|cov><rsub|M><around|(|X\<cup\>Y|)>\<leqslant\><math-up|cov><rsub|M><around|(|X|)>+<math-up|cov><rsub|M><around|(|Y|)>>
      if <math|X\<cap\>Y\<neq\>\<emptyset\>>
      (<hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>).
    </itemize-minus>
  </itemize-minus>

  <subsection|A. Marker algebra><label|a-marker-algebra>

  <strong|Proposition II.2.1 (marker algebra).> Let <math|V> be a finite set
  and <math|R> a <em|census> on <math|V>: a finite family of finite subsets
  of <math|V> that contains <math|\<emptyset\>> and all singletons and is
  closed under taking subsets. Let <math|\<cal-A\><rsub|R>> be the space of
  functions <math|a:R\<to\>\<bbb-C\>>, written
  <math|a=<big|sum><rsub|x\<in\>R>a<around|(|x|)>*\<delta\><rsub|x>>, with
  product

  <\equation*>
    <around|(|a*b|)><around|(|z|)>=<big|sum><rsub|x,y\<in\>R:x\<cap\>y=\<emptyset\>,x\<cup\>y=z>a<around|(|x|)>*<space|0.17em>b<around|(|y|)>*<space|2em><around|(|z\<in\>R|)>.
  </equation*>

  Then:

  <\enumerate>
    <item><math|\<cal-A\><rsub|R>> is a commutative unital
    <math|\<bbb-C\>>-algebra with unit <math|\<delta\><rsub|\<emptyset\>>>.

    <item><math|\<delta\><rsub|x>*\<delta\><rsub|y>=\<delta\><rsub|x\<cup\>y>>
    if <math|x\<cap\>y=\<emptyset\>> and <math|x\<cup\>y\<in\>R>, and
    <math|\<delta\><rsub|x>*\<delta\><rsub|y>=0> otherwise. So every marker
    <math|\<delta\><rsub|<around|{|v|}>>> squares to zero, and products that
    leave <math|R> vanish.

    <item><math|<around|(|a*b|)><around|(|\<emptyset\>|)>=a<around|(|\<emptyset\>|)>*<space|0.17em>b<around|(|\<emptyset\>|)>>.

    <item>If <math|a<around|(|\<emptyset\>|)>=0>, then
    <math|a<rsup|k><around|(|x|)>=0> whenever
    <math|<around|\||x|\|>\<less\>k>; in particular, <math|a<rsup|k>=0> for
    <math|k\<gtr\><around|\||V|\|>>.
  </enumerate>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Marker.Census>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L22-L26>,
  <hlink|<verbatim|Poly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40>,
  <hlink|<verbatim|Poly.prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L68>,
  <hlink|ring structure|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean>,
  <hlink|<verbatim|Poly.quiet_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L28>,
  <hlink|<verbatim|Poly.high>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L22>,
  <hlink|<verbatim|Poly.stops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L26-L27>.

  <strong|Proposition II.2.2 (weighted <math|\<ell\><rsup|1>> norm).> For
  <math|w:V\<to\><around|(|0,\<infty\>|)>> put
  <math|w<rsup|x>=<big|prod><rsub|v\<in\>x>w<rsub|v>> and
  <math|<around|\<\|\|\>|a|\<\|\|\>><rsub|w>=<big|sum><rsub|x\<in\>R>w<rsup|x><around|\||a<around|(|x|)>|\|>>.
  Then <math|<around|\<\|\|\>|1|\<\|\|\>><rsub|w>=1>,
  <math|<around|\<\|\|\>|c*<space|0.17em>\<delta\><rsub|x>|\<\|\|\>><rsub|w>=w<rsup|x><around|\||c|\|>>,
  and

  <\equation*>
    <around|\<\|\|\>|a*b|\<\|\|\>><rsub|w>\<leqslant\><around|\<\|\|\>|a|\<\|\|\>><rsub|w><around|\<\|\|\>|b|\<\|\|\>><rsub|w>,<space|2em><mid|\|><big|prod><rsub|i\<in\>T>a<rsub|i><mid|\|><rsub|w>\<leqslant\><big|prod><rsub|i\<in\>T><around|\<\|\|\>|a<rsub|i>|\<\|\|\>><rsub|w>,<space|2em><around|\<\|\|\>|a<rsup|k>|\<\|\|\>><rsub|w>\<leqslant\><around|\<\|\|\>|a|\<\|\|\>><rsub|w><rsup|k>.
  </equation*>

  Set <math|<math-up|Exp><around|(|a|)>=<big|sum><rsub|k=0><rsup|<around|\||V|\|>>a<rsup|k>/k!>.

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|<math-up|Exp><around|(|a|)>|\<\|\|\>><rsub|w>\<leqslant\>e<rsup|<around|\<\|\|\>|a|\<\|\|\>><rsub|w>>>
    for every <math|a>.

    <item>If a countable family satisfies
    <math|<around|\<\|\|\>|f<rsub|i>|\<\|\|\>><rsub|w>\<leqslant\>b<rsub|i>>
    with <math|<big|sum><rsub|i>b<rsub|i>\<less\>\<infty\>>, then
    <math|<big|sum><rsub|i>f<rsub|i>> converges in <math|\<cal-A\><rsub|R>>,
    <math|<around|\<\|\|\>|<big|sum><rsub|i>f<rsub|i>|\<\|\|\>><rsub|w>\<leqslant\><big|sum><rsub|i>b<rsub|i>>,
    and coefficients of the sum are sums of coefficients.

    <item><math|max<rsub|x><around|\||a<around|(|x|)>|\|>\<leqslant\><around|(|min<rsub|x\<in\>R>
    w<rsup|x>|)><rsup|-1><around|\<\|\|\>|a|\<\|\|\>><rsub|w>>.
  </itemize-minus>

  The multiplicative and exponential bounds have constant <math|1>,
  independently of <math|R> and <math|<around|\||V|\|>>. The norm-comparison
  constant is used to establish convergence.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Poly.toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L74>,
  <hlink|<verbatim|Poly.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L76>,
  <hlink|<verbatim|multiplication>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L139-L146>,
  <hlink|<verbatim|multiple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L148-L152>,
  <hlink|<verbatim|powers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L154-L157>,
  <hlink|<verbatim|Poly.pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L29>,
  <hlink|<verbatim|pass_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L39-L46>,
  <hlink|<verbatim|budgeted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L51-L58>,
  <hlink|<verbatim|share>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L60>,
  <hlink|<verbatim|equivalent_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L102-L112>.

  <strong|Proposition II.2.3 (exponential and connected polynomial).> Use the
  marker algebra and exponential of II.2.1\UII.2.2.

  (a) If <math|a<around|(|\<emptyset\>|)>=b<around|(|\<emptyset\>|)>=0>, then
  <math|<math-up|Exp><around|(|a+b|)>=<math-up|Exp><around|(|a|)><space|0.17em><math-up|Exp><around|(|b|)>>
  and <math|<math-up|Exp><around|(|-a|)><space|0.17em><math-up|Exp><around|(|a|)>=1>.
  More generally, <math|<math-up|Exp><around|(|<big|sum><rsub|i\<in\>s>a<rsub|i>|)>=<big|prod><rsub|i\<in\>s><math-up|Exp><around|(|a<rsub|i>|)>>
  for a finite family with all <math|a<rsub|i><around|(|\<emptyset\>|)>=0>.
  The zero-constant-term hypotheses are necessary for these identities in
  general.

  (b) If <math|x\<neq\>\<emptyset\>>, then
  <math|<math-up|Exp><around|(|c*<space|0.17em>\<delta\><rsub|x>|)>=1+c*<space|0.17em>\<delta\><rsub|x>>.
  Hence, for a finite family of nonempty <math|x<rsub|i>\<in\>R> (not
  necessarily distinct),

  <\equation*>
    <math-up|Exp><around*|(|<big|sum><rsub|i\<in\>s>c<rsub|i>*\<delta\><rsub|x<rsub|i>>|)>=<big|prod><rsub|i\<in\>s><around|(|1+c<rsub|i>*\<delta\><rsub|x<rsub|i>>|)>.
  </equation*>

  (c) If <math|F<around|(|\<emptyset\>|)>=1>, there is exactly one
  <math|C\<in\>\<cal-A\><rsub|R>> with <math|C<around|(|\<emptyset\>|)>=0>
  and <math|<math-up|Exp><around|(|C|)>=F>: the <strong|connected polynomial>
  of <math|F>. It is obtained by iteration:

  <\itemize-minus>
    <item><math|C<rsub|0>=0> and <math|C<rsub|k+1>=C<rsub|k>+F-<math-up|Exp><around|(|C<rsub|k>|)>>;

    <item><math|F-<math-up|Exp><around|(|C<rsub|k>|)>> vanishes on all marker
    sets with at most <math|k> elements, so
    <math|C=C<rsub|<around|\||V|\|>>>;

    <item>each <math|C<rsub|k>> is a polynomial, hence continuous, function
    of <math|F>.
  </itemize-minus>

  (d) If <math|C<around|(|\<emptyset\>|)>=0> and
  <math|<math-up|Exp><around|(|C|)>=F>, then
  <math|F<space|0.17em><math-up|Exp><around|(|-C|)>*<space|0.17em>P=P> for
  every <math|P>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Exponential.pass_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L56-L88>,
  <hlink|<verbatim|pass_neg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L90>,
  <hlink|<verbatim|pass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L92-L100>,
  <hlink|<verbatim|Trajectories.pass_send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L113-L122>,
  <hlink|<verbatim|Trajectories.pass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L124-L134>,
  <hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L126>,
  <hlink|<verbatim|roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L130-L132>,
  <hlink|<verbatim|rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L133-L149>,
  <hlink|<verbatim|roll_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L151-L156>,
  <hlink|<verbatim|Expands.uniq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L161-L174>,
  <hlink|<verbatim|connected_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L179-L180>,
  <hlink|<verbatim|correct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L184-L185>.

  <strong|Proposition II.2.4 (tagged products; repacking).> Use positive
  weights <math|w> as in II.2.2.

  (a) Let <math|\<tau\>:\<iota\>\<to\>R> and let <math|s\<subseteq\>\<iota\>>
  be finite. Say that <strong|<math|s> fits> if the sets
  <math|\<tau\><around|(|i|)>>, <math|i\<in\>s>, are pairwise disjoint and
  their union lies in <math|R>.

  <\itemize-minus>
    <item>If <math|s> fits, then <math|<big|prod><rsub|i\<in\>s>c<rsub|i>*\<delta\><rsub|\<tau\><around|(|i|)>>=<around|(|<big|prod><rsub|i\<in\>s>c<rsub|i>|)>*<space|0.17em>\<delta\><rsub|<big|cup><rsub|i\<in\>s>\<tau\><around|(|i|)>>>
    and <math|w<rsup|<big|cup><rsub|i\<in\>s>\<tau\><around|(|i|)>>=<big|prod><rsub|i\<in\>s>w<rsup|\<tau\><around|(|i|)>>>.

    <item>Conversely, if <math|<big|prod><rsub|i\<in\>s>c<rsub|i>*\<delta\><rsub|\<tau\><around|(|i|)>>\<neq\>0>,
    then <math|s> fits.
  </itemize-minus>

  (b) Let:

  <\itemize-minus>
    <item><math|\<sigma\>:\<iota\>\<to\>\<kappa\>> assign a <em|slot> to each
    entry;

    <item>"admissible" be any property of finite sets of slots;

    <item><math|F:\<iota\>\<to\>\<cal-A\><rsub|R>> satisfy
    <math|<big|sum><rsub|i><around|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|w>\<less\>\<infty\>>.
  </itemize-minus>

  For finite <math|s\<subseteq\>\<iota\>> put
  <math|<math-up|val><around|(|s|)>=<big|prod><rsub|i\<in\>s>F<rsub|i>> if
  <math|\<sigma\>> is injective on <math|s> and
  <math|\<sigma\><around|(|s|)>> is admissible, and
  <math|<math-up|val><around|(|s|)>=0> otherwise. Then <math|<math-up|val>>
  is summable over finite subsets of <math|\<iota\>>, and

  <\equation*>
    <big|sum><rsub|s><math-up|val><around|(|s|)>=<big|sum><rsub|S\<subseteq\>\<kappa\><text|
    finite, admissible>><big|prod><rsub|k\<in\>S><big|sum><rsub|i:<space|0.17em>\<sigma\><around|(|i|)>=k>F<rsub|i>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Trajectories.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L44-L45>,
  <hlink|<verbatim|tagged_prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L57-L69>,
  <hlink|<verbatim|fits_of_tagged_prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L71-L87>,
  <hlink|<verbatim|toll_union>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L89-L90>,
  <hlink|<verbatim|Packets.summable_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L30-L38>,
  <hlink|<verbatim|Packets.repack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L114-L124>.

  <subsection|B. Polymer combinatorics><label|b-polymer-combinatorics>

  <strong|Proposition II.2.5 (connected components).> Let
  <math|X:\<iota\>\<to\><around|{|<text|supports>|}>> and let
  <math|s\<subseteq\>\<iota\>> be finite.

  <\itemize-minus>
    <item>Two labels of <math|s> are <em|chained in <math|s>> if they are
    joined by a sequence of labels of <math|s> whose successive supports
    intersect.

    <item>A <strong|spark> is a nonempty <math|s> in which all labels are
    chained.

    <item><math|<math-up|Parts><around|(|s|)>> is the set of chain classes of
    <math|s>, and <math|X<around|(|p|)>=<big|cup><rsub|i\<in\>p>X<rsub|i>>.
  </itemize-minus>

  Then:

  <\enumerate>
    <item>The parts of <math|s> are sparks, pairwise disjoint, with union
    <math|s> and with pairwise disjoint supports <math|X<around|(|p|)>>.

    <item>If <math|S> is a finite set of sparks with pairwise disjoint
    supports, then <math|<math-up|Parts><around|(|<big|cup>S|)>=S>.

    <item>If <math|s> is a spark and <math|i\<in\>s>, every label of
    <math|s\<setminus\><around|{|i|}>> is chained in
    <math|s\<setminus\><around|{|i|}>> to a label whose support meets
    <math|X<rsub|i>>.

    <item>If every label of <math|s> is chained in <math|s> to a label
    meeting a support <math|Y> (call <math|s> a <strong|pack for <math|Y>>),
    then every part of <math|s> contains a label meeting <math|Y>.
  </enumerate>

  The same component statements hold when the supports are finite subsets of
  any set.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Ac.Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49>,
  <hlink|<verbatim|Parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L55>,
  <hlink|<verbatim|reconstruct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L60-L63>,
  <hlink|<verbatim|separate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L72-L77>,
  <hlink|<verbatim|separates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L79-L101>,
  <hlink|<verbatim|excise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L103-L113>,
  <hlink|<verbatim|packHits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L115-L118>,
  <hlink|<verbatim|Collide.uncluttered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L91-L111>.

  <strong|Proposition II.2.6 (tree bound in cover-number weights).> Let:

  <\itemize-minus>
    <item><math|\<iota\>> be any set of labels and
    <math|X:\<iota\>\<to\><around|{|<text|supports>|}>>;

    <item><math|M\<in\>\<bbb-N\>>, <math|f:\<iota\>\<to\><around|[|0,\<infty\>|)>>,
    <math|a\<geqslant\>0> and <math|\<gamma\>\<geqslant\>0> with
    <math|<around|(|2*M+1|)><rsup|4>*\<gamma\>\<leqslant\>1>.
  </itemize-minus>

  Assume the <strong|hit condition with exponent <math|a+1>>: for every site
  <math|x> the family <math|<around*|(|\<b-1\>*<around|[|x\<in\>X<rsub|i>|]>*<space|0.17em>f<rsub|i>*<space|0.17em>e<rsup|<around|(|a+1|)><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>|)><rsub|i>>
  is summable, with sum at most <math|\<gamma\>>. Then for every site
  <math|x>,

  <\equation*>
    <big|sum><rsub|s<text|spark>,x\<in\>X<around|(|s|)>>e<rsup|a<space|0.17em><math-up|cov><rsub|M><around|(|X<around|(|s|)>|)>>*<big|prod><rsub|i\<in\>s>f<rsub|i>\<leqslant\>e<rsup|\<gamma\>>-1.
  </equation*>

  The sum runs over finite sets of labels, so each label is used at most
  once, and the family is summable.

  <em|Status:> theorem. Used by III.9\UIII.13, VII.2 and VII.6. <em|Lean:>
  <hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>,
  <hlink|<verbatim|Ac.roots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L84-L85>,
  <hlink|<verbatim|Ac.forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127>.

  <strong|Proposition II.2.7 (unique recovery for two kinds of overlap).> A
  <strong|kiln> on a set <math|I> of labels consists of:

  <\itemize-minus>
    <item>finite sets <math|<math-up|men><around|(|i|)>\<subseteq\>V>
    ("mentions");

    <item>finite sets <math|<math-up|wall><around|(|i|)>\<subseteq\>W>
    (<math|W> another set);

    <item>a set of <em|dirty> labels.
  </itemize-minus>

  For finite <math|s\<subseteq\>I>:

  <\itemize-minus>
    <item>a label <math|i\<in\>s> is <strong|hot in <math|s>> if it is joined
    to a dirty label of <math|s> by a chain in <math|s> of overlapping
    mentions;

    <item>the <strong|fuel> of <math|i> in <math|s> is the subset of
    <math|V\<sqcup\>W> consisting of its mentions in the <math|V> component
    and, only when <math|i> is hot, its walls in the <math|W> component;

    <item><math|s> is a <strong|mole> if it is a spark for fuel overlap;

    <item>the <strong|slabs> of <math|s> are its parts for fuel overlap.
  </itemize-minus>

  Then:

  <\enumerate>
    <item>Every slab <math|p> of <math|s> is a mole, and the fuel of its
    labels computed in <math|p> equals the fuel computed in <math|s>.
    Distinct slabs have disjoint mention-unions. Distinct slabs that contain
    a dirty label have disjoint wall-unions. (In a mole, containing a dirty
    label is equivalent to all labels being hot.)

    <item>Conversely, let <math|S> be a finite set of moles with pairwise
    disjoint mention-unions, and with pairwise disjoint wall-unions among the
    members that contain a dirty label. Then the slabs of <math|<big|cup>S>
    are exactly the members of <math|S>.

    <item>By 1 and 2, <math|s\<mapsto\><math-up|slabs><around|(|s|)>> and
    <math|S\<mapsto\><big|cup>S> are inverse bijections between finite sets
    of labels and such finite sets of moles.

    <item>Suppose the walls are supports and, inside a mole <math|s>,
    overlapping mentions imply overlapping walls. Then <math|s> is a spark
    for the walls. Thus a family of moles can be estimated by II.2.6 whenever
    its wall supports and weights satisfy that proposition\<#2019\>s
    hypotheses.
  </enumerate>

  <em|Status:> theorem. Used by III.11 and VII.4. <em|Lean:>
  <hlink|<verbatim|Kiln>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L123-L126>,
  <hlink|<verbatim|Kiln.Hot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L131>,
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L132>,
  <hlink|<verbatim|Mole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L133>,
  <hlink|<verbatim|good>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L165-L169>,
  <hlink|<verbatim|fuel_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L163-L164>,
  <hlink|<verbatim|clubs_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L190-L196>,
  <hlink|<verbatim|walls_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L197-L205>,
  <hlink|<verbatim|takes_mole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L183-L187>,
  <hlink|<verbatim|Kiln.undo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240>,
  <hlink|<verbatim|Kiln.attends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L242-L253>.

  <strong|Proposition II.2.8 (fused gas of forced activities: definitions).>
  Fix a gauge group <math|G> and a periodic lattice <math|\<Lambda\>>.

  <em|Data.>

  <\itemize-minus>
    <item><strong|Pipes>: regular addresses
    <math|<around|(|<math-up|reg><rsub|i>|)>>; forced addresses
    <math|<around|(|<math-up|ker><rsub|i>|)>>, each with a support, a
    nonempty inventory contained in it, and an extra test on configurations;
    nonempty "softer" supports <math|<around|(|Y<rsub|i>|)>>, for
    <math|i\<in\>\<bbb-N\>>.

    <item><strong|Tap> <math|d>: three families of real-valued functions of
    the configuration, namely regular coefficients <math|E<rsub|i>>, forced
    coefficients <math|K<rsub|i>> and logarithmic coefficients
    <math|\<ell\><rsub|i>>.

    <item><strong|Labels> are <math|\<bbb-N\>\<sqcup\>\<bbb-N\>>: <em|left>
    labels are forced kernels, <em|right> labels are logarithms.

    <\itemize-minus>
      <item>The <em|patch> of a left label <math|i> is
      <math|<math-up|supp><around|(|<math-up|ker><rsub|i>|)>>; that of a
      right label <math|i> is <math|Y<rsub|i>>.

      <item>The <em|reach> of a left label is <math|K<rsub|i><around|(|U|)>>;
      that of a right label is <math|e<rsup|\<ell\><rsub|i><around|(|U|)>>-1>.
    </itemize-minus>

    <item>A <strong|pellet> is a finite set of labels that contains at least
    one left label, is a spark for patch overlap, and whose left labels have
    pairwise disjoint kernel supports. Pellets form a countably infinite set.
  </itemize-minus>

  <em|Fused activities.> Fix a activity parameter point <math|P> and a
  bijective enumeration <math|F> of the pellets. Eligibility is always tested
  at the threshold of <math|P>. The fused activities keep the regular part
  <math|<around|(|<math-up|reg><rsub|i>,E<rsub|i>|)>>. Their forced part is
  indexed by pellets:

  <\itemize-minus>
    <item>address of <math|F<around|(|i|)>>: support = union of the patches,
    inventory = union of the left inventories, extra test = all left kernels
    eligible;

    <item>value
  </itemize-minus>

  <\equation*>
    <math-up|solid><rsub|i><around|(|U|)>=\<b-1\><around|[|<text|the address
    of >F<around|(|i|)><text| is eligible at
    >U|]>*<big|prod><rsub|j\<in\>F<around|(|i|)>><math-up|reach><rsub|j><around|(|U|)>.
  </equation*>

  The unit also defines the hypotheses under which the fused gas is used.
  Below, <math|B> is the cover size of <math|P>.

  <\itemize-minus>
    <item><strong|Digest condition at <math|<around|(|d,P,\<delta\>,b|)>>>:

    <\enumerate>
      <item>the unfused activities <math|<around|(|<math-up|reg>,<math-up|ker>,E,K|)>>
      are valid at <math|P> with regular and forced bounds
      <math|\<delta\>,b>;

      <item><math|\<ell\><rsub|i><around|(|U|)>\<neq\>0> only if
      <math|Y<rsub|i>> meets the large-field set of <math|U>;

      <item><math|<around|\||\<ell\><rsub|i><around|(|U|)>|\|>\<leqslant\>B<rsub|i>>
      for every <math|i,U>, with <math|<big|sum><rsub|i>B<rsub|i>\<less\>\<infty\>>;

      <item>each <math|\<ell\><rsub|i>> is gauge invariant and measurable,
      and has the same value on two configurations that agree on links
      internal to <math|Y<rsub|i>> and have the same large-field flags on
      <math|Y<rsub|i>>;

      <item>lattice affine maps permute the <math|\<ell\><rsub|i>>
      covariantly.
    </enumerate>

    <item><strong|Fusion bounds at <math|<around|(|d,P,\<kappa\>,\<gamma\>|)>>>:

    <\enumerate>
      <item><math|\<gamma\>,\<kappa\>\<geqslant\>0> and
      <math|<around|(|2*B+1|)><rsup|4>*\<gamma\>\<leqslant\>1>;

      <item>there is a label weight <math|f\<geqslant\>0>, independent of
      <math|U>, with <math|<around|\||<math-up|reach>|\|>\<leqslant\>e<rsup|-\<kappa\>>*f>
      on left labels and <math|<around|\||<math-up|reach>|\|>\<leqslant\>f>
      on right labels;

      <item><math|f> satisfies the hit condition of II.2.6 for the patches,
      with exponent (support exponent of <math|P>) <math|+1> and bound
      <math|\<gamma\>>.
    </enumerate>

    <item>For a parameter set <math|T\<subseteq\>\<bbb-R\>> and taps
    <math|d<rsub|a>>, <math|a\<in\>T>, the parametric conditions mean:

    <\enumerate>
      <item>for each label <math|j>, <math|a\<mapsto\><math-up|reach><rsub|j><around|(|d<rsub|a>|)>>
      is continuous in the supremum over configurations, relative to
      <math|T>;

      <item>one common choice of <math|\<kappa\>,\<gamma\>,f> satisfies the
      reach and hit bounds for every <math|a\<in\>T>;

      <item>the fused values are continuous in the norm
      <math|<big|sum><rsub|i>e<rsup|e<rsub|P><math-up|cov><rsub|B><around|(|S<rsub|i>|)>>*sup<rsub|U><around|\||K<rsub|i><around|(|U|)>|\|>>,
      where <math|e<rsub|P>> is the support exponent and <math|S<rsub|i>> the
      fused support.
    </enumerate>
  </itemize-minus>

  <em|Status:> definitions, plus one theorem (an enumeration exists). The
  properties of the fused gas are the work items H01\UH04, stated in
  <hlink|<verbatim|YM/Bid/Kitchen.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean>
  and proved in III.10:

  <\itemize-minus>
    <item><strong|H01> (under the digest condition and fusion bounds):
    <math|<math-up|gas><rsub|<math-up|fused>><around|(|U|)>=<math-up|gas><rsub|<math-up|unfused>><around|(|U|)>*exp
    <big|sum><rsub|i>\<ell\><rsub|i><around|(|U|)>> for every configuration
    <math|U>.

    <item><strong|H02> (under the digest condition and fusion bounds): the
    fused forced activities satisfy the K-bound <math|v> whenever
    <math|e<rsup|-\<kappa\>>*<around|(|e<rsup|\<gamma\>>-1|)>\<leqslant\>v>.

    <item><strong|H03> (under the digest condition): they form a forced
    family with the lattice moves.

    <item><strong|H04>: if the unfused representations form a continuous
    parameter curve, conditions 1 and 2 above imply that the fused
    representations form such a curve. The path data, cutoff and parameters
    <math|P> are fixed along the curve.
  </itemize-minus>

  At startup in III.9, the digest and fusion bounds follow from clip
  compatibility, threshold and coupling bounds, and the packet estimates in
  the cited results (<hlink|<verbatim|Start.digests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L27-L36>,
  <hlink|<verbatim|Loan.buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L120-L123>).
  <em|Lean:> <hlink|<verbatim|Ovens.Pipes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L23-L27>,
  <hlink|<verbatim|Tap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L32-L35>,
  <hlink|<verbatim|reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L48>,
  <hlink|<verbatim|contains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L57-L58>,
  <hlink|<verbatim|addr>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L72>,
  <hlink|<verbatim|solid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L74-L76>,
  <hlink|<verbatim|fused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78>,
  <hlink|<verbatim|Digests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90>,
  <hlink|<verbatim|Buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98>,
  <hlink|<verbatim|invariantJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L105-L107>,
  <hlink|<verbatim|little>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L109-L112>,
  <hlink|<verbatim|retakes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L115-L117>,
  <hlink|<verbatim|encoding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L121-L133>;
  the obligations <hlink|<verbatim|Bid.H01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16>\U<hlink|<verbatim|H04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35>,
  proved by <hlink|<verbatim|Work.H01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L253-L255>,
  <hlink|<verbatim|H02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80>,
  <hlink|<verbatim|H03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L332-L334>,
  <hlink|<verbatim|H04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161>
  (III.10).

  <subsection|C. Switching><label|c-switching>

  <strong|Proposition II.2.9 (switching).> Let <math|\<iota\>> be finite. For
  <math|x\<in\>\<bbb-R\>> and <math|g:2<rsup|\<iota\>>\<to\>\<bbb-R\>> put
  <math|<math-up|val><rsub|x><around|(|g|)><around|(|r|)>=<big|sum><rsub|i\<subseteq\>r>x<rsup|<around|\||i|\|>>*g<around|(|i|)>>.
  This is the value at <math|x*\<b-1\><rsub|r>\<in\><around|{|0,x|}><rsup|\<iota\>>>
  of the multilinear polynomial <math|<big|sum><rsub|i>g<around|(|i|)>*<big|prod><rsub|v\<in\>i>X<rsub|v>>.

  (a) For <math|x\<gtr\>0>, <math|<math-up|val><rsub|x>> is a linear
  bijection of <math|\<bbb-R\><rsup|2<rsup|\<iota\>>>>.

  (b) Let <math|<around|(|f<rsub|x>|)><rsub|x\<in\><around|[|0,1|]>>> be
  functions on <math|2<rsup|\<iota\>>>. Say <math|<around|(|g<rsub|x>|)>>
  <strong|models> <math|f> if <math|<math-up|val><rsub|x><around|(|g<rsub|x>|)>=f<rsub|x>>
  for <math|x\<in\><around|[|0,1|]>> and <math|g<rsub|x>\<to\>g<rsub|0>> as
  <math|x*\<downarrow\>*0>. In that case <math|<math-up|jet><around|(|f|)>\<assign\>lim<rsub|x*\<downarrow\>*0><math-up|val><rsub|x><rsup|-1><around|(|f<rsub|x>|)>>
  exists and equals <math|g<rsub|0>>.

  (c) A family <math|<around|(|f<rsup|u>|)><rsub|u>> is <strong|paid at cost
  <math|c>> if there is <math|b\<geqslant\>0> on <math|2<rsup|\<iota\>>> with
  <math|<big|sum><rsub|i>b<around|(|i|)>\<leqslant\>c> such that, for each
  <math|u>, some model <math|g<rsup|u>> of <math|f<rsup|u>> satisfies
  <math|<around|\||g<rsup|u><rsub|x><around|(|i|)>|\|>\<leqslant\>b<around|(|i|)>>
  for all <math|x\<in\><around|[|0,1|]>>. Then:

  <\itemize-minus>
    <item><math|<around|\||f<rsup|u><rsub|x><around|(|r|)>|\|>\<leqslant\>c>
    for every <math|u>, <math|r> and <math|x\<in\><around|[|0,1|]>>;

    <item>paid families are closed under finite sums (costs add), finite
    products (costs multiply), scalar multiples (cost multiplied by the
    absolute value), and restriction by zero outside a set of parameters.
    Families of paid functions with summable costs may also be added, and
    their jets sum to the jet of the sum. Products of models obey the rule
    <math|X<rsub|v><rsup|2>=x*X<rsub|v>>: <math|<math-up|val><rsub|x>> turns
    the product <math|<around|(|p\<ast\><rsub|x>q|)><around|(|k|)>=<big|sum><rsub|i\<cup\>j=k>x<rsup|<around|\||i\<cap\>j|\|>>*p<around|(|i|)>*q<around|(|j|)>>
    into the pointwise product;

    <item>a monomial <math|u\<mapsto\>c<around|(|u|)>*<space|0.17em>\<b-1\>*<around|[|i\<subseteq\>r|]>*<space|0.17em>x<rsup|<around|\||i|\|>>>
    with <math|<around|\||c|\|>\<leqslant\>b> is paid at cost <math|b>.
  </itemize-minus>

  (d) If <math|f> has a model and <math|f<rsub|x><around|(|r|)>=f<rsub|x>*<around|(|r\<setminus\><around|{|v|}>|)>>
  for every <math|r> and <math|x\<in\><around|[|0,1|]>>, then
  <math|<math-up|jet><around|(|f|)><around|(|i|)>=0> whenever
  <math|v\<in\>i>. For a paid family on a measurable parameter space, if
  <math|u\<mapsto\>f<rsup|u><rsub|x><around|(|r|)>> is measurable for each
  fixed <math|x\<in\><around|[|0,1|]>> and <math|r>, then
  <math|u\<mapsto\><math-up|jet><around|(|f<rsup|u>|)><around|(|i|)>> is
  measurable for every <math|i>.

  (e) For <math|\<rho\>:\<iota\>\<to\>\<cal-A\><rsub|R>> put
  <math|<math-up|snd><rsub|\<rho\>><around|(|f|)>=<big|sum><rsub|i\<subseteq\>\<iota\>><math-up|jet><around|(|f|)><around|(|i|)>*<big|prod><rsub|v\<in\>i>\<rho\><rsub|v>>.

  <\itemize-minus>
    <item>If <math|<around|(|f<rsup|u>|)>> is paid at cost <math|d> and
    <math|<around|\<\|\|\>|\<rho\><rsub|v>|\<\|\|\>><rsub|w>\<leqslant\>1>
    for all <math|v>, then the coefficients of
    <math|<math-up|snd><rsub|\<rho\>><around|(|f<rsup|u>|)>> are dominated,
    uniformly in <math|u>, by a nonnegative array of <math|w>-norm at most
    <math|d>.

    <item>If <math|\<rho\><rsub|v><around|(|\<emptyset\>|)>=0> for all
    <math|v>, the coefficient of <math|<math-up|snd><rsub|\<rho\>><around|(|f|)>>
    on a singleton <math|<around|{|p|}>> is
    <math|<big|sum><rsub|v><math-up|jet><around|(|f|)><around|(|<around|{|v|}>|)>*<space|0.17em>\<rho\><rsub|v><around|(|<around|{|p|}>|)>>.
  </itemize-minus>

  <em|Status:> theorem. For square-zero <math|\<rho\><rsub|v>>,
  <math|<math-up|snd><rsub|\<rho\>>> is multiplicative on functions with
  models. For paid families with summable costs, it commutes with sums; for
  paid <math|f>, it sends <math|e<rsup|f>> to the exponential series of
  <math|<math-up|snd><rsub|\<rho\>><around|(|f|)>>
  (<hlink|<verbatim|mul_sounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L64-L65>,
  <hlink|<verbatim|soundSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L81-L87>,
  <hlink|<verbatim|soundExp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L88-L91>).
  <em|Lean:> <hlink|<verbatim|Switch.value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L26>,
  <hlink|<verbatim|entire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L33-L42>,
  <hlink|<verbatim|jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L46>,
  <hlink|<verbatim|Models>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L48-L50>,
  <hlink|<verbatim|Models.exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L58-L63>,
  <hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L56>,
  <hlink|<verbatim|Paid.tasting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L77-L79>,
  <hlink|<verbatim|Paid.add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L88-L93>,
  <hlink|<verbatim|Paid.sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L116-L119>,
  <hlink|<verbatim|paidClick>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L108-L112>,
  <hlink|<verbatim|comb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L10>,
  <hlink|<verbatim|Paid.mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L46-L50>,
  <hlink|<verbatim|Paid.prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L52-L55>,
  <hlink|<verbatim|jet_erase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L27-L36>,
  <hlink|<verbatim|Paid.jet_meas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L38-L49>,
  <hlink|<verbatim|mapScores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L33-L36>,
  <hlink|<verbatim|sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L60>,
  <hlink|<verbatim|Accent.crystal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L13-L19>,
  <hlink|<verbatim|Accent.quality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L29-L35>.

  <subsection|D. Gaussian polynomial calculus><label|d-gaussian-polynomial-calculus>

  <strong|Conventions.>

  <\itemize-minus>
    <item><math|\<bbb-C\><around|[|X|]>=\<bbb-C\><around|[|X<rsub|v>:v\<in\>V|]>>.
    The variable set <math|V> need not be finite; each polynomial uses
    finitely many variables.

    <item><math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>> is the sum of the
    absolute values of the coefficients of <math|p>.

    <item>For <math|b\<in\>\<bbb-C\><rsup|V>>, <math|\<partial\><rsub|b>> is
    the derivation with <math|\<partial\><rsub|b>*X<rsub|v>=b<rsub|v>>.

    <item>A <em|covariance> is a symmetric
    <math|Q:V\<times\>V\<to\>\<bbb-C\>>; no positivity is assumed.

    <item><math|\<pi\><around|(|B,d|)>=<around|(|2*B*<around|(|d+1|)>|)><rsup|d>>.
  </itemize-minus>

  <strong|Proposition II.2.10 (algebraic Gaussian expectations).> Let
  <math|Q> be a covariance. The operators
  <math|X<rsub|v>+\<partial\><rsub|Q<rsub|v\<cdot\>>>> on
  <math|\<bbb-C\><around|[|X|]>> commute; define
  <math|\<cal-G\><rsub|Q>*p=p*<around|(|X+\<partial\><rsub|Q>|)>*<space|0.17em>1>.

  (a) <math|\<cal-G\><rsub|Q>> satisfies:

  <\itemize-minus>
    <item><math|\<cal-G\><rsub|Q>*1=1> and
    <math|\<cal-G\><rsub|Q>*<around|(|X<rsub|v>*p|)>=X<rsub|v>*<space|0.17em>\<cal-G\><rsub|Q>*p+\<partial\><rsub|Q<rsub|v\<cdot\>>>*\<cal-G\><rsub|Q>*p>;

    <item><math|\<cal-G\><rsub|0>=<math-up|id>> and
    <math|\<cal-G\><rsub|P>*\<cal-G\><rsub|Q>=\<cal-G\><rsub|P+Q>>;

    <item><math|\<partial\><rsub|b>*\<cal-G\><rsub|Q>=\<cal-G\><rsub|Q>*\<partial\><rsub|b>>.
  </itemize-minus>

  (Equivalently <math|\<cal-G\><rsub|Q>=exp
  <around|(|<tfrac|1|2><big|sum><rsub|v,w>Q<rsub|v*w>*\<partial\><rsub|v>*\<partial\><rsub|w>|)>>,
  so <math|\<cal-G\><rsub|-M>> is Wick ordering with respect to <math|M>. On
  each polynomial the derivative sum and exponential series have only
  finitely many nonzero terms.)

  (b) For <math|m\<in\>\<bbb-C\><rsup|V>> put
  <math|\<bbb-E\><rsub|Q,m><around|(|p|)>=<around|(|\<cal-G\><rsub|Q>*p|)><around|(|m|)>>.
  This is a linear functional with <math|\<bbb-E\><rsub|Q,m><around|(|1|)>=1>,
  and it satisfies, for every finite set <math|s> and choice of variables
  <math|z<rsub|j>>, the Wick recursion

  <\equation*>
    \<bbb-E\><rsub|Q,m>*<around*|(|X<rsub|v>*<big|prod><rsub|j\<in\>s>X<rsub|z<rsub|j>>|)>=m<rsub|v>*<space|0.17em>\<bbb-E\><rsub|Q,m><around*|(|<big|prod><rsub|j\<in\>s>X<rsub|z<rsub|j>>|)>+<big|sum><rsub|j\<in\>s>Q<rsub|v*z<rsub|j>>*<space|0.17em>\<bbb-E\><rsub|Q,m><around*|(|<big|prod><rsub|k\<in\>s\<setminus\><around|{|j|}>>X<rsub|z<rsub|k>>|)>.
  </equation*>

  (c) <em|Change of variables.> For a matrix
  <math|A=<around|(|A<rsub|v*z>|)>> with finitely supported rows, define the
  linear substitution <math|p\<mapsto\>p\<circ\>A> by
  <math|X<rsub|v>\<mapsto\><big|sum><rsub|z>A<rsub|v*z>*X<rsub|z>>. If
  <math|Q> is a covariance and <math|m> a mean on the new variables, then:

  <\itemize-minus>
    <item><math|\<cal-G\><rsub|Q>*<around|(|p\<circ\>A|)>=<around|(|\<cal-G\><rsub|A*Q*A<rsup|T>>*p|)>\<circ\>A>;

    <item><math|\<bbb-E\><rsub|Q,m>*<around|(|p\<circ\>A|)>=\<bbb-E\><rsub|A*Q*A<rsup|T>,A*m><around|(|p|)>>.
  </itemize-minus>

  (d) <em|Identification.> Let <math|\<xi\>> be a random vector in
  <math|\<bbb-R\><rsup|V>> under a probability measure. Assume all polynomial
  moments of <math|\<xi\>> are finite and
  <math|\<bbb-E\>*<around|[|\<xi\><rsub|v>*<space|0.17em>q<around|(|\<xi\>|)>|]>=\<bbb-E\><around|[|<around|(|\<partial\><rsub|Q<rsub|v\<cdot\>>>*q|)><around|(|\<xi\>|)>|]>>
  for every polynomial <math|q> (Gaussian integration by parts). Then
  <math|\<bbb-E\>*<around|[|q*<around|(|m+\<xi\>|)>|]>=\<bbb-E\><rsub|Q,m><around|(|q|)>>
  for every <math|m\<in\>\<bbb-R\><rsup|V>>.

  (e) <em|Bounds.> Let <math|B\<geqslant\>1>,
  <math|<around|\||m<rsub|v>|\|>\<leqslant\>B>,
  <math|<around|\||Q<rsub|v*w>|\|>\<leqslant\>B> and <math|deg
  p\<leqslant\>d>. Then

  <\equation*>
    <around|\||\<bbb-E\><rsub|Q,m><around|(|p|)>|\|>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>\<pi\><around|(|B,d|)>.
  </equation*>

  If <math|<around|(|Q<rprime|'>,m<rprime|'>|)>> obeys the same bounds and
  each corresponding entry of the means and covariances differs by at most
  <math|E\<geqslant\>0>, then <math|<around|\||\<bbb-E\><rsub|Q,m><around|(|p|)>-\<bbb-E\><rsub|Q<rprime|'>,m<rprime|'>><around|(|p|)>|\|>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>E*<space|0.17em>\<pi\><around|(|B,d|)>>.
  In the first bound, and in the second when <math|m=m<rprime|'>>, it
  suffices to assume the hypotheses for entries indexed by the variables of
  <math|p>.

  <em|Status:> theorem. Used by III.11 and VII.6. <em|Lean:>
  <hlink|<verbatim|Normal.Symmetric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L21-L23>,
  <hlink|<verbatim|slit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L40>,
  <hlink|<verbatim|cream_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L64-L65>,
  <hlink|<verbatim|milk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L77>,
  <hlink|<verbatim|feeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L82>,
  <hlink|<verbatim|skims>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L83-L88>,
  <hlink|<verbatim|froze>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L89-L94>,
  <hlink|<verbatim|warms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L96-L102>,
  <hlink|<verbatim|blend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L106>,
  <hlink|<verbatim|spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L31-L35>,
  <hlink|<verbatim|prepared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L76-L81>,
  <hlink|<verbatim|wets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L83-L84>,
  <hlink|<verbatim|VMeasure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L21-L25>,
  <hlink|<verbatim|payment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L61-L78>,
  <hlink|<verbatim|Common.priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L36>,
  <hlink|<verbatim|Common.width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L121-L123>,
  <hlink|<verbatim|Common.differs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126>,
  <hlink|<verbatim|Tapes.bound_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L44>,
  <hlink|<verbatim|Tapes.differently>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L36-L43>.

  <strong|Proposition II.2.11 (estimates for Gaussian polynomial steps).> All
  polynomial degrees below are total degrees.

  (a) <em|Weighted coefficient norms.> For <math|w:V\<to\>\<bbb-N\>> and
  <math|r\<geqslant\>0>, the quantity <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|w,r>=<big|sum><rsub|\<alpha\>>r<rsup|w\<cdot\>\<alpha\>><around|\||c<rsub|\<alpha\>>|\|>>
  is submultiplicative, and <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|1>=<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|0,1>>.
  It is a norm when <math|r\<gtr\>0> and may be a seminorm at <math|r=0>. For
  a linear substitution <math|X<rsub|v>\<mapsto\>e<rsub|v>> with
  <math|<around|\<\|\|\>|e<rsub|v>|\<\|\|\>><rsub|w,r>\<leqslant\>c> and
  <math|c\<geqslant\>1>,

  <\equation*>
    <around|\<\|\|\>|p\<circ\>e|\<\|\|\>><rsub|w,r>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>c<rsup|deg
    p>.
  </equation*>

  (b) <em|Smoothing near the identity.> If
  <math|0\<leqslant\>e\<leqslant\>1>, <math|<around|\||Q<rsub|v*w>|\|>\<leqslant\>e>
  and <math|deg p\<leqslant\>D>, then <math|<around|\<\|\|\>|\<cal-G\><rsub|Q>*p-p|\<\|\|\>><rsub|1>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>e*<space|0.17em><around|(|2*<around|(|D+2|)>|)><rsup|D>>
  and <math|deg \<cal-G\><rsub|Q>*p\<leqslant\>D>.

  (c) <em|One step.> Let <math|T<rsub|H,Q>*p=<around|(|\<cal-G\><rsub|Q>*p|)>\<circ\>H>,
  where <math|H=<around|(|H<rsub|v>|)>> are linear forms in new variables and
  <math|Q> is a covariance.

  <\itemize-minus>
    <item>If <math|C\<geqslant\>1>, <math|<around|\<\|\|\>|H<rsub|v>|\<\|\|\>><rsub|1>\<leqslant\>C>,
    <math|<around|\||Q<rsub|v*w>|\|>\<leqslant\>C> and <math|deg
    p\<leqslant\>d>, then <math|<around|\<\|\|\>|T<rsub|H,Q>*p|\<\|\|\>><rsub|1>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<around|(|2*<around|(|d+2|)>*C|)><rsup|d>>
    and <math|deg T<rsub|H,Q>*p\<leqslant\>d>.

    <item>For two such pairs, assume <math|\<varepsilon\>\<geqslant\>0>,
    <math|<around|\<\|\|\>|H<rsub|v>-H<rprime|'><rsub|v>|\<\|\|\>><rsub|1>\<leqslant\>\<varepsilon\>>
    and <math|<around|\||Q<rsub|v*w>-Q<rprime|'><rsub|v*w>|\|>\<leqslant\>\<varepsilon\>>.
    The difference bound is <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>\<varepsilon\>*<space|0.17em><around|(|2*<around|(|d+2|)>*C|)><rsup|d>>
    (<hlink|<verbatim|crossing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L125-L126>).

    <item>If <math|Q> vanishes between the variables of <math|P> and those of
    <math|R>, then <math|T<rsub|H,Q>*<around|(|P*R|)>=T<rsub|H,Q><around|(|P|)>*<space|0.17em>T<rsub|H,Q><around|(|R|)>>.
  </itemize-minus>

  (d) <em|Linearization of a rescaled substitution.> Let:

  <\itemize-minus>
    <item><math|f<rsub|v>> be linear forms and <math|A<rsub|v>> polynomials
    with no terms of degree <math|\<less\>2>, with
    <math|<around|\<\|\|\>|f<rsub|v>|\<\|\|\>><rsub|1>,<around|\<\|\|\>|A<rsub|v>|\<\|\|\>><rsub|1>\<leqslant\>B>
    and <math|B\<geqslant\>1>;

    <item><math|0\<less\>t\<leqslant\>1>, and <math|\<Phi\><rsub|t>> the
    algebra map <math|X<rsub|v>\<mapsto\>f<rsub|v>+t<rsup|-1>*A<rsub|v>*<around|(|t*X|)>>;

    <item><math|K> is a covariance, <math|0\<leqslant\>\<varepsilon\>\<leqslant\>1>,
    <math|<around|\||K<rsub|v*w>|\|>\<leqslant\>\<varepsilon\>> and <math|deg
    P\<leqslant\>n>.
  </itemize-minus>

  Then

  <\equation*>
    <mid|\|>\<Phi\><rsub|t><around|(|P|)>-<around|(|\<cal-G\><rsub|K>*P|)>\<circ\>f<mid|\|><rsub|1>\<leqslant\><around|\<\|\|\>|P|\<\|\|\>><rsub|1>*<around*|(|n*<space|0.17em>t*B*<around|(|2*B|)><rsup|n>+\<varepsilon\>*<around|(|2*<around|(|n+2|)>|)><rsup|n>*B<rsup|n>|)>.
  </equation*>

  (e) <em|Guards and second moments.> Call <math|g> an
  <strong|<math|\<eta\>>-guard> for <math|\<mu\>> if <math|g> is measurable,
  <math|0\<leqslant\>g\<leqslant\>1>, and
  <math|<big|int><around|(|1-g|)>*<space|0.17em>d*\<mu\>\<leqslant\>\<eta\>>.

  <\itemize-minus>
    <item>For a finite measure <math|\<mu\>>, the product of an
    <math|\<eta\>>-guard and an <math|\<varepsilon\>>-guard is an
    <math|<around|(|\<eta\>+\<varepsilon\>|)>>-guard.

    <item>For a probability measure, measurable <math|f> with integrable
    <math|<around|\||f|\|><rsup|2>> and <math|<big|int><around|\||f|\|><rsup|2>*d*\<mu\>\<leqslant\>B>,
    and an <math|\<eta\>>-guard <math|g>:
    <math|<mid|\|><big|int>g*f*<space|0.17em>d*\<mu\>-<big|int>f*<space|0.17em>d*\<mu\><mid|\|>\<leqslant\>\<varepsilon\><rprime|'>*B+\<eta\>/\<varepsilon\><rprime|'>>
    for every <math|\<varepsilon\><rprime|'>\<gtr\>0>.

    <item>Under II.2.10(d), if <math|deg p\<leqslant\>d>,
    <math|B\<geqslant\>1> and <math|<around|\||m<rsub|v>|\|>,<around|\||Q<rsub|v*w>|\|>\<leqslant\>B>
    on the variables of <math|p>, then <math|<around|\||p*<around|(|m+\<xi\>|)>|\|><rsup|2>>
    is integrable and <math|<big|int><around|\||p*<around|(|m+\<xi\>|)>|\|><rsup|2>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1><rsup|2>*<space|0.17em>\<pi\><around|(|B,2*d|)>>.
  </itemize-minus>

  (f) <em|Coefficients from values.>

  <\itemize-minus>
    <item>For finite <math|V>, <math|d\<in\>\<bbb-N\>> and
    <math|\<varepsilon\>\<gtr\>0>, there are a finite nonempty set
    <math|T\<subseteq\><around|[|-\<varepsilon\>,\<varepsilon\>|]><rsup|V>>
    and <math|C\<geqslant\>0> such that <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>\<leqslant\>C*max<rsub|x\<in\>T><around|\||p<around|(|x|)>|\|>>
    for all <math|p> of degree <math|\<leqslant\>d>.

    <item>A polynomial is determined by its values on a real cube of positive
    side length.

    <item>If <math|deg p\<leqslant\>D>, <math|B\<geqslant\>1>,
    <math|v,w\<in\>\<bbb-R\><rsup|V>>, <math|\<delta\>\<geqslant\>0>,
    <math|<around|\||v<rsub|i>|\|>,<around|\||w<rsub|i>|\|>\<leqslant\>B> and
    <math|<around|\||v<rsub|i>-w<rsub|i>|\|>\<leqslant\>\<delta\>>, then
    <math|<around|\||p<around|(|v|)>-p<around|(|w|)>|\|>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>D*B<rsup|D>*\<delta\>>.
  </itemize-minus>

  <em|Status:> theorem. Used by III.11 and VII.6. <em|Lean:>
  <hlink|<verbatim|Rise.cents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L13>,
  <hlink|<verbatim|Rise.funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L33-L37>,
  <hlink|<verbatim|Rise.rise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L51-L66>,
  <hlink|<verbatim|LiftMark.bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L79-L96>,
  <hlink|<verbatim|Normal.pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L113>,
  <hlink|<verbatim|Tapes.Valve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L14-L16>,
  <hlink|<verbatim|Valve.Fair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L20-L23>,
  <hlink|<verbatim|crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L37>,
  <hlink|<verbatim|crux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L119-L124>,
  <hlink|<verbatim|bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Crust.lean#L59>,
  <hlink|<verbatim|LiftMark.garnish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L29-L30>,
  <hlink|<verbatim|LiftMark.stock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L66-L84>,
  <hlink|<verbatim|Guarded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L69-L73>,
  <hlink|<verbatim|guards_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L79-L88>,
  <hlink|<verbatim|escaped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L108-L125>,
  <hlink|<verbatim|squareFits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L90-L105>,
  <hlink|<verbatim|Spindle.molds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L56-L81>,
  <hlink|<verbatim|Spindle.listen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L22-L28>,
  <hlink|<verbatim|Spindle.amove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L20-L41>.

  <subsection|E. Numbers><label|e-numbers>

  <strong|Proposition II.2.12 (scale functions).> For <math|s\<gtr\>e> put

  <\equation*>
    y=log log s,<space|1em>\<Pi\>=e<rsup|y<rsup|2>>,<space|1em>\<theta\>=s<rsup|-1/2>*\<Pi\>,<space|1em>h=e<rsup|y<rsup|3/2>>,<space|1em>j=h<rsup|1/5>,<space|1em>\<omega\>=e<rsup|-<frac|7|10>*j>,<space|1em>M=<around|\<lceil\>|<around|(|log
    s|)><rsup|2>|\<rceil\>>,<space|1em>W=M<rsup|2>,
  </equation*>

  all as functions of <math|s>. Here <math|\<theta\>> is the original
  small-field threshold. Then:

  <\enumerate>
    <item>For every <math|b\<in\>\<bbb-R\>> and <math|p\<gtr\>0>, eventually
    <math|\<Pi\><around|(|s|)><rsup|b>\<leqslant\>s<rsup|p>>.

    <item>Eventually <math|s*\<theta\><rsup|2>=\<Pi\><rsup|2>>,
    <math|s*\<theta\><rsup|3>\<leqslant\>1>,
    <math|s*\<theta\><rsup|4>\<leqslant\>1>, and
    <math|2*\<Pi\><rsup|v>*\<theta\><rsup|2>\<leqslant\>1> for every
    <math|v\<leqslant\>1>.

    <item>For all <math|a\<gtr\>0>, <math|k\<in\>\<bbb-N\>> and
    <math|c\<in\>\<bbb-R\>>, eventually:

    <\itemize-minus>
      <item><math|W<around|(|s|)><rsup|k>\<leqslant\>\<Pi\><around|(|s|)><rsup|a>>
      and <math|h<around|(|s|)>\<leqslant\>\<Pi\><around|(|s|)><rsup|a>>;

      <item><math|c*log W<around|(|s|)>\<leqslant\>a*<space|0.17em>y<around|(|s|)><rsup|2>>;

      <item><math|y<around|(|s|)><rsup|2>\<leqslant\>a*<space|0.17em>W*<around|(|s/2|)>>
      and <math|y<around|(|s|)><rsup|2>\<leqslant\>a*<space|0.17em>j*<around|(|s/2|)>>;

      <item><math|j<around|(|s|)>\<leqslant\>h*<around|(|s/2|)>> and
      <math|y<around|(|s|)>\<leqslant\>y*<around|(|s/2|)>+1>.
    </itemize-minus>

    <item>For every <math|c\<in\>\<bbb-R\>> and <math|a\<less\>b>,
    <math|c*<space|0.17em>\<Pi\><rsup|a>\<leqslant\>\<Pi\><rsup|b>>
    eventually.
  </enumerate>

  Here <math|f\<ll\>g> means <math|f/g\<to\>0> as <math|s\<to\>\<infty\>>.
  For every fixed <math|a,p\<gtr\>0>, <math|y<rsup|2>\<ll\>j\<ll\>h\<ll\>\<Pi\><rsup|a>\<ll\>s<rsup|p>>;
  also <math|W<around|(|s|)>\<sim\><around|(|log s|)><rsup|4>>.

  <em|Status:> theorem. Item 2 is used in III.10, III.11 and V.2 (the
  per-site vacuum-energy bound <hlink|<verbatim|treasury_stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L115-L150>);
  item 3 is used in III.11. <em|Lean:> <hlink|<verbatim|Numbers.monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L67-L69>,
  <hlink|<verbatim|Hat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L71>,
  <hlink|<verbatim|P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72>,
  <hlink|<verbatim|theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L73>,
  <hlink|<verbatim|cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L74-L78>,
  <hlink|<verbatim|uniform_loop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L83-L108>,
  <hlink|<verbatim|Perch.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25>,
  <hlink|<verbatim|walls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L28>,
  <hlink|<verbatim|hot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L30>,
  <hlink|<verbatim|join>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L31>,
  <hlink|<verbatim|w>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L32>,
  <hlink|<verbatim|logspan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L59-L69>,
  <hlink|<verbatim|rate_wall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L71-L90>,
  <hlink|<verbatim|rate_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L94-L108>,
  <hlink|<verbatim|rate_fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L110-L122>,
  <hlink|<verbatim|fire_stretch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L127-L137>,
  <hlink|<verbatim|Spindle.hotter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L127-L134>,
  <hlink|<verbatim|Paint.q_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/NoSpill.lean#L98-L101>,
  <hlink|<verbatim|Glimmer.transports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L34-L36>.

  <strong|Proposition II.2.13 (numerical conditions for the rank
  comparison).> Use the scales of II.2.12, and write
  <math|\<Pi\>=\<Pi\><around|(|s|)>>, <math|y=y<around|(|s|)>> in formulas
  involving both <math|s> and <math|u>.

  (a) <em|Shelf conditions.> Fix <math|m,Q\<in\>\<bbb-N\>>,
  <math|e,U,V\<geqslant\>0> and <math|a\<gtr\>0>. Put
  <math|A<rsub|Q>=<around|(|2*Q+1|)><rsup|4>> and
  <math|G<around|(|u|)>=e<rsup|-a*h<around|(|u|)><rsup|2>>>. For all
  sufficiently large <math|s>, the following ten inequalities hold
  simultaneously for every <math|u\<in\><around|[|s/2,s|]>>:

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|8>|<cell|\<leqslant\>W<around|(|u|)>,>>|<row|<cell|W<around|(|u|)><rsup|2>+2*Q*W<around|(|u|)>>|<cell|\<leqslant\>M<around|(|s|)><rsup|10>,>>|<row|<cell|64*<around|(|m*U+1|)>*y<rsup|2>>|<cell|\<leqslant\>W<around|(|u|)>,>>|<row|<cell|64*<around|(|m*U+4\<cdot\>2<rsup|m>|)>*y<rsup|2>>|<cell|\<leqslant\>W<around|(|u|)>,>>|<row|<cell|2<rsup|m>*\<Pi\><rsup|-25/32>+\<Pi\><rsup|-1>+\<Pi\><rsup|-2>>|<cell|\<leqslant\>\<Pi\><rsup|-3/4>,>>|<row|<cell|e<rsup|m*U*y<rsup|2>+4\<cdot\>2<rsup|m>
      y<rsup|2>+2*j<around|(|u|)>>*G<around|(|u|)>+2<rsup|m>*\<Pi\><rsup|-3>>|<cell|\<leqslant\>\<Pi\><rsup|-1>,>>|<row|<cell|<around|(|2*W<around|(|u|)>+1|)><rsup|4>*\<Pi\><rsup|-1>>|<cell|\<leqslant\>1,>>|<row|<cell|e<rsup|e*A<rsub|Q>>*\<Pi\><rsup|1/8>*\<Pi\><rsup|-31/32>>|<cell|\<leqslant\>\<Pi\><rsup|-25/32>,>>|<row|<cell|e<rsup|<around|(|e+1|)>*A<rsub|Q>>*\<Pi\><rsup|1/8>*\<Pi\><rsup|1/4>>|<cell|\<leqslant\>\<Pi\>,>>|<row|<cell|e<rsup|-2*j<around|(|u|)>>*<around|(|e<rsup|\<Pi\><rsup|-1>>-1|)>>|<cell|\<leqslant\>\<Pi\><rsup|-3/4>*\<omega\><around|(|u|)>.>>>>
    </aligned>
  </equation*>

  The fifth line uses <math|e<rsup|m*V*y<rsup|2>>*\<Pi\><rsup|-m*V-2>=\<Pi\><rsup|-2>>.
  The seventh is the geometric hypothesis of II.2.6 with cover size
  <math|W<around|(|u|)>> and hit bound <math|\<Pi\><rsup|-1>>.

  (b) <em|Tally conditions.> For the same data, fix
  <math|\<alpha\>\<geqslant\>1> and <math|L\<gtr\>1>, and put

  <\equation*>
    n<around|(|L,s|)>=<around*|\<lceil\>|<frac|10*log M<around|(|s|)>|log
    L>|\<rceil\>>.
  </equation*>

  For all sufficiently large <math|s>,

  <\equation*>
    <around|(|\<alpha\>+1|)><rsup|n<around|(|L,s|)>>*\<Pi\><around|(|s|)><rsup|-3/4>\<leqslant\>\<Pi\><around|(|s|)><rsup|-1/2>,
  </equation*>

  and (a) holds for every <math|u\<in\><around|[|s/2,s|]>>. Moreover,

  <\equation*>
    G<around|(|u|)>\<leqslant\>\<Pi\><around|(|s|)><rsup|-3/4>*\<omega\><around|(|v|)><space|2em><around|(|u,v\<in\><around|[|s/2,s|]>|)>.
  </equation*>

  (c) <em|Gaussian prices.> For <math|k,n\<in\>\<bbb-N\>>, set
  <math|\<phi\>=1/<around|(|4*<around|(|n*k+k+1|)>|)>>. For every fixed
  <math|A\<geqslant\>1>, eventually in <math|s>,

  <\equation*>
    n*\<Pi\><rsup|-2>*<around|(|A+\<Pi\><rsup|-2>|)><rsup|n>*\<pi\><around|(|\<Pi\><rsup|\<phi\>>,n*k|)>+A<rsup|n>*\<Pi\><rsup|-2>*\<pi\><around|(|\<Pi\><rsup|\<phi\>>,n*k|)>\<leqslant\>\<Pi\><rsup|-3/2>.
  </equation*>

  Thus the error parameters <math|\<xi\>=\<Pi\><rsup|-2>>, covariance error
  <math|\<Pi\><rsup|-2>>, mean and covariance bound
  <math|\<Pi\><rsup|\<phi\>>>, and reference norm bound <math|A> satisfy the
  polynomial comparison condition with error <math|\<Pi\><rsup|-3/2>>.

  (d) <em|Iteration parameters.> A parameter record consists of an era
  <math|<around|(|Q,e,U,V,a,\<alpha\>|)>> as above, integers
  <math|t,g,H<rsub|0>\<geqslant\>0>, and real numbers <math|b,c,f,F,K>
  satisfying

  <\equation*>
    c\<geqslant\>1,<space|1em>K\<geqslant\>1,<space|1em>F\<geqslant\>0,<space|1em>f+c\<leqslant\>-8,<space|1em>g\<geqslant\>6,<space|1em>U=V,<space|1em>f=<tfrac|1|16>-U,<space|1em>2*V+2\<leqslant\>g-1.
  </equation*>

  Here <math|t> is the Taylor order, <math|g> the target order,
  <math|H<rsub|0>> a support parameter, <math|b> an exponent, <math|c> a
  coefficient exponent, and <math|F> an error exponent. Write
  <math|C<rsub|d>=<around|(|2*<around|(|d+2|)>*K|)><rsup|d>>. At scale
  <math|s> and integer height <math|H>, the iteration conditions are

  <\equation*>
    <around|(|\<alpha\>+2|)><rsup|H>\<leqslant\>\<Pi\>,<space|2em>C<rsub|t><rsup|H>\<leqslant\>\<Pi\>,<space|2em>C<rsub|2*t><rsup|H>\<leqslant\>\<Pi\>,<space|2em>\<Pi\><rsup|2*c+1>+\<Pi\><rsup|2*c+2>\<leqslant\>\<Pi\><rsup|2*c+3>,<space|2em>H\<leqslant\>\<Pi\>.
  </equation*>

  They imply, for every integer <math|0\<leqslant\>r\<leqslant\>H>,

  <\equation*>
    <around|(|\<alpha\>+2|)><rsup|r>*\<Pi\><rsup|-g>\<leqslant\>\<Pi\><rsup|1-g>\<leqslant\>\<Pi\><rsup|-4>.
  </equation*>

  For <math|b\<geqslant\>0>, the block-size conditions

  <\equation*>
    L\<gtr\>1,<space|2em>log L\<geqslant\>2*<around|(|b+2|)>*log
    q*<space|1em><around|(|q\<in\><around|{|\<alpha\>+2,C<rsub|t>,C<rsub|2*t>|}>|)>
  </equation*>

  hold for all sufficiently large <math|L>. For any such fixed <math|L>, the
  iteration conditions hold for all sufficiently large <math|s> at height

  <\equation*>
    H<around|(|L,s|)>=<around*|\<lceil\>|<frac|<around|(|b+2|)>*y<around|(|s|)><rsup|2>|log
    L>|\<rceil\>>
  </equation*>

  (<hlink|<verbatim|racetrack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L56-L61>).

  (e) <em|Moment and fusion errors.> Define
  <math|R<rsub|Q><around|(|z|)>=e<rsup|z*A<rsub|Q>>> and the following
  polynomial error function. For <math|B,\<varepsilon\>,w\<geqslant\>0> and
  <math|D\<in\>\<bbb-N\>>, put

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|q<rsub|0>>|<cell|=w*\<pi\><around|(|B,D|)>,>|<cell|d<rsub|0>>|<cell|=w*D*B<rsup|D>
      \<varepsilon\>,>>|<row|<cell|q<rsub|1>>|<cell|=d<rsub|0>+\<varepsilon\>*w<rsup|2>*\<pi\><around|(|B,2*D|)>+\<varepsilon\>+w*\<varepsilon\>*\<pi\><around|(|B,D|)>,>|<cell|>|<cell|>>|<row|<cell|q<rsub|2>>|<cell|=2*q<rsub|0>*d<rsub|0>+\<varepsilon\>*w<rsup|4>*\<pi\><around|(|B,4*D|)>+2*\<varepsilon\>+w<rsup|2>*\<varepsilon\>*\<pi\><around|(|B,2*D|)>,>|<cell|>|<cell|>>|<row|<cell|\<cal-Q\><around|(|B,\<varepsilon\>,w,D|)>>|<cell|=q<rsub|1>+q<rsub|2>+<around|(|q<rsub|0>+q<rsub|1>|)>*q<rsub|1>+q<rsub|1>*q<rsub|0>.>|<cell|>|<cell|>>>>
    </aligned>
  </equation*>

  For a parameter record in (d), set <math|\<tau\><around|(|s|)>=3*h<around|(|s|)>>.
  The remaining numerical conditions are

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|1\<leqslant\>\<tau\><around|(|s|)>>|<cell|\<leqslant\>\<Pi\>-1,>|<cell|\<pi\><around|(|\<tau\><around|(|s|)>,2*t|)>>|<cell|\<leqslant\>\<Pi\>,>>|<row|<cell|K*\<pi\><around|(|\<tau\><around|(|s|)>,1|)>>|<cell|\<leqslant\>\<Pi\>,>|<cell|K+\<Pi\><rsup|-F>>|<cell|\<leqslant\>\<Pi\>,>>|<row|<cell|4*R<rsub|Q>*<around|(|e+2|)>*\<Pi\><rsup|-6>>|<cell|\<leqslant\>\<Pi\><rsup|-4>,>|<cell|>|<cell|>>|<row|<cell|4*R<rsub|Q>*<around|(|e+2|)>*\<cal-Q\><around|(|\<Pi\>,\<Pi\><rsup|-F>,\<Pi\><rsup|2*c+3>,2*t|)>>|<cell|\<leqslant\>\<Pi\><rsup|-g>.>|<cell|>|<cell|>>>>
    </aligned>
  </equation*>

  For every <math|u\<in\><around|[|s/2,s|]>> they also require

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|\<tau\><around|(|u|)>>|<cell|\<leqslant\>\<tau\><around|(|s|)>,>|<cell|>|<cell|>>|<row|<cell|G<around|(|u|)>+2*\<Pi\><rsup|-2>*R<rsub|Q>*<around|(|e+3|)>>|<cell|\<leqslant\>\<Pi\><rsup|-1>,>|<cell|>|<cell|>>|<row|<cell|<around|(|2*W<around|(|u|)>+1|)><rsup|4>*\<Pi\><rsup|-1>>|<cell|\<leqslant\>1,>|<cell|e<rsup|\<Pi\><rsup|-1>>-1>|<cell|\<leqslant\>1.>>>>
    </aligned>
  </equation*>

  In the second line, <math|G<around|(|u|)>=e<rsup|a*h<around|(|u|)><rsup|2>>*G<around|(|u|)><rsup|2>>,
  as in the source definition. All these conditions hold for sufficiently
  large <math|s> whenever

  <\equation*>
    g+10*Z+10\<leqslant\>F,<space|2em>Z=2*c+8*t+13
  </equation*>

  (<hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Purchased.lean#L49-L56>).

  <em|Status:> theorems and numerical definitions. The constants entering the
  block-size inequalities in (d) are fixed before <math|L>. The lower bound
  on <math|s> may depend on all the fixed parameters and on <math|L>.
  <em|Lean:> <hlink|<verbatim|Perch.Demand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L21-L31>,
  <hlink|<verbatim|Shelf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L39-L49>,
  <hlink|<verbatim|mint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L145-L158>,
  <hlink|<verbatim|Era>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L37-L40>,
  <hlink|<verbatim|Tally>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L55-L58>,
  <hlink|<verbatim|on_time>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L81-L89>,
  <hlink|<verbatim|Glimmer.fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L21>,
  <hlink|<verbatim|collected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L39-L62>,
  <hlink|<verbatim|shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L68-L69>,
  <hlink|<verbatim|Tapes.Purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L20-L38>,
  <hlink|<verbatim|Purse.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Joule.lean#L41>,
  <hlink|<verbatim|Racer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L64-L69>,
  <hlink|<verbatim|Racer.pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L113-L119>,
  <hlink|<verbatim|Faring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L92-L110>,
  <hlink|<verbatim|torque>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L61>,
  <hlink|<verbatim|Digits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L30-L35>,
  <hlink|<verbatim|pulse_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L41-L42>,
  <hlink|<verbatim|Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47>,
  <hlink|<verbatim|rentQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Canal.lean#L30>,
  <hlink|<verbatim|load>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean#L101>,
  <hlink|<verbatim|capZ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L38>,
  <hlink|<verbatim|defect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L39>,
  <hlink|<verbatim|grant\<#2081\>>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L51>,
  <hlink|<verbatim|grant\<#2082\>>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L52>,
  <hlink|<verbatim|grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L46-L49>,
  <hlink|<verbatim|Paint.trib>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Fleet.lean#L62>,
  <hlink|<verbatim|Station.more>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L38>,
  <hlink|<verbatim|Station.bump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L37>.

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|III.1, activity format.>

    <\itemize-minus>
      <item><hlink|<verbatim|Activities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66>
      consists of regular addresses (a site belonging to the support),
      <hlink|forced addresses|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L47>
      (support, inventory, extra test) and coefficient functions.

      <item><hlink|Eligibility|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L54-L55>
      of a forced address: support \<cap\> large-field set = inventory, and
      the extra test holds.

      <item><hlink|<verbatim|Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111>
      requires regularity and vanishing conditions for the regular
      coefficients, gauge invariance, measurability, final-field dependence
      and eligibility for the forced coefficients, affine covariance, and the
      prescribed regular and forced bounds. The K-bound <math|v> requires
      nonnegative envelopes <math|b<rsub|i>\<geqslant\>sup<rsub|U><around|\||K<rsub|i><around|(|U|)>|\|>>
      whose masses have a summable hit bound <math|v> at each site. The
      <hlink|gas|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129>
      sums products of forced coefficients over finite selections with
      disjoint supports and inventories whose union is exactly the
      large-field set.

      <item><hlink|<verbatim|SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>
      (nonnegative, summable, sum \<leqslant\> bound).

      <item><hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>
      (order, power, support exponent, cover size <math|B>, threshold).

      <item>The large-field set <hlink|<verbatim|flags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36>,
      <hlink|<verbatim|Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>,
      <hlink|<verbatim|UsesFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L84-L85>,
      <hlink|<verbatim|Dominated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/ActivityBounds.lean#L12-L13>.

      <item>II.2.8 uses this format; II.2.6 uses its notion of a nonnegative
      summable bound.
    </itemize-minus>

    <item><strong|I.1, lattice.> Sites, supports, separation,
    <hlink|<verbatim|halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44>,
    cover numbers, and the cardinality and intersecting-union bounds quoted
    at the head of Ÿ1. The digest condition also uses gauge invariance and
    lattice affine maps.

    <item><strong|Standard mathematics.>

    <\itemize-minus>
      <item>Polymer gases and the Mayer expansion; the Kotecký\UPreiss
      criterion and its inductive proof (R. Kotecký, D. Preiss, <em|Comm.
      Math. Phys.> 103 (1986); R. L. Dobrushin, <em|AMS Transl.> 177 (1996));
      D. Brydges, <em|A short course on cluster expansions> (Les Houches
      1984); Glimm\UJaffe, <em|Quantum Physics>, cluster expansions.

      <item>Cover-number (connected block-count) weights for polymers in the
      style of Baªaban's renormalization-group papers.

      <item>Exponential and logarithm on the nilpotent ideal of a commutative
      algebra. Connected parts as logarithms of generating functions; Möbius
      inversion on the Boolean lattice (G.-C. Rota 1964) for the triangular
      inversion in II.2.9.

      <item>Gaussian integration by parts, Wick recursion and Wick ordering
      (Glimm\UJaffe; B. Simon, <em|The <math|P<around|(|\<varphi\>|)><rsub|2>>
      Euclidean (Quantum) Field Theory>, Ch. I). Gaussian convolution
      <math|e<rsup|<frac|1|2>*\<Delta\><rsub|C>>> on polynomials in the
      renormalization group (D. Brydges, Park City lectures 2009;
      Brydges\USlade, <em|J. Stat. Phys.> 159 (2015)).

      <item>Equivalence of norms on finite-dimensional spaces (II.2.11(f)).
    </itemize-minus>

    <item><strong|Imported bounds and assumptions.>

    <\itemize-minus>
      <item>The tree bound needs <math|<around|(|2*M+1|)><rsup|4>*\<gamma\>\<leqslant\>1>
      and the exponent <math|a+1> in the hit condition. These are hypotheses
      of each application. In the rank comparison they come from II.2.13(a),
      (e) with <math|M=W<around|(|u|)>> and
      <math|\<gamma\>=\<Pi\><around|(|s|)><rsup|-1>>; in the fused gas, from
      the fusion bounds with <math|M=B> and exponent <math|e<rsub|P>+1>.

      <item>Fusion requires the digest and hit bounds in II.2.8. Their
      startup hypotheses are stated in III.9; their verification in every
      subsequent application belongs to the corresponding RG step.

      <item>Given one compatible set of stage parameters for each index, a
      sequence of numerical records can be chosen with common exponent
      <math|b\<geqslant\>d+6>, common Taylor order <math|t\<geqslant\>d>,
      common <math|f>, and coefficient exponents
      <math|c<rsub|i>\<geqslant\>b*d+d+2>. This is the parameter selection
      used in III.4 (<hlink|<verbatim|preSheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L91-L109>).
    </itemize-minus>
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Products of local activities are represented in a finite commutative
  algebra of square-zero markers. The allowed marker sets determine which
  products vanish. The exponential converts sums of nonconstant monomials
  into products, and a triangular correction constructs the unique connected
  polynomial whose exponential is a given polynomial with constant term
  <math|1>. The weighted <math|\<ell\><rsup|1>> norm controls these
  operations without a loss depending on the number of markers. Switching
  connects scalar functions of activity parameters to this algebra: for
  positive switch size <math|x>, coefficients are recovered from values at
  <math|0/x> configurations. A convergent model supplies their limit as
  <math|x*\<downarrow\>*0>, while a uniform majorant controls that limit. The
  relation <math|X<rsub|v><rsup|2>=x*X<rsub|v>> then becomes the square-zero
  relation.

  Connected-component decompositions reduce polymer sums to sums over packs
  attached to a support. A Kotecký\UPreiss induction bounds the latter by
  <math|e<rsup|<math-up|cov><rsub|M><around|(|Y|)>>>. Attaching
  <math|X<rsub|i>> costs <math|e<rsup|<math-up|cov><rsub|M><around|(|X<rsub|i>|)>>>,
  paid by the extra unit in the hit exponent <math|a+1>. The geometric input
  is <math|<around|\||Y|\|>\<leqslant\><around|(|2*M+1|)><rsup|4><math-up|cov><rsub|M><around|(|Y|)>>.
  For two interactions, mentions always connect, while walls connect only hot
  labels. Hotness is unchanged on restriction to a component, so the
  component decomposition can be recovered uniquely. The forced-activity
  fusion uses ordinary patch components; its density identity and bounds are
  proved in III.10.

  The Gaussian comparison in III.11 uses algebraic convolution on polynomials
  with complex symmetric covariances. Wick recursion gives coefficient-norm
  and moment bounds depending on the degree and entrywise bounds,
  independently of the number of variables. Gaussian integration by parts
  identifies this algebraic functional with an actual expectation when a
  measure is supplied. The numerical inequalities then absorb the errors and
  iteration losses. There are two iteration lengths:
  <math|n<around|(|L,s|)>=O<around|(|y<around|(|s|)>/log L|)>> and
  <math|H<around|(|L,s|)>=O<around|(|y<around|(|s|)><rsup|2>/log L|)>> at
  fixed <math|L>. The first gives losses <math|\<Pi\><around|(|s|)><rsup|o<around|(|1|)>>>;
  the second requires the explicit lower bounds on <math|L> in II.2.13(d).
  The constants in those block-size inequalities are chosen before <math|L>;
  all remaining constants must be fixed before the lower bound on <math|s> is
  chosen.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Marker algebra><label|41-marker-algebra>

  <strong|Lemma 4.1 (associativity).> <math|\<cal-A\><rsub|R>> is a
  commutative unital ring. <em|Sketch:>

  <\enumerate>
    <item>On basis elements, <math|<around|(|\<delta\><rsub|a>*\<delta\><rsub|b>|)>*\<delta\><rsub|c>\<neq\>0>
    iff <math|a,b,c> are pairwise disjoint and
    <math|a\<cup\>b\<cup\>c\<in\>R>.

    <item>This condition is symmetric in <math|a,b,c>. Downward closure
    ensures that both intermediate unions are allowed whenever the total
    union is allowed.

    <item>Extend by bilinearity.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Console.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean>.

  <strong|Lemma 4.2 (norm).> <math|<around|\<\|\|\>|a*b|\<\|\|\>><rsub|w>\<leqslant\><around|\<\|\|\>|a|\<\|\|\>><rsub|w><around|\<\|\|\>|b|\<\|\|\>><rsub|w>>.
  <em|Sketch:> <math|<around|\<\|\|\>|c*\<delta\><rsub|x>\<cdot\>c<rprime|'>*\<delta\><rsub|y>|\<\|\|\>><rsub|w>\<leqslant\>w<rsup|x><around|\||c|\|>*<space|0.17em>w<rsup|y><around|\||c<rprime|'>|\|>>,
  with equality when the product is nonzero, because
  <math|w<rsup|x\<cup\>y>=w<rsup|x>*w<rsup|y>> on disjoint unions. Expand
  <math|a,b> in the basis and use the triangle inequality. <em|Lean:>
  <hlink|<verbatim|binary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L124-L137>,
  <hlink|<verbatim|multiplication>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L139-L146>.

  <strong|Lemma 4.3 (nilpotency; norm of <math|<math-up|Exp>>).> If
  <math|a<around|(|\<emptyset\>|)>=0>, then <math|a<rsup|k>> vanishes on sets
  with fewer than <math|k> elements. For arbitrary <math|a>,
  <math|<around|\<\|\|\>|<math-up|Exp><around|(|a|)>|\<\|\|\>><rsub|w>\<leqslant\><big|sum><rsub|k\<leqslant\><around|\||V|\|>><around|\<\|\|\>|a|\<\|\|\>><rsub|w><rsup|k>/k!\<leqslant\>e<rsup|<around|\<\|\|\>|a|\<\|\|\>><rsub|w>>>.
  <em|Sketch:> in <math|a<rsup|k+1>=a<rsup|k>\<cdot\>a>, each factor <math|a>
  contributes a nonempty disjoint marker set (induction on <math|k>). The
  norm bound follows from Lemma 4.2. Summable families are handled by
  comparing with the sup norm (equivalent norms) for convergence, and by
  passing the triangle inequality to the limit for the bound. <em|Lean:>
  <hlink|<verbatim|high>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L22>,
  <hlink|<verbatim|pass_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L39-L46>,
  <hlink|<verbatim|budgeted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L51-L58>.

  <strong|Lemma 4.4 (additivity of <math|<math-up|Exp>>).> II.2.3(a)\U(b).
  <em|Sketch:>

  <\enumerate>
    <item>Apply the binomial theorem to <math|<around|(|a+b|)><rsup|n>/n!>.

    <item>Terms <math|a<rsup|i>*b<rsup|j>> with
    <math|i+j\<gtr\><around|\||V|\|>> vanish by Lemma 4.3, so the truncation
    at <math|<around|\||V|\|>> is consistent on both sides.

    <item>For (b): <math|<around|(|c*\<delta\><rsub|x>|)><rsup|2>=0> when
    <math|x\<neq\>\<emptyset\>>, and induction over <math|s>.
  </enumerate>

  A second proof, via the exponential of commuting nilpotent elements in
  Mathlib, is in <hlink|<verbatim|Trajectories.pass_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean>.
  <em|Lean:> <hlink|<verbatim|Exponential.pass_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L56-L88>,
  <hlink|<verbatim|Trajectories.pass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L124-L134>.

  <strong|Lemma 4.5 (logarithm by iteration).> II.2.3(c)\U(d). <em|Sketch:>
  say <math|u> vanishes below order <math|m> if <math|u<around|(|x|)>=0> for
  <math|<around|\||x|\|>\<less\>m>.

  <\enumerate>
    <item><strong|Key estimate.> If <math|c<around|(|\<emptyset\>|)>=0> and
    <math|u> vanishes below order <math|m\<geqslant\>1>, then
    <math|<math-up|Exp><around|(|c+u|)>-<math-up|Exp><around|(|c|)>-u=<around|(|<math-up|Exp><around|(|c|)>-1|)>*<space|0.17em>u+<math-up|Exp><around|(|c|)>*<space|0.17em><around|(|<math-up|Exp><around|(|u|)>-1-u|)>>
    vanishes below order <math|m+1>.

    <item><strong|Existence.> With <math|u=F-<math-up|Exp><around|(|C<rsub|k>|)>>,
    the key estimate gives that <math|F-<math-up|Exp><around|(|C<rsub|k+1>|)>>
    vanishes below order <math|k+2>. After <math|<around|\||V|\|>> steps it
    vanishes identically.

    <item><strong|Uniqueness.> For two solutions <math|C,D>, additivity gives
    <math|<math-up|Exp><around|(|C-D|)>=1>. If
    <math|<math-up|Exp><around|(|p|)>=1> and
    <math|p<around|(|\<emptyset\>|)>=0>, then
    <math|<math-up|Exp><around|(|p|)>> agrees with <math|1+p> one order
    beyond the vanishing order of <math|p>. So <math|p> vanishes to every
    order, i.e. <math|p=0>.

    <item><strong|(d)> follows from <math|<math-up|Exp><around|(|-C|)><space|0.17em><math-up|Exp><around|(|C|)>=1>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L130-L132>,
  <hlink|<verbatim|rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L133-L149>,
  <hlink|<verbatim|roll_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L151-L156>,
  <hlink|<verbatim|Expands.uniq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L161-L174>,
  <hlink|<verbatim|correct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L184-L185>.

  <strong|Lemma 4.6 (majorant arrays; first-order coefficients).>

  <\itemize-minus>
    <item>For nonnegative arrays <math|A,B> on <math|R> define the product
    <math|<around|(|A\<ast\>B|)><around|(|z|)>=<big|sum><rsub|x\<sqcup\>y=z>A<around|(|x|)>*B<around|(|y|)>>.
    Then <math|<around|\||a|\|>\<leqslant\>A> and
    <math|<around|\||b|\|>\<leqslant\>B> coefficientwise imply
    <math|<around|\||a*b|\|>\<leqslant\>A\<ast\>B>, and
    <math|<big|sum><rsub|z>w<rsup|z>*<around|(|A\<ast\>B|)><around|(|z|)>\<leqslant\><around|(|<big|sum>w<rsup|x>*A<around|(|x|)>|)><around|(|<big|sum>w<rsup|y>*B<around|(|y|)>|)>>.
    These are the uniform-in-configuration majorants used in III.8.

    <item>Every <math|p> decomposes as <math|p<around|(|\<emptyset\>|)>*1+<big|sum><rsub|v>p<around|(|<around|{|v|}>|)>*\<delta\><rsub|<around|{|v|}>>+(<text|terms
    of order>\<geqslant\>2)>.

    <item><math|<math-up|Exp><around|(|F|)>> and <math|F> have the same
    singleton coefficients when <math|F<around|(|\<emptyset\>|)>=0>.

    <item>For a finite family, singleton coefficients satisfy
  </itemize-minus>

  <\equation*>
    <around|(|<big|prod><rsub|i\<in\>s>a<rsub|i>|)><around|(|<around|{|v|}>|)>=<big|sum><rsub|i\<in\>s>a<rsub|i><around|(|<around|{|v|}>|)>*<big|prod><rsub|j\<in\>s\<setminus\><around|{|i|}>>a<rsub|j><around|(|\<emptyset\>|)>.
  </equation*>

  <em|Sketch:> apply the triangle inequality to each disjoint-union
  coefficient sum. The weights factor on each surviving product. Splitting
  coefficients by marker-set size gives the decomposition. A singleton can
  receive a nonempty marker set from only one factor; powers of order at
  least two therefore make no singleton contribution to the exponential.

  <em|Lean:> <hlink|<verbatim|Nil.combine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L79>,
  <hlink|<verbatim|merged_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L93-L109>,
  <hlink|<verbatim|Accent.ballots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L58-L62>,
  <hlink|<verbatim|whisper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L35-L40>,
  <hlink|<verbatim|shockProd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L29-L33>.

  <strong|Lemma 4.7 (repacking).> II.2.4(b). <em|Sketch:>

  <\enumerate>
    <item>Sum <math|<math-up|val>> fibrewise over the slot set
    <math|S=\<sigma\><around|(|s|)>>.

    <item>For admissible <math|S>, the selected sets in the fibre are in
    bijection with sections <math|S\<ni\>k\<mapsto\>i<rsub|k>\<in\>\<sigma\><rsup|-1><around|(|k|)>>.

    <item>The sum over sections of <math|<big|prod><rsub|k>F<rsub|i<rsub|k>>>
    is the limit over finite truncations of
    <math|<big|prod><rsub|k\<in\>S><big|sum><rsub|i\<in\>\<sigma\><rsup|-1><around|(|k|)>>F<rsub|i>>.

    <item>The majorant <math|<big|prod><rsub|i\<in\>s><around|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|w>>
    is summable over finite sets <math|s> because
    <math|<big|sum><rsub|i><around|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|w>\<less\>\<infty\>>.
    II.2.2 then gives summability of the algebra-valued terms.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Packets.repack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L114-L124>.

  <subsection|4.2 Components and the tree
  bound><label|42-components-and-the-tree-bound>

  <strong|Lemma 4.8 (components).> II.2.5. <em|Sketch:> "chained in <math|s>"
  is the reflexive\Utransitive closure of "supports meet" restricted to
  <math|s>. Its classes are the parts. A chain cannot leave a member of a
  family with disjoint supports, which gives item 2. For item 3, follow a
  chain from <math|j> to <math|i> and stop immediately before the first visit
  to <math|i>. <em|Lean:> <hlink|<verbatim|separates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L79-L101>,
  <hlink|<verbatim|excise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L103-L113>.

  <strong|Lemma 4.9 (root decomposition).> For finite
  <math|D\<subseteq\>\<iota\>> and a support <math|Y>, let
  <math|<math-up|film><around|(|D,Y|)>=<big|sum><big|prod><rsub|i\<in\>s>f<rsub|i>>,
  the sum over packs <math|s\<subseteq\>D> for <math|Y> (including
  <math|s=\<emptyset\>>). For <math|f\<geqslant\>0>,

  <\equation*>
    <math-up|film><around|(|D,Y|)>\<leqslant\><big|prod><rsub|i\<in\>D,X<rsub|i>\<cap\>Y\<neq\>\<emptyset\>><around*|(|1+f<rsub|i><space|0.17em><math-up|film><around|(|D\<setminus\><around|{|i|}>,X<rsub|i>|)>|)>.
  </equation*>

  <em|Sketch:>

  <\enumerate>
    <item>Each part of a pack contains a label meeting <math|Y> (II.2.5, item
    4). Fix one such label for each part, its <em|root>; distinct parts have
    distinct roots.

    <item>Removing the root from its part leaves a pack for
    <math|X<rsub|<math-up|root>>> inside <math|D\<setminus\><around|{|<math-up|root>|}>>
    (II.2.5, item 3).

    <item>The map <math|s\<mapsto\>> (for each candidate root: nothing, or
    the remainder of the part it roots) is injective, and the weight
    factorizes.

    <item>The right-hand side sums over all such assignments with nonnegative
    terms.
  </enumerate>

  No sum over cuts or orderings occurs, and no label is repeated inside a
  part. <em|Lean:> <hlink|<verbatim|Ac.pouch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L20>,
  <hlink|<verbatim|film>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L79>,
  <hlink|<verbatim|lookup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L81-L106>.

  <strong|Lemma 4.10 (cover number of a spark).> If <math|s> is a spark, then
  <math|<math-up|cov><rsub|M><around|(|X<around|(|s|)>|)>\<leqslant\><big|sum><rsub|i\<in\>s><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>.
  <em|Sketch:> enumerate <math|s> so that each new label meets the union of
  the previous ones (possible since <math|s> is connected), and use the
  intersecting-union bound from I.1 at each step. Subadditivity is not
  claimed for disjoint unions. <em|Lean:>
  <hlink|<verbatim|Ac.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82>.

  <strong|Lemma 4.11 (Kotecký\UPreiss induction).> Under the hypotheses of
  II.2.6, put <math|p<rsub|i>=f<rsub|i>*e<rsup|a<space|0.17em><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>>.
  Then for every finite <math|D> and every support <math|Y>,

  <\equation*>
    <math-up|film><rsub|p><around|(|D,Y|)>\<leqslant\>e<rsup|<math-up|cov><rsub|M><around|(|Y|)>>.
  </equation*>

  <em|Sketch:> strong induction on <math|D>. By Lemma 4.9 and the induction
  hypothesis for <math|D\<setminus\><around|{|i|}>>,

  <\equation*>
    <math-up|film><rsub|p><around|(|D,Y|)>\<leqslant\><big|prod><rsub|i\<in\>D,X<rsub|i>\<cap\>Y\<neq\>\<emptyset\>><around*|(|1+f<rsub|i>*e<rsup|<around|(|a+1|)><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>|)>\<leqslant\>exp
    <around*|(|<big|sum><rsub|i\<in\>D,X<rsub|i>\<cap\>Y\<neq\>\<emptyset\>>f<rsub|i>*e<rsup|<around|(|a+1|)><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>|)>\<leqslant\>e<rsup|<around|\||Y|\|>*\<gamma\>>.
  </equation*>

  The last step sums the hit condition over the sites of <math|Y>. Finally
  <math|<around|\||Y|\|>*\<gamma\>\<leqslant\><around|(|2*M+1|)><rsup|4>*\<gamma\><space|0.17em><math-up|cov><rsub|M><around|(|Y|)>\<leqslant\><math-up|cov><rsub|M><around|(|Y|)>>.
  <em|Lean:> <hlink|<verbatim|demand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L15-L27>,
  <hlink|<verbatim|Tree.lean> (<verbatim|step>,
  <verbatim|all_pack>)|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean>.

  <strong|Lemma 4.12 (tree bound).> II.2.6. <em|Sketch:>

  <\enumerate>
    <item>Take a finite family of sparks whose supports contain <math|x>, and
    let <math|A> be the union of their labels.

    <item>Each such spark is a nonempty pack for <math|<around|{|x|}>> inside
    <math|A>.

    <item>By Lemma 4.10 and <math|a\<geqslant\>0>,
    <math|e<rsup|a<space|0.17em><math-up|cov><rsub|M><around|(|X<around|(|s|)>|)>>*<big|prod><rsub|i\<in\>s>f<rsub|i>\<leqslant\><big|prod><rsub|i\<in\>s>p<rsub|i>>.

    <item>The bound <math|e<rsup|<around|\||Y|\|>*\<gamma\>>> in the proof of
    Lemma 4.11 with <math|Y=<around|{|x|}>> (so <math|<around|\||Y|\|>=1>)
    gives <math|<math-up|film><rsub|p><around|(|A,<around|{|x|}>|)>\<leqslant\>e<rsup|\<gamma\>>>.

    <item>Subtract the empty pack. Uniform bounds on finite partial sums give
    summability.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Ac.forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127>.

  <subsection|4.3 Two kinds of overlap><label|43-two-kinds-of-overlap>

  <strong|Lemma 4.13 (hotness is local).>

  <\itemize-minus>
    <item>Let <math|p> be a slab of <math|s> and <math|i\<in\>p>. Then
    <math|i> is hot in <math|p> iff it is hot in <math|s>, and its fuel in
    <math|p> equals its fuel in <math|s>.

    <item>In a mole, containing a dirty label is equivalent to all labels
    being hot.

    <item>Hotness spreads along fuel chains.
  </itemize-minus>

  <em|Sketch:> a mention chain is a fuel chain, so it stays inside the slab.
  A wall link joins only hot labels. Moles are also invariant under label
  permutations compatible with bijections of mentions and walls that preserve
  dirtiness (<hlink|<verbatim|Kilner.molecule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Harbor.lean#L29-L53>).
  <em|Lean:> <hlink|<verbatim|hot_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L149-L162>,
  <hlink|<verbatim|fuel_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L163-L164>,
  <hlink|<verbatim|takes_mole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L183-L187>.

  <strong|Lemma 4.14 (recovery).> II.2.7, items 1\U3. <em|Sketch:> let
  <math|s=<big|cup>S>.

  <\enumerate>
    <item>A mention chain in <math|s> cannot leave a member of <math|S>,
    since mention-unions are disjoint. So hotness in <math|s> equals hotness
    in the member, and fuels agree.

    <item>The fuel-unions of distinct members are disjoint: the mention
    components by hypothesis; the wall components because only members
    containing a dirty label have hot labels, and their wall-unions are
    disjoint.

    <item>Apply II.2.5, item 2 to the fuel overlap.

    <item>For slabs of a given set, use Lemma 4.13 to identify their internal
    fuels. Disjoint fuel-unions imply disjoint mention-unions; when both
    slabs contain a dirty label, all their labels are hot, so their
    wall-unions are disjoint as well.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Kiln.undo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240>,
  <hlink|<verbatim|clubs_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L190-L196>,
  <hlink|<verbatim|walls_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L197-L205>.

  <strong|Lemma 4.15 (moles are wall-sparks).> II.2.7, item 4. <em|Sketch:> a
  fuel overlap is either a mention overlap, which implies a wall overlap by
  hypothesis, or a wall overlap between hot labels. <em|Lean:>
  <hlink|<verbatim|Kiln.attends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L242-L253>,
  <hlink|<verbatim|Collide.spark_ac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L113-L117>.

  <strong|Lemma 4.16 (pellets).> Pellets are countably infinite. <em|Sketch:>
  every singleton <math|<around|{|<text|left >i|}>> is a pellet, and finite
  subsets of <math|\<bbb-N\>\<sqcup\>\<bbb-N\>> form a countable set.
  <em|Lean:> <hlink|<verbatim|Pipes.encoding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L121-L133>.

  <subsection|4.4 Switching><label|44-switching>

  <strong|Lemma 4.17 (triangular inversion).> For <math|x\<gtr\>0>,
  <math|<math-up|val><rsub|x>> is injective. <em|Sketch:> strong induction on
  <math|r>: <math|<math-up|val><rsub|x><around|(|g|)><around|(|r|)>=x<rsup|<around|\||r|\|>>*g<around|(|r|)>+<big|sum><rsub|i\<subsetneq\>r>x<rsup|<around|\||i|\|>>*g<around|(|i|)>>
  and <math|x<rsup|<around|\||r|\|>>\<neq\>0>. This is Möbius inversion on
  the Boolean lattice, scaled by <math|x<rsup|<around|\||i|\|>>>. Hence
  <math|<math-up|val><rsub|x>> is a linear bijection of a finite-dimensional
  space. <em|Lean:> <hlink|<verbatim|entire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L33-L42>,
  <hlink|<verbatim|Digits.lean> (<verbatim|vane>,
  <verbatim|decodes>)|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean>.

  <strong|Lemma 4.18 (jets; products).>

  <\itemize-minus>
    <item>If <math|g> models <math|f>, then
    <math|<math-up|val><rsub|x><rsup|-1><around|(|f<rsub|x>|)>=g<rsub|x>> for
    <math|0\<less\>x\<leqslant\>1>, so the jet is <math|g<rsub|0>>.

    <item>If <math|g,g<rprime|'>> model <math|f,f<rprime|'>>, then
    <math|x\<mapsto\>g<rsub|x>\<ast\><rsub|x>g<rprime|'><rsub|x>> models
    <math|f*f<rprime|'>>, since <math|<math-up|val><rsub|x><around|(|p\<ast\><rsub|x>q|)>=<math-up|val><rsub|x><around|(|p|)><space|0.17em><math-up|val><rsub|x><around|(|q|)>>.

    <item>Bounds: <math|<around|\||p\<ast\><rsub|x>q|\|>\<leqslant\><around|\||p|\|>\<ast\><rsub|1><around|\||q|\|>>
    for <math|x\<in\><around|[|0,1|]>>, and
    <math|<big|sum><around|(|b\<ast\><rsub|1>b<rprime|'>|)>=<big|sum>b\<cdot\><big|sum>b<rprime|'>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Models.exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L58-L63>,
  <hlink|<verbatim|Paid.mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L46-L50>;
  the model product <hlink|<verbatim|value_comb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L15-L25>,
  <hlink|<verbatim|Models.mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L28-L34>.

  <strong|Lemma 4.19 (absent markers; measurability).> II.2.9(d).
  <em|Sketch:> <math|<math-up|val><rsub|x><around|(|g|)><around|(|r|)>-<math-up|val><rsub|x><around|(|g|)>*<around|(|r\<setminus\><around|{|v|}>|)>=<big|sum><rsub|v\<in\>i\<subseteq\>r>x<rsup|<around|\||i|\|>>*g<around|(|i|)>>.
  If <math|f> does not see <math|v>, this vanishes for all <math|r>, so
  <math|g<rsub|x><around|(|i|)>=0> for <math|v\<in\>i> by induction, for
  every <math|0\<less\>x\<leqslant\>1>. Let <math|x*\<downarrow\>*0>.
  Measurability: the jet is the pointwise limit of
  <math|<math-up|val><rsub|x><rsup|-1><around|(|f<rsub|x>|)>>, and
  <math|<math-up|val><rsub|x><rsup|-1>> is a continuous linear map.
  <em|Lean:> <hlink|<verbatim|jet_erase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L27-L36>,
  <hlink|<verbatim|Paid.jet_meas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L38-L49>.

  <strong|Lemma 4.20 (transfer bound).> II.2.9(e). <em|Sketch:>

  <\enumerate>
    <item>The coefficient of <math|<math-up|snd><rsub|\<rho\>><around|(|f<rsup|u>|)>>
    at <math|z> is bounded by <math|<big|sum><rsub|i>b<around|(|i|)><space|0.17em><around|\||<around|(|<big|prod><rsub|v\<in\>i>\<rho\><rsub|v>|)><around|(|z|)>|\|>>,
    using <math|<around|\||g<rsub|0><around|(|i|)>|\|>\<leqslant\>b<around|(|i|)>>.

    <item>The <math|w>-norm of this majorant array is at most
    <math|<big|sum><rsub|i>b<around|(|i|)><space|0.17em><around|\<\|\|\>|<big|prod><rsub|v\<in\>i>\<rho\><rsub|v>|\<\|\|\>><rsub|w>\<leqslant\><big|sum><rsub|i>b<around|(|i|)>\<leqslant\>d>,
    by II.2.2.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Accent.crystal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L13-L19>.

  <subsection|4.5 Gaussian calculus><label|45-gaussian-calculus>

  <strong|Lemma 4.21 (construction of <math|\<cal-G\><rsub|Q>>).>
  II.2.10(a)\U(b). <em|Sketch:>

  <\enumerate>
    <item><math|<around|[|X<rsub|v>+\<partial\><rsub|Q<rsub|v>>,X<rsub|w>+\<partial\><rsub|Q<rsub|w>>|]>=Q<rsub|v*w>-Q<rsub|w*v>=0>
    by symmetry, and derivations commute.

    <item>The commutative subalgebra they generate receives an algebra map
    from <math|\<bbb-C\><around|[|X|]>>; apply it to <math|1>.

    <item>The semigroup law and commutation with <math|\<partial\><rsub|b>>
    follow by induction on polynomials from the recursion. Applying
    evaluation at <math|m> gives the moment functional and its Wick
    recursion. The terminating series <math|e<rsup|\<Delta\><rsub|Q>/2>>
    satisfies the same polynomial recursion, giving the equivalent
    heat-operator formula.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|cream_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L64-L65>,
  <hlink|<verbatim|make>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L73-L74>,
  <hlink|<verbatim|feeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L82>,
  <hlink|<verbatim|warms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L96-L102>,
  <hlink|<verbatim|spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L31-L35>.

  <strong|Lemma 4.22 (size of moments).> II.2.10(e). <em|Sketch:>

  <\enumerate>
    <item>By linearity it suffices to treat monomials, each written as
    <math|<big|prod><rsub|j\<in\>s>X<rsub|z<rsub|j>>> with
    <math|<around|\||s|\|>\<leqslant\>d>. The coefficient sum gives the
    factor <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>>.

    <item>Let <math|c<rsub|d>> bound the moments of degree
    <math|\<leqslant\>d>. The Wick recursion gives
    <math|c<rsub|d+1>\<leqslant\>B*<space|0.17em>c<rsub|d>+d*<space|0.17em>B*<space|0.17em>c<rsub|d>>,
    and <math|c<rsub|d>\<leqslant\><around|(|2*B*<around|(|d+1|)>|)><rsup|d>>
    by induction.

    <item>For differences, apply <math|<around|\||x*v-y*w|\|>\<leqslant\><around|\||x|\|>\|v-w\|+<around|\||x-y|\|><around|\||w|\|>>
    to each term of the recursion.

    <item>Localization: restrict <math|Q> and <math|m> to the variables of
    <math|p> by a change of variables.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Common.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean>,
  <hlink|<verbatim|width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L121-L123>,
  <hlink|<verbatim|differs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126>,
  <hlink|<verbatim|Guard.lean> (<verbatim|pinned>)|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean>.

  <strong|Lemma 4.23 (change of variables; factorization).> II.2.10(c) and
  II.2.11(c), last clause. <em|Sketch:> both sides of II.2.10(c) satisfy the
  same recursion in <math|X<rsub|v>>. One uses
  <math|\<partial\><rsub|m>*<around|(|p\<circ\>A|)>=<around|(|\<partial\><rsub|A*m>*p|)>\<circ\>A>
  and the fact that <math|\<cal-G\><rsub|Q>> applied to
  <math|<around|(|A<text|-linear form>|)>\<cdot\>q> obeys the Wick rule with
  covariance <math|A*Q*A<rsup|T>>. If <math|Q> vanishes between the variables
  of <math|P> and <math|R>, then <math|\<partial\><rsub|Q<rsub|v\<cdot\>>>*\<cal-G\><rsub|Q>*R=0>
  for every variable <math|v> of <math|P>. The Leibniz rule then gives
  <math|\<cal-G\><rsub|Q>*<around|(|P*R|)>=<around|(|\<cal-G\><rsub|Q>*P|)>*<around|(|\<cal-G\><rsub|Q>*R|)>>;
  linear substitution preserves this identity. Related results:

  <\itemize-minus>
    <item>if <math|Q> is block diagonal, Gaussian expectations of products
    over blocks factorize (<hlink|<verbatim|bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Crust.lean#L59>;
    <hlink|<verbatim|Particle.tide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/BoundParticle.lean#L29-L36>
    for marginals);

    <item>applying Wick ordering separately at each vertex subtracts its
    chosen covariance from the diagonal block
    (<hlink|<verbatim|lodge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L106-L109>),
    and two steps compose as <math|T<rsub|P,R>*T<rsub|H,Q>=T<rsub|H*P,<space|0.17em>H*R*H<rsup|T>+Q>>
    (<hlink|<verbatim|piped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L115-L122>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|prepared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L76-L81>,
  <hlink|<verbatim|wets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L83-L84>.

  <strong|Lemma 4.24 (identification with a true expectation).> II.2.10(d).
  <em|Sketch:>

  <\enumerate>
    <item>Substituting <math|X\<mapsto\>X+m> turns integration by parts into
    the recursion <math|\<bbb-E\>*<around|[|<around|(|m+\<xi\>|)><rsub|v>*q*<around|(|m+\<xi\>|)>|]>=m<rsub|v>*\<bbb-E\>*<around|[|q*<around|(|m+\<xi\>|)>|]>+\<bbb-E\>*<around|[|<around|(|\<partial\><rsub|Q<rsub|v>>*q|)>*<around|(|m+\<xi\>|)>|]>>.

    <item>Both <math|q\<mapsto\>\<bbb-E\>*<around|[|q*<around|(|m+\<xi\>|)>|]>>
    and <math|\<bbb-E\><rsub|Q,m>> are linear, equal <math|1> on <math|1>,
    and satisfy the Wick recursion on monomials.

    <item>Induction on the degree.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|payment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L61-L78>.

  <strong|Lemma 4.25 (step bounds).> II.2.11(a)\U(d). <em|Sketch:>

  <\itemize-minus>
    <item><strong|(a)>: expand in monomials. Submultiplicativity bounds the
    image of a degree-<math|k> monomial by
    <math|c<rsup|k>\<leqslant\>c<rsup|deg p>>.

    <item><strong|(b)>: induction on the degree, using
    <math|\<cal-G\><rsub|Q>*<around|(|X<rsub|v>*q|)>-X<rsub|v>*q=X<rsub|v>*<around|(|\<cal-G\><rsub|Q>*q-q|)>+<big|sum><rsub|j>Q<rsub|v*j>*<space|0.17em>\<cal-G\><rsub|Q>*<around|(|\<partial\><rsub|j>*q|)>>.

    <item><strong|(c)>: the same recursion with <math|X<rsub|v>> replaced by
    the linear form <math|H<rsub|v>>; each step multiplies the bound by at
    most <math|C*<around|(|1+d|)>\<leqslant\>2*<around|(|d+2|)>*C>. For the
    difference bound, subtract the two recursions and split each product
    difference into the change in one factor at a time.

    <item><strong|(d)>: write <math|\<Phi\><rsub|t><around|(|P|)>-<around|(|\<cal-G\><rsub|K>*P|)>\<circ\>f=<around|[|\<Phi\><rsub|t><around|(|P|)>-P\<circ\>f|]>+<around|[|<around|(|P-\<cal-G\><rsub|K>*P|)>\<circ\>f|]>>.

    <\itemize-minus>
      <item>First term: <math|<around|\<\|\|\>|t<rsup|-1>*A<rsub|v>*<around|(|t*X|)>|\<\|\|\>><rsub|1>\<leqslant\>t*B>,
      since <math|A<rsub|v>> has no terms of degree <math|\<less\>2>, and
      <math|<around|\<\|\|\>|U<around|(|p|)>-T<around|(|p|)>|\<\|\|\>><rsub|1>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<space|0.17em>d*<space|0.17em>B<rprime|'>*A<rsup|d>>
      for algebra maps that are <math|B<rprime|'>>-close on generators
      (bounded by <math|A>).

      <item>Second term: (b) followed by (a).
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Rise.rise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L51-L66>,
  <hlink|<verbatim|LiftMark.puff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L35-L77>,
  <hlink|<verbatim|LiftMark.bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L79-L96>,
  <hlink|<verbatim|crux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L119-L124>,
  <hlink|<verbatim|LiftMark.message>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Instructions.lean#L29-L53>,
  <hlink|<verbatim|LiftMark.stock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L66-L84>.

  <strong|Lemma 4.26 (guards; second moment).> II.2.11(e). <em|Sketch:>

  <\itemize-minus>
    <item><math|1-g*z\<leqslant\><around|(|1-g|)>+<around|(|1-z|)>> for
    <math|g,z\<in\><around|[|0,1|]>>.

    <item><math|<around|\||g*f-f|\|>=<around|(|1-g|)><around|\||f|\|>\<leqslant\>\<varepsilon\><rprime|'>\|f\|<rsup|2>+<around|(|1-g|)>/\<varepsilon\><rprime|'>>,
    using <math|0\<leqslant\>1-g\<leqslant\>1>; integrate.

    <item>Second moment: <math|<around|\||p*<around|(|m+\<xi\>|)>|\|><rsup|2>=<around|(|p<wide|p|\<bar\>>|)>*<around|(|m+\<xi\>|)>>,
    where <math|<wide|p|\<bar\>>> conjugates the coefficients. Apply
    II.2.10(d)\U(e) to <math|p<wide|p|\<bar\>>>, which has degree at most
    <math|2*d> and <math|<around|\<\|\|\>|p<wide|p|\<bar\>>|\<\|\|\>><rsub|1>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1><rsup|2>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|guards_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L79-L88>,
  <hlink|<verbatim|escaped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L108-L125>,
  <hlink|<verbatim|squareFits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L90-L105>.

  <strong|Lemma 4.27 (reading coefficients).> II.2.11(f). <em|Sketch:>

  <\enumerate>
    <item>Evaluation at all points of the cube is injective on polynomials of
    degree <math|\<leqslant\>d>, since a polynomial vanishing on a product of
    infinite sets is zero.

    <item>In finite dimension, a finite subfamily of evaluations is already
    injective: minimize the kernel dimension.

    <item>Take a left inverse and bound its <math|\<ell\><rsup|1>> operator
    norm.
  </enumerate>

  The Lipschitz bound follows by telescoping over monomials. A version with
  explicit dimension dependence and constant
  <math|<around|(|<around|\||V|\|>+1|)><rsup|d>*T<rsub|d,\<varepsilon\>>> is
  proved in III.11 (<hlink|<verbatim|ball_count>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L145-L156>).
  For polynomials of degree at most <math|n>, an
  <math|o<around|(|t<rsup|n>|)>> difference at <math|0> forces equality; for
  <math|C<rsup|n>> functions it forces equality of their Taylor polynomials
  through order <math|n> (<hlink|<verbatim|Spindle.decipher>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Peano.lean#L99-L102>,
  <hlink|<verbatim|trill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SolveRay.lean#L160-L167>).
  <em|Lean:> <hlink|<verbatim|listen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L22-L28>,
  <hlink|<verbatim|molds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L56-L81>,
  <hlink|<verbatim|amove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L20-L41>.

  <subsection|4.6 Numbers><label|46-numbers>

  <strong|Lemma 4.28 (loop bounds).> II.2.12, items 1\U2. <em|Sketch:>

  <\enumerate>
    <item><math|<around|(|log log s|)><rsup|2>=o<around|(|log s|)>>, so
    <math|b*<space|0.17em>y<rsup|2>\<leqslant\>p*log s> eventually; this is
    item 1.

    <item>Then <math|s*\<theta\><rsup|2>=\<Pi\><rsup|2>> exactly.

    <item><math|s*\<theta\><rsup|3>=\<Pi\><rsup|3>*s<rsup|-1/2>\<leqslant\>1>
    by item 1 with <math|b=3>, <math|p=<tfrac|1|2>>.

    <item>Item 1 with <math|b=1>, <math|p=1/2> gives
    <math|\<theta\>\<leqslant\>1> eventually, hence
    <math|s*\<theta\><rsup|4>\<leqslant\>s*\<theta\><rsup|3>>.

    <item><math|s\<cdot\>2*\<Pi\><rsup|v>*\<theta\><rsup|2>\<leqslant\>2*\<Pi\><rsup|3>\<leqslant\>2*<sqrt|s>\<leqslant\>s>
    for <math|s\<geqslant\>4>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L74-L78>,
  <hlink|<verbatim|uniform_loop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L83-L108>.

  <strong|Lemma 4.29 (comparison of scales).> II.2.12, items 3\U4.
  <em|Sketch:>

  <\itemize-minus>
    <item><math|log W<around|(|s|)>\<leqslant\>6*y<around|(|s|)>> eventually,
    so fixed powers of <math|W> are bounded by <math|\<Pi\><rsup|a>>. The
    ceiling inequalities <math|<around|(|log
    s|)><rsup|2>\<leqslant\>M<around|(|s|)>\<less\><around|(|log
    s|)><rsup|2>+1> also give <math|W<around|(|s|)>\<sim\><around|(|log
    s|)><rsup|4>>. Also <math|log h=y<rsup|3/2>=o<around|(|y<rsup|2>|)>>.

    <item>If <math|a\<less\>b>, then <math|c*\<Pi\><rsup|a-b>\<to\>0>,
    proving item 4.

    <item><math|y<around|(|s|)>\<leqslant\>y*<around|(|s/2|)>+1>, since
    <math|log s=log <around|(|s/2|)>+log 2>.

    <item><math|y<rsup|2>*e<rsup|-y>\<to\>0> handles
    <math|y<around|(|s|)><rsup|2>\<leqslant\>a*<space|0.17em>W*<around|(|s/2|)>>
    and <math|y<around|(|s|)><rsup|2>\<leqslant\>a*<space|0.17em>j*<around|(|s/2|)>>;
    for the latter use <math|j*<around|(|s/2|)>=e<rsup|y*<around|(|s/2|)><rsup|3/2>/5>\<geqslant\>e<rsup|y*<around|(|s/2|)>>>
    once <math|y*<around|(|s/2|)>\<geqslant\>25>.

    <item>Eventually <math|y<around|(|s|)>\<leqslant\>2*y*<around|(|s/2|)>>;
    then <math|2<rsup|3/2>\<leqslant\>5> gives
    <math|j<around|(|s|)>\<leqslant\>h*<around|(|s/2|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|rate_wall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L71-L90>,
  <hlink|<verbatim|rate_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L94-L108>,
  <hlink|<verbatim|rate_fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L110-L122>,
  <hlink|<verbatim|fire_stretch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L127-L137>.

  <strong|Lemma 4.30 (feasibility of the shelf and tally conditions).>
  II.2.13(a)\U(b). <em|Sketch:>

  <\enumerate>
    <item>Use <math|y<around|(|s|)><rsup|2>\<ll\>W*<around|(|s/2|)>> for the
    two linear lower bounds on <math|W<around|(|u|)>>. Since
    <math|W<around|(|u|)>\<leqslant\>W<around|(|s|)>=M<around|(|s|)><rsup|2>>,
    the support-size inequality follows once <math|M<around|(|s|)>> is large
    compared with <math|Q>. Fixed powers of <math|W> are
    <math|o<around|(|\<Pi\>|)>>, giving the geometric condition.

    <item>The purely exponential terms reduce to fixed constants times powers
    of <math|\<Pi\>> with strictly smaller exponents than the target; for
    example, <math|1/8-31/32=-27/32\<less\>-25/32>. For the sixth shelf
    inequality, uniformly in <math|u\<in\><around|[|s/2,s|]>>,
  </enumerate>

  <\equation*>
    <around*|(|m*U+4\<cdot\>2<rsup|m>+2|)>*y<around|(|s|)><rsup|2>+2*j<around|(|s|)>\<leqslant\>a*h<around|(|u|)><rsup|2>
  </equation*>

  eventually. Hence its first term is at most <math|\<Pi\><rsup|-2>>. The
  reserve inequality follows from <math|j*<around|(|s/2|)>\<gg\>y<around|(|s|)><rsup|2>>
  and <math|e<rsup|\<Pi\><rsup|-1>>-1\<leqslant\>exp <around|(|1|)>>. 3. The
  ceiling formula gives <math|n<around|(|L,s|)>*log
  <around|(|\<alpha\>+1|)>=O<around|(|y<around|(|s|)>|)>\<leqslant\>y<around|(|s|)><rsup|2>/4>
  eventually. The same uniform tail estimate, with coefficients <math|3/4>
  and <math|7/10>, gives <math|G<around|(|u|)>\<leqslant\>\<Pi\><rsup|-3/4>*\<omega\><around|(|v|)>>.
  4. Uniformity uses <math|W*<around|(|s/2|)>\<leqslant\>W<around|(|u|)>\<leqslant\>W<around|(|s|)>>,
  <math|h<around|(|u|)>\<geqslant\>h*<around|(|s/2|)>> and
  <math|j<around|(|u|)>\<leqslant\>j<around|(|s|)>>. Intersect the finitely
  many eventual conditions.

  <em|Lean:> <hlink|<verbatim|mint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L145-L158>,
  <hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L67-L77>,
  <hlink|<verbatim|on_time>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L81-L89>.

  <strong|Lemma 4.31 (numerical parameter bounds).> II.2.13(c)\U(e).
  <em|Sketch:>

  <\itemize-minus>
    <item>The block-size conditions are finitely many lower bounds on
    <math|log L>. At height <math|H<around|(|L,s|)>>, each logarithmic loss
    is at most <math|y<around|(|s|)><rsup|2>> for large <math|s>.

    <item>For <math|r\<leqslant\>H>, <math|<around|(|\<alpha\>+2|)><rsup|r>\<leqslant\><around|(|\<alpha\>+2|)><rsup|H>\<leqslant\>\<Pi\>>;
    combine this with <math|g\<geqslant\>6>.

    <item>For (c), <math|\<pi\><around|(|\<Pi\><rsup|\<phi\>>,n*k|)>\<leqslant\><around|(|2*<around|(|n*k+1|)>|)><rsup|n*k>*\<Pi\><rsup|1/4>>
    and <math|\<Pi\><rsup|-2>\<leqslant\>1>. The left side is therefore at
    most a fixed constant times <math|\<Pi\><rsup|-7/4>>, which is eventually
    at most <math|\<Pi\><rsup|-3/2>>.

    <item>For (e), fixed-degree moments of <math|\<tau\>=3*h> are bounded by
    arbitrarily small positive powers of <math|\<Pi\>>. With
    <math|Z=2*c+8*t+13>, the error function in its sixth inequality is
    <math|O<around|(|\<Pi\><rsup|-F+6*Z>|)>>. The condition
    <math|g+10*Z+10\<leqslant\>F> makes this at most <math|\<Pi\><rsup|-g>>
    after multiplication by the fixed factor. The remaining tail bound uses
    <math|G<around|(|u|)>\<leqslant\>\<Pi\><rsup|-2>> uniformly on
    <math|<around|[|s/2,s|]>>, and the geometric bound follows from
    <math|W<around|(|s|)><rsup|4>\<ll\>\<Pi\>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pulse_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L41-L42>,
  <hlink|<verbatim|Racer.pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L113-L119>,
  <hlink|<verbatim|collected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L39-L62>,
  <hlink|<verbatim|shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L68-L69>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The tree estimate must preserve the connected cover weight. Cover numbers
  are subadditive along intersecting unions, whereas a disconnected union may
  require an additional connecting region. The induction therefore uses
  connected components and spends exactly one extra cover exponent on each
  attachment. It counts finite sets of labels; it does not estimate Mayer
  coefficients with arbitrary repeated labels.

  For two interactions, the graph itself depends on the selected set, through
  hotness. Unique recovery requires both locality of hotness and the
  asymmetric separation conditions: all components separate through mentions,
  while only components containing a dirty label separate through walls.

  Switching requires convergence as well as a bound. Bounded coefficients
  alone need not have a limit as <math|x*\<downarrow\>*0>. The model supplies
  convergence, and the common majorant allows sums and coefficient estimates
  to pass to the limit. The Gaussian bounds allow complex covariances without
  positivity; their constants grow like <math|d<rsup|d>> up to exponential
  factors at fixed entry bounds. The degree is fixed before <math|L> and
  <math|s>.

  The numerical conditions establish feasibility for fixed parameters. They
  do not supply the analytic estimates to which those numbers are applied.
  The two iteration lengths in Ÿ3 must remain distinct.

  The source contains duplicate exponential and component constructions. Its
  second trajectory logarithm and <hlink|<verbatim|Candle.small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L72-L89>
  are absent from the main theorem\<#2019\>s dependency set. The latter
  bounds a restarted threshold by <math|3*h<around|(|<wide|\<beta\>|^>|)>*\<beta\><rsup|-1/2>>.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|R>,
  census>|<cell|<hlink|<verbatim|Marker.Census>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L22-L26>>|<cell|finite
  downward-closed family of allowed marker
  sets>>|<row|<cell|<math|\<cal-A\><rsub|R>>>|<cell|<hlink|<verbatim|Marker.Poly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40>>|<cell|marker
  algebra>>|<row|<cell|<math|c*<space|0.17em>\<delta\><rsub|x>>>|<cell|<hlink|<verbatim|Poly.send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L51>>|<cell|monomial
  with marker set <math|x>>>|<row|<cell|<math|w<rsup|x>>,
  <math|<around|\<lVert\>|a|\<rVert\>><rsub|w>>>|<cell|<hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L74>,
  <hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L76>>|<cell|weight
  of a marker set; weighted <math|\<ell\><rsup|1>>
  norm>>|<row|<cell|<math|<math-up|Exp>>>|<cell|<hlink|<verbatim|Poly.pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L29>>|<cell|exponential
  truncated at order <math|<around|\<lvert\>|V|\<rvert\>>>>>|<row|<cell|connected
  polynomial <math|<math-up|Log><space|0.17em>F>>|<cell|<hlink|<verbatim|Exponential.connected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L177>,
  <hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L126>>|<cell|<math|C>
  with <math|C<around|(|\<emptyset\>|)>=0>,
  <math|<math-up|Exp><around|(|C|)>=F>>>|<row|<cell|majorant
  array>|<cell|<hlink|<verbatim|Nil.Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L75>>|<cell|nonnegative
  coefficient bound>>|<row|<cell|<math|<math-up|cov><rsub|M><around|(|X|)>>>|<cell|<hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>>|<cell|connected
  cover number (I.1)>>|<row|<cell|spark, <math|<math-up|Parts><around|(|s|)>>>|<cell|<hlink|<verbatim|Ac.Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49>,
  <hlink|<verbatim|Ac.Parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L55>>|<cell|connected
  label set; components>>|<row|<cell|pack for <math|Y>,
  <math|<math-up|film><around|(|D,Y|)>>>|<cell|<hlink|<verbatim|Ac.Pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L18>,
  <hlink|<verbatim|Ac.film>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L79>>|<cell|label
  set attached to <math|Y>; its weighted count>>|<row|<cell|hit
  condition>|<cell|<hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>>|<cell|site-wise
  summability of <math|f*<space|0.17em>e<rsup|a<space|0.17em><math-up|cov>>>>>|<row|<cell|kiln,
  hot, fuel, mole, slab>|<cell|<hlink|<verbatim|Kiln>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L123-L126>,
  <hlink|<verbatim|Hot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L131>,
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L132>,
  <hlink|<verbatim|Mole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L133>,
  <hlink|<verbatim|slabs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L135>>|<cell|two-interaction
  polymer data and components>>|<row|<cell|pipes, tap, pellet,
  reach>|<cell|<hlink|<verbatim|Ovens.Pipes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L23-L27>,
  <hlink|<verbatim|Tap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L32-L35>,
  <hlink|<verbatim|contains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L57-L58>,
  <hlink|<verbatim|reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L48>>|<cell|data
  and pieces of the fused gas>>|<row|<cell|<math|<math-up|val><rsub|x>>,
  model, jet, paid>|<cell|<hlink|<verbatim|Switch.value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L26>,
  <hlink|<verbatim|Models>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L48-L50>,
  <hlink|<verbatim|jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L46>,
  <hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L56>>|<cell|switching
  objects>>|<row|<cell|<math|<math-up|snd><rsub|\<rho\>>>>|<cell|<hlink|<verbatim|Switch.sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L60>>|<cell|jets
  inserted into the marker algebra>>|<row|<cell|<math|<around|\<lVert\>|p|\<rVert\>><rsub|1>>,
  <math|<around|\<lVert\>|p|\<rVert\>><rsub|w,r>>>|<cell|<hlink|<verbatim|Rise.coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L47>,
  <hlink|<verbatim|Rise.cents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L13>>|<cell|coefficient
  norm; weighted coefficient seminorm>>|<row|<cell|<math|\<cal-G\><rsub|Q>>,
  <math|\<bbb-E\><rsub|Q,m>>>|<cell|<hlink|<verbatim|Normal.milk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L77>,
  <hlink|<verbatim|Normal.blend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L106>>|<cell|Gaussian
  smoothing; algebraic expectation>>|<row|<cell|<math|\<partial\><rsub|b>>>|<cell|<hlink|<verbatim|Normal.slit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L40>>|<cell|derivation
  <math|X<rsub|v>\<mapsto\>b<rsub|v>>>>|<row|<cell|<math|p\<circ\>A>>|<cell|<hlink|<verbatim|Normal.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L14>>|<cell|linear
  substitution>>|<row|<cell|<math|T<rsub|H,Q>>>|<cell|<hlink|<verbatim|Normal.pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L113>,
  <hlink|<verbatim|Valve.read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L18>>|<cell|one
  Gaussian polynomial step>>|<row|<cell|<math|\<pi\><around|(|B,d|)>>>|<cell|<hlink|<verbatim|Common.priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L36>>|<cell|<math|<around|(|2*B*<around|(|d+1|)>|)><rsup|d>>>>|<row|<cell|<math|\<eta\>>-guard>|<cell|<hlink|<verbatim|Guarded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L69-L73>>|<cell|<math|<around|[|0,1|]>>-valued
  cutoff of small defect>>|<row|<cell|<math|\<Pi\><around|(|s|)>>,
  <math|\<Pi\><around|(|s|)><rsup|a>>>|<cell|<hlink|<verbatim|Numbers.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72>,
  <hlink|<verbatim|Perch.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25>>|<cell|<math|e<rsup|<around|(|log
  log s|)><rsup|2>>> and its powers>>|<row|<cell|<math|\<theta\><around|(|s|)>>>|<cell|<hlink|<verbatim|Numbers.theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L73>>|<cell|<math|s<rsup|-1/2>*\<Pi\><around|(|s|)>>,
  small-field threshold>>|<row|<cell|<math|h,j,\<omega\>,W>>|<cell|<hlink|<verbatim|hot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L30>,
  <hlink|<verbatim|join>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L31>,
  <hlink|<verbatim|w>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L32>,
  <hlink|<verbatim|walls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L28>>|<cell|<math|e<rsup|y<rsup|3/2>>>,
  <math|h<rsup|1/5>>, <math|e<rsup|-0.7*j>>,
  <math|<around|\<lceil\>|<around|(|log s|)><rsup|2>|\<rceil\>><rsup|2>>>>|<row|<cell|parameter
  record <math|<around|(|t,g,H<rsub|0>,b,c,f,F,K|)>>>|<cell|<hlink|<verbatim|Tapes.Purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L20-L38>>|<cell|<verbatim|taylor>,
  <verbatim|goal>, <verbatim|horizon>, <verbatim|band>, <verbatim|credit>,
  <verbatim|f>, <verbatim|foil>, <verbatim|L>>>|<row|<cell|iteration
  conditions at height <math|H>>|<cell|<hlink|<verbatim|Racer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L64-L69>>|<cell|five
  inequalities in II.2.13(d)>>|<row|<cell|moment and fusion
  conditions>|<cell|<hlink|<verbatim|Faring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L92-L110>>|<cell|inequalities
  in II.2.13(e)>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Restarted thresholds.> The original threshold is
    <math|s<rsup|-1/2>*\<Pi\><around|(|s|)>>; the restarted Gaussian
    comparison uses <math|s<rsup|-1/2>*h<around|(|s|)>> and cover size
    <math|W<around|(|s|)>> (<hlink|<verbatim|Perch.Candle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L93-L96>,
    III.11). Their ratio <math|h<around|(|s|)>/\<Pi\><around|(|s|)>> tends to
    zero. The numerical estimates here do not establish the existence of
    restarted representations satisfying the required density and trajectory
    identities. That construction must be explained in III.11.

    <item><strong|Analytic inputs to the numerical conditions.> The shelf,
    tally and moment conditions are explicit in II.2.13. Their use still
    requires the one-step estimates with the stated supports, covariances and
    constants. The verification of those analytic hypotheses along the actual
    RG trajectories, including every later application of the digest and
    fusion bounds, is outside this unit.

    <item><strong|Auxiliary declarations.> The additional regrouping results
    in <verbatim|EventBale> and the cost estimates in
    <verbatim|MergeProof/West>, <verbatim|North> and <verbatim|East> are not
    formulated above, apart from the cited permutation result. Their full
    role in III.11 remains to be traced.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> II.1 Field labels and their lattice
  representatives (notes)|II-1.tm>|<hlink|Part
  II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Unit
  outline|../units/II-2.tm>|<hlink|III.1 The block-spin step and the
  symmetric gauge fixing (notes) \<rightarrow\>|III-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|II.2. Marker algebra, polymer combinatorics and
    Gaussian estimates \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|13>>
    <associate|3-strategy|<tuple|3|14>>
    <associate|4-steps|<tuple|4|15>>
    <associate|41-marker-algebra|<tuple|4.1|15>>
    <associate|42-components-and-the-tree-bound|<tuple|4.2|16>>
    <associate|43-two-kinds-of-overlap|<tuple|4.3|18>>
    <associate|44-switching|<tuple|4.4|18>>
    <associate|45-gaussian-calculus|<tuple|4.5|19>>
    <associate|46-numbers|<tuple|4.6|21>>
    <associate|5-where-the-difficulty-lies|<tuple|5|22>>
    <associate|6-notation|<tuple|6|23>>
    <associate|7-what-remains-unexplained|<tuple|7|24>>
    <associate|a-marker-algebra|<tuple|1.1|2>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.1|15>>
    <associate|auto-11|<tuple|4.2|16>>
    <associate|auto-12|<tuple|4.3|18>>
    <associate|auto-13|<tuple|4.4|18>>
    <associate|auto-14|<tuple|4.5|19>>
    <associate|auto-15|<tuple|4.6|21>>
    <associate|auto-16|<tuple|5|22>>
    <associate|auto-17|<tuple|6|23>>
    <associate|auto-18|<tuple|7|24>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|4>>
    <associate|auto-4|<tuple|1.3|7>>
    <associate|auto-5|<tuple|1.4|8>>
    <associate|auto-6|<tuple|1.5|10>>
    <associate|auto-7|<tuple|2|13>>
    <associate|auto-8|<tuple|3|14>>
    <associate|auto-9|<tuple|4|15>>
    <associate|b-polymer-combinatorics|<tuple|1.2|4>>
    <associate|c-switching|<tuple|1.3|7>>
    <associate|d-gaussian-polynomial-calculus|<tuple|1.4|8>>
    <associate|e-numbers|<tuple|1.5|10>>
    <associate|ii2-marker-algebra-polymer-combinatorics-and-gaussian-estimates--detailed-notes|<tuple|?|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      What this unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|A. Marker algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|B. Polymer combinatorics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|C. Switching
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|D. Gaussian polynomial calculus
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|E. Numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      What it uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Strategy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Steps> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1 Marker algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.2 Components and the tree bound
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.3 Two kinds of overlap
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.4 Switching
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|4.5 Gaussian calculus
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1tab>|4.6 Numbers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>