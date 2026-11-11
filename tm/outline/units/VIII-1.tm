<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.6 Scaling variants and fixed-field
  estimates|VII-6.tm>|<hlink|Part VIII|../units.tm#part-viii-assembly-of-the-main-theorem><ym-nav-sep><hlink|Detailed
  notes|../notes/VIII-1.tm>|>

  <ym-title|VIII.1. Assembly of the main theorem><label|viii1-assembly-of-the-main-theorem>

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

  <em|Part VIII \V Assembly of the main theorem.>

  Assembles the construction and translates its conclusions into the public
  theorem.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VIII-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VII.6|VII-6.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VIII, Assembly of the main theorem. <strong|Lean:>
    <hlink|<verbatim|Solution.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean>,
    <hlink|<verbatim|Construction.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean>,
    <hlink|<verbatim|ConcreteSU2.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean>,
    <hlink|<verbatim|YM/Nonperturbative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative>,
    and the public translations. <strong|Size:> 12,060 lines in 1,674
    declarations.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  A gauge group <math|<around|(|m,G,\<frak-g\>|)>> has <math|m\<geqslant\>1>,
  <math|G\<subset\>U<around|(|m|)>> closed, and
  <math|\<frak-g\>=<around|{|X:exp <around|(|t*X|)>\<in\>G<text| for all
  >t\<in\>\<bbb-R\>|}>>. Simplicity includes nonabelianness; Lie-algebra
  dimensions are real. Clause labels refer to
  <hlink|statement.md|../../statement.tm>.

  <strong|Proposition VIII.1.1 (public theorem).> For every gauge group with
  simple <math|\<frak-g\>>, there exists a Wilson family <math|\<cal-W\>>
  satisfying (Reg1)\U(Reg4). For every strictly increasing
  <math|p:\<bbb-N\>\<to\>\<bbb-N\>>, there exist a strictly increasing
  <math|q> and a hierarchy satisfying (P1)\U(P4) along <math|p\<circ\>q>:

  <\itemize-minus>
    <item>For every <math|n>, token list <math|v\<in\>\<cal-T\><rsup|n>> and
    <math|f\<in\>C<rsub|c><rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>|)>>,
    admissibility holds eventually along <math|p\<circ\>q>. At every
    admissible volume <math|p<rprime|'>>,
    <math|C<rsub|N,p<rprime|'>><around|(|v;f|)>\<to\>R<rsub|p<rprime|'>>>
    along all <math|N>, and <math|R<rsub|p<around|(|q<around|(|k|)>|)>>\<to\><big|int>f*S<rsup|<math-up|mix>><around|(|\<pi\><around|(|v|)>;\<cdot\>|)>>.

    <item>The selected theory satisfies (W0)\U(W3), has faithful fields, and
    satisfies (R1)\U(R15). The mixed correlations are averages of continuous
    phase correlations against a full-support probability measure
    <math|\<nu\>>; the selected continuation is holomorphic in complex times
    at fixed real spatial positions, with selected Wightman boundary values
    on product Schwartz tests.

    <item>(O1)\U(O2) use common coefficients uniformly over all phases and
    the mixed state.

    <item><math|\<Theta\>> is centered and <math|r<rsup|8>*<around|(|log
    1/r|)><rsup|2>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A<rsub|\<frak-g\>>=3*dim<rsub|\<bbb-R\>>
    \<frak-g\>/\<pi\><rsup|4>\<gtr\>0> as <math|r*\<downarrow\>*0>. Every
    finite Wick profile differs from <math|G<rsub|\<Theta\>>> somewhere in
    every <math|<around|(|0,\<delta\>|)>>, <math|\<delta\>\<gtr\>0>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YangMills.jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>.

  <strong|Proposition VIII.1.2 (detailed construction).> For every such group
  and <math|b\<gtr\>0>, there exists an internal family <math|\<cal-C\>>,
  depending only on <math|<around|(|G,b|)>>, satisfying (D3), penalty
  <math|b> (D16), and Wilson regularity. For every extraction order
  <math|\<sigma\>>, there exist <math|\<tau\>,S>, a final object
  <math|\<frak-F\>> on <math|<around|(|\<cal-C\>,\<sigma\>\<circ\>\<tau\>,S|)>>,
  every-phase reconstruction <math|\<frak-L\>>, reader <math|Q>, contact
  devices <math|<math-ss|M>> and scaling data
  <math|\<Sigma\>=<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k>|)>> with
  <math|r<rsub|k>*\<downarrow\>*0>, <math|\<xi\><rsub|k>\<gtr\>0>, satisfying
  (D1)\U(D15) and (Core). These include (P1)\U(P4) along
  <math|<around|(|\<sigma\>\<circ\>\<tau\>|)><rsup|<math-up|v>>>,
  distribution extensions, full-mesh ordered and positional limits, exact
  trajectory witnesses, every-phase Wightman axioms and barycentre identity,
  separated and nested OPE, trace and spectral laws, contact resolution with
  real bases and thresholds, Maxwell comparison and degree-four
  normalization. (Core) also includes integrated OPE remainder bounds for
  integrable complex densities against positive measures with bounded
  <math|L<rsup|1>> mass.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YangMills.constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>.

  <strong|Proposition VIII.1.3 (chosen run).> For every such group and
  <math|b\<gtr\>0>, the chosen funded run <math|<math-ss|R><rsub|G,b>> has
  penalty <math|b>. For every <math|\<sigma\>>, its family admits
  <math|\<tau\>,S,\<frak-F\>,\<frak-L\>,Q,<math-ss|M>,\<Sigma\>> on
  <math|\<sigma\>\<circ\>\<tau\>> satisfying VIII.1.2's full-mesh ordered
  limit, positional convergence, (Core), contact conclusions, uniform nested
  OPE over admissible finite trees, and (D14)\U(D15).

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>.

  <strong|Proposition VIII.1.4 (funded runs).> Let <math|\<frak-g\>> be
  simple, <math|<math-ss|R>> a run with campaign <math|T> and pillars
  <math|W>, and <math|\<Delta\>> local step estimates. If
  <hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>
  (Fd) holds, then (Goal) holds: funding, (UV<math|<rsub|\<infty\>>>),
  logarithmic OPE, dense sharp-Gram coverage, and the trace result for every
  final object on every <math|<around|(|\<cal-C\><rsub|<math-ss|R>>,\<sigma\>,S|)>>.
  For every <math|\<sigma\>>, one refinement carries ordered coupling limits
  <math|B<rsub|m>> at every level, <math|S,\<frak-F\>,\<Sigma\>,\<frak-L\>,Q>,
  full-mesh ordered and positional convergence, (D14), every-phase
  reconstruction, trace results, OPE facilities, foundation and uniform
  nested OPE. All-shapes OPE holds for every coherent prescription; every
  ultrafilter finer than the refined extraction filter has a compatible
  sharp-Gram allocation.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|R2IGoals.fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>.

  <strong|Proposition VIII.1.5 (ultraviolet endpoint).> For simple
  <math|\<frak-g\>> and a run with campaign <math|T> and pillars <math|W>,
  assume (Fd)'s stationary-point/amplification condition, delay condition and
  weight-and-tableau data <math|<around|(|\<vartheta\>,v|)>>. Then
  (UV<math|<rsub|\<infty\>>>) holds: (D3), weights, refinement to final
  objects with full-mesh ordered limits, trajectories competing in and issued
  by the fixed tuning recursion, successful tuning to level-zero target
  <math|<wide|\<beta\>|\<bar\>>+w*s> for every <math|<around|(|p,N,s|)>> with
  <math|s\<in\><around|[|-1,1|]>> and fixed <math|w\<gtr\>0>, uniqueness of
  bare couplings within that recursion, analytic interpolation and
  coupling/activity convergence as <math|N\<to\>\<infty\>> at every fixed
  <math|<around|(|m,p|)>> whenever level-zero targets converge.
  Complex-parameter convergence, with all parameter derivatives, is uniform
  on compact subsets of the unit disc in the fixed weighted activity norm.
  For every fixed <math|<around|(|m,p|)>> there is <math|c<rsub|m,p>\<gtr\>0>
  with <math|e<rsup|-<math-up|scalar><rsub|N,p,m>>*Z<rsub|N,p>\<geqslant\>c<rsub|m,p>>
  for <math|N\<geqslant\>m>; scalar density tends to <math|-\<infty\>>.
  Volume-uniform bounds and (D5) hold. For every fixed <math|p>, a successful
  parameter family with targets <math|<wide|\<beta\>|\<bar\>>+\<lambda\>*w*s>,
  some <math|\<lambda\>\<gtr\>0>, has the chosen family as central member and
  the same step relations and insertion normalization. For every token list,
  compact <math|K\<subset\><math-up|NoHit><rsub|p>> and finite derivative
  order <math|h>, there are a neighbourhood <math|\<Omega\>> of <math|K> and
  a smaller positive parameter width independent of <math|N>, giving a
  limiting correlation holomorphic in the parameter and <math|C<rsup|h>> in
  position, with convergence of coordinate differences of order at most
  <math|h>, their interpolants and admissible smearings, uniformly on compact
  parameter/position sets with all parameter derivatives.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|FullVolume.Final.jewelOf17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111>.

  <strong|Proposition VIII.1.6 (full spacing sequence).> Under VIII.1.5's
  hypotheses, for every <math|p,n> and <math|v\<in\>\<cal-T\><rsup|n>> there
  is smooth <math|f<rsub|p,v>> on <math|<math-up|NoHit><rsub|p>> with
  <math|C<rsub|N,p><around|(|v;t|)>\<to\><big|int>t*f<rsub|p,v>> for every
  <math|p>-admissible <math|t>. Every fixed finite list of normalized
  forward, backward or centered coordinate differences with fixed integer
  widths converges, after interpolation, locally uniformly to the
  corresponding derivative; this also holds along approaching lattice
  configurations and arbitrary cutoff indices tending to infinity. Smeared
  differences converge to the integrable derivative pairing. Thresholds may
  depend on volume, tokens, compacts, tests and stencils. If a final object
  exists on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>> and these positional
  limits hold, then <math|<math-up|Ord><rsub|<around|(|<math-up|id>,\<sigma\><rsup|<math-up|v>>|)>><around|(|\<cal-C\>,S|)>>
  holds.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|Campaign.realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>,
  <hlink|<verbatim|FullVolume.Final.from_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126>.

  <strong|Proposition VIII.1.7 (public translation).> For a final object on
  <math|<around|(|\<cal-C\>,\<sigma\>,S|)>> and reader <math|Q>, public and
  internal energies, measures and moments agree;
  <math|<math-up|Ord><rsub|<around|(|<math-up|id>,s|)>><around|(|\<cal-C\>,S|)>>
  implies (P1) along <math|s>. Under (D3) and simplicity, regularity holds
  with <math|b<rsub|\<ast\>>=2*b<rsub|0>>. Every-phase reconstruction implies
  (R1)\U(R15); separated OPE implies (O1)\U(O2); under simplicity, the seven
  headline trace clauses imply (T1)\U(T4). Full contact resolution implies
  (D2).

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|fromWilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67>,
  <hlink|<verbatim|regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25>,
  <hlink|<verbatim|publicReconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133>,
  <hlink|<verbatim|publicOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77>,
  <hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>,
  <hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>.

  <strong|Proposition VIII.1.8 (momentum Wick exclusion).> For any final
  object with <math|s<rsup|8>*<around|(|log
  1/s|)><rsup|2>*G<rsub|\<Theta\>><around|(|s|)>\<to\>A\<gtr\>0> as
  <math|s*\<downarrow\>*0>, and every finite complex linear combination of
  products of mass-shell modes defining Wick profiles, there exist Schwartz
  <math|f,g> on <math|\<bbb-R\><rsup|4>> with
  <math|v<rsub|f,g>=<wide|\<cal-F\><rsub|+>*f|\<bar\>>\<cal-F\><rsub|+>*g>
  compactly supported such that <math|\<cal-W\><rsup|\<xi\><rsub|\<ast\>>><rsub|2><around|(|\<Theta\><rsup|\<ast\>>,\<Theta\>|)>*<around|(|<wide|f|\<bar\>>\<otimes\>g|)>\<ne\><big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>><math-up|read><rsub|\<alpha\>><around|(|v<rsub|f,g>|)>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|TraceExtension.Wick.polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.

  <strong|Proposition VIII.1.9.> <math|<with|math-font|Euler|s*u><around|(|2|)>>
  is simple; VIII.1.1 holds for <math|<around|(|2,S*U<around|(|2|)>,<with|math-font|Euler|s*u><around|(|2|)>|)>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|su2Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12>,
  <hlink|<verbatim|su2Theory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18>.

  <strong|Proposition VIII.1.10.> Final-object structures, construction input
  bundles and volume-uniform bounds are filed here and used in
  III.10\UIII.15, V.1\UV.3, VI.1\UVI.2 and VII.1\UVII.4.

  <em|Status:> definitions and upstream theorems. <em|Lean:>
  <hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>,
  <hlink|<verbatim|Org.Alloy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54>,
  <hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1, II.1\UII.2: gauge groups, families and running law; III.2,
    III.12\UIII.15: funded runs and ultraviolet estimates
    (<hlink|<verbatim|Independent.constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>);
    IV.1: continuum seeds.

    <item>V.1\UV.3: phases and reconstruction; VI.1\UVI.2: field algebra and
    stress tensor; VII.1\UVII.5: Maxwell comparison, trace, OPE, contacts and
    asymptotic freedom (<hlink|<verbatim|EveryPhase.all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>,
    <hlink|<verbatim|Solstice.provided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69>).

    <item>Countable-product compactness, diagonal extraction, equicontinuity,
    discrete Taylor estimates, dominated convergence, Fourier surjectivity
    and Källén\ULehmann representation. Final existence has no additional
    analytic hypotheses.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Fix the run before extraction. Refine first for coupling limits, then for
  the continuum table and final object; attach all later structures on that
  refinement. Fixed-volume convergence and uniqueness of limits remove the
  mesh subsequence. Public translation then gives the stated hierarchy.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Choose the funded run for <math|<around|(|G,b|)>> using the
    run-selection theorem with the fixed dynamics, local estimates and
    component prescription. <hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>.

    <item>Recover smooth full-mesh limits from dense-grid Cauchy convergence,
    equicontinuity and discrete Taylor estimates; smear by dominated
    convergence. <hlink|<verbatim|realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>.

    <item>Extract coupling limits by countable-product compactness, then a
    final object on a further refinement.
    <hlink|<verbatim|Running.extraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L40-L56>,
    <hlink|<verbatim|Pert.withFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31>.

    <item>Attach reconstruction, trace, OPE and contacts; subsequence
    stability retains earlier limits. <hlink|<verbatim|fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>,
    <hlink|<verbatim|contacts_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24>.

    <item>For Wick exclusion, realize compactly supported relative-momentum
    tests as Fourier products. Dominated convergence gives equality of
    Laplace transforms under a hypothetical Wick identity, contradicting the
    trace asymptotic. <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>

    <item>Translate the detailed theorem and set <math|b=1>,
    <math|\<sigma\>=<around|(|<math-up|id>,p|)>>,
    <math|q=\<tau\><rsup|<math-up|v>>>. <hlink|<verbatim|constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>,
    <hlink|<verbatim|jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Every conclusion must concern the same previously chosen family. The Wilson
  limit is mixed-state; the trace test is selected-phase. The polynomial
  low-energy and heat bounds do not establish a mass gap. Volume-subsequence
  independence and agreement between penalties are not asserted.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<sigma\>=<around|(|\<sigma\><rsup|<math-up|m>>,\<sigma\><rsup|<math-up|v>>|)>>:
  increasing mesh/volume maps; refinement is componentwise composition.
  <math|<math-up|Ord>>: mesh-then-volume smeared limit. <math|\<cal-C\>>:
  internal family; <math|\<frak-F\>>: trajectory witnesses, continuum seed,
  field algebra, phase selection and realizing continuations; <math|Q>: OPE
  reader; <math|S>: correlation table; <math|\<Theta\>>: centered stress
  trace. <math|<math-up|NoHit><rsub|p>>: configurations distinct modulo
  <math|L<rsub|p>*\<bbb-Z\><rsup|4>>. <math|\<cal-F\><rsub|+>>: unnormalized
  positive-sign Fourier transform. <math|b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|48*\<pi\><rsup|2>|)>>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Exact funding inequalities and renormalization comparison estimates remain
  in III.12\UIII.15; every-phase analytic arguments in V.3; normalized
  trace-scheme conditions in VII.3.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VIII-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|IV.1|IV-1.tm>, <hlink|I.1|I-1.tm>,
  <hlink|III.12|III-12.tm>, <hlink|VII.2|VII-2.tm>, <hlink|II.1|II-1.tm>,
  <hlink|VII.4|VII-4.tm>, <hlink|III.1|III-1.tm>, <hlink|V.2|V-2.tm>,
  <hlink|VI.1|VI-1.tm>, <hlink|III.16|III-16.tm>, <hlink|III.11|III-11.tm>,
  <hlink|III.10|III-10.tm>, <hlink|V.1|V-1.tm>, <hlink|VII.3|VII-3.tm>,
  <hlink|VI.2|VI-2.tm>, <hlink|III.2|III-2.tm>, <hlink|III.9|III-9.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|VII.6|VII-6.tm>, <hlink|II.2|II-2.tm>,
  <hlink|III.15|III-15.tm>, <hlink|III.6|III-6.tm>, <hlink|V.3|V-3.tm>.

  <strong|Referenced by:> <hlink|III.12|III-12.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.10|III-10.tm>, <hlink|VII.4|VII-4.tm>, <hlink|III.11|III-11.tm>,
  <hlink|III.2|III-2.tm>, <hlink|V.3|V-3.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|VI.1|VI-1.tm>, <hlink|VI.2|VI-2.tm>, <hlink|VII.1|VII-1.tm>,
  <hlink|V.1|V-1.tm>, <hlink|III.4|III-4.tm>, <hlink|III.15|III-15.tm>,
  <hlink|III.14|III-14.tm>, <hlink|III.6|III-6.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 12,060 attributed lines; 1,674 line-counted
  declarations; 2,245 assigned declaration names. Of the assigned names,
  2,087 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>
    (in part, 23%) \V 4,992 lines.

    <item>proof of <hlink|<verbatim|fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>
    \V 4,625 lines.

    <item>shared machinery (corollaries of reconstructionArcs) \V 2,141
    lines.

    <item>proof of <hlink|<verbatim|jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L89-L91>
    and the results it chains to \V 2,138 lines.

    <item>proof of <hlink|<verbatim|jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>
    and the results it chains to \V 404 lines.

    <item>proof of <hlink|<verbatim|parityEndpoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30>
    \V 200 lines.

    <item>work package <hlink|<verbatim|YM/Org/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org>
    \V 192 lines.

    <item>work package PublicTheory \V Public gauge and Wightman definitions
    adapted from an earlier challenge, \V 191 lines.

    <item>proof of <hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>
    \V 143 lines.

    <item>work package ChallengeSpec \V The joint target. All correlation
    terms, including every spectator in the OPE, \V 133 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Parity/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity>
    \V 109 lines.

    <item>proof of <hlink|<verbatim|su2Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12>
    \V 88 lines.

    <item>work package <hlink|<verbatim|YM/OPE/Nesting/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting>
    \V 80 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Finale/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale>
    \V 78 lines.

    <item>work package PublicView \V The public Hilbert space, domain,
    labels, fields and affine action are the \V 74 lines.

    <item>proof of <hlink|<verbatim|celestial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79>
    \V 64 lines.

    <item>work package PublicWilson \V Four-dimensional periodic Wilson
    lattice and its ordered continuum limit. \V 61 lines.

    <item>shared machinery (corollaries of finite_leading) \V 51 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Glide/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide>
    \V 46 lines.

    <item>work package <hlink|<verbatim|YM/Spec/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec>
    \V 43 lines.

    <item>proof of <hlink|<verbatim|low_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49>
    \V 32 lines.

    <item>work package YM (in part, 18%) \V 20 lines.

    <item>work package WilsonBridge \V 18 lines.

    <item>proof of <hlink|<verbatim|point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63>
    \V 15 lines.

    <item>proof of <hlink|<verbatim|continuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66>
    \V 15 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Spatial/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Spatial>
    \V 9 lines.

    <item>proof of <hlink|<verbatim|normalized_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63>
    \V 8 lines.

    <item>proof of <hlink|<verbatim|su2Theory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18>
    \V 4 lines.

    <item>work package ContactSpec \V 3 lines.

    <item>work package ConcreteSU2 \V 3 lines.

    <item>shared machinery (corollaries of constructionRun) \V 2 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|ChallengeSpec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean>

    <item><hlink|<verbatim|Reconstructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L143>

    <item><hlink|<verbatim|WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22>

    <item><hlink|<verbatim|TraceTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175>

    <item><hlink|<verbatim|Properties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L181>

    <item><hlink|<verbatim|JointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188>

    <item><hlink|<verbatim|Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L48>

    <item><hlink|<verbatim|OperatorProductExpansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80>

    <item><hlink|<verbatim|su2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L8-L10>

    <item><hlink|<verbatim|ContactBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean>

    <item><hlink|<verbatim|ContactSpec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean>

    <item><hlink|<verbatim|HierarchyBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean>

    <item><hlink|<verbatim|hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42>

    <item><hlink|<verbatim|wilsonLimit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56>

    <item><hlink|<verbatim|PublicTheory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean>

    <item><hlink|<verbatim|GaugeGroup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25-L33>

    <item><hlink|<verbatim|IsSimple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39-L45>

    <item><hlink|<verbatim|PublicView>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean>

    <item><hlink|<verbatim|view_axioms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L102-L142>

    <item><hlink|<verbatim|publicMoment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L144-L172>

    <item><hlink|<verbatim|PublicWilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean>

    <item><hlink|<verbatim|Converges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90>

    <item><hlink|<verbatim|TraceBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean>

    <item><hlink|<verbatim|WilsonBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean>

    <item><hlink|<verbatim|wilsonFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30>

    <item><hlink|<verbatim|energy_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41>

    <item><hlink|<verbatim|law_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46>

    <item><hlink|<verbatim|moment_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L49-L55>

    <item><hlink|<verbatim|smear_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L57-L60>

    <item><hlink|<verbatim|Bid.station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168>

    <item><hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>

    <item><hlink|<verbatim|YM.Contacts.Solstice.Thresholds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28>

    <item><hlink|<verbatim|installs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36>

    <item><hlink|<verbatim|MultipleLight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63>

    <item><hlink|<verbatim|Contacts.Devices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26>

    <item><hlink|<verbatim|real_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61>

    <item><hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>

    <item><hlink|<verbatim|Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>

    <item><hlink|<verbatim|Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35>

    <item><hlink|<verbatim|Extraction.Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36>

    <item><hlink|<verbatim|Order.refine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40>

    <item><hlink|<verbatim|Order.retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L66-L68>

    <item><hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>

    <item><hlink|<verbatim|Run.again>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75>

    <item><hlink|<verbatim|YM.FullVolume.Eves.dense>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L13-L14>

    <item><hlink|<verbatim|YM.FullVolume.Eves.lateAnch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L15-L24>

    <item><hlink|<verbatim|Campaign.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38>

    <item><hlink|<verbatim|purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44>

    <item><hlink|<verbatim|Jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149>

    <item><hlink|<verbatim|july>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164>

    <item><hlink|<verbatim|wins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L60-L68>

    <item><hlink|<verbatim|bareTrial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77>

    <item><hlink|<verbatim|ahead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.Campaign.Winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.Campaign.offers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89>

    <item><hlink|<verbatim|genuine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62>

    <item><hlink|<verbatim|PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36>

    <item><hlink|<verbatim|YM.FullVolume.field_independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L130-L143>

    <item><hlink|<verbatim|YM.FullVolume.stripped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L87-L88>

    <item><hlink|<verbatim|YM.FullVolume.saved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L97-L128>

    <item><hlink|<verbatim|YM.FullVolume.pudding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Smears.lean#L49-L82>

    <item><hlink|<verbatim|YM.FullVolume.from_previous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125>

    <item><hlink|<verbatim|YM.FullVolume.honors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Wish.lean#L22-L49>

    <item><hlink|<verbatim|YM.FullVolume.augments>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Wish.lean#L61-L81>

    <item><hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>

    <item><hlink|<verbatim|fundedRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31>

    <item><hlink|<verbatim|Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34>

    <item><hlink|<verbatim|ManuscriptTraceTests.of_result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L77-L89>

    <item><hlink|<verbatim|NativePreselectedPostnumericPeriodRun.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean>

    <item><hlink|<verbatim|detector_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35>

    <item><hlink|<verbatim|after_materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L247-L255>

    <item><hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>

    <item><hlink|<verbatim|NestedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138>

    <item><hlink|<verbatim|Headline.WilsonExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155>

    <item><hlink|<verbatim|SeparatedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48>

    <item><hlink|<verbatim|WightmanAxioms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52-L71>

    <item><hlink|<verbatim|Reconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81>

    <item><hlink|<verbatim|TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>

    <item><hlink|<verbatim|Orbits.Reader>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23>

    <item><hlink|<verbatim|Orbits.produce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68>

    <item><hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>

    <item><hlink|<verbatim|IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>

    <item><hlink|<verbatim|UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>

    <item><hlink|<verbatim|Assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L64-L66>

    <item><hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>

    <item><hlink|<verbatim|Pert.Asymptotics.b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13>

    <item><hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>

    <item><hlink|<verbatim|FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39>

    <item><hlink|<verbatim|credible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52>

    <item><hlink|<verbatim|square_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15>

    <item><hlink|<verbatim|FourMeters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47>

    <item><hlink|<verbatim|Pert.Position.four_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53>

    <item><hlink|<verbatim|Running.discrete>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L64-L84>

    <item><hlink|<verbatim|YM/R2I/Campaign/Accepted.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean>

    <item><hlink|<verbatim|Funded.logPackage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L100-L106>

    <item><hlink|<verbatim|Broad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148>

    <item><hlink|<verbatim|investPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L169-L173>

    <item><hlink|<verbatim|commencement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L174-L179>

    <item><hlink|<verbatim|selectRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84>

    <item><hlink|<verbatim|Funded.gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95>

    <item><hlink|<verbatim|Funded.logPackage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L99-L106>

    <item><hlink|<verbatim|penaltyWeight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean>

    <item><hlink|<verbatim|YM/RG17/Joint.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean>

    <item><hlink|<verbatim|Run.extractible17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90>

    <item><hlink|<verbatim|Materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47>

    <item><hlink|<verbatim|Relativistic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L50-L54>

    <item><hlink|<verbatim|Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>

    <item><hlink|<verbatim|arenaT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Agora.lean#L69-L74>

    <item><hlink|<verbatim|crest_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37>

    <item><hlink|<verbatim|Trace.Over.Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>

    <item><hlink|<verbatim|Trace.Target.Result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120>

    <item><hlink|<verbatim|YM.TraceExtension.productTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L22>

    <item><hlink|<verbatim|YM.TraceExtension.waveTest_product>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35>

    <item><hlink|<verbatim|Trace.Verse.award>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41>

    <item><hlink|<verbatim|no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>

    <item><hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>

    <item><hlink|<verbatim|identifies_euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73>

    <item><hlink|<verbatim|euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>

    <item><hlink|<verbatim|TraceExtension.center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48>

    <item><hlink|<verbatim|euclidean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53>

    <item><hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>

    <item><hlink|<verbatim|YM/Independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-viii-1-1>

  <\itemize-minus>
    <item><strong|K-VIII.1.1> <hlink|<verbatim|Alloy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54>
    <em|(numbered result)> \V A data structure bundling ordered input lists
    and support-ordering conditions for a construction.
  </itemize-minus>

  <label|k-viii-1-2>

  <\itemize-minus>
    <item><strong|K-VIII.1.2> <hlink|<verbatim|Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>
    <em|(main result)> \V The final specification asserting calibration,
    field algebra, phase selection and relativistic reconstruction for one
    family and extraction of the Wilson continuum limit.
  </itemize-minus>

  <label|k-viii-1-3>

  <\itemize-minus>
    <item><strong|K-VIII.1.3> <hlink|<verbatim|Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>
    <em|(numbered result)> \V The data package for the Wilson continuum
    limit: cutoff, ordered and generic point limits, hierarchy and corrected
    field estimates.
  </itemize-minus>

  <label|k-viii-1-4>

  <\itemize-minus>
    <item><strong|K-VIII.1.4> <hlink|<verbatim|Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>
    <em|(numbered result)> \V A bundle of hypotheses: field derivatives,
    rotations, stress tensor and charge laws on physical quotients for the
    Wilson continuum limit.
  </itemize-minus>

  <label|k-viii-1-5>

  <\itemize-minus>
    <item><strong|K-VIII.1.5> <hlink|<verbatim|MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>
    <em|(numbered result)> \V A data structure collecting the assumed Maxwell
    weak/stress calibrated input needed for classification and
    identification.
  </itemize-minus>

  <label|k-viii-1-6>

  <\itemize-minus>
    <item><strong|K-VIII.1.6> <hlink|<verbatim|er_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/RotCurve.lean#L168-L183>
    <em|(numbered result)> \V For a differentiable curve of rotations, there
    is a skew generator giving simultaneous right-factor velocities for the
    curve and its descended image.
  </itemize-minus>

  <label|k-viii-1-7>

  <\itemize-minus>
    <item><strong|K-VIII.1.7> <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47>
    <em|(key result)> \V Fixed bounds and a purchased extraction sequence
    imply the ultraviolet positional convergence statement for the periodic
    lift.
  </itemize-minus>

  <label|k-viii-1-8>

  <\itemize-minus>
    <item><strong|K-VIII.1.8> <hlink|<verbatim|spins_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Unique.lean#L152-L176>
    <em|(key result)> \V Two Lorentz witnesses descending from the same
    Euclidean rotation data coincide.
  </itemize-minus>

  <label|k-viii-1-9>

  <\itemize-minus>
    <item><strong|K-VIII.1.9> <hlink|<verbatim|field_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Derivative.lean#L107-L160>
    <em|(key result)> \V On the full Wick tube, the emitted function with a
    derivative in one slot equals the complex derivative of the
    undifferentiated one along the Wick direction.
  </itemize-minus>

  <label|k-viii-1-10>

  <\itemize-minus>
    <item><strong|K-VIII.1.10> <hlink|<verbatim|traceS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96>
    <em|(major result)> \V existence with total field of power series.
  </itemize-minus>

  <label|k-viii-1-11>

  <\itemize-minus>
    <item><strong|K-VIII.1.11> <hlink|<verbatim|celestial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79>
    <em|(main result)> \V For a simple gauge group there exist a calibrated
    family and devices such that Euclidean distributions exist at multiple
    collisions with transport basis and thresholds.
  </itemize-minus>

  <label|k-viii-1-12>

  <\itemize-minus>
    <item><strong|K-VIII.1.12> <hlink|<verbatim|point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63>
    <em|(key result)> \V Point correlations near a center have an OPE-type
    expansion with remainder of order r^(D+1-weight-\<varepsilon\>),
    uniformly over viewers.
  </itemize-minus>

  <label|k-viii-1-13>

  <\itemize-minus>
    <item><strong|K-VIII.1.13> <hlink|<verbatim|low_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49>
    <em|(key result)> \V For simple gauge groups and order at most 5,
    finite-volume ledger entries of odd order vanish exactly.
  </itemize-minus>

  <label|k-viii-1-14>

  <\itemize-minus>
    <item><strong|K-VIII.1.14> <hlink|<verbatim|normalized_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63>
    <em|(main result)> \V For simple gauge group, determining tests at
    horizon four exist with leading readings comparable on the same scaling
    sequence, giving unconditional determinant and normalization.
  </itemize-minus>

  <label|k-viii-1-15>

  <\itemize-minus>
    <item><strong|K-VIII.1.15> <hlink|<verbatim|parityEndpoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30>
    <em|(main result)> \V For simple gauge group and positive penalty, there
    is a family whose extractions yield determining tests at horizon four
    with clean profiles, attained boards, and parity fields.
  </itemize-minus>

  <label|k-viii-1-16>

  <\itemize-minus>
    <item><strong|K-VIII.1.16> <hlink|<verbatim|jewelOf17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111>
    <em|(main result)> \V For a simple gauge group and a constructed Wilson
    run with campaign and pillars, the full-volume UV endpoint with
    every-phase joint statement holds.
  </itemize-minus>

  <label|k-viii-1-17>

  <\itemize-minus>
    <item><strong|K-VIII.1.17> <hlink|<verbatim|headlands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Wince.lean#L63-L99>
    <em|(numbered result)> \V Here near-uniformity in the parameter,
    <strong|all-volume only after fixing p>, and all near histories INCLUDING
    normalization.
  </itemize-minus>

  <label|k-viii-1-18>

  <\itemize-minus>
    <item><strong|K-VIII.1.18> <hlink|<verbatim|clients>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L101-L113>
    <em|(key result)> \V Under the stated hypotheses there exists a fan of
    data satisfying the travel property at each level p.
  </itemize-minus>

  <label|k-viii-1-19>

  <\itemize-minus>
    <item><strong|K-VIII.1.19> <hlink|<verbatim|single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L57-L58>
    <em|(main result)> \V For a simple gauge group, there exist a family,
    extraction refinement, table and Final with a prescription so that all
    single-scale subpower OPE estimates hold jointly.
  </itemize-minus>

  <label|k-viii-1-20>

  <\itemize-minus>
    <item><strong|K-VIII.1.20> <hlink|<verbatim|standing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104>
    <em|(key result)> \V On every compact set avoiding the hit set, the
    spending condition holds.
  </itemize-minus>

  <label|k-viii-1-21>

  <\itemize-minus>
    <item><strong|K-VIII.1.21> <hlink|<verbatim|charted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109>
    <em|(key result)> \V There exist a positive weight and beam data
    satisfying the bow conditions.
  </itemize-minus>

  <label|k-viii-1-22>

  <\itemize-minus>
    <item><strong|K-VIII.1.22> <hlink|<verbatim|astronomer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77>
    <em|(key result)> \V There exist constants, a positive weight, and
    sequences of beams satisfying the spine conditions on the configuration
    space.
  </itemize-minus>

  <label|k-viii-1-23>

  <\itemize-minus>
    <item><strong|K-VIII.1.23> <hlink|<verbatim|establishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L167-L184>
    <em|(key result)> \V Given Euclidean data satisfying reconstruction
    hypotheses, there exists a Wightman field with the prescribed spin and
    Lorentz data that carries a field core over the Euclidean input.
  </itemize-minus>

  <label|k-viii-1-24>

  <\itemize-minus>
    <item><strong|K-VIII.1.24> <hlink|<verbatim|attach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L178-L189>
    <em|(key result)> \V Every field core over given heat-vector data admits
    a unique bounded operator attaching it to the target Hilbert space,
    compatible with the field structure.
  </itemize-minus>

  <label|k-viii-1-25>

  <\itemize-minus>
    <item><strong|K-VIII.1.25> <hlink|<verbatim|coef_smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L39-L43>
    <em|(numbered result)> \V Coefficient functions of the channels are
    smooth in positions and origin on the separated margin region.
  </itemize-minus>

  <label|k-viii-1-26>

  <\itemize-minus>
    <item><strong|K-VIII.1.26> <hlink|<verbatim|signed_placements>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers/Conclusion.lean#L20-L27>
    <em|(main result)> \V For a simple gauge group there exist a family,
    extraction order, table, final object and devices satisfying all-arity
    signed subpower estimates and projection estimates.
  </itemize-minus>

  <label|k-viii-1-27>

  <\itemize-minus>
    <item><strong|K-VIII.1.27> <hlink|<verbatim|living>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Real.lean#L51-L63>
    \V \<forall\>\<#1DA0\> c in \<b-cal-N\>[\<gtr\>] (0:\<bbb-R\>),
    \<exists\> t B:\<bbb-R\>, 0 \<less\> t \<wedge\> 0 \<leqslant\> B
    \<wedge\> \<forall\>\<#1DA0\> N in atTop,\<forall\> U:Face T W, \|evalV T
    W U p N- \<beta\>\|\<leqslant\> c \<rightarrow\> let s
  </itemize-minus>

  <label|k-viii-1-28>

  <\itemize-minus>
    <item><strong|K-VIII.1.28> <hlink|<verbatim|noel_columns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Supply.lean#L29-L59>
    <em|(key result)> \V For every positive penalty there is a family of
    Wilson constructions that is calibrated and carries OPE packages,
    weak-completeness, and extraction data at every order.
  </itemize-minus>

  <label|k-viii-1-29>

  <\itemize-minus>
    <item><strong|K-VIII.1.29> <hlink|<verbatim|fromBaseline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L33-L59>
    <em|(key result)> \V For simple gauge group and positive penalty there is
    a family with Maxwell data and Final constructions carrying actual
    nonperturbative witnesses and UV receipts.
  </itemize-minus>

  <label|k-viii-1-30>

  <\itemize-minus>
    <item><strong|K-VIII.1.30> <hlink|<verbatim|deeper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Deeper.lean#L25-L73>
    <em|(key result)> \V For positive penalty there is a family supporting
    the full ledger of calibrated, Ward and extraction data from the same
    construction.
  </itemize-minus>

  <label|k-viii-1-31>

  <\itemize-minus>
    <item><strong|K-VIII.1.31> <hlink|<verbatim|pinnacle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Court.lean#L43-L53>
    <em|(key result)> \V The parameter-dependent potential has fixed
    (uniform) bounds.
  </itemize-minus>

  <label|k-viii-1-32>

  <\itemize-minus>
    <item><strong|K-VIII.1.32> <hlink|<verbatim|firstTarget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81>
    <em|(main result)> \V For simple gauge group there is a family and
    refinement with Final construction admitting a first extension: mean
    hierarchy correlations at the first perturbative order.
  </itemize-minus>

  <label|k-viii-1-33>

  <\itemize-minus>
    <item><strong|K-VIII.1.33> <hlink|<verbatim|realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>
    <em|(key result)> \V For the constructed run, the full extraction
    sequence yields ultraviolet positional convergence of correlations.
  </itemize-minus>

  <label|k-viii-1-34>

  <\itemize-minus>
    <item><strong|K-VIII.1.34> <hlink|<verbatim|compose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Largo.lean#L22-L56>
    <em|(key result)> \V Given step-by-step transfer estimates from level r
    up to N, one can assemble a full sung history (chain of single-step
    objects) from the top configuration down to level r.
  </itemize-minus>

  <label|k-viii-1-35>

  <\itemize-minus>
    <item><strong|K-VIII.1.35> <hlink|<verbatim|compatible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L200-L215>
    <em|(key result)> \V The reconstructed fields are compatible with the
    Euclidean data, derivative structure and rotation/spin laws, i.e. the
    Wightman output realizes the input.
  </itemize-minus>

  <label|k-viii-1-36>

  <\itemize-minus>
    <item><strong|K-VIII.1.36> <hlink|<verbatim|repriseQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Renaissance.lean#L37-L241>
    <em|(key result)> \V One-step inductive passage from level m+1 to m for a
    linear column family, preserving format, remainder and cost bounds.
  </itemize-minus>

  <label|k-viii-1-37>

  <\itemize-minus>
    <item><strong|K-VIII.1.37> <hlink|<verbatim|ridgeT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk/Cargo.lean#L40-L70>
    <em|(main result)> \V The assembled limit data satisfy the full list of
    conclusions: the Mauve family property, Fridge condition, existence of
    section and weave data with portfolio and hearthside properties, and the
    main extraction statement.
  </itemize-minus>

  <label|k-viii-1-38>

  <\itemize-minus>
    <item><strong|K-VIII.1.38> <hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>
    <em|(key result)> \V There exists a unique measure realizing the trace
    spectrum of the constructed object.
  </itemize-minus>

  <label|k-viii-1-39>

  <\itemize-minus>
    <item><strong|K-VIII.1.39> <hlink|<verbatim|simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Examples/SU2.lean#L79-L106>
    <em|(numbered result)> \V The defining representation of SU(2) has a
    nonabelian simple real Lie algebra.
  </itemize-minus>

  <label|k-viii-1-40>

  <\itemize-minus>
    <item><strong|K-VIII.1.40> <hlink|<verbatim|su2Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12>
    <em|(major result)> \V The Lie algebra su(2) is simple.
  </itemize-minus>

  <label|k-viii-1-41>

  <\itemize-minus>
    <item><strong|K-VIII.1.41> <hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>
    <em|(main result)> \V The continuum theorem including position-space test
    functions: a Wilson family with extraction, reconstruction, OPE and
    contact resolution at each order.
  </itemize-minus>

  <label|k-viii-1-42>

  <\itemize-minus>
    <item><strong|K-VIII.1.42> <hlink|<verbatim|constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>
    <em|(main result)> \V For any simple gauge group and any positive
    penalty, there is a Wilson family with regularity such that, for every
    extraction order, a continuum table exists with reconstruction, OPE,
    trace exclusions, contact and perturbative properties.
  </itemize-minus>

  <label|k-viii-1-43>

  <\itemize-minus>
    <item><strong|K-VIII.1.43> <hlink|<verbatim|existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36>
    <em|(main result)> \V For a simple gauge group and b\<gtr\>0, one Wilson
    family has at each extraction order a continuum table satisfying the
    entire public specification.
  </itemize-minus>

  <label|k-viii-1-44>

  <\itemize-minus>
    <item><strong|K-VIII.1.44> <hlink|<verbatim|continuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66>
    <em|(main result)> \V For a simple gauge group and b\<gtr\>0, one Wilson
    family is chosen once and each requested extraction order can be refined
    to a continuum table satisfying the specification.
  </itemize-minus>

  <label|k-viii-1-45>

  <\itemize-minus>
    <item><strong|K-VIII.1.45> <hlink|<verbatim|jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>
    <em|(main result)> \V For simple gauge groups, a Wilson family exists
    whose continuum limits satisfy existence, reconstruction, OPE and
    trace-exclusion requirements simultaneously.
  </itemize-minus>

  <label|k-viii-1-46>

  <\itemize-minus>
    <item><strong|K-VIII.1.46> <hlink|<verbatim|su2Theory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18>
    <em|(main result)> \V For SU(2) there is a regular Wilson family such
    that every strictly increasing sequence has a further subsequence along
    which a hierarchy with the required properties exists.
  </itemize-minus>

  <label|k-viii-1-47>

  <\itemize-minus>
    <item><strong|K-VIII.1.47> <hlink|<verbatim|fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>
    <em|(key result)> \V Funded hypotheses on a campaign imply the broad goal
    statement for a simple gauge group.
  </itemize-minus>

  <label|k-viii-1-48>

  <\itemize-minus>
    <item><strong|K-VIII.1.48> <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>
    <em|(key result)> \V The vacuum correlations of the limit theory cannot
    be described by any finite polynomial-field (Wick-type) collection on
    compactly supported momentum tests.
  </itemize-minus>

  <label|k-viii-1-49>

  <\itemize-minus>
    <item><strong|K-VIII.1.49> <hlink|<verbatim|estimates_weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108>
    <em|(key result)> \V For small enough separation scale, weighted
    tested-OPE integrals over measures supported on separated apertures
    satisfy joint estimates with remainder proportional to the
    L\<onesuperior\> mass bound.
  </itemize-minus>

  <label|k-viii-1-50>

  <\itemize-minus>
    <item><strong|K-VIII.1.50> <hlink|<verbatim|uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36>
    <em|(key result)> \V Finite nested operator products satisfy the uniform
    estimate property on separated fixed trees.
  </itemize-minus>

  <label|k-viii-1-51>

  <\itemize-minus>
    <item><strong|K-VIII.1.51> <hlink|<verbatim|outside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88>
    <em|(key result)> \V For a simple group and a gallery, the Euclidean
    asymptotic with constant award holds.
  </itemize-minus>

  <label|k-viii-1-52>

  <\itemize-minus>
    <item><strong|K-VIII.1.52> <hlink|<verbatim|tagline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69>
    <em|(key result)> \V At generic points, rescaled Euclidean correlators
    converge to the constant divided by the eighth power of the width.
  </itemize-minus>

  <label|k-viii-1-53>

  <\itemize-minus>
    <item><strong|K-VIII.1.53> <hlink|<verbatim|assembled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L138-L152>
    <em|(main result)> \V The arena property implies the final centered
    stress trace result for the construction.
  </itemize-minus>

  <label|k-viii-1-54>

  <\itemize-minus>
    <item><strong|K-VIII.1.54> <hlink|<verbatim|attains_mantle17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Canvas.lean#L54-L58>
    <em|(key result)> \V Dense coverage at the cutoff scale guarantees
    existence of a compatible mantle (allocation) for the filter.
  </itemize-minus>

  <label|k-viii-1-55>

  <\itemize-minus>
    <item><strong|K-VIII.1.55> <hlink|<verbatim|opePackage17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Witness.lean#L98-L106>
    <em|(key result)> \V Given pillars, a simple group, delay and gate
    conditions, the run's family carries a full OPE package.
  </itemize-minus>

  <label|k-viii-1-56>

  <\itemize-minus>
    <item><strong|K-VIII.1.56> <hlink|<verbatim|of_receipts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L38-L44>
    <em|(key result)> \V The Wilson table, phase selection and field
    quotients, together with trace-target, services and foundation inputs,
    assemble into the core structure for the construction.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.6 Scaling variants and fixed-field
  estimates|VII-6.tm>|<hlink|Part VIII|../units.tm#part-viii-assembly-of-the-main-theorem><ym-nav-sep><hlink|Detailed
  notes|../notes/VIII-1.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|VIII.1. Assembly of the main theorem \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|7>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|7>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-viii-1-1|<tuple|10|11>>
    <associate|k-viii-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-17|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-18|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-19|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-viii-1-20|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-21|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-22|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-23|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-viii-1-24|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-25|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-26|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-27|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-28|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-29|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-viii-1-30|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-31|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-32|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-33|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-viii-1-34|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-35|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-36|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-37|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-38|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-39|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-40|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-41|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-42|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-43|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-viii-1-44|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-45|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-46|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-47|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-48|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-49|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-50|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-51|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-52|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-53|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-viii-1-54|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-viii-1-55|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-viii-1-56|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-viii-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-viii-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|6|4>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|viii1-assembly-of-the-main-theorem|<tuple|?|1>>
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