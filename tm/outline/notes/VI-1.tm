<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> V.3 Reconstruction for every phase and
  the reconstructed theory (notes)|V-3.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Unit
  outline|../units/VI-1.tm>|<hlink|VI.2 The free Maxwell stress tensor and
  the local Ward charge (notes) \<rightarrow\>|VI-2.tm>>

  <ym-title|VI.1. Ward identities, the rotation action and the conserved
  stress tensor \V detailed notes><label|vi1-ward-identities-the-rotation-action-and-the-conserved-stress-tensor--detailed-notes>

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

    <with|par-left|1tab|4.1 Local structure of the raw shell maps (A01\UA03)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The collinear Ward identity
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Normalisation
    <with|mode|math|p=c*<space|0.17em>\<partial\>> (A04\UA06)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Continuation off the line
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Brackets (A07, A08)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Descent of the free rotation action (A09\UA12)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Integration to <with|mode|math|O<around|(|4|)>>
    (A13, A14) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 The averaged stress tensor (A15)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 Lorentz group, and assembly
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|4.10 Free-field stress algebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit VI.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VI-1.tm>.
  </quotation>

  <hlink|Unit page|../units/VI-1.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VI, symmetry: stress tensor and Ward identities.
  <strong|Lean:>

  <\itemize-minus>
    <item>the work items A01\UA17, stated in
    <hlink|<verbatim|YM/Bid/Angular.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean>,
    combined in <hlink|<verbatim|YM/Bid/Town.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean>
    and proved in <hlink|<verbatim|YM/Work/A01>\U<verbatim|A17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>;

    <item>the collinear flux estimate, in
    <hlink|<verbatim|YM/Next/ROTATIONS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS>
    with <hlink|<verbatim|YM/Axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis>;

    <item>the analytic continuation, in <hlink|<verbatim|YM/Ward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward>;

    <item>the scaling comparison, in <hlink|<verbatim|YM/Climb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb>;

    <item>the descent of the rotation action, in
    <hlink|<verbatim|YM/Spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin>;

    <item>the assembled record, in <hlink|<verbatim|YM/Org/Twist.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean>;

    <item>in part, <hlink|<verbatim|YM/Push/STRESS_FLUX>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX>,
    <hlink|<verbatim|YM/Shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift>
    and <hlink|<verbatim|YM/Next/BOUNDARY>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY>.
  </itemize-minus>

  <strong|Size (approximate):>

  <\itemize-minus>
    <item>7,704 lines are assigned to this unit and used by the main theorem.
    Of these, about 900 (<verbatim|Shift> and most of
    <verbatim|Next/BOUNDARY>) are reconstruction material for V.2, and about
    1,000 (<verbatim|STRESS_FLUX>) are free-field algebra used in VII.2
    (Remark in Ÿ4.10).

    <item>About 6,100 further lines of <verbatim|Next/ROTATIONS> carry the
    collinear flux estimate. The declaration table files them under III.6,
    but they belong here, and the III.6 note says so too.
  </itemize-minus>

  <strong|Conventions.>

  <\itemize-minus>
    <item><em|Table.> <math|S> is the limit table of IV.1. For labels
    <math|v<rsub|i>\<in\>F<rsub|d<rsub|i>>> and
    <math|x\<in\><math-up|Conf><rsub|n>> (pairwise distinct points of
    <math|\<bbb-R\><rsup|4>>), <math|S<around|(|v<rsub|1>,\<ldots\>,v<rsub|n>;x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    is a correlation kernel, smooth on <math|<math-up|Conf><rsub|n>>.

    <item><em|Label spaces.> <math|F<rsub|d>> is the finite-dimensional
    complex space of labels of degree <math|\<leqslant\>d> modulo null
    labels. It has inclusions <math|\<iota\>=\<iota\><rsub|d\<to\>e>>, a unit
    <math|\<b-1\><rsub|d>>, the action <math|M<rsub|\<sigma\>>> of the signed
    permutation matrices <math|\<sigma\>\<in\>B<rsub|4>\<subset\>O<around|(|4|)>>,
    and an antilinear conjugation <math|\<Gamma\>>.

    <item><em|Euclidean axioms>:

    <\itemize-minus>
      <item>permutation symmetry, normalisation of the empty correlation,
      deletion of unit insertions, and translation invariance;

      <item>covariance under <math|B<rsub|4>> and <math|\<Gamma\>>;

      <item>reflection positivity in the coordinate hyperplanes, for point
      words and for smeared tests;

      <item>smoothness on configuration space;

      <item>for each fixed arity, labels and derivative order <math|j>,
      constants <math|C\<geqslant\>0> and <math|A\<in\>\<bbb-N\>> such that
      <math|<around|\<\|\|\>|D<rsup|j>*S<around|(|x|)>|\<\|\|\>>\<leqslant\>C*r<rsup|-A>>
      whenever <math|0\<less\>r\<leqslant\>1> and the points are separated by
      at least <math|r> in the maximum norm. The constants are uniform in the
      positions.
    </itemize-minus>

    <item><em|Differential plan.> Complex linear maps
    <math|\<partial\><rsub|a>:F<rsub|d>\<to\>F<rsub|d+1>> satisfying three
    laws:

    <\itemize-minus>
      <item>the <em|derivative law> <math|S<around|(|\<ldots\>,\<partial\><rsub|a>*v<rsub|k>,\<ldots\>;x|)>=\<partial\><rsub|x<rsub|k><rsup|a>>*S<around|(|\<ldots\>,v<rsub|k>,\<ldots\>;x|)>>;

      <item>the <em|inclusion law> <math|S<around|(|\<ldots\>,\<iota\>*v<rsub|k>,\<ldots\>|)>=S<around|(|\<ldots\>,v<rsub|k>,\<ldots\>|)>>;

      <item><em|orientation>: <math|\<Gamma\>> and <math|M<rsub|\<sigma\>>>
      commute with the inclusions, <math|\<partial\>> commutes with
      <math|\<Gamma\>>, and <math|M<rsub|\<sigma\>>*\<partial\><rsub|b>=<big|sum><rsub|a>\<sigma\><rsub|a*b>*<space|0.17em>\<partial\><rsub|a>*M<rsub|\<sigma\>>>.
      Commutation of <math|\<partial\>> with the inclusions follows from the
      inclusion and derivative laws.
    </itemize-minus>

    <item><em|Rotations.> <math|<with|math-font|Euler|s*o><around|(|4|)>> is
    the space of real skew <math|4\<times\>4> matrices with
    <math|<around|[|K,K<rprime|'>|]>=K*K<rprime|'>-K<rprime|'>*K>.
    <math|K<rsup|<around|(|b*a|)>>=E<rsub|b*a>-E<rsub|a*b>> generates the
    rotation field <math|x<rsub|a>*e<rsub|b>-x<rsub|b>*e<rsub|a>>.

    <item><em|Spin rows.> A system of spin rows is a family of
    <math|\<bbb-R\>>-linear maps <math|T:<with|math-font|Euler|s*o><around|(|4|)>\<to\><math-up|End><rsub|\<bbb-C\>>F<rsub|d>>.

    <item><em|Angular sum.> For spin rows <math|T> and maps
    <math|P<rsub|b>:F<rsub|d>\<to\>F<rsub|d+1>>,
  </itemize-minus>

  <\equation*>
    \<cal-W\><rsub|K><around|[|T,P|]><around|(|q;x|)>=<big|sum><rsub|i=1><rsup|n><around*|[|S<around|(|\<ldots\>,T<rsub|K>*q<rsub|i>,\<ldots\>;x|)>+<big|sum><rsub|b><around|(|K*x<rsub|i>|)><rsub|b>*<space|0.17em>S<around|(|\<ldots\>,P<rsub|b>*q<rsub|i>,\<ldots\>;x|)>|]>,<space|2em>\<cal-W\><rsub|K><around|[|T|]>\<assign\>\<cal-W\><rsub|K><around|[|T,\<partial\>|]>.
  </equation*>

  By the derivative law, <math|\<cal-W\><rsub|K><around|[|T|]>=0> says
  <math|<frac|d|d*t><mid|\|><rsub|0>S<around|(|q;e<rsup|t*K>*x|)>=-<big|sum><rsub|i>S<around|(|\<ldots\>,T<rsub|K>*q<rsub|i>,\<ldots\>;x|)>>.
  This is infinitesimal rotation covariance with spin part <math|T>.

  <\itemize-minus>
    <item><em|Lorentz group.> Axes are numbered <math|0,1,2,3>; axis <math|3>
    is time and <math|0,1,2> are spatial. Write <math|e<rsub|t>=e<rsub|3>>.
    The axis <math|0> used for the continuation in Ÿ4.4 has no distinguished
    physical role.

    <item>All identities hold at separated points. No contact term is
    evaluated.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Inputs.>

  <\itemize-minus>
    <item>The table and its differential plan.

    <item>An unnormalised stress <math|J=<around|(|J<rsub|a*b>|)>>,
    <math|J<rsub|a*b>\<in\>F<rsub|4>>, with complex linear <em|raw
    translation maps> <math|p<rsub|a>:F<rsub|d>\<to\>F<rsub|d+1>> and real
    linear <em|raw spin rows> <math|Y:<with|math-font|Euler|s*o><around|(|4|)>\<to\><math-up|End><space|0.17em>F<rsub|d>>.
    These satisfy the shell identities below with unknown right-hand sides.

    <item>Free-Maxwell comparison data: a free table with its differential
    plan <math|\<partial\><rsup|<math-up|free>>>, rotation action
    <math|R<rsup|<math-up|free>>> with generators
    <math|\<cal-L\><rsup|<math-up|free>><rsub|K>>, stress
    <math|J<rsup|<math-up|free>>> and Ward constant <math|\<kappa\>\<ne\>0>.

    <item>A weak scaling comparison of <math|S> with the free table.
  </itemize-minus>

  The table and differential plan come from IV.1. The stress, shell maps and
  comparison data come from VI.2, using ultraviolet inputs as specified in
  Ÿ2. Every result below assumes the Euclidean axioms for <math|S>, unless it
  is a statement solely about groups or operators.

  <strong|Outputs.> Given the differential plan and the comparison inputs,
  the unit constructs:

  <\itemize-minus>
    <item>an action of <math|O<around|(|4|)>> on every <math|F<rsub|d>> whose
    generators are <math|c<rsup|-1>*Y>;

    <item><math|O<around|(|4|)>>-covariance of <math|S>;

    <item>a conserved, symmetric, real, <math|O<around|(|4|)>>-tensorial
    stress <math|J<rprime|'>> satisfying the Ward identity (13) of the
    assessment and its rotation analogue;

    <item>a Lorentz action on the labels, compatible with the rotation
    action.
  </itemize-minus>

  <strong|Shells and stress laws.> A <em|window> for
  <math|x=<around|(|x<rsub|0>,\<ldots\>,x<rsub|n>|)>\<in\><math-up|Conf><rsub|n+1>>
  is a real function <math|\<chi\>\<in\>C<rsup|\<infty\>><rsub|c><around|(|\<bbb-R\><rsup|4>|)>>
  that equals <math|1> near <math|x<rsub|0>> and whose closed support
  excludes <math|x<rsub|1>,\<ldots\>,x<rsub|n>>. For <math|B\<in\>F<rsub|d>>
  and tags <math|q> at <math|x<rsub|1>,\<ldots\>,x<rsub|n>>, the two shells
  are

  <\equation*>
    \<Phi\><rsup|<math-up|tr>><rsub|\<chi\>><around|(|b|)>=-<big|sum><rsub|a><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<space|0.17em>S<around*|(|J<rsub|a*b><around|(|y|)>,B<around|(|x<rsub|0>|)>,q|)>*<space|0.17em>d*y,<space|2em>\<Phi\><rsup|<math-up|rot>><rsub|\<chi\>><around|(|K|)>=-<big|sum><rsub|a,b><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<space|0.17em><around*|(|K*<around|(|y-x<rsub|0>|)>|)><rsub|b>*<space|0.17em>S<around*|(|J<rsub|a*b><around|(|y|)>,B<around|(|x<rsub|0>|)>,q|)>*<space|0.17em>d*y.
  </equation*>

  The integrands vanish near all insertions. Given maps
  <math|P<rsub|b>:F<rsub|d>\<to\>F<rsub|d+1>> and
  <math|A:<with|math-font|Euler|s*o><around|(|4|)>\<to\><math-up|End><space|0.17em>F<rsub|d>>,
  the triple <math|<around|(|J;P,A|)>> satisfies the <em|stress laws> if

  <\equation*>
    \<Phi\><rsup|<math-up|tr>><rsub|\<chi\>><around|(|b|)>=S<around|(|P<rsub|b>*B<around|(|x<rsub|0>|)>,q|)><space|2em><text|and><space|2em>\<Phi\><rsup|<math-up|rot>><rsub|\<chi\>><around|(|K|)>=S<around|(|A<rsub|K>*B<around|(|x<rsub|0>|)>,q|)>
  </equation*>

  for all windows, all <math|B> and all <math|q>
  (<hlink|<verbatim|Table.StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97>,
  <hlink|<verbatim|shellGrad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L79-L81>,
  <hlink|<verbatim|shellSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L84-L86>,
  <hlink|<verbatim|Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73>).

  <strong|Raw hypotheses (R)> (<hlink|<verbatim|Climb.Pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69>):

  <\itemize-minus>
    <item><math|J> is <em|conserved>: symmetric, <math|\<Gamma\>>-real, and
    <math|<big|sum><rsub|a>\<partial\><rsub|a>*J<rsub|a*b>=0> in
    <math|F<rsub|5>> (<hlink|<verbatim|Conserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L59-L62>);

    <item><math|J> is <em|raw-tensorial>:
    <math|M<rsub|\<sigma\>>*J<rsub|a*b>=<big|sum><rsub|i*j>\<sigma\><rsub|i*a>*\<sigma\><rsub|j*b>*J<rsub|i*j>>
    for <math|\<sigma\>\<in\>B<rsub|4>> (<hlink|<verbatim|RawTensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L68-L70>);

    <item><math|<around|(|J;p,Y|)>> satisfies the stress laws.
  </itemize-minus>

  <strong|Proposition VI.1.1 (collinear rotation Ward identity and line
  sums).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|S> satisfies the Euclidean axioms.

    <item><math|\<partial\>> satisfies the derivative law and orientation.

    <item><math|<around|(|J,p,Y|)>> satisfies (R).
  </itemize-minus>

  <em|Conclusions.>

  <\itemize-minus>
    <item>(i) Let <math|x\<in\><math-up|Conf><rsub|n>> have all its points on
    a coordinate axis <math|\<bbb-R\>*e<rsub|l>>. Then for every
    <math|K\<in\><with|math-font|Euler|s*o><around|(|4|)>> and all tags
    <math|q>: <math|\<cal-W\><rsub|K><around|[|Y,p|]><around|(|q;x|)>=0>.

    <item>(ii) (Line sums.) Let <math|x\<in\><math-up|Conf><rsub|n>> lie on
    <math|\<bbb-R\>*e<rsub|l>>, let <math|j\<neq\>l>, and let
    <math|v<rsub|1>,\<ldots\>,v<rsub|n>\<in\>F<rsub|d>>. Then
    <math|<big|sum><rsub|i>S<around|(|v<rsub|1>,\<ldots\>,p<rsub|j>*v<rsub|i>,\<ldots\>,v<rsub|n>;x|)>=0>.
  </itemize-minus>

  <em|Status:> theorem.

  <\itemize-minus>
    <item>It answers the request <hlink|<verbatim|Bid.Miles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L13-L15>
    through <hlink|<verbatim|Outer.miles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L123>.

    <item>The analytic input is the exterior flux estimate (Lemma VI.1.e). It
    uses reflection positivity and the polynomial bounds, but no mass gap or
    clustering.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Outer.outer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121>,
  <hlink|<verbatim|Bid.LineSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L35-L36>,
  <hlink|<verbatim|Climb.localTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L72-L74>.

  <strong|Proposition VI.1.2 (normalisation of the shell maps:
  <math|p=c*<space|0.17em>\<partial\>>).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|\<partial\>> satisfies all three laws.

    <item>The ultraviolet record holds, in particular (R) and the weak
    comparison law against the free data (input 4 of Ÿ2).

    <item>The free-Maxwell data hold (input 3 of Ÿ2).
  </itemize-minus>

  <em|Conclusion.> There is a real <math|c\<ne\>0>, independent of the degree
  and coordinate axis, such that:

  <\itemize-minus>
    <item><math|p<rsub|a>=c*<space|0.17em>\<partial\><rsub|a>> on every
    <math|F<rsub|d>>, for every <math|a>;

    <item>the rescaled rows <math|D\<assign\>c<rsup|-1>*Y> satisfy

    <\itemize-minus>
      <item>(C) <math|\<partial\><rsub|b>*D<rsub|K>+<big|sum><rsub|i>K<rsub|i*b>*<space|0.17em>\<partial\><rsub|i>=D<rsub|K>*<space|0.17em>\<partial\><rsub|b>>
      on every <math|F<rsub|d>>;

      <item>(L) <math|\<cal-W\><rsub|K><around|[|D|]><around|(|q;x|)>=0> for
      every configuration <math|x> on a coordinate axis.
    </itemize-minus>
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Bid.pressured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L49-L59>,
  <hlink|<verbatim|Bid.formed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L61-L78>;
  the record is <hlink|<verbatim|Climb.Crystal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L83-L87>.

  <strong|Proposition VI.1.3 (rotation Ward identity at all separated
  configurations).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|S> satisfies the Euclidean axioms.

    <item><math|\<partial\>> satisfies the derivative law.

    <item>The spin rows <math|T> satisfy (C) and (L).
  </itemize-minus>

  <em|Conclusion.> <math|\<cal-W\><rsub|K><around|[|T|]><around|(|q;x|)>=0>
  for all <math|n>, all <math|x\<in\><math-up|Conf><rsub|n>>, all tags
  <math|q> and all <math|K>.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Ward.global>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139>;
  the vanishing is <hlink|<verbatim|Ward.Still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L45>;
  the hypotheses are <hlink|<verbatim|Ward.commutes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L29-L30>
  and <hlink|<verbatim|Ward.Collinear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L34-L35>;
  the sum is <hlink|<verbatim|Ward.angular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L25-L27>.

  <strong|Proposition VI.1.4 (<math|<with|math-font|Euler|s*o><around|(|4|)>>
  brackets; A08).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|\<partial\>> satisfies the inclusion and derivative laws.

    <item><math|T> satisfies the conclusion of VI.1.3.

    <item><math|T> is <em|compatible> (<hlink|<verbatim|Bid.Hyper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20>):
    it commutes with <math|\<Gamma\>> and with <math|\<iota\>>, kills
    <math|\<b-1\>>, and <math|M<rsub|\<sigma\>>*T<rsub|K>=T<rsub|\<sigma\>*K*\<sigma\><rsup|-1>>*M<rsub|\<sigma\>>>.

    <item><em|Internal row erasure> holds
    (<hlink|<verbatim|Org.erases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152>).
    That is, for some <math|N> and all <math|d\<geqslant\>N>, let
    <math|\<Delta\>:<with|math-font|Euler|s*o><around|(|4|)>\<times\><with|math-font|Euler|s*o><around|(|4|)>\<to\><math-up|End><space|0.17em>F<rsub|d>>
    be a real bilinear family of complex linear endomorphisms with these
    properties (<hlink|<verbatim|Org.Winds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L141-L146>):

    <\itemize-minus>
      <item>it is covariant under signed permutations of determinant
      <math|1>;

      <item>it is <math|\<Gamma\>>-real;

      <item>it kills <math|\<b-1\>>;

      <item>it is alternating;

      <item>for every <math|e\<leqslant\>d> and <math|u,v>,
      <math|\<Delta\><around|(|u,v|)>> preserves
      <math|\<iota\><rsub|e\<to\>d><around|(|F<rsub|e>|)>>.
    </itemize-minus>

    If moreover <math|<big|sum><rsub|i>S<around|(|w<rsub|1>,\<ldots\>,\<Delta\><around|(|u,v|)>*w<rsub|i>,\<ldots\>,w<rsub|m>;x|)>=0>
    for all <math|m>, all <math|x\<in\><math-up|Conf><rsub|m>>, all
    <math|u,v\<in\><with|math-font|Euler|s*o><around|(|4|)>> and all
    <math|w\<in\>F<rsub|d><rsup|m>>, then <math|\<Delta\>=0>.
  </itemize-minus>

  <em|Conclusion.> <math|<around|[|T<rsub|u>,T<rsub|v>|]>=T<rsub|<around|[|u,v|]>>>
  on every <math|F<rsub|d>>.

  <em|Status:> theorem. Erasure for <math|S> is itself proved (A07, Lemma
  VI.1.q).

  <em|Lean:> <hlink|<verbatim|Work.A08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247>
  for <hlink|<verbatim|Bid.A08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L76-L78>;
  the conclusion is <hlink|<verbatim|Bid.Brackets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L74>.

  <strong|Proposition VI.1.5 (descent of the free rotation action).> Under
  the hypotheses of VI.1.2, let <math|c> be its normalisation constant and
  put <math|D=c<rsup|-1>*Y>.

  <em|Conclusion.> There are complex linear isomorphisms
  <math|V<rsub|d>:F<rsup|<math-up|free>><rsub|d>\<to\>F<rsub|d>> with these
  properties:

  <\itemize-minus>
    <item><math|V<rsub|d>*M<rsup|<math-up|free>><rsub|\<sigma\>>=M<rsub|\<sigma\>>*V<rsub|d>>
    and <math|V<rsub|d>*\<Gamma\><rsup|<math-up|free>>=\<Gamma\>*V<rsub|d>>;

    <item><math|D<rsub|K>*V<rsub|d>=V<rsub|d>*<space|0.17em>\<cal-L\><rsup|<math-up|free>><rsub|K>>
    for all <math|K\<in\><with|math-font|Euler|s*o><around|(|4|)>>.
  </itemize-minus>

  Hence <math|R<rsub|d><around|(|k|)>\<assign\>V<rsub|d>*<space|0.17em>R<rsup|<math-up|free>><rsub|d><around|(|k|)>*<space|0.17em>V<rsub|d><rsup|-1>>,
  <math|k\<in\>O<around|(|4|)>>, is a continuous representation of
  <math|O<around|(|4|)>> on <math|F<rsub|d>>. It equals
  <math|M<rsub|\<sigma\>>> on <math|B<rsub|4>>, commutes with
  <math|\<Gamma\>>, and has infinitesimal generator <math|D>. Call such an
  action, with its specified generators, a <em|rotation port>. The Ward
  identity of VI.1.3 holds for <math|D>.

  <em|Status:> theorem. The <math|V<rsub|d>> are chosen independently for
  each <math|d>. Compatibility with the inclusions comes later (VI.1.6).

  <em|Lean:> <hlink|<verbatim|Climb.descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98>,
  <hlink|<verbatim|Spin.produces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L26-L47>,
  <hlink|<verbatim|Spin.meet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L134-L157>,
  <hlink|<verbatim|Bid.services>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L124-L157>;
  the transported action is <hlink|<verbatim|Spin.morph>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L22-L24>
  and a port is <hlink|<verbatim|Spin.Port>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L13-L19>.

  <strong|Proposition VI.1.6 (covariance and the rotation laws; A14).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|\<partial\>> satisfies the inclusion and derivative laws.

    <item><math|R> is a port with generators <math|T>.

    <item><math|\<cal-W\><rsub|K><around|[|T|]>=0> on all of
    <math|<math-up|Conf>>.
  </itemize-minus>

  <em|Conclusions.>

  <\itemize-minus>
    <item><math|R> is <em|oriented>: <math|S<around|(|R<around|(|k|)>*v<rsub|1>,\<ldots\>,R<around|(|k|)>*v<rsub|n>;k*x<rsub|1>,\<ldots\>,k*x<rsub|n>|)>=S<around|(|v;x|)>>
    for all <math|k\<in\>O<around|(|4|)>> and all
    <math|x\<in\><math-up|Conf><rsub|n>>.

    <item><math|R> satisfies the <em|rotation laws>: it fixes <math|\<b-1\>>;
    it commutes with <math|\<iota\>>; it acts on derivatives as a vector,
    <math|R<rsub|d+1><around|(|k|)>*<space|0.17em>\<partial\><rsub|a>*v=<big|sum><rsub|i>k<rsub|i*a>*<space|0.17em>\<partial\><rsub|i>*R<rsub|d><around|(|k|)>*v>;
    and it keeps the port properties.
  </itemize-minus>

  <em|Status:> theorem. It uses A13: <math|O<around|(|4|)>> is generated by
  <math|B<rsub|4>> and the one-parameter groups <math|e<rsup|t*K>>.

  <em|Lean:> <hlink|<verbatim|Work.A14.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420>
  for <hlink|<verbatim|Bid.A14>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L105-L107>;
  <hlink|<verbatim|Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>,
  <hlink|<verbatim|Rotation.Oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48>;
  <hlink|<verbatim|Work.A13.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200>.

  <strong|Proposition VI.1.7 (the averaged stress tensor and the Ward
  identity (13); A15).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|\<partial\>> satisfies the derivative law.

    <item><math|R> is a rotation action satisfying the rotation laws, and
    <math|R> is oriented.

    <item><math|p=c*<space|0.17em>\<partial\>> with <math|c\<neq\>0>, and
    <math|<around|(|J,p,Y|)>> satisfies (R).

    <item>The generators of <math|R> are <math|c<rsup|-1>*Y>.
  </itemize-minus>

  <em|Conclusion.> There is a stress <math|J<rprime|'>> with these
  properties:

  <\itemize-minus>
    <item>it is conserved, i.e. symmetric, real and divergence-free;

    <item>it is <em|tensorial>: <math|R<rsub|4><around|(|k|)>*J<rprime|'><rsub|a*b>=<big|sum><rsub|i*j>k<rsub|i*a>*k<rsub|j*b>*J<rprime|'><rsub|i*j>>
    for all <math|k\<in\>O<around|(|4|)>>;

    <item><math|<around|(|J<rprime|'>;\<partial\>,c<rsup|-1>*Y|)>> satisfies
    the stress laws.
  </itemize-minus>

  The translation law is the Ward identity (13):

  <\equation*>
    -<big|sum><rsub|a><big|int>\<partial\><rsub|a>*\<chi\><around|(|y|)>*<space|0.17em>S<around*|(|J<rprime|'><rsub|a*b><around|(|y|)>,B<around|(|x<rsub|0>|)>,q|)>*<space|0.17em>d*y=<frac|\<partial\>|\<partial\>*x<rsub|0><rsup|b>>*S<around*|(|B<around|(|x<rsub|0>|)>,q|)>.
  </equation*>

  <em|Status:> theorem. It uses A10.

  <em|Lean:> <hlink|<verbatim|Work.A15.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192>
  for <hlink|<verbatim|Bid.A15>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L109-L112>;
  <hlink|<verbatim|Table.Tensorial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L64-L66>.

  <strong|Proposition VI.1.8 (Lorentz action on the labels).> For (b)\U(c),
  assume the hypotheses of VI.1.2 and choose <math|V<rsub|d>>, <math|R> and
  <math|J<rprime|'>> as in VI.1.5\U7.

  <em|(a)> <math|S*O<rsup|+><around|(|1,3|)>> is generated by the spatial
  rotations and the coordinate boosts (A16).

  <em|(b)> Let <math|B<rsup|<math-up|free>>> be the Lorentz action on the
  free labels, which is part of the free data. Let
  <math|B<rsub|d><around|(|\<Lambda\>|)>=V<rsub|d>*B<rsup|<math-up|free>><rsub|d><around|(|\<Lambda\>|)>*V<rsub|d><rsup|-1>>.
  Then <math|B<rsub|e><around|(|\<Lambda\>|)>*<space|0.17em>\<iota\>=\<iota\>*<space|0.17em>B<rsub|d><around|(|\<Lambda\>|)>>
  for all <math|d\<leqslant\>e> and <math|\<Lambda\>\<in\>S*O<rsup|+><around|(|1,3|)>>
  (A17).

  <em|(c)> The compatible actions <math|B<rsub|d>> define a representation on
  the union of the label spaces. For every degree <math|d> and spatial axis
  <math|i>:

  <\itemize-minus>
    <item>the action on <math|F<rsub|d>> is continuous;

    <item><math|<frac|d|d*s><mid|\|><rsub|s=0>B<rsub|d><around|(|<math-up|boost><rsub|i><around|(|s|)>|)>*v=-i*<space|0.17em>D<rsub|K<rsup|<around|(|3*i|)>>>*v>
    for every <math|v\<in\>F<rsub|d>>;

    <item><math|B<rsub|d>> equals <math|R<rsub|d>> on spatial rotations;

    <item><math|B<rsub|d>> commutes with the time-reflection adjoint
    <math|M<rsub|\<theta\><rsub|t>>*\<Gamma\>>, where
    <math|\<theta\><rsub|t>> reverses the time coordinate.
  </itemize-minus>

  <em|Status:> theorems.

  <em|Lean:> <hlink|<verbatim|Work.A16.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101>
  for <hlink|<verbatim|Bid.A16>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L116>;
  <hlink|<verbatim|Work.A17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L88-L101>
  for <hlink|<verbatim|Bid.A17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L118-L119>;
  <hlink|<verbatim|Spin.wand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L24-L25>,
  <hlink|<verbatim|Spin.reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L39-L74>,
  <hlink|<verbatim|Boundary.Spins.Descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35>.

  <strong|Proposition VI.1.9 (the assembled record).> Let the free data, the
  infrared triple <math|<around|(|J,p,Y|)>> and the ultraviolet record be as
  in Ÿ2 (inputs 3\U4). Then the six assembly clauses hold: compatibility of
  the raw maps, their normalisation, descent of rotations, covariance,
  normalisation and averaging of the stress, and compatibility of the Lorentz
  action with inclusions.

  Hence, if <math|\<partial\>> satisfies the inclusion and derivative laws,
  there exist <math|c>, <math|<around|(|V<rsub|d>|)>> and <math|J<rprime|'>>
  such that the following local field laws hold:

  <\itemize-minus>
    <item>the normalisation of VI.1.2 for <math|c>;

    <item><math|V<rsub|d>> intertwines <math|M> and <math|\<Gamma\>>;

    <item><math|R=V*R<rsup|<math-up|free>>*V<rsup|-1>> with generators
    <math|c<rsup|-1>*Y> is a port;

    <item>the three plan laws; the rotation laws and orientation of <math|R>;
    each <math|F<rsub|d>> is isomorphic to
    <math|F<rsup|<math-up|free>><rsub|d>> compatibly with <math|M> and
    <math|\<Gamma\>>; and <math|J<rprime|'>> is conserved, tensorial and
    satisfies the stress laws with <math|<around|(|\<partial\>,c<rsup|-1>*Y|)>>.
  </itemize-minus>

  There is also a Lorentz action descending from <math|R> (VI.1.8(c)).

  <em|Status:> theorem conditional on the inputs in Ÿ2. Their production uses
  VI.2 and the ultraviolet units; VIII.1 assembles the resulting local field
  laws with the phase and reconstruction data.

  <em|Lean:> <hlink|<verbatim|Outer.commission>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS.lean#L126-L131>,
  <hlink|<verbatim|Bid.station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168>,
  <hlink|<verbatim|Org.Commission>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L29-L43>,
  <hlink|<verbatim|Commission.picks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L45-L53>,
  <hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>,
  <hlink|<verbatim|Spec.Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\enumerate>
    <item><strong|IV.1 (limit table and differential plan).>

    <\itemize-minus>
      <item>The Euclidean axioms <hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>.

      <item>The plan laws <hlink|<verbatim|DiffPlan.Derivatives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64>,
      <hlink|<verbatim|Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>
      and <hlink|<verbatim|Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>.

      <item>Also: <math|\<partial\><rsub|a>*\<partial\><rsub|b>=\<partial\><rsub|b>*\<partial\><rsub|a>>;
      injectivity of <math|\<iota\>>; the unique lift of compatible maps to
      the union of label spaces.
    </itemize-minus>

    <item><strong|V.1 (OS chambers).>

    <\itemize-minus>
      <item>For each coordinate axis there is the Osterwalder\USchrader
      Hilbert space of reflection in <math|<around|{|x<rsub|a>=0|}>>
      (<hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>).
      It carries a self-adjoint contraction semigroup <math|e<rsup|-t*H>>,
      the unitary translations parallel to the hyperplane, and their joint
      spectral measure.

      <item>It is built from the axioms by
      <hlink|<verbatim|OS.realization>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107>,
      so it is not an assumption.
    </itemize-minus>

    <item><strong|VI.2 (free-Maxwell data)>
    <hlink|<verbatim|Org.MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>:

    <\itemize-minus>
      <item>a free table with its axioms;

      <item>free comparison data (<hlink|<verbatim|Climb.Lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29>),
      i.e. <math|<around|(|\<partial\><rsup|<math-up|free>>,R<rsup|<math-up|free>>,J<rsup|<math-up|free>>,\<kappa\>\<ne\>0|)>>,
      with laws <hlink|<verbatim|Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>:

      <\itemize-minus>
        <item>plan laws;

        <item>rotation laws and orientation;

        <item>stress laws for <math|<around|(|J<rsup|<math-up|free>>;\<kappa\>*\<partial\><rsup|<math-up|free>>,\<kappa\>*\<cal-L\><rsup|<math-up|free>>|)>>;

        <item><math|\<partial\><rsup|<math-up|free>>> is nonzero on
        <math|F<rsup|<math-up|free>><rsub|4>>;

        <item>at every sufficiently large degree, finitely many collinear
        readouts whose common kernel within the free vector-map space is
        <math|\<bbb-R\>*\<partial\><rsup|<math-up|free>>>;
      </itemize-minus>

      <item>a free Lorentz action <math|B<rsup|<math-up|free>>> descending
      from <math|R<rsup|<math-up|free>>>;

      <item>the perfect commutator relations among the free generators;

      <item>Casimir projection polynomials;

      <item>free row erasure.
    </itemize-minus>

    The free-data producer <hlink|<verbatim|Maxwell.Free.maxwell_supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48>
    and its stress replacement <hlink|<verbatim|FreeStress.fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150>
    are supplied in VI.2. A12 and A10+A09 give the Casimir polynomials and
    the generator relations. These free-data producers assume <math|G>
    simple.

    <item><strong|VI.2 and III.11 (raw stress, shell maps and weak
    comparison).>

    <\itemize-minus>
      <item><hlink|<verbatim|Org.IR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175>
      is the triple <math|<around|(|J,p,Y|)>>.

      <item><hlink|<verbatim|Org.UV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186>
      contains the lattice and extraction data, corrected-field bounds and
      Euclidean axioms for <math|S>; orientation of <math|\<partial\>>; (R);
      the <em|weak action law>; and grid approximations.

      <item>The weak action law <hlink|<verbatim|Climb.ActLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51>
      says: for every arity bound <math|N>, degree bound <math|d>, derivative
      bound <math|m> and <math|R\<geqslant\>1>, there is a <em|scaling
      system> <math|X=<around|(|r<rsub|k>*\<downarrow\>*0,\<xi\><rsub|k>\<gtr\>0,U<rsub|k,e>:F<rsup|<math-up|free>><rsub|e>\<to\>F<rsub|e>|)>>
      (<hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>)
      with a <em|track> (<hlink|<verbatim|Climb.Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48>):

      <\itemize-minus>
        <item>every <math|U<rsub|k,e>> is a complex linear isomorphism; for
        <math|e\<leqslant\>max <around|(|d,4|)>> it intertwines <math|M>,
        <math|\<Gamma\>> and the unit, and these maps respect inclusions
        within that degree range;

        <item>for <math|n\<leqslant\>N>, labels of degree at most <math|d>,
        and <math|j\<leqslant\>m>, <math|D<rsub|y><rsup|j>*S<around|(|U<rsub|k>*v;r<rsub|k>*y|)>\<to\>D<rsup|j>*S<rsup|<math-up|free>><around|(|v;y|)>>
        uniformly on the compact set <math|<around|\<\|\|\>|y|\<\|\|\>>\<leqslant\>R>
        with pairwise maximum-norm separation at least <math|R<rsup|-1>>;

        <item><math|\<xi\><rsub|k><rsup|-1>*r<rsub|k><rsup|4>*<space|0.17em>U<rsub|k,4><rsup|-1>*J<rsub|a*b>\<to\>J<rsup|<math-up|free>><rsub|a*b>>
        for every <math|a,b>.
      </itemize-minus>

      <item>The scaling system may depend on all four bounds. Any finite
      collection of requests can be combined by increasing them.

      <item>The conserved-current construction produces the raw stress; the
      annular-field construction supplies its shell maps. The immediate
      suppliers are <hlink|<verbatim|Acme.readyA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30>
      and <hlink|<verbatim|Acme.shells_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63>.
      They provide the weak comparison and shell laws for this same stress.
    </itemize-minus>

    <item><strong|VIII.1 (assembly).> Combines the local field laws obtained
    here with the phase decomposition and reconstruction.
  </enumerate>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Ward identities for a conserved symmetric stress tensor: the flux
    of <math|J<rsub|a*b>*V<rsub|b>> through a closed shell, for a Killing
    field <math|V> (Noether; e.g. Itzykson\UZuber Ÿ2-4).

    <item>Osterwalder\USchrader reconstruction and the transfer operator
    along a coordinate axis (Osterwalder\USchrader 1973/1975; Glimm\UJaffe,
    <em|Quantum Physics>, ch. 6 and 19). Spectral theorem and Laplace
    representations.

    <item>Analytic vectors (Nelson, Ann. of Math. 1959). Holomorphic
    contraction semigroups (Reed\USimon II). Formal uniqueness at a
    noncharacteristic line (as proved in VI.1.m). Identity theorem for
    real-analytic functions.

    <item>Representation theory:

    <\itemize-minus>
      <item>Haar measure and Weyl's unitarian trick;

      <item>the Casimir element;

      <item>McWeeny purification <math|x\<mapsto\>3*x<rsup|2>-2*x<rsup|3>> of
      approximate idempotents (Rev. Mod. Phys. 1960).
    </itemize-minus>

    <item>Groups and ODEs:

    <\itemize-minus>
      <item>Cartan\UDieudonné (<math|O<around|(|n|)>> is generated by
      reflections; Mathlib);

      <item>Givens rotations;

      <item>generation of <math|S*O<rsup|+><around|(|1,3|)>> by rotations and
      boosts;

      <item>Picard\ULindelöf uniqueness.
    </itemize-minus>
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item><math|\<kappa\>\<neq\>0> comes from the chosen free data. The
    initial free-data constructor has <math|\<kappa\>=-\<tau\>>; the stress
    replacement used in assembly supplies a common nonzero Ward constant
    without identifying its numerical value.

    <item><math|c> is determined by <math|p=c*<space|0.17em>\<partial\>>.
    Along scaling systems satisfying the degree-<math|4> requests in VI.1.g,
    <math|c/\<xi\><rsub|k>\<to\>\<kappa\>> (Lemma VI.1.u).

    <item>The flux estimate uses <math|\<lambda\><rsub|k>=e<rsup|k>> and the
    exponents <math|100,150,300,3000>. These are internal choices.

    <item>Inputs 3\U4 are hypotheses of the assembly theorem; their existence
    is supplied by the units cited above.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Conservation and the raw shell laws make the maps <math|p> and <math|Y>
  compatible with inclusions, conjugation and signed permutations. Moving the
  center inside a fixed window gives their commutators with derivatives. To
  obtain a global rotation identity on a coordinate line, test the stress
  against a compact vector field that equals the rotation field near the
  insertions. Its cutoff has widths <math|\<lambda\><rsup|100>> in the
  rotation plane, <math|\<lambda\><rsup|150>> in the line direction if that
  direction is transverse to the plane, and <math|\<lambda\><rsup|300>> in
  the remaining directions. Two derivative terms cancel by symmetry of the
  stress. Reflection positivity and spectral estimates make the remaining
  exterior flux <math|O<around|(|\<lambda\><rsup|-1>|)>>, so the collinear
  angular sum vanishes. Translation along the line then gives the transverse
  translation sums.

  The free comparison identifies <math|p=c*\<partial\>>: finitely many
  collinear tests have a one-dimensional kernel in the free vector-map space,
  and this rank condition persists along a sufficiently accurate scaling
  system. Dividing by <math|c> gives the collinear Ward identity for
  <math|D=c<rsup|-1>*Y>. Its derivatives determine the transverse Taylor
  series of each two-point function from an explicit analytic comparison
  function built from radial correlations. Positivity turns the resulting
  bounds on Gram-kernel jets into factorial bounds for derivatives of the
  corresponding OS vectors. Correlations are therefore analytic when one
  insertion moves while remaining extreme in some coordinate. The Ward
  identity propagates along finite chains of these moves; density gives it at
  every separated configuration.

  Differentiating the global Ward identity twice gives the
  <math|<with|math-font|Euler|s*o><around|(|4|)>> brackets, after row erasure
  is transported from the free theory. A relative-Casimir polynomial and
  McWeeny iteration produce exact intertwiners with the free rotation
  generators. Transporting the free action through them gives
  <math|O<around|(|4|)>> actions on each degree. The Ward identity implies
  covariance, which in turn gives compatibility with inclusions, the unit and
  derivatives. Haar averaging of <math|c<rsup|-1>*J> gives the tensorial
  stress <math|J<rprime|'>> without changing its Ward laws. The free Lorentz
  action is transported through the same intertwiners; uniqueness for the
  boost ODEs makes it compatible across degrees.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Local structure of the raw shell maps
  (A01\UA03)><label|41-local-structure-of-the-raw-shell-maps-a01a03>

  <strong|Lemma VI.1.a (A01: compatibility).> Assume (R), the derivative law
  and the inclusion law. Then:

  <\itemize-minus>
    <item><math|p> lies in the <em|colour space>
    (<hlink|<verbatim|Climb.ColorLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L89-L91>):
    <math|p<rsub|i>*\<b-1\>=0>; <math|p> commutes with <math|\<iota\>> and
    <math|\<Gamma\>>; <math|M<rsub|\<sigma\>>*p<rsub|i>=<big|sum><rsub|j>\<sigma\><rsub|j*i>*<space|0.17em>p<rsub|j>*M<rsub|\<sigma\>>>.

    <item><math|Y> is compatible (<hlink|<verbatim|Bid.Hyper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20>).
  </itemize-minus>

  <em|Proof sketch.> Each identity is tested against all words in a fixed
  window. The shells are fluxes of <math|J> against
  <math|\<partial\>*\<chi\>\<otimes\>V>, with <math|V\<equiv\>e<rsub|i>> for
  <math|p> and <math|V<around|(|y|)>=K*<around|(|y-x<rsub|0>|)>> for
  <math|Y>.

  <\itemize-minus>
    <item><em|Unit.> If the label at the centre is <math|\<b-1\>>, the unit
    axiom deletes that insertion. Integrating by parts against <math|\<chi\>>
    gives <math|<big|int>\<chi\><space|0.17em><math-up|div><around*|(|<big|sum><rsub|b>V<rsub|b>*S<around|(|J<rsub|a*b><around|(|y|)>,\<ldots\>|)>|)>>,
    and this vanishes. Conservation handles one term. The Killing property
    (<math|\<partial\><rsub|a>*V<rsub|b>> antisymmetric) together with
    <math|J<rsub|a*b>=J<rsub|b*a>> handles the other.

    <item><em|Mirrors.> Substitute <math|y\<mapsto\>\<sigma\>*y> and use the
    window <math|\<chi\>\<circ\>\<sigma\><rsup|-1>> at <math|\<sigma\>*x>.
    Then use <math|B<rsub|4>>-covariance of <math|S>, raw tensoriality of
    <math|J>, and <math|\<sigma\>*K*<around|(|\<sigma\><rsup|-1>\<cdot\>|)>=<around|(|\<sigma\>*K*\<sigma\><rsup|-1>|)>\<cdot\>>.

    <item><em|Reality.> Reality of <math|S> and <math|J>, and the weights are
    real.

    <item><em|Inclusions.> The inclusion law inside the integrand.

    <item>The orientation hypothesis is not used.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L115-L117>,
  <hlink|<verbatim|translation_color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L27-L76>,
  <hlink|<verbatim|angular_hyper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L78-L112>,
  <hlink|<verbatim|cutoff_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L154-L181>,
  <hlink|<verbatim|flux_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L183-L203>,
  <hlink|<verbatim|flux_mirror>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Mirror.lean#L161-L194>.

  <strong|Lemma VI.1.b (A02: moving the centre).> Assume (R) and the
  derivative law. Then

  <\equation*>
    \<partial\><rsub|b>*Y<rsub|K>*u+<big|sum><rsub|c>K<rsub|c*b>*<space|0.17em>p<rsub|c>*u=Y<rsub|K>*<space|0.17em>\<partial\><rsub|b>*u<space|2em><text|and><space|2em>\<partial\><rsub|b>*<space|0.17em>p<rsub|i>=p<rsub|i>*<space|0.17em>\<partial\><rsub|b>
  </equation*>

  on every <math|F<rsub|d>> (<hlink|<verbatim|Bid.ShellCom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L27-L29>).

  <em|Proof sketch.> Keep <math|\<chi\>> fixed and move the centre to
  <math|x<rsub|0>+t*e<rsub|b>>; for small <math|t>, <math|\<chi\>> is still a
  window. Differentiate both shell laws at <math|t=0>.

  <\itemize-minus>
    <item>The right-hand sides give <math|S*<around|(|\<partial\><rsub|b>*Y<rsub|K>*B|)>>
    and <math|S*<around|(|\<partial\><rsub|b>*p<rsub|i>*B|)>>, by the
    derivative law.

    <item>On the left, the kernel's <math|t>-derivative replaces <math|B> by
    <math|\<partial\><rsub|b>*B>. The weight
    <math|K*<around|(|y-x<rsub|0>-t*e<rsub|b>|)>> contributes
    <math|-<big|sum><rsub|c>K<rsub|c*b>> times the translation shell.

    <item>Differentiation under the integral is dominated on
    <math|<math-up|supp><space|0.17em>\<nabla\>*\<chi\>\<times\><around|[|-r,r|]>>,
    so no near-diagonal behaviour is needed.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307>,
  <hlink|<verbatim|deriv_shellSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L213-L259>,
  <hlink|<verbatim|stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L37-L48>.

  <strong|Lemma VI.1.c (A03: transversality).> Assume the plan laws, the
  colour law for <math|p>, the second identity of VI.1.b, and the line sums
  of VI.1.1(ii). Then <math|p> and <math|\<partial\>> are <em|transverse>
  (<hlink|<verbatim|Climb.transverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L57>).
  That is: for <math|x\<in\><math-up|Conf><rsub|n>> on
  <math|\<bbb-R\>*e<rsub|a>>, <math|b\<neq\>a> and
  <math|v\<in\>F<rsub|d><rsup|n>>, the function
  <math|y\<mapsto\><big|sum><rsub|k>S<around|(|v<rsub|1>,\<ldots\>,P<rsub|b>*v<rsub|k>,\<ldots\>,v<rsub|n>;y|)>>
  has vanishing jet of every order at <math|x>, for <math|P=p> and for
  <math|P=\<partial\>>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>The inclusion law extends the line sums to labels of mixed degree.

    <item>By <math|\<partial\>*p=p*<space|0.17em>\<partial\>> and the
    derivative law, a derivative of such a row sum in a direction
    <math|e<rsub|k,c>> is the same kind of row sum with
    <math|\<partial\><rsub|c>> inserted at slot <math|k>. Induction on the
    order, quantified over all words, reduces every jet to a line sum at
    <math|x>.

    <item>For <math|\<partial\>>, the line sum is translation invariance, and
    the colour law is <hlink|<verbatim|Climb.native>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L93-L96>,
    which uses orientation.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L197-L202>,
  <hlink|<verbatim|all_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L51-L80>,
  <hlink|<verbatim|row_D>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L83-L103>,
  <hlink|<verbatim|full_jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L152-L186>.

  <subsection|4.2 The collinear Ward identity><label|42-the-collinear-ward-identity>

  <strong|Lemma VI.1.d (flux identity).> Assume (R) and the derivative law.
  Let <math|x\<in\><math-up|Conf><rsub|n>> and
  <math|K\<in\><with|math-font|Euler|s*o><around|(|4|)>>. Let <math|F> be a
  smooth compactly supported vector field that equals <math|y\<mapsto\>K*y>
  near every <math|x<rsub|i>>. Then

  <\equation*>
    \<cal-W\><rsub|K><around|[|Y,p|]><around|(|q;x|)>=-<big|int><big|sum><rsub|a,b>\<partial\><rsub|a>*F<rsub|b><around|(|y|)>*<space|0.17em>S<around*|(|J<rsub|a*b><around|(|y|)>,q;x|)>*<space|0.17em>d*y.
  </equation*>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Choose disjoint windows <math|\<chi\><rsub|i>> around the
    <math|x<rsub|i>>, and split <math|F=<around|(|F-u|)>+u> with
    <math|u=<big|sum><rsub|i>\<chi\><rsub|i>*<space|0.17em>K<around|(|\<cdummy\>|)>>.

    <item>The flux of <math|F-u> vanishes: it is a sum of constant-field
    fluxes against a cutoff supported away from all points, which are zero by
    conservation (as in VI.1.a).

    <item>For <math|u>, write <math|\<partial\><rsub|a>*<around|(|\<chi\><rsub|i>*K*y|)><rsub|b>=\<partial\><rsub|a>*\<chi\><rsub|i>*<space|0.17em><around|(|K*y|)><rsub|b>+\<chi\><rsub|i>*K<rsub|b*a>>.
    The second term pairs to zero with the symmetric <math|J>.

    <item>In the first term, write <math|K*y=K*<around|(|y-x<rsub|i>|)>+K*x<rsub|i>>.
    These produce, at <math|x<rsub|i>>, the rotation shell and
    <math|<around|(|K*x<rsub|i>|)><rsub|b>> times the translation shell. Use
    permutation symmetry to place <math|x<rsub|i>> in the first slot.

    <item>The shell laws turn these into the two terms of <math|\<cal-W\>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Outer.flux_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113>,
  <hlink|<verbatim|sands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L40-L64>,
  <hlink|<verbatim|paid_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L66-L82>.

  <strong|Lemma VI.1.e (exterior flux estimate).> Fix data and cutoff field
  as follows.

  <\itemize-minus>
    <item>Fix axes <math|a\<neq\>b> and a line direction <math|l>. Put
    <math|\<lambda\>=\<lambda\><rsub|k>=e<rsup|k>>, with
    <math|k\<to\>\<infty\>>.

    <item>Let <math|\<eta\>> be an even smooth bump equal to <math|1> on
    <math|<around|\||s|\|>\<leqslant\>1> and zero for
    <math|<around|\||s|\|>\<geqslant\>2>, and put
    <math|\<ell\><around|(|s|)>=s*\<eta\><around|(|s|)>>. Then <math|\<ell\>>
    is odd and equals <math|s> on <math|<around|\||s|\|>\<less\>1>. Its
    derivative <math|\<ell\><rprime|'>> is even, compactly supported and
    equal to <math|1> on <math|<around|\||s|\|>\<less\>1>.

    <item>Put <math|<math-up|petal><rsub|a*b><around|(|y|)>=\<lambda\><rsup|100>*<space|0.17em>\<ell\>*<around|(|\<lambda\><rsup|-100>*y<rsub|a>|)>*<big|prod><rsub|j\<ne\>a>\<ell\><rprime|'>*<around|(|\<lambda\><rsup|c<rsub|j>>*y<rsub|j>|)>>,
    with <math|c<rsub|j>=-100> for <math|j\<in\><around|{|a,b|}>>,
    <math|c<rsub|l>=-150> if <math|l\<nin\><around|{|a,b|}>>, and
    <math|c<rsub|j>=-300> otherwise.
  </itemize-minus>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|J> is conserved and raw-tensorial.

    <item><math|\<partial\>> satisfies the derivative law and orientation.

    <item><math|x\<in\><math-up|Conf><rsub|n>> lies on
    <math|\<bbb-R\>*e<rsub|l>>.

    <item><math|d\<neq\>a>.
  </itemize-minus>

  <em|Conclusion.> For every fixed tuple of tags <math|q>, the integrand is
  absolutely integrable for all sufficiently large <math|k>, and
  <math|<big|int>\<partial\><rsub|d><space|0.17em><math-up|petal><rsub|a*b><around|(|y|)>*<space|0.17em>S<around*|(|J<rsub|d*b><around|(|y|)>,q;x|)>*<space|0.17em>d*y=O<around|(|\<lambda\><rsup|-1>|)>>.
  The constant may depend on the tags, configuration, axes and stress, but
  not on <math|k>. The integrand is supported in the exterior shell
  <math|\<lambda\><rsup|-c<rsub|d>>\<leqslant\><around|\||y<rsub|d>|\|>\<leqslant\>2*\<lambda\><rsup|-c<rsub|d>>>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Cluster form.> Off the insertions,
    <math|S<around|(|J<rsub|d*b><around|(|y|)>,q;x|)>=<around|\<langle\>|<wide|B|\<bar\>>;J<rsub|d*b><around|(|y|)>|\<rangle\>>>.
    Here <math|B> is the reflected word of the collinear insertions. Its
    insertion points have transverse coordinates <math|0>
    (<hlink|<verbatim|collimated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L84-L103>).

    <item><em|Parity.> Decompose <math|B> into components of definite
    reflection parity in each axis. Only the component odd in <math|a> and
    <math|b> survives integration against the test
    (<hlink|<verbatim|Yard.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean>:
    <hlink|<verbatim|pick_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77>).

    <item><em|Laplace representation.> Represent the correlation through the
    OS space of axis <math|d>. Because the test vanishes for
    <math|<around|\||y<rsub|d>|\|>\<less\>\<lambda\><rsup|-c<rsub|d>>>, the
    <math|y<rsub|d>>-integral becomes a Laplace transform. Its time factor
    satisfies <math|<around|\||<math-up|Lap><around|(|E|)>|\|>\<leqslant\>C*\<lambda\><rsup|c<rsub|d>>/<around|(|E+\<lambda\><rsup|c<rsub|d>>|)>>,
    paired with the polarised spectral measure
    <math|\<nu\><rsub|d><around|(|B,J<rsub|d*b>|)>> of the transfer operator
    (<hlink|<verbatim|YM/Axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis>;
    <hlink|<verbatim|exterior_size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120>).

    <item><em|Outside the low box.> Where <math|E\<gtr\>1> or some
    <math|<around|\||p<rsub|j>|\|>\<gtr\>\<lambda\><rsup|1+c<rsub|j>>>, the
    contribution is <math|O<around|(|\<lambda\><rsup|-\<infty\>>|)>>. This
    uses only Schwartz decay of the profiles and the zeroth moment.

    <item><em|Inside the box.> A weighted Cauchy\USchwarz (Young) inequality
    splits the bound between <math|\<nu\><rsub|d><around|(|B|)>> and
    <math|\<nu\><rsub|d><around|(|J<rsub|d*b>|)>>.

    <item><em|Shear case <math|d\<nin\><around|{|a,b|}>>.>

    <\itemize-minus>
      <item>The line cost of the cluster is
      <math|<big|int><rsub|E\<leqslant\>1><around|(|E+\<lambda\><rsup|-3000>|)><rsup|-1>*<big|prod><rsub|j>h<rsub|j>*<space|0.17em>d*\<nu\><rsub|d><around|(|B|)>=O<around|(|\<lambda\><rsup|1>|)>>
      for <math|d=l>, and <math|O<around|(|\<lambda\><rsup|150>|)>>
      otherwise.

      <item>The point cost <math|<big|int><rsub|E\<leqslant\>1><around|(|E+\<lambda\><rsup|c<rsub|d>>|)><rsup|-1>*<big|prod><rsub|j>h<rsub|j>*<space|0.17em>d*\<nu\><rsub|d><around|(|J|)>=O<around|(|\<lambda\><rsup|\<delta\>>|)>>
      holds for every <math|\<delta\>\<gtr\>0>.

      <item>Here <math|h<rsub|j>> are fixed nonnegative even smooth bumps,
      rescaled in <math|L<rsup|1>> at widths
      <math|\<lambda\><rsup|1+c<rsub|j>>>; products run over <math|j\<ne\>d>.

      <item>Before multiplication by the prefactor
      <math|\<lambda\><rsup|100>> in the cutoff, the exponent is at most
      <math|-146>.
    </itemize-minus>

    <item><em|Diagonal case <math|d=b>.>

    <\itemize-minus>
      <item><math|J<rsub|b*b>> is even in every axis, so the mixed-parity
      point estimate does not apply. Split at
      <math|E=\<lambda\><rsup|-3000>>.

      <item>Above the split, the cluster's line cost is paired with the
      <em|mass estimate> <math|<big|int><rsub|E\<leqslant\>1>E*W<rsup|4>*<around|(|E+W|)><rsup|-4>*<big|prod>h<rsub|j>*<space|0.17em>d*\<nu\><rsub|b><around|(|J<rsub|b*b>|)>=O<around|(|\<lambda\><rsup|\<delta\>>*W<rsup|4>|)>>
      for every <math|\<delta\>\<gtr\>0>, at <math|W=\<lambda\><rsup|-99>>.

      <item>Below the split, the packet estimate gains
      <math|\<lambda\><rsup|-1500>>; the line estimate then suffices with a
      polynomial bound on the stress measure.
    </itemize-minus>

    <item><em|Point cost.> Proved by a <em|sign alternation>. The same
    Euclidean integral is a positive spectral pairing along one axis and
    minus a positive pairing along an axis of opposite parity.
    Moment-subtracted profiles have Laplace responses bounded below by
    <math|c/<around|(|E+w|)>> down to <math|E=0>. Walking through the axes,
    with orders chosen backwards, moves every profile to scale
    <math|\<geqslant\>1> at subpower cost. These estimates also control the
    contribution at zero energy and require no spectral gap.

    <item><em|Moment bounds.> For an axis-pointlike weight,
    <math|<big|int>e<rsup|-t*E><around|\||p<rsub|j>|\|><rsup|2*m>*<space|0.17em>d*\<nu\>\<leqslant\>C*t<rsup|-D>>
    for <math|0\<less\>t\<leqslant\>1> and <math|j\<ne\>d>. The polynomial
    kernel bounds give this estimate by finite differences. Shifted cluster
    weights have analogous damped moment estimates.

    <item><em|Mass estimate.> Uses conservation in tested form. Tested
    conservation relates the contact-normalised two-point symbols by
    <math|B=p<rsub|i><rsup|2>*A+D<rsub|B>> and
    <math|C=p<rsub|i><rsup|2>*B+D<rsub|C>>. Contact terms vanish on tests
    with enough zero moments; the remaining error estimates enter after
    normalisation by the band widths. Positivity gives alternating signs for
    the three residual band differences. Comparing the bands <math|W> and
    <math|2*W> bounds the positive residual, which dominates the displayed
    mass integral.

    <item>The mass estimate uses conservation, the derivative law and
    orientation. Raw tensoriality supplies the parities. Combining the two
    spectral regions gives <math|O<around|(|\<lambda\><rsup|-101>|)>> before
    the prefactor <math|\<lambda\><rsup|100>>, and hence the stated
    <math|O<around|(|\<lambda\><rsup|-1>|)>> bound.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Outer.blows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114>,
  <hlink|<verbatim|point_moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L228-L243>,
  <hlink|<verbatim|alternate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Switch.lean#L145-L160>,
  <hlink|<verbatim|budget_lock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Pivot.lean#L59-L72>;
  the cutoff profile is defined in <hlink|<verbatim|Patch.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean>;
  the line and point estimates are in <hlink|<verbatim|Tunnel.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean>
  and the mass estimate is in <hlink|<verbatim|Mass.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean>.
  <em|(proof read for the reduction and combination of the spectral
  estimates; supporting analytic inputs remain as listed in Ÿ7)>

  <strong|Lemma VI.1.f (collinear identity and line sums).> This is
  Proposition VI.1.1.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Take <math|F=<math-up|vane><rsub|a*b>>, with
    <math|F<rsub|b>=<math-up|petal><rsub|a*b>>,
    <math|F<rsub|a>=-<math-up|petal><rsub|b*a>> and <math|F<rsub|d>=0>
    otherwise. For sufficiently large cutoff index it equals the Killing
    field of <math|K<rsup|<around|(|b*a|)>>> near every <math|x<rsub|i>>.

    <item>In the flux of VI.1.d, the diagonal terms
    <math|\<partial\><rsub|a><math-up|petal><rsub|a*b><space|0.17em>J<rsub|a*b>>
    and <math|\<partial\><rsub|b><math-up|petal><rsub|b*a><space|0.17em>J<rsub|b*a>>
    cancel identically, since <math|\<partial\><rsub|a><math-up|petal><rsub|a*b>=\<partial\><rsub|b><math-up|petal><rsub|b*a>>
    and <math|J> is symmetric. What remains is a finite sum of integrals of
    VI.1.e.

    <item>Hence <math|\<cal-W\><rsub|K<rsup|<around|(|b*a|)>>><around|[|Y,p|]><around|(|q;x|)>>,
    which does not depend on <math|n>, is <math|O<around|(|e<rsup|-n>|)>>, so
    it is <math|0>.

    <item><math|\<cal-W\><rsub|K><around|[|Y,p|]>> is <math|\<bbb-R\>>-linear
    in <math|K>, so it vanishes for all <math|K>.

    <item>Translating the configuration by <math|e<rsub|l>> along its line
    changes <math|\<cal-W\><rsub|K<rsup|<around|(|j*l|)>>><around|[|Y,p|]>>
    by exactly <math|<big|sum><rsub|i>S<around|(|\<ldots\>,p<rsub|j>*q<rsub|i>,\<ldots\>|)>>.
    Both values vanish, which gives the line sums.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|draught_river>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L31-L48>,
  <hlink|<verbatim|drained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L56>,
  <hlink|<verbatim|axisTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L57-L67>,
  <hlink|<verbatim|fullTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L83-L96>,
  <hlink|<verbatim|stagger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L98-L108>,
  <hlink|<verbatim|vane_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L21-L27>.

  <subsection|4.3 Normalisation <math|p=c*<space|0.17em>\<partial\>>
  (A04\UA06)><label|43-normalisation-pcpartial-a04a06>

  <strong|Lemma VI.1.g (scaling limits; A04, A05).> Assume the inclusion and
  derivative laws, (R), and the free data of Ÿ2. For each degree <math|d>,
  there are bounds <math|d<rsub|0>,N<rsub|0>,m<rsub|0>,R<rsub|0>>, with
  <math|R<rsub|0>\<geqslant\>1>, such that every track whose arity, degree,
  derivative and size bounds are at least
  <math|N<rsub|0>,d<rsub|0>,m<rsub|0>,R<rsub|0>>, respectively has the
  following limits. Write <math|X> for its scaling system and define
  <math|<math-up|aisle><rsub|k,d><around|(|P|)><rsub|a>=U<rsub|k,d+1><rsup|-1>*P<rsub|a>*U<rsub|k,d>>.
  At this fixed degree:

  <\itemize-minus>
    <item><math|r<rsub|k><space|0.17em><math-up|aisle><rsub|k,d><around|(|\<partial\>|)>\<to\>\<partial\><rsup|<math-up|free>>>;

    <item><math|<around|(|r<rsub|k>/\<xi\><rsub|k>|)><space|0.17em><math-up|aisle><rsub|k,d><around|(|p|)>\<to\>\<kappa\>*<space|0.17em>\<partial\><rsup|<math-up|free>>>;

    <item><math|\<xi\><rsub|k><rsup|-1>*U<rsub|k,d><rsup|-1>*Y<rsub|K>*U<rsub|k,d>\<to\>\<kappa\>*<space|0.17em>\<cal-L\><rsup|<math-up|free>><rsub|K>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|First limit.> Test against a finite family of free correlations
    that is faithful on <math|F<rsup|<math-up|free>><rsub|d+1>>. The chain
    rule gives the factor <math|r<rsub|k>>. Then use first-order jet
    convergence, and invert by finite-dimensional linear algebra.

    <item><em|Second and third limits.> Write the shell law at
    <math|r<rsub|k>*x> with the window <math|\<chi\>*<around|(|\<cdummy\>/r<rsub|k>|)>>.
    Substituting <math|y=r<rsub|k>*z> produces
    <math|r<rsub|k><rsup|4>\<cdot\>r<rsub|k><rsup|-1>>. For the translation
    shell, multiplication by <math|r<rsub|k>/\<xi\><rsub|k>> gives the stress
    factor <math|\<xi\><rsub|k><rsup|-1>*r<rsub|k><rsup|4>*J>. For the
    rotation shell, the weight <math|K*<around|(|y-r<rsub|k>*x<rsub|0>|)>=r<rsub|k>*K*<around|(|z-x<rsub|0>|)>>
    supplies the additional factor, so the multiplier is
    <math|\<xi\><rsub|k><rsup|-1>>. The stress convergence and uniform kernel
    convergence on the compact shell supports give the free shell laws.
    Finite faithful tests recover the two operator limits.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183>,
  <hlink|<verbatim|Work.A05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121>,
  <hlink|<verbatim|integrate_sheet_scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Window.lean#L158-L172>,
  <hlink|<verbatim|recover_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Read.lean#L70-L81>;
  the requests are <hlink|<verbatim|Bid.Watches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L43-L46>
  and <hlink|<verbatim|Bid.ConLap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L48-L49>.

  <strong|Lemma VI.1.h (A06 and the identification
  <math|p=c*<space|0.17em>\<partial\>>).> Assume the hypotheses of VI.1.2 and
  the transversality conclusions of VI.1.c.

  <em|Setting.>

  <\itemize-minus>
    <item>The free data supply <math|d<rsub|\<ast\>>> such that, for every
    <math|d\<geqslant\>d<rsub|\<ast\>>>, there is a finite <em|selection> of
    collinear transverse readouts on <math|F<rsup|<math-up|free>>>:
    <math|m>-th jets of row sums at configurations on a coordinate axis.

    <item>These readouts vanish, within the colour space of the free table,
    exactly on <math|\<bbb-R\>*<space|0.17em>\<partial\><rsup|<math-up|free>>>
    (<hlink|<verbatim|Climb.Ens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L101-L104>,
    <hlink|<verbatim|Select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L95-L99>).
  </itemize-minus>

  <em|Claims.>

  <\itemize-minus>
    <item>(A06) Along any scaling system meeting a sufficiently large finite
    request for these readouts, the actual rescaled readouts converge to the
    free ones. They annihilate <math|<math-up|aisle><rsub|k,d><around|(|p|)>>
    and <math|<math-up|aisle><rsub|k,d><around|(|\<partial\>|)>> exactly at
    every <math|k>. The reason is that a readout of
    <math|<math-up|aisle><rsub|k,d><around|(|P|)>> equals
    <math|r<rsub|k><rsup|m>> times an actual collinear jet of <math|P>, which
    vanishes by VI.1.c.

    <item>Consequently there is a real <math|c\<neq\>0> with
    <math|p<rsub|a>=c*<space|0.17em>\<partial\><rsub|a>> on all
    <math|F<rsub|d>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Persistence lemma.> Let <math|\<cal-C\>> be the fixed real
    space of free vector maps and suppose <math|Z<rsub|k>\<to\>Z> with
    <math|ker Z\<cap\>\<cal-C\>=\<bbb-R\>*x>, <math|x\<ne\>0>. Choose a real
    linear functional <math|\<ell\>> with
    <math|\<ell\><around|(|x|)>\<ne\>0>. The map
    <math|<around|(|Z,\<ell\>|)>> is injective on <math|\<cal-C\>>;
    injectivity persists under small perturbations in finite dimension. Thus
    <math|ker Z<rsub|k>\<cap\>\<cal-C\>> has dimension at most one for large
    <math|k>. This gives <math|<math-up|aisle><rsub|k,d><around|(|p|)>=c<rsub|d><space|0.17em><math-up|aisle><rsub|k,d><around|(|\<partial\>|)>>,
    hence <math|p=c<rsub|d>*\<partial\>> on <math|F<rsub|d>> for large
    <math|d>.

    <item>The constants agree across <math|d>, and lower degrees follow, by
    injectivity of <math|\<iota\>> and the colour law.

    <item><math|p\<neq\>0> and <math|\<partial\>\<ne\>0> by VI.1.g and
    <math|\<kappa\>*\<partial\><rsup|<math-up|free>>\<neq\>0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A06.lean#L236-L256>,
  <hlink|<verbatim|Climb.extends_form>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L98-L111>,
  <hlink|<verbatim|Bid.pressured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L49-L59>.

  <strong|Lemma VI.1.i (the normalised Ward data).> With <math|c> as in
  VI.1.h, <math|D=c<rsup|-1>*Y> satisfies (C) and (L). This proves
  Proposition VI.1.2.

  <em|Proof sketch.> Divide the first identity of VI.1.b, and the identity of
  VI.1.1(i), by <math|c>, using <math|p=c*<space|0.17em>\<partial\>>.

  <em|Lean:> <hlink|<verbatim|Bid.formed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L61-L78>,
  <hlink|<verbatim|Bid.witnessing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L33-L39>.

  <subsection|4.4 Continuation off the line><label|44-continuation-off-the-line>

  Throughout this subsection <math|S> satisfies the Euclidean axioms,
  <math|T> satisfies (C) and (L), and <math|\<partial\>> satisfies the
  derivative law.

  <strong|Lemma VI.1.j (derivatives of angular sums).>

  <\itemize-minus>
    <item><math|\<partial\><rsub|x<rsub|k><rsup|a>>*\<cal-W\><rsub|K><around|[|T|]><around|(|q;x|)>=\<cal-W\><rsub|K><around|[|T|]><around|(|q<rprime|'>;x|)>>,
    where <math|q<rprime|'>> is <math|q> with <math|q<rsub|k>> replaced by
    <math|\<partial\><rsub|a>*q<rsub|k>>. In particular
    <math|\<cal-W\><rsub|K><around|[|T|]><around|(|q;\<cdot\>|)>> is
    <math|C<rsup|\<infty\>>> on <math|<math-up|Conf>>.

    <item>Hence, if <math|\<cal-W\><rsub|K><around|[|T|]><around|(|\<cdummy\><space|0.17em>;y|)>=0>
    for all tags at one point <math|y>, then every derivative of
    <math|\<cal-W\><rsub|K><around|[|T|]><around|(|q;\<cdot\>|)>> at <math|y>
    vanishes, for every <math|q>.
  </itemize-minus>

  <em|Proof sketch.> Product rule. The derivative of
  <math|<around|(|K*x<rsub|k>|)><rsub|b>> in <math|x<rsub|k><rsup|a>> is
  <math|K<rsub|b*a>>. Use <math|\<partial\><rsub|a>*\<partial\><rsub|b>=\<partial\><rsub|b>*\<partial\><rsub|a>>,
  and (C) absorbs the extra term. The second statement is induction on the
  order, with <math|q> generalised.

  <em|Lean:> <hlink|<verbatim|Ward.traverses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L92-L136>,
  <hlink|<verbatim|Ward.ac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L138-L143>,
  <hlink|<verbatim|Ward.jet_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Motion.lean#L31-L42>.

  <strong|Lemma VI.1.k (OS vectors of one insertion).> Let
  <math|\<cal-H\><rsub|a>> be the OS space for reflection in
  <math|<around|{|x<rsub|a>=0|}>>. Write <math|\<Theta\><rsub|a>> for the
  corresponding reflection of words, including the label adjoint
  <math|M<rsub|\<theta\><rsub|a>>*\<Gamma\>>. For <math|x<rsub|a>\<gtr\>0>
  let <math|<math-up|spot><around|(|A,x|)>\<in\>\<cal-H\><rsub|a>> be the
  vector of the one-point word <math|A<around|(|x|)>>.

  <\itemize-minus>
    <item>(i) For any word <math|w> supported in
    <math|<around|{|y<rsub|a>\<gtr\>0|}>> with distinct insertion points, its
    OS vector <math|<around|[|w|]>> satisfies
    <math|<around|\<langle\>|<around|[|w|]>,<math-up|spot><around|(|A,x|)>|\<rangle\>>=S<around|(|A<around|(|x|)>,\<Theta\><rsub|a>*w|)>>.

    <item>(ii) <math|<math-up|spot><around|(|A,x+s*e<rsub|a>|)>=e<rsup|-s*H><math-up|spot><around|(|A,x|)>>
    for <math|s\<geqslant\>0>, and <math|<math-up|spot><around|(|A,x+v|)>=U<around|(|v|)><space|0.17em><math-up|spot><around|(|A,x|)>>
    for <math|v\<perp\>e<rsub|a>>.

    <item>(iii) For <math|b\<neq\>a>, <math|s\<mapsto\><math-up|spot><around|(|A,x+s*e<rsub|b>|)>>
    is <math|C<rsup|\<infty\>>> with derivative
    <math|<math-up|spot><around|(|\<partial\><rsub|b>*A,\<cdot\>|)>>. The
    weak derivative comes from the derivative law and is upgraded to a strong
    one.

    <item>(iv) <math|t\<mapsto\><math-up|spot><around|(|A,x+t*e<rsub|a>|)>>
    is real-analytic for <math|x<rsub|a>+t\<gtr\>0>, because
    <math|e<rsup|-z*H>> is holomorphic on
    <math|<math-up|Re><space|0.17em>z\<gtr\>0>.

    <item>(v) <math|t\<mapsto\>S<around|(|A*<around|(|t*e<rsub|a>|)>,B<around|(|0|)>|)>>
    is real-analytic for <math|t\<gtr\>0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ward.spot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L55>,
  <hlink|<verbatim|link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L64-L73>,
  <hlink|<verbatim|responds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L102-L118>,
  <hlink|<verbatim|blooms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L120-L133>,
  <hlink|<verbatim|advancing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L137-L158>,
  <hlink|<verbatim|Analysis.represents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L19-L41>,
  <hlink|<verbatim|Ward.radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L54-L68>.

  <strong|Lemma VI.1.l (transverse jets of the two-point function).> Fix
  <math|a\<neq\>b> and <math|K=K<rsup|<around|(|b*a|)>>>. For a pair of
  labels <math|\<pi\>=<around|(|\<pi\><rsub|1>,\<pi\><rsub|2>|)>> put
  <math|\<Phi\><rsub|\<pi\>><around|(|x<rsub|1>,x<rsub|2>|)>=S<around*|(|\<pi\><rsub|1>*<around|(|x<rsub|1>*e<rsub|a>+x<rsub|2>*e<rsub|b>|)>,\<pi\><rsub|2><around|(|0|)>|)>>
  on <math|<around|{|x<rsub|1>\<gtr\>0|}>>. Define

  <\equation*>
    <around|(|\<cal-L\>*\<Phi\>|)><rsub|\<pi\>>=<around|(|x<rsub|1>*\<partial\><rsub|2>-x<rsub|2>*\<partial\><rsub|1>|)>*\<Phi\><rsub|\<pi\>>+\<Phi\><rsub|<around|(|T<rsub|K>*\<pi\><rsub|1>,\<pi\><rsub|2>|)>>+\<Phi\><rsub|<around|(|\<pi\><rsub|1>,T<rsub|K>*\<pi\><rsub|2>|)>>.
  </equation*>

  Then:

  <\itemize-minus>
    <item><math|<around|(|\<cal-L\>*\<Phi\>|)><rsub|\<pi\>><around|(|x|)>=\<cal-W\><rsub|K><around|[|T|]><around*|(|\<pi\>;<around|(|x<rsub|1>*e<rsub|a>+x<rsub|2>*e<rsub|b>,0|)>|)>>;

    <item><math|\<partial\><rsub|2><rsup|n>*<around|(|\<cal-L\>*\<Phi\>|)><rsub|\<pi\>><around|(|t,0|)>=0>
    for all <math|n>, all <math|t\<gtr\>0> and all <math|\<pi\>>.
  </itemize-minus>

  <em|Proof sketch.> The first identity is the definition of
  <math|\<cal-W\>>, by the derivative law. At <math|x<rsub|2>=0> both points
  lie on <math|\<bbb-R\>*e<rsub|a>>, so (L) gives <math|\<cal-W\>=0> for all
  labels. VI.1.j then gives all <math|x<rsub|2>>-derivatives. This supplies
  the collinear jets needed for the analytic comparison.

  <em|Lean:> <hlink|<verbatim|Ward.sigma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L73-L97>,
  <hlink|<verbatim|Ward.realized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L99-L116>.

  <strong|Lemma VI.1.m (comparison function and formal uniqueness).> Let
  <math|<around|(|r,\<theta\>|)>> be polar coordinates of
  <math|<around|(|x<rsub|1>,x<rsub|2>|)>> with <math|x<rsub|1>\<gtr\>0>. Put

  <\equation*>
    Q<rsub|\<pi\>><around|(|x|)>=S<around*|(|<around|(|e<rsup|-\<theta\>*T<rsub|K>>*\<pi\><rsub|1>|)>*<around|(|r*e<rsub|a>|)>,<space|0.17em><around|(|e<rsup|-\<theta\>*T<rsub|K>>*\<pi\><rsub|2>|)><around|(|0|)>|)>.
  </equation*>

  <\itemize-minus>
    <item><math|Q> is real-analytic on <math|<around|{|x<rsub|1>\<gtr\>0|}>>,
    by VI.1.k(v), finite-dimensionality of the label spaces, and the matrix
    exponential.

    <item><math|\<cal-L\>*Q=0> identically, since <math|\<theta\>> has
    derivative <math|1> and <math|r> has derivative <math|0> along the
    rotation field.

    <item><math|Q=\<Phi\>> on <math|<around|{|x<rsub|2>=0|}>>.

    <item>(Formal uniqueness.) Let <math|L> be smooth on the half-plane with
    <math|L<rsub|\<pi\>><around|(|t,0|)>=0> and
    <math|\<partial\><rsub|2><rsup|n>*<around|(|\<cal-L\>*L|)><rsub|\<pi\>><around|(|t,0|)>=0>
    for all <math|n,\<pi\>> and <math|t\<gtr\>0>. Then
    <math|\<partial\><rsub|2><rsup|n>*L<rsub|\<pi\>><around|(|t,0|)>=0> for
    all <math|n>.

    Applied to <math|L=\<Phi\>-Q>: the <math|x<rsub|2>>-Taylor series of
    <math|\<Phi\>> at <math|<around|(|t,0|)>> is that of the analytic
    function <math|Q>.
  </itemize-minus>

  <em|Proof sketch.> Strong induction on <math|n>, for all <math|\<pi\>> at
  once. For <math|n\<geqslant\>1>, at <math|<around|(|t,0|)>>,

  <\equation*>
    t*<space|0.17em>\<partial\><rsub|2><rsup|n+1>*L<rsub|\<pi\>>=-\<partial\><rsub|2><rsup|n>*<around*|(|L<rsub|<around|(|T<rsub|K>*\<pi\><rsub|1>,\<pi\><rsub|2>|)>>+L<rsub|<around|(|\<pi\><rsub|1>,T<rsub|K>*\<pi\><rsub|2>|)>>|)>+n*<space|0.17em>\<partial\><rsub|1>*\<partial\><rsub|2><rsup|n-1>*L<rsub|\<pi\>>.
  </equation*>

  For <math|n=0> the transport equation directly gives
  <math|t*\<partial\><rsub|2>*L<rsub|\<pi\>>=-L<rsub|<around|(|T<rsub|K>*\<pi\><rsub|1>,\<pi\><rsub|2>|)>>-L<rsub|<around|(|\<pi\><rsub|1>,T<rsub|K>*\<pi\><rsub|2>|)>>=0>.
  In the displayed recurrence, the first term vanishes by induction, and the
  last term vanishes because <math|\<partial\><rsub|2><rsup|n-1>*L<rsub|\<pi\>>>
  vanishes on the whole half-line. Since <math|t\<neq\>0>, the line is
  noncharacteristic.

  <em|Lean:> <hlink|<verbatim|Ward.Q>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L89-L90>,
  <hlink|<verbatim|htQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L115-L128>,
  <hlink|<verbatim|solves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L130-L174>,
  <hlink|<verbatim|PDE.sure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/PDE.lean#L121-L141>.

  <strong|Lemma VI.1.n (analytic Gram kernel).>

  <\itemize-minus>
    <item>(Abstract.) Let <math|f:\<bbb-R\>\<to\>\<cal-H\>> be
    <math|C<rsup|\<infty\>>> with <math|<around|\<langle\>|f<around|(|s|)>,f<around|(|s<rprime|'>|)>|\<rangle\>>=A*<around|(|s<rprime|'>-s|)>>,
    where <math|A> has at <math|0> the Taylor series of a real-analytic germ.
    Then <math|f> is real-analytic on <math|\<bbb-R\>>.

    <item>(Application.) Hence, for <math|x<rsub|a>\<gtr\>0> and
    <math|b\<neq\>a>, <math|s\<mapsto\><math-up|spot><around|(|A,x+s*e<rsub|b>|)>>
    is real-analytic on <math|\<bbb-R\>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|f<rsup|<around|(|m|)>><around|(|s|)>|\<\|\|\>><rsup|2>=<around|\||A<rsup|<around|(|2*m|)>><around|(|0|)>|\|>\<leqslant\>C*\<rho\><rsup|-2*m>*<around|(|2*m|)>!>
    uniformly in <math|s>. With <math|<around|(|2*m|)>!\<leqslant\>4<rsup|m><around|(|m!|)><rsup|2>>
    this gives <math|<around|\<\|\|\>|f<rsup|<around|(|m|)>>|\<\|\|\>>\<leqslant\><sqrt|C>*<around|(|\<rho\>/2|)><rsup|-m>*m!>
    everywhere, and the Taylor remainder finishes.

    <item>For the application: by reflection and translation invariance,
    <math|<around|\<langle\>|f<around|(|s|)>,f<around|(|s<rprime|'>|)>|\<rangle\>>=\<Phi\><rsub|<around|(|A,\<Theta\><rsub|a>*A|)>><around|(|2*x<rsub|a>,s<rprime|'>-s|)>>.
    VI.1.m identifies its Taylor series at <math|0> with that of
    <math|s\<mapsto\>Q<rsub|<around|(|A,\<Theta\><rsub|a>*A|)>><around|(|2*x<rsub|a>,s|)>>.

    <item>Uniformity in <math|s>, which comes from positivity and translation
    invariance, is why a jet at a single point suffices.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Analysis.blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96>,
  <hlink|<verbatim|bud>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L46-L74>,
  <hlink|<verbatim|builds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rate.lean#L93-L102>,
  <hlink|<verbatim|Ward.fires>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L72-L81>,
  <hlink|<verbatim|swing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L33-L43>,
  <hlink|<verbatim|Ward.pure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L179-L209>.

  <strong|Lemma VI.1.o (analyticity at an extreme point).> Suppose that after
  moving <math|x<rsub|k>> to <math|x<rsub|k>+s*e<rsub|b>>, the point <math|k>
  is strictly latest, or strictly earliest, in coordinate <math|a>. Then
  <math|u\<mapsto\>S<around|(|q;x<text| with >x<rsub|k>+u*e<rsub|b>|)>> is
  real-analytic at <math|s>, for every <math|b> (including <math|b=a>). Hence
  <math|\<cal-W\><rsub|K><around|[|T|]>> is real-analytic along such a move.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Translate in <math|e<rsub|a>> so that the other points lie in
    <math|<around|{|y<rsub|a>\<less\>0|}>> and <math|x<rsub|k>+s*e<rsub|b>>
    in <math|<around|{|y<rsub|a>\<gtr\>0|}>>.

    <item>Then <math|S=\<langle\>\<Theta\><around|(|<text|word of the
    others>|)>,<math-up|spot>(q<rsub|k>,\<cdot\><around|)||\<rangle\>>>, a
    bounded functional of one vector. This is analytic by VI.1.n for
    <math|b\<neq\>a>, and by VI.1.k(iv) for <math|b=a>.

    <item>The "earliest" case reduces to the "latest" case by the reflection
    <math|\<Theta\><rsub|a>> with mirrored labels.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ward.higher>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L23-L69>,
  <hlink|<verbatim|last_adv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L102-L121>,
  <hlink|<verbatim|first_adv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L131-L153>,
  <hlink|<verbatim|Ward.channel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L15-L26>.

  <strong|Lemma VI.1.p (walks; proof of VI.1.3).> A <em|walk> is a finite
  chain of segments. Each segment moves one point <math|x<rsub|k>> along
  <math|e<rsub|b>>, and on the whole segment <math|x<rsub|k>> is strictly
  earliest or latest in some coordinate <math|a>.

  <\itemize-minus>
    <item>If <math|\<cal-W\><rsub|K><around|[|T|]><around|(|\<cdummy\><space|0.17em>;y|)>=0>
    (all tags) at the end <math|y> of a walk, then the same holds at its
    start.

    <item>Every configuration with pairwise distinct <math|0>-coordinates is
    joined by a walk to a configuration on <math|\<bbb-R\>*e<rsub|0>>.

    <item>Such configurations are dense in <math|<math-up|Conf><rsub|n>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Propagation.> On a segment, <math|\<cal-W\>> is analytic
    (VI.1.o), and all its derivatives vanish at the endpoint (VI.1.j). By the
    identity theorem it vanishes on the segment.

    <item><em|Geometry.> Take the earliest point in coordinate <math|0>. Move
    it beyond all others in coordinate <math|1>, then beyond all others in
    coordinate <math|0>, then set its coordinates <math|1,2,3> to <math|0>,
    keeping it latest in coordinate <math|0>. Induct on the remaining points.

    <item><em|Density.> Add <math|t<around|(|0,1,\<ldots\>,n-1|)>> to the
    <math|0>-coordinates.

    <item><em|Conclusion.> (L) holds on <math|\<bbb-R\>*e<rsub|0>>, so
    <math|\<cal-W\>=0> on a dense set. <math|\<cal-W\>> is continuous on
    <math|<math-up|Conf>> (VI.1.j).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ward.stood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L71>,
  <hlink|<verbatim|Walk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L75-L78>,
  <hlink|<verbatim|along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L79-L84>,
  <hlink|<verbatim|park1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L36-L53>,
  <hlink|<verbatim|pushes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L57-L74>,
  <hlink|<verbatim|line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L86-L108>,
  <hlink|<verbatim|global>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139>.

  <subsection|4.5 Brackets (A07, A08)><label|45-brackets-a07-a08>

  <strong|Lemma VI.1.q (A07: erasure for the limit table).> The weak action
  law, with its alignment of <math|M>, <math|\<Gamma\>>, units and
  inclusions, transports free row erasure to <math|S> and <math|\<partial\>>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>For <math|d\<geqslant\>N>, the free bilinear families of the kind
    in VI.1.4 form a finite-dimensional real space <math|\<cal-M\>>. Free
    erasure means that the free row tests separate <math|\<cal-M\>>, so
    finitely many of them do.

    <item>Along a scaling system, the transported actual rows converge to
    these, so they are injective on <math|\<cal-M\>> at some scale <math|k>.

    <item>An actual family <math|\<Delta\>> with vanishing row sums, pulled
    back by <math|U<rsub|k>>, lies in <math|\<cal-M\>>, because
    <math|U<rsub|k>> respects <math|M>, <math|\<Gamma\>>, <math|\<b-1\>> and
    <math|\<iota\>>. Its rows are actual row sums at <math|r<rsub|k>*x>,
    which vanish. So <math|\<Delta\>=0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L287-L289>,
  <hlink|<verbatim|transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L243-L285>.

  <strong|Lemma VI.1.r (A08: brackets).> This is Proposition VI.1.4.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Let <math|\<cal-O\><rsub|u>> be the orbital derivative along
    <math|x<rsub|i>\<mapsto\>u*x<rsub|i>> for all points at once. VI.1.3 says
    <math|\<cal-O\><rsub|u>*S<around|(|q|)>=-<big|sum><rsub|i>S<around|(|\<ldots\>,T<rsub|u>*q<rsub|i>,\<ldots\>|)>>
    on the open set <math|<math-up|Conf>>.

    <item>Apply it twice: <math|\<cal-O\><rsub|u>*\<cal-O\><rsub|v>*S=<big|sum><rsub|i,j>S*<around|(|\<ldots\>*T<rsub|u>*q<rsub|j>*\<ldots\>*T<rsub|v>*q<rsub|i>*\<ldots\>|)>>.
    Linear vector fields satisfy <math|<around|[|\<cal-O\><rsub|u>,\<cal-O\><rsub|v>|]>=-\<cal-O\><rsub|<around|[|u,v|]>>>.

    <item>Subtracting, the off-diagonal terms cancel. So the defect
    <math|\<Delta\><around|(|u,v|)>=<around|[|T<rsub|u>,T<rsub|v>|]>-T<rsub|<around|[|u,v|]>>>
    has vanishing row sums.

    <item>By compatibility of <math|T> and
    <math|\<sigma\>*<around|[|u,v|]>*\<sigma\><rsup|-1>=<around|[|\<sigma\>*u*\<sigma\><rsup|-1>,\<sigma\>*v*\<sigma\><rsup|-1>|]>>,
    <math|\<Delta\>> is a family of the kind in VI.1.4. Erasure gives
    <math|\<Delta\>=0> for <math|d\<geqslant\>N>.

    <item>Lower degrees follow by injecting into degree <math|max
    <around|(|d,N|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247>,
  <hlink|<verbatim|orbital_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L62-L68>,
  <hlink|<verbatim|orbit_twice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L91-L107>,
  <hlink|<verbatim|defect_winds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L192-L205>,
  <hlink|<verbatim|defect_ward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L209-L230>.

  <subsection|4.6 Descent of the free rotation action
  (A09\UA12)><label|46-descent-of-the-free-rotation-action-a09a12>

  Fix <math|d>. Index the generators by ordered pairs
  <math|\<pi\>=<around|(|i,j|)>>, with <math|K<rsub|\<pi\>>=E<rsub|i*j>-E<rsub|j*i>>
  and <math|C<rsub|\<pi\>>=\<cal-L\><rsup|<math-up|free>><around|(|K<rsub|\<pi\>>|)>>
  on <math|F<rsup|<math-up|free>><rsub|d>>. For tuples <math|B,C> of
  operators on <math|F<rsup|<math-up|free>><rsub|d>> define

  <\itemize-minus>
    <item><math|<math-up|ad><rsub|B,C><around|(|X|)>=B*X-X*C> on
    <math|<math-up|End><space|0.17em>F<rsup|<math-up|free>><rsub|d>>;

    <item><math|\<Omega\><around|(|B,C|)>=<big|sum><rsub|\<pi\>><math-up|ad><rsub|B<rsub|\<pi\>>,C<rsub|\<pi\>>><rsup|2>>,
    the relative Casimir.
  </itemize-minus>

  A tuple satisfies the <em|perfect relations> if
  <math|X<rsub|i*j>=<around|[|X<rsub|i*k>,X<rsub|k*j>|]>> for a fixed
  <math|k\<nin\><around|{|i,j|}>>. Any <math|<with|math-font|Euler|s*o><around|(|4|)>>
  representation does (A09).

  <strong|Lemma VI.1.s (A12: the intertwiner projection).> There is a real
  polynomial <math|z> such that <math|P=z<around|(|\<Omega\><around|(|C,C|)>|)>>
  satisfies:

  <\itemize-minus>
    <item><math|P<rsup|2>=P>;

    <item><math|P<around|(|<math-up|id>|)>=<math-up|id>>;

    <item><math|<math-up|ad><rsub|C<rsub|\<pi\>>,C<rsub|\<pi\>>>P=0> for all
    <math|\<pi\>>.
  </itemize-minus>

  So <math|P> projects onto the commutant of the <math|C<rsub|\<pi\>>>, along
  <math|<math-up|range><space|0.17em>\<Omega\>>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Haar averaging over <math|O<around|(|4|)>> gives an inner product
    on <math|<math-up|End><space|0.17em>F<rsup|<math-up|free>><rsub|d>> in
    which every <math|<math-up|ad><space|0.17em>C<rsub|\<pi\>>> is skew
    (unitarian trick). So <math|\<Omega\>> is self-adjoint, <math|ker
    \<Omega\>=<big|cap><rsub|\<pi\>>ker <math-up|ad><space|0.17em>C<rsub|\<pi\>>>,
    and <math|ker \<Omega\><rsup|2>=ker \<Omega\>>.

    <item>Cayley\UHamilton, with the powers of <math|X> removed, gives a real
    <math|z> with <math|z<around|(|0|)>=1> and
    <math|\<Omega\>*z<around|(|\<Omega\>|)>=0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A12.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336>,
  <hlink|<verbatim|Spin.Works>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L68-L71>,
  <hlink|<verbatim|wave>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L57>.

  <strong|Lemma VI.1.t (approximate to exact intertwiners).>

  <\itemize-minus>
    <item>(i) <em|Purification.> In a Banach algebra, let
    <math|Z<rsub|n>\<to\>z> with <math|z<rsup|2>=z>. There are
    <math|C\<gtr\>0> and <math|n<rsub|0>> such that, for
    <math|n\<geqslant\>n<rsub|0>>, the iterates of
    <math|\<varphi\><around|(|x|)>=3*x<rsup|2>-2*x<rsup|3>> starting at
    <math|Z<rsub|n>> converge to idempotents <math|P<rsub|n>\<to\>z>, with
    <math|<around|\<\|\|\>|P<rsub|n>-Z<rsub|n>|\<\|\|\>>\<leqslant\>2*C*<around|\<\|\|\>|Z<rsub|n><rsup|2>-Z<rsub|n>|\<\|\|\>>>.
    This uses <math|\<varphi\><around|(|x|)>-x=<around|(|1-2*x|)>*<around|(|x<rsup|2>-x|)>>
    and <math|<math-up|def><around|(|\<varphi\>*x|)>=<around|(|4<space|0.17em><math-up|def><space|0.17em>x-3|)><around|(|<math-up|def><space|0.17em>x|)><rsup|2>>,
    where <math|<math-up|def><space|0.17em>x=x<rsup|2>-x>.

    <item>(ii) <em|Norm gap.> If operators <math|D<rsub|\<pi\>>> satisfy the
    perfect relations and all <math|<around|\<\|\|\>|D<rsub|\<pi\>>|\<\|\|\>>\<less\><tfrac|1|2>>,
    then all <math|D<rsub|\<pi\>>=0>, since <math|max
    <around|\<\|\|\>|D|\<\|\|\>>\<leqslant\>2*max
    <around|\<\|\|\>|D|\<\|\|\>><rsup|2>>.

    <item>(iii) <em|Exact intertwiners.> Assume:

    <\itemize-minus>
      <item>tuples <math|B<rsub|n>\<to\>C>, with <math|B<rsub|n>>
      (eventually) and <math|C> satisfying the perfect relations;

      <item><math|P=z<around|(|\<Omega\><around|(|C,C|)>|)>> is as in VI.1.s;

      <item>there is a closed additive subgroup
      <math|\<cal-F\>\<subset\><math-up|End><rsub|\<bbb-C\>>F<rsup|<math-up|free>><rsub|d>>
      containing <math|<math-up|id>> such that, eventually,
      <math|z<around|(|\<Omega\><around|(|B<rsub|n>,C|)>|)>> preserves
      <math|\<cal-F\>> and commutes with every
      <math|<math-up|ad><rsub|B<rsub|n,\<pi\>>,C<rsub|\<pi\>>>>.
    </itemize-minus>

    Then for large <math|n> there is an invertible <math|f\<in\>\<cal-F\>>
    with <math|B<rsub|n,\<pi\>>*f=f*C<rsub|\<pi\>>> for all <math|\<pi\>>.
  </itemize-minus>

  <em|Proof sketch of (iii).>

  <\itemize-minus>
    <item>Work in <math|<math-up|End><around|(|<math-up|End><space|0.17em>F<rsup|<math-up|free>><rsub|d>|)>>
    with <math|D<rsub|\<pi\>><around|(|n|)>=<math-up|ad><rsub|B<rsub|n,\<pi\>>,C<rsub|\<pi\>>>>.
    These satisfy the perfect relations and converge to
    <math|<math-up|ad><rsub|C<rsub|\<pi\>>,C<rsub|\<pi\>>>>.

    <item><math|z<around|(|\<Omega\><around|(|B<rsub|n>,C|)>|)>\<to\>P>.
    Purify it to idempotents <math|Q<rsub|n>>. Every iterate preserves
    <math|\<cal-F\>> and commutes with <math|D<rsub|\<pi\>><around|(|n|)>>.
    The preserving operators form a closed subring of
    <math|<math-up|End><around|(|<math-up|End><space|0.17em>F<rsup|<math-up|free>><rsub|d>|)>>,
    so these properties pass to <math|Q<rsub|n>>.

    <item>The compressions <math|D<rsub|\<pi\>><around|(|n|)>*Q<rsub|n>>
    satisfy the perfect relations and tend in norm to
    <math|<math-up|ad><rsub|C<rsub|\<pi\>>,C<rsub|\<pi\>>>P=0>. By (ii) they
    vanish for large <math|n>.

    <item>Then <math|f<rsub|n>=Q<rsub|n><around|(|<math-up|id>|)>\<to\>P<around|(|<math-up|id>|)>=<math-up|id>>,
    so <math|f<rsub|n>> is invertible. It lies in <math|\<cal-F\>>, and
    <math|<math-up|ad><rsub|B<rsub|n,\<pi\>>,C<rsub|\<pi\>>>f<rsub|n>=0>.

    <item>No complete reducibility of the representation
    <math|D=c<rsup|-1>*Y> on <math|F<rsub|d>>, and no Lie integration for it,
    is used.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Spin.rectify>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L25-L69>,
  <hlink|<verbatim|stable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L72-L98>,
  <hlink|<verbatim|enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L27-L38>,
  <hlink|<verbatim|onto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L42-L70>,
  <hlink|<verbatim|realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L77-L93>,
  <hlink|<verbatim|Tracks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L74-L75>.

  <strong|Lemma VI.1.u (descent of rotations; proof of VI.1.5).> Assume the
  hypotheses of VI.1.2. The normalised rows <math|D=c<rsup|-1>*Y> satisfy the
  global Ward identity by VI.1.3.

  <\itemize-minus>
    <item><strong|Choice of <math|U<rsub|n>>.> Choose one scaling system
    meeting the requests of VI.1.g at degrees <math|d> and <math|4>, and
    aligned through degree <math|d>. Put <math|U<rsub|n>=U<rsub|n,d>>.

    <item><strong|Convergence.> At degree <math|4>,
    <math|p=c*<space|0.17em>\<partial\>> and VI.1.g give
    <math|c/\<xi\><rsub|k>\<to\>\<kappa\>>. Hence
    <math|U<rsub|n><rsup|-1>*D*U<rsub|n>\<to\>\<cal-L\><rsup|<math-up|free>>>.

    <item><strong|Inputs of VI.1.t(iii).> These are the <em|tilt>
    (<hlink|<verbatim|Spin.Tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L116-L122>):

    <\itemize-minus>
      <item><math|U<rsub|n>> intertwines <math|M> and <math|\<Gamma\>>
      (track);

      <item><math|D> satisfies the perfect relations, by A08 (with erasure
      from A07) and A09;

      <item>the free data supply these relations and the Casimir polynomial
      of VI.1.s for <math|\<cal-L\><rsup|<math-up|free>>>;

      <item>let <math|\<cal-F\>\<subset\><math-up|End><rsub|\<bbb-C\>>F<rsup|<math-up|free>><rsub|d>>
      be the closed real subspace of maps commuting with the free <math|M>
      and <math|\<Gamma\>>. The operators
      <math|z<around|(|\<Omega\><around|(|U<rsub|n><rsup|-1>*D*U<rsub|n>,C|)>|)>>
      preserve <math|\<cal-F\>> (A11: real coefficients and cancellation of
      the signed-permutation factors in the sum of squares) and commute with
      the relative generators (A09).
    </itemize-minus>

    <item><strong|Exact intertwiner.> VI.1.t gives <math|f<rsub|n>>. Put
    <math|V<rsub|d>=U<rsub|n>*f<rsub|n>>. Then <math|V<rsub|d>> intertwines
    <math|M> and <math|\<Gamma\>>, and <math|D<rsub|K<rsub|\<pi\>>>*V<rsub|d>=V<rsub|d>*C<rsub|\<pi\>>>.
    By linearity this holds for all <math|K>.

    <item><strong|Port.> <math|R<rsub|d>=V<rsub|d>*R<rsup|<math-up|free>><rsub|d>*V<rsub|d><rsup|-1>>
    inherits continuity, the group law, <math|R<around|(|\<sigma\>|)>=M<rsub|\<sigma\>>>,
    reality, and the generator <math|D>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.services>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L124-L157>,
  <hlink|<verbatim|Bid.currencies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L80-L90>,
  <hlink|<verbatim|Bid.imaginary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L102-L122>,
  <hlink|<verbatim|Work.A09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90>,
  <hlink|<verbatim|Work.A11.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A11.lean#L199-L206>,
  <hlink|<verbatim|Spin.fine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L55-L64>,
  <hlink|<verbatim|Spin.meet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L134-L157>,
  <hlink|<verbatim|Spin.produces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L26-L47>,
  <hlink|<verbatim|Climb.descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98>.

  <subsection|4.7 Integration to <math|O<around|(|4|)>> (A13,
  A14)><label|47-integration-to-o4-a13-a14>

  <strong|Lemma VI.1.v (A13).> <math|O<around|(|4|)>> is generated by
  <math|B<rsub|4>> and the one-parameter groups <math|e<rsup|t*K>>,
  <math|K\<in\><with|math-font|Euler|s*o><around|(|4|)>>.

  <em|Proof sketch.> <math|O<around|(|4|)>> is generated by hyperplane
  reflections (Cartan\UDieudonné). The reflection in <math|v<rsup|\<perp\>>>
  equals <math|g<rsup|-1>*R<rsub|0>*g>, where <math|R<rsub|0>> is a
  coordinate mirror and <math|g> is a product of plane rotations
  <math|e<rsup|t*<around|(|E<rsub|i*j>-E<rsub|j*i>|)>>> that turn <math|v>
  onto <math|e<rsub|0>> (Givens rotations).

  <em|Lean:> <hlink|<verbatim|Work.A13.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200>,
  <hlink|<verbatim|reflection_conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L151-L174>.

  <strong|Lemma VI.1.w (A14: covariance and laws).> This is Proposition
  VI.1.6.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>The set of <math|k> with <math|S<around|(|R<around|(|k|)>*v;k*x|)>=S<around|(|v;x|)>>
    for all <math|v,x> is a subgroup of <math|O<around|(|4|)>>.

    <item>It contains <math|B<rsub|4>>, since
    <math|R<around|(|\<sigma\>|)>=M<rsub|\<sigma\>>> and <math|S> is
    <math|B<rsub|4>>-covariant.

    <item>It contains each <math|e<rsup|t*K>>. The function
    <math|f<around|(|t|)>=S<around|(|R<around|(|e<rsup|t*K>|)>*v;e<rsup|t*K>*x|)>>
    is differentiable, and by the group law <math|f<rprime|'><around|(|t|)>>
    is <math|\<cal-W\><rsub|K><around|[|T|]>> at the moved data, which is
    <math|0>. So <math|f> is constant.

    <item>By A13 the subgroup is all of <math|O<around|(|4|)>>.

    <item>The rotation laws:

    <\itemize-minus>
      <item><math|R<around|(|k|)>*\<b-1\>=\<b-1\>>: apply covariance, delete
      the unit insertion, apply covariance again;

      <item>commutation with <math|\<iota\>>: covariance plus the inclusion
      law (<hlink|<verbatim|Spin.team>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L50-L69>);

      <item>the vector law: differentiate the covariance identity and use the
      chain rule for <math|x\<mapsto\>k*x>;

      <item>the remaining fields are those of the port.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A14.oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L277-L292>,
  <hlink|<verbatim|cov_parameter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L245-L261>,
  <hlink|<verbatim|unit_fixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L310-L325>,
  <hlink|<verbatim|vectorLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L364-L398>,
  <hlink|<verbatim|laws_of_oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415>.

  <subsection|4.8 The averaged stress tensor
  (A15)><label|48-the-averaged-stress-tensor-a15>

  <strong|Lemma VI.1.x (A15: Haar averaging).> Under the hypotheses of
  VI.1.7, put <math|J<rsub|0>=c<rsup|-1>*J>, so that
  <math|<around|(|J<rsub|0>;\<partial\>,c<rsup|-1>*Y|)>> satisfies the stress
  laws. Define

  <\equation*>
    J<rprime|'>=<big|int><rsub|O<around|(|4|)>>k\<cdot\>J<rsub|0>*<space|0.17em>d*\<mu\><around|(|k|)>,<space|2em><around|(|k\<cdot\>J|)><rsub|a*b>=<big|sum><rsub|i*j>k<rsub|a*i>*k<rsub|b*j>*<space|0.17em>R<rsub|4><around|(|k|)>*J<rsub|i*j>,
  </equation*>

  with <math|\<mu\>> normalised Haar measure on <math|O<around|(|4|)>>. Then
  <math|J<rprime|'>> satisfies Proposition VI.1.7.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><math|k\<cdot\>> is a linear group action on the finite-dimensional
    space of stresses. Fixed points are exactly the tensorial stresses, and
    invariance of <math|\<mu\>> makes <math|J<rprime|'>> fixed.

    <item>Each <math|k\<cdot\>J<rsub|0>> is conserved: symmetry by the index
    structure, reality by the reality law, divergence by the vector law.

    <item>Each <math|k\<cdot\>J<rsub|0>> satisfies the same stress laws.
    Substitute <math|y\<mapsto\>k*y> and use the window
    <math|\<chi\>\<circ\>k> at <math|k<rsup|-1>*x>; pull the labels back by
    <math|R<around|(|k<rsup|-1>|)>>; use covariance of <math|S>.

    <\itemize-minus>
      <item>The translation weight <math|e<rsub|b>> becomes
      <math|k<rsup|-1>*e<rsub|b>>. The right side is independent of <math|k>
      by the vector law.

      <item>The weight <math|K*<around|(|y-x<rsub|0>|)>> becomes
      <math|k<rsup|-1>*K*k> centred at <math|k<rsup|-1>*x<rsub|0>>. The right
      side is independent of <math|k> by A10:
      <math|R<around|(|k|)>*<space|0.17em>\<cal-L\><rsub|K>=\<cal-L\><rsub|k*K*k<rsup|-1>>*<space|0.17em>R<around|(|k|)>>.
    </itemize-minus>

    <item>All the conditions are linear, so they pass to the integral.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.A15.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192>,
  <hlink|<verbatim|normalize_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L22-L41>,
  <hlink|<verbatim|averageStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L86>,
  <hlink|<verbatim|tensorial_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L117-L118>,
  <hlink|<verbatim|conserved_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L134-L154>,
  <hlink|<verbatim|stressLaws_average>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L156-L183>,
  <hlink|<verbatim|rotate_flux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15/Transfer.lean#L124-L168>,
  <hlink|<verbatim|Work.A10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115>.

  <subsection|4.9 Lorentz group, and assembly><label|49-lorentz-group-and-assembly>

  <strong|Lemma VI.1.y (A16, A17 and the descended Lorentz action).> This is
  Proposition VI.1.8.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|(a) Generation.> Let <math|\<Lambda\>\<in\>S*O<rsup|+><around|(|1,3|)>>.
    Then <math|\<Lambda\>*e<rsub|t>> is a future unit timelike vector. At
    each step, apply a coordinate boost with rapidity
    <math|-<math-up|artanh><around|(|y<rsub|i>/y<rsub|t>|)>> to the current
    vector <math|y>. This kills its <math|i>-th spatial component and
    preserves the other spatial components. After three steps the vector is
    <math|e<rsub|t>>. The resulting Lorentz transformation fixes
    <math|e<rsub|t>>, so it is a spatial rotation.

    <item><em|(b) Compatibility with inclusions.> Induct over the generators.

    <\itemize-minus>
      <item>Spatial rotations: here <math|B> is the transported rotation
      action, which commutes with <math|\<iota\>> by VI.1.6.

      <item>Boosts: <math|t\<mapsto\>B<rsub|e><around|(|<math-up|boost><rsub|i><around|(|t|)>|)>*\<iota\>*v>
      and <math|t\<mapsto\>\<iota\>*B<rsub|d><around|(|<math-up|boost><rsub|i><around|(|t|)>|)>*v>
      both solve <math|f<rprime|'>=G*f> with
      <math|G=-i*<space|0.17em>D<rsub|K<rsup|<around|(|3*i|)>>>>, and they
      agree at <math|t=0>. Here <math|G> commutes with <math|\<iota\>>, which
      follows by differentiating the inclusion law of <math|R>. Uniqueness
      for the linear ODE finishes.
    </itemize-minus>

    <item><em|(c) Descent.> Compatibility with inclusions and the unique lift
    to the union of label spaces give the representation. Its descent
    properties transfer from the free action through <math|V>
    (<hlink|<verbatim|Spin.transmits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L30-L37>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|exists_rest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L82-L89>,
  <hlink|<verbatim|run_boost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L70-L84>,
  <hlink|<verbatim|rise_generator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L57-L68>,
  <hlink|<verbatim|Spin.run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L21-L22>,
  <hlink|<verbatim|Spin.reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L39-L74>.

  <strong|Lemma VI.1.z (assembly).> Under the hypotheses of VI.1.9, the
  preceding constructions give its local field laws and Lorentz action.

  <em|Proof sketch.> A01\UA03 and the collinear flux argument give the raw
  compatibility laws. VI.1.h\Ui give <math|c> and the normalised Ward data.
  VI.1.3 and VI.1.u give the intertwiners, rotation port and global Ward
  identity. A13\UA14 give covariance and the rotation laws; A10 and A15 give
  the conserved tensorial stress with the required shells. Each
  <math|F<rsub|d>> has the free comparison isomorphism by any aligned scaling
  system at that degree. A16\UA17 give compatibility of the Lorentz actions,
  and the unique lift to the union gives the final representation.

  <em|Lean:> <hlink|<verbatim|Bid.station>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168>,
  <hlink|<verbatim|Commission.picks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L45-L53>,
  <hlink|<verbatim|Climb.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63>.

  <subsection|4.10 Free-field stress algebra><label|410-free-field-stress-algebra>

  Assume <math|G> is simple. The free stress satisfies the following
  finite-dimensional algebraic facts:

  <\itemize-minus>
    <item>adjoint-invariant linear forms vanish, and invariant bilinear forms
    are multiples of the inner product.

    <item>Gauge-invariant composites of weight <math|\<leqslant\>5> have
    explicit normal forms.

    <item>The real symmetric <math|B<rsub|4>>-covariant <math|2>-tensors of
    weight at most <math|4> form a space of dimension <math|\<leqslant\>4>,
    spanned by the four-parameter family
  </itemize-minus>

  <\equation*>
    T<rsub|a*b>=\<delta\><rsub|a*b>*<around*|(|w<rsub|0>+w<rsub|1>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|a*i>|\<rangle\>>+w<rsub|2>*<big|sum><rsub|i*j><around|\<langle\>|F<rsub|i*j>,F<rsub|i*j>|\<rangle\>>|)>+<around|(|1-\<delta\><rsub|a*b>|)>*<space|0.17em>w<rsub|3>*<big|sum><rsub|i><around|\<langle\>|F<rsub|a*i>,F<rsub|b*i>|\<rangle\>>.
  </equation*>

  Here <math|F<rsub|a*b>> is the free curvature and
  <math|w\<in\>\<bbb-R\><rsup|4>>. The Maxwell stress is
  <math|w=<around|(|0,1,-<tfrac|1|4>,1|)>>.

  <\itemize-minus>
    <item>Wick's theorem computes the free one- and two-point tests. Centring
    and conservation force <math|w=w<rsub|3>\<cdot\><around|(|0,1,-<tfrac|1|4>,1|)>>.
  </itemize-minus>

  These facts feed VII.2's statement that, in the free table, the divergence
  map from centred, real, symmetric, <math|B<rsub|4>>-tensorial stresses in
  <math|<around|(|F<rsup|<math-up|free>><rsub|4>|)><rsup|4\<times\>4>> to
  real <math|B<rsub|4>>-vector fields in <math|<around|(|F<rsup|<math-up|free>><rsub|5>|)><rsup|4>>
  is onto and has a one-dimensional kernel
  (<hlink|<verbatim|free_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165>).
  They are not used in the Ward chain above.

  <em|Lean:> <hlink|<verbatim|bilinear_invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Color.lean#L79-L91>,
  <hlink|<verbatim|finrank_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L129-L167>,
  <hlink|<verbatim|finrank_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L190-L231>,
  <hlink|<verbatim|stress_tensor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L202-L214>,
  <hlink|<verbatim|div_kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L177-L184>,
  <hlink|<verbatim|stress_bijective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L227-L235>.
  <em|(proof of the divergence test read; polynomial classification and
  dimension bounds: statement only)>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The exterior flux estimate (VI.1.e) bears most of the analytic burden.
  Reflection positivity along axes of opposite parity gives the subpower
  estimate without a gap. Diagonal stress components require a separate
  conservation argument, since they have no odd reflection parity. The widths
  <math|\<lambda\><rsup|100>,\<lambda\><rsup|150>,\<lambda\><rsup|300>> and
  the split at <math|\<lambda\><rsup|-3000>> make the powers in these
  estimates compatible.

  Continuation off the line (VI.1.j\Up) requires more than a smooth function
  with vanishing jets. The collinear Ward identities determine the transverse
  jets of the two-point function; Hilbert-space positivity turns those jets
  into uniform factorial derivative bounds and hence analyticity.

  The descent (VI.1.s\Uu) constructs exact intertwiners from the free
  comparison. Lie brackets alone would give an action of a covering group
  after integration; they would not by themselves identify the required
  <math|O<around|(|4|)>> action or its signed-permutation subgroup.
  Covariance subsequently forces compatibility between degrees.

  The remaining steps use compactly supported integration by parts,
  finite-dimensional tests, group generation, Haar averaging and uniqueness
  for linear ODEs.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|label spaces, tags,
  inclusions, unit>|<cell|<hlink|<verbatim|Field
  d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>,
  <hlink|<verbatim|Tag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66>,
  <hlink|<verbatim|rise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>,
  <hlink|<verbatim|unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L100>>|<cell|<math|F<rsub|d>>,
  <math|<around|(|d,v|)>>, <math|\<iota\>>,
  <math|\<b-1\>>>>|<row|<cell|signed permutations,
  conjugation>|<cell|<hlink|<verbatim|Signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26>,
  <hlink|<verbatim|mirror>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L138-L140>,
  <hlink|<verbatim|conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L142-L144>>|<cell|<math|B<rsub|4>>,
  <math|M<rsub|\<sigma\>>>, <math|\<Gamma\>>>>|<row|<cell|differential plan
  and its laws>|<cell|<hlink|<verbatim|DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>,
  <hlink|<verbatim|Derivatives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64>,
  <hlink|<verbatim|Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>,
  <hlink|<verbatim|Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>>|<cell|<math|\<partial\><rsub|a>>;
  derivative, inclusion, orientation laws>>|<row|<cell|stress, window,
  shells>|<cell|<hlink|<verbatim|Table.Stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57>,
  <hlink|<verbatim|Window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73>,
  <hlink|<verbatim|shellGrad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L79-L81>,
  <hlink|<verbatim|shellSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L84-L86>>|<cell|<math|J<rsub|a*b>\<in\>F<rsub|4>>,
  <math|\<chi\>>, <math|\<Phi\><rsup|<math-up|tr>><rsub|\<chi\>>>,
  <math|\<Phi\><rsup|<math-up|rot>><rsub|\<chi\>>>>>|<row|<cell|raw shell
  maps; raw hypotheses>|<cell|<hlink|<verbatim|Climb.Parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L58>
  (<math|p>), <hlink|<verbatim|Ward.SpinRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L17>
  (<math|Y>); <hlink|<verbatim|Climb.Pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69>>|<cell|<math|p<rsub|a>>,
  <math|Y<rsub|K>>; (R)>>|<row|<cell|angular sum; its
  vanishing>|<cell|<hlink|<verbatim|localTurn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L72-L74>,
  <hlink|<verbatim|Ward.angular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L25-L27>;
  <hlink|<verbatim|Still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L45>,
  <hlink|<verbatim|Collinear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L34-L35>,
  <hlink|<verbatim|commutes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L29-L30>>|<cell|<math|\<cal-W\><rsub|K><around|[|Y,p|]>>,
  <math|\<cal-W\><rsub|K><around|[|T|]>>; (L), (C)>>|<row|<cell|line sums,
  transversality>|<cell|<hlink|<verbatim|LineSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L35-L36>,
  <hlink|<verbatim|Climb.transverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L57>>|<cell|line
  sums, transverse>>|<row|<cell|colour space and
  law>|<cell|<hlink|<verbatim|Colors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L66-L87>,
  <hlink|<verbatim|ColorLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L89-L91>>|<cell|colour
  space>>|<row|<cell|normalised data>|<cell|<hlink|<verbatim|Climb.Crystal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L83-L87>>|<cell|<math|p=c*<space|0.17em>\<partial\>>,
  <math|D=c<rsup|-1>*Y>>>|<row|<cell|free
  data>|<cell|<hlink|<verbatim|MaxwellData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170>,
  <hlink|<verbatim|Climb.Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>,
  <hlink|<verbatim|Lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29>,
  <hlink|<verbatim|Goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42>>|<cell|<math|F<rsup|<math-up|free>><rsub|d>,\<partial\><rsup|<math-up|free>>,R<rsup|<math-up|free>>,\<cal-L\><rsup|<math-up|free>>,J<rsup|<math-up|free>>,\<kappa\>>>>|<row|<cell|scaling
  system, track, weak law>|<cell|<hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>,
  <hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48>,
  <hlink|<verbatim|ActLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51>,
  <hlink|<verbatim|aisle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57>>|<cell|<math|<around|(|r<rsub|k>,\<xi\><rsub|k>,U<rsub|k,d>|)>>,
  <math|<math-up|aisle><rsub|k,d>>>>|<row|<cell|cutoff
  field>|<cell|<hlink|<verbatim|petal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean#L72>,
  <hlink|<verbatim|vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L14>,
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Budget.lean#L15>>|<cell|<math|<math-up|petal><rsub|a*b>>,
  <math|\<lambda\>=e<rsup|k>>>>|<row|<cell|OS vector of one
  insertion>|<cell|<hlink|<verbatim|spot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L55>,
  <hlink|<verbatim|OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61>>|<cell|<math|<math-up|spot><around|(|A,x|)>\<in\>\<cal-H\><rsub|a>>>>|<row|<cell|row
  erasure>|<cell|<hlink|<verbatim|erases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152>,
  <hlink|<verbatim|Winds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L141-L146>>|<cell|erasure>>|<row|<cell|compatibility
  of spin rows>|<cell|<hlink|<verbatim|Bid.Hyper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20>>|<cell|compatible>>|<row|<cell|perfect
  relations, Casimir projection>|<cell|<hlink|<verbatim|Spin.rel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L35>,
  <hlink|<verbatim|wave>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L57>,
  <hlink|<verbatim|Works>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L68-L71>,
  <hlink|<verbatim|effect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L21>>|<cell|perfect
  relations, <math|z<around|(|\<Omega\><around|(|B,C|)>|)>>,
  <math|<math-up|ad><rsub|B,C>>>>|<row|<cell|tilt,
  intertwiners>|<cell|<hlink|<verbatim|Spin.Tilt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L116-L122>,
  <hlink|<verbatim|realH>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L50-L52>,
  <hlink|<verbatim|change>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L44>>|<cell|<math|U<rsub|n>>,
  <math|V<rsub|d>>>>|<row|<cell|port, transported
  action>|<cell|<hlink|<verbatim|Spin.Port>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L13-L19>,
  <hlink|<verbatim|Spin.morph>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L22-L24>,
  <hlink|<verbatim|Org.mill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L17>>|<cell|<math|R<rsub|d><around|(|k|)>=V<rsub|d>*R<rsup|<math-up|free>><rsub|d><around|(|k|)>*V<rsub|d><rsup|-1>>>>|<row|<cell|rotation
  laws, covariance>|<cell|<hlink|<verbatim|Rotation.Laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42>,
  <hlink|<verbatim|Rotation.Oriented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48>>|<cell|rotation
  laws; <math|S<around|(|R<around|(|k|)>*v;k*x|)>=S<around|(|v;x|)>>>>|<row|<cell|conserved,
  tensorial; average>|<cell|<hlink|<verbatim|Conserved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L59-L62>,
  <hlink|<verbatim|Tensorial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L64-L66>,
  <hlink|<verbatim|averageStress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L86>>|<cell|<math|J<rprime|'>=<big|int>k\<cdot\>c<rsup|-1>*J*<space|0.17em>d*\<mu\>>>>|<row|<cell|Lorentz
  action on labels>|<cell|<hlink|<verbatim|Spin.run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L21-L22>,
  <hlink|<verbatim|wand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L24-L25>,
  <hlink|<verbatim|Boundary.Spins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L22-L24>,
  <hlink|<verbatim|Descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35>>|<cell|<math|B<rsub|d><around|(|\<Lambda\>|)>>>>|<row|<cell|record>|<cell|<hlink|<verbatim|Org.Commission>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L29-L43>,
  <hlink|<verbatim|Org.Tab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24>,
  <hlink|<verbatim|Spec.Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>>|<cell|<math|<around|(|c,V,J<rprime|'>|)>>;
  local laws>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Supporting analysis in the exterior flux estimate
    (probable).> The reductions to spectral integrals, the point and line
    estimates, the diagonal mass estimate and their combination in VI.1.e
    were checked against the cited proofs. The proofs of the remote-gap
    profiles, the odd temporal variant, the contact extension on product
    tests, and the finite-difference and interpolation estimates were not
    checked in full. These are the files <verbatim|GapTest>,
    <verbatim|Nodal>/<verbatim|Mode>/<verbatim|Odd>,
    <verbatim|Collision>/<verbatim|Fold>/<verbatim|Journal>,
    <verbatim|MomentFD> and <verbatim|Nodes>. In particular, the construction
    and normalisation of the contact extension remain inputs to the
    mass-estimate sketch.

    <item><strong|Free-field stress algebra (probable).> The statements in
    Ÿ4.10 and the proof that centring and the two divergence tests select the
    Maxwell line were checked. The polynomial normal-form and dimension-count
    proofs were not checked in full. The map in the cited rank theorem has
    centred stresses as its domain; centring cannot be omitted from the
    one-dimensional-kernel claim.

    <item><strong|Production of the inputs.> The immediate producers of the
    raw stress, shell maps, weak comparison and free data are identified in
    Ÿ2. Their ultraviolet hypotheses, including the annular estimates and
    finite comparison systems, are not discharged in this unit. The unused
    lattice shell-law interfaces in <verbatim|STRESS_FLUX> are not the source
    of (R).

    <item><strong|Normalisation and centring.> The Ward coefficient of
    <math|J<rprime|'>> is exactly <math|1>. Centring is not part of the
    conclusion of VI.1.7; the centred trace is formed in VII.2. The stress
    replacement used before the weak comparison supplies
    <math|\<kappa\>\<ne\>0> without the numerical identity
    <math|\<kappa\>=-\<tau\>>. Along the scaling systems used in VI.1.u,
    positivity of <math|\<xi\><rsub|k>> and
    <math|c/\<xi\><rsub|k>\<to\>\<kappa\>\<ne\>0> imply that <math|c> and
    <math|\<kappa\>> have the same sign. Neither sign is specified by this
    unit's hypotheses.

    <item><strong|Scope.> The folder ownership and line counts in the header
    have not been independently recounted. The assignment of <verbatim|Shift>
    and most of <verbatim|Next/BOUNDARY> to V.2 is tentative. The statements
    above are source comparisons; Lean elaboration and the transitive axiom
    dependencies were not checked.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> V.3 Reconstruction for every phase and
  the reconstructed theory (notes)|V-3.tm>|<hlink|Part
  VI|../units.tm#part-vi-symmetry-stress-tensor-and-ward-identities><ym-nav-sep><hlink|Unit
  outline|../units/VI-1.tm>|<hlink|VI.2 The free Maxwell stress tensor and
  the local Ward charge (notes) \<rightarrow\>|VI-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VI.1. Ward identities, the rotation action and the
    conserved stress tensor \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|3>>
    <associate|2-what-it-uses|<tuple|2|8>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|11>>
    <associate|41-local-structure-of-the-raw-shell-maps-a01a03|<tuple|4.1|11>>
    <associate|410-free-field-stress-algebra|<tuple|4.10|24>>
    <associate|42-the-collinear-ward-identity|<tuple|4.2|12>>
    <associate|43-normalisation-pcpartial-a04a06|<tuple|4.3|15>>
    <associate|44-continuation-off-the-line|<tuple|4.4|16>>
    <associate|45-brackets-a07-a08|<tuple|4.5|19>>
    <associate|46-descent-of-the-free-rotation-action-a09a12|<tuple|4.6|20>>
    <associate|47-integration-to-o4-a13-a14|<tuple|4.7|22>>
    <associate|48-the-averaged-stress-tensor-a15|<tuple|4.8|22>>
    <associate|49-lorentz-group-and-assembly|<tuple|4.9|23>>
    <associate|5-where-the-difficulty-lies|<tuple|5|24>>
    <associate|6-notation|<tuple|6|25>>
    <associate|7-what-remains-unexplained|<tuple|7|26>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|4.6|20>>
    <associate|auto-11|<tuple|4.7|22>>
    <associate|auto-12|<tuple|4.8|22>>
    <associate|auto-13|<tuple|4.9|23>>
    <associate|auto-14|<tuple|4.10|24>>
    <associate|auto-15|<tuple|5|24>>
    <associate|auto-16|<tuple|6|25>>
    <associate|auto-17|<tuple|7|26>>
    <associate|auto-2|<tuple|2|8>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|4.1|11>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|15>>
    <associate|auto-8|<tuple|4.4|16>>
    <associate|auto-9|<tuple|4.5|19>>
    <associate|vi1-ward-identities-the-rotation-action-and-the-conserved-stress-tensor--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Local structure of the raw shell maps
      (A01\UA03) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The collinear Ward identity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Normalisation
      <with|mode|<quote|math>|p=c*<space|0.17em>\<partial\>> (A04\UA06)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Continuation off the line
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Brackets (A07, A08)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Descent of the free rotation action
      (A09\UA12) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Integration to
      <with|mode|<quote|math>|O<around|(|4|)>> (A13, A14)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 The averaged stress tensor (A15)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 Lorentz group, and assembly
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|4.10 Free-field stress algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>