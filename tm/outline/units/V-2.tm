<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> V.1 Decomposition of the limit into
  phases|V-1.tm>|<hlink|Part V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Detailed
  notes|../notes/V-2.tm>|<hlink|V.3 Reconstruction for every phase and the
  reconstructed theory \<rightarrow\>|V-3.tm>>

  <ym-title|V.2. Osterwalder-Schrader reconstruction of a Wightman
  theory><label|v2-osterwalder-schrader-reconstruction-of-a-wightman-theory>

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

  Reconstructs relativistic fields from Euclidean correlations by analytic
  continuation and boundary values.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/V-2.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: V.1|V-1.tm> <ym-middot> <hlink|Next: V.3
  \<rightarrow\>|V-3.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> V, phases and reconstruction. <strong|Lean:> <hlink|A16,
    C01\UC29|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>,
    Boundary, Fields, Shift. <strong|Size:> 6,456 lines; 705 declarations.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  All arities include zero; statements hold for every label tuple and
  Schwartz test unless restricted. Tables <math|S,T> share a register;
  <math|T> respects <math|S> means <math|N<rsub|d><around|(|S|)>\<subseteq\>N<rsub|d><around|(|T|)>>
  for every degree, where <math|N<rsub|d>> consists of labels vanishing with
  arbitrary insertions. Write (H) for: both Euclidean hierarchies; respect;
  differential-plan inclusions compatible with both tables and derivatives
  with <math|T>; a spread satisfying the slab bound, smoothness in insertion
  positions on every valid slab, and insertion derivative laws. The slab
  bound is <math|<around|\<\|\|\>|A<rsub|d><around|(|w|)>|\<\|\|\>>\<leqslant\>C<rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|a<around|\||w|\|>>>
  for buffers and pairwise maximum-norm distances at least
  <math|r\<in\><around|(|0,1|]>>, with <math|C\<gtr\>0>,
  <math|a\<in\>\<bbb-N\>> uniform in width and length for fixed degree and
  representative-norm bounds.

  (SC) means continuity in strict complex times and spatial positions,
  holomorphy in times, and agreement with <math|T> at ordered imaginary
  times. (PG) means <math|<around|\||F<rsub|n><rsup|y><around|(|x|)><around|(|v|)>|\|>\<leqslant\>C*k<rsup|-m>>
  whenever all height gaps are at least <math|k\<in\><around|(|0,1|]>>, with
  <math|C\<geqslant\>0>, <math|m\<in\>\<bbb-N\>> depending on <math|n,v>. Put
  <math|\<psi\><rsub|v><around|(|y;f|)>=<big|int>F<rsub|n><rsup|y><around|(|x|)><around|(|v|)>*f<around|(|x|)>*<space|0.17em>d*x>;
  (I), (HC), (CR) mean integrability, continuity on <math|E<rsub|n>> and
  <math|\<partial\><rsub|a>*\<psi\><around|(|y;f|)>=\<psi\><around|(|y;-i*\<partial\><rsub|<wide*|a|\<bar\>>>*f|)>>
  for every real height direction <math|a> within <math|E<rsub|n>>. (BV)
  means <math|\<psi\><rsub|v><around|(|y;f|)>\<to\>W<rsub|n><around|(|v|)><around|(|f|)>>
  as <math|y\<to\>0> through ordered heights, without a fixed direction.

  <strong|Proposition V.2.1.> A16 and C01\UC29 hold simultaneously, each with
  its own hypotheses. <em|Status:> theorem. <em|Lean:>
  <hlink|reconstructionArcs|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212>.

  <strong|Proposition V.2.2.> Under (H), linear bounded-operator insertions
  <math|B<rsub|p>>, <math|p\<geqslant\>0>, exist, given for <math|p\<gtr\>0>
  by the central one-point slab operator of width <math|2*p>, with
  <math|<around|\<\|\|\>|B<rsub|p><around|(|u|)>|\<\|\|\>>\<leqslant\>C*p<rsup|-a>>
  for <math|0\<less\>p\<less\>1>, for each <math|u>, with <math|C\<gtr\>0>,
  <math|a\<in\>\<bbb-N\>>. The empty product is
  <math|<around|\<\|\|\>|\<Omega\>|\<\|\|\>><rsup|2>>. Their vacuum products,
  separated by <math|e<rsup|-<around|(|<math-up|Im><space|0.17em>w-2*p|)>*H>*e<rsup|i<math-up|Re><space|0.17em>w*H>*U<around|(|<wide|a|\<vect\>>|)>>,
  are independent of widths <math|0\<less\>p\<less\>1> with gaps
  <math|\<gtr\>4*p>, agree with <math|T> at imaginary times, and define
  <math|F> satisfying (SC), (PG). <em|Status:> theorem. <em|Lean:>
  <hlink|C01|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L99-L117>,
  <hlink|C02|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L168-L177>,
  <hlink|C03|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L245-L248>.

  <strong|Proposition V.2.3.> (SC), (PG) imply (I), (HC), (CR). Separately,
  (I), (HC), (CR), (PG) produce a multilinear tempered boundary family
  <math|W> satisfying (BV), hence every ordered radial limit. <em|Status:>
  theorem. <em|Lean:> <hlink|C04|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L221-L222>,
  <hlink|jointly|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Osc.lean#L83-L86>.

  <strong|Proposition V.2.4.> Under (SC), (PG), (CR), (HC), (BV), for ordered
  <math|y> and compactly supported <math|f>,
  <math|W<rsub|n><around|(|v|)><around|(|<wide|f|^>|)>=\<psi\><rsub|v><around|(|y;<wide|e<rsup|<around|\<langle\>|<wide*|y|\<bar\>>,\<cdot\>|\<rangle\>>>*f|^>|)>>
  (L). Under (SC), (PG), (I), (L), Fourier support lies in
  <math|\<cal-P\><rsub|n>=<around|{|<big|sum><rsub|k>p<rsub|k><rsup|0>=0,<big|sum><rsub|k\<geqslant\>j>p<rsub|k><rsup|0>\<geqslant\>0\<forall\>j|}>>.
  With Lorentz covariance it lies in <math|\<cal-V\><rsub|n>=<big|cap><rsub|\<Lambda\>><wide|\<Lambda\>|~><rsup|-1>*\<cal-P\><rsub|n>>;
  thus total momentum vanishes and suffix momenta belong to
  <math|<wide|V|\<bar\>><rsub|+>>. <em|Status:> theorem. <em|Lean:>
  <hlink|C05|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L205-L230>,
  <hlink|C06|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C06.lean#L136-L157>,
  <hlink|tents|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L106-L121>.

  <strong|Proposition V.2.5.> Unconditionally, spatial rotations and
  coordinate boosts generate <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>>;
  <math|g\<mapsto\>g<rsub|\<ast\>>*f> is Schwartz-continuous and
  <math|t<rsup|-1>*<around|(|\<Lambda\><rsub|a><around|(|t|)><rsub|\<ast\>>*f-f|)>\<to\>-D<rsub|a>*f>,
  where <math|D<rsub|a>=<big|sum><rsub|k><around|(|x<rsub|k><rsup|a>*\<partial\><rsub|x<rsub|k><rsup|0>>+x<rsub|k><rsup|0>*\<partial\><rsub|x<rsub|k><rsup|a>>|)>>.
  Assume both hierarchies, inclusions compatible with <math|S>, respect,
  Euclidean covariance, rotation laws and spin compatibility. Under (SC),
  (PG), (I), (CR), (HC), infinitesimal rotations give
  <math|<big|sum><rsub|k>\<psi\><rsub|v<rsup|<around|(|k|)>>><around|(|y;f|)>=\<psi\><rsub|v><around|(|y;D<rsub|a,y>*f|)>>,
  for <math|y\<in\>E<rsub|n>> and each spatial axis <math|a>, where
  <math|D<rsub|a,y>=D<rsub|a>+i*<big|sum><rsub|k>y<rsub|k>*\<partial\><rsub|x<rsub|k><rsup|a>>>
  and <math|v<rsup|<around|(|k|)>>> replaces <math|v<rsub|k>> by
  <math|-i*\<rho\>*<around|(|e<rsub|0>\<wedge\>e<rsub|a>|)>*v<rsub|k>>. Under
  (SC), (PG), that identity and (BV), <math|W<rsub|n>*<around|(|K<around|(|\<Lambda\>|)>*v|)>*<around|(|g<rsub|\<ast\>>*f|)>=W<rsub|n><around|(|v|)><around|(|f|)>>
  for every Poincaré transformation <math|g=<around|(|a,\<Lambda\>|)>>. With
  <math|S> symmetric, inclusions compatible with <math|S>, spin compatibility
  and induced star <math|J>, this covariance makes the word Gram form
  invariant and word matrix elements continuous. <em|Status:> theorem.
  <em|Lean:> <hlink|C07|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07.lean#L53-L66>,
  <hlink|C09|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L403-L442>,
  <hlink|C28|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C28.lean#L134-L143>.

  <strong|Proposition V.2.6.> For <math|p\<in\>\<cal-V\><rsub|n>>,
  <math|<around|\<langle\>|p,\<eta\>|\<rangle\>>\<geqslant\>0> on the closed
  imaginary cone, and locally <math|<around|\<langle\>|p,\<eta\>|\<rangle\>>\<geqslant\>c<around|\||p|\|>>
  inside, for some <math|c\<gtr\>0>. Smooth cutoffs <math|\<chi\><rsub|n>>,
  equal to one on the <math|1>-neighbourhood of <math|\<cal-V\><rsub|n>>,
  supported in its open <math|3>-neighbourhood and with polynomially bounded
  derivatives, exist. For <math|\<eta\>> in the closed imaginary cone,
  <math|e<rsup|-<around|\<langle\>|\<eta\>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>>
  has temperate growth and its product with each test varies continuously in
  Schwartz space. The function <math|\<cal-W\><rsub|n><around|(|v|)><around|(|z|)>=<around|(|2*\<pi\>|)><rsup|-4*n>*<around|(|\<cal-F\>*W<rsub|n><around|(|v|)>|)>*<around|(|e<rsup|i<around|\<langle\>|\<cdummy\>,z|\<rangle\>>>*\<chi\><rsub|n>|)>>
  is holomorphic on <math|\<cal-T\><rsub|n>>. For interior <math|\<eta\>>,
  its integrals represent <math|W<rsub|n><around|(|v|)><around|[|\<eta\>|]><around|(|f|)>=<around|(|\<cal-F\>*W<rsub|n><around|(|v|)>|)>*<around|(|e<rsup|-<around|\<langle\>|\<eta\>,\<cdot\>|\<rangle\>>>*\<chi\><rsub|n>*<wide|f|\<check\>>|)>>.
  Assuming damping, cone support, holomorphy, this integral representation,
  (SC), (PG), (I), (L), it equals <math|F<rsub|n><rsup|y>> at
  <math|x+i<wide*|y|\<bar\>>> (TC). Cone support and covariance imply
  <math|\<cal-W\><rsub|n>*<around|(|K<around|(|\<Lambda\>|)>*v|)>*<around|(|\<Lambda\>*z|)>=\<cal-W\><rsub|n><around|(|v|)><around|(|z|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|C10|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C10.lean#L71>,
  <hlink|C15|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C15.lean#L120-L131>,
  <hlink|C16|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C16.lean#L75-L91>.

  <strong|Proposition V.2.7.> Assume (SC), (TC), cone support, damping, spin
  compatibility, tube covariance, symmetric <math|S,T>, <math|T> smooth off
  coincidences, respect and inclusions compatible with <math|S>. There are
  spectator profiles approaching zero, equal at the adjacent pair and
  otherwise ordered, each admitting imaginary-boost paths into both tubes.
  Spin boosts extend entirely; the two resulting holomorphic germs agree on
  the zero-real-time slice and locally represent partial boundary values.
  Then for every adjacent swap <math|\<sigma\>>,
  <math|W<rsub|n><around|(|v|)><around|(|f|)>=W<rsub|n>*<around|(|v\<circ\>\<sigma\>|)>*<around|(|f\<circ\>\<sigma\>|)>>
  whenever <math|<math-up|supp>f\<subset\><around|{|x:x<rsub|i+1>-x<rsub|i><text|
  spacelike>|}>>. This joint locality implies exchange of adjacent letters in
  any word whose two test supports are spacelike separated. <em|Status:>
  theorem. <em|Lean:> <hlink|actor|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L92-L112>,
  <hlink|C27|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C27.lean#L87-L92>.

  <strong|Proposition V.2.8.> Heated vectors are the insertion products of
  V.2.2 acting on <math|\<Omega\>>, multiplied on the left by
  <math|e<rsup|-<around|(|y<rsub|1>-p|)>*H>*e<rsup|i*r<rsub|1><rsup|0>*H>*U<around|(|<wide|r|\<vect\>><rsub|1>|)>>
  at heights <math|y> and real points <math|r>; the empty vector is
  <math|\<Omega\>>. Under (H), V.2.2 and oriented <math|P>, heated OS vectors
  have inner product <math|F<rsup|<around|(|-x<rsub|n>,\<ldots\>,-x<rsub|1>,y<rsub|1>,\<ldots\>,y<rsub|m>|)>><around|(|r<rsub|n>,\<ldots\>,r<rsub|1>,q<rsub|1>,\<ldots\>,q<rsub|m>|)><around|(|J*v<rsub|n>,\<ldots\>,J*v<rsub|1>,w<rsub|1>,\<ldots\>,w<rsub|m>|)>>
  for positive ordered heights <math|x,y> and widths in
  <math|<around|(|0,1|)>>, with heights and gaps exceeding four times their
  respective widths. Under (H), slab insertions and spin compatibility, their
  smeared vectors <math|\<Phi\><rsub|t><around|(|b|)>>, using heights
  <math|<around|(|t,2*t,\<ldots\>,n*t|)>> and width <math|min
  <around|(|t,1|)>/8>, have Bochner-integrable defining integrands and
  satisfy <math|\<Phi\><rsub|t>*<around|(|a\<cdot\>b|)>=U<around|(|a|)>*\<Phi\><rsub|t><around|(|b|)>>
  for every <math|t\<gtr\>0>, word <math|b> and translation <math|a>. Under
  (H), (SC), (BV), these properties and the pointwise Gram identity,
  <math|<around|\<langle\>|\<Phi\><rsub|s><around|(|b|)>,\<Phi\><rsub|s<rprime|'>><around|(|c|)>|\<rangle\>>\<to\>W*<around|(|b<rsup|\<ast\>>*c|)>>
  independently as <math|s,s<rprime|'>*\<downarrow\>*0>. Tensor products are
  dense in Schwartz space. With this density, equal null spaces, both
  hierarchies, inclusions compatible with both tables, (SC), (TC), vanishing
  of <math|W*<around|(|a<around|(|u,f|)>*c|)>> for all <math|a,c,f> implies
  <math|u=0>. Every boundary family <math|W> and antilinear <math|J> give
  bilinearity of <math|<around|(|u,f|)>\<mapsto\>W*<around|(|a<around|(|u,f|)>*c|)>>
  and continuity of <math|<around|(|f,g|)>\<mapsto\><around|\<langle\>|<around|(|u,f|)>*a,<around|(|u*\<prime\>,g|)>*c|\<rangle\>><rsub|W>>.
  <em|Status:> theorem. <em|Lean:> <hlink|C24|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C24.lean#L146-L153>,
  <hlink|C26|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L77-L92>.

  <strong|Proposition V.2.9.> A realization comprises spin-compatible
  <math|K>, induced <math|J>, fields bilinear in labels and tests on a dense
  invariant domain equal to the span of vacuum word vectors, a unit vacuum
  fixed by a strongly continuous unitary Poincaré representation, covariance
  <math|U<around|(|g|)>*\<varphi\><around|(|u,f|)>=\<varphi\><around|(|K<around|(|\<Lambda\>|)>*u,g<rsub|\<ast\>>*f|)>*U<around|(|g|)>>,
  the identity <math|<around|\<langle\>|\<varphi\><around|(|u,f|)>*\<psi\>,\<chi\>|\<rangle\>>=<around|\<langle\>|\<psi\>,\<varphi\><around|(|J*u,<wide|f|\<bar\>>|)>*\<chi\>|\<rangle\>>>
  on the domain, continuous smeared-field vectors, local commutativity, and
  faithfulness: <math|u\<ne\>0> implies <math|\<varphi\><around|(|u,f|)>\<ne\>0>
  for some <math|f>. It has vacuum expectations <math|W>, translation
  spectral measure supported in <math|<wide|V|\<bar\>><rsub|+>>, and only
  scalar multiples of the vacuum translation invariant. <em|Status:>
  definition. <em|Lean:> <hlink|Realizes|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L124-L135>.

  <strong|Proposition V.2.10.> Fix rotation and real structures, induced
  involutive <math|J>, and spin compatibility. Assume word bilinearity,
  two-test continuity, word locality, label faithfulness, continuous word
  matrix elements and invariant Gram form. If vectors satisfy V.2.8's Gram
  limit, <math|\<Phi\><rsub|s><around|(|\<varnothing\>|)>\<to\>\<Omega\>>,
  and eventual translation covariance for each word and translation, and
  <math|T> is normalized, unital and permutation symmetric, V.2.9 holds
  except possibly vacuum uniqueness. If the heat-fixed space is
  <math|\<bbb-C\>*\<Omega\>>, uniqueness also holds. <em|Status:> theorem.
  <em|Lean:> <hlink|harvest|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L85-L95>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1, II.1: quotient labels and common finite-dimensional levels.

    <item>IV.1, V.1: Euclidean hierarchy, OS space, heat semigroup,
    translations and slab bound.

    <item>VI.1: rotation, spin and star data. VIII.1 supplies phase data and
    selected-phase heat-fixed uniqueness.

    <item>Standard results: OS reconstruction, tempered holomorphic boundary
    values, Fourier\ULaplace theory, Kolmogorov construction, Riesz\UMarkov
    and SNAG.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Bounded slab insertions construct strict-time correlations. Boundary values
  and boosts give covariant distributions with forward spectral support.
  Fourier\ULaplace continuation and permutation symmetry give locality.
  Heated vectors transfer positivity and translations to the word Hilbert
  space, where left multiplication defines fields.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Heat factors telescope, removing the slab width; contractions give
    polynomial growth. <hlink|C02.matrix_pad|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L156-L166>.

    <item>Taylor's integral remainder controls boundary limits uniformly over
    nondecreasing heights. <hlink|Waves.maintains|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L78-L101>.

    <item>Continue rotation identities, then integrate boost derivatives to
    obtain covariance. <hlink|C09.boost_invariant|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L374-L399>.

    <item>The Laplace identity forces nonnegative suffix energies; Lorentz
    covariance upgrades this to cone support.
    <hlink|tents|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L106-L121>.

    <item>Fourier\ULaplace damping extends <math|F> to the tube. Exponential
    decay gives complex differentiability in Schwartz space.
    <hlink|C13.analytic_interior|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13.lean#L113-L125>.

    <item>Imaginary boosts construct two germs; equal Wick-slice jets
    identify them, yielding boundary exchange.
    <hlink|C20.complex_germ|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L67-L87>.

    <item>Gram limits give an isometric embedding into the OS space; left
    multiplication defines fields, and the embedding transfers positive
    energy. <hlink|universal_embed|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L31-L53>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Boost derivatives require finite-dimensional label levels and Schwartz
  estimates. Locality requires complete jets at equal pair times. Independent
  heating scales require unrestricted boundary limits.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<cal-H\>,\<Omega\>,H\<geqslant\>0,U>: OS space, vacuum, Hamiltonian
  and translations. <math|\<cal-F\>=<big|cup><rsub|d>F<rsub|d>>: quotient
  labels; <math|J>: reflection adjoint; <math|b<rsup|\<ast\>>>: reversed
  starred word. <math|E<rsub|n>=<around|{|y<rsub|1>\<less\>\<cdots\>\<less\>y<rsub|n>|}>>;
  <math|F<rsub|n><rsup|y><around|(|x|)>=F<rsub|n><around|(|x<rsup|0>+i*y;<wide|x|\<vect\>>|)>>;
  <math|<wide*|y|\<bar\>>=<around|(|<around|(|<wide|0|\<vect\>>,y<rsub|k>|)>|)><rsub|k>>.
  <math|\<cal-T\><rsub|n>=<around|{|z:<math-up|Im><around|(|z<rsub|k+1>-z<rsub|k>|)>\<in\>V<rsub|+>|}>>,
  with unrestricted first imaginary point.
  <math|V<rsub|+>=<around|{|x:<around|\||<wide|x|\<vect\>>|\|>\<less\>x<rsup|0>|}>>.
  Pairings are Euclidean; <math|<wide|\<Lambda\>|~>=<math-ss|r>\<Lambda\><math-ss|r>>,
  with spatial reversal <math|<math-ss|r>>.
  <math|\<cal-L\><rsup|\<uparrow\>><rsub|+>> is the proper orthochronous
  Lorentz group; <math|K> is its label action. The closed imaginary cone
  replaces <math|V<rsub|+>> by <math|<wide|V|\<bar\>><rsub|+>>.
  <math|\<cal-F\>*W<around|(|f|)>=W<around|(|<wide|f|^>|)>>; Fourier phases
  are <math|e<rsup|-i<around|\<langle\>|x,p|\<rangle\>>>>, inverse
  normalization <math|<around|(|2*\<pi\>|)><rsup|-4*n>>.
  <math|g<rsub|\<ast\>>*f=f\<circ\>g<rsup|-1>> slotwise; <math|\<rho\>> is
  the rotation Lie action.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The upstream slab laws, compact Borel functional calculus and some
  Fourier\ULaplace differentiation estimates remain outside the detailed
  checks. Vacuum uniqueness applies to the selected phase; it is not supplied
  for the mixed table.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/V-2.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|VI.1|VI-1.tm>, <hlink|V.1|V-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.10|III-10.tm>, <hlink|III.16|III-16.tm>, <hlink|III.2|III-2.tm>,
  <hlink|II.1|II-1.tm>.

  <strong|Referenced by:> <hlink|V.3|V-3.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|V.1|V-1.tm>, <hlink|III.11|III-11.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|VI.1|VI-1.tm>, <hlink|III.6|III-6.tm>, <hlink|III.10|III-10.tm>,
  <hlink|VII.4|VII-4.tm>, <hlink|VII.6|VII-6.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.12|III-12.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 6,456 attributed lines; 705 line-counted
  declarations; 858 assigned declaration names. Of the assigned names, 841
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|reconstructionArcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212>
    \V 4,279 lines.

    <item>work package <hlink|<verbatim|YM/Overlay/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay>,
    with <hlink|<verbatim|YM/Vac/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac>
    \V 558 lines.

    <item>work package <hlink|<verbatim|YM/Fields/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields>
    \V 438 lines.

    <item>work package <hlink|<verbatim|YM/Compact/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Compact>
    \V 218 lines.

    <item>work package <hlink|<verbatim|YM/Distribution/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Distribution>
    \V 189 lines.

    <item>work package <hlink|<verbatim|YM/Spark/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spark>
    \V 120 lines.

    <item>work package <hlink|<verbatim|YM/Hilbert/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert>
    \V 85 lines.

    <item>work package <hlink|<verbatim|YM/Boundary/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary>
    \V 66 lines.

    <item>work package YM (in part, 82%) \V 20 lines.

    <item>work package <hlink|<verbatim|YM/Work/C13/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13>
    \V 4 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|beamGens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L114-L115>

    <item><hlink|<verbatim|Bid.A16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L116>

    <item><hlink|<verbatim|Bid.Arcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Arena.lean#L15-L45>

    <item><hlink|<verbatim|Bid/Corners>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean>

    <item><hlink|<verbatim|Bid.C09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L103-L106>

    <item><hlink|<verbatim|Pantry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L23-L30>

    <item><hlink|<verbatim|Piece>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L33-L35>

    <item><hlink|<verbatim|Bid.C01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L37-L38>

    <item><hlink|<verbatim|Slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L40-L45>

    <item><hlink|<verbatim|Bid.C02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L47-L48>

    <item><hlink|<verbatim|Direct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L50-L54>

    <item><hlink|<verbatim|Bid.C03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L56-L57>

    <item><hlink|<verbatim|Bid.C04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L59-L60>

    <item><hlink|<verbatim|Bid.C05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L62-L63>

    <item><hlink|<verbatim|Bid.C06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L65-L66>

    <item><hlink|<verbatim|inclined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L84-L85>

    <item><hlink|<verbatim|kick>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L87-L88>

    <item><hlink|<verbatim|Boosty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L92-L93>

    <item><hlink|<verbatim|Bid.C07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L95-L97>

    <item><hlink|<verbatim|Bid.C08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L99-L101>

    <item><hlink|<verbatim|EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>

    <item><hlink|<verbatim|Bid/Grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean>

    <item><hlink|<verbatim|Hull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L19-L22>

    <item><hlink|<verbatim|Roof>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L24-L27>

    <item><hlink|<verbatim|Bid.C22>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L29-L31>

    <item><hlink|<verbatim|C23>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L33-L34>

    <item><hlink|<verbatim|C24>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L36-L38>

    <item><hlink|<verbatim|C25>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L42>

    <item><hlink|<verbatim|C26>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L44-L46>

    <item><hlink|<verbatim|C27>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L48>

    <item><hlink|<verbatim|Bid.C28>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L50-L52>

    <item><hlink|<verbatim|C29>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Grow.lean#L54>

    <item><hlink|<verbatim|Bid/Tar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean>

    <item><hlink|<verbatim|Wide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L16-L18>

    <item><hlink|<verbatim|Bid.C10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L20>

    <item><hlink|<verbatim|C11>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L22>

    <item><hlink|<verbatim|C12>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L24>

    <item><hlink|<verbatim|C13>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L27-L29>

    <item><hlink|<verbatim|Income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L33-L37>

    <item><hlink|<verbatim|Bid.cones>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L39>

    <item><hlink|<verbatim|C14>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L41-L42>

    <item><hlink|<verbatim|C15>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L44-L46>

    <item><hlink|<verbatim|wave_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L50-L51>

    <item><hlink|<verbatim|C16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L53-L54>

    <item><hlink|<verbatim|augment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L57-L60>

    <item><hlink|<verbatim|travelable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L63-L66>

    <item><hlink|<verbatim|Bid.C17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L68-L69>

    <item><hlink|<verbatim|Weighty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L72-L73>

    <item><hlink|<verbatim|C18>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L75-L76>

    <item><hlink|<verbatim|C19>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L78-L81>

    <item><hlink|<verbatim|C20>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L84-L86>

    <item><hlink|<verbatim|C21>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Tar.lean#L89-L90>

    <item><hlink|<verbatim|Waves.exposed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L102-L112>

    <item><hlink|<verbatim|east>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L27>

    <item><hlink|<verbatim|strict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L28>

    <item><hlink|<verbatim|Surface>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L54-L55>

    <item><hlink|<verbatim|Waves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L57-L58>

    <item><hlink|<verbatim|Waves.Region>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L71-L77>

    <item><hlink|<verbatim|Waves.Opens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L89-L93>

    <item><hlink|<verbatim|Waves.NonTangentialFree>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L96-L100>

    <item><hlink|<verbatim|DiffPlan.Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>

    <item><hlink|<verbatim|DiffPlan.Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>

    <item><hlink|<verbatim|Table.Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>

    <item><hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>

    <item><hlink|<verbatim|norms_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L19-L31>

    <item><hlink|<verbatim|Cups.out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L55-L60>

    <item><hlink|<verbatim|Outfield.safe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L66-L71>

    <item><hlink|<verbatim|Outfield.daylight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Lo.lean#L76-L82>

    <item><hlink|<verbatim|Surface.Transforms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L23-L24>

    <item><hlink|<verbatim|Surface.Strong>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L26-L27>

    <item><hlink|<verbatim|Soil.mobilize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Motion.lean#L72-L87>

    <item><hlink|<verbatim|Action.spectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Spectrum.lean#L108-L114>

    <item><hlink|<verbatim|Action.only>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Spectrum.lean#L116-L121>

    <item><hlink|<verbatim|Spins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L22-L24>

    <item><hlink|<verbatim|Spins.Descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35>

    <item><hlink|<verbatim|StarOp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L37>

    <item><hlink|<verbatim|Surface.kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L97>

    <item><hlink|<verbatim|Soil.starter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L120-L137>

    <item><hlink|<verbatim|Soil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L20>

    <item><hlink|<verbatim|Symbol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L26-L27>

    <item><hlink|<verbatim|Cam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L29-L30>

    <item><hlink|<verbatim|Surface.Regional>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L33-L34>

    <item><hlink|<verbatim|Persists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Stems.lean#L38>

    <item><hlink|<verbatim|Symmetries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L111-L115>

    <item><hlink|<verbatim|Wightman>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L117-L122>

    <item><hlink|<verbatim|Fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L22-L26>

    <item><hlink|<verbatim|Fields.Total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L41-L45>

    <item><hlink|<verbatim|Fields.general>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L62-L70>

    <item><hlink|<verbatim|Fields.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L82-L84>

    <item><hlink|<verbatim|Action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L92-L97>

    <item><hlink|<verbatim|Small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L19-L20>

    <item><hlink|<verbatim|Small.rip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L33>

    <item><hlink|<verbatim|Small.matrix>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L49-L51>

    <item><hlink|<verbatim|Small.shot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L53-L56>

    <item><hlink|<verbatim|Small.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L62-L63>

    <item><hlink|<verbatim|Small.Defined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L66-L67>

    <item><hlink|<verbatim|Small.heatCup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L92-L93>

    <item><hlink|<verbatim|Small.Lamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L96-L100>

    <item><hlink|<verbatim|Kernel.Gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L34-L38>

    <item><hlink|<verbatim|FieldCore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34-L44>

    <item><hlink|<verbatim|Next/BOUNDARY/Stage.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean>

    <item><hlink|<verbatim|neon_any>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L101-L111>

    <item><hlink|<verbatim|windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L122-L138>

    <item><hlink|<verbatim|revealing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L142-L162>

    <item><hlink|<verbatim|Next.BOUNDARY.establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>

    <item><hlink|<verbatim|Compatible.vacuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L217-L221>

    <item><hlink|<verbatim|after_materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L247-L255>

    <item><hlink|<verbatim|rhythm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L39-L44>

    <item><hlink|<verbatim|at_contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L52-L78>

    <item><hlink|<verbatim|illuminated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L82-L90>

    <item><hlink|<verbatim|spectra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L92>

    <item><hlink|<verbatim|blankets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L94-L95>

    <item><hlink|<verbatim|visible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L97-L99>

    <item><hlink|<verbatim|emit_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Unique.lean#L187-L203>

    <item><hlink|<verbatim|Next.Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>

    <item><hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>

    <item><hlink|<verbatim|OS.Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101-L104>

    <item><hlink|<verbatim|AllCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L111-L113>

    <item><hlink|<verbatim|Spread.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L153-L162>

    <item><hlink|<verbatim|Org/Theatre.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean>

    <item><hlink|<verbatim|Show.Rhythm.opens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean#L29-L31>

    <item><hlink|<verbatim|Show.uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Theatre.lean#L64-L67>

    <item><hlink|<verbatim|Waves.desired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L27-L28>

    <item><hlink|<verbatim|Waves.meant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L50-L66>

    <item><hlink|<verbatim|half>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L20>

    <item><hlink|<verbatim|coneM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L23>

    <item><hlink|<verbatim|shores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L70>

    <item><hlink|<verbatim|fields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L71>

    <item><hlink|<verbatim|Urs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Closing.lean#L83-L85>

    <item><hlink|<verbatim|Actor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L115-L116>

    <item><hlink|<verbatim|Panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L33-L36>

    <item><hlink|<verbatim|sameGround>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L40-L41>

    <item><hlink|<verbatim|Panes.reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L43-L56>

    <item><hlink|<verbatim|Forms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L62-L66>

    <item><hlink|<verbatim|Panes.forgets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Exchange.lean#L68-L90>

    <item><hlink|<verbatim|Waves.cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Osc.lean#L27-L36>

    <item><hlink|<verbatim|Waves.seeks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Osc.lean#L44-L80>

    <item><hlink|<verbatim|dawn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L24>

    <item><hlink|<verbatim|Waves.Breathes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L72-L73>

    <item><hlink|<verbatim|psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L75-L76>

    <item><hlink|<verbatim|Waves.Lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L80-L81>

    <item><hlink|<verbatim|Waves.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L83-L84>

    <item><hlink|<verbatim|Waves.Along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L86>

    <item><hlink|<verbatim|Waves.during>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L101-L102>

    <item><hlink|<verbatim|Surface.cone_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L106>

    <item><hlink|<verbatim|Surface.Aurora>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L109-L111>

    <item><hlink|<verbatim|Aurora.emit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L116>

    <item><hlink|<verbatim|Aurora.FullBody>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L118-L124>

    <item><hlink|<verbatim|tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L45>

    <item><hlink|<verbatim|Blanket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L60-L64>

    <item><hlink|<verbatim|Blanket.Modified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L70-L72>

    <item><hlink|<verbatim|Blanket.partialD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L78-L80>

    <item><hlink|<verbatim|Blanket.flatD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Sol.lean#L85-L96>

    <item><hlink|<verbatim|Pane.propagate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L101-L130>

    <item><hlink|<verbatim|NearPair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L19-L22>

    <item><hlink|<verbatim|gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L49>

    <item><hlink|<verbatim|spectator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L53>

    <item><hlink|<verbatim|Fleck>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Swap.lean#L56-L61>

    <item><hlink|<verbatim|Spark.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spark/Limit.lean#L28-L51>

    <item><hlink|<verbatim|Spark.records>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spark/Pile.lean#L77-L114>

    <item><hlink|<verbatim|Work/A16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean>

    <item><hlink|<verbatim|A16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101>

    <item><hlink|<verbatim|C01.inner_raw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L51-L57>

    <item><hlink|<verbatim|C01.single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L71-L80>

    <item><hlink|<verbatim|C01.at_width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C01.lean#L91-L97>

    <item><hlink|<verbatim|C02.pad_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L118-L128>

    <item><hlink|<verbatim|C02.train_pure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C02.lean#L68-L97>

    <item><hlink|<verbatim|C03.defined_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L200-L216>

    <item><hlink|<verbatim|C03.defined_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L218-L226>

    <item><hlink|<verbatim|C03.defined_region>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C03.lean#L228-L243>

    <item><hlink|<verbatim|C04.cr_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L131-L144>

    <item><hlink|<verbatim|C04.deriv_bound_near>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L146-L171>

    <item><hlink|<verbatim|C04.lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C04.lean#L173-L219>

    <item><hlink|<verbatim|C05.tendsto_psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L157-L177>

    <item><hlink|<verbatim|C05.hasDerivAt_zero_psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L182-L201>

    <item><hlink|<verbatim|C06.patch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C06.lean#L101-L134>

    <item><hlink|<verbatim|C06.lift_falls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C06.lean#L38-L86>

    <item><hlink|<verbatim|C07.error_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Continue.lean#L128-L148>

    <item><hlink|<verbatim|C07.compact_boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Continue.lean#L150-L170>

    <item><hlink|<verbatim|C07.oriented_differential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Euclid.lean#L104-L125>

    <item><hlink|<verbatim|C07.error_imag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Integrate.lean#L126-L162>

    <item><hlink|<verbatim|C07.integral_orbit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07/Integrate.lean#L47-L75>

    <item><hlink|<verbatim|C08.probe_slope_of_pointwise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L127-L161>

    <item><hlink|<verbatim|C08.continuous_gpush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L179-L185>

    <item><hlink|<verbatim|C08.size_affine_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L31-L59>

    <item><hlink|<verbatim|C09.restricted_translation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L123-L148>

    <item><hlink|<verbatim|C09.restricted_spatial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L168-L199>

    <item><hlink|<verbatim|C09.boost_corner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L242-L279>

    <item><hlink|<verbatim|C09.time_compare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L33-L115>

    <item><hlink|<verbatim|C10.telescope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C10.lean#L25-L35>

    <item><hlink|<verbatim|C10.cone_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C10.lean#L48-L69>

    <item><hlink|<verbatim|C11>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C11.lean#L57-L100>

    <item><hlink|<verbatim|C12>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C12.lean#L150-L169>

    <item><hlink|<verbatim|C12.cone_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C12.lean#L68-L76>

    <item><hlink|<verbatim|C12.attenuate_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C12.lean#L84-L108>

    <item><hlink|<verbatim|C13.lens_reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13.lean#L61-L89>

    <item><hlink|<verbatim|C14.modulation_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C14.lean#L133-L141>

    <item><hlink|<verbatim|C14.emit_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C14.lean#L233-L253>

    <item><hlink|<verbatim|C15.blanketed_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C15.lean#L60-L74>

    <item><hlink|<verbatim|C15.partialD_psi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C15.lean#L83-L99>

    <item><hlink|<verbatim|C16.lens_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C16.lean#L45-L73>

    <item><hlink|<verbatim|C17.enters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L126-L171>

    <item><hlink|<verbatim|C17.local_paths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L173-L241>

    <item><hlink|<verbatim|C17.height_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L247-L275>

    <item><hlink|<verbatim|C17.fleck_of_spectator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L44-L77>

    <item><hlink|<verbatim|C17.choose_direction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L79-L92>

    <item><hlink|<verbatim|C18.eq_exponential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C18.lean#L12-L44>

    <item><hlink|<verbatim|C18.entire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C18.lean#L46-L54>

    <item><hlink|<verbatim|C18.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C18.lean#L58-L79>

    <item><hlink|<verbatim|C19.paneAlong>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C19.lean#L161-L211>

    <item><hlink|<verbatim|C20.emit_table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L230-L240>

    <item><hlink|<verbatim|C20.jets_on_open_side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L34-L46>

    <item><hlink|<verbatim|C21.realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C21.lean#L15-L56>

    <item><hlink|<verbatim|C21.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C21.lean#L66-L87>

    <item><hlink|<verbatim|C22.onImag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L170-L192>

    <item><hlink|<verbatim|C22.pointJoined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L274-L336>

    <item><hlink|<verbatim|C22.euclideanRef>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L70-L107>

    <item><hlink|<verbatim|C23.heatCup_shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C23.lean#L207-L216>

    <item><hlink|<verbatim|C23.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C23.lean#L218-L220>

    <item><hlink|<verbatim|C23.shot_control>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C23.lean#L53-L83>

    <item><hlink|<verbatim|C24.integrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C24.lean#L118-L144>

    <item><hlink|<verbatim|C24.toward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C24.lean#L61-L73>

    <item><hlink|<verbatim|C25.compact_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C25.lean#L109-L124>

    <item><hlink|<verbatim|C25.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C25.lean#L135-L138>

    <item><hlink|<verbatim|C25.cut_port_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C25.lean#L85-L107>

    <item><hlink|<verbatim|C26.marker_on_joint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L23-L38>

    <item><hlink|<verbatim|C26.strict_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L40-L51>

    <item><hlink|<verbatim|C26.read_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C26.lean#L55-L75>

    <item><hlink|<verbatim|C27.coordinate_tsupport>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C27.lean#L12-L19>

    <item><hlink|<verbatim|C27.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C27.lean#L28-L39>

    <item><hlink|<verbatim|C29.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C29.lean#L110>

    <item><hlink|<verbatim|YM/Shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-v-2-1>

  <\itemize-minus>
    <item><strong|K-V.2.1> <hlink|<verbatim|host>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Hilbert/Kolmogorov.lean#L67-L92>
    <em|(numbered result)> \V Any positive semidefinite kernel admits a
    Kolmogorov (GNS-type) Hilbert space realization.
  </itemize-minus>

  <label|k-v-2-2>

  <\itemize-minus>
    <item><strong|K-V.2.2> <hlink|<verbatim|of_cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13/Decay.lean#L93-L123>
    <em|(numbered result)> \V A cutoff of temperate growth times an
    exponential of a real-linear form bounded by A minus c times the norm on
    its support has exponential reserve in Schwartz seminorms.
  </itemize-minus>

  <label|k-v-2-3>

  <\itemize-minus>
    <item><strong|K-V.2.3> <hlink|<verbatim|hasFDerivAt_shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13/Variation.lean#L150-L193>
    <em|(numbered result)> \V If a family of test functions near p is given
    by multiplying T p by exponentials of a linear form in q-p, then it is
    Fréchet differentiable at p in the Schwartz-type topology with an
    explicit derivative.
  </itemize-minus>

  <label|k-v-2-4>

  <\itemize-minus>
    <item><strong|K-V.2.4> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C17.lean#L277-L282>
    <em|(key result)> \V Small imaginary boosts at an adjacent spacelike pair
    stay in the domain, giving the C17 reconstruction service statement.
  </itemize-minus>

  <label|k-v-2-5>

  <\itemize-minus>
    <item><strong|K-V.2.5> <hlink|<verbatim|raises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Schedule.lean#L98-L109>
    <em|(numbered result)> \V For a simple gauge group, any delay schedule
    can be raised to a priced one with larger beta and scale entries and the
    same shells and growth.
  </itemize-minus>

  <label|k-v-2-6>

  <\itemize-minus>
    <item><strong|K-V.2.6> <hlink|<verbatim|pressure_grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225>
    <em|(main result)> \V Given the EBare input, every pressure teller grants
    the full E01\UE09 price chain.
  </itemize-minus>

  <label|k-v-2-7>

  <\itemize-minus>
    <item><strong|K-V.2.7> <hlink|<verbatim|ships>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Compact/PVM.lean#L51-L62>
    <em|(key result)> \V Constructs a projection-valued measure on the
    compact model space representing the given commuting family, with strong
    countable additivity.
  </itemize-minus>

  <label|k-v-2-8>

  <\itemize-minus>
    <item><strong|K-V.2.8> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C13.lean#L127-L132>
    <em|(key result)> \V The C13 service statement on analytic emission in
    the open tube holds.
  </itemize-minus>

  <label|k-v-2-9>

  <\itemize-minus>
    <item><strong|K-V.2.9> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C20.lean#L242-L307>
    <em|(key result)> \V The two germs on the panes agree at a Euclidean
    point, via Wick rotation and real-jet equality.
  </itemize-minus>

  <label|k-v-2-10>

  <\itemize-minus>
    <item><strong|K-V.2.10> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C14.lean#L257-L260>
    <em|(key result)> \V The strictly damped contour is identified with an
    actual function.
  </itemize-minus>

  <label|k-v-2-11>

  <\itemize-minus>
    <item><strong|K-V.2.11> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C22.lean#L348-L354>
    <em|(key result)> \V The inner product at separate hot profiles is
    identified.
  </itemize-minus>

  <label|k-v-2-12>

  <\itemize-minus>
    <item><strong|K-V.2.12> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C07.lean#L53-L66>
    <em|(key result)> \V The temporal PDE (Ward-type identity) holds on the
    full joint Schwartz space.
  </itemize-minus>

  <label|k-v-2-13>

  <\itemize-minus>
    <item><strong|K-V.2.13> <hlink|<verbatim|stationary_scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232>
    <em|(main result)> \V For every gauge group, lattice size, kernel choices
    and positive scale, the stationary scene holds, bundling the geometric
    inputs for stationarity.
  </itemize-minus>

  <label|k-v-2-14>

  <\itemize-minus>
    <item><strong|K-V.2.14> <hlink|<verbatim|source_sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219>
    <em|(main result)> \V From a holonomy solution and selected label frames
    one obtains finite source sections with the original soundness and cost
    contracts.
  </itemize-minus>

  <label|k-v-2-15>

  <\itemize-minus>
    <item><strong|K-V.2.15> <hlink|<verbatim|reconstructionArcs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L182-L212>
    <em|(main result)> \V The full bundle of reconstruction components
    C01\UC29 of the Yang\UMills construction holds simultaneously.
  </itemize-minus>

  <label|k-v-2-16>

  <\itemize-minus>
    <item><strong|K-V.2.16> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C09.lean#L403-L442>
    <em|(key result)> \V Strict-time Ward boost identities and Lie relations
    imply real Lorentz motion covariance of the functional, without any
    spectrum assumption.
  </itemize-minus>

  <label|k-v-2-17>

  <\itemize-minus>
    <item><strong|K-V.2.17> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C05.lean#L205-L230>
    <em|(key result)> \V The absolute-frequency Fourier identity holds on
    compactly supported tests after exponential multiplication for the
    strict-height transform.
  </itemize-minus>

  <label|k-v-2-18>

  <\itemize-minus>
    <item><strong|K-V.2.18> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C08.lean#L285-L286>
    <em|(key result)> \V The C08 service statement on strong push and boost
    generator holds.
  </itemize-minus>

  <label|k-v-2-19>

  <\itemize-minus>
    <item><strong|K-V.2.19> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/C19.lean#L213-L226>
    <em|(key result)> \V Germs through each tube are obtained using real
    Lorentz covariance and a boost path.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> V.1 Decomposition of the limit into
  phases|V-1.tm>|<hlink|Part V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Detailed
  notes|../notes/V-2.tm>|<hlink|V.3 Reconstruction for every phase and the
  reconstructed theory \<rightarrow\>|V-3.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|V.2. Osterwalder-Schrader reconstruction of a
    Wightman theory \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|4>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|14>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-v-2-1|<tuple|10|14>>
    <associate|k-v-2-10|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-11|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-12|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-13|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-14|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-15|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-v-2-16|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-v-2-17|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-v-2-18|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-v-2-19|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-v-2-2|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-v-2-3|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-v-2-4|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-v-2-5|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-6|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-7|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-8|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-v-2-9|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|key-statements|<tuple|10|14>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|7|4>>
    <associate|unit-inputs|<tuple|1|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|4>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|v2-osterwalder-schrader-reconstruction-of-a-wightman-theory|<tuple|?|1>>
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