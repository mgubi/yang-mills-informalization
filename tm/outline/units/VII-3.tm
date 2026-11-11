<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.2 The trace of the stress tensor and
  the trace anomaly|VII-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-3.tm>|<hlink|VII.4 Operator product expansion and
  contact extensions \<rightarrow\>|VII-4.tm>>

  <ym-title|VII.3. Free Wick polynomials and reflected Gram
  positivity><label|vii3-free-wick-polynomials-and-reflected-gram-positivity>

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

  <em|Part VII \V Identification as Yang\UMills.>

  Establishes positivity and detection for free Wick polynomials and explains
  their role in the finite-profile comparison.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VII-3.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VII.2|VII-2.tm> <ym-middot> <hlink|Next:
  VII.4 \<rightarrow\>|VII-4.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> The declaration allocation here covers the free
  algebra and Gram form. The finite-profile exclusion is also explained
  below, using the trace law of <hlink|VII.2|VII-2.tm>; its concluding
  declarations are allocated to VII.2 and the public bridge to
  <hlink|VIII.1|VIII-1.tm>.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
    <hlink|<verbatim|YM/Extra/FREE_DETECTOR_ALGEBRA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA>,
    <hlink|<verbatim|YM/Pert/Position>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position>,
    <hlink|<verbatim|YM/Pert/Rigid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid>,
    <hlink|<verbatim|YM/Pert/Lattice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice>,
    and a few declarations of <hlink|<verbatim|YM/Push/LOOP_COEFFICIENT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT>.
    Proposition VII.3.7 is in <hlink|<verbatim|YM/TraceExtension/Wick>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick>
    and <hlink|<verbatim|TraceBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean>.
    <strong|Size:> about 3,800 declaration lines on the main dependency path
    in the listed folders, excluding the trace-exclusion files.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  All points lie in <math|\<bbb-R\><rsup|4>>. Let <math|\<frak-g\>> have its
  invariant inner product; <math|\<frak-g\>=0> is allowed in VII.3.1\U5. Free
  moments are Wick-ordered Maxwell correlations with covariance built from
  <math|\<Gamma\><around|(|z|)>=<around|(|4*\<pi\><rsup|2><around|\||z|\|><rsup|2>|)><rsup|-1>>.
  Conjugation bars conjugate polynomial coefficients, and orthogonal
  transformations act on every tensor index. For <math|x\<ne\>y>, set
  <math|<around|\<langle\>|P,Q|\<rangle\>><rsub|x,y>=<around|\<langle\>|P<around|(|x|)>*<around|(|\<cal-R\><rsub|x-y>*<wide|Q|\<bar\>>|)><around|(|y|)>|\<rangle\>><rsub|0>>.

  <strong|Proposition VII.3.1 (strict positivity).> For every
  <math|x\<ne\>y>, this pairing on <math|\<cal-W\>> is Hermitian, with real
  self-pairings positive exactly for <math|P\<ne\>0>. For every finite
  complex-linearly independent family <math|<around|(|V<rsub|i>|)>>,
  <math|<around|(|<around|\<langle\>|V<rsub|j>,V<rsub|i>|\<rangle\>><rsub|x,y>|)><rsub|i*j>>
  is positive definite, without degree restriction. <em|Status:> theorem;
  only strict positivity is used downstream. <em|Lean:>
  <hlink|<verbatim|reflected_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53>,
  <hlink|<verbatim|reflected_symm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L57-L76>,
  <hlink|<verbatim|reflected_pd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L80-L97>.

  <strong|Proposition VII.3.2 (tower Gram form).> For <math|n\<geqslant\>0>,
  <math|z=x-y\<ne\>0>, <math|B<rsub|z><around|(|p,q|)>=<around|\<langle\>|\<ell\><rsub|p>,\<ell\><rsub|q>|\<rangle\>><rsub|x,y>>
  is symmetric positive definite on <math|<math-up|Tow><rsub|n>>. A
  block-unitriangular automorphism <math|\<sigma\><rsub|z>> satisfies, for
  all <math|p,q>,

  <\equation*>
    B<rsub|z><around|(|\<sigma\><rsub|z>*p,\<sigma\><rsub|z>*q|)>=<big|sum><rsub|j\<less\>n><frac|<around|(|j+1|)>*<around|(|j+2|)>*2<rsup|j>|\<pi\><rsup|2><around|\||z|\|><rsup|2*j+4>>*<around|\<langle\>|p<rsub|j>,q<rsub|j>|\<rangle\>>.
  </equation*>

  For any <math|b<rsub|1>,\<ldots\>,b<rsub|N>\<in\><math-up|Tow><rsub|n>>
  with <math|B<rsub|z><around|(|b<rsub|i>,b<rsub|k>|)>=d<rsub|i>*\<delta\><rsub|i*k>>,
  <math|d<rsub|i>\<in\>\<bbb-R\>>, let <math|\<Phi\><rsub|b>:\<bbb-C\><around|[|Y<rsub|1>,\<ldots\>,Y<rsub|N>|]>\<to\>\<cal-W\>>
  be the algebra homomorphism with <math|\<Phi\><rsub|b><around|(|Y<rsub|i>|)>=\<ell\><rsub|b<rsub|i>>>.
  For all complex polynomials <math|p,q>,

  <\equation*>
    <around|\<langle\>|\<Phi\><rsub|b>*p,\<Phi\><rsub|b>*q|\<rangle\>><rsub|x,y>=<big|sum><rsub|\<alpha\>>p<rsub|\<alpha\>><wide|q<rsub|\<alpha\>>|\<bar\>><big|prod><rsub|i>\<alpha\><rsub|i>!d<rsub|i><rsup|\<alpha\><rsub|i>>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|shiftAll_gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133>,
  <hlink|<verbatim|towerB_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154>,
  <hlink|<verbatim|duplex_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116>.

  <strong|Proposition VII.3.3 (Wick recursion).> For every
  <math|n\<geqslant\>1>, <math|x\<in\><math-up|Conf><rsub|n>>,
  <math|W\<in\>\<cal-W\><rsup|n>>, insertion <math|i> and slot <math|s>,

  <\equation*>
    <around|\<langle\>|\<cdots\>*<around|(|W<rsub|i>*X<rsub|s>|)><around|(|x<rsub|i>|)>*\<cdots\>|\<rangle\>><rsub|0>=<big|sum><rsub|k\<ne\>i><around|\<langle\>|\<cdots\>*W<rsub|i><around|(|x<rsub|i>|)>*\<cdots\>*<around|(|\<partial\><rsub|s><rsup|x<rsub|i>,x<rsub|k>>*W<rsub|k>|)><around|(|x<rsub|k>|)>*\<cdots\>|\<rangle\>><rsub|0>,
  </equation*>

  where <math|\<partial\><rsub|s><rsup|y,y<rprime|'>>> is the complex-linear
  derivation with <math|\<partial\><rsub|s><rsup|y,y<rprime|'>>*X<rsub|t>=C<rsub|s*t>*<around|(|y-y<rprime|'>|)>>.
  For every <math|n\<geqslant\>0> and <math|x\<in\><math-up|Conf><rsub|n>>,
  this recursion and <math|T<around|(|1,\<ldots\>,1|)>=1> uniquely determine
  the complex-multilinear free moment <math|T>. Moments are
  <math|O<around|(|4|)>>-covariant; conjugating all polynomials conjugates
  their moment. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Pair.remove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108>,
  <hlink|<verbatim|byAnnihilators>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L24-L62>.

  <strong|Proposition VII.3.4 (faithfulness).> For every
  <math|d\<geqslant\>0>, <math|P\<in\><math-up|sh><rsub|d>> vanishes if all
  its correlations with arbitrary finite families
  <math|Q<rsub|i>\<in\><math-up|sh><rsub|d<rsub|i>>>,
  <math|d<rsub|i>\<geqslant\>0>, at distinct points vanish. Thus null labels
  are exactly <math|ker \<omega\><rsub|d>>, and <math|\<omega\><rsub|d>>
  induces <math|E<rsub|d>\<cong\><math-up|sh><rsub|d>>, with injection
  <math|\<varpi\><rsub|d>:E<rsub|d>\<to\>\<cal-W\>>. For every basis
  <math|<around|(|b<rsub|i>|)>> of <math|E<rsub|d>> and <math|x\<ne\>y>,
  <math|v\<mapsto\><around|(|<around|\<langle\>|\<varpi\><rsub|d>*v<around|(|x|)>*\<varpi\><rsub|d>*b<rsub|i><around|(|y|)>|\<rangle\>><rsub|0>|)><rsub|i>>
  is injective. For any Wilson family, any table on its register, and any
  pair with <math|x<rsub|\<mu\>>\<ne\>y<rsub|\<mu\>>> in every coordinate,
  these readings give a column system: a conjugation-fixed complex basis with
  unit first, from frame labels with recorded weight and length. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>,
  <hlink|<verbatim|exactField>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L64-L65>,
  <hlink|<verbatim|scanner_inj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L103-L115>,
  <hlink|<verbatim|vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L25-L38>.

  <strong|Proposition VII.3.5 (covariance).> For every gauge group above,
  free-table correlations respect signed coordinate permutations and
  conjugation. For every <math|d>, <math|O<around|(|4|)>> acts
  complex-linearly on <math|E<rsub|d>>, with
  <math|\<varpi\><rsub|d>*<around|(|R*v|)>=R*\<varpi\><rsub|d><around|(|v|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|table_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91>,
  <hlink|<verbatim|rideO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L106-L110>.

  <strong|Proposition VII.3.6 (rigidity and position equations).> A buffer
  <math|B\<in\><math-up|Buf><rsub|d>> is complex-linear on <math|E<rsub|d>>,
  kills <math|1>, preserves every lower-degree subspace, and commutes with
  conjugation and signed permutations. Buffers form a finite-dimensional real
  space. A buffer is stationary when inserting <math|B> successively in every
  slot gives total free correlation zero for every field tuple and
  distinct-point configuration.

  (a) If <math|\<frak-g\>> is simple nonabelian, every stationary degree-four
  buffer vanishes. Indeed <math|B=0> follows from
  <math|<around|\<langle\>|B*v|\<rangle\>><rsub|0>=0> and
  <math|<around|\<langle\>|<around|(|B*v|)><around|(|e|)>*w<around|(|0|)>|\<rangle\>><rsub|0>+<around|\<langle\>|v<around|(|e|)>*<around|(|B*w|)><around|(|0|)>|\<rangle\>><rsub|0>=0>
  for all <math|v,w\<in\>E<rsub|4>>, where <math|e> is axis <math|0>'s unit
  vector. Also <math|<math-up|Buf><rsub|d>=0> for <math|d\<less\>4>.

  (b) For any gauge group, if stationary degree-<math|d> buffers vanish,
  finitely many sections <math|<around|(|r<rsub|i>,p<rsub|i>,f<rsub|i>|)>>,
  <math|r<rsub|i>\<geqslant\>0>, <math|p<rsub|i>\<in\>E<rsub|d><rsup|r<rsub|i>>>,
  <math|f<rsub|i>\<in\>C<rsub|c><rsup|\<infty\>><around|(|<math-up|Conf><rsub|r<rsub|i>>;\<bbb-C\>|)>>,
  and real-linear <math|g:\<bbb-R\><rsup|k>\<to\>\<bbb-R\><rsup|dim<rsub|\<bbb-R\>><math-up|Buf><rsub|d>>>
  give the position chart <math|<math-up|chart><rsub|Q><around|(|w,B|)>=g*<around|(|<math-up|Re><space|0.17em>w<rsub|i>*<around|(|<around|(|1+B|)>*p<rsub|i>|)>|)><rsub|i>>,
  where <math|w<rsub|i>> are complex-multilinear forms. At the free tested
  data <math|w<rsub|Q>> and <math|B=0>, its buffer derivative is the
  isomorphism

  <\equation*>
    B\<longmapsto\>g<around*|(|<math-up|Re><big|int>f<rsub|i><around|(|x|)>*<big|sum><rsub|j><around|\<langle\>|p<rsub|i*1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|B*p<rsub|i*j>|)><around|(|x<rsub|j>|)>*\<cdots\>|\<rangle\>><rsub|0>*<space|0.17em>d*x|)><rsub|i>.
  </equation*>

  Such systems are called clean and square.

  (c) Assume simple nonabelian <math|\<frak-g\>>, a final Wilson record with
  table <math|S>, and a scaling sequence <math|X=<around|(|r<rsub|k>,U<rsub|k,d>,\<xi\><rsub|k>|)>>:
  <math|r<rsub|k>*\<downarrow\>*0> strictly, <math|\<xi\><rsub|k>\<gtr\>0>,
  and complex-linear isomorphisms <math|U<rsub|k,d>:E<rsub|d>\<to\>F<rsub|d><around|(|S|)>>.
  Assume VI.2's leading comparison and eventual frame compatibility with
  unit, conjugation, signed permutations and inclusions. Fix a clean square
  degree-four system <math|Q> and <math|\<varphi\>> satisfying: a local
  real-analytic solution of <math|<math-up|chart><rsub|Q><around|(|w,\<varphi\><around|(|w|)>|)>=<math-up|chart><rsub|Q><around|(|w<rsub|Q>,0|)>>,
  with <math|\<varphi\><around|(|w<rsub|Q>|)>=0> and local uniqueness;
  <math|\<pi\><rsub|Q><rsup|<around|(|0|)>><around|(|L,k|)>\<to\>w<rsub|Q>>
  for every integer <math|L\<geqslant\>2>; for every <math|L\<geqslant\>2>
  and <math|p,j\<geqslant\>0>, eventually all order-<math|j> coupling
  derivatives at zero of the position equations on the order-<math|p> lattice
  truncation and its image under <math|\<varphi\>> equal those of the
  constant free value; and buffers <math|A<rsub|k>\<to\>0> with invertible
  <math|1+A<rsub|k>>, eventually solving the equations and satisfying the
  displayed comparison below with <math|B<rsub|k>> replaced by
  <math|A<rsub|k>>, for every clean degree-four <math|R> and integer
  <math|L\<geqslant\>2>.

  Then <math|B<rsub|k>=\<varphi\><around|(|m<rsub|Q><around|(|k|)>|)>\<to\>0>;
  eventually <math|1+B<rsub|k>> is invertible and
  <math|U<rsub|k,4>*<around|(|1+B<rsub|k>|)>> solves <math|Q> exactly,
  respects unit, conjugation, signed permutations and
  degree-<math|\<leqslant\>3> inclusions, and

  <\equation*>
    m<rsub|R><rsup|B<rsub|k>><around|(|k|)>-<math-up|chart><rsub|R><around*|(|\<pi\><rsub|R><rsup|<around|(|0|)>><around|(|L,k|)>,\<varphi\><around|(|\<pi\><rsub|Q><rsup|<around|(|0|)>><around|(|L,k|)>|)>|)>\<to\>0.
  </equation*>

  <em|Status:> (a,b) theorems; (c) conditional theorem, hypotheses discharged
  in VI.2 and VIII.1. <em|Lean:> <hlink|<verbatim|Rigid.frozen_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113>,
  <hlink|<verbatim|square_of_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147>,
  <hlink|<verbatim|residency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43>.

  <strong|Proposition VII.3.7 (finite Wick profiles).> A mode has mass
  <math|<math-ss|m>\<geqslant\>0>, integers <math|j,q\<geqslant\>0>,
  continuous <math|h:\<bbb-R\><rsup|3>\<to\>\<bbb-R\>> with
  <math|h*<around|(|t*p|)>=t<rsup|j>*h<around|(|p|)>> for every
  <math|t\<gtr\>0> and <math|p>. Its kernel, for <math|r\<gtr\>0>, is

  <\equation*>
    K<rsub|<math-ss|m>,q,h><around|(|r|)>=<big|int><rsub|\<bbb-R\><rsup|3>><frac|E<rsup|q>*h<around|(|p|)>*e<rsup|-r*E>|2*E>*<space|0.17em>d*p,<space|2em>E=<sqrt|<math-ss|m><rsup|2>+<around|\||p|\|><rsup|2>>.
  </equation*>

  A Wick profile is a finite complex linear combination of finite products of
  these kernels, including empty products. If
  <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A\<gtr\>0>
  as <math|r\<to\>0<rsup|+>>, every profile <math|W> differs from
  <math|G<rsub|\<Theta\>>> somewhere in every
  <math|<around|(|0,\<delta\>|)>>, <math|\<delta\>\<gtr\>0>. In the selected
  reconstructed theory, every corresponding finite sum of mass-shell
  contractions differs from the Wightman two-point function on some Schwartz
  product <math|<wide|f|\<bar\>>\<otimes\>g> with compactly supported
  <math|<wide|<wide|f|^>|\<bar\>><wide|g|^>>, using positive-sign Fourier
  transforms. Contractions test this product at sums of positive-energy
  on-shell momenta, with densities <math|E<rsup|q>*h/<around|(|2*E|)>>.
  <em|Status:> theorem, assigned to VII.2 and VIII.1; VII.2 supplies
  <math|A=3*dim \<frak-g\>/\<pi\><rsup|4>>. <em|Lean:>
  <hlink|<verbatim|Wick.euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>,
  <hlink|<verbatim|Wick.polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>III.16: Maxwell kernels, jets and response identity; IV.1: tables,
    quotient fields and columns.

    <item>VI.1, VI.2: scaling sequences, leading Maxwell comparison and
    degree-four basis; VII.1: order-zero lattice convergence; VIII.1:
    implicit-position conditions.

    <item>VII.2: trace asymptotic and mode expansions; V.3: positive-energy
    spectral representation; I.1: Wilson lattice action.

    <item>Wick's theorem, Hobson's formula, Maxwell inversion covariance,
    finite-dimensional duality and the analytic implicit function theorem.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Kelvin inversion and translation diagonalize the reflected jet covariance.
  Wick recursion extends positivity to polynomials, detecting null labels.
  Degree-four rigidity then supplies finite position equations.
  Independently, finite Wick profiles have power-log expansions incompatible
  with the trace's inverse-logarithmic leading term.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Hobson's formula identifies multipole fields with Kelvin
    transforms. Translating at the inverted separation cancels lower Taylor
    coefficients and gives positive Gram pivots.
    <hlink|<verbatim|reply_kelvin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L111-L113>,
    <hlink|<verbatim|shiftAll_gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133>.

    <item>Wick recursion gives factorial monomial norms; every polynomial
    lies in a finite tower. Reflected self-tests then prove faithfulness and
    injectivity. <hlink|<verbatim|duplex_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116>,
    <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>.

    <item>In the 22-dimensional degree-four basis, stationarity forces
    weighted antisymmetry; signed permutations force symmetry or zero. Finite
    test functionals detect all buffers, giving invertible linearization.
    <hlink|<verbatim|coeff_barren>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L90-L105>,
    <hlink|<verbatim|square_of_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147>.

    <item>Local implicit uniqueness identifies <math|B<rsub|k>> with
    <math|A<rsub|k>> eventually, transferring exact position equations and
    leading comparison. <hlink|<verbatim|residency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43>.

    <item>At finite regulator, normalized Gaussian perturbative expectations
    define lattice profiles; separate imaginary Gaussian averages within
    insertions implement Wick subtraction. Their tested Riemann sums give the
    lattice readings. <hlink|<verbatim|Full.profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56>,
    <hlink|<verbatim|Full.column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41>.

    <item>Mode expansions have integer powers and nonnegative logarithmic
    powers. Dominance along <math|r=2<rsup|-n>> excludes the trace law;
    spectral damping transfers tested Wightman equality to Euclidean
    equality. <hlink|<verbatim|Wick.no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>,
    <hlink|<verbatim|Wick.polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Simultaneous diagonalization depends on Taylor normalization and
  ordered-index contractions. The position comparison is leading-order only.
  Non-freeness excludes finite profiles, leaving continuous-mass generalized
  free fields and infinite Wick expansions outside its scope.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|<math-up|Conf><rsub|n>>: distinct-point configurations;
  <math|<math-up|Sol><rsub|j>>: real <math|\<frak-g\>>-valued homogeneous
  degree-<math|j> 2-forms satisfying <math|d*S=\<delta\>*S=0>;
  <math|<math-up|Tow><rsub|n>=<big|oplus><rsub|j\<less\>n><math-up|Sol><rsub|j>>;
  <math|\<cal-W\>=\<bbb-C\><around|[|X<rsub|s>|]>>: polynomials in basis
  coordinates <math|s=<around|(|j,a|)>> of on-shell Taylor coefficients.
  <math|\<ell\><rsub|p><around|(|A|)>=<big|sum><rsub|j><around|\<langle\>|p<rsub|j>,A<rsub|j>|\<rangle\>>>,
  using Taylor coefficients <math|<around|(|j!|)><rsup|-1>*D<rsup|j>> and
  summing over all ordered form and derivative indices, without a factor
  <math|1/2>; <math|\<cal-R\><rsub|z>>: reflection in
  <math|z<rsup|\<perp\>>>; <math|C<rsub|s*t>>: jet covariance.
  <math|\<omega\><rsub|d>>: on-shell evaluation of adjoint-invariant
  radial-potential labels of weight <math|\<leqslant\>d>, with order-<math|j>
  slots weighted <math|j+2>; <math|<math-up|sh><rsub|d>=<math-up|im>\<omega\><rsub|d>>;
  <math|E<rsub|d>>: free quotient. <math|m<rsub|Q>>, <math|w<rsub|Q>>,
  <math|\<pi\><rsub|Q><rsup|<around|(|0|)>>>: tested rescaled correlations in
  <math|U<rsub|k,4>>, free readings, and order-zero lattice readings at
  spacing <math|L<rsup|-k>>, respectively; <math|m<rsub|R><rsup|B>>: measured
  readings in frames <math|U<rsub|k,4>*<around|(|1+B|)>>;
  <math|<math-up|chart><rsub|Q>>: tested readings after <math|1+B>.
  <math|G<rsub|\<Theta\>><around|(|r|)>>: centered stress-tensor trace
  two-point function in the selected phase at
  <math|\<mp\><around|(|r/2|)>*e<rsub|<math-up|t>>>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  An intrinsic characterization of <math|<math-up|sh><rsub|d>> needs
  surjectivity. Interacting rank estimates belong to III.11 and III.12;
  continuum Wick subtraction to VII.1. Further Maxwell-Fock embedding
  exclusions are outside VII.3.7.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VII-3.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|IV.1|IV-1.tm>, <hlink|VI.2|VI-2.tm>, <hlink|VI.1|VI-1.tm>,
  <hlink|II.1|II-1.tm>.

  <strong|Referenced by:> <hlink|VII.1|VII-1.tm>, <hlink|VIII.1|VIII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 3,325 attributed lines; 678 line-counted
  declarations; 798 assigned declaration names. Of the assigned names, 769
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Extra/FREE_DETECTOR_ALGEBRA/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA>
    \V 2,135 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Lattice/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice>
    \V 599 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Position/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position>,
    with <hlink|<verbatim|YM/Pert/Rigid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid>
    \V 541 lines.

    <item>work package <hlink|<verbatim|YM/Push/LOOP_COEFFICIENT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT>
    \V 50 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|traceTwo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149>

    <item><hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158>

    <item><hlink|<verbatim|Mode.kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L159-L161>

    <item><hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164>

    <item><hlink|<verbatim|wickProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166>

    <item><hlink|<verbatim|Hierarchy.TraceTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175>

    <item><hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>

    <item><hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>

    <item><hlink|<verbatim|shellSector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64>

    <item><hlink|<verbatim|ProbeFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L67-L72>

    <item><hlink|<verbatim|residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L84-L85>

    <item><hlink|<verbatim|(freeTable F).Field
    d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>

    <item><hlink|<verbatim|labeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L29-L69>

    <item><hlink|<verbatim|frameRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L71-L83>

    <item><hlink|<verbatim|faceTest_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L96-L99>

    <item><hlink|<verbatim|solO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Covariance.lean#L159-L163>

    <item><hlink|<verbatim|reply>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L24>

    <item><hlink|<verbatim|replyTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L28-L31>

    <item><hlink|<verbatim|aligned_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L104-L109>

    <item><hlink|<verbatim|join>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L28>

    <item><hlink|<verbatim|aligned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L49-L52>

    <item><hlink|<verbatim|duplex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L54>

    <item><hlink|<verbatim|join_crash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L60-L66>

    <item><hlink|<verbatim|aligned_one_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L76-L79>

    <item><hlink|<verbatim|aligned_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L81-L84>

    <item><hlink|<verbatim|crash_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L88-L102>

    <item><hlink|<verbatim|face>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Forms.lean#L103>

    <item><hlink|<verbatim|wick_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L111-L137>

    <item><hlink|<verbatim|wick_rotate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L81-L101>

    <item><hlink|<verbatim|RStage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L18-L27>

    <item><hlink|<verbatim|recorded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L41-L49>

    <item><hlink|<verbatim|freeze_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L109-L119>

    <item><hlink|<verbatim|rr>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L25>

    <item><hlink|<verbatim|radial_curl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L28-L44>

    <item><hlink|<verbatim|strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L46>

    <item><hlink|<verbatim|strength_sign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L51-L55>

    <item><hlink|<verbatim|divP_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L59-L77>

    <item><hlink|<verbatim|curl_kelvin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L82-L109>

    <item><hlink|<verbatim|radial_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L43-L46>

    <item><hlink|<verbatim|observe_rot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L56>

    <item><hlink|<verbatim|observe_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L58>

    <item><hlink|<verbatim|inversePoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L110>

    <item><hlink|<verbatim|reply_radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L112-L122>

    <item><hlink|<verbatim|leg_cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L156-L160>

    <item><hlink|<verbatim|Match.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Match.lean>

    <item><hlink|<verbatim|Occurrences.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Occurrences.lean>

    <item><hlink|<verbatim|newLeg_below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L105-L111>

    <item><hlink|<verbatim|newLeg_diag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L113-L121>

    <item><hlink|<verbatim|shiftAll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L123-L124>

    <item><hlink|<verbatim|shiftAll_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L135-L141>

    <item><hlink|<verbatim|shiftDual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L143-L146>

    <item><hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L24>

    <item><hlink|<verbatim|price_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L25>

    <item><hlink|<verbatim|scan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L29-L32>

    <item><hlink|<verbatim|scan_sym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L37-L47>

    <item><hlink|<verbatim|slide_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L49-L57>

    <item><hlink|<verbatim|slide_below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L59-L60>

    <item><hlink|<verbatim|slide_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L62-L67>

    <item><hlink|<verbatim|ProbeTower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L69>

    <item><hlink|<verbatim|towerB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L71-L77>

    <item><hlink|<verbatim|towerB_sym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L90-L94>

    <item><hlink|<verbatim|newLeg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L98-L99>

    <item><hlink|<verbatim|tally>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L41>

    <item><hlink|<verbatim|tally_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L44-L52>

    <item><hlink|<verbatim|aligned_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L60-L85>

    <item><hlink|<verbatim|bar_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L90-L95>

    <item><hlink|<verbatim|sector_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L25-L26>

    <item><hlink|<verbatim|sector_rot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L27-L28>

    <item><hlink|<verbatim|point_probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L31-L36>

    <item><hlink|<verbatim|free_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L58-L59>

    <item><hlink|<verbatim|writes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L70-L71>

    <item><hlink|<verbatim|ride>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L99-L101>

    <item><hlink|<verbatim|Pair.extractVar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L25-L26>

    <item><hlink|<verbatim|Pair.remove_mon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L64-L86>

    <item><hlink|<verbatim|code>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L16-L23>

    <item><hlink|<verbatim|encode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L25>

    <item><hlink|<verbatim|from_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L37-L46>

    <item><hlink|<verbatim|crash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L81>

    <item><hlink|<verbatim|crash_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L83-L94>

    <item><hlink|<verbatim|crash_relation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L96-L100>

    <item><hlink|<verbatim|signal_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L135-L139>

    <item><hlink|<verbatim|signal_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L141-L147>

    <item><hlink|<verbatim|shifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L20-L21>

    <item><hlink|<verbatim|fields_shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L27-L32>

    <item><hlink|<verbatim|invert_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L40-L56>

    <item><hlink|<verbatim|signal_kelvin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L68-L81>

    <item><hlink|<verbatim|Sol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L115>

    <item><hlink|<verbatim|Sol.harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L129>

    <item><hlink|<verbatim|Sol.freeze>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L140-L159>

    <item><hlink|<verbatim|Sol.freeze_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L164-L172>

    <item><hlink|<verbatim|barPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L46>

    <item><hlink|<verbatim|pullSol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L54-L55>

    <item><hlink|<verbatim|digit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L77>

    <item><hlink|<verbatim|digit_coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L95-L96>

    <item><hlink|<verbatim|towards>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L104-L113>

    <item><hlink|<verbatim|field_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L118-L119>

    <item><hlink|<verbatim|vane_possible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L41-L42>

    <item><hlink|<verbatim|upright>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L20-L29>

    <item><hlink|<verbatim|script_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L38-L44>

    <item><hlink|<verbatim|Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>

    <item><hlink|<verbatim|Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L22>

    <item><hlink|<verbatim|WickPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24>

    <item><hlink|<verbatim|observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>

    <item><hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>

    <item><hlink|<verbatim|onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>

    <item><hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>

    <item><hlink|<verbatim|Wick.entry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24>

    <item><hlink|<verbatim|Headline.TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>

    <item><hlink|<verbatim|FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39>

    <item><hlink|<verbatim|firstTarget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81>

    <item><hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46>

    <item><hlink|<verbatim|Full.amplitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L87>

    <item><hlink|<verbatim|Orb.FP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/GaugeFix.lean#L94>

    <item><hlink|<verbatim|Orb.data>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31>

    <item><hlink|<verbatim|Orb.weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61>

    <item><hlink|<verbatim|Orb.expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L74>

    <item><hlink|<verbatim|Orb.normalize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L85>

    <item><hlink|<verbatim|Orb.finite_agreement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Together.lean#L58-L61>

    <item><hlink|<verbatim|measured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L15>

    <item><hlink|<verbatim|measured_tends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19>

    <item><hlink|<verbatim|testedMean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L42>

    <item><hlink|<verbatim|white>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104>

    <item><hlink|<verbatim|square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L106>

    <item><hlink|<verbatim|Position.E>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L11>

    <item><hlink|<verbatim|buffers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L31-L40>

    <item><hlink|<verbatim|motor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L45>

    <item><hlink|<verbatim|Conditions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59>

    <item><hlink|<verbatim|chart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L69>

    <item><hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98>

    <item><hlink|<verbatim|BoardAttains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34>

    <item><hlink|<verbatim|calibrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43>

    <item><hlink|<verbatim|Crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48>

    <item><hlink|<verbatim|credible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52>

    <item><hlink|<verbatim|Frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L102>

    <item><hlink|<verbatim|detected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L103-L112>

    <item><hlink|<verbatim|finite_detectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L115-L129>

    <item><hlink|<verbatim|visible_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L19-L20>

    <item><hlink|<verbatim|feedback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L58>

    <item><hlink|<verbatim|chart_deriv_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L82-L93>

    <item><hlink|<verbatim|feedback_twist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L97-L100>

    <item><hlink|<verbatim|square_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15>

    <item><hlink|<verbatim|Resident>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L23-L30>

    <item><hlink|<verbatim|FourMeters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47>

    <item><hlink|<verbatim|four_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53>

    <item><hlink|<verbatim|normalized_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63>

    <item><hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L29-L30>

    <item><hlink|<verbatim|adjusted_own>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L39-L46>

    <item><hlink|<verbatim|adjusted_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L47-L49>

    <item><hlink|<verbatim|motor_small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L55-L61>

    <item><hlink|<verbatim|readJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L22>

    <item><hlink|<verbatim|Reports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L29-L33>

    <item><hlink|<verbatim|Reports.of_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L34-L35>

    <item><hlink|<verbatim|exactMean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L19>

    <item><hlink|<verbatim|exact_tape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L42-L53>

    <item><hlink|<verbatim|Rig.zerothProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69>

    <item><hlink|<verbatim|Rigid.first_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L114-L117>

    <item><hlink|<verbatim|big_weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L30-L36>

    <item><hlink|<verbatim|rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L37>

    <item><hlink|<verbatim|rate_ne>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L39>

    <item><hlink|<verbatim|common_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L48-L49>

    <item><hlink|<verbatim|price_tag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L50-L52>

    <item><hlink|<verbatim|backwards>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L59-L69>

    <item><hlink|<verbatim|stationery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L71-L72>

    <item><hlink|<verbatim|alone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L73-L81>

    <item><hlink|<verbatim|cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L82-L89>

    <item><hlink|<verbatim|havePath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Chess.lean#L29-L31>

    <item><hlink|<verbatim|star>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L15>

    <item><hlink|<verbatim|draw_mask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L33-L34>

    <item><hlink|<verbatim|wearer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L74-L80>

    <item><hlink|<verbatim|coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L59>

    <item><hlink|<verbatim|orient_transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L60-L62>

    <item><hlink|<verbatim|unpaint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L63-L67>

    <item><hlink|<verbatim|reflect_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L69-L84>

    <item><hlink|<verbatim|EuclideanAsymptotic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75>

    <item><hlink|<verbatim|waveTest_product>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35>

    <item><hlink|<verbatim|board>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L23>

    <item><hlink|<verbatim|AtOrder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L46>

    <item><hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47>

    <item><hlink|<verbatim|primitives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Gain.lean#L109-L113>

    <item><hlink|<verbatim|basic_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L106-L121>

    <item><hlink|<verbatim|moment_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L122-L131>

    <item><hlink|<verbatim|euler>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L69-L88>

    <item><hlink|<verbatim|derived>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L99-L105>

    <item><hlink|<verbatim|Track.moments_expand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125>

    <item><hlink|<verbatim|atPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L16>

    <item><hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>

    <item><hlink|<verbatim|approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L24-L38>

    <item><hlink|<verbatim|reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L40-L54>

    <item><hlink|<verbatim|identifies_euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73>

    <item><hlink|<verbatim|euclidean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53>

    <item><hlink|<verbatim|TraceSpectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94>

    <item><hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>

    <item><hlink|<verbatim|coat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L34>

    <item><hlink|<verbatim|bare_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L39-L67>

    <item><hlink|<verbatim|stand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110>

    <item><hlink|<verbatim|below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49>

    <item><hlink|<verbatim|dim_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54>

    <item><hlink|<verbatim|up_to>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L69-L75>

    <item><hlink|<verbatim|portLine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L78-L80>

    <item><hlink|<verbatim|separates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L82-L94>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vii-3-1>

  <\itemize-minus>
    <item><strong|K-VII.3.1> <hlink|<verbatim|shell_green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L122-L152>
    <em|(numbered result)> \V Away from the origin, a harmonic directional
    tensor applied to the 4D Green function equals a scalar multiple of the
    field with radial power factor (Kelvin contraction).
  </itemize-minus>

  <label|k-vii-3-2>

  <\itemize-minus>
    <item><strong|K-VII.3.2> <hlink|<verbatim|from_large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L51-L68>
    <em|(numbered result)> \V Every Wick polynomial is encoded by a
    polynomial in any basis of probe towers of sufficiently high order.
  </itemize-minus>

  <label|k-vii-3-3>

  <\itemize-minus>
    <item><strong|K-VII.3.3> <hlink|<verbatim|towerB_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154>
    <em|(key result)> \V The simultaneous reflected Gram form on jet towers
    at separation x is positive definite: positive exactly on nonzero towers.
  </itemize-minus>

  <label|k-vii-3-4>

  <\itemize-minus>
    <item><strong|K-VII.3.4> <hlink|<verbatim|reflected_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53>
    <em|(main result)> \V For distinct points x,y, the reflected two-point
    pairing of any Wick polynomial with itself is positive iff the polynomial
    is nonzero.
  </itemize-minus>

  <label|k-vii-3-5>

  <\itemize-minus>
    <item><strong|K-VII.3.5> <hlink|<verbatim|remove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108>
    <em|(key result)> \V Wick removal/annihilator recurrence: replacing a
    polynomial times a variable at one point equals a sum over other points
    of replacements with extracted variable.
  </itemize-minus>

  <label|k-vii-3-6>

  <\itemize-minus>
    <item><strong|K-VII.3.6> <hlink|<verbatim|duplex_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116>
    <em|(key result)> \V On an orthogonal script, the two-point pairing of
    encoded polynomials is a sum of coefficient products times factorial
    weights.
  </itemize-minus>

  <label|k-vii-3-7>

  <\itemize-minus>
    <item><strong|K-VII.3.7> <hlink|<verbatim|table_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91>
    <em|(key result)> \V The free detector table carries a real spin
    (rotation covariance) derived from actual O-covariance of the
    Wick-polynomial data.
  </itemize-minus>

  <label|k-vii-3-8>

  <\itemize-minus>
    <item><strong|K-VII.3.8> <hlink|<verbatim|frozen_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113>
    <em|(key result)> \V For simple gauge group, the four-horizon
    perturbative data are frozen (rigid).
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.2 The trace of the stress tensor and
  the trace anomaly|VII-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-3.tm>|<hlink|VII.4 Operator product expansion and
  contact extensions \<rightarrow\>|VII-4.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.3. Free Wick polynomials and reflected Gram
    positivity \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|13>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-vii-3-1|<tuple|10|13>>
    <associate|k-vii-3-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-3-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-3-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-3-5|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-3-6|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-3-7|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-3-8|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|key-statements|<tuple|10|13>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|6|5>>
    <associate|unit-inputs|<tuple|1|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|vii3-free-wick-polynomials-and-reflected-gram-positivity|<tuple|?|1>>
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