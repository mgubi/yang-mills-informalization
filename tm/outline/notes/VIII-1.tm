<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.6 Scaling variants and fixed-field
  estimates (notes)|VII-6.tm>|<hlink|Part
  VIII|../units.tm#part-viii-assembly-of-the-main-theorem><ym-nav-sep><hlink|Unit
  outline|../units/VIII-1.tm>|>

  <ym-title|VIII.1. Assembly of the main theorem \V detailed
  notes><label|viii1-assembly-of-the-main-theorem--detailed-notes>

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

    <with|par-left|1tab|4.1 The run and the ultraviolet endpoint
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The data at one extraction order
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 The internal headline
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Translation to the public statement
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The headline theorems
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Endpoints filed here and not on the path of the
    main theorem <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
    The full account of unit VIII.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VIII-1.tm>.
  </quotation>

  <hlink|Unit page|../units/VIII-1.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VIII, Assembly of the main theorem. <strong|Lean:> the
  top-level files <hlink|<verbatim|Solution.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean>,
  <hlink|<verbatim|Construction.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean>
  and <hlink|<verbatim|ConcreteSU2.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean>;
  the bridges <hlink|<verbatim|WilsonBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean>,
  <hlink|<verbatim|HierarchyBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean>,
  <hlink|<verbatim|TraceBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean>
  and <hlink|<verbatim|ContactBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean>;
  the public definitions <hlink|<verbatim|PublicTheory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean>,
  <hlink|<verbatim|PublicWilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean>,
  <hlink|<verbatim|PublicView>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean>,
  <hlink|<verbatim|ChallengeSpec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean>
  and <hlink|<verbatim|ContactSpec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean>;
  the folders <hlink|<verbatim|YM/Nonperturbative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative>,
  <hlink|<verbatim|YM/Independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent>,
  <hlink|<verbatim|YM/Spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec>,
  <hlink|<verbatim|YM/Org>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org>
  and <hlink|<verbatim|YM/Pert/Parity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity>;
  the files <hlink|<verbatim|YM/R2I/Campaign/Accepted.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean>
  and <hlink|<verbatim|YM/RG17/Joint.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean>;
  and parts of YM/FullVolume, YM/EveryPhase, YM/TraceExtension, YM/OPE,
  YM/Contacts and YM/Pert. <strong|Size:> 12,060 lines in 1,674 declarations.

  The construction chooses one Wilson family for each gauge group and
  block-spin parameter <math|b\<gtr\>0>. At each requested extraction order,
  it assembles the continuum table, phases, fields, reconstruction and OPE on
  one refinement. Fixed-volume ultraviolet convergence removes the mesh
  subsequence. The bridges then give the public theorem in
  <hlink|statement.md|../../statement.tm>.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Conventions.> The notation follows statement.md:

  <\itemize-minus>
    <item><math|<around|(|m,G,\<frak-g\>|)>> is a gauge group:
    <math|m\<geqslant\>1>, <math|G> is a closed subgroup of
    <math|U<around|(|m|)>>, and <math|\<frak-g\>=<around|{|X:exp
    <around|(|t*X|)>\<in\>G<text|for all >t\<in\>\<bbb-R\>|}>>. Simplicity
    includes nonabelianness.

    <item><math|\<cal-W\>=<around|(|L<rsub|p>,D<rsub|N>,\<beta\><rsub|N,p>,h,\<cal-T\>,I<rsub|N,p>|)>>
    is a Wilson family, with <math|a<rsub|N>=1/D<rsub|N>>, smeared moments
    <math|C<rsub|N,p><around|(|v;f|)>> and separated configurations
    <math|<math-up|Conf><rsub|n>>.

    <item>A hierarchy has a Wightman theory <math|\<frak-W\>>,
    finite-dimensional field spaces <math|F<rsub|d>>, label maps
    <math|\<iota\><rsub|d>>, token projection <math|\<pi\>>, phases
    <math|<around|(|X,\<nu\>,\<xi\><rsub|\<ast\>>|)>>, correlations
    <math|S<rsup|s>>, time continuations <math|<math-ss|F><rsub|n>>, OPE data
    <math|<around|(|<math-up|Ch><rsub|j>,O<rsub|j,\<kappa\>>,c<rsub|j,\<kappa\>>|)>>,
    and <math|\<Theta\>\<in\>F<rsub|4>>. Write
    <math|\<bbb-F\>=<big|sqcup><rsub|d>F<rsub|d>>. The function
    <math|G<rsub|\<Theta\>><around|(|r|)>> is the selected two-point
    correlation of <math|\<Theta\>> at time-axis points <math|-r/2> and
    <math|r/2>.

    <item>(Reg1)\U(Reg4), (R1)\U(R15), (O1)\U(O2), (T1)\U(T4), (P1)\U(P4) and
    (D1)\U(D16) are as in statement.md.

    <item><math|b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|48*\<pi\><rsup|2>|)>>,
    where <math|C<rsub|\<frak-g\>>> is the adjoint Casimir in the
    construction normalization. All Lie-algebra dimensions are real.
  </itemize-minus>

  Internal objects:

  <\itemize-minus>
    <item>An <em|extraction order> is a pair
    <math|\<sigma\>=<around|(|\<sigma\><rsup|<math-up|m>>,\<sigma\><rsup|<math-up|v>>|)>>
    of strictly increasing maps <math|\<bbb-N\>\<to\>\<bbb-N\>>: a mesh
    sequence and a volume sequence.

    <item>Its <em|refinement> by <math|\<tau\>> is
    <math|\<sigma\>\<circ\>\<tau\>\<assign\><around|(|\<sigma\><rsup|<math-up|m>>\<circ\>\<tau\><rsup|<math-up|m>>,\<sigma\><rsup|<math-up|v>>\<circ\>\<tau\><rsup|<math-up|v>>|)>>.
    The full sequence is written <math|<math-up|id>>.

    <item>An <em|internal family> <math|\<cal-C\>> is the record of a
    renormalization-group construction: trajectory, couplings
    <math|\<beta\><rsub|N,p><around|(|m|)>> at levels <math|m\<leqslant\>N>,
    labels and local lattice sections. (D3) is its construction predicate,
    and <math|\<cal-W\><around|(|\<cal-C\>|)>> is its Wilson family, with
    <math|\<beta\><rsub|N,p>\<assign\>\<beta\><rsub|N,p><around|(|N|)>>.

    <item>A <em|table> <math|S> is a family of continuum correlation
    functions <math|S<around|(|v;x|)>> indexed by token lists.
  </itemize-minus>

  <em|Ordered limit.> <math|<math-up|Ord><rsub|\<sigma\>><around|(|\<cal-C\>,S|)>>
  means the following. For every <math|n>, <math|v\<in\>\<cal-T\><rsup|n>>
  and <math|t\<in\>C<rsup|\<infty\>><rsub|c><around|(|<math-up|Conf><rsub|n>|)>>:

  <\itemize-minus>
    <item><math|t> is <math|\<sigma\><rsup|<math-up|v>><around|(|k|)>>-admissible
    for large <math|k>;

    <item>there are numbers <math|R<rsub|p>> with
    <math|C<rsub|\<sigma\><rsup|<math-up|m>><around|(|j|)>,p><around|(|v;t|)>\<to\>R<rsub|p>>
    for every admissible <math|p>;

    <item><math|R<rsub|\<sigma\><rsup|<math-up|v>><around|(|k|)>>\<to\><big|int>t*S<around|(|v;\<cdot\>|)>>.
  </itemize-minus>

  <em|Final object.> A final object <math|\<frak-F\>> on
  <math|<around|(|\<cal-C\>,\<sigma\>,S|)>> consists of five parts:

  <\enumerate>
    <item>Chosen renormalization data and step witnesses whose trajectory is
    exactly that of <math|\<cal-C\>> (D6).

    <item>A <em|seed>: (D3), <math|<math-up|Ord><rsub|\<sigma\>><around|(|\<cal-C\>,S|)>>,
    point limits, the Euclidean hierarchy axioms for <math|S>, cell
    hypotheses and corrected-field widths.

    <item>A field algebra: derivatives, rotations and a stress tensor.

    <item>A phase selection with its certificate.

    <item>Analytic continuations of the mixed and selected correlations, and
    a Wightman theory realizing the selected one.
  </enumerate>

  <strong|Proposition VIII.1.1 (main theorem, public form).> Let
  <math|<around|(|m,G,\<frak-g\>|)>> be a gauge group with <math|\<frak-g\>>
  simple. Then there is a Wilson family <math|\<cal-W\>> for <math|G>
  satisfying (Reg1)\U(Reg4), with the following property. For every strictly
  increasing <math|p:\<bbb-N\>\<to\>\<bbb-N\>> there are a strictly
  increasing <math|q> and a hierarchy over <math|\<cal-W\>> satisfying
  (P1)\U(P4) along <math|p\<circ\>q>:

  <\itemize-minus>
    <item><strong|(P1)> For every <math|n>, every
    <math|v\<in\>\<cal-T\><rsup|n>> and every
    <math|f\<in\>C<rsup|\<infty\>><rsub|c><around|(|<math-up|Conf><rsub|n>|)>>,
    <math|f> is <math|p<around|(|q<around|(|k|)>|)>>-admissible for all large
    <math|k>. There are numbers <math|R<rsub|p<rprime|'>>> such that
    <math|C<rsub|N,p<rprime|'>><around|(|v;f|)>\<to\>R<rsub|p<rprime|'>>>
    along all <math|N> for every <math|p<rprime|'>> for which <math|f> is
    admissible, and <math|R<rsub|p<around|(|q<around|(|k|)>|)>>\<to\><big|int>f*<space|0.17em>S<rsup|<math-up|mix>><around|(|\<pi\><around|(|v|)>;\<cdot\>|)>>.

    <item><strong|(P2)> The selected phase carries a Wightman theory
    satisfying (W0)\U(W3), with faithful fields. The mixed correlations are
    the <math|\<nu\>>-average of continuous phase correlations, with
    <math|\<nu\>> a probability measure of full support. The continuation is
    holomorphic in the complex times at fixed real spatial positions, and its
    boundary values on product Schwartz tests are the selected Wightman
    functions. All clauses (R1)\U(R15) hold.

    <item><strong|(P3)> The OPE bounds (O1)\U(O2) hold with one system of
    coefficients, uniformly in the state <math|s\<in\>X\<sqcup\><around|{|<math-up|mix>|}>>.

    <item><strong|(P4)> <math|\<Theta\>> has zero vacuum expectation,
    <math|A<rsub|\<frak-g\>>\<assign\>3*dim<rsub|\<bbb-R\>>
    \<frak-g\>/\<pi\><rsup|4>\<gtr\>0>, and <math|r<rsup|8>*<around|(|log
    1/r|)><rsup|2>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A<rsub|\<frak-g\>>>
    as <math|r*\<downarrow\>*0>. For every finite Wick profile and every
    <math|\<delta\>\<gtr\>0>, the profile differs from
    <math|G<rsub|\<Theta\>>> at some <math|r\<in\><around|(|0,\<delta\>|)>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YangMills.jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>,
  statement <hlink|<verbatim|JointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186-L188>,
  with <hlink|<verbatim|WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22>,
  <hlink|<verbatim|Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24-L48>,
  <hlink|<verbatim|Properties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177-L181>,
  <hlink|<verbatim|Converges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90>,
  <hlink|<verbatim|Reconstructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117-L143>,
  <hlink|<verbatim|OperatorProductExpansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80>
  and <hlink|<verbatim|TraceTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175>.

  <strong|Proposition VIII.1.2 (detailed construction theorem).> Fix a gauge
  group <math|<around|(|m,G,\<frak-g\>|)>> with <math|\<frak-g\>> simple and
  a real <math|b\<gtr\>0>. Then there is an internal family <math|\<cal-C\>>
  such that:

  <\itemize-minus>
    <item>its block-spin kernel has penalty <math|b> (D16);

    <item>(D3) holds;

    <item><math|\<cal-W\><around|(|\<cal-C\>|)>> satisfies (Reg1)\U(Reg4).
  </itemize-minus>

  Moreover, for every extraction order <math|\<sigma\>> there are:

  <\itemize-minus>
    <item>a refinement <math|\<tau\>> and a table <math|S>;

    <item>a final object <math|\<frak-F\>> on
    <math|<around|(|\<cal-C\>,\<sigma\>\<circ\>\<tau\>,S|)>>;

    <item>an every-phase reconstruction <math|\<frak-L\>>, an OPE reader
    <math|Q>, contact devices <math|<math-ss|M>> and scaling data
    <math|\<Sigma\>=<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k>|)>>, with
    <math|r<rsub|k>*\<downarrow\>*0> and <math|\<xi\><rsub|k>\<gtr\>0>;
  </itemize-minus>

  such that the following hold:

  <\enumerate>
    <item>The public hierarchy <math|T<around|(|\<frak-F\>,Q|)>> over
    <math|\<cal-W\><around|(|\<cal-C\>|)>> has (P1)\U(P4) along
    <math|<around|(|\<sigma\>\<circ\>\<tau\>|)><rsup|<math-up|v>>>, and every
    correlation <math|S<rsup|s><around|(|a;\<cdot\>|)>> extends to a
    distribution on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>> (D1, D2).

    <item><math|<math-up|Ord><rsub|<around|(|<math-up|id>,<around|(|\<sigma\>\<circ\>\<tau\>|)><rsup|<math-up|v>>|)>><around|(|\<cal-C\>,S|)>>
    holds: the ordered limit with the full mesh sequence (D4).

    <item>Positional ultraviolet convergence at every fixed volume holds
    along the full mesh sequence (D5). See VIII.1.6.

    <item>Chosen renormalization data and step witnesses generate exactly the
    trajectory of <math|\<cal-C\>> (D6).

    <item>The bundle (Core) holds: OPE services, reconstruction in every
    phase, the trace tests, the OPE foundation, and integrated OPE remainder
    bounds for integrable complex densities against positive measures, with
    bounded <math|L<rsup|1>> mass.

    <item>The internal Wightman axioms hold for the selected phase and for
    every phase <math|\<xi\>\<in\>X>, and the public (W0)\U(W3) hold for
    every phase. The <math|\<nu\>>-average of the phase Wightman
    distributions is the boundary distribution of the mixed continuation
    (D7).

    <item>The separated OPE and the nested OPE over finite trees hold (D8,
    D10).

    <item>The seven headline trace clauses hold, together with the unique
    high-energy spectral law contained in (Core) (D9; VIII.1.n and VIII.1.o).

    <item>The contact devices use the reader's prescription and give a full
    contact resolution, real bases of the OPE strata and contact thresholds
    (D11)\U(D13).

    <item>The leading scaling comparison with free Maxwell fields along
    <math|\<Sigma\>> and the normalization at degree four hold (D14, D15).
  </enumerate>

  The family <math|\<cal-C\>> depends only on <math|<around|(|G,b|)>>. Items
  3 and 4 are properties of <math|\<cal-C\>> alone, although they are stated
  inside the quantifier over <math|\<sigma\>>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|YangMills.constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>.
  Internal form: <hlink|<verbatim|Nonperturbative.existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36>,
  statement <hlink|<verbatim|Headline.WilsonExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155>.

  <strong|Proposition VIII.1.3 (continuum theorem for the funded run).> Fix a
  gauge group with <math|\<frak-g\>> simple and <math|b\<gtr\>0>. Let
  <math|\<cal-C\><rsub|G,b>> be the family of the run
  <math|<math-ss|R><rsub|G,b>> chosen in VIII.1.a. Its penalty is <math|b>.
  For every extraction order <math|\<sigma\>> there are
  <math|\<tau\>,S,\<frak-F\>,\<frak-L\>,Q,<math-ss|M>>, with
  <math|\<frak-F\>> on <math|<around|(|\<cal-C\><rsub|G,b>,\<sigma\>\<circ\>\<tau\>,S|)>>,
  satisfying:

  <\itemize-minus>
    <item>items 2, 3, 5 and 9 of VIII.1.2;

    <item>the uniform nested OPE over admissible finite trees;

    <item>a scaling sequence <math|\<Sigma\>> with (D14) and (D15).
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>.
  The form without <math|\<Sigma\>> is <hlink|<verbatim|continuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L52-L66>.

  <strong|Proposition VIII.1.4 (a funded run supplies everything).> Let
  <math|<math-ss|R>> be a run with campaign <math|T> and pillars <math|W>,
  let <math|\<Delta\>> be a choice of local step estimates, and let
  <math|\<frak-g\>> be simple. Assume <math|<math-ss|R>> is <em|funded> (Fd):
  see Ÿ2, item 1. Then the assembly package (Goal) holds:

  <\enumerate>
    <item>(Fd).

    <item>The ultraviolet package (UV<math|<rsub|\<infty\>>>) of VIII.1.5.

    <item>The logarithmic OPE package.

    <item>The dense-coverage property of the sharp Gram family.

    <item>For every <math|\<sigma\>>, every table <math|S> and every final
    object <math|\<frak-F\>> on <math|<around|(|\<cal-C\><rsub|<math-ss|R>>,\<sigma\>,S|)>>:
    the trace result of VIII.1.h.

    <item>For every <math|\<sigma\>> there are <math|\<tau\>>, numbers
    <math|<around|(|B<rsub|m>|)><rsub|m\<in\>\<bbb-N\>>> and data
    <math|S,\<frak-F\>> (on <math|\<sigma\>\<circ\>\<tau\>>),
    <math|\<Sigma\>,\<frak-L\>,Q> such that:

    <\itemize-minus>
      <item>for every level <math|m> the couplings
      <math|\<beta\><rsub|N,p><around|(|m|)>> have the ordered limit
      <math|B<rsub|m>> along <math|\<sigma\>\<circ\>\<tau\>>;

      <item><math|<math-up|Ord><rsub|<around|(|<math-up|id>,<around|(|\<sigma\>\<circ\>\<tau\>|)><rsup|<math-up|v>>|)>><around|(|\<cal-C\><rsub|<math-ss|R>>,S|)>>
      and (D5) hold;

      <item>(D14) holds;

      <item>the reconstruction in every phase holds;

      <item>the trace result holds;

      <item>the OPE facilities, the OPE foundation for <math|Q> and the
      uniform nested OPE hold;

      <item>the all-shapes OPE holds for every coherent prescription;

      <item>for every ultrafilter on <math|\<bbb-N\><rsup|2>> finer than the
      extraction filter of <math|\<sigma\>\<circ\>\<tau\>> there is a
      compatible allocation of the sharp Gram data.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|R2IGoals.fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>,
  statement <hlink|<verbatim|Broad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148>.

  <strong|Proposition VIII.1.5 (ultraviolet endpoint).> Let <math|\<frak-g\>>
  be simple, let <math|<math-ss|R>> be a run with campaign <math|T> and
  pillars <math|W>, and assume the stationary-point and amplification
  condition, the delay condition, and the weight-and-tableau data
  <math|<around|(|\<vartheta\>,v|)>> of (Fd). Then the ultraviolet package
  (UV<math|<rsub|\<infty\>>>) holds:

  <\enumerate>
    <item>(D3) holds for <math|\<cal-C\><rsub|<math-ss|R>>>, and the weight
    data exist.

    <item><em|Sampler.> Every <math|\<sigma\>> has a refinement
    <math|\<tau\>> carrying a table <math|S> and a final object on
    <math|<around|(|\<cal-C\><rsub|<math-ss|R>>,\<sigma\>\<circ\>\<tau\>,S|)>>,
    and <math|<math-up|Ord><rsub|<around|(|<math-up|id>,<around|(|\<sigma\>\<circ\>\<tau\>|)><rsup|<math-up|v>>|)>>>
    holds.

    <item>The trajectory at every <math|<around|(|p,N|)>> competes in, and is
    issued by, the fixed tuning recursion.

    <item><em|Tuning and convergence.> The parameter
    <math|s\<in\><around|[|-1,1|]>> specifies the target coupling
    <math|<wide|\<beta\>|\<bar\>>+w*s> at level <math|0>, where
    <math|w\<gtr\>0> is the fixed tuning width. For every
    <math|<around|(|p,N,s|)>> there is a successful trajectory, and its bare
    coupling at level <math|N> is unique within the prescribed recursion.
    These bare couplings are values of a function analytic on the open unit
    disc in <math|s>. At each fixed <math|<around|(|m,p|)>>, the couplings
    and activities of successful trajectories converge as
    <math|N\<to\>\<infty\>> whenever their level-zero targets converge. For
    complex targets in the disc, convergence of the analytic couplings and
    activities, with every parameter derivative, is uniform on compact
    subsets; activities are measured in the fixed weighted norm at
    <math|<around|(|m,p|)>>.

    <item>For every fixed <math|<around|(|m,p|)>> there is
    <math|c<rsub|m,p>\<gtr\>0> such that

    <\equation*>
      e<rsup|-<math-up|scalar><rsub|N,p,m>>*Z<rsub|N,p>\<geqslant\>c<rsub|m,p>*<space|2em><around|(|N\<geqslant\>m|)>,
    </equation*>

    where <math|Z<rsub|N,p>> is the bare Wilson partition function relative
    to probability Haar measure and <math|<math-up|scalar><rsub|N,p,m>> is
    the field-independent scalar in the level-<math|m> action. Its scalar
    density <math|v<rsub|N,p,m>> tends to <math|-\<infty\>> as
    <math|N\<to\>\<infty\>>.

    <item>The volume-uniform bounds hold, as stated in VIII.1.c, step 1.

    <item>(D5) holds along the full mesh sequence.

    <item>For every fixed <math|p> there is a family of successful
    trajectories with target <math|<wide|\<beta\>|\<bar\>>+\<lambda\>*w*s>,
    <math|s\<in\><around|[|-1,1|]>>, for some <math|\<lambda\>\<gtr\>0>,
    whose central member is the chosen family. They obey the same step
    relations and insertion normalization. For each token list, each compact
    <math|K\<subset\><math-up|NoHit><rsub|p>> and each finite spatial
    derivative order <math|h>, there are an open neighbourhood
    <math|\<Omega\>> of <math|K> in <math|<math-up|NoHit><rsub|p>> and a
    smaller positive parameter width, independent of <math|N>. In the
    resulting unit-disc coordinate, the limiting correlation is holomorphic
    in the parameter and <math|C<rsup|h>> in position on <math|\<Omega\>>.
    All fixed coordinate differences of order at most <math|h>, their
    interpolants and their admissible smearings converge to the corresponding
    derivatives, uniformly on compact parameter and position sets, with every
    parameter derivative.
  </enumerate>

  <em|Status:> theorem. It is assembled here; its ingredients are in
  III.12\UIII.15. <em|Lean:> <hlink|<verbatim|FullVolume.Final.jewelOf17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111>
  and <hlink|<verbatim|Jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149>.

  <strong|Proposition VIII.1.6 (the ultraviolet limit along the full spacing
  sequence).> For <math|p\<in\>\<bbb-N\>>, let <math|<math-up|NoHit><rsub|p>>
  be the set of configurations no two of whose points are congruent modulo
  <math|L<rsub|p>*\<bbb-Z\><rsup|4>>.

  (a) For the family of a run satisfying VIII.1.5's hypotheses, the following
  holds for every <math|p>, <math|n> and <math|v\<in\>\<cal-T\><rsup|n>>.
  There is <math|f<rsub|p,v>\<in\>C<rsup|\<infty\>><around|(|<math-up|NoHit><rsub|p>|)>>
  such that:

  <\itemize-minus>
    <item><math|C<rsub|N,p><around|(|v;t|)>\<to\><big|int>t*<space|0.17em>f<rsub|p,v>>
    as <math|N\<to\>\<infty\>> along all <math|N>, for every
    <math|p>-admissible <math|t>;

    <item>for every fixed finite list of normalized forward, backward or
    centered coordinate differences, with fixed integer stencil widths, the
    interpolated lattice differences converge locally uniformly on
    <math|<math-up|NoHit><rsub|p>> to the corresponding derivatives of
    <math|f<rsub|p,v>>. The same limit holds whenever lattice configurations
    approach a point of <math|<math-up|NoHit><rsub|p>>, along any cutoff
    indices tending to infinity. The smeared differences converge to the
    integral of the derivative against the test, and that integrand is
    integrable.
  </itemize-minus>

  The cutoff thresholds may depend on <math|p,n,v>, the compact set, the
  tests and the difference stencils.

  (b) Suppose a final object exists on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>>
  and (a) holds for <math|\<cal-C\>>. Then
  <math|<math-up|Ord><rsub|<around|(|<math-up|id>,\<sigma\><rsup|<math-up|v>>|)>><around|(|\<cal-C\>,S|)>>
  holds.

  <em|Status:> theorems. <em|Lean:> (a) <hlink|<verbatim|Campaign.realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>,
  with the definition <hlink|<verbatim|PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36>.
  (b) <hlink|<verbatim|FullVolume.Final.from_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126>.

  <strong|Proposition VIII.1.7 (public bridges).> Let <math|\<frak-F\>> be a
  final object on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>> and <math|Q> a
  reader, and let <math|T<around|(|\<frak-F\>,Q|)>> be the public hierarchy
  built from them (VIII.1.p).

  <\enumerate>
    <item>The public Wilson energy, Wilson measure, lattice moments and
    smeared moments of <math|\<cal-W\><around|(|\<cal-C\>|)>> equal the
    internal ones. <math|<math-up|Ord><rsub|<around|(|<math-up|id>,s|)>><around|(|\<cal-C\>,S|)>>
    implies (P1) along <math|s>.

    <item>If (D3) holds and <math|\<frak-g\>> is simple, then
    <math|\<cal-W\><around|(|\<cal-C\>|)>> satisfies (Reg1)\U(Reg4), with
    <math|b<rsub|\<ast\>>=2*b<rsub|0>>.

    <item>The reconstruction in every phase implies (R1)\U(R15).

    <item>The internal separated OPE implies (O1)\U(O2).

    <item>If <math|\<frak-g\>> is simple, the seven internal headline trace
    clauses imply (T1)\U(T4), with <math|3*dim \<frak-g\>/\<pi\><rsup|4>>
    identified with the internal amplitude.

    <item>The full contact resolution implies (D2).
  </enumerate>

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|wilsonFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30>
  and <hlink|<verbatim|fromWilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67>
  (1); <hlink|<verbatim|regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25>
  (2); <hlink|<verbatim|publicReconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133>
  (3); <hlink|<verbatim|publicOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77>
  (4); <hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>
  (5); <hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>
  (6).

  <strong|Proposition VIII.1.8 (exclusion of Wick descriptions in momentum
  space).> Let <math|\<frak-F\>> be a final object. Assume
  <math|s<rsup|8>*<around|(|log 1/s|)><rsup|2>*G<rsub|\<Theta\>><around|(|s|)>\<to\>A\<gtr\>0>
  as <math|s*\<downarrow\>*0>. Let <math|W> be any finite list of complex
  coefficients <math|c<rsub|\<alpha\>>> and products of mass-shell modes, in
  the class defining Wick profiles in statement.md. There are Schwartz
  functions <math|f,g> on <math|\<bbb-R\><rsup|4>> for which

  <\equation*>
    v<rsub|f,g><around|(|p|)>\<assign\><wide|\<cal-F\><rsub|+>*f<around|(|p|)>|\<bar\>><space|0.17em>\<cal-F\><rsub|+>*g<around|(|p|)>
  </equation*>

  has compact support and

  <\equation*>
    \<cal-W\><rsup|\<xi\><rsub|\<ast\>>><rsub|2><around|(|\<Theta\><rsup|\<ast\>>,\<Theta\>|)>*<around|(|<wide|f|\<bar\>>\<otimes\>g|)>\<ne\><big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>><space|0.17em><math-up|read><rsub|\<alpha\>><around|(|v<rsub|f,g>|)>.
  </equation*>

  Here <math|\<cal-F\><rsub|+>> is the unnormalized positive-sign Fourier
  transform used in the spectral representation. The four-dimensional test
  <math|v<rsub|f,g>> is the transform of the joint test restricted to
  relative momenta <math|<around|(|-p,p|)>>. <em|Status:> theorem. It enters
  the trace result of VII.3. The public (T4) follows directly from the
  Euclidean exclusion (VIII.1.r). <em|Lean:>
  <hlink|<verbatim|TraceExtension.Wick.polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.

  <strong|Proposition VIII.1.9 (<math|S*U<around|(|2|)>>).>
  <math|<with|math-font|Euler|s*u><around|(|2|)>\<subset\>M<rsub|2><around|(|\<bbb-C\>|)>>
  is simple. Hence VIII.1.1 holds for <math|<around|(|2,S*U<around|(|2|)>,<with|math-font|Euler|s*u><around|(|2|)>|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|su2Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L12>
  (from <hlink|<verbatim|Examples.SU2.simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Examples/SU2.lean#L79-L106>)
  and <hlink|<verbatim|su2Theory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18>.

  <strong|Proposition VIII.1.10 (definitions filed here and used elsewhere).>
  Several definitions used by III.10\UIII.15, V.1\UV.3, VI.1\UVI.2 and
  VII.1\UVII.4 are filed in this unit:

  <\itemize-minus>
    <item>the structure of a final object and its parts:
    <hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>,
    <hlink|<verbatim|Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>,
    <hlink|<verbatim|Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>,
    <hlink|<verbatim|Materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L45-L47>,
    <hlink|<verbatim|Relativistic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L50-L54>
    and <hlink|<verbatim|Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>;

    <item>the input bundles <hlink|<verbatim|Org.Alloy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L47-L54>,
    <hlink|<verbatim|Assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L64-L66>,
    <hlink|<verbatim|MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>,
    <hlink|<verbatim|IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>
    and <hlink|<verbatim|UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>;

    <item>the volume-uniform bounds of YM/FullVolume, for example
    <hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>
    and <hlink|<verbatim|genuine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62>.
  </itemize-minus>

  <em|Status:> definitions, and theorems described in the units that use
  them.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\enumerate>
    <item><strong|III.14 and III.2 (selection of the run).> For simple
    <math|\<frak-g\>> and <math|b\<gtr\>0> there are a run
    <math|<math-ss|R>>, a campaign <math|T> and pillars <math|W> such that
    the penalty is <math|b> and <math|<math-ss|R>> is funded for the fixed
    local-estimate choice <math|\<Delta\>>. A run records levels, schedule of
    constants, step budgets, the trajectory and its tuning, the reference
    levels and the transfer data of the labels.

    <\itemize-minus>
      <item>(Fd) comprises thirteen conditions: local step budgets;
      phase-comparison and dense-coverage data; divergence of a schedule
      <math|Q>; stationary-point and amplification data; a delay condition;
      frame compatibility; polynomial schedule compatibility; support
      exponent <math|100> at every level; the logarithmic OPE budget; the
      halo condition; a pacing condition; thermal OPE estimates; and
      weight-and-tableau data <math|<around|(|\<vartheta\>,v|)>>. The
      detailed numerical conditions belong to III.15.

      <item>The run is produced by a selection theorem for runs with a fixed
      treasury period, a preselected component recipe and the default
      dynamics (III.2).

      <item><em|Lean:> <hlink|<verbatim|Independent.constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>,
      <hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>,
      and the selection theorem in <hlink|<verbatim|NativePreselectedPostnumericPeriodRun.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean>.
    </itemize-minus>

    <item><strong|III.12\UIII.15 (ultraviolet bounds and convergence).> Used
    for VIII.1.5 and (D5):

    <\itemize-minus>
      <item>the convergence and alignment of the activities along the tuning
      recursion;

      <item>uniqueness and analyticity of the trial couplings;

      <item>the volume-uniform bounds on correlation kernels and their
      lattice differences at separated points
      (<hlink|<verbatim|FullVolume.genuine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62>);

      <item>the pointwise Cauchy property of lattice correlations along the
      full spacing sequence at fixed volume (as used in
      <hlink|<verbatim|Campaign.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38>);

      <item>the property that every extraction order has a refinement
      carrying a final object (<hlink|<verbatim|Run.again>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75>,
      through <hlink|<verbatim|ahead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72>).
    </itemize-minus>

    <item><strong|I.1, II.1\UII.2 (setting and construction record).> The
    internal family, (D3) including the running law: for every
    <math|\<varepsilon\>\<gtr\>0>, <math|<around|\||\<beta\><rsub|N,p><around|(|m|)>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<varepsilon\>*log
    <around|(|1/a<rsub|m>|)>> for all sufficiently large <math|m> and all
    <math|N\<geqslant\>m> and all <math|p>, where
    <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+2*b<rsub|0>*log
    <around|(|1/a<rsub|m>|)>>; the band condition
    <math|\<beta\><rsub|N,p><around|(|m|)>\<in\><around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>>;
    tokens, local sections and their stencils; tables.

    <item><strong|IV.1 (infinite volume).> The seed: a subsequential table
    <math|S> with <math|<math-up|Ord><rsub|\<sigma\>\<circ\>\<tau\>>>, point
    limits, the Euclidean hierarchy axioms, cell hypotheses and
    corrected-field widths. It is produced inside the run's extraction
    property and used in VIII.1.g.

    <item><strong|V.1\UV.3 (phases and reconstruction).>

    <\itemize-minus>
      <item>The phase selection with its certificate (work items B01\UB18).

      <item>The Osterwalder\USchrader\UWightman reconstruction of the
      selected phase (<hlink|<verbatim|after_materializes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Stage.lean#L247-L255>).

      <item>The reconstruction in every phase,
      <hlink|<verbatim|EveryPhase.all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>
      with <hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>
      (V.3).
    </itemize-minus>

    <item><strong|VI.1\UVI.2 (symmetry).> The field algebra (derivatives,
    rotations, conserved stress tensor) and its local laws: the local-law
    package built by <hlink|<verbatim|Bid.station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168>
    from work items A01\UA17, and <hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>.

    <item><strong|VII.1 (free Maxwell comparison).> The free-Maxwell data
    <hlink|<verbatim|maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>
    and <hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>;
    the leading short-distance comparison; the degree-four normalization
    (<hlink|<verbatim|credible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52>,
    <hlink|<verbatim|square_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15>).

    <item><strong|VII.2\UVII.3 (trace).>

    <\itemize-minus>
      <item>The gallery property <hlink|<verbatim|Trace.Over.Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>
      and the chain from it to the trace result.

      <item>The Euclidean Wick exclusion <hlink|<verbatim|euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>,
      with <hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>
      and <hlink|<verbatim|no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>.
    </itemize-minus>

    <item><strong|VII.4 (OPE and contacts).>

    <\itemize-minus>
      <item>The existence of a coherent prescription
      (<hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>).

      <item>The OPE services, which accompany the final object in VIII.1.g.

      <item>The integrated estimates <hlink|<verbatim|estimates_weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108>.

      <item>The contact resolution <hlink|<verbatim|Solstice.provided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69>,
      <hlink|<verbatim|real_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61>,
      <hlink|<verbatim|installs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36>
      and <hlink|<verbatim|detector_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35>.
    </itemize-minus>

    <item><strong|VII.5 (asymptotic freedom).> The value of the slope,
    <math|2*b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|24*\<pi\><rsup|2>|)>>,
    and <math|C<rsub|\<frak-g\>>\<gtr\>0>
    (<hlink|<verbatim|casimir_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172>).
  </enumerate>

  <strong|Standard mathematics used.>

  <\itemize-minus>
    <item>uniqueness of limits, and stability of limits under passage to
    subsequences;

    <item>sequential compactness of countable products of compact intervals
    (Tychonoff), with a diagonal extraction;

    <item>extension of convergence from a dense set by equicontinuity, and
    discrete Taylor estimates to recover derivatives, for (D5);

    <item>dominated convergence, and the Laplace transform of a positive
    measure (Källén\ULehmann representation of the trace two-point function:
    Källén 1952, Lehmann 1954), for VIII.1.8;

    <item>asymptotic scales <math|r<rsup|a><around|(|log r|)><rsup|k>>, for
    (T4).
  </itemize-minus>

  The inputs rest on further standard mathematics:

  <\itemize-minus>
    <item>Baªaban's block-spin renormalization group for lattice gauge fields
    (Baªaban, CMP 1984\U1989);

    <item>cluster expansions (Brydges, Les Houches 1984);

    <item>chessboard estimates (Fröhlich\UIsrael\ULieb\USimon, CMP 1978);

    <item>Osterwalder\USchrader reconstruction (CMP 1973, 1975) and Glaser's
    linear-growth argument;

    <item>decomposition of a translation-invariant state through the
    commutative algebra on the zero-energy subspace (Borchers; Ruelle; see
    Glimm\UJaffe, <em|Quantum Physics>, Ÿ19.7);

    <item>one-loop asymptotic freedom (Gross\UWilczek, Politzer 1973) and the
    trace anomaly (Collins\UDuncan\UJoglekar 1977).
  </itemize-minus>

  <strong|Imported constants and assumptions.> The final existence theorem
  has no additional analytic hypotheses. The run, local-law packages, final
  object and (Core) are supplied by the preceding construction results.

  Parameters and auxiliary choices:

  <\itemize-minus>
    <item>The penalty <math|b\<gtr\>0> of the block-spin kernel. The coarse
    link <math|V> is drawn around the block prediction <math|Q> with weight
    <math|exp <around|(|-\<beta\>*b*<space|0.17em>\<varrho\>*<around|(|V*Q<rsup|-1>|)>|)>>
    (<hlink|<verbatim|penaltyWeight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean>).
    It plays the role of Baªaban's averaging parameter and is unrelated to
    <math|b<rsub|\<ast\>>>.

    <item>The implication VIII.1.4 accepts a local-estimate choice
    <math|\<Delta\>>; VIII.1.a uses the fixed choice supplied by III.14.

    <item>The run-selection theorem is instantiated with the fixed dynamics
    and auxiliary estimates of III.2.
  </itemize-minus>

  Constants:

  <\itemize-minus>
    <item><math|b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|48*\<pi\><rsup|2>|)>>,
    and <math|b<rsub|\<ast\>>=2*b<rsub|0>> in (Reg1).

    <item>The trace amplitude <math|A<rsub|\<frak-g\>>=12*<around|(|d<rsub|2>/b<rsub|0>|)><rsup|2>*dim
    \<frak-g\>/\<pi\><rsup|4>> with <math|d<rsub|2>=-b<rsub|0>/2>, so
    <math|A<rsub|\<frak-g\>>=3*dim \<frak-g\>/\<pi\><rsup|4>>.

    <item><math|<wide|\<beta\>|\<bar\>>\<gtr\>0>, the reference coupling at
    level <math|0>.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Choose one run <math|<math-ss|R><rsub|G,b>> before any extraction order,
  observable or test. Given <math|\<sigma\>>, first extract a refinement
  <math|\<sigma\>\<circ\>g> on which the couplings at every fixed level have
  ordered limits. Next extract <math|<around|(|\<sigma\>\<circ\>g|)>\<circ\>w>,
  carrying a continuum table and a final object. The later reconstruction,
  trace, OPE and contact results attach to that object. Passing to further
  subsequences preserves the earlier limits, so <math|\<tau\>=g\<circ\>w>
  serves every conclusion.

  At each fixed volume, the renormalization-step estimates make the lattice
  correlations Cauchy on a dense union of grids. Equicontinuity gives
  convergence on separated configurations; discrete Taylor estimates recover
  all derivatives. Dominated convergence gives the smeared limits. Uniqueness
  of limits identifies these full-sequence limits with the rows of the
  extracted table, removing the mesh subsequence.

  Specialize the detailed theorem to <math|b=1> and
  <math|\<sigma\>=<around|(|<math-up|id>,p|)>>. The volume part of
  <math|\<tau\>> is the required <math|q>. The public hierarchy is read from
  the final object and its OPE reader. The bridges identify the Wilson
  measures and moments, reconstruction axioms, OPE estimates and trace tests.
  The plaquette identity, equality of Wick profiles and evaluation of the
  trace amplitude are the required computations.

  <section|4. Steps><label|4-steps>

  The internal statements use a fixed gauge group
  <math|<around|(|m,G,\<frak-g\>|)>>. When a run is specified, its campaign
  and pillars are those appearing in (Fd) and VIII.1.5.

  <subsection|4.1 The run and the ultraviolet
  endpoint><label|41-the-run-and-the-ultraviolet-endpoint>

  <strong|Lemma VIII.1.a (the chosen run).> Fix a gauge group with
  <math|\<frak-g\>> simple and <math|b\<gtr\>0>. There are a run
  <math|<math-ss|R><rsub|G,b>>, a campaign and pillars with penalty <math|b>
  satisfying (Fd). Write <math|\<cal-C\><rsub|G,b>> for its family. <em|Proof
  sketch.> Apply the run-selection theorem of III.2 with the fixed dynamics,
  local estimates and component prescription of III.14. The required schedule
  predicate is identically true, so it is satisfied after any delay
  extension. Choose one witness before specifying an extraction order.

  <em|Lean:> <hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>
  (III.14) and <hlink|<verbatim|fundedRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31>.
  <em|(proof read; selection theorem statement only)>

  <strong|Lemma VIII.1.b (ultraviolet endpoint).> This is VIII.1.5. <em|Proof
  sketch.> The convergence theorem of III.13\UIII.15 supplies the analytic
  families of couplings and activities. Its uniqueness clause identifies
  successful trajectories with the same level-zero target, and its analytic
  clause gives the bare-coupling interpolation. Removing the
  field-independent scalar from the partition function gives the positive
  lower bound; decay of the bare partition function then forces the scalar
  density to <math|-\<infty\>>. The volume-uniform bounds and VIII.1.c give
  (D5). The parameter-family construction gives item 8. Finally, refine to a
  final object and apply VIII.1.d to obtain the sampler with the full mesh
  sequence. The full funding hypothesis supplies the three assumptions of
  VIII.1.5. <em|Lean:> <hlink|<verbatim|clients>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L101-L113>;
  <hlink|<verbatim|jewelOf17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111>,
  <hlink|<verbatim|wins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L60-L68>,
  <hlink|<verbatim|bareTrial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77>
  and <hlink|<verbatim|Funded.jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L89-L91>.
  Further sources: <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.Campaign.Winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63>,
  <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.Campaign.offers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89>,
  <hlink|<verbatim|YM.FullVolume.stripped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L87-L88>,
  <hlink|<verbatim|YM.FullVolume.saved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L97-L128>,
  <hlink|<verbatim|YM.FullVolume.field_independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Scalar.lean#L130-L143>.
  <em|(assembly, analytic convergence, tuning, costs and parameter-family
  proofs read; their estimates are inputs from III.12\UIII.15)>

  <strong|Lemma VIII.1.c (convergence along all spacings at fixed volume).>
  This is VIII.1.6(a). <em|Proof sketch.> Fix <math|p,n,v>.

  <\enumerate>
    <item>The volume-uniform bounds control every fixed list of lattice
    differences on separated configurations. The bound and its cutoff
    threshold may depend on <math|n,v>, the differences and the separation,
    but are uniform in <math|p>.

    <item>The union of the configuration grids is dense. Grid nesting makes
    each point of this union a grid point at all sufficiently fine spacings.
    At these configurations, the renormalization-step comparison from III.12
    gives a Cauchy sequence along all <math|N>. Equicontinuity extends
    convergence locally uniformly to <math|<math-up|NoHit><rsub|p>>.

    <item>A discrete Taylor estimate compares each first difference with a
    difference quotient over a fixed small physical displacement. The
    function values already converge; first let <math|N\<to\>\<infty\>>, then
    let the displacement shrink. This proves that the first differences are
    Cauchy. Iterating gives limits of all differences, and the Taylor
    estimate identifies them as the derivatives of a smooth function
    <math|f<rsub|p,v>>. Multilinear interpolation has the same limits.

    <item>The lattice sums are integrals of piecewise constant functions on a
    fundamental cell. A uniform bound on the test support permits dominated
    convergence, giving the smeared limits.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>,
  <hlink|<verbatim|purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44>,
  <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47>
  and <hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>.
  Further sources: <hlink|<verbatim|YM.FullVolume.Eves.dense>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L13-L14>,
  <hlink|<verbatim|YM.FullVolume.Eves.lateAnch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L15-L24>,
  <hlink|<verbatim|YM.FullVolume.from_previous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125>,
  <hlink|<verbatim|YM.FullVolume.honors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Wish.lean#L22-L49>,
  <hlink|<verbatim|YM.FullVolume.augments>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Wish.lean#L61-L81>,
  <hlink|<verbatim|YM.FullVolume.pudding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Smears.lean#L49-L82>.
  <em|(proof read, including dense-grid convergence, Taylor recovery and
  smearing; the renormalization-step estimate is an input)>

  <strong|Lemma VIII.1.d (removing the mesh subsequence).> This is
  VIII.1.6(b). <em|Proof sketch.> The seed of <math|\<frak-F\>> gives, for
  each admissible <math|p>, <math|C<rsub|\<sigma\><rsup|<math-up|m>><around|(|j|)>,p><around|(|v;t|)>\<to\>R<rsub|p>>,
  and also <math|R<rsub|\<sigma\><rsup|<math-up|v>><around|(|k|)>>\<to\><big|int>t*S<around|(|v;\<cdot\>|)>>.
  By VIII.1.c, <math|C<rsub|N,p><around|(|v;t|)>\<to\><big|int>t*f<rsub|p,v>>
  along all <math|N>. Since <math|\<sigma\><rsup|<math-up|m>>> is cofinal,
  uniqueness of limits gives <math|R<rsub|p>=<big|int>t*f<rsub|p,v>>. Thus
  the same rows <math|R<rsub|p>> are limits along all <math|N>, and the
  volume limit is unchanged. <em|Lean:> <hlink|<verbatim|from_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126>.

  <strong|Lemma VIII.1.e (OPE and logarithmic packages).> Let
  <math|<math-ss|R>> be a run with campaign <math|T> and pillars <math|W>.
  Assume <math|\<frak-g\>> simple and (Fd). Then the family carries the OPE
  package and its logarithmic extension. <em|Proof sketch.> The pillars,
  polynomial schedule compatibility, halo condition and weight data supply
  the ordinary package. The logarithmic extension adds the logarithmic exit
  estimate, its budget, the fixed support exponent, and divergence of the
  composed schedule <math|m\<mapsto\>Q<around|(|J<around|(|m|)>|)>>. The last
  property follows from <math|J<around|(|m|)>\<to\>\<infty\>> and
  <math|Q<around|(|k|)>\<to\>\<infty\>>.

  <em|Lean:> <hlink|<verbatim|Funded.logPackage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L100-L106>
  and <hlink|<verbatim|opePackage17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Witness.lean#L98-L106>.
  <em|(assembly proofs read)>

  <subsection|4.2 The data at one extraction
  order><label|42-the-data-at-one-extraction-order>

  <strong|Lemma VIII.1.f (limits of the couplings at fixed level).> Assume
  (D3) holds for <math|\<cal-C\>>, and let <math|\<sigma\>> be an extraction
  order. Then there are <math|g> and <math|<around|(|B<rsub|m>|)><rsub|m>>
  such that, for every <math|m>, <math|\<beta\><rsub|N,p><around|(|m|)>> has
  the ordered limit <math|B<rsub|m>> along <math|\<sigma\>\<circ\>g>.
  Moreover <math|B<rsub|m>/log <around|(|1/a<rsub|m>|)>\<to\>2*b<rsub|0>>.
  <em|Proof sketch.> Set <math|c<rsub|N><around|(|p,m|)>\<assign\>\<beta\><rsub|N,p><around|(|m|)>>
  for <math|m\<leqslant\>N> and <math|c<rsub|N><around|(|p,m|)>\<assign\><wide|\<beta\>|^><rsub|m>>
  for <math|m\<gtr\>N>. By the band condition of (D3),
  <math|c<rsub|N>\<in\><big|prod><rsub|<around|(|p,m|)>><around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>>,
  a compact metrizable space.

  <\enumerate>
    <item>Extract <math|g<rsup|<math-up|m>>> with
    <math|c<rsub|\<sigma\><rsup|<math-up|m>><around|(|g<rsup|<math-up|m>><around|(|j|)>|)>>\<to\>a>
    in the product.

    <item>Extract <math|g<rsup|<math-up|v>>> with
    <math|a<around|(|\<sigma\><rsup|<math-up|v>><around|(|g<rsup|<math-up|v>><around|(|k|)>|)>,\<cdot\>|)>\<to\>B>
    in <math|<big|prod><rsub|m><around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>>.

    <item>For fixed <math|m> the truncation is eventually inactive.

    <item>The running law of (D3) gives <math|<around|\||B<rsub|m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<varepsilon\>*log
    <around|(|1/a<rsub|m>|)>> for large <math|m>, hence the slope.
  </enumerate>

  The slope is not used by the main theorem. <em|Lean:>
  <hlink|<verbatim|Running.extraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L40-L56>
  and <hlink|<verbatim|Running.discrete>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension/Running.lean#L64-L84>.

  <strong|Lemma VIII.1.g (a final object on a refinement).> Let
  <math|\<frak-g\>> be simple, let <math|<math-ss|R>> be a run with the OPE
  package, and let <math|\<sigma\>> be an extraction order. Then there are a
  refinement <math|w>, a table <math|S>, a final object <math|\<frak-F\>> on
  <math|<around|(|\<cal-C\><rsub|<math-ss|R>>,\<sigma\>\<circ\>w,S|)>> and
  scaling data <math|\<Sigma\>>, with OPE services and (D14). <em|Proof
  sketch.>

  <\enumerate>
    <item>The run's extraction property supplies a table and seed on a
    refinement, together with the trajectory witnesses (D6).

    <item>Add the free Maxwell data, with the translation normalization in
    which <math|\<kappa\><rsup|-1>*J> is the free Maxwell stress tensor.

    <item>The weak comparison estimates give the infrared data, scaling data
    <math|\<Sigma\>> and the first comparison.

    <item>The symmetry results of VI.1\UVI.2 produce the derivatives,
    rotations and stress tensor with their local laws.

    <item>The phase results B01\UB18 produce the selection and its
    certificate. The reconstruction theorem then supplies the mixed and
    selected continuations and the selected Wightman theory. These data form
    <math|\<frak-F\>> with the prescribed field algebra.

    <item>The leading mixed comparison, the one-dimensional space of
    conserved tensors, and the limits of derivatives and rotations give
    (D14). <em|Lean:> <hlink|<verbatim|Pert.withFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Construction.lean#L21-L31>;
    <hlink|<verbatim|Run.extractible17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90>.
    <em|(assembly and final-object proofs read; analytic and symmetry inputs
    as stated)>
  </enumerate>

  <strong|Lemma VIII.1.h (trace result for every final object).> Assume (Fd)
  and <math|\<frak-g\>> simple. For every extraction order <math|\<sigma\>>,
  every table <math|S> and every final object <math|\<frak-F\>> on
  <math|<around|(|\<cal-C\><rsub|<math-ss|R>>,\<sigma\>,S|)>>:

  <\itemize-minus>
    <item><math|d<rsub|2>=-b<rsub|0>/2> and
    <math|A<rsub|\<frak-g\>>\<gtr\>0>;

    <item><math|\<Theta\>> is fixed by the adjoint and Lorentz actions, and
    <math|<around|\<langle\>|\<Omega\>,\<Theta\><around|(|f|)>*\<Omega\>|\<rangle\>>=0>
    for every Schwartz test <math|f>;

    <item>on the common invariant domain,

    <\equation*>
      \<Theta\><around|(|f|)>=<around*|(|<big|sum><rsub|a>T<rsub|a*a>|)><around|(|f|)>-<around*|\<langle\>|<big|sum><rsub|a>T<rsub|a*a>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>><around*|(|<big|int>f|)><math-up|id>,
    </equation*>

    and <math|\<Theta\>\<ne\>0>;

    <item><math|s<rsup|8>*<around|(|log 1/s|)><rsup|2>*G<rsub|\<Theta\>><around|(|s|)>\<to\>A<rsub|\<frak-g\>>>
    as <math|s*\<downarrow\>*0>;

    <item>the trace has a unique spectral measure <math|\<mu\>>, with

    <\equation*>
      \<rho\><rsup|-8><around|(|log \<rho\>|)><rsup|2>*<big|int>\<varphi\>*<around|(|p/\<rho\>|)>*<space|0.17em>\<mu\>*<around|(|d*p|)>\<longrightarrow\><frac|A<rsub|\<frak-g\>>|1536*\<pi\>>*<big|int><rsub|<wide|V|\<bar\>><rsub|+>><math-ss|m><around|(|p|)><rsup|2>*\<varphi\><around|(|p|)>*<space|0.17em>d*p*<space|2em><around|(|\<rho\>\<to\>\<infty\>|)>,
    </equation*>

    for every compactly supported continuous <math|\<varphi\>> and every
    Schwartz <math|\<varphi\>>, where <math|<math-ss|m><around|(|p|)>=<around|(|p<rsup|4>|)><rsup|2>-<around|\||\<b-up-p\>|\|><rsup|2>>
    and <math|<wide|V|\<bar\>><rsub|+>=<around|{|p:p<rsup|4>\<geqslant\><around|\||\<b-up-p\>|\|>|}>>;

    <item>there exist a scaling hierarchy, a Wilson coupling and an
    ultrafilter compatible with <math|\<sigma\>> for which a normalized
    position-space scheme exists. Every scheme with that hierarchy and
    ultrafilter satisfying the stated alignment, leading-derivative and
    scalar normalization conditions admits the stress comparison of VII.3;

    <item>the momentum-space Wick countertest of VIII.1.8 and the Maxwell
    relative-locality countertests of VIII.1.n hold, including the version
    localized in any ball.
  </itemize-minus>

  <em|Proof sketch.> The phase-comparison condition in (Fd) supplies the
  trace comparison data at <math|\<sigma\>>. The trace asymptotic, spectral
  law and exclusions of VII.2\UVII.3 then apply to this final object.
  Centering and scalar covariance follow from the stress-tensor laws. The
  stress-comparison theorem first constructs one admissible normalized
  scheme, then proves the comparison for every scheme satisfying those same
  conditions.

  <em|Lean:> <hlink|<verbatim|Trace.Target.Result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120>,
  <hlink|<verbatim|assembled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L138-L152>,
  <hlink|<verbatim|arenaT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Agora.lean#L69-L74>,
  <hlink|<verbatim|crest_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37>
  and <hlink|<verbatim|Funded.gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95>.
  <em|(assembly proofs read; the trace estimates are inputs from
  VII.2\UVII.3)>

  <strong|Lemma VIII.1.i (Wick exclusion in momentum space).> This is
  VIII.1.8. <em|Proof sketch.>

  <\enumerate>
    <item>Let <math|\<mu\>> be the trace spectral measure. It is tempered and
    supported in the forward cone. For a joint Schwartz test
    <math|\<varphi\>>, the selected two-point function is the integral of its
    relative-momentum transform against <math|\<mu\>>, and

    <\equation*>
      G<rsub|\<Theta\>><around|(|s|)>=<big|int>e<rsup|-s*p<rsup|4>>*<space|0.17em>\<mu\>*<around|(|d*p|)>*<space|2em><around|(|s\<gtr\>0|)>.
    </equation*>

    <item>Suppose the Wick identity held for every allowed pair
    <math|<around|(|f,g|)>>. Then <math|<big|int>v*<space|0.17em>d*\<mu\>=<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>><math-up|read><rsub|\<alpha\>><around|(|v|)>>
    for every compactly supported Schwartz <math|v>. To see this, choose
    <math|u> with <math|<around|\||\<cal-F\><rsub|+>*u|\|>=1> on a ball
    containing <math|<math-up|supp><space|0.17em>v>, and use Fourier
    surjectivity to choose <math|w> with <math|\<cal-F\><rsub|+>*w=<around|(|\<cal-F\><rsub|+>*u|)>*v>.
    Thus <math|<wide|\<cal-F\><rsub|+>*u|\<bar\>>\<cal-F\><rsub|+>*w=v>.

    <item>For each <math|s\<gtr\>0>, approximate <math|e<rsup|-s*p<rsup|4>>>
    by compactly supported smooth cutoffs bounded in absolute value by
    <math|e<rsup|-s*p<rsup|4>>>. Exponential integrability for <math|\<mu\>>
    and for every mass-shell term permits dominated convergence on both
    sides. Hence <math|G<rsub|\<Theta\>><around|(|s|)>=<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>>*K<rsub|\<alpha\>><around|(|s|)>>
    for every <math|s\<gtr\>0>.

    <item>The resulting Wick profile contradicts VIII.1.r(c).
  </enumerate>

  <em|Lean:> <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>,
  <hlink|<verbatim|identifies_euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73>
  and <hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>.
  Further sources: <hlink|<verbatim|YM.TraceExtension.productTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L22>,
  <hlink|<verbatim|YM.TraceExtension.waveTest_product>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35>.

  <strong|Lemma VIII.1.j (reconstruction in every phase; input from V.3).>
  For every final object <math|\<frak-F\>> there are reconstruction data
  <math|\<frak-L\>> with the following properties. The phasewise assertions
  hold for every <math|\<xi\>\<in\>X>.

  <\enumerate>
    <item>For every <math|\<xi\>\<in\>X>, a Wightman theory
    <math|\<frak-W\><rsub|\<xi\>>> realizes the continuation of that phase,
    with the same labels. At <math|\<xi\><rsub|\<ast\>>> it is the selected
    theory of <math|\<frak-F\>>.

    <item>The comparison map from <math|\<frak-W\><rsub|\<xi\>>> to its
    Osterwalder\USchrader space is onto.

    <item>The Euclidean ground state is unique, and the zero-energy subspace
    is <math|\<bbb-C\>*\<Omega\><rsub|\<xi\>>>.

    <item>For every finite sum <math|A> of field words there is
    <math|M<rsub|A>\<geqslant\>0>, independent of <math|\<xi\>>, such that

    <\equation*>
      \<mu\><rsub|A*\<Omega\><rsub|\<xi\>>><around|(|<around|{|0\<less\>p<rsup|4>\<leqslant\>u|}>|)>\<leqslant\>M<rsub|A>*u<rsup|2>*<space|1em><around|(|0\<less\>u\<leqslant\>1|)>,
    </equation*>

    <\equation*>
      0\<leqslant\><around|\<langle\>|A*\<Omega\><rsub|\<xi\>>,<around|(|e<rsup|-s*H<rsub|\<xi\>>>-P<rsub|0,\<xi\>>|)>*A*\<Omega\><rsub|\<xi\>>|\<rangle\>>\<leqslant\>M<rsub|A>*s<rsup|-2>*<space|1em><around|(|s\<geqslant\>1|)>.
    </equation*>

    <item>The bounded weak commutant, defined using the unbounded adjoints on
    the field-word domain, is <math|\<bbb-C\><space|0.17em><math-up|id>>.

    <item>The stress tensor continues to every phase, and each Wightman
    distribution evaluated on a fixed joint Schwartz test is continuous in
    <math|\<xi\>>.

    <item><math|<big|int>S<rsup|\<xi\>>*<space|0.17em>d*\<nu\>=S> on
    separated words, and <math|<big|int>\<cal-W\><rsup|\<xi\>>*<space|0.17em>d*\<nu\>=\<cal-W\><rsup|<math-up|mix>>>
    on every joint Schwartz test.
  </enumerate>

  <em|Proof sketch (V.1, V.3).> The phases are characters of the commutative
  <math|C<rsup|\<ast\>>>-algebra generated by time-slab word operators
  compressed to the mixed Osterwalder\USchrader zero-energy subspace. Its
  vacuum measure is <math|\<nu\>>. Translate a separated word into a slab to
  obtain the Euclidean barycentre identity. Apply the reconstruction,
  low-energy, heat-decay, irreducibility and stress-continuation results of
  V.3 to every character, retaining the original selected theory at
  <math|\<xi\><rsub|\<ast\>>>. Their continuity and boundary barycentre
  identities give the last two assertions.

  <em|Lean:> <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>
  and <hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>.
  <em|(statement and top-level proof read)>

  <strong|Lemma VIII.1.k (the OPE reader and its estimates).> Let
  <math|\<frak-F\>> be a final object on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>>
  with OPE services for that family, order and table. Choose a coherent
  prescription <math|P> for the field derivatives, adapted to the symmetric
  laws of the table and to the transport injection. Let <math|Q> be the
  reader formed by <math|P>, its coherence, the Euclidean kernel and the
  transport data (injection, orientation, local laws). Then:

  <\itemize-minus>
    <item>the OPE foundation holds for <math|Q>;

    <item>the uniform nested OPE holds;

    <item>the all-shapes OPE holds for every coherent prescription;

    <item>under the dense-coverage property of the sharp Gram family, a
    compatible sharp Gram allocation exists for every ultrafilter finer than
    the extraction filter of <math|\<sigma\>>.
  </itemize-minus>

  <em|Proof sketch.> Extend the finite-degree prescriptions compatibly and
  take their common restriction in each degree. The OPE services give the
  coefficient and remainder estimates, which also supply the nested
  expansions and the all-shapes expansion. Dense coverage supplies the test
  portfolios used to construct the sharp Gram allocation.

  <em|Lean:> <hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>
  (VII.4), <hlink|<verbatim|Orbits.produce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68>,
  <hlink|<verbatim|Nesting.uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36>
  and <hlink|<verbatim|attains_mantle17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Canvas.lean#L54-L58>.
  <em|(assembly proofs read; OPE estimates as stated)>

  <strong|Lemma VIII.1.l (assembly of the full package).> This is VIII.1.4.
  <em|Proof sketch.> The proof has three parts.

  <\itemize-minus>
    <item><em|Global items.> (UV<math|<rsub|\<infty\>>>) comes from VIII.1.b
    and the logarithmic package from VIII.1.e. The trace result for every
    <math|<around|(|\<sigma\>,S,\<frak-F\>|)>> comes from VIII.1.h. Coverage
    comes from the phase-comparison and coverage clause of (Fd).

    <item><em|At an order <math|\<sigma\>>.> Apply VIII.1.f to obtain
    <math|<around|(|g,B|)>>. Apply VIII.1.g to <math|\<sigma\>\<circ\>g> to
    obtain <math|<around|(|w,S,\<frak-F\>,\<Sigma\>|)>>. Apply VIII.1.j to
    obtain <math|\<frak-L\>>, and VIII.1.k to obtain <math|Q>. Then:

    <\itemize-minus>
      <item>subsequence stability carries the coupling limits from
      <math|\<sigma\>\<circ\>g> to <math|<around|(|\<sigma\>\<circ\>g|)>\<circ\>w=\<sigma\>\<circ\><around|(|g\<circ\>w|)>>;

      <item>VIII.1.d, with the full-mesh clause of
      (UV<math|<rsub|\<infty\>>>), gives <math|<math-up|Ord><rsub|<around|(|<math-up|id>,<around|(|\<sigma\>\<circ\>g\<circ\>w|)><rsup|<math-up|v>>|)>>>;

      <item>the OPE facilities consist of the services, the run parameters
      and the logarithmic package.
    </itemize-minus>

    <item><em|Output.> The refinement returned is <math|\<tau\>=g\<circ\>w>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>
  and <hlink|<verbatim|Order.retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L66-L68>.

  <subsection|4.3 The internal headline><label|43-the-internal-headline>

  <strong|Lemma VIII.1.m (contact devices).> Let <math|\<frak-F\>> carry a
  reader <math|Q> and OPE services. Then there are devices <math|<math-ss|M>>
  with the following properties:

  <\itemize-minus>
    <item>the prescription of <math|<math-ss|M>> is the reader's
    prescription;

    <item>the full contact resolution holds;

    <item>each OPE stratum has a complex basis of real fields, and the
    degree-zero basis contains the unit field;

    <item>there are positive thresholds <math|t<rsub|n>\<to\>0> with
    <math|4*t<rsub|n+1>\<less\>t<rsub|n>> and
    <math|2*<around|(|n+1|)>*t<rsub|n>\<leqslant\><math-up|clearance><rsub|<math-ss|M>><around|(|n|)>>.
  </itemize-minus>

  <em|Proof sketch.> Use the reader\<#2019\>s coherent prescription, the
  rotations, the Euclidean hierarchy and the phase transport laws, together
  with a multiple-contact detector in each degree. The contact theorem of
  VII.4 gives the resolution from the OPE services. Real conjugation permits
  a real basis in each stratum, containing the unit in degree zero.
  Successively choose each positive threshold below one eighth of its
  predecessor, <math|2<rsup|-n>> and <math|<math-up|clearance><rsub|<math-ss|M>><around|(|n|)>/<around|(|2*<around|(|n+1|)>|)>>.
  <em|Lean:> <hlink|<verbatim|contacts_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24>
  and <hlink|<verbatim|MultipleLight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63>.
  Further sources: <hlink|<verbatim|YM.Contacts.Solstice.Thresholds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28>.

  <strong|Lemma VIII.1.n (continuum theorem).> This is VIII.1.3. <em|Proof
  sketch.> Take <math|<around|(|T,W|)>> and (Fd) from the specification of
  <math|<math-ss|R><rsub|G,b>>, and apply the refinement clause of VIII.1.4
  at <math|\<sigma\>>. The coupling limits, the all-shapes OPE and the sharp
  Gram allocations are omitted. Contacts come from VIII.1.m. (Core)
  comprises:

  <\itemize-minus>
    <item>the OPE services;

    <item>the reconstruction in every phase;

    <item>the eight trace tests from VIII.1.h;

    <item>the OPE foundation;

    <item>the integrated remainder estimates of VII.4: fix cluster fields
    <math|a<rsub|i>\<in\>F<rsub|d<rsub|i>>> and spectator fields. For a
    measurable parameter space, an integrable complex density <math|w>
    against a positive measure <math|\<mu\>>, with
    <math|<big|int><around|\||w|\|>*<space|0.17em>d*\<mu\>\<leqslant\>B> and
    an almost everywhere measurable configuration map that is admissible at
    scale <math|r> wherever <math|w\<ne\>0>, the weighted raw correlation,
    finite OPE sum and their difference are integrable. The norm of the
    integrated difference is at most <math|B*<space|0.17em>r<rsup|D+1-<big|sum><rsub|i>d<rsub|i>-\<varepsilon\>>>,
    for every almost everywhere measurable choice of phases and for the mixed
    state. The radius threshold depends on the finite field lists, geometric
    constants, <math|\<varepsilon\>\<gtr\>0>, truncation degree <math|D>,
    parameter space and mass bound <math|B>, and precedes the choice of
    <math|\<mu\>,w>, configurations and phases.
  </itemize-minus>

  The internal trace-test bundle has eight clauses:

  <\itemize-minus>
    <item>(T1);

    <item>the operator identity of VIII.1.h;

    <item>the asymptotics;

    <item><math|A<rsub|\<frak-g\>>\<gtr\>0>;

    <item>the unique spectral law;

    <item>the Wick countertest;

    <item>for every <math|n> and every complex-linear isometry <math|U> from
    <math|\<cal-H\>> into the <math|n>-colour free Maxwell Fock space,
    preserving the vacuum, intertwining translations and taking values in
    symmetric transverse waves, there are compactly supported Schwartz tests
    <math|f,h<rsub|1>,\<ldots\>,h<rsub|n>>, with each <math|h<rsub|i>> real
    and spacelike separated from <math|f>, such that

    <\equation*>
      <around|\<langle\>|W*<around|(|-h|)>*\<Omega\>,U*\<Theta\><around|(|f|)>*\<Omega\>|\<rangle\>>\<ne\><around|\<langle\>|U*\<Theta\><around|(|<wide|f|\<bar\>>|)>*\<Omega\>,W<around|(|h|)>*\<Omega\>|\<rangle\>>;
    </equation*>

    <item>for every such <math|U>, every probability measure on an index
    space and every family of maps preserving inner products on physical
    waves and fixing <math|U*\<cal-H\>> pointwise, the analogous identity
    with the coherent vectors averaged under those maps also fails. For every
    <math|r\<gtr\>0>, the test <math|f> can be supported in an open set whose
    closure lies in <math|B<around|(|0,r|)>>, with the real tests
    <math|h<rsub|i>> supported in a common open set whose closure is
    spacelike separated from the closure of the support region for <math|f>.
  </itemize-minus>

  Finally, the degree-four determining tests of VII.1 convert (D14) into
  (D15). <em|Lean:> <hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>,
  <hlink|<verbatim|Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34>,
  <hlink|<verbatim|Core.of_receipts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L38-L44>,
  <hlink|<verbatim|ManuscriptTraceTests.of_result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L77-L89>
  and <hlink|<verbatim|Pert.Position.four_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53>.
  <em|(assembly and degree-four normalization proofs read)>

  <strong|Lemma VIII.1.o (internal headline).> For a gauge group with simple
  <math|\<frak-g\>> and <math|b\<gtr\>0>, the internal detailed existence
  statement holds with <math|\<cal-C\>=\<cal-C\><rsub|G,b>>. <em|Proof
  sketch.> Item by item:

  <\itemize-minus>
    <item>(D3) comes from the run, and (D6) from the final object.

    <item><em|Reconstruction.> It consists of:

    <\itemize-minus>
      <item>the mixed and selected continuations;

      <item>the internal Wightman axioms for the selected theory and for
      every <math|\<frak-W\><rsub|\<xi\>>>: normalized cyclic vacuum, dense
      domain, temperedness, adjoints, the moment identity, positivity,
      locality, covariance, strong continuity, spectral representation,
      forward support, and uniqueness of the invariant vector;

      <item>the <math|\<nu\>>-average of the phase Wightman distributions.
    </itemize-minus>

    <item><em|Separated OPE.> It consists of the coefficient bounds from the
    OPE foundation, the single-centre remainder bound and the integrated
    bounds of (Core).

    <item><em|Trace clauses.> The seven headline clauses are centering, the
    operator identity, short-distance asymptotics, positive amplitude, and
    the Wick, Maxwell and averaged Maxwell countertests. The unique spectral
    law is retained separately in (Core).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Nonperturbative.existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Headlines.lean#L19-L36>,
  <hlink|<verbatim|Reconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75-L81>,
  <hlink|<verbatim|WightmanAxioms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52-L71>,
  <hlink|<verbatim|SeparatedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48>,
  <hlink|<verbatim|NestedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138>,
  <hlink|<verbatim|TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>
  and <hlink|<verbatim|Core.point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63>.

  <subsection|4.4 Translation to the public
  statement><label|44-translation-to-the-public-statement>

  <strong|Lemma VIII.1.p (the public Wilson family and hierarchy).> Let
  <math|\<frak-F\>> be a final object on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>>
  and <math|Q> a reader. The public Wilson family
  <math|\<cal-W\><around|(|\<cal-C\>|)>> is defined by:

  <\itemize-minus>
    <item><math|L<rsub|p>> and <math|D<rsub|N>> are the period and
    denominator sequences of <math|\<cal-C\>>;

    <item><math|\<beta\><rsub|N,p>=\<beta\><rsub|N,p><around|(|N|)>>;

    <item><math|h> is the normalized Haar measure;

    <item><math|\<cal-T\>> is the set of internal tokens;

    <item><math|I<rsub|N,p>> is the internal insertion.
  </itemize-minus>

  The public Wilson energy equals the internal one. The proof matches the
  plaquette <math|U<around|(|y,\<mu\>|)>*U<around|(|y+e<rsub|\<mu\>>,\<nu\>|)>*U<around|(|y+e<rsub|\<nu\>>,\<mu\>|)><rsup|-1>*U<around|(|y,\<nu\>|)><rsup|-1>>
  with the internal face value. Hence the measures, the lattice moments and
  the smeared moments agree.

  The hierarchy <math|T<around|(|\<frak-F\>,Q|)>> has the following
  components:

  <\itemize-minus>
    <item><math|\<cal-H\>> and <math|\<frak-W\>> are those of the selected
    reconstruction, with the same Hilbert space, domain, labels and
    operators;

    <item><math|\<cal-L\>> is the filtered union of the field spaces, with
    <math|F<rsub|d>=> the quotient field spaces of <math|S>,
    <math|\<iota\><rsub|d>=> the field-label inclusion and <math|\<pi\>=> the
    class map of tokens;

    <item><math|<around|(|X,\<nu\>,\<xi\><rsub|\<ast\>>|)>> are the phase
    space, its measure and the selected point;

    <item><math|S<rsup|s>> is the table read in state <math|s>;

    <item><math|<math-ss|F><rsub|n>> is the selected continuation;

    <item><math|<around|(|<math-up|Ch><rsub|j>,O<rsub|j,\<kappa\>>,c<rsub|j,\<kappa\>>|)>>
    come from <math|Q>;

    <item><math|\<Theta\>=<big|sum><rsub|a>T<rsub|a*a>-<around|\<langle\>|<big|sum><rsub|a>T<rsub|a*a>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>>*\<b-1\><rsub|4>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|energy_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L32-L41>,
  <hlink|<verbatim|law_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L43-L46>,
  <hlink|<verbatim|moment_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L49-L55>,
  <hlink|<verbatim|smear_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L57-L60>
  and <hlink|<verbatim|hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42>.

  <strong|Lemma VIII.1.q (regularity and the Wilson limit).> Let
  <math|\<frak-F\>> be a final object on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>>
  and <math|Q> a reader.

  (a) If (D3) holds and <math|\<frak-g\>> is simple, then (Reg1)\U(Reg4)
  hold:

  <\itemize-minus>
    <item>(Reg1): the running law of (D3) at <math|m=N> gives
    <math|<around|\||\<beta\><rsub|N,p>/log
    D<rsub|N>-2*b<rsub|0>|\|>\<less\>\<varepsilon\>> for every
    <math|\<varepsilon\>\<gtr\>0>, all sufficiently large <math|N> and all
    <math|p>, and <math|2*b<rsub|0>\<gtr\>0> by
    <math|C<rsub|\<frak-g\>>\<gtr\>0>;

    <item>(Reg2) and (Reg3): continuity and gauge invariance of the local
    sections;

    <item>(Reg4): the stencil of the local section.
  </itemize-minus>

  (b) If <math|<math-up|Ord><rsub|<around|(|<math-up|id>,s|)>><around|(|\<cal-C\>,S|)>>
  holds, then (P1) holds along <math|s>. The smeared moments agree by
  VIII.1.p. The mixed correlation of <math|\<pi\><around|(|v|)>> equals
  <math|S<around|(|v;\<cdot\>|)>> on <math|<math-up|Conf><rsub|n>>, and
  <math|t=0> off <math|<math-up|Conf><rsub|n>>. <em|Lean:>
  <hlink|<verbatim|regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25>,
  <hlink|<verbatim|zeroUp_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30>,
  <hlink|<verbatim|fromWilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L62-L67>
  and <hlink|<verbatim|wilsonLimit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56>.

  <strong|Lemma VIII.1.r (reconstruction, OPE and trace clauses).> Let
  <math|\<frak-F\>> be a final object and <math|Q> a reader for it. The
  conclusions concern <math|T<around|(|\<frak-F\>,Q|)>>.

  (a) The reconstruction in every phase implies (R1)\U(R15). Clause by
  clause:

  <\itemize-minus>
    <item>(R1): the reconstruction bridge assembles the internal domain,
    adjoint, spectral, covariance and locality properties into (W0)\U(W3).

    <item>(R2): faithfulness of the selected theory.

    <item>(R3): injectivity of the field-label inclusion.

    <item>(R4): the unit field of degree <math|0> is nonzero, and
    faithfulness applies to it.

    <item>(R5): the labels are covered by the derivative plan.

    <item>(R6): token representatives.

    <item>(R7), (R8): the phase decomposition.

    <item>(R9), (R10): permutation symmetry and smoothness of each state.

    <item>(R11): continuity of the characters, after moving a separated word
    into a time slab.

    <item>(R12): the barycentre identity of VIII.1.j.

    <item>(R13), (R14): holomorphy and the values at Euclidean points of the
    selected continuation.

    <item>(R15): the boundary values, together with the moment identity,
    which identifies the public vacuum expectations with the internal
    Wightman distributions.
  </itemize-minus>

  (b) The internal separated OPE implies (O1)\U(O2), after enumerating
  <math|I\<sqcup\>J> once.

  (c) Assume <math|\<frak-g\>> simple and the seven internal headline trace
  clauses. Then (T1)\U(T4) hold. Clause (T1) is the centered clause. For (T2)
  and (T3), the internal amplitude is <math|12*<around|(|d<rsub|2>/b<rsub|0>|)><rsup|2>*dim
  \<frak-g\>/\<pi\><rsup|4>=3*dim \<frak-g\>/\<pi\><rsup|4>>, and
  <math|G<rsub|\<Theta\>>> is by definition the internal Euclidean two-point
  function. For (T4), public and internal Wick profiles coincide; then apply
  the Euclidean Wick exclusion. The real part of a finite Wick profile has,
  for every <math|k\<in\>\<bbb-Z\>>, an expansion modulo
  <math|O<around|(|r<rsup|k>|)>> in the span of <math|r<rsup|a><around|(|log
  r|)><rsup|j>> with <math|a\<in\>\<bbb-Z\>> and <math|j\<in\>\<bbb-N\>>. No
  function with such an expansion modulo <math|O<around|(|1|)>> satisfies
  <math|r<rsup|8>*<around|(|log 1/r|)><rsup|2>*f<around|(|r|)>\<to\>A\<ne\>0>,
  since that would need the power <math|<around|(|log r|)><rsup|-2>>. Thus
  (T3), together with <math|A<rsub|\<frak-g\>>\<gtr\>0> from (T2), implies
  (T4). <em|Lean:> <hlink|<verbatim|publicReconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L79-L133>,
  <hlink|<verbatim|view_axioms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L102-L142>,
  <hlink|<verbatim|publicMoment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L144-L172>,
  <hlink|<verbatim|publicOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77>,
  <hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>
  and <hlink|<verbatim|euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>.
  <em|(proofs read, including the power-log exclusion)>

  <strong|Lemma VIII.1.s (contact distributions).> Let <math|\<frak-F\>> be a
  final object with contact devices <math|<math-ss|M>> satisfying the full
  contact resolution. For every state <math|s>, every <math|k> and every
  <math|a\<in\>\<bbb-F\><rsup|k>>, there is a continuous linear functional
  <math|\<cal-D\>> on <math|C<rsup|\<infty\>><rsub|c><around|(|<around|(|\<bbb-R\><rsup|4>|)><rsup|k>|)>>
  with <math|\<cal-D\><around|(|f|)>=<big|int>f*S<rsup|s><around|(|a;\<cdot\>|)>>
  whenever <math|<math-up|supp>f\<subset\><math-up|Conf><rsub|k>>, using the
  usual test-function topology. No uniqueness is asserted. <em|Proof sketch.>
  Apply the distribution clause of the resolution with:

  <\itemize-minus>
    <item>the identity embedding of <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|k>>;

    <item>the full collision group, centred at <math|0>;

    <item><math|B=min <around|(|1,<math-up|clearance><rsub|<math-ss|M>><around|(|<big|sum><rsub|i>d<rsub|i>|)>|)>>
    and <math|r=B/4>.
  </itemize-minus>

  The contact theorem supplies <math|\<cal-D\>>. On a separated test, the
  subtraction formula reduces to the original field word. Reading that word
  gives the correlation; off the support of the test both integrands vanish.
  <em|Lean:> <hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>.

  <subsection|4.5 The headline theorems><label|45-the-headline-theorems>

  <strong|Lemma VIII.1.t (detailed theorem).> This is VIII.1.2. <em|Proof
  sketch.> Apply VIII.1.o to obtain <math|\<cal-C\>>, the penalty and (D3).
  Regularity follows from VIII.1.q(a). For each <math|\<sigma\>>, unpack the
  data and conclude as follows:

  <\itemize-minus>
    <item>(P1) by VIII.1.q(b);

    <item>(P2) by VIII.1.r(a), from (Core);

    <item>(P3) by VIII.1.r(b);

    <item>(P4) by VIII.1.r(c);

    <item>(D2) by VIII.1.s;

    <item>(W0)\U(W3) for every phase by the reconstruction bridge.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>.

  <strong|Lemma VIII.1.u (public theorem).> This is VIII.1.1. <em|Proof
  sketch.> Apply VIII.1.t with <math|b=1>. Given <math|p>, let
  <math|\<sigma\>=<around|(|<math-up|id>,p|)>>, and let <math|\<tau\>> be the
  refinement produced. Take <math|q\<assign\>\<tau\><rsup|<math-up|v>>> and
  the hierarchy <math|T<around|(|\<frak-F\>,Q|)>>. Then
  <math|<around|(|\<sigma\>\<circ\>\<tau\>|)><rsup|<math-up|v>>=p\<circ\>q>,
  and the mesh part of <math|\<tau\>> plays no role because (P1) is proved
  along the full mesh sequence (VIII.1.d). <em|Lean:>
  <hlink|<verbatim|jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>
  and <hlink|<verbatim|Order.refine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40>.

  <strong|Lemma VIII.1.v (<math|S*U<around|(|2|)>>).> This is VIII.1.9.
  <em|Proof sketch.> The matrices

  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|i>|<cell|0>>|<row|<cell|0>|<cell|-i>>>>>,<space|2em>B=<matrix|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|-1>|<cell|0>>>>>,<space|2em>C=<matrix|<tformat|<table|<row|<cell|0>|<cell|i>>|<row|<cell|i>|<cell|0>>>>>
  </equation*>

  span <math|<with|math-font|Euler|s*u><around|(|2|)>> over <math|\<bbb-R\>>
  and satisfy <math|<around|[|A,B|]>=2*C>, <math|<around|[|B,C|]>=2*A>,
  <math|<around|[|C,A|]>=2*B>. If an ideal contains
  <math|a*A+b*B+c*C\<ne\>0>, a suitable operator
  <math|1+<tfrac|1|4><around|(|<math-up|ad><space|0.17em>A|)><rsup|2>>, or
  its cyclic counterpart, isolates a nonzero multiple of one basis vector.
  The bracket identities then put all three in the ideal. Apply VIII.1.u.
  <em|Lean:> <hlink|<verbatim|su2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L8-L10>
  and <hlink|<verbatim|su2Theory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ConcreteSU2.lean#L15-L18>.
  <em|(proof read, including simplicity)>

  <subsection|4.6 Endpoints filed here and not on the path of the main
  theorem><label|46-endpoints-filed-here-and-not-on-the-path-of-the-main-theorem>

  These separate results and alternative existence theorems are not inputs to
  the assembly above:

  <\itemize-minus>
    <item>the degree-four normalization <hlink|<verbatim|normalized_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63>,
    obtained by applying the normalization result to a separately constructed
    family;

    <item>the parity results <hlink|<verbatim|parityEndpoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/End.lean#L21-L30>
    and <hlink|<verbatim|low_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Parity/EvenLow.lean#L44-L49>:
    parity is retained by the degree-four normalization, and every odd
    perturbative coefficient of the finite-volume ledger vanishes at each
    field-degree horizon <math|d\<leqslant\>5> for simple <math|\<frak-g\>>
    (VII.6);

    <item>the contact endpoint <hlink|<verbatim|celestial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79>,
    built on <hlink|<verbatim|signed_placements>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers/Conclusion.lean#L20-L27>
    and <hlink|<verbatim|OPE.single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L57-L58>
    (VII.4);

    <item>the alternative ultraviolet endpoint
    <hlink|<verbatim|july>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164>.
  </itemize-minus>

  The volume-uniform ultraviolet bounds belong mathematically to
  III.12\UIII.15; the supporting reconstruction and symmetry lemmas belong to
  V.2\UV.3 and VI.1.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The assembly preserves the order of choices. A family fixed before
  <math|\<sigma\>> must support the coupling limits, continuum table and all
  later structures on one refinement. In particular, the fixed-volume
  ultraviolet convergence must concern this same family. Uniqueness of row
  limits then removes the mesh subsequence without replacing the final object
  or its point-limit data.

  The momentum-space Wick exclusion requires a further argument: every
  compactly supported relative-momentum test must be realizable as
  <math|<wide|\<cal-F\><rsub|+>*u|\<bar\>>\<cal-F\><rsub|+>*w>. Fourier
  surjectivity and an auxiliary transform of modulus one on the test support
  give that realization. Exponential integrability then permits passage to
  Euclidean Laplace transforms.

  The public theorem retains less than the detailed construction. Its Wilson
  limit concerns the mixed state, while its trace test concerns the selected
  phase. The Euclidean Wick exclusion follows from (T2)\U(T3); the detailed
  theorem also gives momentum-space and Maxwell relative-locality
  countertests. The low-energy and heat bounds are polynomial and imply no
  mass gap. Coupling limits, all-shapes OPE and sharp Gram allocations occur
  in (Goal) but are omitted from VIII.1.3. Neither independence of the volume
  subsequence nor agreement between different penalties or run choices is
  asserted.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|gauge
  group>|<cell|<hlink|<verbatim|GaugeGroup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25-L33>,
  <hlink|<verbatim|IsSimple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39-L45>>|<cell|<math|<around|(|m,G,\<frak-g\>|)>>,
  <math|\<frak-g\>> simple>>|<row|<cell|public Wilson
  family>|<cell|<hlink|<verbatim|wilsonFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20-L30>>|<cell|<math|\<cal-W\><around|(|\<cal-C\>|)>=<around|(|L<rsub|p>,D<rsub|N>,\<beta\><rsub|N,p>,h,\<cal-T\>,I<rsub|N,p>|)>>>>|<row|<cell|regularity>|<cell|<hlink|<verbatim|WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22>>|<cell|(Reg1)\U(Reg4)>>|<row|<cell|public
  hierarchy>|<cell|<hlink|<verbatim|hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27-L42>>|<cell|<math|T<around|(|\<frak-F\>,Q|)>>>>|<row|<cell|extraction
  order, refinement>|<cell|<hlink|<verbatim|Extraction.Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36>,
  <hlink|<verbatim|refine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40>>|<cell|<math|\<sigma\>=<around|(|\<sigma\><rsup|<math-up|m>>,\<sigma\><rsup|<math-up|v>>|)>>,
  <math|\<sigma\>\<circ\>\<tau\>>>>|<row|<cell|ordered
  limit>|<cell|<hlink|<verbatim|Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35>>|<cell|<math|<math-up|Ord><rsub|\<sigma\>><around|(|\<cal-C\>,S|)>>>>|<row|<cell|internal
  family, construction predicate>|<cell|<verbatim|Family>,
  <verbatim|Makes>>|<cell|<math|\<cal-C\>>, (D3)>>|<row|<cell|run, funding
  conditions>|<cell|<hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>,
  <hlink|<verbatim|fundedRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31>,
  <hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>>|<cell|<math|<math-ss|R><rsub|G,b>>,
  (Fd)>>|<row|<cell|ultraviolet endpoint>|<cell|<hlink|<verbatim|Jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149>>|<cell|(UV<math|<rsub|\<infty\>>>)>>|<row|<cell|positional
  convergence>|<cell|<hlink|<verbatim|PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36>>|<cell|(D5),
  <math|f<rsub|p,v>>>>|<row|<cell|full assembly
  package>|<cell|<hlink|<verbatim|Broad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L130-L148>>|<cell|(Goal)>>|<row|<cell|table>|<cell|<verbatim|Table>>|<cell|<math|S>,
  read as <math|S<rsup|s>>>>|<row|<cell|final
  object>|<cell|<hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>>|<cell|<math|\<frak-F\>>
  on <math|<around|(|\<cal-C\>,\<sigma\>,S|)>>>>|<row|<cell|reconstruction in
  every phase>|<cell|<hlink|<verbatim|Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>,
  <hlink|<verbatim|Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>>|<cell|<math|\<frak-L\>=<around|(|\<frak-W\><rsub|\<xi\>>|)><rsub|\<xi\>\<in\>X>>>>|<row|<cell|OPE
  reader>|<cell|<hlink|<verbatim|Orbits.Reader>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23>>|<cell|<math|Q>;
  <math|<around|(|<math-up|Ch><rsub|j>,O<rsub|j,\<kappa\>>,c<rsub|j,\<kappa\>>|)>>>>|<row|<cell|contact
  devices>|<cell|<hlink|<verbatim|Contacts.Devices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26>>|<cell|<math|<math-ss|M>>>>|<row|<cell|scaling
  sequence>|<cell|<hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>>|<cell|<math|\<Sigma\>=<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k>|)>>>>|<row|<cell|combined
  continuum properties>|<cell|<hlink|<verbatim|Independent.Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18-L34>>|<cell|(Core)>>|<row|<cell|first
  comparison, degree-four normalization>|<cell|<hlink|<verbatim|FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39>,
  <hlink|<verbatim|FourMeters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47>>|<cell|(D14),
  (D15)>>|<row|<cell|centered trace, its two-point
  function>|<cell|<hlink|<verbatim|TraceExtension.center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48>,
  <hlink|<verbatim|euclidean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53>>|<cell|<math|\<Theta\>>,
  <math|G<rsub|\<Theta\>>>>>|<row|<cell|trace
  amplitude>|<cell|<hlink|<verbatim|Trace.Verse.award>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41>>|<cell|<math|A<rsub|\<frak-g\>>=3*dim
  \<frak-g\>/\<pi\><rsup|4>>>>|<row|<cell|one-loop
  constants>|<cell|<hlink|<verbatim|Pert.Asymptotics.b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13>,
  <verbatim|Trace.Over.d2>>|<cell|<math|b<rsub|0>=11*C<rsub|\<frak-g\>>/<around|(|48*\<pi\><rsup|2>|)>>,
  <math|b<rsub|\<ast\>>=2*b<rsub|0>>, <math|d<rsub|2>=-b<rsub|0>/2>>>|<row|<cell|reference
  coupling>|<cell|<verbatim|Calendar.hatBeta>>|<cell|<math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+2*b<rsub|0>*log
  <around|(|1/a<rsub|m>|)>>>>|<row|<cell|penalty of the block-spin
  kernel>|<cell|<verbatim|KernelChoices.penalty>>|<cell|<math|b>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Numerical run conditions.> The thirteen funding conditions
    in Ÿ2 are specified by their roles. The exact inequalities for the frame
    and polynomial schedules, delays, pacing, thermal estimates and weight
    tableau must be supplied from III.15. The numerical proofs are inputs.

    <item><strong|Renormalization comparison.> VIII.1.c uses the fixed-volume
    Cauchy estimate from III.12. The underlying renormalization-step estimate
    is an input; the dense-grid, Taylor and smearing arguments are given in
    VIII.1.c.

    <item><strong|Normalized trace schemes.> VIII.1.h retains the existence
    and universal quantifiers of the stress-comparison theorem. The
    alignment, leading-derivative and scalar normalization conditions require
    the definitions and notation of VII.3. No comparison for an arbitrary
    renormalization prescription follows.

    <item><strong|Upstream reconstruction.> The phase selection and selected
    reconstruction are produced inside the final-object construction. The
    every-phase theorem is an input from V.3; its low-energy, decay,
    irreducibility and boundary arguments remain inputs from V.3.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.6 Scaling variants and fixed-field
  estimates (notes)|VII-6.tm>|<hlink|Part
  VIII|../units.tm#part-viii-assembly-of-the-main-theorem><ym-nav-sep><hlink|Unit
  outline|../units/VIII-1.tm>|>
</body>

<\initial>
  <\collection>
    <associate|html-title|VIII.1. Assembly of the main theorem \V detailed
    notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|8>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|11>>
    <associate|41-the-run-and-the-ultraviolet-endpoint|<tuple|4.1|11>>
    <associate|42-the-data-at-one-extraction-order|<tuple|4.2|12>>
    <associate|43-the-internal-headline|<tuple|4.3|15>>
    <associate|44-translation-to-the-public-statement|<tuple|4.4|17>>
    <associate|45-the-headline-theorems|<tuple|4.5|19>>
    <associate|46-endpoints-filed-here-and-not-on-the-path-of-the-main-theorem|<tuple|4.6|20>>
    <associate|5-where-the-difficulty-lies|<tuple|5|20>>
    <associate|6-notation|<tuple|6|21>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|20>>
    <associate|auto-11|<tuple|5|20>>
    <associate|auto-12|<tuple|6|21>>
    <associate|auto-13|<tuple|7|21>>
    <associate|auto-2|<tuple|2|8>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|4.1|11>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|15>>
    <associate|auto-8|<tuple|4.4|17>>
    <associate|auto-9|<tuple|4.5|19>>
    <associate|viii1-assembly-of-the-main-theorem--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The run and the ultraviolet endpoint
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The data at one extraction order
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 The internal headline
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Translation to the public statement
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The headline theorems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Endpoints filed here and not on the
      path of the main theorem <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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