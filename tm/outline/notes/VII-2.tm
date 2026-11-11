<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.1 Free Maxwell fields for the
  short-distance comparison (notes)|VII-1.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-2.tm>|<hlink|VII.3 Free Wick polynomials and reflected
  Gram positivity (notes) \<rightarrow\>|VII-3.tm>>

  <ym-title|VII.2. The trace of the stress tensor and the trace anomaly \V
  detailed notes><label|vii2-the-trace-of-the-stress-tensor-and-the-trace-anomaly--detailed-notes>

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

    <with|par-left|1tab|4.1 The centered trace and its spectral measure
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Ward darts and their transport through the RG
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 The one-loop slope
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 From the slope to the coefficient of the trace
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The short-distance law
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Exclusions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit VII.2: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VII-2.tm>.
  </quotation>

  <hlink|Unit page|../units/VII-2.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
  <hlink|<verbatim|YM/TraceExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension>
  (namespaces <verbatim|YM.TraceExtension> and <verbatim|YM.Trace>). The
  folder splits as follows:

  <\itemize-minus>
    <item>the centered trace and its spectral measure: the top-level files
    <verbatim|Centered>, <verbatim|WilsonTrace>, <verbatim|LogScaling>,
    <verbatim|ConeLaplace>, <verbatim|Dyadic>, <verbatim|Belfry>,
    <verbatim|Agora>, <verbatim|Endpoint>;

    <item>the renormalization-group proof of the anomaly: <verbatim|Chart>,
    <verbatim|Slate>, <verbatim|Shelves>, <verbatim|Terrace>,
    <verbatim|Margin>, <verbatim|Loft>, <verbatim|Lamp>, <verbatim|Det>,
    <verbatim|Perfect>, <verbatim|Anchor>, <verbatim|Cask>,
    <verbatim|Shepherd>, with the auxiliary folders <verbatim|Zn>,
    <verbatim|Weir>, <verbatim|Pills>, <verbatim|Turret>, <verbatim|Wicket>,
    <verbatim|Fen>, <verbatim|Swift>, <verbatim|Filch>, <verbatim|Quince>,
    <verbatim|Pi>, <verbatim|Xo>;

    <item>the short-distance law: <verbatim|Verse> and <verbatim|Foundation>;

    <item>the exclusions: <verbatim|Wick> and <verbatim|Fock>;

    <item>a position-space variant: <verbatim|Atlas>, <verbatim|Pith>,
    <verbatim|Sundial>, <verbatim|Link>.
  </itemize-minus>

  The unit also contains <hlink|<verbatim|FreeRanks.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean>,
  the specification <hlink|<verbatim|HeadlineSpec.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean>,
  <hlink|<verbatim|ManuscriptTraceTests.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean>
  and small pieces of <verbatim|YM/Integration> and
  <verbatim|YM/RG08/Calendar>.

  <strong|Size:> 20,681 lines. The argument headed by
  <hlink|<verbatim|Store_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68>
  and the argument headed by <hlink|<verbatim|agenda>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35>
  are the two main RG arguments.

  <strong|Conventions.> <math|G> is a compact matrix group with simple
  nonabelian Lie algebra <math|\<frak-g\>>; <math|dim \<frak-g\>> is the real
  dimension. <math|C<rsub|A>> is the adjoint Casimir of I.1, defined by
  <math|-<math-up|tr><around|(|<math-up|ad><rsub|x><math-up|ad><rsub|y>|)>=C<rsub|A><around|\<langle\>|x,y|\<rangle\>>>.
  The constants are

  <\equation*>
    \<kappa\><rsub|G>=<frac|11*<space|0.17em>C<rsub|A>|24*\<pi\><rsup|2>>,<space|2em>b<rsub|0>=<frac|\<kappa\><rsub|G>|2>=<frac|11*<space|0.17em>C<rsub|A>|48*\<pi\><rsup|2>>,<space|2em>d<rsub|2>=-<frac|\<kappa\><rsub|G>|4>=-<frac|b<rsub|0>|2>,<space|2em>A<rsub|G>=12<around*|(|<frac|d<rsub|2>|b<rsub|0>>|)><rsup|2><frac|dim
    \<frak-g\>|\<pi\><rsup|4>>=<frac|3*dim \<frak-g\>|\<pi\><rsup|4>>.
  </equation*>

  <math|\<kappa\><rsub|G>> is the slope of the coupling schedule
  <math|<wide|\<beta\>|^><rsub|k>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*log
  <around|(|1/a<rsub|k>|)>> of the renormalization group (RG) at level
  <math|k> (II.2, III.9). Write <math|g<around|(|r|)><rsup|2>=\<beta\><around|(|r|)><rsup|-1>>
  for the running coupling in free-field normalization.

  <\itemize-minus>
    <item>Unless other hypotheses are stated, fix the reconstructed theory
    supplied by a final record <math|F> (VIII.1), over a Wilson family
    <math|C>, an extraction order <math|f> and a limit table <math|S>.

    <item><math|F<rsub|d>> is the space of degree-<math|d> field labels;
    <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>>>
    is the one-point function of the selected phase.

    <item><math|T=<around|(|T<rsub|\<mu\>*\<nu\>>|)>> is the Ward-normalized
    stress tensor of VI.1.

    <item><math|<math-ss|F>> is the free Maxwell table (the two constructions
    listed in Ÿ6 coincide by definition): <math|dim \<frak-g\>> independent
    free Maxwell fields, with propagator <math|<around|\<langle\>|A*A|\<rangle\>>=1/<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)>>.

    <item><math|\<cal-O\>\<in\><math-ss|F><rsub|4>> is the Wick-ordered label
    <math|<tfrac|1|4><big|sum><rsub|a,\<mu\>,\<nu\>>F<rsup|a><rsub|\<mu\>*\<nu\>>*F<rsup|a><rsub|\<mu\>*\<nu\>>>,
    and <math|T<rsup|<math-up|free>>> is the traceless free Maxwell stress
    tensor.

    <item><math|G<rsub|\<Theta\>><around|(|r|)>=S<rsup|\<xi\><rsub|\<ast\>>>*<around*|(|\<Theta\>*<around|(|-<tfrac|r|2>e<rsub|0>|)>*<space|0.17em>\<Theta\><around|(|<tfrac|r|2>e<rsub|0>|)>|)>>
    is the time-axis two-point function of the selected phase.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The unit defines the centered trace <math|\<Theta\>> and proves four
  results about it:

  <\itemize-minus>
    <item>the trace anomaly at the level of fields: at scale <math|r>,
    <math|\<Theta\>> equals <math|-\<kappa\><rsub|G>*\<beta\><around|(|r|)><rsup|-1>*\<cal-O\>+o<around|(|\<beta\><around|(|r|)><rsup|-1>|)>>,
    where <math|\<beta\><around|(|r|)>\<sim\>\<kappa\><rsub|G>*log
    <around|(|1/r|)>> is the running inverse coupling;

    <item>the resulting short-distance law
    <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r|)>\<to\>3*dim
    \<frak-g\>/\<pi\><rsup|4>>, and the corresponding law for the spectral
    measure;

    <item>the uniqueness (rank one) of the conserved stress tensor;

    <item>two exclusions of free-field descriptions.
  </itemize-minus>

  Most of the lines prove the field-level anomaly, Proposition VII.2.4. That
  proof is a renormalization-group argument: a lattice Ward identity is
  transported through the block-spin steps, and a one-loop computation fixes
  the coefficient.

  <strong|Proposition VII.2.1 (the centered trace).> Let

  <\equation*>
    \<Theta\>\<assign\><big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>-<around*|\<langle\>|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>>*\<b-1\>\<in\>F<rsub|4>.
  </equation*>

  (a) <math|<around|\<langle\>|\<Theta\>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>>=0>.
  <math|\<Theta\>> is real, invariant under every
  <math|K\<in\>O<around|(|4|)>> for the rotation action of VI.1, and fixed by
  the time-reflection adjoint. The same holds for the trace centered in any
  phase table respecting <math|S>.

  (b) In the reconstructed Wightman theory of the selected phase, the pinned
  field label <math|\<iota\><around|(|\<Theta\>|)>> is fixed by the
  conjugation <math|J> and by the Lorentz group. Moreover
  <math|<around|\<langle\>|\<Omega\>,\<Phi\><rsub|\<Theta\>><around|(|f|)>*\<Omega\>|\<rangle\>>=0>
  for every Schwartz <math|f>.

  (c) For every Schwartz test <math|f>, as an identity on the common
  invariant field domain, <math|\<Phi\><rsub|\<Theta\>><around|(|f|)>=\<Phi\><rsub|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>><around|(|f|)>-<around*|\<langle\>|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>><around*|(|<big|int>f|)><space|0.17em><math-up|id>>.

  (d) If <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r|)>\<to\>A\<gtr\>0>,
  then <math|\<iota\><around|(|\<Theta\>|)>\<neq\>0>.

  <em|Status:> theorem. It uses the conservation, reality and tensoriality of
  <math|T> and the rotation laws (VI.1), and the reconstruction (V.2\UV.3).
  <em|Lean:>

  <\itemize-minus>
    <item>definitions: <hlink|<verbatim|stressTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17>,
    <hlink|<verbatim|centerIn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L63>,
    <hlink|<verbatim|theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64>,
    <hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48>;

    <item>(a): <hlink|<verbatim|centerIn_vac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L66-L67>,
    <hlink|<verbatim|trace_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L69-L71>,
    <hlink|<verbatim|trace_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L73-L74>,
    <hlink|<verbatim|trace_adj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L76-L78>;

    <item>(b): <hlink|<verbatim|self_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L58-L59>,
    <hlink|<verbatim|pinned_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L61-L63>
    with <hlink|<verbatim|scalar_rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L80-L106>,
    <hlink|<verbatim|pinned_centered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L65-L67>
    with <hlink|<verbatim|vev_boundary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L16-L41>;

    <item>(c): <hlink|<verbatim|center_field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link/Identity.lean#L158-L161>;

    <item>(d): <hlink|<verbatim|nonzero_strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Grand.lean#L23-L27>;

    <item>public form: the zero-expectation and field-identification clauses
    of <hlink|<verbatim|TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>,
    i.e. (T1).
  </itemize-minus>

  <strong|Proposition VII.2.2 (spectral representation).> There is a unique
  positive measure <math|\<mu\><rsub|\<Theta\>>> on <math|\<bbb-R\><rsup|4>>
  with the following properties.

  <\itemize-minus>
    <item>It has tempered growth: there are
    <math|C<rsub|\<mu\>>\<geqslant\>0> and <math|k\<in\>\<bbb-N\><rsub|0>>
    such that <math|\<mu\><rsub|\<Theta\>><around|{|p:p<rsub|0>\<leqslant\>R|}>\<leqslant\>C<rsub|\<mu\>>*R<rsup|k>>
    for every <math|R\<geqslant\>1>.

    <item>It is supported in the closed forward cone
    <math|<wide|V|\<bar\>><rsub|+>> and is Lorentz invariant.

    <item><math|e<rsup|-s*p<rsub|0>>*\<mu\><rsub|\<Theta\>>> is finite for
    <math|s\<gtr\>0>, and <math|G<rsub|\<Theta\>><around|(|s|)>=<big|int>e<rsup|-s*p<rsub|0>>*<space|0.17em>d*\<mu\><rsub|\<Theta\>><around|(|p|)>>
    for <math|s\<gtr\>0>.

    <item>For every Schwartz <math|\<varphi\>>, the spectral measure of the
    translation group in <math|\<Phi\><rsub|\<Theta\>><around|(|\<varphi\>|)>*\<Omega\>>
    is <math|<around|\||<wide|\<varphi\>|^>|\|><rsup|2>*\<mu\><rsub|\<Theta\>>>.

    <item>For every Schwartz test <math|\<phi\>> on
    <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|2>>, the Wightman function
    <math|W<rsub|2><around|(|\<Theta\>,\<Theta\>|)><around|(|\<phi\>|)>>
    equals <math|<big|int><wide|\<phi\>|^><rsup|<space|0.17em><text|w*a*v*e>>*<space|0.17em>d*\<mu\><rsub|\<Theta\>>>.
  </itemize-minus>

  In particular <math|G<rsub|\<Theta\>>> is real, nonnegative and
  nonincreasing on <math|<around|(|0,\<infty\>|)>>.

  <em|Status:> theorem: the Källén\ULehmann representation, obtained from the
  spectral theorem for the translations of the reconstruction (V.2\UV.3).
  <em|Lean:> <hlink|<verbatim|TraceSpectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94>,
  <hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>,
  <hlink|<verbatim|monotone_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L13-L21>.

  <strong|Proposition VII.2.3 (one-loop certificates along every filter).>
  Let <math|G> be simple and let <math|C> be the Wilson family issued by run
  data satisfying the RG construction hypotheses of Ÿ2, item 4, including the
  chosen bounded block-spin run. Let <math|\<cal-L\>> be any filter on
  <math|\<bbb-N\>\<times\>\<bbb-N\>> along which both coordinates tend to
  infinity. Then there are work items <math|t=<around|(|t<rsub|k,N,p>|)>>,
  that is, level-5 lattice data at RG level <math|k> for the pair
  <math|<around|(|N,p|)>> of spacing and volume indices, with the following
  property. For all large <math|k> and <math|\<cal-L\>>-eventually in
  <math|<around|(|N,p|)>>, the lattice certificate of Ÿ6 holds at
  <math|<around|(|k,N,p|)>>. In particular the Ward dart
  <math|J=t<rsub|k,N,p>.*J> (Lemma VII.2.d), a lattice stress tensor with its
  Ward identity at level <math|k>, satisfies for every color index <math|q>

  <\equation*>
    <mid|\|><math-up|midPay><rsub|q><around|(|J|)>-<around|(|-12*\<kappa\><rsub|G>|)><mid|\|>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|-100>.
  </equation*>

  Here <math|<math-up|midPay><rsub|q>> is the real coefficient selector
  applied to the Haar divergence of the displacement field rooted at the
  origin; its exact definition is <hlink|<verbatim|midPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L38>.

  <em|Status:> theorem. It is used by III.2 to choose the run and as a
  hypothesis of VII.2.4. <em|Lean:> <hlink|<verbatim|agenda>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35>,
  <hlink|<verbatim|Grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L16>,
  <hlink|<verbatim|WorthB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L30-L40>.

  <strong|Proposition VII.2.4 (the gallery property: the anomaly at the level
  of fields).> Assume the following:

  <\itemize-minus>
    <item><math|C> satisfies the Wilson consistency conditions of II.1, and
    <math|G> is simple;

    <item>the quantitative RG and scaling-sequence hypotheses of Ÿ2, items 4
    and 9, hold; the auxiliary iteration depths <math|n<rsub|k>> are
    eventually at least <math|2>, and a sequence <math|z<rsub|d>> bounds
    every generator budget of degree at most <math|d> and satisfies the
    degree-<math|d> scaling estimates;

    <item><math|f> is an extraction order and <math|\<cal-L\>> is an
    ultrafilter on <math|\<bbb-N\><rsup|2>> finer than the fuse filter of
    <math|f>;

    <item>the work items <math|t> of VII.2.3 satisfy the certificate along
    <math|\<cal-L\>>.
  </itemize-minus>

  Then the following property holds. For every limit table <math|S> along
  <math|f> with ordered Wilson convergence, a Euclidean hierarchy, point
  limits, the cell hypothesis and corrected rank estimates, and every field
  algebra on <math|S> satisfying the derivative, rotation, conservation and
  Ward laws, there exist:

  <\itemize-minus>
    <item>limits <math|Z> of the RG data along <math|\<cal-L\>>:
    <math|Z.*\<beta\><around|(|k|)>=lim<rsub|\<cal-L\>>
    \<beta\><rsub|N,p><around|(|k|)>>, the renormalized inverse coupling at
    level <math|k>, with <math|<wide|\<beta\>|^><rsub|k>/2\<leqslant\>Z.*\<beta\><around|(|k|)>\<leqslant\>2*<wide|\<beta\>|^><rsub|k>>,
    together with the limits of the label transfers;

    <item>a free Maxwell hierarchy <math|<math-ss|a>> on <math|<math-ss|F>>,
  </itemize-minus>

  such that the following two statements hold.

  (i) Let <math|<around|(|r<rsub|i>,U<rsub|i>|)>> be a scaling sequence of
  <math|S> that approaches <math|<math-ss|a>>, with the RG lifts and
  pointwise lattice limits of VII.6. Write <math|k<rsub|i>\<to\>\<infty\>>
  for its base levels and <math|\<ell\><rsub|i>> for the later readout levels
  selected by these data. Here <math|r<rsub|i>*\<downarrow\>*0>, the
  <math|U<rsub|i>:<math-ss|F><rsub|d>\<to\>F<rsub|d>> are complex-linear
  identifications that eventually preserve the unit, reality and signed
  coordinate actions in each degree, and their rescaled correlations approach
  the free hierarchy. Set <math|w<rsub|i>\<assign\>Z.*\<beta\><around|(|\<ell\><rsub|i>|)>>.
  Then:

  <\itemize-minus>
    <item><math|w<rsub|i>\<to\>\<infty\>> and <math|log
    <around|(|1/r<rsub|i>|)>/w<rsub|i>\<to\>\<kappa\><rsub|G><rsup|-1>>;

    <item><math|r<rsub|i><rsup|4>*<space|0.17em>U<rsub|i><rsup|-1>*<wide|T|\<abovering\>><rsub|\<mu\>*\<nu\>>\<to\>T<rsup|<math-up|free>><rsub|\<mu\>*\<nu\>>>,
    where <math|<wide|T|\<abovering\>>> is <math|T> centered in <math|S>;

    <item>for every phase table <math|T<rprime|'>> with a hierarchy
    respecting <math|S>, there are real sequences <math|d<rsub|i>,e<rsub|i>>
    such that the trace <math|\<Theta\><rsub|T<rprime|'>>> centered in
    <math|T<rprime|'>> satisfies, eventually,
  </itemize-minus>

  <\equation*>
    r<rsub|i><rsup|4>*<space|0.17em>U<rsub|i><rsup|-1>*\<Theta\><rsub|T<rprime|'>>=e<rsub|i>*<space|0.17em>\<b-1\>+4*d<rsub|i>*<space|0.17em>\<cal-O\>,<space|2em>w<rsub|i>*d<rsub|i>\<to\>d<rsub|2>,<space|1em>w<rsub|i>*e<rsub|i>\<to\>0,
  </equation*>

  hence <math|w<rsub|i>*<space|0.17em>r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*\<Theta\><rsub|T<rprime|'>>\<to\>4*d<rsub|2>*<space|0.17em>\<cal-O\>=-\<kappa\><rsub|G>*<space|0.17em>\<cal-O\>>.

  (ii) Every sequence <math|s<rsub|j>\<gtr\>0> with <math|s<rsub|j>\<to\>0>
  has a subsequence that is the scale sequence of a scaling sequence
  satisfying (i).

  Thus the rescaled trace has leading term
  <math|-\<kappa\><rsub|G>*g<around|(|r|)><rsup|2>*\<cal-O\>>. In canonically
  normalized field-strength notation, this is the one-loop term
  <math|<frac|\<beta\><rsub|<math-up|RG>><around|(|g|)>|2*g>*F<rsup|a><rsub|\<mu\>*\<nu\>>*F<rsup|a><rsub|\<mu\>*\<nu\>>>,
  with <math|\<beta\><rsub|<math-up|RG>><around|(|g|)>=-b<rsub|0>*g<rsup|3>+o<around|(|g<rsup|3>|)>>.
  The precise field statement is the sequence limit above.

  <em|Status:> theorem. Its hypotheses are data of the construction run. They
  are discharged in III.2: in <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean>,
  for each <math|f> one takes an ultrafilter <math|\<cal-L\>> finer than the
  fuse filter of <math|f>, the work items of VII.2.3, and the gallery
  assembly. The result is recorded as <hlink|<verbatim|Funded.gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95>
  (VIII.1). <em|Lean:> <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>,
  <hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>,
  <hlink|<verbatim|Scribe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L52-L59>,
  <hlink|<verbatim|Store_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68>.

  <strong|Proposition VII.2.5 (short-distance law and spectral law).> Let
  <math|G> be simple, and suppose the gallery property holds for
  <math|<around|(|C,f|)>>. Then:

  (a) <math|<with|math-display|true|lim<rsub|r*\<downarrow\>*0>
  r<rsup|8>*log<rsup|2><around|(|1/r|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r|)>=A<rsub|G>=<frac|3*dim
  \<frak-g\>|\<pi\><rsup|4>>\<gtr\>0>>, as a limit in <math|\<bbb-C\>>.

  (b) As <math|\<rho\>\<to\>\<infty\>>,

  <\equation*>
    \<rho\><rsup|-8>*log<rsup|2> <space|-0.17em>\<rho\>*<big|int>\<varphi\>*<around|(|p/\<rho\>|)>*<space|0.17em>d*\<mu\><rsub|\<Theta\>><around|(|p|)>\<to\><frac|A<rsub|G>|1536*\<pi\>>*<big|int><rsub|V<rsub|+>><around|(|p<rsup|2>|)><rsup|2>*<space|0.17em>\<varphi\><around|(|p|)>*<space|0.17em>d<rsup|4>*p,
  </equation*>

  for continuous compactly supported <math|\<varphi\>> and for Schwartz
  <math|\<varphi\>>. Here <math|p<rsup|2>=p<rsub|0><rsup|2>-<around|\||<wide|p|\<vect\>>|\|><rsup|2>>;
  the measure on the right has Laplace transform <math|A<rsub|G>*s<rsup|-8>>.
  More explicitly, put <math|\<phi\><rsub|\<rho\>><around|(|x,y|)>=\<rho\><rsup|8>*\<phi\><around|(|\<rho\>*x,\<rho\>*y|)>>
  and <math|<wide|\<phi\>|^><rsup|<space|0.17em><math-up|wave>><around|(|p|)>=<big|int>e<rsup|i*p\<cdot\><around|(|y-x|)>>*\<phi\><around|(|x,y|)>*<space|0.17em>d<rsup|4>*x*<space|0.17em>d<rsup|4>*y>,
  in the Fourier convention of VII.2.2. Then
  <math|\<rho\><rsup|-8>*log<rsup|2> \<rho\>*<space|0.17em>W<rsub|2><around|(|\<Theta\>,\<Theta\>|)><around|(|\<phi\><rsub|\<rho\>>|)>>
  tends to the same cone integral with <math|\<varphi\>=<wide|\<phi\>|^><rsup|<space|0.17em><math-up|wave>>>.

  <em|Status:> theorem under the gallery property; (b) uses only (a) and
  VII.2.2. The final short-distance and spectral conclusions are filed in
  VIII.1. <em|Lean:>

  <\itemize-minus>
    <item>(a): <hlink|<verbatim|outside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88>,
    <hlink|<verbatim|EuclideanAsymptotic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75>,
    <hlink|<verbatim|award>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41>,
    <hlink|<verbatim|award_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L23-L27>;

    <item>(b): <hlink|<verbatim|compact_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L151-L157>,
    <hlink|<verbatim|spectral_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L163-L167>,
    <hlink|<verbatim|relative_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L203-L213>,
    <hlink|<verbatim|joint_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222>;

    <item>bundles: <hlink|<verbatim|Crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L16-L30>
    and <hlink|<verbatim|crest_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37>,
    <hlink|<verbatim|HighEnergy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L67-L82>;

    <item>public form: the amplitude identity and
    <hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>,
    i.e. (T2), (T3).
  </itemize-minus>

  <strong|Proposition VII.2.6 (the conserved stress tensor is unique).> Let
  <math|\<cal-K\><around|(|S|)>> be the real space of symmetric tensors
  <math|<around|(|B<rsub|\<mu\>*\<nu\>>|)>> in <math|F<rsub|4>> that are
  real, centered with respect to <math|S>, and covariant under signed
  coordinate permutations. For a derivative plan satisfying the derivative
  laws and the orientation condition, let
  <math|<math-up|div>:\<cal-K\><around|(|S|)>\<to\>\<cal-V\><around|(|S|)>>
  be the current divergence, where <math|\<cal-V\><around|(|S|)>> consists of
  real degree-<math|5> vectors covariant under signed coordinate
  permutations.

  (a) (free) For <math|G> simple, the free Maxwell hierarchy on
  <math|<math-ss|F>> and a derivative plan satisfying the derivative laws and
  the orientation condition: <math|<math-up|div>> is onto and <math|dim ker
  <math-up|div>=1>.

  (b) (interacting) In the setting of VII.2.4(i), <math|dim ker
  <math-up|div>=1> on <math|\<cal-K\><around|(|S|)>>; moreover <math|dim
  \<cal-K\><around|(|S|)>=3> and the target of <math|<math-up|div>> is
  two-dimensional.

  <em|Status:> theorem. (b) is the uniqueness statement of the assessment,
  Ÿ7.1. It is used in VII.2.4 to identify <math|T> with the tensor
  constructed from the RG. <em|Lean:> <hlink|<verbatim|free_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165>
  (from <hlink|<verbatim|free_closure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L83-L113>),
  <hlink|<verbatim|ranking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L41-L51>,
  the rank clause of <hlink|<verbatim|ChoiceK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L53-L55>.

  <strong|Proposition VII.2.7 (no finite Wick profile).> Suppose
  <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r|)>\<to\>A>
  with <math|A\<gtr\>0>.

  (a) Let <math|W<around|(|r|)>=<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>>*<big|prod><rsub|\<beta\>>K<rsub|m<rsub|\<alpha\>*\<beta\>>,q<rsub|\<alpha\>*\<beta\>>,h<rsub|\<alpha\>*\<beta\>>><around|(|r|)>>
  be any finite combination, with <math|c<rsub|\<alpha\>>\<in\>\<bbb-C\>>,
  where

  <\equation*>
    K<rsub|m,q,h><around|(|r|)>=<big|int><rsub|\<bbb-R\><rsup|3>><frac|E<rsub|m><around|(|p|)><rsup|q>*<space|0.17em>h<around|(|p|)>|2*E<rsub|m><around|(|p|)>>*<space|0.17em>e<rsup|-r*E<rsub|m><around|(|p|)>>*<space|0.17em>d*p,<space|2em>E<rsub|m>=<sqrt|m<rsup|2>+<around|\||p|\|><rsup|2>>,
  </equation*>

  with <math|m\<geqslant\>0>, <math|q\<in\>\<bbb-N\><rsub|0>>, and
  <math|h:\<bbb-R\><rsup|3>\<to\>\<bbb-R\>> continuous and positively
  homogeneous of degree <math|j\<in\>\<bbb-N\><rsub|0>>. Then for every
  <math|\<delta\>\<gtr\>0> there is <math|r\<in\><around|(|0,\<delta\>|)>>
  with <math|G<rsub|\<Theta\>><around|(|r|)>\<ne\>W<around|(|r|)>>.

  (b) No such collection reproduces the Wightman two-point function of
  <math|\<Theta\>> through its mass-shell expression on all product tests
  <math|\<varphi\>\<otimes\>\<psi\>> whose wave transform has compact
  support. The same holds for the Wick contraction of two finite polynomial
  fields from any palette of free-field modes.

  <em|Status:> theorem. (a) uses only the law; (b) also uses VII.2.2. The
  internal class is the public class of Definition 1.15 field by field
  (<hlink|<verbatim|profile_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L19-L23>).
  With VII.2.5 this gives (T4). The proof is also described in VII.3.
  <em|Lean:> <hlink|<verbatim|euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>,
  <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>,
  <hlink|<verbatim|wick_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Palette.lean#L130-L133>,
  <hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L23-L29>,
  <hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L90-L92>.

  <strong|Proposition VII.2.8 (no relatively local realization in free-photon
  Fock space).> Suppose the law of VII.2.7 holds with <math|A\<gtr\>0>. For
  every <math|m\<in\>\<bbb-N\><rsub|0>>, let <math|\<cal-F\><rsub|m>> be the
  Fock space of <math|m> species of free photons, realized by symmetric
  transverse ("physical") wave functions of on-shell momenta. Let
  <math|U:\<cal-H\>\<to\>\<cal-F\><rsub|m>> be a complex-linear isometry from
  the reconstructed space of the selected phase with:

  <\itemize-minus>
    <item><math|U*\<Omega\>=\<Omega\><rsub|\<cal-F\>>>;

    <item>image in physical waves;

    <item><math|U> intertwines the translations with multiplication by
    <math|e<rsup|i*b\<cdot\>p<rsub|<math-up|tot>>>>.
  </itemize-minus>

  Then there are a compactly supported smooth scalar test <math|f> and
  compactly supported smooth tests <math|h<rsub|c>:\<bbb-R\><rsup|4>\<to\>\<bbb-R\><rsup|3>>,
  <math|1\<leqslant\>c\<leqslant\>m>, each causally separated from <math|f>,
  such that

  <\equation*>
    <around|\<langle\>|W*<around|(|-h|)>*\<Omega\><rsub|\<cal-F\>>,<space|0.17em>U*\<Phi\><rsub|\<Theta\>><around|(|f|)>*\<Omega\>|\<rangle\>>\<neq\><around|\<langle\>|U*\<Phi\><rsub|\<Theta\>><around|(|<wide|f|\<bar\>>|)>*\<Omega\>,<space|0.17em>W<around|(|h|)>*\<Omega\><rsub|\<cal-F\>>|\<rangle\>>,
  </equation*>

  where <math|W<around|(|h|)>*\<Omega\><rsub|\<cal-F\>>> is the coherent
  state defined in Ÿ6. Equality for all such pairs would hold if
  <math|\<Phi\><rsub|\<Theta\>><around|(|f|)>> commuted with the free Weyl
  operators localized spacelike to <math|f>.

  The same conclusion holds in two variants:

  <\itemize-minus>
    <item>with any bounded self-adjoint operator fixing <math|U*\<cal-H\>>
    applied to both coherent vectors;

    <item>with an average over a probability family of maps that preserve
    inner products of physical waves and fix <math|U*\<cal-H\>>; for every
    <math|r\<gtr\>0>, this variant has tests supported in open sets
    <math|Q,W> with <math|<wide|Q|\<bar\>>\<subset\>B<around|(|0,r|)>> and
    <math|<wide|Q|\<bar\>>-<wide|W|\<bar\>>> spacelike, with <math|f>
    supported in <math|Q> and every component of <math|h> in <math|W>.
  </itemize-minus>

  <em|Status:> theorem. These are the free-photon and averaged free-photon
  clauses of the trace-exclusion specification; the final conclusions are
  filed in VIII.1. <em|Lean:> <hlink|<verbatim|Comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L23-L27>,
  <hlink|<verbatim|Nfl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L32-L35>,
  <hlink|<verbatim|excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L46-L49>,
  <hlink|<verbatim|saturate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44>,
  <hlink|<verbatim|excludes_projected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L51-L70>,
  <hlink|<verbatim|smell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Occult.lean#L12-L21>,
  <hlink|<verbatim|regions_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Regions.lean#L36-L38>.

  <strong|Proposition VII.2.9 (position-space coefficient; supplementary).>
  For every simple <math|G>, every block-spin kernel parameter
  <math|b\<gtr\>0> and every prescribed extraction order <math|p>, there are
  a consistent Wilson family <math|C> with that kernel parameter and a
  refinement <math|f> of <math|p> for which final records exist and the
  following holds for every final record <math|F> over
  <math|<around|(|C,f|)>>.

  There are a free hierarchy, coupling limits <math|Z> and an ultrafilter
  such that admissible degree-<math|4> position-space frames exist. For every
  such pair of frames <math|P<around|(|s|)>,P<rprime|'><around|(|s|)>:<math-ss|F><rsub|4>\<to\>F<rsub|4>>,
  with a window cutoff <math|\<chi\>>, there are real functions
  <math|\<kappa\>,d,e> such that, for all sufficiently small
  <math|s\<gtr\>0>,

  <\equation*>
    P<rprime|'><around|(|s|)><rsup|-1>*<around|(|s<rsup|4>*T<rsub|\<mu\>*\<nu\>>|)>=\<kappa\><around|(|s|)>*T<rsup|<math-up|free>><rsub|\<mu\>*\<nu\>>+d<around|(|s|)>*\<delta\><rsub|\<mu\>*\<nu\>>*\<cal-O\>+e<around|(|s|)>*\<delta\><rsub|\<mu\>*\<nu\>>*\<b-1\>,<space|2em>\<kappa\><around|(|s|)>\<to\>1.
  </equation*>

  Admissibility means that <math|P> has the position-space Gram
  normalization, branch and angular alignment, and convergence of all
  prescribed finite off-diagonal jets; <math|P<rprime|'>> is obtained from
  <math|P> by positive rescaling of the centered scalar sector and its
  centered complement, fixing the unit, with the two shell tests normalized
  to their free values. These conditions are specified by the frame predicate
  linked below.

  For every coupling function <math|g> that is eventually positive and
  satisfies <math|log <around|(|1/s|)>*g<around|(|s|)><rsup|2>\<to\>\<kappa\><rsub|G><rsup|-1>>,

  <\equation*>
    <frac|d<around|(|s|)>|g<around|(|s|)><rsup|2>>\<to\>d<rsub|2>.
  </equation*>

  The coupling <math|g<rsub|X>> defined by the position-space tests satisfies
  <math|g<rsub|X>/g<rsub|W>\<to\>1>, where <math|g<rsub|W>> is the Wilson
  coupling from <math|Z>, and obeys the stronger estimate

  <\equation*>
    d<around|(|s|)>-d<rsub|2>*g<rsub|X><around|(|s|)><rsup|2>=O<around|(|g<rsub|X><around|(|s|)><rsup|4>|)>.
  </equation*>

  Here the free scalar is exactly <math|\<cal-O\>>. Centering gives the exact
  identity <math|s<rsup|4>*\<Theta\>=4*d<around|(|s|)><space|0.17em><math-up|center><rsub|\<xi\><rsub|\<ast\>>><around|(|P<rprime|'><around|(|s|)>*\<cal-O\>|)>>
  for sufficiently small <math|s\<gtr\>0>.

  <em|Proof sketch.> Subsequence compactness gives position-space frames at
  every sufficiently small scale. The two positive sector rescalings tend to
  <math|1> and impose the shell normalizations. Put <math|B<rsub|0>\<ne\>0>
  for the common normalized shell value and <math|Q<around|(|s|)>> for the
  remaining shell readout, which has a finite limit. Conservation and the
  Ward identity give <math|d=d<rsub|2>*g<rsub|X><rsup|2>*\<kappa\>> and
  <math|\<kappa\>-1=-d*Q/B<rsub|0>>. Since
  <math|d/g<rsub|X><rsup|2>\<to\>d<rsub|2>>, these identities imply
  <math|\<kappa\>-1=O<around|(|g<rsub|X><rsup|2>|)>> and then
  <math|d-d<rsub|2>*g<rsub|X><rsup|2>=O<around|(|g<rsub|X><rsup|4>|)>>. The
  Wilson comparison is established before the definition of <math|g<rsub|X>>
  by computing the same divergence diagnostic in Wilson normalization.

  <em|Status:> theorem for the family and refinement supplied by the
  supplementary construction. <em|Lean:> <hlink|<verbatim|meterQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Noon.lean#L50-L83>
  <em|(proof read; frame-existence inputs statement only)>;
  <hlink|<verbatim|main>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L155-L161>,
  <hlink|<verbatim|XScheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L29-L34>,
  <hlink|<verbatim|ShellNorm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Shade.lean#L20-L22>;
  the stress clause of <hlink|<verbatim|Result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120>,
  <hlink|<verbatim|FieldComparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L37-L64>,
  <hlink|<verbatim|odd_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas/Crash.lean#L33-L36>,
  <hlink|<verbatim|Measures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith/Wall.lean#L13-L14>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\enumerate>
    <item><em|Gauge data> (I.1): the Casimir <math|C<rsub|A>\<gtr\>0> and
    <math|\<kappa\><rsub|G>\<gtr\>0> (<hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>);
    simplicity; a nontrivial color space.

    <item><em|Coupling schedule> (II.2, III.9):
    <math|<wide|\<beta\>|^><rsub|k>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*log
    <around|(|1/a<rsub|k>|)>>, with <math|<wide|\<beta\>|^><rsub|k>\<to\>\<infty\>>
    (<hlink|<verbatim|hrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lyre.lean#L8>).
    The actual couplings follow the schedule:
    <math|Z.*\<beta\><around|(|k|)>/<wide|\<beta\>|^><rsub|k>\<to\>1>
    (<hlink|<verbatim|gamut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L89-L95>,
    <hlink|<verbatim|Barry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Bang.lean#L23-L37>).

    <item><em|The one-loop integral> (III.7): with infrared mass
    <math|\<mu\>\<in\><around|(|0,1|]>>, the one-loop momentum integral has
    coefficient <math|-\<kappa\><rsub|G>*log <around|(|1/\<mu\>|)>> up to a
    bounded error (<hlink|<verbatim|absoluteGeode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>).

    <item><em|The RG step> (III.4\UIII.15):

    <\itemize-minus>
      <item>the stationary background, criticality and fourth-order classical
      matching of actions (III.6\UIII.7):
      <hlink|<verbatim|encamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Gauge.lean#L219-L220>;

      <item>cluster and polymer bounds (III.5, III.8) and determinant budgets
      (III.4, III.11);

      <item>the bounded block-spin run, eventual level estimates, classical
      and determinant bounds, support conditions, and small-field and
      large-field estimates. The exact run predicates are listed in Ÿ6.
    </itemize-minus>

    These hypotheses are discharged when the run is chosen in III.2.

    <item><em|Infinite volume> (IV.1): the extraction order and its fuse
    filter, point limits, <hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>,
    and the chessboard root tests on centered chambers.

    <item><em|Phases and reconstruction> (V.1\UV.3): the selected phase; the
    analytic continuation and its boundary values; the spectral measure of
    the translations; the Lorentz action and the conjugation <math|J>. All of
    this is packaged in <hlink|<verbatim|Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>.

    <item><em|Field algebra and stress tensor> (VI.1): the derivative plan,
    the rotation laws (including that rotations and boosts generate the
    Lorentz group), and the stress tensor with its conservation, tensoriality
    and Ward identities (<hlink|<verbatim|Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>).

    <item><em|Free Maxwell model> (VI.2, VII.1, VII.3):

    <\itemize-minus>
      <item>the free table <math|<math-ss|F>> and its Wick calculus;

      <item>the free stress tensors (<hlink|<verbatim|materialB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L50>,
      <hlink|<verbatim|Litpay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Auth.lean#L30-L34>);

      <item>the normalization <math|<around|\<langle\>|\<cal-O\><around|(|x|)>*\<cal-O\><around|(|y|)>|\<rangle\>>=3*dim
      \<frak-g\>/<around|(|\<pi\><rsup|4>*<around|\||x-y|\|><rsup|8>|)>>
      (<hlink|<verbatim|wick_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Constant.lean#L38-L52>,
      proved by an explicit curl computation);

      <item>convergence of rescaled two-point functions at lattice-rounded
      points (<hlink|<verbatim|rainbow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L51-L63>).
    </itemize-minus>

    <item><em|Scaling sequences> (VII.6): scaling sequences approaching the
    free hierarchy (<hlink|<verbatim|StarPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23>,
    <hlink|<verbatim|Gondola>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L18-L21>)
    exist along a subsequence of any positive null sequence
    (<hlink|<verbatim|pays_sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>,
    <hlink|<verbatim|gravity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L22-L28>).
  </enumerate>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>The trace-anomaly mechanism (Adler\UCollins\UDuncan, Phys. Rev. D
    15 (1977); Collins\UDuncan\UJoglekar, Phys. Rev. D 16 (1977); Nielsen,
    Nucl. Phys. B 120 (1977)) and the background-field one-loop beta function
    ('t Hooft 1973; Abbott, Nucl. Phys. B 185 (1981)).

    <item>The Källén\ULehmann representation and the spectral theorem for the
    translation group (Reed\USimon II, ŸIX.8; Glimm\UJaffe, ch. 19).

    <item>The identity theorem for holomorphic functions in tube domains.

    <item>Laplace transforms of positive measures, continuity theorems and
    Tauberian monotonicity (Feller II, ŸXIII.1\U5; Widder, <em|The Laplace
    Transform>).

    <item>Fock space, Weyl operators and coherent states (Reed\USimon II,
    ŸX.7; Bratteli\URobinson II, Ÿ5.2).

    <item>Simultaneous eigenvector decomposition for commuting operators
    annihilated by polynomials with distinct real roots.

    <item>Lattice difference operators and finite-difference stencils of
    order 8.
  </itemize-minus>

  <strong|Imported constants and assumptions.> <math|\<kappa\><rsub|G>>,
  <math|b<rsub|0>> and <math|d<rsub|2>> are defined from <math|C<rsub|A>>
  (<hlink|<verbatim|b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L60>),
  so <math|\<kappa\><rsub|G>=2*b<rsub|0>> and <math|d<rsub|2>=-b<rsub|0>/2>
  are identities by definition (<hlink|<verbatim|beta_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L61>,
  <hlink|<verbatim|force_b>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L63>).
  The value <math|\<kappa\><rsub|G>> enters the proofs in two independent
  places:

  <\itemize-minus>
    <item>as the slope of the coupling schedule (input 2);

    <item>as the logarithmic coefficient of the one-loop integral (input 3).
  </itemize-minus>

  The amplitude <math|3*dim \<frak-g\>/\<pi\><rsup|4>> depends on these two
  being equal (Ÿ5). The gallery property is a hypothesis of VII.2.5; it is
  discharged for the constructed family in III.2, so the trace data must be
  carried by the family chosen in the ultraviolet construction.

  <section|3. Strategy><label|3-strategy>

  <em|Physical picture and the approach taken.> Classically the Yang\UMills
  stress tensor is traceless. The running coupling produces a nonzero trace
  after renormalization. It characterizes <math|T> by two properties:
  uniqueness (the conserved admissible tensors form a line, VII.2.6) and the
  Ward normalization. At each scale <math|r<rsub|i>> it builds three lattice
  tensors <math|T<rsub|i><rsup|<around|(|B|)>>=<math-up|tub><rsub|i><around|(|B|)>>
  from the reference tensors <math|B=L,\<Delta\>,\<Xi\>>: the free Maxwell
  stress <math|L>, the pure-trace tensor <math|\<Delta\><rsub|\<mu\>*\<nu\>>=\<delta\><rsub|\<mu\>*\<nu\>>*\<cal-O\>>,
  and a third traceless tensor <math|\<Xi\>>.

  The candidate is <math|X<rsub|i>=w<rsub|i>*T<rsub|i><rsup|<around|(|L|)>>+c<rsub|i,0>*T<rsub|i><rsup|<around|(|\<Xi\>|)>>+c<rsub|i,1>*T<rsub|i><rsup|<around|(|\<Delta\>|)>>>,
  where <math|w<rsub|i>\<sim\>\<beta\><around|(|r<rsub|i>|)>>. The suitably
  rescaled divergence of the canonical part
  <math|w<rsub|i>*T<rsub|i><rsup|<around|(|L|)>>>, tested by <math|\<rho\>>,
  tends to <math|-\<kappa\><rsub|G>>. Conservation forces
  <math|c<rsub|i,1>\<to\>-\<kappa\><rsub|G>/4=d<rsub|2>>. Uniqueness makes
  <math|X<rsub|i>> a multiple of the centered stress tensor; the Ward
  normalization makes that multiple tend to <math|1>. The weighted trace
  therefore satisfies <math|w<rsub|i><space|0.17em><math-up|tr><around|(|r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*X<rsub|i>|)>\<to\>4*d<rsub|2>*\<cal-O\>>.
  Combining this with <math|w<rsub|i>\<sim\>\<kappa\><rsub|G>*log
  <around|(|1/r<rsub|i>|)>> gives the leading rescaled trace
  <math|-\<cal-O\>/log <around|(|1/r<rsub|i>|)>>.

  <em|The one-loop input.> The value <math|-\<kappa\><rsub|G>> comes from a
  lattice Ward identity at a single RG level, a "dart". A dart is a lattice
  stress tensor whose divergence equals the first variation of the action
  along a displacement field, through fourth order in the field. Darts at a
  given level are obtained from finer levels by block-spin transport. The
  transport preserves the Ward identity, because the first variations of the
  fine and coarse effective actions agree to fourth order; errors contract by
  <math|<frac|1|2>> per step. The level-5 "payoff" of the dart is then
  compared with the infrared-regulated one-loop effective action,

  <\equation*>
    <tfrac|1|2>log det <around|(|<text|gauge Hessian>+\<mu\><rsup|2>|)>-log
    det <around|(|<text|ghost operator>+\<mu\><rsup|2>|)>.
  </equation*>

  Its normalized quadratic momentum coefficient has the logarithmic term
  <math|-\<kappa\><rsub|G>*log <around|(|1/\<mu\>|)>> per plane, <math|12>
  ordered planes in total. A mean-value argument in <math|log \<mu\>> turns
  this pole into the limit <math|-12*\<kappa\><rsub|G>> for the payoff. This
  is Balaban's renormalization-group framework (III) together with a
  background-field one-loop computation; what is specific here is that the
  anomaly coefficient is extracted from the Ward identity carried along the
  RG flow.

  <em|From fields to the law, and the exclusions.> By free-field convergence
  (VII.1), the two-point function of <math|w<rsub|i>*r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*\<Theta\>>
  converges to <math|<around|(|4*d<rsub|2>|)><rsup|2>\<cdot\>3*dim
  \<frak-g\>/<around|(|\<pi\><rsup|4><around|\||x|\|><rsup|8>|)>>, and
  <math|log <around|(|1/r<rsub|i>|)>/w<rsub|i>\<to\>1/\<kappa\><rsub|G>>.
  Rotation and translation invariance move the points to the time axis.
  Monotonicity of <math|G<rsub|\<Theta\>>> in the separation removes the
  lattice rounding of points. Finally, every positive null sequence has a
  good subsequence, which upgrades the subsequential limit to
  <math|r*\<downarrow\>*0>. A Tauberian argument transfers the law to the
  spectral measure. The exclusions use only the law and
  <math|\<mu\><rsub|\<Theta\>>>:

  <\itemize-minus>
    <item>every finite Wick profile expands in integer powers and nonnegative
    powers of logarithms, which are incompatible with
    <math|r<rsup|-8>*log<rsup|-2><around|(|1/r|)>>;

    <item>a relatively local Fock realization forces each <math|n>-photon
    amplitude to split into eigencomponents of the commuting
    momentum-doubling maps, with total scaling degree at most <math|3>; this
    bounds <math|\<mu\><rsub|\<Theta\>>*<around|{|p<rsub|0>\<leqslant\>R|}>>
    by <math|R<rsup|7>>, against <math|R<rsup|8>/log<rsup|2> R>.
  </itemize-minus>

  <section|4. Steps><label|4-steps>

  <subsection|4.1 The centered trace and its spectral
  measure><label|41-the-centered-trace-and-its-spectral-measure>

  <strong|Lemma VII.2.a (centering and symmetry).> The map
  <math|v\<mapsto\><around|\<langle\>|v|\<rangle\>>> is linear with
  <math|<around|\<langle\>|\<b-1\>|\<rangle\>>=1>, so
  <math|<around|\<langle\>|\<Theta\>|\<rangle\>>=0>. Reality and
  <math|O<around|(|4|)>> invariance follow from those of <math|T>:
  contracting the tensorial law with <math|K*K<rsup|<math-ss|T>>=1> gives
  <math|<big|sum><rsub|a>K<rsub|i*a>*K<rsub|j*a>=\<delta\><rsub|i*j>>.
  Time-reflection invariance follows from reality and rotation invariance.
  For Lorentz invariance of <math|\<iota\><around|(|\<Theta\>|)>>, the
  Lorentz group is generated by spatial rotations and axis boosts. Along a
  boost, <math|t\<mapsto\><math-up|boost><around|(|t|)>*\<iota\><around|(|\<Theta\>|)>>
  solves the linear ODE <math|<wide|y|\<dot\>>=-i*X<rsub|0*a>*y>, and the
  generator annihilates <math|\<iota\><around|(|\<Theta\>|)>> because
  <math|\<Theta\>> is rotation invariant. Uniqueness of solutions of the ODE
  gives invariance. <em|Lean:> <hlink|<verbatim|trace_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L73-L74>,
  <hlink|<verbatim|scalar_rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L80-L106>.

  <strong|Lemma VII.2.b (zero Wightman vacuum expectation).> For a centered
  label, the one-point function continued to complex times is holomorphic and
  vanishes on the Euclidean slice, so it vanishes identically by the identity
  theorem. Its boundary value, the Wightman one-point function, is therefore
  <math|0>. <em|Lean:> <hlink|<verbatim|vev_boundary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L16-L41>.

  <strong|Lemma VII.2.c (spectral measure).> The boundary realization (V.2)
  assigns a positive spectral measure to the label
  <math|\<iota\><around|(|\<Theta\>|)>>. Smearing the field with
  <math|\<varphi\>> gives a Hilbert-space vector whose translation spectral
  measure is <math|<around|\||<wide|\<varphi\>|^>|\|><rsup|2>*\<mu\><rsub|\<Theta\>>>.

  <\itemize-minus>
    <item>The spectrum condition gives support in
    <math|<wide|V|\<bar\>><rsub|+>>; the boundary estimates give tempered
    growth and the polynomial energy budget.

    <item>Lorentz invariance comes from Lemma VII.2.a.

    <item>The Laplace formula comes from continuing
    <math|G<rsub|\<Theta\>>*<around|(|2*s|)>> to the boundary pairing at
    imaginary time (<hlink|<verbatim|continuation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L69-L78>).

    <item>Uniqueness holds because <math|\<mu\>> is determined by the
    integrals <math|<big|int><around|\||<wide|\<varphi\>|^>|\|><rsup|2>*d*\<mu\>>.
  </itemize-minus>

  Monotonicity holds because <math|e<rsup|-s*p<rsub|0>>> decreases in
  <math|s> on <math|<wide|V|\<bar\>><rsub|+>>. <em|Lean:>
  <hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>,
  <hlink|<verbatim|monotone_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L13-L21>.
  <em|(proof read at the top level; the boundary spectral lemmas are inputs
  from V.2)>

  <subsection|4.2 Ward darts and their transport through the
  RG><label|42-ward-darts-and-their-transport-through-the-rg>

  <strong|Lemma VII.2.d (sound darts and the block-spin step).> A dart on a
  torus of side <math|f> consists of site-indexed functions and vector
  fields: a tensor <math|J<rsub|a*b>>, a displacement field <math|Y<rsub|a>>
  on link configurations, scalar entries <math|E<rsub|a>,Q<rsub|a>>, and
  scalar entries <math|<math-up|tw><rsub|a*b*i>>. It is <em|sound> if:

  <\itemize-minus>
    <item>the scalar entries are analytic and gauge invariant near the
    identity configuration, with zero constant and linear terms; the
    displacement fields are analytic and gauge covariant and vanish at the
    identity;

    <item><math|<big|sum><rsub|a>J<rsub|a*a>=<big|sum><rsub|a>\<partial\><rsub|a>*Q<rsub|a>>
    and <math|J<rsub|a*b>-J<rsub|b*a>=<big|sum><rsub|i>\<partial\><rsub|i><math-up|tw><rsub|a*b*i>>,
    with lattice differences <math|\<partial\>>;

    <item>the Ward relation holds: <math|<big|sum><rsub|a>\<partial\><rsub|a>*J<rsub|a*b>-E<rsub|b>>
    agrees through fourth order at zero field with the first variation of the
    action in the direction <math|Y<rsub|b>>.
  </itemize-minus>

  The block-spin map takes a dart at the fine level to one at the coarse
  level, by block averaging of inherited jets scaled by <math|L<rsup|k>> with
  <math|k=3,4,5>. It preserves soundness, under the criticality, branch,
  bound, positive price-gap and classical-matching hypotheses of
  III.6\UIII.7. The mechanism is fourth-order matching of first variations:
  along an analytic coarse direction <math|Y> with <math|Y<around|(|0|)>=0>,
  the derivative of the coarse action at the stationary background in the
  direction <math|Y> agrees through fourth order with the derivative of the
  fine action in the lifted direction. This follows by the chain rule through
  the stationary background map. <em|Lean:>
  <hlink|<verbatim|Dart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L22-L27>,
  <hlink|<verbatim|Dart.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L82-L90>,
  <hlink|<verbatim|Dart.down>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L75-L80>,
  <hlink|<verbatim|Sound.balance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L110-L141>;
  <hlink|<verbatim|aroma_transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Wicker.lean#L37-L46>,
  <hlink|<verbatim|recoup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Relay.lean#L143-L160>.

  <strong|Lemma VII.2.e (darts with prescribed precision).> Under the
  bounded-run and eventual level hypotheses of VII.2.3, for all large levels
  <math|k>, every <math|\<varepsilon\>\<gtr\>0> and every filter along which
  <math|N\<to\>\<infty\>> and the lattice side at each fixed level tends to
  infinity, the following holds eventually. There is a sound dart at level
  <math|k> for the actual configuration with these properties:

  <\itemize-minus>
    <item>its jets obey the size bounds;

    <item>its tested second derivatives are within <math|\<varepsilon\>> of
    the tree-level values: total differential weight at most <math|4> for
    <math|J> and at most <math|5> for <math|Y>; the derivatives of <math|E>
    of orders <math|2>\U<math|4> have size at most <math|\<varepsilon\>>.
  </itemize-minus>

  <em|Proof sketch.> Choose <math|i> with
  <math|2<rsup|-<around|(|i+1|)>>*C<around|(|<wide|\<beta\>|^><rsub|k>|)>\<less\>\<varepsilon\>>,
  where <math|C<around|(|<wide|\<beta\>|^><rsub|k>|)>> bounds the finitely
  many relevant derivative orders. Darts at level <math|k> are obtained by
  transporting darts from level <math|k+i+1> through <math|i+1> steps. Each
  step multiplies the deviation from tree level by at most <math|<frac|1|2>>.
  The resulting geometric bound is converted into the required estimates.
  <em|Lean:> <hlink|<verbatim|treasury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L46-L64>,
  <hlink|<verbatim|cash_viz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L38-L40>;
  <hlink|<verbatim|through>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Flo.lean#L41-L46>,
  <hlink|<verbatim|pay_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Native.lean#L81-L88>.

  <subsection|4.3 The one-loop slope><label|43-the-one-loop-slope>

  <strong|Lemma VII.2.f (logarithmic pole).> Let
  <math|\<Gamma\><rsub|\<mu\>><around|(|U|)>=<frac|1|2>*log det
  <around|(|\<cal-H\><around|(|U|)>+M*M<rsup|<math-ss|T>>+\<mu\><rsup|2>|)>-log
  det <around|(|\<cal-G\><around|(|U|)>+\<mu\><rsup|2>|)>> be the
  infrared-regulated one-loop effective action of a single RG level. Here
  <math|\<cal-H\>> is the Hessian of the action, <math|M*M<rsup|<math-ss|T>>>
  the gauge-fixing term, and <math|\<cal-G\>> the ghost operator. Let
  <math|R<rsub|\<mu\>>=<big|sum><rsub|d\<ne\>i>y<rsub|d*i><around|(|\<Gamma\><rsub|\<mu\>>|)>>,
  where <math|y<rsub|d*i>> is the quadratic color-<math|q>,
  polarization-<math|i> momentum test in direction <math|d>, divided by the
  number of sites. It applies the centered second difference to the quadratic
  field derivative at the opposite momenta <math|\<pm\>h*e<rsub|d>>, with the
  factor <math|h<rsup|-2>>, where <math|h=2*\<pi\>/f> for torus side
  <math|f>. For a sequence of lattices of side <math|\<to\>\<infty\>>
  satisfying the uniform covariance, resolvent and action bounds of the
  one-loop comparison (the predicates in Ÿ6), there is <math|C<rprime|'>>
  such that for every <math|\<mu\>\<in\><around|(|0,1|]>>, eventually,

  <\equation*>
    <mid|\|><math-up|Re><space|0.17em>R<rsub|\<mu\>>+12*<space|0.17em>\<kappa\><rsub|G>*log
    <around|(|1/\<mu\>|)><mid|\|>\<leqslant\>C<rprime|'>.
  </equation*>

  <em|Proof sketch.> By symmetry all <math|12> planes contribute equally. The
  <math|<around|(|0,1|)>> coefficient converges, along the sequence, to a
  momentum integral whose <math|log <around|(|1/\<mu\>|)>> coefficient is
  <math|-\<kappa\><rsub|G>> up to a bounded error
  (<hlink|<verbatim|absoluteGeode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>,
  III.7). <em|Lean:> <hlink|<verbatim|slopeL>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Samen.lean#L23-L42>,
  <hlink|<verbatim|marke>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L62>,
  <hlink|<verbatim|ridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L9>
  <em|(proof read; <hlink|<verbatim|effect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Skis.lean#L12-L24>,
  <hlink|<verbatim|banana>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Drifts.lean#L32-L35>,
  <hlink|<verbatim|payday>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L32-L47>,
  <hlink|<verbatim|jury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Gondola.lean#L31-L35>
  statement only; the momentum selector is defined in Ÿ6)>.

  <strong|Lemma VII.2.g (from the pole to a value: mean-value extraction).>
  The function <math|R> satisfies <math|\<mu\>*<space|0.17em>\<partial\><rsub|\<mu\>>*R<rsub|\<mu\>>=-<math-up|seaD><rsub|\<mu\>>>,
  where <math|<math-up|seaD><rsub|\<mu\>>=\<mu\><rsup|2>*<big|sum><rsub|d\<ne\>i>u<rsub|d*i><around|(|\<mu\>|)>>
  and <math|u<rsub|d*i>> collects the same normalized momentum tests of
  <math|-<math-up|tr><around|(|\<cal-H\>+M*M<rsup|<math-ss|T>>+\<mu\><rsup|2>|)><rsup|-1>+2<space|0.17em><math-up|tr><around|(|\<cal-G\>+\<mu\><rsup|2>|)><rsup|-1>>
  (from <math|\<partial\><rsub|\<mu\>>*log det
  <around|(|F+\<mu\><rsup|2>|)>=2*\<mu\><space|0.17em><math-up|tr><around|(|F+\<mu\><rsup|2>|)><rsup|-1>>).
  By Lemma VII.2.f, <math|x\<mapsto\><math-up|Re><space|0.17em>R<rsub|e<rsup|x>>-12*\<kappa\><rsub|G>*x>
  is bounded by <math|C<rprime|'>> eventually for each fixed
  <math|x\<leqslant\>0>. For every <math|a\<less\>b\<leqslant\>0>, the mean
  value theorem on <math|<around|[|a,b|]>> then gives
  <math|\<mu\><rsub|w>\<in\><around|[|e<rsup|a>,e<rsup|b>|]>> with
  <math|<around|\||<math-up|Re><space|0.17em><math-up|seaD><rsub|\<mu\><rsub|w>>-<around|(|-12*\<kappa\><rsub|G>|)>|\|>\<leqslant\>2*C<rprime|'>/<around|(|b-a|)>>
  eventually. <em|Lean:> <hlink|<verbatim|ridge_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L47-L60>,
  <hlink|<verbatim|coastMark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L13-L30>.

  <strong|Lemma VII.2.h (the payoff converges to
  <math|-12*\<kappa\><rsub|G>>).> Under the operator bounds of VII.2.f, take
  translation-covariant sound darts <math|B<rsub|w>> on sides
  <math|g<around|(|w|)>\<to\>\<infty\>>, with a fixed positive decay
  parameter, uniform jet bounds and precision errors
  <math|0\<leqslant\>\<varepsilon\><rsub|w>\<leqslant\>1> tending to
  <math|0>. Let <math|X<rsub|w>> be the summed normalized momentum test of
  the Haar divergence of their rooted displacement fields. Then
  <math|<math-up|Re><space|0.17em>X<rsub|w>\<to\>-12*\<kappa\><rsub|G>>; the
  difference between the finite-momentum test and the Taylor selector,
  including its quadratic correction, tends to <math|0>, so
  <math|<math-up|midPay><rsub|q><around|(|B<rsub|w>|)>\<to\>-12*\<kappa\><rsub|G>>.
  <em|Proof sketch.> For every fixed <math|0\<less\>b<rprime|'>\<leqslant\>c\<leqslant\>1>
  and every choice <math|\<mu\><rsub|w>\<in\><around|[|b<rprime|'>,c|]>>, the
  Ward relation gives <math|X<rsub|w>=<math-up|seaD><rsub|\<mu\><rsub|w>>+\<mu\><rsub|w><rsup|2>*K<rsub|w><around|(|\<mu\><rsub|w>|)>+o<around|(|1|)>>
  with <math|<around|\||\<mu\><rsub|w><rsup|2>*K<rsub|w><around|(|\<mu\><rsub|w>|)>|\|>\<leqslant\>B<rprime|'>*\<mu\><rsub|w>>
  eventually, where <math|B<rprime|'>> is independent of the fixed regulator
  interval. Here <math|K<rsub|w>> is a trace of resolvents paired with the
  linearized displacement and ghost terms. The regulated Ward identity yields
  the decomposition; its other action-variation and precision terms vanish in
  the period limit. Choose <math|u\<leqslant\>0> with
  <math|B<rprime|'>*e<rsup|u>\<leqslant\>\<varepsilon\>/4>, then <math|C>
  with <math|2*C<rprime|'>/C\<leqslant\>\<varepsilon\>/4>, and apply Lemma
  VII.2.g on <math|<around|[|u-C,u|]>>. <em|Lean:>
  <hlink|<verbatim|awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53>,
  <hlink|<verbatim|midAwake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L40-L52>;
  <hlink|<verbatim|saga>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pious.lean#L97-L127>,
  <hlink|<verbatim|crest_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Peak.lean#L15-L29>
  <em|(proof read; their analytic inputs statement only)>;
  <hlink|<verbatim|fawn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pine.lean#L11-L39>.

  <strong|Lemma VII.2.i (uniform certificates; proof of VII.2.3).>

  <\enumerate>
    <item>At a fixed level <math|k>, fix a positive decay parameter and a
    uniform jet bound. For every <math|\<delta\>\<gtr\>0> there are a
    precision tolerance <math|\<eta\>\<gtr\>0> and a volume threshold
    <math|T> such that every translation-covariant dart satisfying those
    bounds with precision <math|\<eta\>>, with <math|N\<gtr\>k> and
    <math|p\<geqslant\>T>, has <math|<around|\||<math-up|midPay>-<around|(|-12*\<kappa\><rsub|G>|)>|\|>\<leqslant\>\<delta\>>.
    The proof is by contradiction: a sequence of counterexamples with
    <math|p\<to\>\<infty\>> contradicts Lemma VII.2.h.

    <item>Average the darts of Lemma VII.2.e over lattice translations. The
    bounds are preserved, so this gives darts with payoff accuracy
    <math|\<varepsilon\>> for all large <math|k>, eventually along every
    filter for which <math|N,p\<to\>\<infty\>>.

    <item>With <math|\<varepsilon\>=<wide|\<beta\>|^><rsub|k><rsup|-100>> and
    the remaining stage, support, cluster and coefficient bounds, the work
    items are chosen by choice along <math|\<cal-L\>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|wire_mid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L13-L28>,
  <hlink|<verbatim|dewWt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L31-L44>,
  <hlink|<verbatim|agenda>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35>.
  <em|(proof read; stage and certificate-supply inputs statement only)>

  <subsection|4.4 From the slope to the coefficient of the
  trace><label|44-from-the-slope-to-the-coefficient-of-the-trace>

  <strong|Notation.> Fix the run data and a scaling sequence as in
  VII.2.4(i). All statements in ŸŸ4.4\U4.5 have these hypotheses. Write
  <math|<wide|\<beta\>|^><rsub|i>=<wide|\<beta\>|^><rsub|\<ell\><rsub|i>>>,
  <math|E<rsub|i>=exp <around|(|<frac|1|5><around|(|log log
  <wide|\<beta\>|^><rsub|i>|)><rsup|2>|)>> and <math|R<rsub|i>=exp
  <around|(|<frac|1|6><around|(|log log <wide|\<beta\>|^><rsub|i>|)><rsup|2>|)>>.

  <\itemize-minus>
    <item><em|Reference tensors.> The centered, real degree-<math|4> free
    tensors covariant under signed coordinate permutations form a family
    <math|<math-up|st><around|(|w|)>>, <math|w\<in\>\<bbb-R\><rsup|3>>, with
    <math|<math-up|tr><space|0.17em><math-up|st><around|(|w|)>=4*<around|(|w<rsub|0>+4*w<rsub|1>|)>*\<cal-O\>>
    (<hlink|<verbatim|mechanical_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69>).
    The three reference tensors are <math|L=<math-up|st><around|(|-<around|(|1,-<frac|1|4>,1|)>|)>=T<rsup|<math-up|free>>>,
    <math|\<Delta\>=<math-up|st><around|(|0,<frac|1|4>,0|)>=\<delta\><rsub|\<mu\>*\<nu\>>*\<cal-O\>>
    and <math|\<Xi\>=<math-up|st><around|(|0,0,1|)>>.

    <item><em|The functional <math|\<rho\>>.> On raw degree-<math|5>
    divergence labels, before quotienting by the Maxwell equations,
    <math|\<rho\><around|(|\<nabla\><rsub|<math-up|raw>><math-up|st><around|(|w|)>|)>=-4*<around|(|w<rsub|0>+4*w<rsub|1>|)>>
    (<hlink|<verbatim|rho_vector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L81-L84>).
    It annihilates the Maxwell equation direction. Below,
    <math|\<rho\><around|(|B|)>> abbreviates
    <math|\<rho\>*<around|(|\<nabla\><rsub|<math-up|raw>>*B|)>>, so
    <math|\<rho\><around|(|L|)>=\<rho\><around|(|\<Xi\>|)>=0> and
    <math|\<rho\><around|(|\<Delta\>|)>=-4>. Explicitly,
    <math|\<Xi\><rsub|\<mu\>*\<mu\>>=0> and
    <math|\<Xi\><rsub|\<mu\>*\<nu\>>=<big|sum><rsub|a,c>:F<rsup|c><rsub|\<mu\>*a>*F<rsup|c><rsub|\<nu\>*a>:>
    for <math|\<mu\>\<ne\>\<nu\>>.

    <item><em|Lattice-built tensors.> <math|<math-up|tub><rsub|i><around|(|B|)>\<in\>\<cal-K\><around|(|S|)>>,
    for <math|B\<in\><around|{|L,\<Delta\>,\<Xi\>|}>>, are built from the
    work items at the readout level <math|\<ell\><rsub|i>>.

    <item><em|Rescaled divergence.> Eventually,
    <math|K<rsub|i>\<assign\>w<rsub|i>*r<rsub|i><rsup|5>*<space|0.17em>U<rsub|i><rsup|-1>\<circ\><math-up|div>>
    (<hlink|<verbatim|Optics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L40-L44>).

    <item><em|Rescaling of tensors.> <math|<math-up|Ph><rsub|i>\<assign\>w<rsub|i>*r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>>.
  </itemize-minus>

  <strong|Lemma VII.2.j (the divergence vector of the dart).> Let
  <math|\<Sigma\><rsub|k>> be the level-5 coefficient vector of the
  divergence of the dart's stress tensor at level <math|k>, normalized by the
  coupling limits and taken along <math|\<cal-L\>>. Then eventually
  <math|<around|\<\|\|\>|\<Sigma\><rsub|k>|\<\|\|\>>\<leqslant\>c*<space|0.17em>e<rsup|<frac|1|6><around|(|log
  log <wide|\<beta\>|^><rsub|k>|)><rsup|2>>>, which grows more slowly than
  every positive power of <math|<wide|\<beta\>|^><rsub|k>>, and
  <math|\<rho\><around|(|\<Sigma\><rsub|k>|)>\<to\>-\<kappa\><rsub|G>>.
  <em|Proof sketch.> At each <math|<around|(|k,N,p|)>> the revised readout
  decomposes into the payoff term <math|<math-up|midPay>/12> plus terms
  bounded by a fixed multiple of <math|e<rsup|-<around|(|log log
  <wide|\<beta\>|^><rsub|k>|)><rsup|2>>> and
  <math|<wide|\<beta\>|^><rsub|k><rsup|-30>>. Passing to the ultrafilter
  limit adds a coefficient-transfer error
  <math|O<around|(|e<rsup|-<frac|1|4><around|(|log log
  <wide|\<beta\>|^><rsub|k>|)><rsup|2>>|)>>. The certificate of VII.2.3 then
  gives <math|<around|\||<math-up|midPay>/12+\<kappa\><rsub|G>|\|>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|-100>/12>.
  For the three reference tensors, the analogous raw vectors converge to
  <math|\<nabla\><rsub|<math-up|raw>>*L>,
  <math|\<nabla\><rsub|<math-up|raw>>*\<Delta\>> and
  <math|\<nabla\><rsub|<math-up|raw>>*\<Xi\>>, at rate
  <math|o<around|(|e<rsup|-<frac|1|5><around|(|log log
  <wide|\<beta\>|^>|)><rsup|2>>|)>> after applying <math|\<rho\>>. <em|Lean:>
  <hlink|<verbatim|penumbra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Pony.lean#L30-L65>,
  <hlink|<verbatim|brass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Beans.lean#L16-L42>;
  <hlink|<verbatim|tiara>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L33-L53>,
  <hlink|<verbatim|diadem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L54-L62>,
  <hlink|<verbatim|article>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L32-L46>.

  <strong|Lemma VII.2.k (divergences at scale <math|r<rsub|i>>).> There are
  linear maps <math|s<rsub|i>> from the fixed raw coefficient space to
  <math|\<cal-V\><around|(|<math-ss|F>|)>>, converging to the free projection
  <math|s>, and functionals <math|\<mu\><rsub|i>> on
  <math|\<cal-V\><around|(|<math-ss|F>|)>> with
  <math|<around|\<\|\|\>|\<mu\><rsub|i>|\<\|\|\>>\<leqslant\>c> eventually,
  such that <math|E<rsub|i>*<around|\<\|\|\>|\<mu\><rsub|i>\<circ\>s<rsub|i>-\<rho\>|\<\|\|\>>\<to\>0>
  in operator norm, where <math|\<rho\>> is expressed in the lattice
  coefficient coordinates. With these:

  <\itemize-minus>
    <item><math|w<rsub|i>*K<rsub|i><around|(|<math-up|tub><rsub|i>L|)>-s<rsub|i><around|(|\<Sigma\><rsub|\<ell\><rsub|i>>|)>\<to\>0>,
    hence <math|\<mu\><rsub|i>*<around*|(|w<rsub|i>*K<rsub|i><around|(|<math-up|tub><rsub|i>L|)>|)>\<to\>-\<kappa\><rsub|G>>;

    <item><math|<around|\<\|\|\>|w<rsub|i>*K<rsub|i><around|(|<math-up|tub><rsub|i>L|)>|\<\|\|\>>\<leqslant\>C*R<rsub|i>>
    eventually;

    <item>for <math|B=\<Delta\>,\<Xi\>>: <math|K<rsub|i><around|(|<math-up|tub><rsub|i>B|)>\<to\><math-up|div><rsup|<math-up|free>>B>
    and <math|E<rsub|i>*<around*|(|\<mu\><rsub|i><around|(|K<rsub|i><math-up|tub><rsub|i>B|)>-\<rho\><around|(|B|)>|)>\<to\>0>.
  </itemize-minus>

  <em|Inputs.>

  <\itemize-minus>
    <item>The lattice-to-continuum remainders are
    <math|o<around|(|<wide|\<beta\>|^><rsub|i><rsup|-p>|)>> for every
    <math|p\<in\>\<bbb-N\><rsub|0>>. This rests on the stage estimates and on
    the cluster bounds, which are the RG estimates of III.5 and III.8 run
    once more on the trace observables.

    <item>Lattice observables are identified with continuum labels by two
    tools. Pullback along centered chambers: if a lattice observable differs
    from the local representative of <math|v<rsub|k>> by a chamber-interior
    term with fast chessboard root, then its correlations with displaced
    spectators agree with those of the limit of <math|v<rsub|k>> up to a fast
    error. Eighth-order difference stencils: the lattice stencil of an
    observable converges to the continuum derivative of its limit.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pairingD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L45-L55>,
  <hlink|<verbatim|sizeQ'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L57-L61>,
  <hlink|<verbatim|transferX>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L63-L77>,
  <hlink|<verbatim|beater>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L61-L68>,
  <hlink|<verbatim|mere>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88>.
  The following are statement only: <hlink|<verbatim|Prosper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L27-L30>,
  <hlink|<verbatim|rungs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L62-L68>,
  <hlink|<verbatim|legacy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L59-L61>,
  <hlink|<verbatim|hullage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Phantom.lean#L37-L50>,
  <hlink|<verbatim|gapC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L57-L59>,
  <hlink|<verbatim|crestship>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Ell.lean#L59-L82>,
  <hlink|<verbatim|touring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Toil.lean#L29-L56>,
  <hlink|<verbatim|trod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Heli.lean#L39-L51>,
  <hlink|<verbatim|small_means>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Terrain.lean#L26-L51>,
  <hlink|<verbatim|expire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Mortal.lean#L37-L43>,
  <hlink|<verbatim|lay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Common.lean#L17-L54>,
  <hlink|<verbatim|welfare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Spindle.lean#L46-L51>,
  <hlink|<verbatim|garnet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Folly.lean#L38-L61>,
  <hlink|<verbatim|quaff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Votive.lean#L42-L67>,
  <hlink|<verbatim|from_center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Book.lean#L33-L76>,
  <hlink|<verbatim|axis_advance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Derivative.lean#L80-L115>,
  <hlink|<verbatim|differentiation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Bleed.lean#L81-L144>.

  <strong|Lemma VII.2.l (the coefficients of the improvement terms).> There
  are <math|c<rsub|i>\<in\>\<bbb-R\><rsup|2>> and <math|C\<geqslant\>0> such
  that, eventually:

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|c<rsub|i>|\<\|\|\>>\<leqslant\>C*<space|0.17em>R<rsub|i>>;

    <item><math|f<rsub|i>:c\<mapsto\>c<rsub|0>*K<rsub|i><around|(|<math-up|tub><rsub|i>\<Xi\>|)>+c<rsub|1>*K<rsub|i><around|(|<math-up|tub><rsub|i>\<Delta\>|)>>
    is bijective;

    <item><math|w<rsub|i>*K<rsub|i><around|(|<math-up|tub><rsub|i>L|)>+f<rsub|i><around|(|c<rsub|i>|)>=0>.
  </itemize-minus>

  Moreover <math|c<rsub|i,1>\<to\>-\<kappa\><rsub|G>/4=d<rsub|2>>. <em|Proof
  sketch.>

  <\enumerate>
    <item>The maps <math|f<rsub|i>> converge to
    <math|c\<mapsto\>c<rsub|0><space|0.17em><math-up|div><space|0.17em>\<Xi\>+c<rsub|1><space|0.17em><math-up|div><space|0.17em>\<Delta\>>,
    which is bijective for simple <math|G>. Hence <math|f<rsub|i>> is
    eventually bijective with uniformly bounded inverse.

    <item>Set <math|c<rsub|i>=-f<rsub|i><rsup|-1>*<around*|(|w<rsub|i>*K<rsub|i><around|(|<math-up|tub><rsub|i>L|)>|)>>.

    <item>Apply <math|\<mu\><rsub|i>> to the balance relation and use Lemma
    VII.2.k:
  </enumerate>

  <\equation*>
    4*c<rsub|i,1>=\<mu\><rsub|i>*<around*|(|w<rsub|i>*K<rsub|i><math-up|tub><rsub|i>L|)>+c<rsub|i,0>*<space|0.17em>\<mu\><rsub|i><around|(|K<rsub|i><math-up|tub><rsub|i>\<Xi\>|)>+c<rsub|i,1>*<around*|(|\<mu\><rsub|i><around|(|K<rsub|i><math-up|tub><rsub|i>\<Delta\>|)>+4|)>\<to\>-\<kappa\><rsub|G>.
  </equation*>

  The last two terms tend to <math|0> because
  <math|<around|\||c<rsub|i,j>|\|>\<leqslant\>C*R<rsub|i>> and
  <math|R<rsub|i>/E<rsub|i>\<to\>0>.

  <em|Lean:> <hlink|<verbatim|formulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L53-L78>,
  <hlink|<verbatim|wend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L45-L58>,
  <hlink|<verbatim|quill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L68-L80>.

  <strong|Lemma VII.2.m (the conserved candidate).> Let
  <math|X<rsub|i>\<assign\>w<rsub|i><space|0.17em><math-up|tub><rsub|i>L+c<rsub|i,0><space|0.17em><math-up|tub><rsub|i>\<Xi\>+c<rsub|i,1><space|0.17em><math-up|tub><rsub|i>\<Delta\>>.
  Then:

  <\itemize-minus>
    <item><math|X<rsub|i>> is conserved eventually, since
    <math|K<rsub|i>*X<rsub|i>=0> and <math|K<rsub|i>> vanishes exactly on
    conserved tensors;

    <item><math|r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*X<rsub|i>\<to\>T<rsup|<math-up|free>>>,
    because <math|<math-up|Ph><rsub|i><space|0.17em><math-up|tub><rsub|i>L\<to\>T<rsup|<math-up|free>>>
    and <math|c<rsub|i>/w<rsub|i>\<to\>0>;

    <item><math|w<rsub|i><space|0.17em><math-up|tr><around*|(|r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*X<rsub|i>|)>\<to\>4*d<rsub|2>*<space|0.17em>\<cal-O\>>,
    because for <math|B\<in\><around|{|L,\<Xi\>|}>> the trace of
    <math|<math-up|Ph><rsub|i><space|0.17em><math-up|tub><rsub|i>B> is
    <math|o<around|(|<wide|\<beta\>|^><rsup|-p>|)>> for every <math|p>, while
    <math|<math-up|tr><space|0.17em><math-up|Ph><rsub|i><space|0.17em><math-up|tub><rsub|i>\<Delta\>\<to\>4*\<cal-O\>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|serene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L64-L65>,
  <hlink|<verbatim|yields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L69-L80>,
  <hlink|<verbatim|blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L82-L95>,
  <hlink|<verbatim|sum_delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L51-L53>;
  <hlink|<verbatim|aprilA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L51-L55>;
  <hlink|<verbatim|nearing_h>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L65-L71>,
  <hlink|<verbatim|muteP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L73-L77>
  <em|(proof read at the top; inputs statement only)>.

  <strong|Lemma VII.2.n (identification with <math|T>; proof of VII.2.6).>

  <\itemize-minus>
    <item><em|Rank.> The free side gives <math|<math-up|div>> onto with
    one-dimensional kernel; this is reduced by linear algebra to the free
    closure map. Eventually <math|K<rsub|i>\<circ\><around|(|c\<mapsto\>c<rsub|0><math-up|tub><rsub|i>\<Xi\>+c<rsub|1><math-up|tub><rsub|i>\<Delta\>|)>>
    is onto the two-dimensional target, and <math|ker K<rsub|i>=ker
    <math-up|div>>. Since <math|dim \<cal-K\><around|(|S|)>=dim
    \<cal-K\><around|(|<math-ss|F>|)>>, a dimension count gives <math|dim ker
    <math-up|div>=1> on <math|\<cal-K\><around|(|S|)>>.

    <item><em|Identification.> Hence eventually
    <math|X<rsub|i>=v<rsub|i>*<wide|T|\<abovering\>>> for real
    <math|v<rsub|i>>.

    <item><em|Normalization.> Choose a free observer <math|o> and a label
    <math|u> with <math|o<around|(|\<partial\><rsub|b>*u|)>\<ne\>0>. The
    rescaled Ward flux <math|r<rsub|i><space|0.17em><math-up|flux><rsub|b><around|(|<wide|T|\<abovering\>>|)>>
    tested against <math|U<rsub|i>*u> converges to
    <math|o<around|(|\<partial\><rsub|b>*u|)>>, and the same flux for
    <math|X<rsub|i>> converges to the free value. Comparing the two limits
    gives <math|v<rsub|i>\<to\>1>.

    <item><em|Conclusion.> <math|r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*<wide|T|\<abovering\>>\<to\>T<rsup|<math-up|free>>>
    and <math|w<rsub|i><space|0.17em><math-up|tr><around|(|r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*<wide|T|\<abovering\>>|)>\<to\>4*d<rsub|2>*\<cal-O\>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|ranking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L41-L51>,
  <hlink|<verbatim|reveals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L58-L65>,
  <hlink|<verbatim|year_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/North.lean#L28-L65>,
  <hlink|<verbatim|free_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165>;
  <hlink|<verbatim|free_closure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L83-L113>;
  the Ward-flux comparison inputs <em|(statement only; VI.1)>.

  <strong|Lemma VII.2.o (the field-level anomaly; proof of VII.2.4).>

  <\enumerate>
    <item><em|Centering is invisible at short distance.> For any phase table
    <math|T<rprime|'>>, <math|\<Theta\><rsub|T<rprime|'>>=<math-up|tr><space|0.17em><wide|T|\<abovering\>>-x*<space|0.17em>\<b-1\>>
    for some constant <math|x>. Since <math|w<rsub|i>*r<rsub|i><rsup|4>\<to\>0>,
    the term <math|x*\<b-1\>> disappears after rescaling. This gives
    <math|w<rsub|i>*r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*\<Theta\><rsub|T<rprime|'>>\<to\>4*d<rsub|2>*\<cal-O\>>.

    <item><em|Form of <math|\<Theta\>>.> <math|\<Theta\><rsub|T<rprime|'>>>
    is a real <math|O<around|(|4|)>>-scalar. Eventually
    <math|U<rsub|i><rsup|-1>> maps it into the real degree-<math|4> free
    labels fixed by signed coordinate permutations, which are spanned by
    <math|\<b-1\>> and <math|\<cal-O\>>. This gives the stated form with
    coefficients <math|e<rsub|i>,d<rsub|i>>. The two basis labels are
    linearly independent; applying their coordinate functionals to the limit
    gives <math|w<rsub|i>*e<rsub|i>\<to\>0> and
    <math|w<rsub|i>*d<rsub|i>\<to\>d<rsub|2>>.

    <item><em|Clock.> <math|log <around|(|1/r<rsub|i>|)>/w<rsub|i>\<to\>\<kappa\><rsub|G><rsup|-1>>
    holds because <math|r<rsub|i>=a<rsub|k<rsub|i>>*m<rsub|i>> with <math|log
    m<rsub|i>=o<around|(|<wide|\<beta\>|^><rsub|k<rsub|i>>|)>>,
    <math|<wide|\<beta\>|^><rsub|k>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*log
    <around|(|1/a<rsub|k>|)>>, and <math|w<rsub|i>/<wide|\<beta\>|^><rsub|k<rsub|i>>\<to\>1>.

    <item><em|Gallery property.> The free Maxwell comparison supplies the
    hierarchy <math|<math-ss|a>> and its Ward-normalized stress tensor;
    compactness along the ultrafilter supplies <math|Z>. The preceding
    conclusions apply to every compatible scaling sequence. The subsequence
    statement comes from VII.6.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|july>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L79-L84>,
  <hlink|<verbatim|shift_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L69-L72>,
  <hlink|<verbatim|leaderB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L41-L51>,
  <hlink|<verbatim|zoom_BQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L42-L62>,
  <hlink|<verbatim|band_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L73-L76>,
  <hlink|<verbatim|Store_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68>,
  <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>;
  <hlink|<verbatim|payload>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Scalar.lean#L72-L81>,
  <hlink|<verbatim|styling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L72-L75>.

  <subsection|4.5 The short-distance law><label|45-the-short-distance-law>

  <strong|Lemma VII.2.p (law along an anomaly sequence at fixed
  configurations).> Let <math|x=<around|(|x<rsub|0>,x<rsub|1>|)>> have
  distinct coordinates in every axis and lie in the interior of the fixed
  scaling window with bound <math|100>. Let
  <math|x<rsup|<around|(|i|)>>\<to\>x> be its lattice roundings at level
  <math|i>. Then

  <\equation*>
    r<rsub|i><rsup|8>*log<rsup|2><around|(|1/r<rsub|i>|)>*<space|0.27em>G<rsub|\<Theta\>>*<around*|(|r<rsub|i>*<around|\||x<rsub|0><rsup|<around|(|i|)>>-x<rsub|1><rsup|<around|(|i|)>>|\|>|)>\<to\><frac|A<rsub|G>|<around|\||x<rsub|0>-x<rsub|1>|\|><rsup|8>>.
  </equation*>

  <em|Proof sketch.>

  <\enumerate>
    <item>Write <math|U<rsub|i><around|(|a<rsub|i>|)>=w<rsub|i>*r<rsub|i><rsup|4>*\<Theta\>>,
    where <math|a<rsub|i>=U<rsub|i><rsup|-1>*<around|(|w<rsub|i>*r<rsub|i><rsup|4>*\<Theta\>|)>>.

    <item>The two-point function in degree 4 is quadratic,
    <math|<around|\<langle\>|<around|(|p*u|)>*<around|(|p*u|)>|\<rangle\>>=p<rsup|2>*<around|\<langle\>|u*u|\<rangle\>>>.

    <item>By <math|O<around|(|4|)>> and translation invariance, any pair of
    points is moved to the time axis, so the left side equals
    <math|<around|(|log <around|(|1/r<rsub|i>|)>/w<rsub|i>|)><rsup|2>*<space|0.17em>S<rsup|\<xi\><rsub|\<ast\>>>*<around*|(|U<rsub|i>*a<rsub|i>*<around|(|r<rsub|i>*x<rsub|0><rsup|<around|(|i|)>>|)>*<space|0.17em>U<rsub|i>*a<rsub|i>*<around|(|r<rsub|i>*x<rsub|1><rsup|<around|(|i|)>>|)>|)>>.

    <item>Since <math|a<rsub|i>\<to\>4*d<rsub|2>*\<cal-O\>>, the free-field
    convergence and the normalization of <math|\<cal-O\>> give the limit
    <math|\<kappa\><rsub|G><rsup|-2>*<around|(|4*d<rsub|2>|)><rsup|2>\<cdot\>3*dim
    \<frak-g\>/<around|(|\<pi\><rsup|4>*<around|\||x<rsub|0>-x<rsub|1>|\|><rsup|8>|)>=A<rsub|G>/<around|\||x<rsub|0>-x<rsub|1>|\|><rsup|8>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|tagline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69>,
  <hlink|<verbatim|axis_shape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L18-L37>,
  <hlink|<verbatim|wick_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Constant.lean#L38-L52>;
  <hlink|<verbatim|rainbow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L51-L63>,
  <hlink|<verbatim|rounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L16-L23>
  <em|(proof read at the top)>.

  <strong|Lemma VII.2.q (removing the rounding; the full limit).>

  <\enumerate>
    <item><em|Removing the rounding.> Take
    <math|x=<around|(|0,<around|(|<frac|s|2>,<frac|s|2>,<frac|s|2>,<frac|s|2>|)>|)>>
    with <math|s\<in\><around|(|<frac|1|2>,2|)>>, so that
    <math|<around|\||x<rsub|0>-x<rsub|1>|\|>=s>. Since
    <math|G<rsub|\<Theta\>>> is nonincreasing (VII.2.2) and the rounded
    separations tend to <math|s>:

    <\itemize-minus>
      <item><math|liminf<rsub|i> r<rsub|i><rsup|8>*log<rsup|2><around|(|1/r<rsub|i>|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r<rsub|i>|)>\<geqslant\>A<rsub|G>*s<rsup|-8>>
      for <math|1\<less\>s\<less\>2>;

      <item><math|limsup<rsub|i> r<rsub|i><rsup|8>*log<rsup|2><around|(|1/r<rsub|i>|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r<rsub|i>|)>\<leqslant\>A<rsub|G>*s<rsup|-8>>
      for <math|1/2\<less\>s\<less\>1>.
    </itemize-minus>

    Letting <math|s\<to\>1> gives the limit <math|A<rsub|G>> along
    <math|<around|(|r<rsub|i>|)>>.

    <item><em|The full limit.> If the law failed as <math|r*\<downarrow\>*0>,
    there would be a null sequence avoiding a neighbourhood of
    <math|A<rsub|G>>. By VII.2.4(ii), a subsequence satisfies the field-level
    anomaly, which contradicts step 1.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|border>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L52-L76>,
  <hlink|<verbatim|outside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88>.

  <strong|Lemma VII.2.r (Tauberian step; proof of VII.2.5(b)).> Suppose
  VII.2.2 holds and <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A\<geqslant\>0>.
  Let <math|\<nu\><rsub|\<rho\>>\<assign\>\<rho\><rsup|-8>*log<rsup|2>
  \<rho\>*<space|0.27em>\<mu\><rsub|\<Theta\>>*<around|(|\<rho\><space|0.17em>\<cdot\>|)>>.
  By Lorentz invariance, the Laplace transforms
  <math|<big|int>e<rsup|-u\<cdot\>p>*d*\<nu\><rsub|\<rho\>>> for <math|u> in
  the open forward cone reduce to time-axis values. The law then gives their
  convergence to <math|A<around|(|u<rsup|2>|)><rsup|-4>>, the Laplace
  transform of <math|<frac|A|1536*\<pi\>><around|(|p<rsup|2>|)><rsup|2>*\<b-1\><rsub|V<rsub|+>>*d<rsup|4>*p>.
  The law also gives a uniform energy budget
  <math|\<nu\><rsub|\<rho\>>*<around|{|p<rsub|0>\<leqslant\>R|}>\<leqslant\>C*R<rsup|8>>
  for all <math|R\<geqslant\>1> and all sufficiently large <math|\<rho\>>,
  with one constant <math|C>. Laplace convergence gives convergence on
  continuous compactly supported tests. The uniform polynomial growth bound
  controls the tails of Schwartz tests and extends the limit to that class.
  <em|Lean:> <hlink|<verbatim|transform_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L93-L106>,
  <hlink|<verbatim|rescaled_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L120-L141>,
  <hlink|<verbatim|compact_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L151-L157>,
  <hlink|<verbatim|joint_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222>;
  <hlink|<verbatim|laplace_schwartz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LaplaceSchwartz.lean#L89-L99>,
  <hlink|<verbatim|cone_laplace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L137-L150>.

  <subsection|4.6 Exclusions><label|46-exclusions>

  <strong|Lemma VII.2.s (power\Ulogarithm expansions cannot carry the law).>
  Suppose <math|f=u+O<around|(|1|)>> as <math|s*\<downarrow\>*0>, where
  <math|u> is a finite real combination of <math|s<rsup|a>*log<rsup|k> s>
  with <math|a\<in\>\<bbb-Z\>> and <math|k\<in\>\<bbb-N\><rsub|0>>, and
  suppose <math|s<rsup|8>*log<rsup|2><around|(|1/s|)>*<space|0.17em>f<around|(|s|)>\<to\>A>.
  Then <math|A=0>. <em|Proof sketch.> The <math|O<around|(|1|)>> part
  contributes <math|s<rsup|8>*log<rsup|2><around|(|1/s|)>\<cdot\>O<around|(|1|)>\<to\>0>.
  Along <math|s=2<rsup|-n>>, <math|s<rsup|8>*log<rsup|2><around|(|1/s|)>*<space|0.17em>u<around|(|s|)>>
  is a combination of <math|c<rsub|t>*<space|0.17em>\<rho\><rsub|t><rsup|<space|0.17em>n>*n<rsup|k<rsub|t>+2>>
  with <math|\<rho\><rsub|t>=2<rsup|-<around|(|8+a<rsub|t>|)>>>. Every term
  has a factor <math|n<rsup|k<rsub|t>+2>> with
  <math|k<rsub|t>+2\<geqslant\>2>, so no term tends to a nonzero constant.
  Collect equal pairs <math|<around|(|a<rsub|t>,k<rsub|t>|)>>, discard zero
  coefficients, and order the remaining terms lexicographically by
  <math|<around|(|\<rho\><rsub|t>,k<rsub|t>+2|)>>. If the leading term has
  <math|\<rho\><rsub|t>\<less\>1>, all terms tend to <math|0>. Otherwise the
  leading term diverges and dominates the others, so a finite limit is
  impossible unless its coefficient vanishes. <em|Lean:>
  <hlink|<verbatim|no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>.

  <strong|Lemma VII.2.t (Wick profiles expand; proof of VII.2.7).>

  <\itemize-minus>
    <item><em|Expansion.> Each mode kernel <math|K<rsub|m,q,h>> has an
    expansion to all orders in <math|<around|{|s<rsup|a>*log<rsup|k> s|}>>.
    The class is closed under products and sums, so
    <math|<math-up|Re><space|0.17em>W> has the form required in Lemma
    VII.2.s; part (a) follows. Equality on <math|<around|(|0,\<delta\>|)>> is
    formulated as eventual equality as <math|s*\<downarrow\>*0>.

    <item><em|Part (b).> If the Wightman function equals the mass-shell
    expression on all products with compactly supported wave transform, their
    wave transforms include every compactly supported Schwartz momentum test,
    so <math|<big|int>\<psi\>*<space|0.17em>d*\<mu\><rsub|\<Theta\>>> equals
    the mass-shell expression for every compactly supported <math|\<psi\>>.
    Compactly supported Schwartz <math|w<rsub|n>\<to\>e<rsup|-s*p<rsub|0>>>,
    dominated by <math|e<rsup|-s*p<rsub|0>>>, together with dominated
    convergence on both sides, give <math|G<rsub|\<Theta\>><around|(|s|)>=W<around|(|s|)>>
    for <math|s\<gtr\>0>. The palette version reduces to the collection
    version.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47>,
  <hlink|<verbatim|moments_expand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125>,
  <hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>,
  <hlink|<verbatim|identifies_euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73>,
  <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.
  <em|(proof read; the single-mode expansion not read)>

  <strong|Lemma VII.2.u (Fock sectors; proof of VII.2.8).> Assume the
  positive short-distance law of VII.2.8 and a comparison <math|U> satisfying
  its relative-locality identity.

  <\enumerate>
    <item><em|Sector decomposition.> By translation covariance,
    <math|U*\<Phi\><rsub|\<Theta\>><around|(|\<varphi\>|)>*\<Omega\>=<wide|\<varphi\>|^><around|(|p<rsub|<math-up|tot>>|)>*<space|0.17em>Y>
    for fixed measurable sector amplitudes <math|Y=<around|(|Y<rsub|n,s>|)>>,
    which need not form a square-integrable vector before smearing. Hence
    <math|\<mu\><rsub|\<Theta\>>> is the image of
    <math|<big|sum><rsub|n,s><around|\||Y<rsub|n,s>|\|><rsup|2>*<space|0.17em>d<around|(|<text|photon
    measures>|)>> under total momentum, and
    <math|\<mu\><rsub|\<Theta\>>*<around|{|p<rsub|0>\<leqslant\>R|}>=<big|sum><rsub|n,s><math-up|mass><around|(|Y<rsub|n,s>;<around|{|<big|sum><around|\||k<rsub|j>|\|>\<leqslant\>R|}>|)>>.

    <item><em|Evaporation.> The mass of <math|Y<rsub|n,s>> on the box
    <math|<around|{|<around|\||k<rsub|j>|\|>\<leqslant\>2<rsup|J><text| for
    all >j|}>> is at most <math|\<mu\><rsub|\<Theta\>>*<around|{|p<rsub|0>\<leqslant\><around|(|n+1|)>*2<rsup|J>|}>>.
    By the law, <math|2<rsup|-8*J>> times this tends to <math|0>.

    <item><em|Dilation polynomials.> Relative locality gives equality of the
    forward and adjoint sector pairings when each test is supported spacelike
    to the origin. Approximate identities in time show that the Cauchy data
    of their difference are supported at the spatial origin. A distribution
    supported at one point has finite jet order. If <math|D<rsub|j>> doubles
    the <math|j>th momentum, these jet bounds and mass-shell uniqueness give,
    for some <math|K>, <math|<big|prod><rsub|a=0><rsup|K-1><around|(|D<rsub|j>-2<rsup|a-1>|)>*Y<rsub|n,s>=0>
    in every slot. The roots are distinct and the <math|D<rsub|j>> commute,
    so <math|Y<rsub|n,s>> is a finite sum of joint eigencomponents.

    <item><em|Finitely many sectors.> A joint eigencomponent with slot
    degrees <math|a<rsub|j>> has box mass proportional to
    <math|R<rsup|2*<big|sum><rsub|j>a<rsub|j>>> at dyadic radii <math|R>.
    Evaporation excludes <math|<big|sum><rsub|j>a<rsub|j>\<geqslant\>4>. A
    component with any <math|a<rsub|j>=0> vanishes by local square
    integrability near zero momentum. Thus every nonzero component has
    <math|a<rsub|j>\<geqslant\>1>, so <math|Y<rsub|n,s>=0> for
    <math|n\<geqslant\>4>. The remaining components have box mass at most
    <math|C<rsub|n,s>*2<rsup|6*i>> at radius <math|2<rsup|i>>.

    <item><em|Contradiction.> Summing over the finitely many sectors with
    <math|n\<leqslant\>3> gives <math|\<mu\><rsub|\<Theta\>>*<around|{|p<rsub|0>\<leqslant\>2<rsup|k>|}>\<leqslant\>D*<space|0.17em>2<rsup|7*k>>.
    Multiply this bound by <math|R<rsup|-8>*log<rsup|2> R>: it tends to zero.
    The spectral law instead gives a positive limit against a nonnegative
    compact test supported in <math|<around|{|0\<less\>p<rsub|0>\<less\>1,p<rsup|2>\<gtr\>0|}>>,
    a contradiction.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|form_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Form.lean#L27-L39>,
  <hlink|<verbatim|parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weight.lean#L76-L78>,
  <hlink|<verbatim|burn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L15-L20>,
  <hlink|<verbatim|consumes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L22-L27>,
  <hlink|<verbatim|finite_particles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L29-L32>,
  <hlink|<verbatim|saturate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44>,
  <hlink|<verbatim|local_eigen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/SpectrumGap.lean#L108-L112>;
  <hlink|<verbatim|local_position>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/VacuumLocal.lean#L95-L139>,
  <hlink|<verbatim|cauchy_point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/TimeData.lean#L86-L115>,
  <hlink|<verbatim|binds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Branches.lean#L133-L136>,
  <hlink|<verbatim|splitParts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Eigen.lean#L44-L83>,
  <hlink|<verbatim|log_high>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L23-L38>,
  <hlink|<verbatim|does_not_fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L65-L82>
  <em|(proof read; the point-support and analytic uniqueness inputs are not
  expanded here)>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <em|Hard.> Three pieces carry the mathematics, and all three are needed for
  the exact constant.

  <\itemize-minus>
    <item>The transport of the lattice Ward identity through the RG with
    fourth-order matching (VII.2.d\Ue).

    <item>The one-loop pole with coefficient exactly <math|\<kappa\><rsub|G>>
    (VII.2.f, using III.7), and its conversion into a value by the mean-value
    argument (VII.2.g\Uh).

    <item>The control of lattice-to-continuum remainders to
    <math|o<around|(|<wide|\<beta\>|^><rsup|-p>|)>> for every <math|p>
    (VII.2.k). The trace must be controlled after multiplication by the
    inverse coupling. The separate coefficient errors have the slower
    exponential rates displayed in VII.2.k. The bounds on <math|c<rsub|i>>
    grow like <math|e<rsup|<frac|1|6><around|(|log log
    <wide|\<beta\>|^>|)><rsup|2>>> and are beaten by decay factors
    <math|e<rsup|-<frac|1|5><around|(|log log <wide|\<beta\>|^>|)><rsup|2>>>.
  </itemize-minus>

  The identification of the explicit conserved tensor with <math|T> (VII.2.n)
  is short once the rank-one statement and the Ward normalization are
  available.

  <em|Routine.>

  <\itemize-minus>
    <item>Centering and the symmetries of <math|\<Theta\>>.

    <item>The passage from subsequential limits at rounded points to the full
    limit (monotonicity and the subsequence principle).

    <item>The Tauberian step.

    <item>The Wick exclusion.
  </itemize-minus>

  The Fock exclusion also needs a distributional argument: relative locality
  yields point-supported Cauchy data, which force polynomial identities for
  momentum doubling. The growth comparison alone does not supply this step.

  <em|Unusual or worth checking.>

  <\enumerate>
    <item><em|Logic of dependence.> The law is derived from the gallery
    property, which is established while the ultraviolet run is chosen
    (III.2): the same Wilson family must carry the trace certificates. The
    exclusions are proved from the law, not independently. Their public form
    combines the two.

    <item><em|The cancellation of <math|b<rsub|0>> is a consistency check,
    not a tautology.> The identities <math|\<kappa\><rsub|G>=2*b<rsub|0>> and
    <math|d<rsub|2>=-\<kappa\><rsub|G>/4> are definitions. The content is:

    <\itemize-minus>
      <item><math|c<rsub|i,1>\<to\>-\<kappa\><rsub|G>/4>, where
      <math|\<kappa\><rsub|G>> comes from the one-loop integral (VII.2.f);

      <item><math|log <around|(|1/r|)>/w\<to\>1/\<kappa\><rsub|G>>, where
      <math|\<kappa\><rsub|G>> is the slope of the coupling schedule.
    </itemize-minus>

    Only because both are <math|\<kappa\><rsub|G>> is the amplitude
    <math|A<rsub|G>=<around|(|4*d<rsub|2>/\<kappa\><rsub|G>|)><rsup|2>\<cdot\>3*dim
    \<frak-g\>/\<pi\><rsup|4>=3*dim \<frak-g\>/\<pi\><rsup|4>>, independent
    of <math|C<rsub|A>>. Had the one-loop slope differed from the schedule,
    the amplitude would differ by the square of their ratio.

    <item><em|Geometry of the points.> The law is first obtained at the
    generic configuration <math|<around|(|0,<frac|s|2>*<around|(|1,1,1,1|)>|)>>,
    as the lattice machinery requires distinct coordinates in each axis. It
    is then rotated to the time axis, which uses the full
    <math|O<around|(|4|)>> invariance of <math|\<Theta\>> from VI.1.

    <item><em|Precision.> The payoff certificate is accurate to
    <math|<wide|\<beta\>|^><rsub|k><rsup|-100>>, much more than the argument
    needs.

    <item><em|Scope of the exclusions.> The Wick class is exactly the public
    finite-profile class. The conclusion does not exclude continuous-mass
    generalized free fields. The Fock comparison is tested through vacuum
    matrix elements with coherent states; it gives an obstruction to relative
    locality with free photons under the stated embedding hypotheses.
  </enumerate>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|notation>>>|<row|<cell|trace of the stress
  tensor>|<cell|<hlink|<verbatim|stressTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17>>|<cell|<math|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>>>>|<row|<cell|one-point
  function in a table>|<cell|<hlink|<verbatim|euclideanVEV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L34>>|<cell|<math|<around|\<langle\>|v|\<rangle\>><rsub|\<xi\>>>>>|<row|<cell|centered
  trace, its pinned label>|<cell|<hlink|<verbatim|theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64>,
  <hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48>,
  <hlink|<verbatim|pinned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L49>>|<cell|<math|\<Theta\>>,
  <math|\<Theta\><rsub|T<rprime|'>>>, <math|\<iota\><around|(|\<Theta\>|)>>>>|<row|<cell|time-axis
  two-point function>|<cell|<hlink|<verbatim|euclidean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53>>|<cell|<math|G<rsub|\<Theta\>><around|(|r|)>>>>|<row|<cell|spectral
  measure>|<cell|<hlink|<verbatim|TraceSpectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94>>|<cell|<math|\<mu\><rsub|\<Theta\>>>>>|<row|<cell|cone
  measure>|<cell|<hlink|<verbatim|coneMeasure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L57>>|<cell|<math|<frac|A|1536*\<pi\>><around|(|p<rsup|2>|)><rsup|2>*\<b-1\><rsub|V<rsub|+>>*d<rsup|4>*p>>>|<row|<cell|scale
  factor>|<cell|<hlink|<verbatim|Zlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L20>,
  <hlink|<verbatim|clue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L39>>|<cell|<math|\<rho\><rsup|-8>*log<rsup|2>
  \<rho\>>; <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>>>>|<row|<cell|slope,
  one-loop coefficient, force>|<cell|<hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>,
  <hlink|<verbatim|b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L60>,
  <hlink|<verbatim|d2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L62>>|<cell|<math|\<kappa\><rsub|G>>,
  <math|b<rsub|0>>, <math|d<rsub|2>>>>|<row|<cell|amplitude; payoff
  constant>|<cell|<hlink|<verbatim|award>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41>;
  <hlink|<verbatim|landPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L9>>|<cell|<math|A<rsub|G>>;
  <math|-12*\<kappa\><rsub|G>>>>|<row|<cell|free table;
  <math|<frac|1|4>*F<rsup|2>> label>|<cell|<hlink|<verbatim|Climb.Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>,
  <hlink|<verbatim|Cells.standard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22>;
  <hlink|<verbatim|OScale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L50>,
  <hlink|<verbatim|square4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66>>|<cell|<math|<math-ss|F>>;
  <math|\<cal-O\>>>>|<row|<cell|free tensors, divergence
  functional>|<cell|<hlink|<verbatim|materialB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L50>,
  <hlink|<verbatim|BornZ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L27>,
  <hlink|<verbatim|rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80>,
  <hlink|<verbatim|Lease>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22>>|<cell|<math|T<rsup|<math-up|free>>=L>,
  <math|\<Delta\>>, <math|\<Xi\>>; <math|\<rho\>>>>|<row|<cell|scaling
  sequence; coupling limits>|<cell|<hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>
  (<math|r<rsub|i>>, <math|U<rsub|i>>); <hlink|<verbatim|Arch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L65-L67>,
  <hlink|<verbatim|BQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L42>>|<cell|<math|<around|(|r<rsub|i>,U<rsub|i>|)>>;
  <math|Z.*\<beta\><around|(|k|)>>, <math|w<rsub|i>>>>|<row|<cell|rescaled
  fields>|<cell|<hlink|<verbatim|ZoomValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L64>,
  <hlink|<verbatim|Year>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L55>,
  <verbatim|Phase4>, <hlink|<verbatim|Optics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L40-L44>>|<cell|<math|U<rsub|i><rsup|-1>*<around|(|w<rsub|i>*r<rsub|i><rsup|4><space|0.17em>\<cdot\>|)>>,
  <math|r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>>, <math|<math-up|Ph><rsub|i>>,
  <math|K<rsub|i>>>>|<row|<cell|lattice-built tensors;
  candidate>|<cell|<hlink|<verbatim|tub>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L59>,
  <hlink|<verbatim|pollen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L48>;
  <hlink|<verbatim|Cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L61>>|<cell|<math|<math-up|tub><rsub|i><around|(|B|)>>;
  <math|X<rsub|i>>>>|<row|<cell|divergence vector of the
  dart>|<cell|<hlink|<verbatim|Shine5>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L49>>|<cell|<math|\<Sigma\><rsub|k>>>>|<row|<cell|lattice
  Ward dart; precision>|<cell|<hlink|<verbatim|Dart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L22-L27>,
  <hlink|<verbatim|Dart.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L82-L90>;
  <hlink|<verbatim|Viz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L15-L23>>|<cell|dart
  <math|<around|(|J,Y,E,Q,<math-up|tw>|)>>>>|<row|<cell|regulated one-loop
  action and coefficient>|<cell|<hlink|<verbatim|marke>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L62>,
  <hlink|<verbatim|ridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L9>,
  <hlink|<verbatim|seaD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L10>>|<cell|<math|\<Gamma\><rsub|\<mu\>>>,
  <math|R<rsub|\<mu\>>>, <math|<math-up|seaD><rsub|\<mu\>>>>>|<row|<cell|payoff
  of a dart>|<cell|<hlink|<verbatim|midPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L38>,
  <hlink|<verbatim|Holt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L37>>|<cell|<math|<math-up|midPay><rsub|q>>>>|<row|<cell|work
  items and certificate>|<cell|<hlink|<verbatim|Work
  items>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L15>,
  <hlink|<verbatim|Grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L16>,
  <hlink|<verbatim|WorthB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L30-L40>>|<cell|certificates
  along <math|\<cal-L\>>>>|<row|<cell|slowly varying
  rates>|<cell|<hlink|<verbatim|Wave>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Have.lean#L10>,
  <hlink|<verbatim|AgeK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Look.lean#L10>>|<cell|<math|e<rsup|a<around|(|log
  log <wide|\<beta\>|^><rsub|k>|)><rsup|2>>>>>|<row|<cell|field-level
  anomaly; its bundle>|<cell|<hlink|<verbatim|Scribe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L52-L59>,
  <hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>>|<cell|Scribe
  property; gallery property>>|<row|<cell|short-distance
  law>|<cell|<hlink|<verbatim|EuclideanAsymptotic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75>>|<cell|<math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A>>>|<row|<cell|Wick
  modes and tracks>|<cell|<hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L23-L29>,
  <hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L90-L92>>|<cell|<math|K<rsub|m,q,h>>,
  <math|<big|prod><rsub|\<beta\>>K>>>|<row|<cell|Fock comparison; relative
  locality>|<cell|<hlink|<verbatim|Comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L23-L27>,
  <hlink|<verbatim|Nfl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L32-L35>,
  <hlink|<verbatim|Ambient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Space.lean#L111>,
  <hlink|<verbatim|coherent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weyl.lean#L119>>|<cell|<math|U:\<cal-H\>\<to\>\<cal-F\><rsub|m>>;
  <math|W<around|(|h|)>*\<Omega\><rsub|\<cal-F\>>>>>|<row|<cell|output
  bundles>|<cell|<hlink|<verbatim|TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>,
  <hlink|<verbatim|Crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L16-L30>,
  <hlink|<verbatim|Result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120>,
  <hlink|<verbatim|Tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L62-L75>>|<cell|(T1)\U(T4)
  and internal variants>>>>>

  For the coefficient selectors, let <math|M<rsub|i*q><rsup|H><around|(|p<rsub|1>,p<rsub|2>|)>>
  be the quadratic field derivative of <math|H> at zero, complexified and
  evaluated on two plane waves of polarization <math|i> and color <math|q>,
  using the rooted trigonometric interpolation. Write
  <math|<around|[|t<rsup|j>|]>> for the Taylor coefficient, including
  <math|1/j!>. For the rooted displacement <math|Y<rsub|b><around|(|0|)>>,
  set <math|D<rsub|b><around|(|z|)>=<math-up|tr><around|(|<math-up|tidal><around|(|Y<rsub|b><around|(|0|)>|)><around|(|exp
  z|)>|)>>, with the exponential applied linkwise. Let <math|\<Lambda\>> be
  the set of lattice sites and let <math|<math-up|i>=<sqrt|-1>>. Then the
  payoff is exactly

  <\equation*>
    <math-up|midPay><rsub|q>=<math-up|Re><big|sum><rsub|d\<ne\>i><around*|(|<math-up|i><big|sum><rsub|b><around|[|u<rsup|2>*v|]>*M<rsub|i*q><rsup|D<rsub|b>><around|(|u*e<rsub|d>,-u*e<rsub|d>+v*e<rsub|b>|)>-<frac|1|2><around|[|t<rsup|2>|]>*M<rsub|i*q><rsup|D<rsub|i>><around|(|t*e<rsub|d>,-t*e<rsub|d>|)>|)>.
  </equation*>

  The cubic momentum coefficient is extracted from the quadratic field
  derivative. The one-loop selector is

  <\equation*>
    y<rsub|d*i><around|(|H|)>=<frac|M<rsub|i*q><rsup|H><around|(|h*e<rsub|d>,-h*e<rsub|d>|)>-2*M<rsub|i*q><rsup|H><around|(|0,0|)>+M<rsub|i*q><rsup|H><around|(|-h*e<rsub|d>,h*e<rsub|d>|)>|2*h<rsup|2><space|0.17em><math-up|card><space|0.17em>\<Lambda\>>,<space|2em>h=2*\<pi\>/f.
  </equation*>

  <em|Lean:> <hlink|<verbatim|lush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L69>,
  <hlink|<verbatim|molt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Cake.lean#L63>,
  <hlink|<verbatim|neap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Keg.lean#L11>,
  <hlink|<verbatim|pia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L20>,
  <hlink|<verbatim|Deb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Taps.lean#L31-L34>,
  <hlink|<verbatim|cob>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L21>,
  <hlink|<verbatim|yard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L12>.

  For the Fock tests, <math|h=<around|(|h<rsub|c><rsup|a>|)><rsub|1\<leqslant\>c\<leqslant\>m,<space|0.17em>1\<leqslant\>a\<leqslant\>3>>
  is a list of real scalar spacetime tests. Its one-particle wave is

  <\equation*>
    \<eta\><rsub|c><rsup|a><around|(|k|)>=<around|\||k|\|>*<big|sum><rsub|b><around*|(|\<delta\><rsub|a*b>-<frac|k<rsub|a>*k<rsub|b>|<around|\||k|\|><rsup|2>>|)>*<wide|h|^><rsub|c><rsup|b><around|(|<around|\||k|\|>,k|)>,<space|2em>d*\<nu\><around|(|k|)>=<frac|d<rsup|3>*k|2<around|\||k|\|>>.
  </equation*>

  The coherent vector has <math|n>-particle component
  <math|e<rsup|-<around|\<\|\|\>|\<eta\>|\<\|\|\>><rsup|2>/2><math-up|i><rsup|n>\<eta\><rsup|\<otimes\>n>/<sqrt|n!>>.
  The value at <math|k=0> is irrelevant to <math|\<nu\>>.

  The run predicates used in VII.2.3 are <verbatim|Bolt>, <verbatim|Bandage>,
  <verbatim|Nest>, <verbatim|Vigil>, <verbatim|Acclaim> and
  <verbatim|supportQ>; those used in VII.2.4 are <verbatim|PostT>,
  <verbatim|Stock.Tabs>, <verbatim|Scrim>, <verbatim|Sceptre>,
  <verbatim|supportQ>, <verbatim|Moonlit> and <verbatim|auraQ>, together with
  <verbatim|Binding>, <verbatim|HaarBudget>, <verbatim|ChartRatio>, the
  generator bounds and <verbatim|FiresSky>. The one-loop hypotheses in
  VII.2.f\Uh are <verbatim|Cred> and <verbatim|Flare>. Their parameters and
  dependencies are those of the fixed run and operator data.

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Transport and one-loop estimates.> The statements of the
    fourth-order first-variation transfer and the quantitative contraction
    through successive RG steps were checked, but their proofs were not read
    in full. The same limitation applies to the covariance and resolvent
    estimates feeding the one-loop pole. The proof sketches use these as
    inputs from III.4\UIII.11.

    <item><strong|Remainder estimates.> The stage, cluster and
    chamber-pullback estimates listed after VII.2.k were checked as
    statements, including their scale, degree, support and separation
    restrictions. Their detailed proofs, and the construction of the fast
    bounds behind the trace estimate, remain to be expanded. The slowly
    decaying coefficient errors and the remainders smaller than every inverse
    power are distinct estimates.

    <item><strong|Wick expansion.> The finite-profile reduction and the
    incompatibility with the trace law were checked. The all-orders expansion
    of a single massive mode is used as a theorem; its proof was not read.

    <item><strong|Distributional inputs to the Fock exclusion.> The
    reductions through remote tests, equal-time data, momentum-doubling
    identities, eigenvector splitting and dyadic growth were read. The
    finite-order theorem for point-supported distributions and the analytic
    uniqueness results used in those reductions remain inputs; their full
    proofs were not audited here.

    <item><strong|Position-space frames.> The scalar identification, frame
    quantifiers, shell normalization and the
    <math|O<around|(|g<rsub|X><rsup|4>|)>> deduction were checked. The full
    existence proof for the position-space Gram and angular alignment, and
    the detailed formulas for the two shell observables, remain to be
    expanded from the frame definitions. Proposition VII.2.9 concerns the
    family and extraction refinement supplied by the supplementary
    construction.

    <item><strong|Unit boundaries.> The declaration table places the spectral
    measure, the final short-distance steps and the Fock conclusion in
    VIII.1, the scaling-sequence existence results in VII.6, and the
    logarithmic momentum integral in III.7. Their mathematical roles are
    described here. The remaining integration and RG bookkeeping records are
    outside the proof sketches in this unit.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.1 Free Maxwell fields for the
  short-distance comparison (notes)|VII-1.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-2.tm>|<hlink|VII.3 Free Wick polynomials and reflected
  Gram positivity (notes) \<rightarrow\>|VII-3.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.2. The trace of the stress tensor and the trace
    anomaly \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|8>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-the-centered-trace-and-its-spectral-measure|<tuple|4.1|10>>
    <associate|42-ward-darts-and-their-transport-through-the-rg|<tuple|4.2|11>>
    <associate|43-the-one-loop-slope|<tuple|4.3|12>>
    <associate|44-from-the-slope-to-the-coefficient-of-the-trace|<tuple|4.4|13>>
    <associate|45-the-short-distance-law|<tuple|4.5|15>>
    <associate|46-exclusions|<tuple|4.6|16>>
    <associate|5-where-the-difficulty-lies|<tuple|5|18>>
    <associate|6-notation|<tuple|6|19>>
    <associate|7-what-remains-unexplained|<tuple|7|20>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|16>>
    <associate|auto-11|<tuple|5|18>>
    <associate|auto-12|<tuple|6|19>>
    <associate|auto-13|<tuple|7|20>>
    <associate|auto-2|<tuple|2|8>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|10>>
    <associate|auto-5|<tuple|4.1|10>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|vii2-the-trace-of-the-stress-tensor-and-the-trace-anomaly--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The centered trace and its spectral
      measure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Ward darts and their transport through
      the RG <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 The one-loop slope
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 From the slope to the coefficient of
      the trace <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The short-distance law
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Exclusions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>