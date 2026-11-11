<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit
  (notes)|IV-1.tm>|<hlink|Part V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Unit
  outline|../units/V-1.tm>|<hlink|V.2 Osterwalder-Schrader reconstruction of
  a Wightman theory (notes) \<rightarrow\>|V-2.tm>>

  <ym-title|V.1. Decomposition of the limit into phases \V detailed
  notes><label|v1-decomposition-of-the-limit-into-phases--detailed-notes>

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

    <with|par-left|1tab|4.1 OS space, chambers, spectral calculus
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Slab operators
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 The compressed algebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Phase reflection and rotation invariance
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The phase tables
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Null spaces of the phases
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Choosing a phase
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit V.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/V-1.tm>.
  </quotation>

  <hlink|Unit page|../units/V-1.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Overview|../index.tm>

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
  <strong|Size:> about 5,700 lines in declarations used by the main theorem,
  including about 2,700 in B01\UB18, plus the assembly files.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting and notation.>

  <\itemize-minus>
    <item><strong|Tables and words.> <math|S> is the limit table of IV.1 (the
    mixed state <math|S<rsup|<math-up|mix>>> of the main theorem). A
    <em|label> is a pair <math|<around|(|d,v|)>>: its degree
    <math|d\<in\>\<bbb-N\>> and a vector <math|v> in the finite-dimensional
    reference space <math|V<rsub|d>>. A <em|word>
    <math|w=<around|(|<around|(|x<rsub|1>,v<rsub|1>|)>,\<ldots\>,<around|(|x<rsub|n>,v<rsub|n>|)>|)>>
    is a finite list of points of <math|\<bbb-R\><rsup|4>> with labels;
    <math|<around|\||w|\|>=n>, and <math|S<around|(|w|)>=S<around|(|x;v|)>>
    is its value, multilinear in the labels.

    <item><strong|Time, slabs, buffers.> Time is the last coordinate
    <math|t<around|(|x|)>>, with unit vector <math|e<rsub|t>>;
    <math|y\<perp\>e<rsub|t>> denotes a spatial vector. For a different
    coordinate axis <math|a>, replace <math|t<around|(|x|)>> by
    <math|x<rsup|a>> in the following definitions.

    <\itemize-minus>
      <item>A word is <em|separated> if its points are distinct, and
      <em|positive> if in addition all <math|t<around|(|x<rsub|i>|)>\<gtr\>0>.

      <item>It lies in the <em|slab> <math|<around|(|0,d|)>> if
      <math|0\<less\>t<around|(|x<rsub|i>|)>\<less\>d> for all <math|i>.

      <item>It is <em|<math|r>-buffered> in that slab if its points are at
      mutual sup-distance <math|\<geqslant\>r> and
      <math|r\<leqslant\>t<around|(|x<rsub|i>|)>\<leqslant\>d-r>.
    </itemize-minus>

    <item><strong|Operations on words.> <math|w+a> is the translate,
    <math|\<tau\><rsub|d>*w=w+d*e<rsub|t>>, <math|w\<cdot\>w<rprime|'>> is
    concatenation, and <math|<wide|w|\<bar\>>> conjugates only the labels.

    <item><strong|Two reflections.>

    <\itemize-minus>
      <item><math|\<Theta\>*w>, the OS reflection: reverse the list, reflect
      the points in <math|<around|{|t=0|}>>, and apply to the labels the
      antilinear map (conjugation followed by the time-mirror action).

      <item><math|\<vartheta\>*w>, the linear time reflection: reflect the
      points and apply the time-mirror action to the labels, with neither
      conjugation nor reversal.

      <item>For real labels, <math|\<Theta\>*w> is a permutation of
      <math|\<vartheta\>*w>.
    </itemize-minus>

    <item><strong|Null spaces.> <math|N<rsub|d><around|(|S|)>\<subset\>V<rsub|d>>
    consists of labels whose correlations with every separated family of
    spectators vanish. Write <math|F<rsub|d><around|(|S|)>=V<rsub|d>/N<rsub|d><around|(|S|)>>
    and <math|q<rsub|d>:V<rsub|d>\<to\>F<rsub|d><around|(|S|)>> for the
    quotient map. A table <math|S<rprime|'>> <em|respects> <math|S> if
    <math|N<rsub|d><around|(|S|)>\<subset\>N<rsub|d><around|(|S<rprime|'>|)>>
    for all <math|d>.

    <item><strong|Field algebra (VI.1).> It consists of label derivatives
    <math|\<partial\><rsub|j>:F<rsub|d><around|(|S|)>\<to\>F<rsub|d+1><around|(|S|)>>,
    inclusions <math|F<rsub|d><around|(|S|)>\<to\>F<rsub|e><around|(|S|)>>
    for <math|d\<leqslant\>e>, an action <math|R> of <math|O<around|(|4|)>>
    on these spaces, and a stress tensor <math|J<rsub|a*b>\<in\>F<rsub|4><around|(|S|)>>.
    In a word, <math|\<partial\><rsub|j>*v> and <math|R<around|(|K|)>*v> mean
    representatives of <math|\<partial\><rsub|j>*q<rsub|d><around|(|v|)>> and
    <math|R<around|(|K|)>*q<rsub|d><around|(|v|)>>. All tables and operators
    to which this notation is applied factor through the relevant quotients.
    Covariance means <math|S<around|(|K*x<rsub|1>,\<ldots\>,K*x<rsub|n>;R<around|(|K|)>*v<rsub|1>,\<ldots\>,R<around|(|K|)>*v<rsub|n>|)>=S<around|(|x;v|)>>
    for every <math|K\<in\>O<around|(|4|)>> and separated configuration
    <math|x\<in\><math-up|Conf><rsub|n>>.

    <item><strong|Caps.> For each fixed arity, degree list, label list and
    derivative order <math|j>, there are <math|A\<in\>\<bbb-N\>> and
    <math|C\<geqslant\>0> such that <math|<around|\<\|\|\>|D<rsup|j>*S<around|(|x;v|)>|\<\|\|\>>\<leqslant\>C*r<rsup|-A>>
    whenever <math|0\<less\>r\<leqslant\>1> and the points have mutual
    sup-distance at least <math|r>.

    <item><strong|The OS space.> The OS space <math|\<cal-H\>> of <math|S>
    for an axis <math|a> is the completion of the span of <math|a>-positive
    words modulo null vectors, with <math|<around|\<langle\>|b,b<rprime|'>|\<rangle\>>=S*<around|(|\<Theta\>*b\<cdot\>b<rprime|'>|)>>.
    <math|<around|\||b|\<rangle\>>> denotes the vector of <math|b>, and
    <math|\<Omega\>=<around|\||\<emptyset\>|\<rangle\>>>, with
    <math|<around|\<\|\|\>|\<Omega\>|\<\|\|\>>=1>.
  </itemize-minus>

  Nowhere does the unit assume clustering, a unique vacuum or a spectral gap.

  <strong|Proposition V.1.1 (chambers and ground space).> Let <math|S>
  satisfy the Euclidean hierarchy and let <math|a> be a coordinate axis.
  Then:

  <\itemize-minus>
    <item>On the OS space <math|\<cal-H\>> there is a strongly continuous
    semigroup <math|<around|(|E<rsub|t>|)><rsub|t\<geqslant\>0>> of
    self-adjoint contractions with <math|E<rsub|t>\|b\<rangle\>=<around|\||b+t*e<rsub|a>|\<rangle\>>>.

    <item>There is a strongly continuous unitary group
    <math|<around|(|U<rsub|y>|)><rsub|y\<perp\>e<rsub|a>>> commuting with it,
    with <math|U<rsub|y>\|b\<rangle\>=<around|\||b+y|\<rangle\>>>.

    <item>The triple is a <em|chamber>. Let
    <math|\<cal-H\><rsub|0>=<around|{|\<psi\>:E<rsub|t>*\<psi\>=\<psi\>\<forall\>t|}>>
    be its <em|ground space> and <math|P<rsub|0>> the orthogonal projection
    onto it. Then <math|\<Omega\>\<in\>\<cal-H\><rsub|0>>, and
    <math|E<rsub|t>*\<psi\>\<to\>P<rsub|0>*\<psi\>> as
    <math|t\<to\>\<infty\>> for every <math|\<psi\>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|OS.realization>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107>,
  <hlink|<verbatim|OS.implement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L63-L104>,
  <hlink|<verbatim|OS.Semigroup.emerges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Core.lean#L38-L78>;
  definitions <hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>,
  <hlink|<verbatim|OS.Semigroup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Flow.lean#L94-L106>,
  <hlink|<verbatim|Semigroup.ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Core.lean#L14>.

  <strong|Proposition V.1.2 (spectral calculus in a chamber).> In a chamber,
  write formally <math|E<rsub|t>=e<rsup|-t*H>>.

  <\itemize-minus>
    <item>(a) There is a strongly continuous unitary group
    <math|s\<mapsto\>e<rsup|i*s*H>>, determined by
    <math|e<rsup|i*s*H>*E<rsub|1>*\<psi\>=E<rsub|1><rsup|<space|0.17em>1-i*s>*\<psi\>>.
    Here <math|E<rsub|1><rsup|z>>, for <math|<math-up|Re><space|0.17em>z\<gtr\>0>,
    is the continuous functional calculus of the positive contraction
    <math|E<rsub|1>>. The map <math|V<around|(|x|)>=e<rsup|i*<space|0.17em>x<rsup|a>*H>*U<rsub|x<rsub|\<perp\>>>>,
    with <math|x<rsub|\<perp\>>=x-x<rsup|a>*e<rsub|a>>, is a strongly
    continuous unitary representation of <math|\<bbb-R\><rsup|4>>.

    <item>(b) There is a projection-valued measure <math|P> on
    <math|\<bbb-R\><rsup|4>> with <math|<around|\<langle\>|\<psi\>,V<around|(|x|)>*\<psi\>|\<rangle\>>=<big|int>e<rsup|i*p\<cdot\>x>*<space|0.17em>d*\<mu\><rsub|\<psi\>><around|(|p|)>>,
    where <math|\<mu\><rsub|\<psi\>><around|(|B|)>=<around|\<langle\>|\<psi\>,P<around|(|B|)>*\<psi\>|\<rangle\>>>
    for Borel <math|B>.

    <item>(c) Every <math|\<mu\><rsub|\<psi\>>> is supported in
    <math|<around|{|p<rsup|a>\<geqslant\>0|}>>.

    <item>(d) For <math|<math-up|Im><space|0.17em>z\<geqslant\>0>:
  </itemize-minus>

  <\equation*>
    <around|\<langle\>|\<psi\>,V<around|(|x|)>*<space|0.17em>e<rsup|i<around|(|<math-up|Re><space|0.17em>z|)>*H>*E<rsub|<math-up|Im><space|0.17em>z>*<space|0.17em>\<psi\>|\<rangle\>>=<big|int>e<rsup|i*p\<cdot\>x>*<space|0.17em>e<rsup|i*p<rsup|a>*z>*<space|0.17em>d*\<mu\><rsub|\<psi\>><around|(|p|)>.
  </equation*>

  <em|Status:> theorem. It holds for every semigroup with the properties of
  V.1.1. No gap is assumed or proved. <em|Lean:>
  <hlink|<verbatim|Semigroup.edge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Imaginary.lean#L49>,
  <hlink|<verbatim|Semigroup.unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L50-L58>,
  <hlink|<verbatim|Spectral.Orbit.total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L52-L119>,
  <hlink|<verbatim|Orbit.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L50>,
  <hlink|<verbatim|Semigroup.nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L102-L104>,
  <hlink|<verbatim|Semigroup.heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L108-L114>.

  <strong|Proposition V.1.3 (slab operators).> Assume the hierarchy and the
  bench (V.1.7). Then every chamber of <math|S> for the time axis carries a
  unique family of bounded operators <math|T<rsub|d><around|(|w|)>>, one for
  each <math|d\<gtr\>0> and each word <math|w> in the slab
  <math|<around|(|0,d|)>>, with

  <\equation*>
    T<rsub|d><around|(|w|)><space|0.17em>\|b\<rangle\>=<around|\||w\<cdot\>\<tau\><rsub|d>*b|\<rangle\>><space|2em><text|for
    every positive word >b.
  </equation*>

  <\itemize-minus>
    <item><strong|All-copy bound.> For every <math|D\<in\>\<bbb-N\>> and
    <math|\<rho\>\<gtr\>0> there are <math|C\<gtr\>0> and
    <math|\<kappa\>\<in\>\<bbb-N\>> such that
  </itemize-minus>

  <\equation*>
    <around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\>C<rsup|<around|\||w|\|>>*<around*|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>
  </equation*>

  for every <math|d\<gtr\>0>, every <math|r\<in\><around|(|0,1|]>>, and every
  word <math|w> that is <math|r>-buffered in <math|<around|(|0,d|)>> with
  degrees <math|\<leqslant\>D> and label norms <math|\<leqslant\>\<rho\>>.
  The right side is <math|1> for the empty word.

  <\itemize-minus>
    <item><strong|Smoothness.> If moreover <math|S> satisfies the derivative
    identities of the plan <math|\<partial\>>, then for fixed <math|d> and
    labels the map <math|x\<mapsto\>T<rsub|d><around|(|w<around|(|x|)>|)>> is
    <math|C<rsup|\<infty\>>> in operator norm on the open set where
    <math|w<around|(|x|)>> lies in the slab. Its derivatives are
    <math|\<partial\><rsub|x<rsub|p><rsup|j>>*T<rsub|d><around|(|w<around|(|x|)>|)>=T<rsub|d><around|(|w<rprime|'><around|(|x|)>|)>>,
    where <math|w<rprime|'>> replaces the label <math|v<rsub|p>> by
    <math|\<partial\><rsub|j>*v<rsub|p>>.
  </itemize-minus>

  <em|Status:> theorem, given the bench. More generally, smoothness follows
  for any slab family with the all-copy bound on a time-axis chamber of a
  table <math|S<rprime|'>> that satisfies the hierarchy, respects <math|S>,
  and satisfies the derivative identities of the plan on <math|S>. <em|Lean:>
  <hlink|<verbatim|Work.B01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B01.lean#L50-L71>,
  <hlink|<verbatim|Work.B02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>;
  definitions <hlink|<verbatim|Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101-L104>,
  <hlink|<verbatim|Spread.AllCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L111-L113>,
  <hlink|<verbatim|Spread.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L153-L162>.

  <strong|Proposition V.1.4 (the compressed vacuum algebra).> Assume the
  hierarchy and <math|O<around|(|4|)>>-covariance of <math|S>. Fix a
  time-axis chamber and any family <math|T<rsub|d><around|(|w|)>> with the
  defining identity of V.1.3. Then:

  <\itemize-minus>
    <item>(a) <math|U<rsub|y>*\<psi\>=\<psi\>> for every
    <math|\<psi\>\<in\>\<cal-H\><rsub|0>> and every spatial <math|y>.

    <item>(b) For a separated word <math|w>, the operator
    <math|M<around|(|w|)>\<assign\>P<rsub|0>*<space|0.17em>T<rsub|d>*<around|(|w+s|)>\|<rsub|\<cal-H\><rsub|0>>>
    does not depend on the choice of <math|s\<in\>\<bbb-R\><rsup|4>> and
    <math|d\<gtr\>0> with <math|w+s> in the slab <math|<around|(|0,d|)>>. For
    positive <math|b>, <math|M<around|(|b|)>*\<Omega\>=P<rsub|0>\|b\<rangle\>>.
    For every separated <math|w>, <math|<around|\<langle\>|\<Omega\>,M<around|(|w|)>*\<Omega\>|\<rangle\>>=S<around|(|w|)>>.

    <item>(c) Cluster limit. Let <math|q<rsub|1>,\<ldots\>,q<rsub|m>> be
    separated words and <math|a<rsub|1><around|(|n|)>,\<ldots\>,a<rsub|m><around|(|n|)>\<in\>\<bbb-R\><rsup|4>>
    with <math|t*<around|(|a<rsub|j><around|(|n|)>-a<rsub|i><around|(|n|)>|)>\<to\>+\<infty\>>
    for <math|i\<less\>j>; the spatial components are arbitrary. Then for
    large <math|n> the word <math|<around|(|q<rsub|1>+a<rsub|1><around|(|n|)>|)>*\<cdots\>*<around|(|q<rsub|m>+a<rsub|m><around|(|n|)>|)>>
    is separated, and its value under <math|S> tends to
    <math|<around|\<langle\>|\<Omega\>,M<around|(|q<rsub|1>|)>*\<cdots\>*M<around|(|q<rsub|m>|)>*\<Omega\>|\<rangle\>>>.

    <item>(d) The norm-closed <math|\<ast\>>-algebra
    <math|\<cal-A\>\<subset\>B<around|(|\<cal-H\><rsub|0>|)>> generated by
    the <math|M<around|(|w|)>> is commutative, <math|\<cal-A\>*\<Omega\>> is
    dense in <math|\<cal-H\><rsub|0>>, and <math|p\<in\>\<cal-A\>> with
    <math|p*\<Omega\>=0> implies <math|p=0>.

    <item>(e) Suppose in addition that the family satisfies the smoothness
    part of V.1.3. Then:

    <\itemize-minus>
      <item><math|M> is invariant under permutations of the word and under
      all translations; <math|M<around|(|\<emptyset\>|)>=1>; a unit label may
      be dropped together with its point; and
      <math|M<around|(|w|)><rsup|\<ast\>>=M*<around|(|\<Theta\>*w|)>>.

      <item>For <math|x\<in\><math-up|Conf><rsub|n>>, the map
      <math|v\<mapsto\>M<around|(|x;v|)>> is multilinear and factors through
      <math|F<rsub|d<rsub|1>><around|(|S|)>\<times\>\<cdots\>\<times\>F<rsub|d<rsub|n>><around|(|S|)>>.

      <item><math|x\<mapsto\>M<around|(|x;v|)>> is <math|C<rsup|\<infty\>>>
      in norm on <math|<math-up|Conf><rsub|n>>.

      <item><math|\<cal-A\>> is norm-separable.
    </itemize-minus>
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Ground.inert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L185-L188>,
  <hlink|<verbatim|Ground.overline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L111-L119>,
  <hlink|<verbatim|Ground.almost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L128>,
  <hlink|<verbatim|Spread.insertValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L59-L63>,
  <hlink|<verbatim|Ground.arcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L138-L148>,
  <hlink|<verbatim|Ground.adjunction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L149-L161>,
  <hlink|<verbatim|Ground.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L145-L162>,
  <hlink|<verbatim|Ground.attains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L115-L124>,
  <hlink|<verbatim|Work.B03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B03.lean#L405-L415>,
  <hlink|<verbatim|Work.B12.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B12.lean#L81-L92>;
  definitions <hlink|<verbatim|Ground.M>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L89-L91>,
  <hlink|<verbatim|Spread.algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L54>,
  <hlink|<verbatim|Bid.Theme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L45-L56>.

  <strong|Proposition V.1.5 (decomposition into phases).> Assume the setting
  of V.1.4(a)\U(e). Then:

  <\itemize-minus>
    <item>There are a compact metrizable space <math|X> (the Gelfand spectrum
    of <math|\<cal-A\>>), a Borel probability measure <math|\<nu\>> on
    <math|X> with <math|\<nu\><around|(|O|)>\<gtr\>0> for every nonempty open
    <math|O>, and characters <math|\<chi\><rsub|\<xi\>>>
    (<math|\<xi\>\<in\>X>).

    <item><math|\<xi\>\<mapsto\>\<chi\><rsub|\<xi\>>> is a bijection onto the
    characters of <math|\<cal-A\>>; each <math|\<xi\>\<mapsto\>\<chi\><rsub|\<xi\>><around|(|p|)>>
    is continuous; and <math|<big|int><rsub|X>\<chi\><rsub|\<xi\>><around|(|p|)>*<space|0.17em>d*\<nu\><around|(|\<xi\>|)>=<around|\<langle\>|\<Omega\>,p*\<Omega\>|\<rangle\>>>
    for every <math|p\<in\>\<cal-A\>>.

    <item>For each <math|\<xi\>>, the formula
    <math|S<rsup|\<xi\>><around|(|x;v|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|x;v|)>|)>>
    on <math|<math-up|Conf><rsub|n>> (and <math|0> off it) defines a table.

    <item><math|S<rsup|\<xi\>><around|(|w|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|w|)>|)>>
    for every separated <math|w>; <math|\<xi\>\<mapsto\>S<rsup|\<xi\>><around|(|w|)>>
    is continuous; and the barycenter identity holds:
  </itemize-minus>

  <\equation*>
    <big|int><rsub|X>S<rsup|\<xi\>><around|(|w|)>*<space|0.17em>d*\<nu\><around|(|\<xi\>|)>=S<around|(|w|)><space|2em><text|for
    every separated word >w.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Ground.resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L126-L140>,
  <hlink|<verbatim|Work.B07.state>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L12-L13>,
  <hlink|<verbatim|Resolution.barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117>;
  definitions <hlink|<verbatim|Spread.Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L72>,
  <hlink|<verbatim|Resolution.Out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L78-L86>,
  <hlink|<verbatim|Resolution.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L89-L91>.

  <strong|Proposition V.1.6 (every phase satisfies the hierarchy and the
  field laws).> In addition to V.1.3\UV.1.5 (with the smoothness laws for the
  plan of the field algebra), assume:

  <\itemize-minus>
    <item>the Seed of <math|S> (IV.1);

    <item>the grid hypothesis (Ÿ2);

    <item>the laws of the field algebra for <math|S> (VI.1).
  </itemize-minus>

  Then two operator identities hold before any character is applied:

  <\itemize-minus>
    <item>(e) <em|phase reflection>: <math|M<around|(|w|)>=M*<around|(|\<vartheta\>*w|)>>
    for every separated word with arbitrary complex labels;

    <item>(f) <math|M<around|(|w|)>=M*<around|(|K*w|)>> for every separated
    <math|w> and every <math|K\<in\>O<around|(|4|)>>, where <math|K> acts on
    points and, through <math|R<around|(|K|)>>, on labels.
  </itemize-minus>

  As a consequence, for <strong|every> <math|\<xi\>\<in\>X>:

  <\itemize-minus>
    <item>(a) <math|S<rsup|\<xi\>>> satisfies the Euclidean hierarchy:

    <\itemize-minus>
      <item>permutation symmetry, <math|S<rsup|\<xi\>><around|(|\<emptyset\>|)>=1>,
      and unit labels;

      <item>invariance under signed permutations of the axes, and reality
      <math|S<rsup|\<xi\>><around|(|x;<wide|v|\<bar\>>|)>=<wide|S<rsup|\<xi\>><around|(|x;v|)>|\<bar\>>>;

      <item>translation invariance;

      <item>reflection positivity for every coordinate axis, in point and
      smeared form;

      <item>smoothness on <math|<math-up|Conf><rsub|n>>, and caps on all
      derivatives.
    </itemize-minus>

    <item>(b) <math|S<rsup|\<xi\>>> respects <math|S> and is
    <math|O<around|(|4|)>>-covariant for the same action <math|R>. It
    satisfies the inclusion and derivative identities of the plan and the
    stress-tensor Ward identities of VI.1.

    <item>(c) Uniform cap: for every <math|D\<in\>\<bbb-N\>> and
    <math|\<rho\>\<gtr\>0> there are <math|K\<gtr\>0> and
    <math|\<kappa\>\<in\>\<bbb-N\>> with
  </itemize-minus>

  <\equation*>
    <around|\||S<rsup|\<xi\>><around|(|w|)>|\|>\<leqslant\>K<rsup|<around|\||w|\|>>*<around*|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>
  </equation*>

  for all <math|\<xi\>>, all <math|r\<in\><around|(|0,1|]>>, and all words
  with degrees <math|\<leqslant\>D>, label norms <math|\<leqslant\>\<rho\>>
  and points at mutual sup-distance <math|\<geqslant\>r>.

  <\itemize-minus>
    <item>(d) <math|N<rsub|d><around|(|S<rsup|\<xi\>>|)>=N<rsub|d><around|(|S|)>>
    for every <math|d>, hence <math|F<rsub|d><around|(|S<rsup|\<xi\>>|)>=F<rsub|d><around|(|S|)>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Work.B05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L90-L115>,
  <hlink|<verbatim|B06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B06.lean#L238-L242>,
  <hlink|<verbatim|B07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L119-L124>,
  <hlink|<verbatim|B08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L206-L209>,
  <hlink|<verbatim|B09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09.lean#L12-L15>,
  <hlink|<verbatim|B10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>,
  <hlink|<verbatim|B11.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B11.lean#L75-L89>,
  <hlink|<verbatim|Retain.lift_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Picks.lean#L128-L158>;
  definitions <hlink|<verbatim|Phase.reflects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L19-L20>,
  <hlink|<verbatim|Bid.Garland>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L72-L80>,
  <hlink|<verbatim|Phase.Scripts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L25-L32>.

  <strong|Proposition V.1.7 (bench).> For every <math|D\<in\>\<bbb-N\>> and
  <math|\<rho\>\<gtr\>0> there are <math|C<rsub|0>\<gtr\>0> and
  <math|\<kappa\>\<in\>\<bbb-N\>> with the following property. Let
  <math|d\<gtr\>0>, <math|r\<in\><around|(|0,1|]>>, and let
  <math|w\<neq\>\<emptyset\>> be <math|r>-buffered in
  <math|<around|(|0,d|)>>, with degrees <math|\<leqslant\>D> and label norms
  <math|\<leqslant\>\<rho\>>. Then there are a lattice level <math|b> and a
  width <math|s\<leqslant\>d> with <math|s\<in\>a<rsub|b>*\<bbb-N\>> and
  <math|w> in the slab <math|<around|(|0,s|)>>, such that every positive word
  <math|v> has a constant <math|B<rsub|v>> with

  <\equation*>
    <mid|\|>S*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)><mid|\|>\<leqslant\>B<rsub|v>*<space|0.17em>A<rsup|4*n>*<around|(|n\<geqslant\>0|)>,<space|2em>A=C<rsub|0><rsup|<around|\||w|\|>>*<around*|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>,<space|2em>v<rsub|0>=v,v<rsub|n+1>=\<tau\><rsub|s>*<around|(|\<Theta\>*w|)>\<cdot\>\<tau\><rsub|s>*<around|(|w\<cdot\>\<tau\><rsub|s>*v<rsub|n>|)>.
  </equation*>

  Here <math|v<rsub|n>> is <math|v> preceded by <math|2*n> consecutive slabs
  of width <math|s>, holding alternately <math|w> and its reflection. Thus
  <math|<around|\||v<rsub|n>|\<rangle\>>=<around|(|T<rsub|s><around|(|w|)><rsup|\<ast\>>*T<rsub|s><around|(|w|)>|)><rsup|n>\|v\<rangle\>>
  once <math|T<rsub|s><around|(|w|)>> exists, and
  <math|S*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)>> is a
  reflection-symmetric train of <math|4*n> copies of <math|w>.

  <em|Status:> a hypothesis of this unit, required of every limit table with
  a Seed. It is proved in VII.4 (<hlink|<verbatim|Next.Phase.seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>)
  from the cutoff family, the hierarchy, the point limits and the cell
  hypothesis of the Seed.

  <\itemize-minus>
    <item><strong|Chessboard estimate.> The cell hypothesis bounds every
    signed or reflected field of degree <math|\<leqslant\>D> by
    <math|J*<space|0.17em>a<rsub|k><rsup|-<around|(|D+1|)>>> in chessboard
    norm. The scale can be chosen with <math|a<rsub|k>\<geqslant\>c*<space|0.17em><around|(|r/<around|\||w|\|>|)><rsup|4>>,
    where <math|c\<gtr\>0> depends only on the fixed family and
    <math|<around|(|D,\<rho\>|)>>. A finer scale handles the exterior word.
    The resulting train bound is <math|B<rsup|2<around|\||v|\|>>*<around|(|J*a<rsub|k><rsup|-<around|(|D+1|)>>|)><rsup|4*n<around|\||w|\|>>>
    (<hlink|<verbatim|Next.Phase.travel_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304>).
    Thus one may take <math|\<kappa\>=4*<around|(|D+1|)>>; the exterior
    constant is independent of <math|n>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.Bench>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L21-L24>,
  <hlink|<verbatim|Bid.Seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L27>,
  <hlink|<verbatim|OS.QRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71>,
  <hlink|<verbatim|Next.Phase.replicas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L119-L151>,
  <hlink|<verbatim|Next.Phase.rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L55-L77>.

  <strong|Proposition V.1.8 (vacuum uniqueness in almost every phase).> Let
  <math|<around|(|X,\<nu\>,\<chi\>|)>> and <math|S<rsup|\<xi\>>> be as in
  V.1.5, with every <math|S<rsup|\<xi\>>> satisfying the hierarchy. For each
  <math|\<xi\>> fix a time-axis chamber of <math|S<rsup|\<xi\>>>, with vacuum
  <math|\<Omega\><rsub|\<xi\>>> and ground space
  <math|\<cal-H\><rsub|0><rsup|\<xi\>>>. Then:

  <\itemize-minus>
    <item><math|\<cal-H\><rsub|0><rsup|\<xi\>>=\<bbb-C\>*<space|0.17em>\<Omega\><rsub|\<xi\>>>
    for <math|\<nu\>>-almost every <math|\<xi\>>; in particular such phases
    exist.

    <item>Every time-axis chamber of every <math|S<rsup|\<xi\>>> carries a
    slab family <math|T<rsup|\<xi\>><rsub|d><around|(|w|)>> with
    <math|<around|\<\|\|\>|T<rsup|\<xi\>><rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>>
    for each valid slab word. If the original family has the all-copy bound,
    so does this family. Under V.1.6 it also has the smoothness laws.
  </itemize-minus>

  <em|Status:> theorem. Uniqueness for every phase is proved later, in V.3
  (<hlink|<verbatim|EveryPhase.every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L146-L153>),
  by an argument outside this unit. <em|Lean:>
  <hlink|<verbatim|Cluster.exp_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L56-L86>,
  <hlink|<verbatim|Cluster.lifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L91-L110>,
  <hlink|<verbatim|Cluster.selects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L111-L114>,
  <hlink|<verbatim|Work.B13.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B13.lean#L91-L105>,
  <hlink|<verbatim|Work.B14.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L145-L148>;
  definition <hlink|<verbatim|Chamber.UniqueHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L35>.

  <strong|Proposition V.1.9 (selected-phase certificate).> Let <math|C> be a
  Wilson family with extraction order <math|f> and limit table <math|S>.
  Assume:

  <\itemize-minus>
    <item>the Seed of <math|S>;

    <item>the grid hypothesis;

    <item>a field algebra on <math|S> with its laws.
  </itemize-minus>

  Then there are:

  <\itemize-minus>
    <item>a time-axis chamber of <math|S> whose ground space is fixed
    pointwise by spatial translations;

    <item>a slab family on it with the all-copy bound and the smoothness
    laws;

    <item>a decomposition <math|<around|(|X,\<nu\>,\<chi\><rsub|\<xi\>>,S<rsup|\<xi\>>|)>>
    as in V.1.5, with every <math|S<rsup|\<xi\>>> satisfying V.1.6(a), (b),
    (d);

    <item>a phase <math|\<xi\><rsub|\<ast\>>>, with a time-axis chamber of
    <math|S<rsup|\<xi\><rsub|\<ast\>>>> whose ground space is
    <math|\<bbb-C\>*\<Omega\><rsub|\<xi\><rsub|\<ast\>>>>, and a slab family
    on that chamber with the smoothness laws.
  </itemize-minus>

  <em|Status:> theorem.

  <\itemize-minus>
    <item><strong|Assembly.> The bench theorem and B01\UB18 give the slab and
    phase constructions (<hlink|<verbatim|Bid.Looms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Market.lean#L10-L36>);
    the selection argument produces the certificate
    (<hlink|<verbatim|Phase.Loom.cleanse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L60-L76>).

    <item><strong|Use in the main theorem.> The main theorem applies it in
    <hlink|<verbatim|Pert.withFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31>
    and <hlink|<verbatim|MergeProof.Acme.glistens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Summit.lean#L17-L30>.
    The result is the <verbatim|phase> field of
    <hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>.
  </itemize-minus>

  <em|Lean:> definitions <hlink|<verbatim|Phase.Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L50-L54>,
  <hlink|<verbatim|Phase.Stall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L42-L46>,
  <hlink|<verbatim|Phase.Vendor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L34-L40>,
  <hlink|<verbatim|OS.Selection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127-L134>,
  <hlink|<verbatim|Selection.Certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L136-L148>,
  <hlink|<verbatim|Spec.Materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47>.

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|IV.1 (limit table and Seed).>

    <\itemize-minus>
      <item>The limit table <math|S> with the Euclidean hierarchy: Lean
      <hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>,
      with fields basic laws, real-spin, translations, point and smeared
      reflection positivity, smoothness, caps.

      <item>The Seed, Lean <hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>.
      Its components:

      <\itemize-minus>
        <item>(i) the cutoff family;

        <item>(ii) the ordered limit;

        <item>(iii) point limits at generic points
        (<hlink|<verbatim|PointLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L68>);

        <item>(iv) the hierarchy;

        <item>(v) the <em|cell hypothesis>
        (<hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>):
        reflection-positivity seams at every cutoff; and, for every degree
        <math|d> and <math|\<varepsilon\>,\<rho\>\<gtr\>0>, a threshold
        <math|m<rsub|0>> and <math|A\<geqslant\>0> such that for every
        <math|m\<geqslant\>m<rsub|0>> and <math|\<eta\>\<gtr\>0>, late in the
        ordered cutoff, every degree-<math|d> label of norm at most
        <math|\<rho\>> is supported inside its centered cell and has
        chessboard root at most <math|A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>+\<eta\>>,
        uniformly over cell centers;

        <item>(vi) the <em|corrected-field data>
        (<hlink|<verbatim|RankWidths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L138>,
        <hlink|<verbatim|Columns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L38-L46>,
        <hlink|<verbatim|Trials.Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L98-L118>).
        For each degree <math|d>: finitely many one- or two-point test rows
        and a basis of the free-field space of degree <math|d>, for which the
        free test map is injective; and lattice "corrected" fields at levels
        <math|k> whose classes span <math|F<rsub|d><around|(|S|)>> for all
        sufficiently large <math|k>, whose one-field differences from free
        values and centered two-field products minus free cumulants have
        chessboard bounds <math|<math-up|gap><rsub|k>+\<eta\>> late in the
        cutoff for every <math|\<eta\>\<gtr\>0>, with
        <math|<math-up|gap><rsub|k>\<to\>0>. The free values use the rescaled
        test points.
      </itemize-minus>

      <item>The free table (<hlink|<verbatim|Cells.standard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22>).

      <item>Where these are used: (i)\U(iv) in B04, B16 and the bench; (v) in
      the bench, B15 and the grid hypothesis; (vi) in B18 and
      <verbatim|lift_detect>.
    </itemize-minus>

    <item><strong|VII.4 (the bench).> V.1.7, i.e.
    <hlink|<verbatim|Next.Phase.seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>.

    <item><strong|III.11 (the grid hypothesis)>
    <hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>.
    Proved from bounded ultraviolet approximants and the cell hypothesis by
    <hlink|<verbatim|MergeProof.Accent.grilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83>.

    <\itemize-minus>
      <item>Setup: take a degree bound <math|d> and a level <math|m>. There
      is a level <math|k\<geqslant\>m> such that the following holds for
      every word <math|w> with real labels of degree <math|\<leqslant\>d> at
      generic points of the level-<math|k> grid.

      <item>Let <math|F> be the lattice product of the fields of <math|w>,
      and <math|\<vartheta\>*F> the product of the mirrored fields at the
      reflected points.

      <item>The lattice variables <math|f<rsub|j>> are the translates of
      <math|F-\<vartheta\>*F> by <math|t*<space|0.17em>j> grid steps in every
      coordinate.

      <item>Conclusion: for each approximation index <math|\<varkappa\>> the
      <math|f<rsub|j>> admit real measurable approximants, bounded by
      <math|R<rsub|\<varkappa\>>> uniformly in the cutoff, whose pair
      integrals, for <math|i\<less\>j>, differ from
      <math|\<bbb-E\><around|[|<math-up|Re><around|(|f<rsub|i>*f<rsub|j>|)>|]>>
      by at most <math|\<delta\><rsub|\<varkappa\>>\<to\>0>. For a fixed grid
      word, <math|R<rsub|\<varkappa\>>> and
      <math|\<delta\><rsub|\<varkappa\>>> are independent of the translation,
      copy indices and cutoffs. The pair estimates hold for all sufficiently
      large <math|t>, then late in the cutoff
      (<hlink|<verbatim|Grid.Covering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L63-L67>).
      It is used only in B05.
    </itemize-minus>

    <item><strong|VI.1 (field algebra and its laws on <math|S>)>
    (<hlink|<verbatim|Spec.Algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L28-L31>,
    <hlink|<verbatim|Spec.Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>).

    <\itemize-minus>
      <item><math|O<around|(|4|)>>-covariance of <math|S>
      (<hlink|<verbatim|Rotation.Oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48>)
      is used in V.1.4(a), (d), in <verbatim|Ground.resolution>, and in B06,
      B07.

      <item>The rotation laws (<hlink|<verbatim|Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>):
      group law, and <math|R<around|(|s|)>> equal to the mirror action of
      <math|S> for signed permutations <math|s>. Used in B06, B07.

      <item>The derivative identities are used in B02 and B09; the inclusion
      identities and stress-tensor laws (<hlink|<verbatim|StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>)
      in B09.

      <item><strong|Order of dependence.> VI.1 uses the chamber construction
      and the bounded heat functional calculus from the beginning of this
      unit, as well as elementary geometry and norm estimates. It does not
      use the compressed algebra, phase reflection or phase selection. Those
      constructions then use the <math|O<around|(|4|)>> action supplied by
      VI.1.
    </itemize-minus>

    <item><strong|V.2.> The Gram/completion construction of the OS space
    (<hlink|<verbatim|Kernel.Gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L34-L38>,
    with <verbatim|by_bound>, <verbatim|by_bud>).

    <item><strong|I.1, II.1.> Lattice, generic points, label registers, the
    Wilson family.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item><strong|Osterwalder\USchrader reconstruction> and the doubling
    bound for the semigroup: Osterwalder\USchrader, CMP 31 (1973), 42 (1975);
    Glimm\UJaffe, <em|Quantum Physics>, Ch. 19 (probable).

    <item><strong|Chessboard estimates:> Fröhlich\UIsrael\ULieb\USimon, CMP
    62 (1978).

    <item><strong|Pure phases.> The classical analogue is the decomposition
    of a Nelson\USymanzik positive theory into pure phases, Fröhlich, Ann.
    Phys. 97 (1976) (probable), and the decomposition of states along abelian
    algebras, Bratteli\URobinson I, Ch. 4.

    <item><strong|Operator algebras and measure theory:>

    <\itemize-minus>
      <item>Gelfand\UNaimark for commutative C*-algebras and spectral
      permanence (Bratteli\URobinson I, Ÿ2.1\U2.2);

      <item>Riesz\UMarkov (Reed\USimon I, Thm. IV.14);

      <item>continuous functional calculus;

      <item>Hahn\UBanach;

      <item>dominated convergence.
    </itemize-minus>

    <item><strong|Harmonic analysis:> the Stone\UNaimark\UAmbrose\UGodement
    theorem (Folland, <em|A Course in Abstract Harmonic Analysis>, Ÿ4.4) and
    a Paley\UWiener support theorem for bounded holomorphic functions in a
    half-plane (Reed\USimon II, ŸIX.3) (probable).

    <item><strong|Geometry:> Cartan\UDieudonné (reflections generate
    <math|O<around|(|4|)>>).
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>No numerical constant is fixed in the unit.

    <item>The all-copy bound uses the constants of the bench; one may choose
    <math|\<kappa\>=4*<around|(|D+1|)>>. These constants may depend on the
    fixed family and <math|<around|(|D,\<rho\>|)>>, but not on the slab
    width, buffer, word length or number of copies.

    <item>The hypotheses are: the hierarchy and the Seed (IV.1), the grid
    hypothesis (III.11), the bench (VII.4), and the field-algebra laws
    (VI.1).
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  <strong|The limit table as a mixture.> The table <math|S> is obtained by
  ordered limits of finite-volume Wilson correlations. Its OS semigroup may
  have a multidimensional ground space <math|\<cal-H\><rsub|0>>. The unit
  decomposes the correlations through an algebra acting on that space.

  <\itemize-minus>
    <item><strong|The algebra.> Inserting a separated word into a time slab
    gives a bounded operator; compressing it to <math|\<cal-H\><rsub|0>>
    gives <math|M<around|(|w|)>>. These operators generate a commutative
    C*-algebra <math|\<cal-A\>>, for which <math|\<Omega\>> is cyclic and
    separating.

    <item><strong|Phases.> The Gelfand spectrum <math|X> of <math|\<cal-A\>>,
    with the measure <math|\<nu\>> representing
    <math|p\<mapsto\><around|\<langle\>|\<Omega\>,p*\<Omega\>|\<rangle\>>>,
    is the space of phases. Each character gives a table,
    <math|S<rsup|\<xi\>>=\<chi\><rsub|\<xi\>>\<circ\>M>, and
    <math|S=<big|int>S<rsup|\<xi\>>*<space|0.17em>d*\<nu\>>.

    <item><strong|Comparison with the classical case.> The algebra describes
    observables at infinite time separation. It replaces the invariant
    observables used in the ergodic decomposition of a Euclidean measure.
    Here the construction uses only the OS space of the limit correlations.
    Operator identities give the hierarchy and field laws for every
    <math|\<xi\>>; vacuum uniqueness is first obtained almost everywhere.
  </itemize-minus>

  <strong|Four inputs.> Four inputs make this work, and each is used where
  the classical argument would use the measure.

  <\itemize-minus>
    <item><strong|(i) Boundedness.> A chessboard estimate controls
    alternating trains of <math|4*n> copies with constants independent of
    <math|n>. A power argument converts this estimate into the slab-operator
    bound <math|C<rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|\<kappa\><around|\||w|\|>>>.

    <item><strong|(ii) <math|O<around|(|4|)>>-covariance> (VI.1). It shows
    that ground states are invariant under spatial translations, which makes
    <math|M<around|(|w|)>> well defined. Spatial displacements are rotated
    into time displacements, which are asymptotically invisible. It also
    makes <math|\<cal-A\>> commutative: exchanging the time axis with a
    spatial axis reverses the time order of two clusters inside a
    four-cluster limit.

    <item><strong|(iii) Phase reflection>
    <math|M<around|(|w|)>=M*<around|(|\<vartheta\>*w|)>>. Together with
    <math|M<around|(|w|)><rsup|\<ast\>>=M*<around|(|\<Theta\>*w|)>>, this
    makes every phase value on real labels real. Put
    <math|D=M<around|(|w|)>-M*<around|(|\<vartheta\>*w|)>> for such a word.
    Then <math|D<rsup|\<ast\>>=-D>, so <math|<around|\<langle\>|\<Omega\>,D<rsup|2>*\<Omega\>|\<rangle\>>=-<around|\<\|\|\>|D*\<Omega\>|\<\|\|\>><rsup|2>>.
    Bounded real lattice approximants give the reverse inequality by
    positivity of the variance of many far-separated copies. Thus <math|D=0>.
    Conjugating time reflection gives invariance of <math|M> under
    <math|O<around|(|4|)>>.

    <item><strong|(iv) Chessboard detectors.> For the corrected fields they
    show that the one- and two-point functions of every phase, on a spanning
    family of fields, are close to free-field values for which the test map
    is injective. Hence every phase has the null spaces of <math|S>.
  </itemize-minus>

  <strong|Selecting a phase.> For a positive word <math|b>, the quantity
  <math|<around|\<\|\|\>|P<rsub|0><rsup|\<xi\>>\|b|\<rangle\>>\<\|\|\><rsup|2>-<around|\||S<rsup|\<xi\>><around|(|b|)>|\|><rsup|2>\<geqslant\>0>
  has <math|\<nu\>>-integral zero. This follows by dominated convergence
  along <math|E<rsub|s>> and the barycenter identity. One countable family of
  words is total in every phase chamber, so a single null set suffices, and
  outside it every phase has a one-dimensional ground space. The spectral
  calculus of V.1.2 (SNAG, positivity of the energy from analyticity of the
  heat semigroup) is built without assuming a gap and is used downstream
  (V.2, V.3).

  <section|4. Steps><label|4-steps>

  <subsection|4.1 OS space, chambers, spectral
  calculus><label|41-os-space-chambers-spectral-calculus>

  <strong|Lemma V.1.a (chamber).> Under the hierarchy, V.1.1 holds except for
  the convergence <math|E<rsub|t>\<to\>P<rsub|0>>. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Contraction (OS doubling trick).> For <math|p> in the span
    of positive words, <math|<around|\<\|\|\>|E<rsub|t>*p|\<\|\|\>><rsup|2>=<around|\<langle\>|p,E<rsub|2*t>*p|\<rangle\>>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>>*sup<rsub|s><around|\<\|\|\>|E<rsub|s>*p|\<\|\|\>>>.
    The supremum <math|c> is finite, because
    <math|s\<mapsto\>S*<around|(|\<Theta\>*b\<cdot\>\<tau\><rsub|s>*b<rprime|'>|)>>
    is bounded for <math|s\<geqslant\>0>: the points stay at a fixed positive
    distance, and the zeroth cap applies. Hence
    <math|c<rsup|2>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>>*c>, so
    <math|<around|\<\|\|\>|E<rsub|t>*p|\<\|\|\>>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>>>.

    <item><strong|Self-adjointness and unitarity.> Self-adjointness of
    <math|E<rsub|t>> and unitarity of <math|U<rsub|y>> follow from
    translation invariance.

    <item><strong|Strong continuity.> It follows from continuity of the Gram
    functions (smoothness) together with the uniform bounds.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|OS.contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Flow.lean#L70-L89>,
  <hlink|<verbatim|OS.implement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L63-L104>.

  <strong|Lemma V.1.b (ground projection).> For a semigroup of self-adjoint
  contractions, <math|E<rsub|t>*\<psi\>\<to\>P<rsub|0>*\<psi\>> for every
  <math|\<psi\>>. <em|Proof sketch.>

  <\itemize-minus>
    <item>For <math|u\<leqslant\>v>, <math|<around|\<langle\>|E<rsub|u>*\<psi\>,E<rsub|v>*\<psi\>|\<rangle\>>=<around|\<\|\|\>|E<rsub|<around|(|u+v|)>/2>*\<psi\>|\<\|\|\>><rsup|2>\<geqslant\><around|\<\|\|\>|E<rsub|v>*\<psi\>|\<\|\|\>><rsup|2>>.
    Hence <math|<around|\<\|\|\>|E<rsub|u>*\<psi\>-E<rsub|v>*\<psi\>|\<\|\|\>><rsup|2>\<leqslant\><around|\<\|\|\>|E<rsub|u>*\<psi\>|\<\|\|\>><rsup|2>-<around|\<\|\|\>|E<rsub|v>*\<psi\>|\<\|\|\>><rsup|2>>,
    and the decreasing limit of <math|<around|\<\|\|\>|E<rsub|t>*\<psi\>|\<\|\|\>><rsup|2>>
    makes <math|E<rsub|t>*\<psi\>> Cauchy.

    <item>The limit is fixed by every <math|E<rsub|s>>, and <math|\<psi\>>
    minus the limit is orthogonal to <math|\<cal-H\><rsub|0>>, because
    <math|<around|\<langle\>|E<rsub|t>*\<psi\>,u|\<rangle\>>=<around|\<langle\>|\<psi\>,u|\<rangle\>>>
    for <math|u\<in\>\<cal-H\><rsub|0>>.

    <item>No spectral theorem is used.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Semigroup.emerges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Core.lean#L38-L78>.

  <strong|Lemma V.1.c (real-time group and SNAG).> V.1.2(a), (b) hold.
  <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Real-time group.> <math|E<rsub|1>=E<rsub|1/2><rsup|2>> is
    positive, with spectrum in <math|<around|[|0,1|]>>. The functional
    calculus gives <math|E<rsub|1><rsup|z>>, holomorphic for
    <math|<math-up|Re><space|0.17em>z\<gtr\>0>, and
    <math|E<rsub|1><rsup|t>=E<rsub|t>> for <math|t\<gtr\>0> by positive roots
    and continuity. If <math|E<rsub|t>*\<psi\>=0>, analyticity makes
    <math|E<rsub|s>*\<psi\>=0> for every <math|s\<gtr\>0>, and continuity at
    zero gives <math|\<psi\>=0>. Self-adjointness then makes the range of
    <math|E<rsub|1>> dense. Since <math|<around|\<\|\|\>|E<rsub|1><rsup|1-i*s>*\<psi\>|\<\|\|\>>=<around|\<\|\|\>|E<rsub|1>*\<psi\>|\<\|\|\>>>,
    the map <math|E<rsub|1>*\<psi\>\<mapsto\>E<rsub|1><rsup|1-i*s>*\<psi\>>
    extends to an isometry. The power laws give the group law and inverse at
    <math|-s>; continuity on the dense range gives strong continuity.

    <item><strong|SNAG.> Integrate <math|V> against Fourier transforms of
    Schwartz functions to obtain a <math|\<ast\>>-representation of
    continuous functions on the one-point compactification of
    <math|\<bbb-R\><rsup|4>>. Riesz\UMarkov gives a projection-valued measure
    there. The point at infinity carries no mass: evaluate at <math|x=0>
    along an approximate identity.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Semigroup.roots_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Extend.lean#L42-L65>,
  <hlink|<verbatim|Semigroup.pillar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Imaginary.lean#L33-L46>,
  <hlink|<verbatim|Semigroup.edge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Imaginary.lean#L49>,
  <hlink|<verbatim|Semigroup.unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L50-L58>,
  <hlink|<verbatim|Spectral.Orbit.total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L52-L119>,
  <hlink|<verbatim|Spectral.PVM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spectral/Projection.lean#L19-L29>.

  <strong|Lemma V.1.d (spectrum condition and Laplace formula).> V.1.2(c),
  (d) hold. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|The function <math|J>.> Fix <math|\<psi\>> and <math|x>.
    The function <math|J<around|(|z|)>=<around|\<langle\>|\<psi\>,V<around|(|x|)>*e<rsup|i<around|(|<math-up|Re><space|0.17em>z|)>*H>*E<rsub|<math-up|Im><space|0.17em>z>*\<psi\>|\<rangle\>>>
    is continuous on <math|<math-up|Im><space|0.17em>z\<geqslant\>0>. In the
    interior it equals <math|<around|\<langle\>|\<psi\>,V<around|(|x|)>*E<rsub|1><rsup|-i*z>*\<psi\>|\<rangle\>>>,
    so it is holomorphic there. It is bounded by
    <math|<around|\<\|\|\>|\<psi\>|\<\|\|\>><rsup|2>>. Its boundary values
    are the Fourier transform of <math|e<rsup|i*p\<cdot\>x>*d*\<mu\><rsub|\<psi\>><around|(|p|)>>
    in the variable <math|p<rsup|a>>.

    <item><strong|Support theorem.> Let <math|\<mu\>> be a finite positive
    Borel measure on <math|\<bbb-R\><rsup|4>>, let
    <math|\<ell\>:\<bbb-R\><rsup|4>\<to\>\<bbb-R\>> be continuous, and let
    <math|F> be bounded and holomorphic in the upper half-plane, continuous
    up to the boundary, with <math|F<around|(|b|)>=<big|int>e<rsup|i*\<ell\><around|(|y|)>*b>*d*\<mu\><around|(|y|)>>.
    Then <math|<math-up|supp><space|0.17em>\<mu\>\<subset\><around|{|\<ell\>\<geqslant\>0|}>>.
    To see this, integrate <math|F> against the Gaussian
    <math|e<rsup|-i*b*z-\<varepsilon\>*z<rsup|2>>> on horizontal lines and
    shift the contour upward. For <math|b\<less\>0>, choosing height
    <math|-b/<around|(|2*\<varepsilon\>|)>> bounds the mass where
    <math|<around|\||\<ell\><around|(|y|)>-b|\|>\<less\><around|\||b|\|>/2>
    by <math|C*e<rsup|-3*b<rsup|2>/<around|(|16*\<varepsilon\>|)>>>. Letting
    <math|\<varepsilon\>*\<downarrow\>*0> excludes negative <math|\<ell\>>
    from the support. Apply this with <math|x=0> in <math|J> and
    <math|\<ell\><around|(|p|)>=p<rsup|a>>.

    <item><strong|Laplace formula.> Both sides of (d) are bounded and
    holomorphic with the same boundary values, so they agree.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Semigroup.altitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L75-L93>,
  <hlink|<verbatim|Semigroup.nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L102-L104>,
  <hlink|<verbatim|Semigroup.heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L108-L114>,
  <hlink|<verbatim|Paley.supports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley/Half.lean#L63-L113>,
  <hlink|<verbatim|Paley.heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley/Mapped.lean#L28-L57>,
  <hlink|<verbatim|Paley.Air>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Paley/Line.lean#L31-L34>.

  <subsection|4.2 Slab operators><label|42-slab-operators>

  <strong|Lemma V.1.e (power argument).>

  <\itemize-minus>
    <item><strong|Setting.> Let <math|\<Delta\>\<gtr\>0>, let <math|A,B> be
    linear maps on a complex vector space, and let <math|Y> be a linear map
    into a Hilbert space, with <math|<around|\<langle\>|Y*A*v,Y*w|\<rangle\>>=<around|\<langle\>|Y*v,Y*B*w|\<rangle\>>>
    for all <math|v,w>.

    <item><strong|Statement.> If every <math|v> has a constant
    <math|K<rsub|v>> with <math|<around|\<\|\|\>|Y*<around|(|B*A|)><rsup|n>*v|\<\|\|\>>\<leqslant\>K<rsub|v>*\<Delta\><rsup|2*n>>
    for all <math|n>, then <math|<around|\<\|\|\>|Y*A*v|\<\|\|\>>\<leqslant\>\<Delta\>*<around|\<\|\|\>|Y*v|\<\|\|\>>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Put <math|\<delta\><rsub|n>=<around|\<\|\|\>|Y*<around|(|B*A|)><rsup|n>*v|\<\|\|\>>/\<Delta\><rsup|2*n>>.
    Then <math|\<delta\><rsub|n><rsup|2>\<leqslant\><around|\<\|\|\>|Y*v|\<\|\|\>>*<space|0.17em>\<delta\><rsub|2*n>>,
    so <math|sup<rsub|n> \<delta\><rsub|n>\<leqslant\><around|\<\|\|\>|Y*v|\<\|\|\>>>.

    <item>Hence <math|<around|\<\|\|\>|Y*A*v|\<\|\|\>><rsup|2>=<around|\<langle\>|Y*v,Y*B*A*v|\<rangle\>>\<leqslant\>\<Delta\><rsup|2>*<around|\<\|\|\>|Y*v|\<\|\|\>><rsup|2>>.

    <item>Apply this with <math|A> = insertion of <math|w>, <math|B> =
    insertion of <math|\<tau\><rsub|s>*\<Theta\>*w>, and <math|Y> = the OS
    map. The bench gives <math|K<rsub|v>=<sqrt|B<rsub|v>>> for single words;
    for finite sums use the triangle inequality. Extend by continuity.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Drive.against>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L20-L60>,
  <hlink|<verbatim|OS.size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L95-L114>,
  <hlink|<verbatim|OS.producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>.

  <strong|Lemma V.1.f (existence and all-copy bound; B01).> The first part of
  V.1.3 holds. <em|Proof sketch.>

  <\itemize-minus>
    <item>Let <math|w> be <math|r>-buffered in <math|<around|(|0,d|)>>. The
    bench gives <math|s\<leqslant\>d> with the train bound at width <math|s>.
    V.1.e then gives a bounded operator <math|T<rprime|'>> with
    <math|<around|\<\|\|\>|T<rprime|'>|\<\|\|\>>\<leqslant\>A> and
    <math|T<rprime|'>\|b\<rangle\>=<around|\||w\<cdot\>\<tau\><rsub|s>*b|\<rangle\>>>.

    <item>Put <math|T<rsub|d><around|(|w|)>=T<rprime|'>*E<rsub|d-s>>, so
    <math|<around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\>A>;
    for the empty word, <math|T<rsub|d><around|(|\<emptyset\>|)>=E<rsub|d>>.

    <item>Every word in a slab is buffered for some
    <math|<around|(|D,\<rho\>,r|)>>. Operators agreeing on all positive-word
    vectors coincide, so the family is unique on valid slab words.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B01.lean#L50-L71>.

  <strong|Lemma V.1.g (smoothness laws; B02).>

  <\itemize-minus>
    <item><strong|Hypotheses.> <math|S<rprime|'>> is a table respecting
    <math|S>, both satisfying the hierarchy, and <math|S<rprime|'>> satisfies
    the derivative identities of the plan of <math|S>. The slab family on a
    chamber of <math|S<rprime|'>> has the all-copy bound.

    <item><strong|Conclusion.> The family is <math|C<rsup|\<infty\>>> in
    operator norm, with derivatives given by differentiated labels.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Local bound on the candidate derivative.> The candidate
    derivative is the operator with the label differentiated. It is locally
    bounded: an <math|r>-buffered configuration is <math|r/2>-buffered on a
    neighbourhood, so the all-copy bound applies there.

    <item><strong|Matrix elements.> Between positive-word vectors, the
    derivative identity of <math|S<rprime|'>> gives the candidate's matrix
    elements as derivatives.

    <item><strong|From matrix elements to norm.> A mean-value estimate with
    constants uniform in the observing vectors gives first Lipschitz
    continuity in norm, then norm continuity of the candidate (apply the same
    to the next derivative), then Fréchet differentiability. Induction on the
    order gives <math|C<rsup|\<infty\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>,
  <hlink|<verbatim|B02.norm_remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02/Analysis.lean#L134-L153>,
  <hlink|<verbatim|B02/Slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02/Slab.lean>.

  <subsection|4.3 The compressed algebra><label|43-the-compressed-algebra>

  <strong|Lemma V.1.h (ground states are spatially invariant).> Under the
  hierarchy and <math|O<around|(|4|)>>-covariance,
  <math|U<rsub|y>*\<psi\>=\<psi\>> for all
  <math|\<psi\>\<in\>\<cal-H\><rsub|0>>. <em|Proof sketch.> Let <math|p,q> be
  positive words, <math|y> spatial, and <math|u=y+e<rsub|t>>.

  <\itemize-minus>
    <item><strong|Pure time shifts are invisible.> For any
    <math|d<around|(|s|)>> with <math|t<around|(|d<around|(|s|)>|)>\<to\>\<infty\>>
    and any fixed <math|\<lambda\>>, <math|S*<around|(|\<Theta\>*p\<cdot\><around|(|q+d<around|(|s|)>+\<lambda\>*e<rsub|t>|)>|)>-S*<around|(|\<Theta\>*p\<cdot\><around|(|q+d<around|(|s|)>|)>|)>\<to\>0>.
    Both terms are matrix elements <math|<around|\<langle\>|p<rprime|'>,U<rsub|z<around|(|s|)>>*E<rsub|\<tau\><around|(|s|)>+\<lambda\>>*q<rprime|'>|\<rangle\>>>
    and <math|<around|\<langle\>|p<rprime|'>,U<rsub|z<around|(|s|)>>*E<rsub|\<tau\><around|(|s|)>>*q<rprime|'>|\<rangle\>>>,
    with <math|\<tau\><around|(|s|)>\<to\>\<infty\>> and arbitrary spatial
    <math|z<around|(|s|)>>, and <math|E<rsub|\<tau\>>*q<rprime|'>> converges
    (V.1.b).

    <item><strong|Rotate the spatial displacement into time.> Choose a
    hyperplane reflection <math|K> with <math|K*u=<around|\||u|\|>*e<rsub|t>>
    and <math|t*<around|(|K*e<rsub|t>|)>\<gtr\>0>. Covariance turns
    <math|S*<around|(|\<Theta\>*p\<cdot\><around|(|q+u+s*e<rsub|t>|)>|)>-S*<around|(|\<Theta\>*p\<cdot\><around|(|q+s*e<rsub|t>|)>|)>>
    into a pure time shift by <math|<around|\||u|\|>> at displacement
    <math|s*K*e<rsub|t>>, so it tends to <math|0>.

    <item><strong|Conclusion.> Combining the two,
    <math|<around|\<langle\>|p,U<rsub|y>*E<rsub|s>*q|\<rangle\>>-<around|\<langle\>|p,E<rsub|s>*q|\<rangle\>>\<to\>0>.
    Hence <math|U<rsub|y>*P<rsub|0>\|q\<rangle\>=P<rsub|0>\|q\<rangle\>>, and
    this extends to all of <math|\<cal-H\><rsub|0>> by density.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ground.inert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L185-L188>,
  <hlink|<verbatim|Ground.rays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L153-L183>,
  <hlink|<verbatim|Ground.across_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L135-L150>,
  <hlink|<verbatim|Ground.overtops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Lean.lean#L109-L133>.

  <strong|Lemma V.1.i (the compression and its identities; B03).> V.1.4(b)
  and (e), except separability, hold. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Independence of the shift.> For <math|u\<geqslant\>0> the
    defining identity gives <math|T<rsub|d+u><around|(|w|)>=T<rsub|d><around|(|w|)>*E<rsub|u>>
    and <math|T<rsub|u+d>*<around|(|\<tau\><rsub|u>*w|)>=E<rsub|u>*T<rsub|d><around|(|w|)>>;
    spatial translations give <math|U<rsub|y>*T<rsub|d><around|(|w|)>=T<rsub|d>*<around|(|w+y|)>*U<rsub|y>>.
    Together with <math|P<rsub|0>*E<rsub|u>=P<rsub|0>> and V.1.h, these
    identities make <math|M<around|(|w|)>> independent of the shift and
    width.

    <item><strong|Values.> <math|<around|\<langle\>|\<Omega\>,T<rsub|d><around|(|w|)>*\<Omega\>|\<rangle\>>=S<around|(|w|)>>
    because <math|\<Omega\>=<around|\||\<emptyset\>|\<rangle\>>>; translation
    invariance removes the shift.

    <item><strong|Identities.> Pairing against positive-word vectors gives
    <math|<around|\<langle\>|p,T<rsub|d><around|(|w|)>*q|\<rangle\>>=S*<around|(|\<Theta\>*p\<cdot\>w\<cdot\>\<tau\><rsub|d>*q|)>>
    with separated exterior words. Permutation symmetry, unit labels,
    multilinearity and dependence on <math|F<rsub|d><around|(|S|)>> therefore
    hold before compression.

    <item><strong|Adjoint and smoothness.>
    <math|T<rsub|d><around|(|w|)><rsup|\<ast\>>=T<rsub|d>*<around|(|\<tau\><rsub|d>*\<Theta\>*w|)>>
    by translation invariance. Smoothness: near a configuration one shift and
    width serve (the slab condition is open), compression is bounded linear,
    and V.1.g applies.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ground.at_any>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L71-L87>,
  <hlink|<verbatim|Ground.overline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L111-L119>,
  <hlink|<verbatim|Ground.pins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L38-L43>,
  <hlink|<verbatim|Ground.slim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L129-L143>,
  <hlink|<verbatim|Work.B03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B03.lean#L405-L415>,
  <hlink|<verbatim|Bid.depot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L41-L43>.

  <strong|Lemma V.1.j (cluster limits).> V.1.4(c) holds. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Reduction to positive clusters.> Shift each cluster by a
    fixed vector to make it positive; this does not change <math|M>.

    <item><strong|Induction on <math|m>.> Shift the union so that
    <math|q<rsub|1>> sits in its slab. Its vector is then
    <math|T<rsub|d><around|(|q<rsub|1>|)>*U<rsub|y<rsub|n>>*E<rsub|u<rsub|n>>\|<text|rest><rsub|n>\<rangle\>>
    with <math|u<rsub|n>\<to\>\<infty\>>.

    <item><strong|Key convergence.> If <math|\<psi\><rsub|n>\<to\>\<psi\>>
    and <math|u<rsub|n>\<to\>\<infty\>>, then
    <math|U<rsub|y<rsub|n>>*E<rsub|u<rsub|n>>*\<psi\><rsub|n>\<to\>P<rsub|0>*\<psi\>>
    for arbitrary spatial <math|y<rsub|n>>, by V.1.b and V.1.h. Inductively
    the vector converges to <math|T<rsub|d><around|(|q<rsub|1>|)>*M<around|(|q<rsub|2>|)>*\<cdots\>*M<around|(|q<rsub|m>|)>*\<Omega\>>,
    and pairing with <math|\<Omega\>> inserts <math|P<rsub|0>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ground.arcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L138-L148>,
  <hlink|<verbatim|Ground.future_train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L41-L93>,
  <hlink|<verbatim|Ground.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Moments.lean#L26-L39>.

  <strong|Lemma V.1.k (commutativity, cyclicity, separation).> V.1.4(d)
  holds. <em|Proof sketch.> Write <math|<around|\<langle\>|q<rsub|1>,\<ldots\>,q<rsub|m>|\<rangle\>>=<around|\<langle\>|\<Omega\>,M<around|(|q<rsub|1>|)>*\<cdots\>*M<around|(|q<rsub|m>|)>*\<Omega\>|\<rangle\>>>.

  <\itemize-minus>
    <item><strong|Simultaneous rotation.> If <math|K\<in\>O<around|(|4|)>>
    maps some <math|u> with <math|t<around|(|u|)>\<gtr\>0> to a vector with
    positive time, then <math|<around|\<langle\>|q<rsub|1>,\<ldots\>,q<rsub|m>|\<rangle\>>=<around|\<langle\>|K*q<rsub|1>,\<ldots\>,K*q<rsub|m>|\<rangle\>>>.
    Place cluster <math|j> at <math|n*<space|0.17em>j*<space|0.17em>u>, apply
    V.1.j to both orders, and use covariance of <math|S> at finite <math|n>.

    <item><strong|Exchange of two clusters.> Let <math|k> exchange the time
    axis with the first spatial axis. Place four clusters at <math|0>,
    <math|n*<around|(|e<rsub|t>+2*e<rsub|1>|)>>,
    <math|n*<around|(|2*e<rsub|t>+e<rsub|1>|)>> and
    <math|n*<around|(|3*e<rsub|t>+3*e<rsub|1>|)>>, and apply <math|k>: the
    two middle clusters exchange their time order. With the
    simultaneous-rotation step for <math|u=e<rsub|t>+e<rsub|1>>, this gives
    <math|<around|\<langle\>|x,y,w,z|\<rangle\>>=<around|\<langle\>|x,w,y,z|\<rangle\>>>.

    <item><strong|Commutativity of generators.> The vectors
    <math|P<rsub|0>\|f\<rangle\>=M<around|(|f|)>*\<Omega\>> for positive
    <math|f> have dense linear span in <math|\<cal-H\><rsub|0>>, and
    <math|M<around|(|f|)><rsup|\<ast\>>=M*<around|(|\<Theta\>*f|)>>. Thus
    <math|<around|\<langle\>|M<around|(|f|)>*\<Omega\>,M<around|(|u|)>*M<around|(|v|)>*M<around|(|p|)>*\<Omega\>|\<rangle\>>=<around|\<langle\>|\<Theta\>*f,u,v,p|\<rangle\>>>
    is symmetric in <math|u,v>. Testing on both dense spans proves
    <math|M<around|(|u|)>*M<around|(|v|)>=M<around|(|v|)>*M<around|(|u|)>>.

    <item><strong|Extension to <math|\<cal-A\>>.> The generators are closed
    under adjoints, so <math|\<cal-A\>> is commutative.

    <item><strong|Cyclicity and separation.>
    <math|\<cal-A\>*\<Omega\>\<supset\>P<rsub|0><around|{|\|b|\<rangle\>>}>
    is dense. If <math|p*\<Omega\>=0>, then
    <math|p*<space|0.17em>a*\<Omega\>=a*<space|0.17em>p*\<Omega\>=0> for all
    <math|a\<in\>\<cal-A\>>, so <math|p=0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ground.same_up>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L45-L61>,
  <hlink|<verbatim|Ground.exchanges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L72-L93>,
  <hlink|<verbatim|Ground.gens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L95-L136>,
  <hlink|<verbatim|Ground.adjunction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Permute.lean#L149-L161>,
  <hlink|<verbatim|Ground.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L145-L162>,
  <hlink|<verbatim|Ground.attains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L115-L124>.

  <strong|Lemma V.1.l (separability; Gelfand\URiesz; B12).> <math|\<cal-A\>>
  is norm-separable, and the first part of V.1.5 holds. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Separability.> By multilinearity each generator is a finite
    combination of <math|M<around|(|x;e|)>> with basis labels <math|e>. For
    fixed arity, degrees and basis indices,
    <math|x\<mapsto\>M<around|(|x;e|)>> is continuous on the separable set
    <math|<math-up|Conf><rsub|n>>. A countable union of separable images,
    finite products, adjoints and closure stay separable.

    <item><strong|Gelfand\URiesz.> Gelfand gives
    <math|\<cal-A\>\<cong\>C<around|(|X|)>>, and a countable dense sequence
    makes <math|X> metrizable. The vacuum state is represented by a
    probability measure <math|\<nu\>>.

    <item><strong|Full support.> If <math|\<nu\><around|(|O|)>=0> for some
    open <math|O\<ni\>\<xi\><rsub|0>>, a continuous bump supported in
    <math|O> corresponds to an element <math|p\<ne\>0> with
    <math|<around|\<\|\|\>|p*\<Omega\>|\<\|\|\>><rsup|2>=<big|int><around|\||<wide|p|^>|\|><rsup|2>*d*\<nu\>=0>,
    contradicting separation.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B12.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B12.lean#L81-L92>,
  <hlink|<verbatim|Ground.resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L126-L140>,
  <hlink|<verbatim|Ground.tiny>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L34-L41>,
  <hlink|<verbatim|Ground.supports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Spectrum.lean#L43-L66>.

  <subsection|4.4 Phase reflection and rotation
  invariance><label|44-phase-reflection-and-rotation-invariance>

  <strong|Lemma V.1.m (grid passage; B04).>

  <\itemize-minus>
    <item><strong|Setting.> Assume the cutoff laws and generic point limits
    of the Seed. Let <math|w> have real labels at generic points of the
    level-<math|k> grid, and let <math|w<rsub|j>> be its translate by
    <math|t*<space|0.17em>j> grid steps in every coordinate.

    <item><strong|Statement.> For <math|i\<less\>j> and all large <math|t>,
    the lattice pair expectation <math|\<bbb-E\><rsub|N,p><around|[|<math-up|Re><around|(|f<rsub|i>*f<rsub|j>|)>|]>>
    of Ÿ2 converges, along the ordered limit, to
  </itemize-minus>

  <\equation*>
    e<rsub|i*j><around|(|t|)>=<math-up|Re><around*|[|S*<around|(|w<rsub|i>\<cdot\>w<rsub|j>|)>-S*<around|(|w<rsub|i>\<cdot\><around|(|\<vartheta\>*w|)><rsub|j>|)>-S*<around|(|<around|(|\<vartheta\>*w|)><rsub|i>\<cdot\>w<rsub|j>|)>+S*<around|(|<around|(|\<vartheta\>*w|)><rsub|i>\<cdot\><around|(|\<vartheta\>*w|)><rsub|j>|)>|]>.
  </equation*>

  <em|Proof sketch.> Expand the product into four point moments of the Wilson
  family. For large <math|t> the union of two translated grid words is
  generic, and the point limits of the Seed apply term by term. The
  reflection acts before the shift, so the shift stays outside it. <em|Lean:>
  <hlink|<verbatim|Work.B04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B04.lean#L168-L177>,
  <hlink|<verbatim|Grid.Expects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L78-L79>,
  <hlink|<verbatim|Grid.event>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L51-L54>.

  <strong|Lemma V.1.n (phase reflection; B05).>

  <\itemize-minus>
    <item><strong|Hypotheses.> The Seed, the grid hypothesis,
    <math|O<around|(|4|)>>-covariance, V.1.h and V.1.i.

    <item><strong|Statement.> <math|M<around|(|w|)>=M*<around|(|\<vartheta\>*w|)>>
    for every separated word with arbitrary labels.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|(1) Real labels at generic grid points.> Here
    <math|\<Theta\>*w> is a permutation of <math|\<vartheta\>*w>, so
    <math|M<around|(|w|)><rsup|\<ast\>>=M*<around|(|\<vartheta\>*w|)>>. Hence
    <math|D\<assign\>M<around|(|w|)>-M*<around|(|\<vartheta\>*w|)>> satisfies
    <math|D<rsup|\<ast\>>=-D> and <math|a\<assign\><around|\<langle\>|\<Omega\>,D<rsup|2>*\<Omega\>|\<rangle\>>=-<around|\<\|\|\>|D*\<Omega\>|\<\|\|\>><rsup|2>\<leqslant\>0>.

    <item><strong|(2) The variance bound.> Fix <math|q> and
    <math|\<varkappa\>>. For all large <math|t>, the approximants
    <math|g<rsub|0>,\<ldots\>,g<rsub|q>> satisfy, late in the cutoff,
  </itemize-minus>

  <\equation*>
    0\<leqslant\><big|int><around*|(|<big|sum><rsub|j=0><rsup|q>g<rsub|j>|)><rsup|2>\<leqslant\><around|(|q+1|)>*R<rsub|\<varkappa\>><rsup|2>+2*<big|sum><rsub|0\<leqslant\>i\<less\>j\<leqslant\>q><around*|(|\<bbb-E\><rsub|N,p><around|[|<math-up|Re><around|(|f<rsub|i>*f<rsub|j>|)>|]>+\<delta\><rsub|\<varkappa\>>|)>.
  </equation*>

  First take the ordered cutoff limit using V.1.m. Then let
  <math|t\<to\>\<infty\>>; V.1.j gives <math|e<rsub|i*j><around|(|t|)>\<to\>a>,
  so

  <\equation*>
    0\<leqslant\><around|(|q+1|)>*<around*|(|R<rsub|\<varkappa\>><rsup|2>+q*<around|(|a+\<delta\><rsub|\<varkappa\>>|)>|)>.
  </equation*>

  Let <math|q\<to\>\<infty\>>, then <math|\<varkappa\>\<to\>\<infty\>>. This
  gives <math|a\<geqslant\>0>, hence <math|D*\<Omega\>=0> and <math|D=0> by
  V.1.k.

  <\itemize-minus>
    <item><strong|(3) Extension to all configurations.> Approximate a generic
    configuration by grid configurations of finer levels; the grid hypothesis
    provides a cofinal set of levels. Both sides are continuous (V.1.i), so
    equality holds on the co-null set of generic configurations, and then on
    <math|<math-up|Conf><rsub|n>>.

    <item><strong|(4) Complex labels.> Extend by multilinearity, since real
    basis vectors span.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L90-L115>,
  <hlink|<verbatim|B05.real_depot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B05.lean#L48-L88>,
  <hlink|<verbatim|Grid.horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Square.lean#L38-L50>,
  <hlink|<verbatim|Grid.estimates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Square.lean#L56-L63>,
  <verbatim|Grid.Covering.square> in <hlink|<verbatim|Phase/Square.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Square.lean>,
  <hlink|<verbatim|Grid.anti>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L33>.

  <strong|Lemma V.1.o (invariance under <math|O<around|(|4|)>>; B06).> Given
  phase reflection and the rotation laws,
  <math|M<around|(|w|)>=M*<around|(|K*w|)>> for all
  <math|K\<in\>O<around|(|4|)>>. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Products.> The set of <math|K> with
    <math|M<around|(|\<cdummy\>|)>=M*<around|(|K<space|0.17em>\<cdot\>|)>> is
    closed under products. It contains the time reflection, because by the
    rotation law <math|R<around|(|\<vartheta\>|)>> is the mirror action on
    <math|F<rsub|d><around|(|S|)>> and V.1.n applies.

    <item><strong|Two-point functions.> <math|<around|\<langle\>|p,x|\<rangle\>>=<around|\<langle\>|K*p,K*x|\<rangle\>>>
    for every <math|K>. This is V.1.k's simultaneous-rotation step. If
    <math|t*<around|(|K*e<rsub|t>|)>\<gtr\>0> use <math|u=e<rsub|t>>; if
    <math|t*<around|(|K*e<rsub|t>|)>=0> use
    <math|u=e<rsub|t>+K<rsup|-1>*e<rsub|t>>; if
    <math|t*<around|(|K*e<rsub|t>|)>\<less\>0> compose with the time
    reflection.

    <item><strong|Conjugates of the time reflection.> Rotating a pair back by
    <math|J<rsup|-1>>, reflecting the second factor and rotating forward
    gives <math|<around|\<langle\>|p,x|\<rangle\>>=<around|\<langle\>|p,J*\<vartheta\>*J<rsup|-1>*x|\<rangle\>>>
    for all <math|p>. Since <math|M*<around|(|\<Theta\>*p|)>=M<around|(|p|)><rsup|\<ast\>>>,
    this gives <math|M<around|(|x|)>*\<Omega\>=M*<around|(|J*\<vartheta\>*J<rsup|-1>*x|)>*\<Omega\>>,
    hence equality by separation.

    <item><strong|Generation.> Every hyperplane reflection is such a
    conjugate, and reflections generate <math|O<around|(|4|)>>
    (Cartan\UDieudonné). No separate treatment of time\Uspace rotations is
    needed.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B06.lean#L238-L242>,
  auxiliary lemmas in <hlink|<verbatim|Work/B06.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B06.lean>.

  <subsection|4.5 The phase tables><label|45-the-phase-tables>

  <strong|Lemma V.1.p (phase tables, symmetries, barycenter; B07).>

  <\itemize-minus>
    <item><strong|Definition.> <math|S<rsup|\<xi\>><around|(|x;v|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|x;v|)>|)>>
    is a table.

    <item><strong|Properties.>

    <\itemize-minus>
      <item>It is basic: permutation symmetry,
      <math|S<rsup|\<xi\>><around|(|\<emptyset\>|)>=1>, unit labels.

      <item>It is translation invariant, respects <math|S> (labels in
      <math|N<rsub|d><around|(|S|)>> give <math|M=0>), and is
      <math|O<around|(|4|)>>-covariant (V.1.o).

      <item>It is real-spin. Signed permutations act through <math|R> by the
      rotation law. Reality: <math|S<rsup|\<xi\>><around|(|x;<wide|v|\<bar\>>|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|<wide|w|\<bar\>>|)>|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|\<vartheta\><wide|w|\<bar\>>|)>|)>=\<chi\><rsub|\<xi\>>*<around|(|M*<around|(|\<Theta\>*w|)>|)>=<wide|\<chi\><rsub|\<xi\>><around|(|M<around|(|w|)>|)>|\<bar\>>>,
      using V.1.n and a permutation.

      <item>It is smooth: <math|\<chi\><rsub|\<xi\>>> is extended by
      Hahn\UBanach to a bounded functional on
      <math|B<around|(|\<cal-H\><rsub|0>|)>> and composed with the smooth map
      <math|x\<mapsto\>M<around|(|x;v|)>>.
    </itemize-minus>

    <item><strong|Barycenter.> <math|<big|int>S<rsup|\<xi\>><around|(|w|)>*<space|0.17em>d*\<nu\>=<around|\<langle\>|\<Omega\>,M<around|(|w|)>*\<Omega\>|\<rangle\>>=S<around|(|w|)>>,
    by V.1.l and V.1.i.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L119-L124>,
  <hlink|<verbatim|B07.state_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L83-L106>,
  <hlink|<verbatim|B07.state_smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B07.lean#L108-L117>,
  <hlink|<verbatim|Resolution.barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117>.

  <strong|Lemma V.1.q (reflection positivity in every phase; B08).> Every
  <math|S<rsup|\<xi\>>> is reflection positive for every axis, in point and
  smeared form. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Time axis.> Given finitely many positive words
    <math|w<rsub|i>>, choose <math|d> so they all lie in
    <math|<around|(|0,d|)>>. By V.1.i, <math|M*<around|(|\<Theta\>*w<rsub|i>\<cdot\>w<rsub|j>|)>=Y<rsub|i><rsup|\<ast\>>*Y<rsub|j>>
    with <math|Y<rsub|i>=T<rsub|d><around|(|w<rsub|i>|)>\|<rsub|\<cal-H\><rsub|0>>:\<cal-H\><rsub|0>\<to\>\<cal-H\>>.
    Therefore <math|<big|sum><wide|c|\<bar\>><rsub|i>*c<rsub|j>*M*<around|(|\<Theta\>*w<rsub|i>\<cdot\>w<rsub|j>|)>=Y<rsup|\<ast\>>*Y\<geqslant\>0>,
    where <math|Y=<big|sum>c<rsub|i>*Y<rsub|i>>. Spectral permanence makes
    its character value nonnegative.

    <item><strong|Other axes.> Real-spin exchanges the axis with time.

    <item><strong|Smeared form.> Realize the positive point kernel in a
    Hilbert space. A compactly supported test gives the integral of its word
    vectors against the test function. Smoothness makes these vector-valued
    functions continuous and integrable; the smeared quadratic form is the
    squared norm of a finite sum of these integrals.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L206-L209>,
  <hlink|<verbatim|B08.char_nonneg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L27-L33>,
  <hlink|<verbatim|B08.smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B08.lean#L193-L203>.

  <strong|Lemma V.1.r (derivative, inclusion and stress laws in every phase;
  B09).> Every <math|S<rsup|\<xi\>>> satisfies the inclusion and derivative
  identities of the plan and the stress-tensor Ward identities. <em|Proof
  sketch.>

  <\itemize-minus>
    <item><strong|The evaluator.> There is a bounded functional
    <math|\<varphi\><rsub|\<xi\>>> on <math|B<around|(|\<cal-H\>|)>> with
    <math|S<rsup|\<xi\>><around|(|x;v|)>=\<varphi\><rsub|\<xi\>>*<around*|(|T<rsub|D>*<around|(|w<around|(|x|)>+s|)>|)>>
    on a padded neighbourhood of each configuration; it is
    <math|\<chi\><rsub|\<xi\>>> extended by Hahn\UBanach, composed with
    compression.

    <item><strong|Derivatives and inclusions.> The identities hold among slab
    operators. Derivatives come from V.1.g; pairing with positive-word
    vectors reduces inclusions to the identities of <math|S>.

    <item><strong|Stress laws.> Choose one shift <math|s> and width <math|D>
    that put the configuration and the support of a smooth compactly
    supported window <math|\<chi\>> in <math|<around|(|0,D|)>>, with
    <math|\<chi\>=1> near the distinguished point <math|x<rsub|0>> and all
    spectators outside its support. The operators
    <math|-<big|sum><rsub|a><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<space|0.17em>T<rsub|D>*<around|(|<around|(|J<rsub|a*b><around|(|y|)>*B<around|(|x<rsub|0>|)>*\<cdots\>|)>+s|)>*<space|0.17em>d*y>
    are Bochner integrals. The shell weight vanishes near every possible
    collision, which gives integrability. Pairing with positive-word vectors
    adds only exterior points outside the window, so the Ward identities of
    <math|S> apply. The angular law uses the additional weight
    <math|<around|(|g*<around|(|y-x<rsub|0>|)>|)><rsub|b>> for a skew matrix
    <math|g>. Apply <math|\<varphi\><rsub|\<xi\>>> to both operator
    identities.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09.lean#L12-L15>,
  <hlink|<verbatim|B09.has_evaluator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09/Core.lean#L114-L129>,
  <hlink|<verbatim|B09.Evaluates.flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B09/Shell.lean#L147-L215>.

  <strong|Lemma V.1.s (caps in every phase; B10, B11).>

  <\itemize-minus>
    <item>(i) Uniform zeroth cap: V.1.6(c).

    <item>(ii) A smooth basic table that respects <math|S>, satisfies the
    inclusion and derivative identities, and has the zeroth cap for every
    fixed list of labels, has caps on all derivatives.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>(i) Translate <math|w> into a slab with buffer <math|r> and unit
    padding. Then <math|<around|\||\<chi\><rsub|\<xi\>><around|(|M<around|(|w|)>|)>|\|>\<leqslant\><around|\<\|\|\>|M<around|(|w|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>>,
    and the all-copy bound applies; the constants depend only on
    <math|<around|(|D,\<rho\>|)>>.

    <item>(ii) A coordinate derivative replaces one label by its derivative
    label, raising its degree by one. Induct on the order, and bound each
    multilinear derivative norm by the sum over its finitely many coordinate
    directions. The constants may depend on the arity, labels and derivative
    order, but not on the positions or <math|r>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B11.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B11.lean#L75-L89>,
  <hlink|<verbatim|B11.phase_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B11.lean#L60-L73>,
  <hlink|<verbatim|Work.B10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>,
  <hlink|<verbatim|B10.capped_tags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L72-L90>,
  <hlink|<verbatim|Bid.OneCap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98>.

  <subsection|4.6 Null spaces of the phases><label|46-null-spaces-of-the-phases>

  <strong|Lemma V.1.t (moment bounds give bounds in every phase).> Let
  <math|\<tau\>\<geqslant\>0> and <math|p\<in\>\<cal-A\>>. If
  <math|<around|\<langle\>|\<Omega\>,<around|(|p<rsup|\<ast\>>*p|)><rsup|n>*\<Omega\>|\<rangle\>>\<leqslant\>\<tau\><rsup|2*n>>
  for every <math|n\<in\>\<bbb-N\>>, then
  <math|<around|\||\<chi\><rsub|\<xi\>><around|(|p|)>|\|>\<leqslant\>\<tau\>>
  for every <math|\<xi\>>. <em|Proof sketch.>

  <\itemize-minus>
    <item>The hypothesis says <math|<big|int><around|\||\<chi\><rsub|\<xi\>><around|(|p|)>|\|><rsup|2*n>*d*\<nu\>\<leqslant\>\<tau\><rsup|2*n>>
    for all <math|n>.

    <item>If <math|<around|\||\<chi\><rsub|\<xi\><rsub|0>><around|(|p|)>|\|>\<gtr\>\<tau\><rprime|'>\<gtr\>\<tau\>>,
    then continuity gives an open <math|O\<ni\>\<xi\><rsub|0>> on which
    <math|<around|\||\<chi\><rsub|\<xi\>><around|(|p|)>|\|>\<gtr\>\<tau\><rprime|'>>.

    <item>Full support gives <math|\<nu\><around|(|O|)>\<gtr\>0>, so
    <math|\<nu\><around|(|O|)>*\<tau\><rprime|'><rsup|2*n>\<leqslant\>\<tau\><rsup|2*n>>
    for all <math|n>, a contradiction.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Retain.bit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L22-L58>,
  <hlink|<verbatim|Retain.Tall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L21>.

  <strong|Lemma V.1.u (detectors; B15\UB18).>

  <\itemize-minus>
    <item><strong|The detectors.> Assume the Seed and phase reflection. Fix a
    degree <math|d>, an index <math|k> of its corrected-field data, and a
    test row with a basis index. Let <math|F> be a one-point word at a
    prescribed grid position, with free value <math|s> at the rescaled
    position. For a two-point row, let <math|G> be its second one-point word,
    <math|s<rprime|'>> its free value and <math|\<gamma\>> the free cumulant.
    There are detectors in <math|\<cal-A\>>:

    <\itemize-minus>
      <item>the one-point detector <math|\<Delta\><rsub|1>=M<around|(|F|)>-s\<cdot\>1>;

      <item>the two-point detector <math|\<Delta\><rsub|2>=M*<around|(|F\<cdot\>G|)>-s*<space|0.17em>M<around|(|G|)>-s<rprime|'>*M<around|(|F|)>+<around|(|s*s<rprime|'>-\<gamma\>|)>\<cdot\>1>.
    </itemize-minus>

    <item><strong|Statement.> For every slot there is a one-point detector;
    for a two-point row there is also the two-point detector. Each satisfies
    <math|<around|\<langle\>|\<Omega\>,<around|(|\<Delta\><rsup|\<ast\>>*\<Delta\>|)><rsup|n>*\<Omega\>|\<rangle\>>\<leqslant\><math-up|gap><rsub|k><rsup|2*n>>
    for every <math|n\<in\>\<bbb-N\>>, where
    <math|<math-up|gap><rsub|k>\<geqslant\>0> and
    <math|<math-up|gap><rsub|k>\<to\>0>.
  </itemize-minus>

  <em|Proof sketch.> Each detector is the cluster element
  <math|c<rsub|E>=<big|sum><rsub|i>\<lambda\><rsub|i>*M<around|(|<text|word><rsub|i>|)>>
  of a finite lattice <em|episode> <math|E>, whose chessboard budget is
  <math|<math-up|gap><rsub|k>> (B18, from the corrected-field data). Then:

  <\itemize-minus>
    <item><strong|B15 (cutoff level).> The absolute lattice expectation of
    the product of <math|2*n> diagonal translates of the episode function,
    alternately conjugated, is at most <math|<around|(|<math-up|gap><rsub|k>+\<varepsilon\>|)><rsup|2*n>>
    late in the cutoff. This is the chessboard estimate.

    <item><strong|B16 (limit table).> For fixed <math|n> and all sufficiently
    large translations, expand the product into finitely many monomials.
    Their points are generic: within each cluster this is part of the data,
    and between clusters each coordinate tie excludes at most one translation
    parameter. Point limits apply to each monomial, including the conjugated
    cutoff labels.

    <item><strong|B17 (vacuum moments).> Let the translation tend to infinity
    and apply V.1.j to each ordered monomial, using
    <math|M<around|(|<wide|w|\<bar\>>|)>=M<around|(|w|)><rsup|\<ast\>>> from
    V.1.i and V.1.n. The limit is <math|<around|\<langle\>|\<Omega\>,<around|(|c<rsub|E><rsup|\<ast\>>*c<rsub|E>|)><rsup|n>*\<Omega\>|\<rangle\>>>.
    Finally let <math|\<varepsilon\>*\<downarrow\>*0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B15.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B15.lean#L108-L118>,
  <hlink|<verbatim|B16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B16.lean#L185-L190>,
  <hlink|<verbatim|B17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B17.lean#L71-L90>,
  <hlink|<verbatim|B18.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B18.lean#L130-L133>,
  <hlink|<verbatim|Bid.episode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L96-L100>;
  definitions <hlink|<verbatim|Bid.Episode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L18-L27>,
  <hlink|<verbatim|Episode.Sold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L38-L40>,
  <hlink|<verbatim|Retain.\<Delta\>one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L73>,
  <hlink|<verbatim|Retain.\<Delta\>two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L75-L77>,
  <hlink|<verbatim|Retain.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L81-L83>.

  <strong|Lemma V.1.v (retention of null spaces).> Assume the corrected-field
  data and detector bounds of V.1.u. If a table <math|S<rprime|'>> is
  symmetric, respects <math|S>, and satisfies
  <math|S<rprime|'><around|(|w|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|w|)>|)>>
  for every separated word and some fixed <math|\<xi\>>, then
  <math|N<rsub|d><around|(|S<rprime|'>|)>=N<rsub|d><around|(|S|)>> for every
  <math|d>. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Comparison maps.> Let <math|F<rsub|d><rsup|<math-up|free>>>
    be the free-field space in the corrected-field data. Define
    <math|U<rsub|k>:F<rsub|d><rsup|<math-up|free>>\<to\>V<rsub|d>> by sending
    its chosen basis to the corrected labels. Compose <math|U<rsub|k>>, the
    quotient map for <math|S<rprime|'>>, and the finite family of
    <math|S<rprime|'>>-probes to obtain <math|f<rsub|k>:F<rsub|d><rsup|<math-up|free>>\<to\>\<bbb-C\><rsup|m>>.

    <item><strong|Injectivity.> V.1.t and V.1.u give one-point errors at most
    <math|<math-up|gap><rsub|k>> and two-point errors at most
    <math|<math-up|gap><rsub|k><around|(|1+<around|\||s|\|>+<around|\||s<rprime|'>|\|>|)>>.
    The free singleton values converge and are bounded, and the rescaled test
    points converge. Thus <math|f<rsub|k>> converges in norm to the injective
    free test map. Injectivity is open in this finite-dimensional operator
    space, so <math|f<rsub|k>> is injective for large <math|k>.

    <item><strong|Conclusion.> For all large <math|k>,
    <math|q<rsub|d>*U<rsub|k>> is also surjective by the spanning hypothesis.
    If <math|v\<in\>N<rsub|d><around|(|S<rprime|'>|)>>, choose
    <math|z\<in\>F<rsub|d><rsup|<math-up|free>>> with
    <math|q<rsub|d>*U<rsub|k>*z=q<rsub|d>*v>. Since <math|S<rprime|'>>
    respects <math|S>, <math|U<rsub|k>*z\<in\>N<rsub|d><around|(|S<rprime|'>|)>>,
    hence <math|f<rsub|k>*z=0>. Injectivity gives <math|z=0>, so
    <math|q<rsub|d>*v=0>. The reverse inclusion is the respect hypothesis.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Retain.lift_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Picks.lean#L128-L158>,
  <hlink|<verbatim|Retain.result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Picks.lean#L62-L108>,
  <hlink|<verbatim|Retain.pair_near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L100-L117>.

  <subsection|4.7 Choosing a phase><label|47-choosing-a-phase>

  <strong|Lemma V.1.w (slab operators in a phase chamber; B13).> For every
  <math|\<xi\>>, every time-axis chamber of <math|S<rsup|\<xi\>>> carries a
  slab family with <math|<around|\<\|\|\>|T<rsup|\<xi\>><rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>>.
  <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|The train in the phase.> In the phase chamber the train
    Gram is <math|S<rsup|\<xi\>>*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)>=\<chi\><rsub|\<xi\>>*<around|(|Y<around|(|v<rsub|n>|)><rsup|\<ast\>>*Y<around|(|v<rsub|n>|)>|)>>,
    where <math|Y<around|(|v<rsub|n>|)>=<around|(|T<rsub|d><around|(|w|)><rsup|\<ast\>>*T<rsub|d><around|(|w|)>|)><rsup|n>*Y<around|(|v|)>>.

    <item><strong|Bench in the phase.> Hence
    <math|<around|\||S<rsup|\<xi\>>*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)>|\|>\<leqslant\><around|\<\|\|\>|\<chi\><rsub|\<xi\>>|\<\|\|\>><space|0.17em><around|\<\|\|\>|Y<around|(|v|)>|\<\|\|\>><rsup|2>*<space|0.17em>\<Delta\><rsup|4*n>>
    for every <math|\<Delta\>\<geqslant\><around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>>.
    This is the bench in the phase, with a constant depending on <math|v>.

    <item><strong|Conclusion.> V.1.e gives norm <math|\<leqslant\>\<Delta\>>
    for every <math|\<Delta\>\<gtr\><around|\<\|\|\>|T<rsub|d><around|(|w|)>|\<\|\|\>>>;
    the constant depending on <math|v> drops out. No operator inequality
    between the chambers is used.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B13.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B13.lean#L91-L105>,
  <hlink|<verbatim|B13.buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B13.lean#L51-L72>.

  <strong|Lemma V.1.x (one countable family; B14).> There is a single
  sequence <math|<around|(|b<rsub|k>|)>> of positive words, depending only on
  the label register and the time axis, whose vectors have dense linear span
  in every OS Hilbert space realizing the positive-word Gram form of a
  symmetric smooth table. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Parametrization.> For fixed arity and degrees, positive
    words are parametrized by a separable space: positive separated
    configurations times label coefficients. Choose countable dense subsets,
    together with the empty word.

    <item><strong|Continuity.> Inner products of the vectors are values of
    the table at combined configurations, which are continuous in the points
    (smoothness) and in the coefficients (finite-dimensional multilinearity).
    So the vector map is continuous, and the closed span of the countable
    family contains all vectors.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.B14.universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L119-L143>,
  <hlink|<verbatim|B14.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L145-L148>.

  <strong|Lemma V.1.y (almost every phase has a unique ground state).>

  <\itemize-minus>
    <item><strong|Statement.> In the setting of V.1.8, for each positive
    <math|b>, <math|P<rsup|\<xi\>><rsub|0>\|b\<rangle\><rsub|\<xi\>>=S<rsup|\<xi\>><around|(|b|)>*<space|0.17em>\<Omega\><rsub|\<xi\>>>
    for <math|\<nu\>>-almost every <math|\<xi\>>. This proves the uniqueness
    assertion of V.1.8.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|The variance identity.> Let
    <math|\<omega\><rsub|\<xi\>>=<around|\<\|\|\>|P<rsub|0><rsup|\<xi\>>\|b|\<rangle\>><rsub|\<xi\>>\<\|\|\><rsup|2>=lim<rsub|n\<to\>\<infty\>>
    S<rsup|\<xi\>>*<around|(|\<Theta\>*\<tau\><rsub|n>*b\<cdot\>\<tau\><rsub|n>*b|)>>.
    For <math|n\<in\>\<bbb-N\>> these functions of <math|\<xi\>> are
    continuous, nonnegative, decreasing in <math|n> and dominated by their
    value at <math|n=0>, which is integrable on compact <math|X>. Their
    integrals are the corresponding quantities for <math|S>. Dominated
    convergence gives <math|<big|int>\<omega\><rsub|\<xi\>>*<space|0.17em>d*\<nu\>=<around|\<\|\|\>|P<rsub|0>\|b|\<rangle\>>\<\|\|\><rsup|2>=<around|\<\|\|\>|M<around|(|b|)>*\<Omega\>|\<\|\|\>><rsup|2>=<big|int><around|\||\<chi\><rsub|\<xi\>><around|(|M<around|(|b|)>|)>|\|><rsup|2>*d*\<nu\>>.

    <item><strong|Almost-everywhere vanishing.> Since
    <math|<around|\<\|\|\>|P<rsub|0><rsup|\<xi\>>\|b|\<rangle\>>-S<rsup|\<xi\>><around|(|b|)>*\<Omega\><rsub|\<xi\>>\<\|\|\><rsup|2>=\<omega\><rsub|\<xi\>>-<around|\||S<rsup|\<xi\>><around|(|b|)>|\|><rsup|2>\<geqslant\>0>
    has integral zero, it vanishes a.e.

    <item><strong|Uniqueness.> Apply this to the family
    <math|<around|(|b<rsub|k>|)>> of V.1.x; the union of the countably many
    null sets is null. Outside it, <math|P<rsub|0><rsup|\<xi\>>> maps a dense
    set into <math|\<bbb-C\>*\<Omega\><rsub|\<xi\>>>, so
    <math|\<cal-H\><rsub|0><rsup|\<xi\>>=\<bbb-C\>*\<Omega\><rsub|\<xi\>>>.
    Since <math|\<nu\><around|(|X|)>=1>, such <math|\<xi\>> exist; the choice
    is not canonical.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Cluster.exp_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L56-L86>,
  <hlink|<verbatim|Cluster.champ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L41-L47>,
  <hlink|<verbatim|Cluster.fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L31-L36>,
  <hlink|<verbatim|Cluster.lifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L91-L110>,
  <hlink|<verbatim|Cluster.selects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L111-L114>.

  <strong|Lemma V.1.z (assembly).> V.1.9 holds. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Slab and phase constructions.> B01 and B02 give the
    original slab family with its laws. V.1.h gives spatial invariance; B03
    gives the compression identities; B04 and B05 give phase reflection;
    B15\UB18 give the detector bounds; and B12 gives separability. For any
    decomposition, B06 and B07 construct the tables, and B08\UB11 give their
    hierarchy and field laws. B13 and B02 give slab families in the phase
    chambers, and B14 supplies a common countable total family.

    <item><strong|The certificate.> Choose a chamber for every phase, select
    <math|\<xi\><rsub|\<ast\>>> by V.1.y, and apply V.1.v to obtain
    <math|N<rsub|d><around|(|S<rsup|\<xi\>>|)>=N<rsub|d><around|(|S|)>> for
    every <math|\<xi\>,d>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.Looms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Market.lean#L10-L36>,
  <hlink|<verbatim|Phase.Loom.cleanse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L60-L76>,
  <hlink|<verbatim|Pert.withFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <strong|Distinctive arguments.>

  <\itemize-minus>
    <item><strong|The decomposition uses the OS space of the limit
    correlations.> Three properties require separate arguments:

    <\itemize-minus>
      <item>spatial invariance of the ground states (V.1.h);

      <item>commutativity of <math|\<cal-A\>> (V.1.k);

      <item>reality of phase values (V.1.n).
    </itemize-minus>

    <item><strong|Lattice input after the limit.> It enters at three places
    only: the bench (V.1.7), phase reflection (V.1.n, through the grid
    hypothesis), and the detectors (V.1.u).

    <item><strong|Phase reflection is the least standard argument.> It is a
    variance-positivity statement for far-separated copies of a real lattice
    variable. It is equivalent to the claim that the abstract characters
    assign real values to real observables.

    <item><strong|Detectors.> They require quantitative UV input: one- and
    two-point chessboard deviations <math|<math-up|gap><rsub|k>\<to\>0> of
    corrected fields from free values. These estimates preserve the field
    null spaces in every phase.
  </itemize-minus>

  <strong|Routine but long.>

  <\itemize-minus>
    <item>B02, B03, B09, B12, B14, B16, B18: smooth dependence on positions,
    label quotients, finite polynomial limits, separability.

    <item><verbatim|SNAG>, <verbatim|Paley>, <verbatim|Heat> (about 1,100
    lines) reprove textbook theorems in an explicit form adapted to the
    library.
  </itemize-minus>

  <strong|Unusual or worth checking.>

  <\enumerate>
    <item><strong|Selection.> The selected phase comes from a
    measure-theoretic existence argument and is not canonical. No finite
    bound on the number of phases is asserted. V.3 later proves unique ground
    states for every phase.

    <item><strong|Sub-width in the bench.> The bench gives the train bound
    only at a lattice-compatible width <math|s\<leqslant\>d>. The remaining
    width is absorbed by the contraction <math|E<rsub|d-s>> (V.1.f).

    <item><strong|Which symmetries are used where.>

    <\itemize-minus>
      <item>Commutativity uses covariance only under the exchange of the time
      axis with one spatial axis. This is a lattice symmetry, already
      contained in the real-spin part of the hierarchy.

      <item>Spatial invariance of <math|\<cal-H\><rsub|0>> needs arbitrary
      hyperplane reflections, i.e. the continuum <math|O<around|(|4|)>>
      action of VI.1. In the Lean, both steps draw on that action.

      <item>Both use improper elements of <math|O<around|(|4|)>>
      (reflections), not only rotations.
    </itemize-minus>

    <item><strong|Scope of the certificate.> Its unique-ground-state
    assertion concerns the time-axis chamber of the selected phase. It also
    records the hierarchy, field laws and null-space equality for every
    phase. The continuation linked to the selected Wightman realization uses
    that selected table.

    <item><strong|Smoothness hypothesis in B02.> B02 needs the derivative
    identities of the table on which the slab family lives. For phases these
    come from B09, which uses the slab laws of <math|S>, so the two
    applications of B02 are ordered.
  </enumerate>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|limit table, value on
  a word>|<cell|<verbatim|Table>, <verbatim|S.expect
  w>>|<cell|<math|S=S<rsup|<math-up|mix>>>,
  <math|S<around|(|w|)>>>>|<row|<cell|OS reflection; linear time reflection
  of a word>|<cell|<verbatim|reflect w timeAxis>;
  <hlink|<verbatim|Grid.anti>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L33>>|<cell|<math|\<Theta\>*w>;
  <math|\<vartheta\>*w>>>|<row|<cell|OS space, vector of a positive
  word>|<cell|<verbatim|GNS.H>, <verbatim|GNS.plant>>|<cell|<math|\<cal-H\>>,
  <math|<around|\<lvert\>|b|\<rangle\>>>>>|<row|<cell|chamber>|<cell|<hlink|<verbatim|Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>>|<cell|<math|<around|(|\<cal-H\>,E<rsub|t>,U<rsub|y>|)>>>>|<row|<cell|ground
  space, projection, vacuum>|<cell|<hlink|<verbatim|Semigroup.ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Core.lean#L14>,
  <verbatim|orth>, <hlink|<verbatim|omega0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L32-L33>>|<cell|<math|\<cal-H\><rsub|0>>,
  <math|P<rsub|0>>, <math|\<Omega\>>>>|<row|<cell|real-time group;
  4-parameter group; spectral measure>|<cell|<hlink|<verbatim|edge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Imaginary.lean#L49>;
  <hlink|<verbatim|unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Heat/Lift.lean#L50-L58>;
  <hlink|<verbatim|Orbit.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SNAG/Escape.lean#L50>>|<cell|<math|e<rsup|i*s*H>>;
  <math|V<around|(|x|)>>; <math|P*<around|(|d*p|)>>>>|<row|<cell|slab,
  buffer>|<cell|<hlink|<verbatim|Slab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L19>,
  <hlink|<verbatim|buffer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L21-L22>>|<cell|slab
  <math|<around|(|0,d|)>>, <math|r>-buffered>>|<row|<cell|slab operators
  ("Spread") and all-copy bound>|<cell|<hlink|<verbatim|Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101-L104>,
  <verbatim|place>, <hlink|<verbatim|AllCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L111-L113>,
  <hlink|<verbatim|Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L153-L162>>|<cell|<math|T<rsub|d><around|(|w|)>>;
  <math|C<rsup|n>*<around|(|n/r|)><rsup|\<kappa\>*n>>>>|<row|<cell|bench,
  train bound>|<cell|<hlink|<verbatim|Bench>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L21-L24>,
  <hlink|<verbatim|Seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L27>,
  <hlink|<verbatim|QRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71>>|<cell|bench
  (V.1.7)>>|<row|<cell|spatial invariance of
  <math|\<cal-H\><rsub|0>>>|<cell|<hlink|<verbatim|Steady>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L20>>|<cell|V.1.4(a)>>|<row|<cell|compression;
  its multilinear form; algebra>|<cell|<hlink|<verbatim|M>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ground/Compress.lean#L89-L91>,
  <hlink|<verbatim|atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L46>;
  <hlink|<verbatim|depot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L41-L43>;
  <hlink|<verbatim|Spread.algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L54>>|<cell|<math|M<around|(|w|)>>;
  <math|M<around|(|x;v|)>>; <math|\<cal-A\>>>>|<row|<cell|identities of
  <math|M> ("Theme")>|<cell|<hlink|<verbatim|Theme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L45-L56>>|<cell|V.1.4(e)>>|<row|<cell|phase
  reflection>|<cell|<hlink|<verbatim|Phase.reflects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L19-L20>>|<cell|<math|M<around|(|w|)>=M*<around|(|\<vartheta\>*w|)>>>>|<row|<cell|decomposition
  ("Resolution")>|<cell|<hlink|<verbatim|Spread.Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L72>,
  <verbatim|X>, <verbatim|\<mu\>>, <verbatim|character>>|<cell|<math|X>,
  <math|\<nu\>>, <math|\<chi\><rsub|\<xi\>>>>>|<row|<cell|phase tables; their
  properties>|<cell|<verbatim|ensemble>, <hlink|<verbatim|Garland>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L72-L80>,
  <hlink|<verbatim|Scripts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L25-L32>>|<cell|<math|S<rsup|\<xi\>>>>>|<row|<cell|<math|S<rsup|\<xi\>>>
  receives <math|\<chi\><rsub|\<xi\>>>>|<cell|<hlink|<verbatim|Resolution.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L89-L91>>|<cell|<math|S<rsup|\<xi\>><around|(|w|)>=\<chi\><rsub|\<xi\>><around|(|M<around|(|w|)>|)>>>>|<row|<cell|grid
  hypothesis, bounded approximants>|<cell|<hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>,
  <hlink|<verbatim|Grid.Covering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Approx.lean#L63-L67>>|<cell|grid
  hypothesis>>|<row|<cell|lattice episode, cluster element,
  budget>|<cell|<hlink|<verbatim|Episode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L18-L27>,
  <hlink|<verbatim|cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L33>,
  <hlink|<verbatim|Sold>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fetch.lean#L38-L40>>|<cell|<math|E>,
  <math|c<rsub|E>>>>|<row|<cell|detectors; moment
  bound>|<cell|<hlink|<verbatim|\<Delta\>one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L73>,
  <hlink|<verbatim|\<Delta\>two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L75-L77>;
  <hlink|<verbatim|Tall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L21>,
  <hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L81-L83>>|<cell|<math|\<Delta\><rsub|1>,\<Delta\><rsub|2>>>>|<row|<cell|countable
  dense family>|<cell|<hlink|<verbatim|Cluster.horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L88-L89>>|<cell|<math|<around|(|b<rsub|k>|)>>>>|<row|<cell|unique
  ground state>|<cell|<hlink|<verbatim|UniqueHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L35>>|<cell|<math|\<cal-H\><rsub|0><rsup|\<xi\>>=\<bbb-C\>*\<Omega\><rsub|\<xi\>>>>>|<row|<cell|selected
  phase and certificate>|<cell|<hlink|<verbatim|Selection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127-L134>,
  <verbatim|atPoint>, <hlink|<verbatim|Certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L136-L148>,
  <hlink|<verbatim|Materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47>>|<cell|<math|\<xi\><rsub|\<ast\>>>;
  V.1.9>>|<row|<cell|bundles of obligations>|<cell|<hlink|<verbatim|Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L50-L54>,
  <hlink|<verbatim|Stall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L42-L46>,
  <hlink|<verbatim|Vendor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Phase.lean#L34-L40>>|<cell|assembly
  assumptions>>>>>

  The measure <math|\<nu\>> corresponds to <math|\<mu\>> in the Lean.

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Ultraviolet inputs.> The chessboard geometry below
    <hlink|<verbatim|Next.Phase.travel_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304>
    belongs to VII.4. Its train estimate and the subsequent scale choice give
    the bench used here; the supporting packing argument remains outside this
    unit. The bounded-approximation input to
    <hlink|<verbatim|Accent.grilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/FinalG.lean#L76-L83>
    belongs to III.11. Its output has the cutoff-independent bounds required
    in V.1.n, but the underlying ultraviolet estimates and the production of
    the corrected-field data remain inputs.

    <item><strong|Order of limits.> In V.1.n, fix the number of copies and
    approximation index, then fix a sufficiently large translation, take the
    ordered cutoff limit, and let the translation tend to infinity. Only then
    let the number of copies tend to infinity and the approximation error
    tend to zero. The detector argument similarly takes the cutoff limit
    before the large-translation limit and sends its budget slack to zero
    last.

    <item><strong|Later vacuum uniqueness.> V.1.8 gives uniqueness almost
    everywhere, which suffices to select <math|\<xi\><rsub|\<ast\>>>. The
    stronger result for every phase, <hlink|<verbatim|EveryPhase.every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L146-L153>,
    uses reconstruction in V.3; its proof is outside this unit.

    <item><strong|Placement of the spectral calculus.> V.1.2 supplies V.2 and
    V.3 and can be placed at the start of reconstruction in the written
    proof. The <math|O<around|(|4|)>> action from VI.1 is needed only after
    the preliminary chamber and heat constructions.

    <item><strong|Bibliography.> The reference locations marked \Pprobable\Q
    in Ÿ2 need bibliographic verification.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit
  (notes)|IV-1.tm>|<hlink|Part V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Unit
  outline|../units/V-1.tm>|<hlink|V.2 Osterwalder-Schrader reconstruction of
  a Wightman theory (notes) \<rightarrow\>|V-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|V.1. Decomposition of the limit into phases \V
    detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|7>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-os-space-chambers-spectral-calculus|<tuple|4.1|10>>
    <associate|42-slab-operators|<tuple|4.2|12>>
    <associate|43-the-compressed-algebra|<tuple|4.3|13>>
    <associate|44-phase-reflection-and-rotation-invariance|<tuple|4.4|14>>
    <associate|45-the-phase-tables|<tuple|4.5|16>>
    <associate|46-null-spaces-of-the-phases|<tuple|4.6|17>>
    <associate|47-choosing-a-phase|<tuple|4.7|18>>
    <associate|5-where-the-difficulty-lies|<tuple|5|20>>
    <associate|6-notation|<tuple|6|21>>
    <associate|7-what-remains-unexplained|<tuple|7|22>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|4.7|18>>
    <associate|auto-12|<tuple|5|20>>
    <associate|auto-13|<tuple|6|21>>
    <associate|auto-14|<tuple|7|22>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|10>>
    <associate|auto-5|<tuple|4.1|10>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|16>>
    <associate|v1-decomposition-of-the-limit-into-phases--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 OS space, chambers, spectral calculus
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Slab operators
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 The compressed algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Phase reflection and rotation
      invariance <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The phase tables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Null spaces of the phases
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Choosing a phase
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>