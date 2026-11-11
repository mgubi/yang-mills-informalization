<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> V.2 Osterwalder-Schrader reconstruction
  of a Wightman theory|V-2.tm>|<hlink|Part
  V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Detailed
  notes|../notes/V-3.tm>|<hlink|VI.1 Ward identities, the rotation action and
  the conserved stress tensor \<rightarrow\>|VI-1.tm>>

  <ym-title|V.3. Reconstruction for every phase and the reconstructed
  theory><label|v3-reconstruction-for-every-phase-and-the-reconstructed-theory>

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

  Passes reconstruction and field identities from almost every phase to every
  phase.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/V-3.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: V.2|V-2.tm> <ym-middot> <hlink|Next: VI.1
  \<rightarrow\>|VI-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> V, phases and reconstruction. <strong|Lean:>
    <hlink|<verbatim|YM/EveryPhase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase>
    (34 files). Its hypotheses are recorded in
    <hlink|<verbatim|YM/Spec/Closed.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L73>
    and <hlink|<verbatim|YM/Phase/Mixture.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L148>.
    <strong|Folder inventory (a different scope from the allocation below):>
    5,268 lines.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Hypotheses throughout.> Fix a Wilson family, extraction and limit
  table <math|S<rsup|<math-up|mix>>> satisfying
  <hlink|<verbatim|Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>,
  constructed in VIII.1. This includes the Euclidean axioms; a compact metric
  phase space <math|X> with full-support Borel probability <math|\<nu\>>;
  continuous characters <math|\<chi\><rsub|\<xi\>>>, indexed bijectively by
  <math|X>, of the commutative C<math|<rsup|\<ast\>>> ground-space slab
  algebra <math|\<frak-A\>>, with <math|\<xi\>\<mapsto\>\<chi\><rsub|\<xi\>><around|(|M|)>>
  continuous and <math|<big|int>\<chi\><rsub|\<xi\>><around|(|M|)>*d*\<nu\>=<around|\<langle\>|\<omega\>,M*\<omega\>|\<rangle\>>>
  for every <math|M\<in\>\<frak-A\>>; spatial translations trivial on the
  mixed ground space; phase tables satisfying the Euclidean axioms and
  <math|S<rsup|\<xi\>><around|(|w|)>=\<chi\><rsub|\<xi\>><around|(|M<rsub|w>|)>>
  for distinct-point words, where <math|M<rsub|w>> is their time-translated
  compressed slab operator; the selected reconstruction at
  <math|\<xi\><rsub|\<ast\>>> and continuations of
  <math|S<rsup|<math-up|mix>>,S<rsup|\<xi\><rsub|\<ast\>>>>; and the VI.1
  field algebra, derivatives, rotations, Euclidean stress tensor and phase
  Ward identities.

  <strong|Proposition V.3.1 (every phase).> There exist OS spaces of
  <math|S<rsup|\<xi\>>> with slab operators, continuations
  <math|<math-ss|F><rsup|\<xi\>>> of <math|S<rsup|\<xi\>>> with boundary
  distributions <math|W<rsup|\<xi\>>>, and theories
  <math|\<frak-W\><rsub|\<xi\>>=<around|(|\<cal-H\><rsub|\<xi\>>,\<frak-D\><rsub|\<xi\>>,\<Omega\><rsub|\<xi\>>,\<phi\><rsub|\<xi\>>,U<rsub|\<xi\>>,P<rsub|\<xi\>>|)>>
  for every <math|\<xi\>\<in\>X>, agreeing with V.1\UV.2 at
  <math|\<xi\><rsub|\<ast\>>>. The common label space <math|\<bbb-F\>>,
  generated by the <math|F<rsub|d>>, has the selected star operation and
  Poincaré action; <math|\<frak-D\><rsub|\<xi\>>> is the dense invariant word
  domain, <math|\<Omega\><rsub|\<xi\>>> a unit vacuum, and
  <math|U<rsub|\<xi\>>> a strongly continuous unitary Poincaré representation
  on the Hilbert space <math|\<cal-H\><rsub|\<xi\>>>. Fields
  <math|\<phi\><rsub|\<xi\>><around|(|a,f|)>> use <math|a\<in\>\<bbb-F\>>,
  <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4>|)>>. For every phase:

  <\enumerate>
    <item>Vacuum field products equal <math|W<rsup|\<xi\>>>;
    <math|\<phi\><rsub|\<xi\>><around|(|a,f|)><rsup|\<ast\>>> extends
    <math|\<phi\><rsub|\<xi\>><around|(|a<rsup|\<ast\>>,<wide|f|\<bar\>>|)>>;
    spacelike separated fields commute on <math|\<frak-D\><rsub|\<xi\>>>;
    <math|U<rsub|\<xi\>>> implements Poincaré covariance; the translation
    spectrum lies in <math|<wide|V|\<bar\>><rsub|+>>. Every nonzero
    <math|a\<in\>\<bbb-F\>> has some <math|f\<in\>\<cal-S\><around|(|\<bbb-R\><rsup|4>|)>>
    with <math|\<phi\><rsub|\<xi\>><around|(|a,f|)>\<ne\>0> on
    <math|\<frak-D\><rsub|\<xi\>>>; translation-invariant vectors are
    multiples of <math|\<Omega\><rsub|\<xi\>>>.

    <item>A unitary <math|J<rsub|\<xi\>>:\<cal-H\><rsub|\<xi\>>\<to\>\<cal-H\><rsup|<math-up|OS>><rsub|\<xi\>>>
    sends <math|\<Omega\><rsub|\<xi\>>> to <math|\<omega\><rsub|\<xi\>>>,
    intertwines translations and spectral projections, and sends word vectors
    to boundary values of the corresponding Euclidean vectors at imaginary
    times.

    <item>The OS ground space is <math|\<cal-D\><rsub|\<xi\>>=\<bbb-C\>*\<omega\><rsub|\<xi\>>>.

    <item>For every <math|x\<in\>\<cal-H\><rsub|\<xi\>>>,
    <math|P<rsup|0><rsub|\<xi\>>*x=x> iff
    <math|x\<in\>\<bbb-C\>*\<Omega\><rsub|\<xi\>>>.

    <item>For every compactly supported finite sum of words <math|A>, some
    <math|M\<geqslant\>0> satisfies <math|\<mu\><rsub|A><rsup|\<xi\>><around|(|<around|{|0\<less\>p<rsup|4>\<leqslant\>u|}>|)>\<leqslant\>M*u<rsup|2>>
    for all <math|\<xi\>\<in\>X>, <math|0\<less\>u\<leqslant\>1>.

    <item>For every such <math|A>, some <math|M\<geqslant\>0> satisfies, for
    all <math|\<xi\>\<in\>X>, <math|s\<geqslant\>1>,

    <\equation*>
      0\<leqslant\><around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,<around|(|e<rsup|-s*H<rsub|\<xi\>>>-P<rsup|0><rsub|\<xi\>>|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>\<leqslant\>M*s<rsup|-2>.
    </equation*>

    <item>A bounded complex-linear <math|B> is scalar iff, for every
    <math|a,f> and <math|u,v\<in\>\<frak-D\><rsub|\<xi\>>>,
    <math|u\<in\><math-up|dom><space|0.17em>\<phi\><rsub|\<xi\>><around|(|a,f|)><rsup|\<ast\>>>
    and <math|<around|\<langle\>|\<phi\><rsub|\<xi\>><around|(|a,f|)><rsup|\<ast\>>*u,B*v|\<rangle\>>=<around|\<langle\>|u,B*\<phi\><rsub|\<xi\>><around|(|a,f|)>*v|\<rangle\>>>.

    <item>Proposition V.3.y holds.

    <item>For every <math|n>, <math|a\<in\>\<bbb-F\><rsup|n>>,
    <math|g\<in\>\<cal-S\><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>|)>>,
    <math|\<xi\>\<mapsto\>W<rsub|n><rsup|\<xi\>><around|(|a;g|)>> is
    continuous and <math|<big|int><rsub|X>W<rsub|n><rsup|\<xi\>><around|(|a;g|)>*d*\<nu\>=W<rsub|n><rsup|<math-up|mix>><around|(|a;g|)>>.
    For every distinct-point word <math|w>,
    <math|<big|int><rsub|X>S<rsup|\<xi\>><around|(|w|)>*d*\<nu\>=S<rsup|<math-up|mix>><around|(|w|)>>.
  </enumerate>

  <em|Status:> theorem under the stated hypotheses. <em|Lean:>
  <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>.
  Items 5\U7 are also Propositions V.3.n (<hlink|<verbatim|light_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L221-L232>),
  V.3.o (<hlink|<verbatim|inverse_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192>)
  and V.3.t (<hlink|<verbatim|commutant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L118-L193>).

  <strong|Proposition V.3.2 (no exceptional phase).> For every
  <math|\<xi\>\<in\>X> and <math|x\<in\>\<cal-H\><rsub|\<xi\>>>,
  <math|P<rsup|0><rsub|\<xi\>>*x=<around|\<langle\>|\<Omega\><rsub|\<xi\>>,x|\<rangle\>>*\<Omega\><rsub|\<xi\>>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|all_plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144>.

  <strong|Remark V.3.3 (additional consequences).> Under V.3.1, for every
  <math|\<xi\>> and <math|x\<in\>\<cal-H\><rsub|\<xi\>>>, being fixed by
  <math|e<rsup|-s*H<rsub|\<xi\>>>> for all <math|s\<geqslant\>0>, being
  translation invariant, and belonging to
  <math|\<bbb-C\>*\<Omega\><rsub|\<xi\>>> are equivalent. For every degree
  <math|d> and degree-<math|d> token coefficient vector <math|v>, nullness
  for <math|S<rsup|\<xi\>>> is equivalent to vanishing of the field of its
  <math|F<rsub|d>> class on every test. For every
  <math|O\<in\>O<around|(|4|)>>, <math|b\<in\>\<bbb-R\><rsup|4>>, coordinate
  <math|a>, finite family of distinct-point words <math|w<rsub|i>> in
  <math|<around|{|x:<around|(|O<rsup|-1><around|(|x-b|)>|)><rsup|a>\<gtr\>0|}>>
  and coefficients <math|c<rsub|i>\<in\>\<bbb-C\>>,

  <\equation*>
    <big|sum><rsub|i,j><wide|c<rsub|i>|\<bar\>>c<rsub|j>*S<rsup|\<xi\>>*<around|(|\<theta\><rsub|O,b,a>*w<rsub|i>*<space|0.17em>w<rsub|j>|)>\<geqslant\>0.
  </equation*>

  Here <math|\<theta\><rsub|O,b,a>> reverses the word, reflects its points
  across the hyperplane, and transports the <math|a>-axis label reflection
  through <math|O>. <em|Status:> theorem consequences, unused by the main
  theorem. <em|Lean:> <hlink|<verbatim|fixedHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L100-L102>,
  <hlink|<verbatim|exactly_fixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L103-L106>,
  <hlink|<verbatim|recognizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L90-L98>,
  <hlink|<verbatim|allPlanes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L84-L88>.

  <strong|Proposition V.3.y (stress tensor).> For every <math|\<xi\>\<in\>X>:

  <\itemize-minus>
    <item><strong|(T0)> <math|<math-ss|F><rsup|\<xi\>>> extends
    holomorphically to the full forward tube (consecutive imaginary
    differences in the open forward cone), with continuous tested partial
    boundaries on the closed cone, equal to <math|W<rsup|\<xi\>>> at zero.
    Each adjacent pair has label-independent tied heights tending to zero
    with equal exchange germs at spacelike separation.

    <item><strong|(T1)\U(T4)> For every proper orthochronous Poincaré
    transformation <math|g>, Schwartz <math|h>, indices
    <math|a,b\<in\><around|{|1,2,3,4|}>> and
    <math|u,v,x\<in\>\<frak-D\><rsub|\<xi\>>>,
    <math|U<rsub|\<xi\>><around|(|g|)>*\<frak-D\><rsub|\<xi\>>\<subset\>\<frak-D\><rsub|\<xi\>>>
    and

    <\equation*>
      U<rsub|\<xi\>><around|(|g|)>*T<rsub|a*b><around|(|h|)>*x=<big|sum><rsub|i,j>\<Lambda\><around|(|g|)><rsub|i*a>*\<Lambda\><around|(|g|)><rsub|j*b>*T<rsub|i*j>*<around|(|h\<circ\>g<rsup|-1>|)>*U<rsub|\<xi\>><around|(|g|)>*x,
    </equation*>

    <\equation*>
      T<rsub|a*b>=T<rsub|b*a>,<space|2em><around|\<langle\>|T<rsub|a*b><around|(|h|)>*u,v|\<rangle\>>=<around|\<langle\>|u,T<rsub|a*b><around|(|<wide|h|\<bar\>>|)>*v|\<rangle\>>,<space|2em><big|sum><rsub|a>\<eta\><rsub|a*a>*T<rsub|a*b>*<around|(|\<partial\><rsub|a>*h|)>=0.
    </equation*>

    <item><strong|(T5)> Fix <math|B\<in\>F<rsub|d>>, a Killing field
    <math|K>, compact <math|\<cal-O\>\<subset\>\<bbb-R\><rsup|4>>,
    <math|m\<in\>C<rsub|c><rsup|\<infty\>><around|(|\<bbb-R\><rsup|4>|)>>
    supported in <math|\<cal-O\>>, real <math|f\<in\>C<rsub|c><rsup|\<infty\>><around|(|\<bbb-R\>|)>>
    with <math|<big|int>f=1>, and complex
    <math|c\<in\>C<rsub|c><rsup|\<infty\>><around|(|\<bbb-R\><rsup|3>|)>>
    equal to <math|1> on an open ball. Suppose every
    <math|<around|(|<wide|y|\<vect\>>,s|)>> over its complement, for
    <math|s\<in\><math-up|supp><space|0.17em>f>, is strictly spacelike to
    every point of <math|\<cal-O\>>. On <math|\<frak-D\><rsub|\<xi\>>>,

    <\equation*>
      i<around|[|Q<rsub|K><around|(|f,c|)>,\<phi\><rsub|\<xi\>><around|(|B,m|)>|]>=\<phi\><rsub|\<xi\>><around|(|\<Sigma\><rsub|K>*B,m|)>-<big|sum><rsub|a>\<phi\><rsub|\<xi\>><around|(|B,\<partial\><rsub|a>*<around|(|K<rsup|a>*m|)>|)>.
    </equation*>

    <item><strong|(T6)> Under these conditions,
    <math|i<around|[|Q<rsub|K><around|(|f,c|)>,A|]>>, for every finite sum of
    words <math|A> supported in <math|\<cal-O\>>, is the sum replacing one
    factor at a time by (T5), preserving order, for any representatives in
    the <math|F<rsub|d>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Stress.force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L94-L116>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|IV.1:> Euclidean axioms
    (<hlink|<verbatim|Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>).

    <item><strong|V.1:> character decomposition, copy bounds, OS realization
    and almost-everywhere vacuum uniqueness
    (<hlink|<verbatim|Cluster.lifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L91-L110>).

    <item><strong|V.2:> reconstruction, polynomial one-point slab bounds and
    C01\UC29 analytic estimates (<hlink|<verbatim|Relativistic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L50-L54>).

    <item><strong|VI.1:> field algebra and Euclidean stress Ward identities
    (<hlink|<verbatim|Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>).

    <item>OS reconstruction; spectral theorem; Vitali\UMontel, Morera and
    Liouville theorems; dominated convergence.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Uniform slab domination transfers reconstruction to every phase. Character
  continuity passes through holomorphic continuation to boundary
  distributions. Locality supplies uniform low-energy and heat decay; full
  support and continuity extend vacuum-subtracted decay from almost every
  phase to every phase. Its large-time limit identifies the vacuum
  projection. Separately, Euclidean vector recovery proves surjectivity;
  continued Ward identities give stress charges.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Uniform reconstruction.> Write
    <math|\<Pi\><rsub|\<xi\>><around|(|d,w|)>> and
    <math|\<Pi\><around|(|d,w|)>> for phase and mixed slab operators.
    Repeated reflection and taking roots give
    <math|<around|\<\|\|\>|\<Pi\><rsub|\<xi\>><around|(|d,w|)>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|\<Pi\><around|(|d,w|)>|\<\|\|\>>>
    for every positive thickness and distinct-point slab word. Apply V.2
    phasewise. Lean: <hlink|<verbatim|sameBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L95-L100>,
    <hlink|<verbatim|almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L157-L194>.

    <item><strong|Boundary continuity.> Uniform polynomial bounds,
    Vitali\<#2019\>s theorem and a Taylor formula with integrable remainder
    prove continuity and barycenters of <math|W<rsup|\<xi\>>>. Lean:
    <hlink|<verbatim|word_continuity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Barycenter.lean#L48-L73>,
    <hlink|<verbatim|barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Barycenter.lean#L75-L90>.

    <item><strong|Surjectivity.> Tests with compact frequency support and
    exponential damping recover positive-height Euclidean vectors in
    <math|<math-up|ran><space|0.17em>J<rsub|\<xi\>>>; totality and closedness
    give surjectivity. Lean: <hlink|<verbatim|onto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L178-L223>.

    <item><strong|Low energy.> For compactly supported <math|A>, locality
    makes the time-averaged odd vacuum commutator compactly supported in
    space. The nonnegative weight <math|<around|(|1-cos E|)>/E> (zero at
    <math|E=0>) and a momentum bump give shell mass
    <math|O<around|(|u<rsup|2>|)>>: spatial volume contributes
    <math|u<rsup|3>>, the weight contributes <math|u>. Dyadic summation
    yields item 5; Laplace integration yields item 6. Lean:
    <hlink|<verbatim|light_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L221-L232>,
    <hlink|<verbatim|inverse_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192>.

    <item><strong|Every vacuum.> Heat forms are continuous in <math|\<xi\>>.
    Almost-everywhere uniqueness and full support extend vacuum-subtracted
    decay everywhere; strong heat limits and density give V.3.2. Lean:
    <hlink|<verbatim|extends_decay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L51-L78>,
    <hlink|<verbatim|all_plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144>.

    <item><strong|Irreducibility.> Glue bounded half-plane matrix elements by
    weak centrality; Morera and Liouville make them constant. Vacuum
    uniqueness forces the commutant to be scalar. Lean:
    <hlink|<verbatim|commutant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L118-L193>.

    <item><strong|Stress charges.> Continue Euclidean contact identities
    through spatially integrated current jumps, then remove spectator cutoffs
    and take word-vector matrix elements to obtain (T5). Lean:
    <hlink|<verbatim|Stress.through_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Through.lean#L129-L142>,
    <hlink|<verbatim|Stress.local_action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L143-L177>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Uniform analytic boundary bounds, Euclidean vector recovery and joint
  current limits require care. Exchange germs agree only at spacelike
  separation; current limits are spatially integrated. The <math|u<rsup|2>>
  estimate does not imply a mass gap. Uniqueness of the phase itself remains
  undecided.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<cal-D\><rsub|\<xi\>>> is the fixed space of the OS heat semigroup;
  <math|\<frak-D\><rsub|\<xi\>>> is the Wightman word domain. Time is
  coordinate <math|4>; <math|P<rsup|0><rsub|\<xi\>>=P<rsub|\<xi\>><around|(|<around|{|p<rsup|4>=0|}>|)>>,
  <math|\<mu\><rsub|A><rsup|\<xi\>><around|(|B|)>=<around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,P<rsub|\<xi\>><around|(|B|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>>,
  and <math|e<rsup|-s*H<rsub|\<xi\>>>=J<rsub|\<xi\>><rsup|\<ast\>>*e<rsup|-s*H<rsup|<math-up|OS>><rsub|\<xi\>>>*J<rsub|\<xi\>>>.
  A compactly supported word sum has all tests in
  <math|C<rsub|c><rsup|\<infty\>>>. Write
  <math|\<eta\>=<math-up|diag><around|(|-1,-1,-1,1|)>>,
  <math|\<zeta\><rsub|4>=-i>, <math|\<zeta\><rsub|j>=1>,
  <math|T<rsub|a*b><around|(|h|)>=\<phi\><rsub|\<xi\>><around|(|-\<zeta\><rsub|a>*\<zeta\><rsub|b>*T<rsup|<math-up|E>><rsub|a*b>,h|)>>,
  and <math|Q<rsub|K><around|(|f,c|)>=<big|sum><rsub|b>T<rsub|4*b>*<around|(|K<rsup|b>*<around|(|c\<otimes\>f|)>|)>>.
  Here <math|K<around|(|x|)>=k+V*x>, <math|V<rsup|<math-ss|T>>*\<eta\>+\<eta\>*V=0>,
  and <math|\<Sigma\><rsub|K>> is its infinitesimal label action.

  The reconstruction family is <hlink|<verbatim|Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>
  (<verbatim|L.chambers>, <verbatim|L.contours>, <verbatim|L.actors>,
  <verbatim|L.J>); word sums are <hlink|<verbatim|SumOfWords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L14>;
  the charge is <hlink|<verbatim|Stress.Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L80-L81>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The C01\UC29 estimates remain analytic inputs from V.2. The current-jump
  argument needs explicit tube faces and spacelike neighborhoods; integrated
  limits do not supply pointwise stress limits.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/V-3.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|V.2|V-2.tm>, <hlink|I.1|I-1.tm>,
  <hlink|IV.1|IV-1.tm>, <hlink|V.1|V-1.tm>, <hlink|VI.1|VI-1.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|II.1|II-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.10|III-10.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 4,056 attributed lines; 395 line-counted
  declarations; 475 assigned declaration names. Of the assigned names, 451
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>
    (in part, 77%) \V 4,992 lines.

    <item>work package <hlink|<verbatim|YM/EveryPhase/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase>
    \V 154 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|publicReconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133>

    <item><hlink|<verbatim|Boundary.Probe.pref>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Distribution/Tests.lean#L48>

    <item><hlink|<verbatim|Boundary.Probe.hat_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Distribution/Tests.lean#L84-L90>

    <item><hlink|<verbatim|Table.Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73>

    <item><hlink|<verbatim|one_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L113-L147>

    <item><hlink|<verbatim|two_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L149-L160>

    <item><hlink|<verbatim|pulse_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L35-L44>

    <item><hlink|<verbatim|pulse_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L46-L59>

    <item><hlink|<verbatim|averaged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Average.lean#L88-L89>

    <item><hlink|<verbatim|eager>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Barycenter.lean#L18-L42>

    <item><hlink|<verbatim|Stress.measure_identity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L104-L137>

    <item><hlink|<verbatim|Stress.Season>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L14-L17>

    <item><hlink|<verbatim|Stress.accepts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L24-L35>

    <item><hlink|<verbatim|Stress.Reservation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L37-L40>

    <item><hlink|<verbatim|Stress.reservable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L42-L59>

    <item><hlink|<verbatim|Stress.action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L86-L88>

    <item><hlink|<verbatim|onFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Compatibility.lean#L26-L29>

    <item><hlink|<verbatim|Stress.compact_shells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Court.lean#L77-L117>

    <item><hlink|<verbatim|EveryPhase.Stress.Prospect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Cross.lean#L76-L83>

    <item><hlink|<verbatim|uniform_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L113-L170>

    <item><hlink|<verbatim|decay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L22-L75>

    <item><hlink|<verbatim|char_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L82-L88>

    <item><hlink|<verbatim|test_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L93-L111>

    <item><hlink|<verbatim|EveryPhase.Stress.Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L167-L171>

    <item><hlink|<verbatim|Stress.Jury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L73-L75>

    <item><hlink|<verbatim|Stress.partial_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L77-L164>

    <item><hlink|<verbatim|member>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L19-L22>

    <item><hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>

    <item><hlink|<verbatim|boundary_tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Frequency.lean#L103-L111>

    <item><hlink|<verbatim|chilled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Frequency.lean#L83>

    <item><hlink|<verbatim|shot_in>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Hot.lean#L111-L124>

    <item><hlink|<verbatim|vector_cooled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Hot.lean#L29-L75>

    <item><hlink|<verbatim|vector_in>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Hot.lean#L99-L109>

    <item><hlink|<verbatim|Stress.Generated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L64-L78>

    <item><hlink|<verbatim|Stress.Force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L81-L92>

    <item><hlink|<verbatim|precise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L195-L205>

    <item><hlink|<verbatim|paste>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L22-L54>

    <item><hlink|<verbatim|saturated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L56-L84>

    <item><hlink|<verbatim|weaklyCentral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L93-L96>

    <item><hlink|<verbatim|EveryPhase.Stress.Killing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Killing.lean#L20-L23>

    <item><hlink|<verbatim|lowE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L132>

    <item><hlink|<verbatim|dyadic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L135-L168>

    <item><hlink|<verbatim|averaged_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L16-L25>

    <item><hlink|<verbatim|\<nu\>letter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L173-L174>

    <item><hlink|<verbatim|word_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L179-L183>

    <item><hlink|<verbatim|sum_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L185-L195>

    <item><hlink|<verbatim|word_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L197-L206>

    <item><hlink|<verbatim|late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L208-L219>

    <item><hlink|<verbatim|fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L35-L36>

    <item><hlink|<verbatim|ringE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L40>

    <item><hlink|<verbatim|annulus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L43-L129>

    <item><hlink|<verbatim|storeys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L134-L155>

    <item><hlink|<verbatim|Almanac.priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L196-L199>

    <item><hlink|<verbatim|Almanac.almostEvery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L208-L212>

    <item><hlink|<verbatim|x_train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L32-L50>

    <item><hlink|<verbatim|buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L53-L74>

    <item><hlink|<verbatim|actual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L76-L91>

    <item><hlink|<verbatim|integral_holomorphic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L114-L146>

    <item><hlink|<verbatim|imaginary_evaluation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L152-L170>

    <item><hlink|<verbatim|power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L19-L46>

    <item><hlink|<verbatim|op_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L106-L119>

    <item><hlink|<verbatim|distant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L146-L160>

    <item><hlink|<verbatim|delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L171-L173>

    <item><hlink|<verbatim|comm_expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L175-L207>

    <item><hlink|<verbatim|reverseP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L42>

    <item><hlink|<verbatim|stands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L55>

    <item><hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Polynomials.lean#L85>

    <item><hlink|<verbatim|bHeat_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L102-L109>

    <item><hlink|<verbatim|residual_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L145-L150>

    <item><hlink|<verbatim|reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L20-L25>

    <item><hlink|<verbatim|reflection_projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L77-L86>

    <item><hlink|<verbatim|bHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L94-L95>

    <item><hlink|<verbatim|bHeat_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Projection.lean#L97-L100>

    <item><hlink|<verbatim|euclidean_shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Shell.lean#L128-L176>

    <item><hlink|<verbatim|bright_shot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L119-L128>

    <item><hlink|<verbatim|ordered_covered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L160-L176>

    <item><hlink|<verbatim|Stress.fieldM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L206>

    <item><hlink|<verbatim|Stress.tensor_lorentz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L210-L215>

    <item><hlink|<verbatim|Stress.tensor_herm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L217-L220>

    <item><hlink|<verbatim|Stress.tensor_conserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L227-L237>

    <item><hlink|<verbatim|Stress.M>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Tensor.lean#L27>

    <item><hlink|<verbatim|every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L146-L153>

    <item><hlink|<verbatim|boundary_realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L155-L156>

    <item><hlink|<verbatim|boundary_zero_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L158-L162>

    <item><hlink|<verbatim|groundvac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L16-L20>

    <item><hlink|<verbatim|proj_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L22-L39>

    <item><hlink|<verbatim|univ_of_closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L42-L46>

    <item><hlink|<verbatim|cluster_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L80-L112>

    <item><hlink|<verbatim|propagate_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vitali.lean#L67-L89>

    <item><hlink|<verbatim|Boundary.Small.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Tall.lean#L62-L63>

    <item><hlink|<verbatim|Independent.Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34>

    <item><hlink|<verbatim|Attachment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L156-L161>

    <item><hlink|<verbatim|Attachment.with_heat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L191-L194>

    <item><hlink|<verbatim|Attachment.measures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L198-L204>

    <item><hlink|<verbatim|Attachment.projections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L207-L246>

    <item><hlink|<verbatim|FieldCore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34-L44>

    <item><hlink|<verbatim|establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>

    <item><hlink|<verbatim|compatible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215>

    <item><hlink|<verbatim|contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L46-L49>

    <item><hlink|<verbatim|Headline.Reconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81>

    <item><hlink|<verbatim|OS.realization>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107>

    <item><hlink|<verbatim|OS.producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>

    <item><hlink|<verbatim|Resolution.barycenter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L113-L117>

    <item><hlink|<verbatim|Selection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127-L134>

    <item><hlink|<verbatim|Selection.Certificate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L136-L148>

    <item><hlink|<verbatim|Chamber.UniqueHeat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L35>

    <item><hlink|<verbatim|Spread.algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L54>

    <item><hlink|<verbatim|Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65-L72>

    <item><hlink|<verbatim|Resolution.Out>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L78-L86>

    <item><hlink|<verbatim|Resolution.receives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L89-L91>

    <item><hlink|<verbatim|Cluster.exp_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Unique.lean#L56-L86>

    <item><hlink|<verbatim|Waves.desired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L27-L28>

    <item><hlink|<verbatim|Waves.meant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Breath.lean#L50-L66>

    <item><hlink|<verbatim|Boundary.Waves.clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift/Ridge.lean#L78>

    <item><hlink|<verbatim|Algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L28-L31>

    <item><hlink|<verbatim|Work.B02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B02.lean#L17-L30>

    <item><hlink|<verbatim|Work.B14.universal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L119-L143>

    <item><hlink|<verbatim|Work.B14.plant_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B14.lean#L99-L107>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-v-3-1>

  <\itemize-minus>
    <item><strong|K-V.3.1> <hlink|<verbatim|Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>
    <em|(numbered result)> \V A bundled data structure of contours and
    reflection constructions indexed by characters, used to run the Wightman
    reconstruction before vacuum uniqueness is known.
  </itemize-minus>

  <label|k-v-3-2>

  <\itemize-minus>
    <item><strong|K-V.3.2> <hlink|<verbatim|pure_clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pure.lean#L43-L115>
    <em|(key result)> \V The integrated current jump at Euclidean external
    arguments converges, as the time parameter tends to zero from above, to
    the stated task value.
  </itemize-minus>

  <label|k-v-3-3>

  <\itemize-minus>
    <item><strong|K-V.3.3> <hlink|<verbatim|through_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Through.lean#L129-L142>
    <em|(numbered result)> \V The jump of the current converges to the
    prescribed constant jointly as the configuration tends to p and the
    parameter tends to 0+.
  </itemize-minus>

  <label|k-v-3-4>

  <\itemize-minus>
    <item><strong|K-V.3.4> <hlink|<verbatim|verdict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decree.lean#L208-L242>
    <em|(key result)> \V Partial and joint real distribution limits of the
    current jump hold, identifying the limit of tested Wightman-type boundary
    values with the prescribed expression.
  </itemize-minus>

  <label|k-v-3-5>

  <\itemize-minus>
    <item><strong|K-V.3.5> <hlink|<verbatim|Schwartz_shells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Court.lean#L147-L163>
    <em|(numbered result)> \V The shell identity for stress-tensor matrix
    elements extends from compactly supported to arbitrary sentences by
    approximation.
  </itemize-minus>

  <label|k-v-3-6>

  <\itemize-minus>
    <item><strong|K-V.3.6> <hlink|<verbatim|local_action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Charge.lean#L143-L177>
    <em|(key result)> \V The time-smeared stress charge acts by commutator on
    a local field with compactly supported test as the expected
    Lorentz/translation action when the spatial cutoff is equal to one near
    the support.
  </itemize-minus>

  <label|k-v-3-7>

  <\itemize-minus>
    <item><strong|K-V.3.7> <hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L94-L116>
    <em|(key result)> \V For the reconstructed systems in all phases, the
    stress operator satisfies the force relations with the energy, rotations
    and derivatives.
  </itemize-minus>

  <label|k-v-3-8>

  <\itemize-minus>
    <item><strong|K-V.3.8> <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>
    <em|(main result)> \V There exists a family of reconstructed theories,
    one for each character phase, that is completed, i.e., satisfies all
    reconstruction requirements.
  </itemize-minus>

  <label|k-v-3-9>

  <\itemize-minus>
    <item><strong|K-V.3.9> <hlink|<verbatim|strict_evaluation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pages.lean#L193-L228>
    <em|(numbered result)> \V Strict-height waves evaluated at points are
    continuous in the character, and their integral over characters equals
    the base value.
  </itemize-minus>

  <label|k-v-3-10>

  <\itemize-minus>
    <item><strong|K-V.3.10> <hlink|<verbatim|inverse_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Decay.lean#L173-L192>
    <em|(key result)> \V After subtracting the full zero-energy projection,
    the vacuum-subtracted word correlations decay at an inverse-square rate
    uniformly over characters.
  </itemize-minus>

  <label|k-v-3-11>

  <\itemize-minus>
    <item><strong|K-V.3.11> <hlink|<verbatim|onto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Surjective.lean#L178-L223>
    <em|(main result)> \V The boundary isometry is surjective, so there are
    no missing directions.
  </itemize-minus>

  <label|k-v-3-12>

  <\itemize-minus>
    <item><strong|K-V.3.12> <hlink|<verbatim|light_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Light.lean#L221-L232>
    <em|(key result)> \V The spectral measure of low energies below u of word
    states is bounded by a constant times u squared, uniformly in the
    character.
  </itemize-minus>

  <label|k-v-3-13>

  <\itemize-minus>
    <item><strong|K-V.3.13> <hlink|<verbatim|irreducible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Irreducible.lean#L207-L216>
    <em|(key result)> \V An operator is weakly central for the reconstructed
    theory exactly when it is a scalar multiple of the identity.
  </itemize-minus>

  <label|k-v-3-14>

  <\itemize-minus>
    <item><strong|K-V.3.14> <hlink|<verbatim|all_plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Vacuum.lean#L115-L144>
    <em|(key result)> \V The zero-energy spectral projection of each
    character theory is the projection onto the vacuum.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> V.2 Osterwalder-Schrader reconstruction
  of a Wightman theory|V-2.tm>|<hlink|Part
  V|../units.tm#part-v-phases-and-reconstruction><ym-nav-sep><hlink|Detailed
  notes|../notes/V-3.tm>|<hlink|VI.1 Ward identities, the rotation action and
  the conserved stress tensor \<rightarrow\>|VI-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|V.3. Reconstruction for every phase and the
    reconstructed theory \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|10>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-v-3-1|<tuple|10|10>>
    <associate|k-v-3-10|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-11|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-12|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-13|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-14|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-2|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-v-3-3|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-v-3-4|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|k-v-3-5|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-6|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-7|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-8|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-v-3-9|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|key-statements|<tuple|10|10>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|7|5>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|v3-reconstruction-for-every-phase-and-the-reconstructed-theory|<tuple|?|1>>
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