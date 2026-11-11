<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> V.3 Reconstruction for every phase and
  the reconstructed theory|V-3.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Detailed
  notes|../notes/VI-1.tm>|<hlink|VI.2 The free Maxwell stress tensor and the
  local Ward charge \<rightarrow\>|VI-2.tm>>

  <ym-title|VI.1. Ward identities, the rotation action and the conserved
  stress tensor><label|vi1-ward-identities-the-rotation-action-and-the-conserved-stress-tensor>

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

  <em|Part VI \V Symmetry: stress tensor and Ward identities.>

  Turns Ward identities into symmetry actions and a conserved stress tensor
  on the limit theory.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VI-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: V.3|V-3.tm> <ym-middot> <hlink|Next: VI.2
  \<rightarrow\>|VI-2.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VI, symmetry: stress tensor and Ward identities.
    <strong|Lean:> <hlink|<verbatim|YM/Bid/Town.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean>,
    <hlink|<verbatim|YM/Next/ROTATIONS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS>,
    <hlink|<verbatim|YM/Ward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward>,
    <hlink|<verbatim|YM/Spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin>.
    <strong|Size:> approximately 7,704 assigned lines, plus 6,100 of
    collinear flux estimates.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Except for group statements, assume <math|S> satisfies the Euclidean
  axioms: permutation symmetry, empty normalisation, unit deletion,
  translation invariance, <math|B<rsub|4>>- and conjugation-covariance,
  coordinate reflection positivity for point words and smeared tests,
  smoothness, and for each arity, labels and derivative order <math|j>,
  constants <math|C\<geqslant\>0,A\<in\>\<bbb-N\>> with
  <math|<around|\<\|\|\>|D<rsup|j>*S<around|(|x|)>|\<\|\|\>>\<leqslant\>C*r<rsup|-A>>
  whenever <math|0\<less\>r\<leqslant\>1> and maximum-norm separation is at
  least <math|r>, uniformly in positions. The plan consists of complex-linear
  maps <math|\<partial\><rsub|a>:F<rsub|d>\<to\>F<rsub|d+1>>. Its three laws
  are: derivative law <math|S<around|(|\<ldots\>,\<partial\><rsub|a>*v<rsub|k>,\<ldots\>;x|)>=\<partial\><rsub|x<rsub|k><rsup|a>>*S<around|(|v;x|)>>,
  inclusion law <math|S<around|(|\<ldots\>,\<iota\>*v<rsub|k>,\<ldots\>|)>=S<around|(|v;x|)>>,
  and orientation: inclusions commute with <math|M,\<Gamma\>>, derivatives
  commute with <math|\<Gamma\>>, and <math|M<rsub|\<sigma\>>*\<partial\><rsub|b>=<big|sum><rsub|a>\<sigma\><rsub|a*b>*\<partial\><rsub|a>*M<rsub|\<sigma\>>>.

  The raw maps are complex-linear <math|p<rsub|a>:F<rsub|d>\<to\>F<rsub|d+1>>
  and real-linear <math|Y:<with|math-font|Euler|s*o><around|(|4|)>\<to\><math-up|End><rsub|\<bbb-C\>>F<rsub|d>>;
  spin rows <math|T> have the latter type. Write (R) for:
  <math|J<rsub|a*b>\<in\>F<rsub|4>> is symmetric, <math|\<Gamma\>>-real,
  <math|<big|sum><rsub|a>\<partial\><rsub|a>*J<rsub|a*b>=0> in
  <math|F<rsub|5>>, <math|M<rsub|\<sigma\>>*J<rsub|a*b>=<big|sum><rsub|i*j>\<sigma\><rsub|i*a>*\<sigma\><rsub|j*b>*J<rsub|i*j>>,
  and <math|<around|(|J;p,Y|)>> obeys the stress laws. For every separated
  <math|<around|(|x<rsub|0>,\<ldots\>,x<rsub|n>|)>>, labels <math|B,q>, and
  real <math|\<chi\>\<in\>C<rsub|c><rsup|\<infty\>>> equal to <math|1> near
  <math|x<rsub|0>> with closed support excluding the other points, these laws
  for <math|<around|(|J;P,A|)>> are

  <\equation*>
    -<big|sum><rsub|a,b><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*V<rsub|b><around|(|y|)>*S<around|(|J<rsub|a*b><around|(|y|)>,B<around|(|x<rsub|0>|)>,q|)>*<space|0.17em>d*y=<choice|<tformat|<table|<row|<cell|S<around|(|P<rsub|j>*B<around|(|x<rsub|0>|)>,q|)>,>|<cell|V=e<rsub|j>,>>|<row|<cell|S<around|(|A<rsub|K>*B<around|(|x<rsub|0>|)>,q|)>,>|<cell|V=K*<around|(|y-x<rsub|0>|)>.>>>>>
  </equation*>

  All identities concern separated insertions; no contact term is evaluated.
  Define

  <\equation*>
    \<cal-W\><rsub|K><around|[|T,P|]><around|(|q;x|)>=<big|sum><rsub|i><around*|[|S<around|(|\<ldots\>,T<rsub|K>*q<rsub|i>,\<ldots\>;x|)>+<big|sum><rsub|b><around|(|K*x<rsub|i>|)><rsub|b>*S<around|(|\<ldots\>,P<rsub|b>*q<rsub|i>,\<ldots\>;x|)>|]>,<space|2em>\<cal-W\><rsub|K><around|[|T|]>=\<cal-W\><rsub|K><around|[|T,\<partial\>|]>.
  </equation*>

  <strong|Proposition VI.1.1.> Assume the derivative and orientation laws and
  (R). For every arity <math|n>, degree <math|d>, coordinate axis
  <math|\<bbb-R\>*e<rsub|l>>, every <math|x\<in\><math-up|Conf><rsub|n>> on
  that axis, all tags <math|q> and <math|K\<in\><with|math-font|Euler|s*o><around|(|4|)>>,
  <math|\<cal-W\><rsub|K><around|[|Y,p|]><around|(|q;x|)>=0>. For every
  <math|j\<ne\>l> and <math|v<rsub|1>,\<ldots\>,v<rsub|n>\<in\>F<rsub|d>>,
  <math|<big|sum><rsub|i>S<around|(|\<ldots\>,p<rsub|j>*v<rsub|i>,\<ldots\>;x|)>=0>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Outer.outer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121>,
  <hlink|<verbatim|Bid.LineSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L35-L36>.

  <strong|Proposition VI.1.2.> Assume all three plan laws, the ultraviolet
  record and free-Maxwell data of Ÿ2. There exists real <math|c\<ne\>0>,
  independent of degree and axis, with <math|p<rsub|a>=c*\<partial\><rsub|a>>
  on every <math|F<rsub|d>>. For all degrees, axes and <math|K>, the rows
  <math|D=c<rsup|-1>*Y> satisfy (C) <math|\<partial\><rsub|b>*D<rsub|K>+<big|sum><rsub|i>K<rsub|i*b>*\<partial\><rsub|i>=D<rsub|K>*\<partial\><rsub|b>>
  and (L) <math|\<cal-W\><rsub|K><around|[|D|]>=0> on every coordinate axis,
  for all labels and <math|K>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Bid.pressured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L49-L59>,
  <hlink|<verbatim|Bid.formed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L61-L78>.

  <strong|Proposition VI.1.3.> Assume the derivative law and spin rows
  <math|T> satisfying (C),(L). Then <math|\<cal-W\><rsub|K><around|[|T|]><around|(|q;x|)>=0>
  for every arity, separated configuration, tags and <math|K>. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|Ward.global>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139>.

  <strong|Proposition VI.1.4.> Assume the inclusion and derivative laws,
  VI.1.3's conclusion, and compatibility of <math|T>: it commutes with
  <math|\<Gamma\>,\<iota\>>, kills <math|\<b-1\>>, and
  <math|M<rsub|\<sigma\>>*T<rsub|K>=T<rsub|\<sigma\>*K*\<sigma\><rsup|-1>>*M<rsub|\<sigma\>>>.
  Assume internal row erasure: for some <math|N>, every
  <math|d\<geqslant\>N>, and every alternating real-bilinear family
  <math|\<Delta\><around|(|u,v|)>\<in\><math-up|End><rsub|\<bbb-C\>>F<rsub|d>>
  that is <math|\<Gamma\>>-real, covariant under determinant-one signed
  permutations, kills <math|\<b-1\>> and preserves every
  <math|\<iota\><rsub|e\<to\>d><around|(|F<rsub|e>|)>>,
  <math|e\<leqslant\>d>, vanishing insertion sums for all words, separated
  configurations and <math|u,v> imply <math|\<Delta\>=0>. Then
  <math|<around|[|T<rsub|u>,T<rsub|v>|]>=T<rsub|<around|[|u,v|]>>> for all
  <math|d,u,v>. <em|Status:> theorem; erasure is proved here. <em|Lean:>
  <hlink|<verbatim|Work.A08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247>.

  <strong|Proposition VI.1.5.> Under VI.1.2's hypotheses, for every <math|d>
  there is a complex-linear isomorphism <math|V<rsub|d>:F<rsub|d><rsup|<math-up|free>>\<to\>F<rsub|d>>
  intertwining <math|M,\<Gamma\>> and satisfying
  <math|D<rsub|K>*V<rsub|d>=V<rsub|d>*\<cal-L\><rsub|K><rsup|<math-up|free>>>
  for every <math|K>. Thus <math|R<rsub|d>=V<rsub|d>*R<rsub|d><rsup|<math-up|free>>*V<rsub|d><rsup|-1>>
  is a continuous <math|O<around|(|4|)>> representation, equals <math|M> on
  <math|B<rsub|4>>, commutes with <math|\<Gamma\>>, has generators <math|D>
  satisfying the global Ward identity of VI.1.3. The <math|V<rsub|d>> are
  chosen independently across degrees. Such an action with specified
  generators is a rotation port. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Bid.services>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L124-L157>.

  <strong|Proposition VI.1.6.> Assume the inclusion and derivative laws and a
  rotation port <math|R> with generators <math|T> satisfying VI.1.3's global
  Ward identity. For all <math|k\<in\>O<around|(|4|)>>, tags and separated
  <math|x>, <math|S<around|(|R<around|(|k|)>*v;k*x|)>=S<around|(|v;x|)>>.
  Moreover <math|R> fixes <math|\<b-1\>>, commutes with inclusions, retains
  the port properties, and <math|R<rsub|d+1><around|(|k|)>*\<partial\><rsub|a>*v=<big|sum><rsub|i>k<rsub|i*a>*\<partial\><rsub|i>*R<rsub|d><around|(|k|)>*v>
  for every <math|d,a,v>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Work.A14.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420>.

  <strong|Proposition VI.1.7.> Assume the derivative law, a covariant
  rotation action satisfying VI.1.6's laws, (R), <math|p=c*\<partial\>> with
  <math|c\<ne\>0>, and generators <math|c<rsup|-1>*Y>. There exists
  symmetric, real, divergence-free <math|J<rprime|'>> with
  <math|R<rsub|4><around|(|k|)>*J<rprime|'><rsub|a*b>=<big|sum><rsub|i*j>k<rsub|i*a>*k<rsub|j*b>*J<rprime|'><rsub|i*j>>
  for every <math|k>, satisfying the stress laws with
  <math|<around|(|P,A|)>=<around|(|\<partial\>,c<rsup|-1>*Y|)>>. The
  translation shell, Ward identity (13), therefore equals
  <math|\<partial\><rsub|x<rsub|0><rsup|b>>*S<around|(|B<around|(|x<rsub|0>|)>,q|)>>
  for every window and labels. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Work.A15.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192>.

  <strong|Proposition VI.1.8.> Spatial rotations and coordinate boosts
  generate <math|S*O<rsup|+><around|(|1,3|)>>. Under VI.1.2's hypotheses,
  choose <math|V,R,J<rprime|'>> as above:
  <math|B<rsub|d><around|(|\<Lambda\>|)>=V<rsub|d>*B<rsub|d><rsup|<math-up|free>><around|(|\<Lambda\>|)>*V<rsub|d><rsup|-1>>
  commutes with every inclusion <math|F<rsub|d>\<hookrightarrow\>F<rsub|e>>,
  <math|d\<leqslant\>e>, for every <math|\<Lambda\>>. These actions give a
  representation on the union, continuous on each <math|F<rsub|d>>, equal to
  <math|R<rsub|d>> on spatial rotations and commuting with
  <math|M<rsub|\<theta\><rsub|t>>*\<Gamma\>>. For every <math|d>, spatial
  <math|i> and <math|v\<in\>F<rsub|d>>, its boost derivative at zero is
  <math|-i*D<rsub|K<rsup|<around|(|3*i|)>>>*v>. <em|Status:> theorems.
  <em|Lean:> <hlink|<verbatim|Work.A16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101>,
  <hlink|<verbatim|Work.A17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L88-L101>,
  <hlink|<verbatim|Spin.reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L39-L74>.

  <strong|Proposition VI.1.9.> Given Ÿ2's free data, infrared triple and
  ultraviolet record, all six assembly clauses hold: raw compatibility,
  normalisation, rotation descent, covariance, averaged stress laws, and
  Lorentz compatibility. With the inclusion and derivative laws, there exist
  <math|c,<around|(|V<rsub|d>|)>,J<rprime|'>> satisfying VI.1.2 and
  VI.1.5\U8, all three plan laws and the resulting local field laws.
  <em|Status:> conditional theorem. <em|Lean:>
  <hlink|<verbatim|Outer.commission>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS.lean#L126-L131>,
  <hlink|<verbatim|Commission.picks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L45-L53>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>IV.1: limit table <hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>,
    differential plan, commuting derivatives and injective inclusions.

    <item>V.1: <hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>,
    OS Hilbert spaces, contraction semigroups and joint spectral measures,
    constructed from the axioms.

    <item>VI.2: <hlink|<verbatim|Org.MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>;
    free plan, covariant rotation and Lorentz actions, stress laws for
    <math|<around|(|J<rsup|<math-up|free>>;\<kappa\>*\<partial\><rsup|<math-up|free>>,\<kappa\>*\<cal-L\><rsup|<math-up|free>>|)>>
    with <math|\<kappa\>\<ne\>0>, derivatives nonzero on
    <math|F<rsup|<math-up|free>><rsub|4>>, generator relations, Casimir
    polynomials and row erasure. At every sufficiently large degree, finitely
    many collinear readouts have common kernel
    <math|\<bbb-R\>*\<partial\><rsup|<math-up|free>>> within the free
    vector-map space. Their producers assume the gauge group simple.

    <item>VI.2 and III.11: <hlink|<verbatim|Org.IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>
    and <hlink|<verbatim|Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>,
    including (R), orientation, lattice/extraction data, corrected-field
    bounds, grid approximations and weak scaling comparison of correlation
    jets and stress with the free table.

    <item>Weak comparison means: for every arity bound <math|N>, degree bound
    <math|d>, derivative bound <math|m> and <math|R\<geqslant\>1>, there
    exist <math|r<rsub|k>*\<downarrow\>*0>, <math|\<xi\><rsub|k>\<gtr\>0> and
    complex-linear isomorphisms <math|U<rsub|k,e>:F<rsub|e><rsup|<math-up|free>>\<to\>F<rsub|e>>.
    Through degree <math|max <around|(|d,4|)>> these intertwine
    <math|M,\<Gamma\>>, units and inclusions; for <math|n\<leqslant\>N>,
    degrees <math|\<leqslant\>d> and <math|j\<leqslant\>m>,
    <math|D<rsub|y><rsup|j>*S<around|(|U<rsub|k>*v;r<rsub|k>*y|)>\<to\>D<rsup|j>*S<rsup|<math-up|free>><around|(|v;y|)>>
    uniformly where <math|<around|\<\|\|\>|y|\<\|\|\>>\<leqslant\>R> and
    separation is at least <math|R<rsup|-1>>. Also
    <math|\<xi\><rsub|k><rsup|-1>*r<rsub|k><rsup|4>*U<rsub|k,4><rsup|-1>*J<rsub|a*b>\<to\>J<rsub|a*b><rsup|<math-up|free>>>
    for every <math|a,b>. The system may depend on all four bounds.

    <item>Standard results: spectral theorem, holomorphic semigroups,
    analytic vectors, analytic identity theorem, Haar averaging,
    Cartan\UDieudonné, Givens rotations, McWeeny purification and linear ODE
    uniqueness.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Conservation turns shell laws into collinear Ward identities; free
  comparison fixes their normalisation. Positivity converts collinear
  two-point jets into analytic OS vectors, allowing propagation to every
  separated configuration. Exact intertwiners transport the free rotations;
  covariance then gives compatibility across degrees. Rescaling and averaging
  give the tensorial stress, and boost ODE uniqueness gives Lorentz
  compatibility.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Moving the centre inside a fixed window gives
    <math|\<partial\><rsub|b>*Y<rsub|K>+<big|sum><rsub|c>K<rsub|c*b>*p<rsub|c>=Y<rsub|K>*\<partial\><rsub|b>>
    and <math|\<partial\><rsub|b>*p<rsub|i>=p<rsub|i>*\<partial\><rsub|b>> by
    differentiating its shell laws. <hlink|<verbatim|Work.A02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307>.

    <item>Cutoffs of widths <math|\<lambda\><rsup|100>,\<lambda\><rsup|150>,\<lambda\><rsup|300>>
    cancel two terms by stress symmetry; reflection positivity and spectral
    estimates bound the exterior flux by <math|O<around|(|\<lambda\><rsup|-1>|)>>,
    giving the collinear identity without a mass gap or clustering.
    <hlink|<verbatim|Outer.blows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114>.
    <em|(supporting analysis partly read)>

    <item>Finite free collinear tests have a one-dimensional kernel;
    persistence of rank under scaling forces <math|p=c*\<partial\>>.
    <hlink|<verbatim|Climb.extends_form>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L98-L111>.

    <item>Analytic comparison determines two-point jets; positivity gives
    factorial vector-derivative bounds. Extreme-point moves and density
    propagate vanishing angular sums. <hlink|<verbatim|Analysis.blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96>,
    <hlink|<verbatim|Ward.global>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139>.

    <item>Free row erasure removes the bracket defect. Relative-Casimir
    projection and iteration <math|x\<mapsto\>3*x<rsup|2>-2*x<rsup|3>>
    produce exact intertwiners: the compressed defect satisfies perfect
    commutator relations, which force sufficiently small operators to vanish.
    <hlink|<verbatim|Work.A08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247>,
    <hlink|<verbatim|Spin.meet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L134-L157>.

    <item>Group generation integrates covariance; Haar averaging of
    <math|c<rsup|-1>*J> preserves the stress laws. Boost ODE uniqueness
    proves compatibility across degrees. <hlink|<verbatim|Work.A14.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420>,
    <hlink|<verbatim|Work.A15.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192>,
    <hlink|<verbatim|run_boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L70-L84>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Diagonal stress components require a conservation estimate beyond
  reflection-parity arguments. Vanishing smooth jets alone do not justify
  continuation; positivity supplies analyticity. Exact intertwiners identify
  the required <math|O<around|(|4|)>> action and signed permutations.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|S>: correlation table; <math|F<rsub|d>>: finite-dimensional complex
  label spaces of degree <math|\<leqslant\>d> modulo null labels;
  <math|\<iota\>>: inclusions; <math|\<b-1\>>: unit; <math|B<rsub|4>,M>:
  signed permutations and their action; <math|\<Gamma\>>: conjugation;
  <math|<math-up|Conf><rsub|n>>: distinct points in <math|\<bbb-R\><rsup|4>>.
  <math|K\<in\><with|math-font|Euler|s*o><around|(|4|)>> is real skew, with
  <math|<around|[|u,v|]>=u*v-v*u> and <math|K<rsup|<around|(|b*a|)>>=E<rsub|b*a>-E<rsub|a*b>>;
  time is axis <math|3>, and <math|\<theta\><rsub|t>> reverses it.
  <math|\<lambda\>=e<rsup|k>> is the cutoff scale.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Supporting flux analysis, including contact-extension normalisation, was
  not checked fully (probable). The ultraviolet hypotheses of the input
  producers are not discharged here. Centring of <math|J<rprime|'>> is not
  proved here; neither sign of <math|c,\<kappa\>> is specified. Lean
  elaboration and transitive axiom dependencies were not checked.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VI-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|III.16|III-16.tm>, <hlink|V.2|V-2.tm>, <hlink|V.1|V-1.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|III.10|III-10.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|VI.2|VI-2.tm>, <hlink|V.2|V-2.tm>, <hlink|V.3|V-3.tm>,
  <hlink|III.6|III-6.tm>, <hlink|III.10|III-10.tm>, <hlink|III.11|III-11.tm>,
  <hlink|VII.5|VII-5.tm>, <hlink|V.1|V-1.tm>, <hlink|VII.3|VII-3.tm>,
  <hlink|III.9|III-9.tm>, <hlink|VII.6|VII-6.tm>, <hlink|VII.1|VII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 7,704 attributed lines; 1,014 line-counted
  declarations; 1,306 assigned declaration names. Of the assigned names,
  1,261 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
    (in part, 24%) \V 11,420 lines.

    <item>work package <hlink|<verbatim|YM/Ward/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward>
    \V 1,127 lines.

    <item>work package <hlink|<verbatim|YM/Push/STRESS_FLUX/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX>
    \V 1,063 lines.

    <item>work package <hlink|<verbatim|YM/Spin/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin>,
    with <hlink|<verbatim|YM/Climb/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb>
    \V 667 lines.

    <item>work package <hlink|<verbatim|YM/Shift/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift>
    \V 618 lines.

    <item>work package <hlink|<verbatim|YM/Work/A01/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01>
    \V 436 lines.

    <item>work package <hlink|<verbatim|YM/Work/A05/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05>
    \V 384 lines.

    <item>work package <hlink|<verbatim|YM/Work/A15/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15>
    \V 317 lines.

    <item>work package <hlink|<verbatim|YM/Next/BOUNDARY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY>
    \V 272 lines.

    <item>work package <hlink|<verbatim|YM/Axis/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis>
    \V 93 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|YM/Bid/Angular.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean>

    <item><hlink|<verbatim|Bid.A14>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L105-L107>

    <item><hlink|<verbatim|Bid.A15>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L109-L112>

    <item><hlink|<verbatim|Bid.A16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L116>

    <item><hlink|<verbatim|Bid.A17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L118-L119>

    <item><hlink|<verbatim|Bid.Hyper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20>

    <item><hlink|<verbatim|Bid.ShellCom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L27-L29>

    <item><hlink|<verbatim|Bid.Watches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L43-L46>

    <item><hlink|<verbatim|Bid.ConLap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L48-L49>

    <item><hlink|<verbatim|Bid.Brackets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L74>

    <item><hlink|<verbatim|Bid.A08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L76-L78>

    <item><hlink|<verbatim|Bid.imaginary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L102-L122>

    <item><hlink|<verbatim|Bid.Miles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L13-L15>

    <item><hlink|<verbatim|Bid.station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168>

    <item><hlink|<verbatim|Bid.witnessing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L33-L39>

    <item><hlink|<verbatim|Bid.currencies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L80-L90>

    <item><hlink|<verbatim|Climb.Lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29>

    <item><hlink|<verbatim|Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>

    <item><hlink|<verbatim|Climb.Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48>

    <item><hlink|<verbatim|Climb.ActLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51>

    <item><hlink|<verbatim|Climb.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63>

    <item><hlink|<verbatim|Climb.Pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69>

    <item><hlink|<verbatim|Climb.localTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L72-L74>

    <item><hlink|<verbatim|Climb.Crystal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L83-L87>

    <item><hlink|<verbatim|Climb.Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>

    <item><hlink|<verbatim|Climb.Parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L58>

    <item><hlink|<verbatim|Colors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L66-L87>

    <item><hlink|<verbatim|Climb.ColorLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L89-L91>

    <item><hlink|<verbatim|Climb.native>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L93-L96>

    <item><hlink|<verbatim|Climb.transverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L57>

    <item><hlink|<verbatim|Climb.Ens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L101-L104>

    <item><hlink|<verbatim|aisle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57>

    <item><hlink|<verbatim|Select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L95-L99>

    <item><hlink|<verbatim|rise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>

    <item><hlink|<verbatim|Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>

    <item><hlink|<verbatim|DiffPlan.Derivatives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64>

    <item><hlink|<verbatim|Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>

    <item><hlink|<verbatim|Tag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66>

    <item><hlink|<verbatim|unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L100>

    <item><hlink|<verbatim|mirror>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L138-L140>

    <item><hlink|<verbatim|conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L142-L144>

    <item><hlink|<verbatim|Field d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>

    <item><hlink|<verbatim|Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>

    <item><hlink|<verbatim|Rotation.Oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48>

    <item><hlink|<verbatim|Table.Stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57>

    <item><hlink|<verbatim|Conserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L59-L62>

    <item><hlink|<verbatim|Table.Tensorial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L64-L66>

    <item><hlink|<verbatim|RawTensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L68-L70>

    <item><hlink|<verbatim|Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73>

    <item><hlink|<verbatim|shellGrad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L79-L81>

    <item><hlink|<verbatim|shellSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L84-L86>

    <item><hlink|<verbatim|Table.StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>

    <item><hlink|<verbatim|Boundary.Spins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L22-L24>

    <item><hlink|<verbatim|Boundary.Spins.Descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35>

    <item><hlink|<verbatim|free_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165>

    <item><hlink|<verbatim|Acme.readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>

    <item><hlink|<verbatim|Acme.shells_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63>

    <item><hlink|<verbatim|Maxwell.Free.maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>

    <item><hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Budget.lean#L15>

    <item><hlink|<verbatim|Mass.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean>

    <item><hlink|<verbatim|point_moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L228-L243>

    <item><hlink|<verbatim|Patch.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean>

    <item><hlink|<verbatim|petal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean#L72>

    <item><hlink|<verbatim|budget_lock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Pivot.lean#L59-L72>

    <item><hlink|<verbatim|sands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L40-L64>

    <item><hlink|<verbatim|paid_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L66-L82>

    <item><hlink|<verbatim|Outer.flux_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113>

    <item><hlink|<verbatim|Outer.miles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L123>

    <item><hlink|<verbatim|vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L14>

    <item><hlink|<verbatim|vane_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L21-L27>

    <item><hlink|<verbatim|draught_river>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L31-L48>

    <item><hlink|<verbatim|drained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L56>

    <item><hlink|<verbatim|axisTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L57-L67>

    <item><hlink|<verbatim|fullTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L83-L96>

    <item><hlink|<verbatim|stagger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L98-L108>

    <item><hlink|<verbatim|alternate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Switch.lean#L145-L160>

    <item><hlink|<verbatim|Tunnel.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean>

    <item><hlink|<verbatim|exterior_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120>

    <item><hlink|<verbatim|Yard.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean>

    <item><hlink|<verbatim|pick_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77>

    <item><hlink|<verbatim|collimated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L84-L103>

    <item><hlink|<verbatim|OS.realization>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107>

    <item><hlink|<verbatim|Org.Winds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L141-L146>

    <item><hlink|<verbatim|Org.erases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152>

    <item><hlink|<verbatim|YM/Org/Twist.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean>

    <item><hlink|<verbatim|Org.mill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L17>

    <item><hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>

    <item><hlink|<verbatim|Org.Commission>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L29-L43>

    <item><hlink|<verbatim|bilinear_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Color.lean#L79-L91>

    <item><hlink|<verbatim|finrank_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L129-L167>

    <item><hlink|<verbatim|finrank_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L190-L231>

    <item><hlink|<verbatim|div_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L177-L184>

    <item><hlink|<verbatim|stress_bijective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L227-L235>

    <item><hlink|<verbatim|stress_tensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L202-L214>

    <item><hlink|<verbatim|Signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26>

    <item><hlink|<verbatim|Spec.Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>

    <item><hlink|<verbatim|enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L27-L38>

    <item><hlink|<verbatim|Spin.run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L21-L22>

    <item><hlink|<verbatim|Spin.wand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L24-L25>

    <item><hlink|<verbatim|Spin.transmits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L30-L37>

    <item><hlink|<verbatim|Spin.rectify>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L25-L69>

    <item><hlink|<verbatim|stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L72-L98>

    <item><hlink|<verbatim|Spin.Port>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L13-L19>

    <item><hlink|<verbatim|Spin.morph>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L22-L24>

    <item><hlink|<verbatim|Spin.produces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L26-L47>

    <item><hlink|<verbatim|Spin.team>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L50-L69>

    <item><hlink|<verbatim|effect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L21>

    <item><hlink|<verbatim|wave>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L57>

    <item><hlink|<verbatim|Spin.Works>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L68-L71>

    <item><hlink|<verbatim|Tracks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L74-L75>

    <item><hlink|<verbatim|realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L77-L93>

    <item><hlink|<verbatim|Spin.Tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L116-L122>

    <item><hlink|<verbatim|Spin.rel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L35>

    <item><hlink|<verbatim|change>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L44>

    <item><hlink|<verbatim|realH>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L50-L52>

    <item><hlink|<verbatim|Spin.fine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L55-L64>

    <item><hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>

    <item><hlink|<verbatim|park1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L36-L53>

    <item><hlink|<verbatim|pushes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L57-L74>

    <item><hlink|<verbatim|line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L86-L108>

    <item><hlink|<verbatim|htQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L115-L128>

    <item><hlink|<verbatim|solves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L130-L174>

    <item><hlink|<verbatim|Ward.Q>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L89-L90>

    <item><hlink|<verbatim|last_adv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L102-L121>

    <item><hlink|<verbatim|first_adv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L131-L153>

    <item><hlink|<verbatim|Ward.higher>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L23-L69>

    <item><hlink|<verbatim|swing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L33-L43>

    <item><hlink|<verbatim|Ward.radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L54-L68>

    <item><hlink|<verbatim|Analysis.represents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L19-L41>

    <item><hlink|<verbatim|bud>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L46-L74>

    <item><hlink|<verbatim|Ward.jet_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Motion.lean#L31-L42>

    <item><hlink|<verbatim|PDE.sure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/PDE.lean#L121-L141>

    <item><hlink|<verbatim|responds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L102-L118>

    <item><hlink|<verbatim|blooms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L120-L133>

    <item><hlink|<verbatim|advancing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L137-L158>

    <item><hlink|<verbatim|Ward.spot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L55>

    <item><hlink|<verbatim|link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L64-L73>

    <item><hlink|<verbatim|builds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rate.lean#L93-L102>

    <item><hlink|<verbatim|Ward.sigma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L73-L97>

    <item><hlink|<verbatim|Ward.realized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L99-L116>

    <item><hlink|<verbatim|Ward.ac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L138-L143>

    <item><hlink|<verbatim|Ward.SpinRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L17>

    <item><hlink|<verbatim|Ward.angular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L25-L27>

    <item><hlink|<verbatim|Ward.commutes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L29-L30>

    <item><hlink|<verbatim|Ward.Collinear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L34-L35>

    <item><hlink|<verbatim|Ward.traverses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L92-L136>

    <item><hlink|<verbatim|Ward.channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L15-L26>

    <item><hlink|<verbatim|Ward.Still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L45>

    <item><hlink|<verbatim|Ward.stood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L71>

    <item><hlink|<verbatim|Walk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L75-L78>

    <item><hlink|<verbatim|translation_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L27-L76>

    <item><hlink|<verbatim|angular_hyper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L78-L112>

    <item><hlink|<verbatim|flux_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L183-L203>

    <item><hlink|<verbatim|flux_mirror>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Mirror.lean#L161-L194>

    <item><hlink|<verbatim|deriv_shellSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L213-L259>

    <item><hlink|<verbatim|stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L37-L48>

    <item><hlink|<verbatim|full_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L152-L186>

    <item><hlink|<verbatim|all_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L51-L80>

    <item><hlink|<verbatim|row_D>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L83-L103>

    <item><hlink|<verbatim|Work.A04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183>

    <item><hlink|<verbatim|Work.A05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121>

    <item><hlink|<verbatim|recover_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Read.lean#L70-L81>

    <item><hlink|<verbatim|integrate_sheet_scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Window.lean#L158-L172>

    <item><hlink|<verbatim|transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L243-L285>

    <item><hlink|<verbatim|defect_winds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L192-L205>

    <item><hlink|<verbatim|defect_ward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L209-L230>

    <item><hlink|<verbatim|orbital_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L62-L68>

    <item><hlink|<verbatim|orbit_twice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L91-L107>

    <item><hlink|<verbatim|Work.A09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90>

    <item><hlink|<verbatim|Work.A10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115>

    <item><hlink|<verbatim|reflection_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L151-L174>

    <item><hlink|<verbatim|cov_parameter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L245-L261>

    <item><hlink|<verbatim|Work.A14.oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L277-L292>

    <item><hlink|<verbatim|unit_fixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L310-L325>

    <item><hlink|<verbatim|vectorLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L364-L398>

    <item><hlink|<verbatim|tensorial_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L117-L118>

    <item><hlink|<verbatim|conserved_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L134-L154>

    <item><hlink|<verbatim|normalize_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L22-L41>

    <item><hlink|<verbatim|averageStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L86>

    <item><hlink|<verbatim|exists_rest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L82-L89>

    <item><hlink|<verbatim|rise_generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L57-L68>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vi-1-1>

  <\itemize-minus>
    <item><strong|K-VI.1.1> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200>
    <em|(key result)> \V The orthogonal group's action is generated
    algebraically by the relevant elementary motions, giving the actual
    orthogonal-group structure.
  </itemize-minus>

  <label|k-vi-1-2>

  <\itemize-minus>
    <item><strong|K-VI.1.2> <hlink|<verbatim|blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96>
    <em|(key result)> \V A smooth Hilbert-valued function whose inner-product
    kernel is a function of the difference with analytic Taylor series at 0
    is real-analytic everywhere.
  </itemize-minus>

  <label|k-vi-1-3>

  <\itemize-minus>
    <item><strong|K-VI.1.3> <hlink|<verbatim|onto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L42-L70>
    <em|(numbered result)> \V An idempotent limit lying in a closed subring
    can be approximated by idempotents in the subring commuting with the
    given sequences and annihilated by them.
  </itemize-minus>

  <label|k-vi-1-4>

  <\itemize-minus>
    <item><strong|K-VI.1.4> <hlink|<verbatim|laws_of_oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415>
    <em|(numbered result)> \V An oriented rotation satisfying the spin port
    compatibility obeys the rotation laws for the hierarchy.
  </itemize-minus>

  <label|k-vi-1-5>

  <\itemize-minus>
    <item><strong|K-VI.1.5> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307>
    <em|(key result)> \V The bid A02 holds: the center can be moved inside a
    fixed cutoff.
  </itemize-minus>

  <label|k-vi-1-6>

  <\itemize-minus>
    <item><strong|K-VI.1.6> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420>
    <em|(key result)> \V The rotation laws are derived from the
    configuration-space Ward identity.
  </itemize-minus>

  <label|k-vi-1-7>

  <\itemize-minus>
    <item><strong|K-VI.1.7> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247>
    <em|(key result)> \V Actual Lie brackets are recovered after Ward
    propagation.
  </itemize-minus>

  <label|k-vi-1-8>

  <\itemize-minus>
    <item><strong|K-VI.1.8> <hlink|<verbatim|rotate_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15/Transfer.lean#L124-L168>
    <em|(numbered result)> \V Rotating a stress by an orthogonal element
    preserves the D and Lie flux laws.
  </itemize-minus>

  <label|k-vi-1-9>

  <\itemize-minus>
    <item><strong|K-VI.1.9> <hlink|<verbatim|fires>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L72-L81>
    <em|(key result)> \V If a two-point function's Taylor series at zero
    matches an analytic germ, the singleton-singleton row is real-analytic in
    the offset along a transverse direction.
  </itemize-minus>

  <label|k-vi-1-10>

  <\itemize-minus>
    <item><strong|K-VI.1.10> <hlink|<verbatim|pure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L179-L209>
    <em|(key result)> \V Along transverse axes, the spot function of a point
    moved in direction b is real-analytic.
  </itemize-minus>

  <label|k-vi-1-11>

  <\itemize-minus>
    <item><strong|K-VI.1.11> <hlink|<verbatim|along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L79-L84>
    <em|(key result)> \V If the Ward value condition holds at the endpoint of
    a walk, it holds at the starting point.
  </itemize-minus>

  <label|k-vi-1-12>

  <\itemize-minus>
    <item><strong|K-VI.1.12> <hlink|<verbatim|global>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139>
    <em|(main result)> \V Under the hierarchy, differential-plan, derivative,
    commutation and collinearity hypotheses, the full Ward values hold at
    every configuration of distinct points.
  </itemize-minus>

  <label|k-vi-1-13>

  <\itemize-minus>
    <item><strong|K-VI.1.13> <hlink|<verbatim|cutoff_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L154-L181>
    <em|(numbered result)> \V For a conserved current and a Killing vector,
    integrating the current against the gradient of a compactly supported
    cutoff away from the word's points gives zero.
  </itemize-minus>

  <label|k-vi-1-14>

  <\itemize-minus>
    <item><strong|K-VI.1.14> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L115-L117>
    <em|(key result)> \V The compatibility properties of both raw shell maps
    hold.
  </itemize-minus>

  <label|k-vi-1-15>

  <\itemize-minus>
    <item><strong|K-VI.1.15> <hlink|<verbatim|stressLaws_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L156-L183>
    <em|(key result)> \V Averaging a stress tensor over rotations preserves
    the flux laws.
  </itemize-minus>

  <label|k-vi-1-16>

  <\itemize-minus>
    <item><strong|K-VI.1.16> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192>
    <em|(key result)> \V The unnormalized stress can be averaged and
    renormalized to a conserved, tensorial stress satisfying the flux laws.
  </itemize-minus>

  <label|k-vi-1-17>

  <\itemize-minus>
    <item><strong|K-VI.1.17> <hlink|<verbatim|descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98>
    <em|(numbered result)> \V Given weak comparator matrices satisfying the
    crystal condition, a descent consumer produces rotation-compatible data
    from the hypothesised tilt.
  </itemize-minus>

  <label|k-vi-1-18>

  <\itemize-minus>
    <item><strong|K-VI.1.18> <hlink|<verbatim|Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>
    <em|(numbered result)> \V A bundled data structure packaging scaling maps
    compatible with a table of data.
  </itemize-minus>

  <label|k-vi-1-19>

  <\itemize-minus>
    <item><strong|K-VI.1.19> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336>
    <em|(key result)> \V The A12 statement: existence of the limiting Casimir
    selection polynomial for the relevant family.
  </itemize-minus>

  <label|k-vi-1-20>

  <\itemize-minus>
    <item><strong|K-VI.1.20> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L287-L289>
    <em|(key result)> \V The bid A07 statement, obtained by applying the
    transfer lemma.
  </itemize-minus>

  <label|k-vi-1-21>

  <\itemize-minus>
    <item><strong|K-VI.1.21> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A06.lean#L236-L256>
    <em|(key result)> \V The finite collinear Ward test matrix transport
    statement (bid A06) holds.
  </itemize-minus>

  <label|k-vi-1-22>

  <\itemize-minus>
    <item><strong|K-VI.1.22> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L197-L202>
    <em|(key result)> \V All positional jets of transverse-component vector
    Ward tests are as required.
  </itemize-minus>

  <label|k-vi-1-23>

  <\itemize-minus>
    <item><strong|K-VI.1.23> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A11.lean#L199-L206>
    <em|(key result)> \V The reality and signed-subgroup properties of the
    wave polynomial (bid A11) hold.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> V.3 Reconstruction for every phase and
  the reconstructed theory|V-3.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Detailed
  notes|../notes/VI-1.tm>|<hlink|VI.2 The free Maxwell stress tensor and the
  local Ward charge \<rightarrow\>|VI-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VI.1. Ward identities, the rotation action and the
    conserved stress tensor \U Yang\UMills informalization>
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
    <associate|auto-11|<tuple|10|12>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-vi-1-1|<tuple|10|13>>
    <associate|k-vi-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-18|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-20|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vi-1-21|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-1-22|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-1-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vi-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vi-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|6|4>>
    <associate|unit-inputs|<tuple|1|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|2>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|vi1-ward-identities-the-rotation-action-and-the-conserved-stress-tensor|<tuple|?|1>>
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