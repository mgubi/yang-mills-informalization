<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.14 The construction run: flat
  representations and the ultraviolet rate|III-14.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-15.tm>|<hlink|III.16 Analytic toolkit
  \<rightarrow\>|III-16.tm>>

  <ym-title|III.15. Cost accounting for observables and the remainder
  comparison><label|iii15-cost-accounting-for-observables-and-the-remainder-comparison>

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

  <em|Part III \V Ultraviolet construction (renormalization group).>

  Organizes observable and activity bounds, including additional comparison
  estimates carried by the selected run.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-15.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.14|III-14.tm> <ym-middot> <hlink|Next:
  III.16 \<rightarrow\>|III-16.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> The pair-step and observable-derivative bounds feed
  <hlink|III.2|III-2.tm>, <hlink|III.9|III-9.tm> and
  <hlink|III.10|III-10.tm>. Additional comparison bounds reach the selected
  run in <hlink|III.14|III-14.tm> as a separate conjunct, which the final
  construction-run theorem discards; this does not establish that the
  associated code can be removed.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> unit III.15: <hlink|<verbatim|YM/RemainderComparison/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison>,
    <hlink|<verbatim|YM/Progress/DIRECTED_RECIPE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE>,
    <hlink|<verbatim|YM/Next/SCHEDULE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE>,
    with readout and integration fragments. <strong|Size:> 7,382 lines, 1,053
    declarations; about 4,200 lines concern launch data.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition III.15.1 (pair-step rates).> Fix
  <math|\<rho\>\<gtr\>0>, <math|C\<geqslant\>0>, <math|r\<gtr\>\<rho\>>,
  <math|d\<in\>\<bbb-N\>>, <math|e\<in\>\<bbb-R\>>, <math|q\<gtr\>0>. Put

  <\equation*>
    s=p<around|(|y|)><sqrt|\<beta\>/y>,<space|1em>a=C*e<rsup|-r*s<rsup|2>>,<space|1em>b=C*<around|(|1+\<cal-B\><around|(|y|)>|)><rsup|d>*p<around|(|y|)><rsup|e>*g<around|(|y|)><rsup|q>,<space|1em>\<kappa\>=\<rho\>*s<rsup|2>,<space|1em>\<gamma\>=e<rsup|\<kappa\>>*a+2*b.
  </equation*>

  For all sufficiently large <math|y\<gtr\>1>, uniformly for
  <math|\<beta\>\<in\><around|[|y/4,4*y|]>> and integers
  <math|0\<leqslant\>B\<leqslant\>\<cal-B\><around|(|y|)>>,

  <\equation*>
    \<kappa\>,a\<geqslant\>0,<space|2em>0\<leqslant\>b\<leqslant\>1,<space|2em><around|(|2*B+1|)><rsup|4>*\<gamma\>\<leqslant\>1,<space|2em><math-up|quote><around|(|\<kappa\>,\<gamma\>|)>\<leqslant\>e<rsup|-\<kappa\>>.
  </equation*>

  The threshold depends only on the fixed parameters. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Pairing.currency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139>.

  <strong|Proposition III.15.2 (hard\Usoft merging).> Fix a parameter point
  with <math|K\<geqslant\>6>, direction power <math|P<rsub|0>\<geqslant\>2>,
  <math|B<rsub|P>\<geqslant\>1>, <math|\<sigma\>\<gtr\>0>,
  <math|0\<less\>t<rsub|P>\<leqslant\>1>. Assume countably indexed regular
  terms <math|E<rsub|i>>, forced activities <math|F<rsub|i>> on
  <math|X<rsub|i>>, and real corrections <math|\<ell\><rsub|i>> on nonempty
  <math|X<rprime|'><rsub|i>>. Require support regularity, flat-field
  vanishing and vanishing affine Hessian on nonwrapping supports for
  <math|E<rsub|i>>; gauge invariance, measurability and dependence on
  supported links and final flags for <math|F<rsub|i>>, their eligibility
  tests and <math|\<ell\><rsub|i>>; eligibility whenever
  <math|F<rsub|i>\<ne\>0>; translation/reflection covariance for all
  families, with prescribed permutations, support and inventory
  transformations for regular and forced families; and
  <math|\<ell\><rsub|i>=0> on its small-field region. Suppose the regular
  family's nonnegative derivative bounds through <math|K> on small-field
  supports, in prescribed directions, have weighted anchored sum
  <math|\<leqslant\>\<delta\>>; <math|<around|\||F<rsub|i><around|(|U|)>|\|>\<leqslant\>p<rsub|i>>,
  <math|<around|\||\<ell\><rsub|i><around|(|U|)>|\|>\<leqslant\>q<rsub|i>>
  for all <math|i,U>, with <math|p<rsub|i>,q<rsub|i>\<geqslant\>0>; and

  <\equation*>
    <math-up|Hit><rsub|B<rsub|P>><around|(|p;\<sigma\>+1|)>\<leqslant\>a,<space|2em><math-up|Hit><rsub|B<rsub|P>><around|(|q;\<sigma\>+1|)>\<leqslant\>b.
  </equation*>

  Assume III.15.1's inequalities with <math|B=B<rsub|P>>, replacing its last
  bound by <math|<math-up|quote><around|(|\<kappa\>,\<gamma\>|)>\<leqslant\>w>.
  Then the fusion input condition holds with <math|<around|(|\<delta\>,w|)>>:
  original bounds <math|\<delta\>,a> persist, the soft family has a summable
  uniform majorant, and <math|<around|(|F<rsub|i>|)>\<sqcup\><around|(|e<rsup|\<ell\><rsub|i>>-1|)>>
  has weights <math|<around|(|e<rsup|\<kappa\>>*p<rsub|i>|)>\<sqcup\><around|(|2*q<rsub|i>|)>>
  and hit bound <math|\<gamma\>>, with <math|<around|\||F<rsub|i>|\|>\<leqslant\>e<rsup|-\<kappa\>>*<around|(|e<rsup|\<kappa\>>*p<rsub|i>|)>>
  and <math|<around|\||e<rsup|\<ell\><rsub|i>>-1|\|>\<leqslant\>2*q<rsub|i>>.
  III.10's fusion gives norm <math|\<leqslant\>w>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133>.

  For III.15.3\U4 fix <math|K\<geqslant\>6>, <math|P\<geqslant\>2>,
  <math|0\<less\>t\<leqslant\>1>. Directions satisfy
  <math|<around|\<\|\|\>|A<rsub|e>|\<\|\|\>>\<leqslant\>t*<around|(|1+<math-up|dist><around|(|e,o|)>|)><rsup|P>>.

  <strong|Proposition III.15.3 (slots).> For every
  <math|\<ell\>\<in\>\<bbb-N\>>, slot <math|s> with
  <math|<around|\||s|\|>\<leqslant\>\<ell\>>, finite
  <math|S\<subset\>\<bbb-Z\><rsup|4>> containing its stencil, and site
  <math|o>, the slot is <math|K> times left-differentiable. If <math|U> is
  small-field on wrapped <math|o+S>, every derivative of order
  <math|m\<leqslant\>K> in admissible directions has norm
  <math|\<leqslant\>C<rsub|s><around|(|P,K,\<ell\>|)>*t>, where

  <\equation*>
    C<rsub|s><around|(|P,K,\<ell\>|)>=<around|(|1+\<kappa\><rsub|G><rsup|-1><around|\<\|\|\>|1|\<\|\|\>>|)>*<around|[|2*<around|(|\<kappa\><rsub|G>+1|)>*2<rsup|P>*<around|(|\<ell\>+1|)><rsup|P+1>|]><rsup|K>.
  </equation*>

  At order zero the bound is <math|t>; constants are independent of volume
  and <math|t>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|YM.Next.Scheduling.Wages.slotPays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159>.

  <strong|Proposition III.15.4 (atoms).> For every <math|k\<in\>\<bbb-N\>>,
  <math|k>-leg atom <math|a>, site <math|o>, and <math|U> small-field on its
  footprint, <math|a<around|(|\<cdummy\>,o|)>> is <math|K> times
  left-differentiable, with every admissible derivative through <math|K>
  bounded by

  <\equation*>
    <around|\||a|\|>*2<rsup|K>*<around|[|2<rsup|K>*C<rsub|s><around|(|P,K,<math-up|len><around|(|a|)>|)>*t|]><rsup|k>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.fin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71>.

  <strong|Proposition III.15.5 (launch data).> Let <math|G> be simple. Fix a
  sheet of profiles <math|P<rsub|j>>, kernel, compatible price table, targets
  <math|R<rsub|j*i>> with <math|\<rho\><rsub|R<rsub|j*i>>\<less\>-3/8> for
  all <math|j,i>, tolerances <math|h<rsub|j*i>\<gtr\>0>, libraries
  <math|C<rsub|j*i>> of order <math|P<rsub|i>>, and marks <math|r<rsub|j*i>>.
  There exist <math|f:\<bbb-N\>\<to\>\<bbb-N\>> and
  <math|C<rprime|'><rsub|j*i>\<geqslant\>1> giving quotation bounds with
  fine/coarse exponents <math|<around|(|\<sigma\><rsub|j>,\<sigma\><rsub|i>+2|)>>
  and factor <math|C<rprime|'><rsub|j*i>*L<rsup|-5>>. These require support
  enlargement by <math|r<rsub|j*i>*\<cal-B\><around|(|x|)>>, coarse power
  equal to that of <math|P<rsub|i>>, fine exponent <math|\<sigma\><rsub|j>>,
  <math|B<rsub|P>=\<cal-B\><around|(|x|)>>,
  <math|B<rsub|B>\<leqslant\>2*B<rsub|P>>,
  <math|t<rsub|P>\<leqslant\>2*t<rsub|B>>, and acceptance. For every
  <math|u\<geqslant\>0> satisfying local analytic smallness and every
  <math|\<tau\>\<geqslant\>0>, the bound holds. The quotation inequality is
  <math|e<rsup|<around|(|\<sigma\><rsub|i>+2|)>*N<rsub|B<rsub|P>><around|(|Y|)>>*\<tau\><space|0.17em><math-up|returnFee>\<leqslant\>C<rprime|'><rsub|j*i>*L<rsup|-5>*e<rsup|\<sigma\><rsub|j>*N<rsub|B<rsub|B>><around|(|X|)>>*\<tau\>>.
  For each stage pair <math|<around|(|j,i|)>> and every block side
  <math|L\<geqslant\>f<rsub|j>>, III.15.6 holds and

  <\equation*>
    <around|(|<math-up|rel><rsub|R<rsub|j*i>>+1|)>*10*c<rsub|h<rsub|R<rsub|j*i>>+5>/L+2*\<varepsilon\><rsub|R<rsub|j*i>>\<leqslant\>\<sigma\><rsub|j>,<space|1em>20*<around|(|\<sigma\><rsub|i>+2|)><math-up|toll><around|(|r<rsub|j*i>|)>\<leqslant\>L*\<sigma\><rsub|j>,<space|1em>C<rprime|'><rsub|j*i>/L\<leqslant\>h<rsub|j*i>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Chron.sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>.

  <strong|Proposition III.15.6 (large-side comparison).> For simple <math|G>,
  kernel <math|K> and target <math|Q> with
  <math|\<rho\><rsub|Q>\<less\>-3/8>, there exists <math|n> such that for
  every <math|L\<geqslant\>n> and branching patch, every
  <math|W,\<mu\>\<gtr\>0>, order datum at <math|W>, songbook and scrollwork
  at side <math|L>, <math|\<chi\>>, stages <math|E,E<rprime|'>>, rays
  satisfying the heart condition for <math|<around|(|E<rprime|'>,<math-up|e><rsub|Q>|)>>,
  library of order <math|E<rprime|'>>, record with parameter
  <math|\<leqslant\>1/4>, <math|j\<in\>\<bbb-N\>>, reserve <math|f>, and
  <math|\<eta\>,\<delta\>\<gtr\>0>, there exist a financed quarry <math|D> at
  rate <math|\<rho\><rsub|Q>>, with <math|d<around|(|D|)>\<gtr\>0> and paint
  supply, and <math|P<rsub|1>>. For all <math|x\<geqslant\>P<rsub|1>>, poster
  comparison, chart conditions and instructions hold; active, resonance and
  tolerance conditions hold for every <math|\<beta\>\<in\><around|[|\<beta\><rsub|F>/4,4*\<beta\><rsub|F>|]>>
  and every point tempered to <math|E<rprime|'>>. The threshold <math|n> is
  independent of auxiliary data; <math|D,P<rsub|1>> may depend on them.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Cadenza.buoys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58>.

  <strong|Proposition III.15.7 (delay enlargement).> Fix a sheet, compatible
  target/expense tables <math|R,X>, sides <math|L<rsub|j>>, protection,
  register, firmament, tolerances, libraries and marks as in III.15.5, and
  records <math|u<rsub|j*i>>. The register supplies positive
  <math|W<rsub|j*i>,\<mu\><rsub|j*i>> and orders on stage pairs; each finite
  request family supplies scrollwork, songbook, grade/orders, reserve,
  positive constants, and an extra condition eventually true for every
  financed quarry. Assume launch thresholds
  <math|k<rsub|j>\<leqslant\>L<rsub|j>>, <math|\<varepsilon\><around|(|u<rsub|j*i>|)>\<leqslant\>1/4>
  on stage pairs with <math|i> at least the first stage, and
  <math|\<sigma\><rsub|i>+3\<less\><math-up|e><rsub|R<rsub|j*i>>> for all
  <math|j,i>. For every initial delay <math|T<rsub|0>>, there exist
  <math|W\<geqslant\>T<rsub|0>> and quarries <math|V<rsub|j*i*g>> for every
  request slot at every <math|<around|(|j,i|)>>, chosen before any
  <math|U\<geqslant\>W>. For every such <math|U>, launch data persist; on
  branching stage pairs with <math|j\<geqslant\>4> and <math|i> at least the
  first stage, every request has the heart property, positive <math|d>, paint
  supply, III.15.6's allotment at threshold
  <math|\<beta\><rsub|j><rsup|\<ast\>><around|(|U|)>>, and its extra
  condition above that threshold. On all stage pairs with <math|i> at least
  the first stage, requests are tiled whenever
  <math|x\<geqslant\>\<beta\><rsub|j><rsup|\<ast\>><around|(|U|)>> and

  <\equation*>
    c\<geqslant\><math-up|shells><rsub|j><around|(|U|)>*<around|(|1+\<cal-B\><around|(|x|)>|)><rsup|<math-up|growth><rsub|j><around|(|U|)>>.
  </equation*>

  Tiling means <math|2*z<rsub|g><around|(|x|)>\<less\>c> and
  <math|4<math-up|halo><rsub|g><around|(|x|)>+16\<leqslant\>c>. Delay
  ordering increases entry couplings, scale-entry functions, shell counts and
  growth exponents componentwise. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|YM.RemainderComparison.Chron.grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>III.1: scales, slots, atoms; II.1: left-derivative calculus; II.2:
    hit bounds; III.5: logarithmic cluster tails.

    <item>III.10: fusion, quotation, connected-activity and tree estimates;
    III.2: selected targets and delay ordering.

    <item>Leibniz and chain rules, Mayer expansion, Kotecký\UPreiss bounds,
    elementary asymptotics, <math|<around|\||e<rsup|z>-1|\|>\<leqslant\>2<around|\||z|\|>>
    for <math|<around|\||z|\|>\<leqslant\>1>.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Retain <math|e<rsup|-\<rho\>*s<rsup|2>>> from the hard bound and use the
  remaining Gaussian decay to absorb support counting; soft bounds decay by
  their negative coupling power. Express slots as single group words:
  unitarity controls derivatives, and Leibniz gives <math|t<rsup|k>> for
  atoms.

  Choose the block-side threshold before auxiliary data, then comparison
  functions and entry couplings. Negative activity rate survives the tree
  weight <math|\<beta\><rsub|F><rsup|3/8>>; finitely many requests per stage
  permit common delay enlargement.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Fusion.> Rescaled hard weights and doubled soft weights add
    to <math|\<gamma\>>; the exponential inequality bounds the Mayer terms.
    <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133>.

    <item><strong|Observable bounds.> Differentiate the detour word, use
    unitarity, then multiply slot estimates.
    <hlink|<verbatim|YM.Next.Scheduling.Wages.slotPays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159>;
    <hlink|<verbatim|YM.Next.Scheduling.Wages.fin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71>.

    <item><strong|Comparison functions.> Choose reserve functions conditional
    on local derivative estimates, charts and coefficient matching.
    <hlink|<verbatim|YM.RemainderComparison.Herbal.compile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56>
    <em|(proof read; analytic inputs not expanded)>.

    <item><strong|Marked outputs.> For the conditional marked-output
    estimate, separate single remaining occurrences from clusters with
    further occurrences and from large supports. The <math|L<rsup|-5>>
    quotation summed over <math|L<rsup|4>> sites supplies the
    <math|C<rsub|0>/L> term; the other contributions have negative rate.
    Occurrences are counted outside inserted leaves, with at least one
    marked. <hlink|<verbatim|YM.RemainderComparison.Solo.atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61>
    <em|(proof read; singleton input not expanded)>.

    <item><strong|Launch and enlargement.> Combine comparison and tail bounds
    with quotation thresholds, then take finite stagewise maxima.
    <hlink|<verbatim|YM.RemainderComparison.Chron.sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>;
    <hlink|<verbatim|YM.RemainderComparison.Chron.grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The bounds must be uniform in coupling bands and volume; the block-side
  threshold precedes all auxiliary choices, while comparison functions
  precede the entry coupling. Part C's conditional comparison conclusions
  reach the selected run but are discarded by the final construction-run
  theorem.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|g<around|(|\<beta\>|)>=\<beta\><rsup|-1/2>>,
  <math|p<around|(|x|)>=e<rsup|<around|(|log log x|)><rsup|2>>>,
  <math|t<around|(|x|)>=g<around|(|x|)>*p<around|(|x|)>>,
  <math|\<cal-B\><around|(|x|)>=<around|\<lceil\>|<around|(|log
  x|)><rsup|2>|\<rceil\>>>, <math|\<beta\><rsub|F>=x+b<rsub|G>*log L>;
  <math|x> is coarse inverse coupling. <math|<math-up|quote><around|(|\<kappa\>,\<gamma\>|)>=e<rsup|-\<kappa\>>*<around|(|e<rsup|\<gamma\>>-1|)>>.
  Hit means <math|<big|sum><rsub|i:z\<in\>X<rsub|i>>f<rsub|i>*e<rsup|a*N<rsub|M><around|(|X<rsub|i>|)>>\<leqslant\>\<gamma\>>
  at every site <math|z>, for weights <math|f<rsub|i>\<geqslant\>0>;
  <math|N<rsub|M>> counts a minimal connected covering by <math|M>-balls.
  Stage pairs have <math|i\<in\><around|{|j,j-1|}>>; <math|\<sigma\><rsub|j>>
  is the profile's support exponent. A quarry is a record of bounding
  functions; financing specifies reserve/rate bounds. Rate
  <math|\<leqslant\>a> means <math|<around|\||w|\|>\<leqslant\>\<beta\><rsub|F><rsup|v>>
  eventually for every <math|v\<gtr\>a>; a reserve satisfies
  <math|<around|\||w|\|>\<leqslant\>p<around|(|\<beta\><rsub|F>|)><rsup|k>>
  eventually for some <math|k\<in\>\<bbb-N\>>.

  A slot is curvature transported along a walk <math|\<omega\>>, with length
  <math|<around|\||\<omega\>|\|>+4>; atoms are coefficient-weighted products
  of slots, with coefficient norm <math|<around|\||a|\|>=<big|sum><rsub|b><around|\||c<rsub|b>|\|>>
  and total length <math|<math-up|len><around|(|a|)>>. Small-field means
  every touching plaquette has chord distance <math|\<leqslant\>t> from
  identity; <math|\<kappa\><rsub|G>> is the colour scale and
  <math|<around|\<\|\|\>|1|\<\|\|\>>> the Frobenius norm of identity.

  For a target <math|Q>, <math|<math-up|rel><rsub|Q>=<math-up|e><rsub|Q>+2*\<varepsilon\><rsub|Q>+\<delta\><rsub|Q>>;
  <math|h<rsub|Q>> is its halo and <math|c<rsub|h<rsub|Q>+5>> its pre-cost.
  Targets carry their chart/local-ratio conditions,
  <math|\<rho\><rsub|Q>\<in\><around|(|-1/2,0|)>>,
  <math|<math-up|e><rsub|Q>\<geqslant\>0>,
  <math|\<varepsilon\><rsub|Q>,\<delta\><rsub|Q>\<gtr\>0>,
  <math|h<rsub|Q>\<geqslant\>500>, <math|4*\<varepsilon\><rsub|Q>> below the
  top support exponent and <math|8*\<varepsilon\><rsub|Q>> below both chart
  widths. <hlink|<verbatim|YM.ConnectedActivityE6.Target>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76>.

  The heart condition is

  <\equation*>
    0\<leqslant\>\<sigma\><rsub|\<ast\>>,<space|1em>\<sigma\><rsub|E<rprime|'>>\<leqslant\>\<sigma\><rsub|\<ast\>>,<space|1em>\<sigma\><rsub|\<ast\>>+1\<leqslant\>a<rsub|\<ast\>>,<space|1em>\<varepsilon\><rsub|\<ast\>>\<gtr\>0,<space|1em>a<rsub|\<ast\>>+3*\<varepsilon\><rsub|\<ast\>>\<leqslant\><math-up|e><rsub|Q>,
  </equation*>

  <\equation*>
    <math-up|ord><around|(|E<rprime|'>|)>\<leqslant\>J<rsub|\<ast\>>,<space|1em><math-up|ord><around|(|E<rprime|'>|)>+<around|(|p<rsub|\<ast\>>+1|)>+p<rsub|\<ast\>>+2\<leqslant\>n<rsub|\<ast\>>,<space|1em>p<rsub|\<ast\>>+1\<leqslant\>s<rsub|\<ast\>>,<space|1em>k<rsub|\<ast\>>+1\<leqslant\>s<rsub|\<ast\>>,
  </equation*>

  with starred ray parameters. Tempered points have radius
  <math|\<cal-B\><around|(|x|)>>, threshold
  <math|t<around|(|x|)>\<leqslant\>2*t<around|(|\<beta\><rsub|F>|)>>, and the
  stage's order, power and support exponent.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Local analytic, compatibility and readiness conditions remain to be written
  out. Comparison-function existence does not supply coefficient matching.
  The singleton, weighted-cluster, full-bill and analytic-expansion inputs
  are not all checked here; readout, RG12 and R2I fragments also remain
  outside the detailed verification.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-15.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|III.10|III-10.tm>, <hlink|III.1|III-1.tm>,
  <hlink|I.1|I-1.tm>, <hlink|II.2|II-2.tm>, <hlink|III.5|III-5.tm>,
  <hlink|III.6|III-6.tm>, <hlink|III.11|III-11.tm>, <hlink|III.2|III-2.tm>,
  <hlink|II.1|II-1.tm>, <hlink|III.16|III-16.tm>, <hlink|III.9|III-9.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|III.4|III-4.tm>.

  <strong|Referenced by:> <hlink|III.2|III-2.tm>, <hlink|III.12|III-12.tm>,
  <hlink|III.13|III-13.tm>, <hlink|III.10|III-10.tm>, <hlink|III.9|III-9.tm>,
  <hlink|III.11|III-11.tm>, <hlink|III.14|III-14.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|III.4|III-4.tm>, <hlink|III.3|III-3.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 7,382 attributed lines; 1,053 line-counted
  declarations; 1,745 assigned declaration names. Of the assigned names,
  1,568 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>
    and the results it chains to \V 4,201 lines.

    <item>work package <hlink|<verbatim|YM/Progress/DIRECTED_RECIPE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE>
    \V 1,251 lines.

    <item>work package <hlink|<verbatim|YM/Next/SCHEDULE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE>
    \V 933 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Cadenza/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza>
    \V 186 lines.

    <item>work package <hlink|<verbatim|YM/RG05Readout/Test/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Test>
    \V 62 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Auxiliary/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Auxiliary>
    \V 61 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Funk/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Funk>
    \V 61 lines.

    <item>work package <hlink|<verbatim|YM/RG05Readout/Offsets/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Offsets>
    \V 49 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Access/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access>
    \V 47 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Herbal/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal>
    \V 42 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Gaussian/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gaussian>
    \V 41 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Chron/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron>
    \V 40 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Muse/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse>
    \V 38 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Portal/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal>
    \V 38 lines.

    <item>work package <hlink|<verbatim|YM/RG05Readout/Grants/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Grants>
    \V 36 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Lyric/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric>
    \V 36 lines.

    <item>work package <hlink|<verbatim|YM/R2I/Campaign/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign>
    \V 34 lines.

    <item>work package <hlink|<verbatim|YM/RG05Readout/Address/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout/Address>
    \V 26 lines.

    <item>work package <hlink|<verbatim|YM/Integration/RG05Preconstruction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction>
    \V 25 lines.

    <item>work package <hlink|<verbatim|YM/RG12/Shadows/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows>
    \V 25 lines.

    <item>work package <hlink|<verbatim|YM/RG12/Spins/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins>
    \V 18 lines.

    <item>work package <hlink|<verbatim|YM/R2I/Buckram/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Buckram>
    \V 17 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Arc/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Arc>
    \V 16 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Cascade/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cascade>
    \V 14 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Sleet/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet>
    \V 13 lines.

    <item>work package <hlink|<verbatim|YM/Integration/ChronPreconstruction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction>
    \V 12 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Halo/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo>
    \V 10 lines.

    <item>work package <hlink|<verbatim|YM/OPE/Therm/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Therm>
    \V 9 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Flues/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Flues>
    \V 9 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Exchange/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Exchange>
    \V 8 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Solo/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo>
    \V 5 lines.

    <item>work package <hlink|<verbatim|YM/RG12/Burst/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst>
    \V 4 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Passion/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Passion>
    \V 4 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Gear/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear>
    \V 4 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Ethereal/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Ethereal>
    \V 3 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/WickReps/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/WickReps>
    \V 2 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Apo/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Apo>
    \V 1 lines.

    <item>work package <hlink|<verbatim|YM/RemainderComparison/Breeze/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Breeze>
    \V 1 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|YM.Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>

    <item><hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.Time.cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126>

    <item><hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.High.paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Higher.lean#L35-L41>

    <item><hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.Collection.Local.renew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128>

    <item><hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.Low.plain_bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Quadratic.lean#L64-L83>

    <item><hlink|<verbatim|YM.ConnectedActivityE6.Blaze.March.collars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Armada.lean#L25>

    <item><hlink|<verbatim|YM.ConnectedActivityE6.Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23>

    <item><hlink|<verbatim|YM.Bid.quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Jams.reunite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L72-L85>

    <item><hlink|<verbatim|YM.Gauge.colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64>

    <item><hlink|<verbatim|YM.Gauge.projectColor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97>

    <item><hlink|<verbatim|YM.Independent.constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>

    <item><hlink|<verbatim|YM.Integration.RG05Preconstruction.ReadoutPurchase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L28-L39>

    <item><hlink|<verbatim|YM.Integration.RG05Preconstruction.PrimitiveExtras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L41-L43>

    <item><hlink|<verbatim|YM.Integration.RiderResourceDynamics.defaultDynamics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RiderResourceDynamics.lean#L24-L25>

    <item><hlink|<verbatim|Clocks.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean>

    <item><hlink|<verbatim|YM.Next.Scheduling.Clock.light>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L100-L106>

    <item><hlink|<verbatim|YM.Next.Scheduling.Clock.ceiling_cheaper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L110-L120>

    <item><hlink|<verbatim|YM.Next.Scheduling.Clock.burnt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L141-L152>

    <item><hlink|<verbatim|YM.Next.Scheduling.Clock.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38>

    <item><hlink|<verbatim|YM.Next.Scheduling.Clock.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L40>

    <item><hlink|<verbatim|YM.Next.Scheduling.Clock.watch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L42>

    <item><hlink|<verbatim|YM.Next.Scheduling.band_gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L105-L111>

    <item><hlink|<verbatim|YM.Next.Scheduling.Instrument.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L55>

    <item><hlink|<verbatim|YM.Next.Scheduling.Instrument.t>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59>

    <item><hlink|<verbatim|YM.Next.Scheduling.inBand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.Path.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/GridCost.lean#L184-L197>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.detour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L64-L65>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.projector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L67-L68>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.hangs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L70-L80>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.norm_projector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L82-L88>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.margin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.slotCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.startup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L78>

    <item><hlink|<verbatim|YM.Next.Scheduling.Wages.scan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Daisy.pledgeQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Corral.lean#L26>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Height.grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Height.pressureYoung>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L30-L35>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Marlin.cannon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Marlin/Pylon.lean#L38-L49>

    <item><hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.Quotation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L23-L27>

    <item><hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.quoting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29>

    <item><hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Walled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Depth.lean#L44>

    <item><hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Lute.Plented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L25-L26>

    <item><hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.accepts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L59>

    <item><hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Plays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Sonata.lean#L66-L75>

    <item><hlink|<verbatim|YM.Pressure.radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>

    <item><hlink|<verbatim|YM.Pressure.betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>

    <item><hlink|<verbatim|YM.Pressure.temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Ingredients>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Ingredients.gates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L63-L68>

    <item><hlink|<verbatim|Economy.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Pairing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.shares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L107-L117>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.inflation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L32>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.hardCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.softCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.rooted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L48-L49>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Fittings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L52-L62>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.drop_reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L64-L76>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.give>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L78-L86>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.blend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L88>

    <item><hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.merges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L98-L105>

    <item><hlink|<verbatim|YM.Push.AbsoluteSums.Delay.fineMonitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24>

    <item><hlink|<verbatim|YM.Push.PriceCompiler.StepStages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.Extras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Expenses.lean#L35-L45>

    <item><hlink|<verbatim|YM.RG.BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>

    <item><hlink|<verbatim|YM.RG.BudgetPoint.dirBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142>

    <item><hlink|<verbatim|YM.RG.Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>

    <item><hlink|<verbatim|YM.RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>

    <item><hlink|<verbatim|YM.RG.Atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86>

    <item><hlink|<verbatim|YM.RemainderComparison.Reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Rays.Heart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L50-L59>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Temper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L63-L69>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L21-L27>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Bequest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L44-L45>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Staked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L47-L51>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Instructions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L57-L60>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Coaxes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L35-L41>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Allot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L42-L44>

    <item><hlink|<verbatim|YM.RemainderComparison.Cadenza.Quay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46>

    <item><hlink|<verbatim|YM.RemainderComparison.Chron.Glint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L49-L63>

    <item><hlink|<verbatim|YM.RemainderComparison.Chron.Firmament>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L64-L66>

    <item><hlink|<verbatim|YM.RemainderComparison.Chron.Contemple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71>

    <item><hlink|<verbatim|YM.RemainderComparison.Chron.Pledge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95>

    <item><hlink|<verbatim|YM.RemainderComparison.Chron.Pillar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28>

    <item><hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.Stagehands.News>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Rig.lean#L21-L22>

    <item><hlink|<verbatim|YM.RemainderComparison.Gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean#L25>

    <item><hlink|<verbatim|YM.RemainderComparison.Halo.Presents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Cut.lean#L26-L29>

    <item><hlink|<verbatim|YM.RemainderComparison.Halo.dyed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L37>

    <item><hlink|<verbatim|YM.RemainderComparison.Halo.gross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L39>

    <item><hlink|<verbatim|YM.RemainderComparison.Herbal.Airstrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.Scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Flux.lean#L54-L59>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.ink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L31>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.Premium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L80-L89>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.epochs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L93-L120>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.radiusCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.bidLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L37-L42>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.notes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Plectrum.lean#L33>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.gathers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L49-L76>

    <item><hlink|<verbatim|YM.RemainderComparison.Lyric.salaries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Store.lean#L62-L63>

    <item><hlink|<verbatim|YM.RemainderComparison.Muse.Roles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L63-L77>

    <item><hlink|<verbatim|YM.RemainderComparison.Portal.Pan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Lamps.lean#L51-L58>

    <item><hlink|<verbatim|YM.RemainderComparison.Portal.JMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81>

    <item><hlink|<verbatim|YM.RemainderComparison.Sleet.pigment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet/Flint.lean#L42>

    <item><hlink|<verbatim|YM.Work.G07.LeftBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Calculus.lean#L124-L129>

    <item><hlink|<verbatim|YM.Work.G07.slot_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L165-L176>

    <item><hlink|<verbatim|YM/RG05Readout/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-15-1>

  <\itemize-minus>
    <item><strong|K-III.15.1> <hlink|<verbatim|currency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139>
    <em|(numbered result)> \V Eventually in y, uniformly over beta in band,
    pair-step rates hold with the exponentially small strong and mild costs.
  </itemize-minus>

  <label|k-iii-15-2>

  <\itemize-minus>
    <item><strong|K-III.15.2> <hlink|<verbatim|tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133>
    <em|(numbered result)> \V Separate hard and soft transfer costs with a
    rate relation suffice to obtain the combined Ingredients bound.
  </itemize-minus>

  <label|k-iii-15-3>

  <\itemize-minus>
    <item><strong|K-III.15.3> <hlink|<verbatim|slotPays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159>
    <em|(key result)> \V A local slot observable satisfies a derivative bound
    with explicit slot cost on a healthy region of a finite site set.
  </itemize-minus>

  <label|k-iii-15-4>

  <\itemize-minus>
    <item><strong|K-III.15.4> <hlink|<verbatim|sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>
    <em|(key result)> \V For a simple gauge group, if all rates satisfy
    3/8+rate\<less\>0, there exist data meeting the pre-stage launch (pledge)
    conditions for the all-order asymptotic proof.
  </itemize-minus>

  <label|k-iii-15-5>

  <\itemize-minus>
    <item><strong|K-III.15.5> <hlink|<verbatim|buoys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58>
    <em|(key result)> \V For a simple group and rate with 3/8+rate\<less\>0
    the quay condition holds for all sufficiently large side lengths.
  </itemize-minus>

  <label|k-iii-15-6>

  <\itemize-minus>
    <item><strong|K-III.15.6> <hlink|<verbatim|rollBefore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80>
    <em|(key result)> \V Beyond a size threshold, any financed poster extends
    to a financed quarry satisfying the instruction conditions eventually in
    x.
  </itemize-minus>

  <label|k-iii-15-7>

  <\itemize-minus>
    <item><strong|K-III.15.7> <hlink|<verbatim|quorum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51>
    <em|(key result)> \V For positive \<mu\> and a suitable heart condition
    there is a positive-parameter financed budget that is paid for all large
    x.
  </itemize-minus>

  <label|k-iii-15-8>

  <\itemize-minus>
    <item><strong|K-III.15.8> <hlink|<verbatim|compile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56>
    <em|(key result)> \V Given admissible weights and index bounds, there
    exist four admissible functions such that the airstrip comparison
    estimate holds eventually in t.
  </itemize-minus>

  <label|k-iii-15-9>

  <\itemize-minus>
    <item><strong|K-III.15.9> <hlink|<verbatim|run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100>
    <em|(numbered result)> \V A weighted sum over revealed semantic supports
    satisfies a quantitative retention bound, giving a uniform hit estimate
    under a veto condition.
  </itemize-minus>

  <label|k-iii-15-10>

  <\itemize-minus>
    <item><strong|K-III.15.10> <hlink|<verbatim|atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61>
    <em|(key result)> \V For large L and every recorded setup there are rates
    and constants so that a captain structure exists and scale-data inquiries
    are paid.
  </itemize-minus>

  <label|k-iii-15-11>

  <\itemize-minus>
    <item><strong|K-III.15.11> <hlink|<verbatim|seeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57>
    <em|(key result)> \V For large side L there exist rates and constants
    such that eventually in x every setup admits a captain structure with the
    heavy, heroes and quarry properties.
  </itemize-minus>

  <label|k-iii-15-12>

  <\itemize-minus>
    <item><strong|K-III.15.12> <hlink|<verbatim|generation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96>
    <em|(key result)> \V Under 3/8+rate\<less\>0, for large L every certified
    test is paid, with pad structure and role bounds with negative-rate
    errors.
  </itemize-minus>

  <label|k-iii-15-13>

  <\itemize-minus>
    <item><strong|K-III.15.13> <hlink|<verbatim|ramp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65>
    <em|(key result)> \V With inherited recurrence budgets, a captain
    structure exists and, for any scale data, yields horizon-type bounds with
    a negative exponent.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.14 The construction run: flat
  representations and the ultraviolet rate|III-14.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-15.tm>|<hlink|III.16 Analytic toolkit
  \<rightarrow\>|III-16.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.15. Cost accounting for observables and the
    remainder comparison \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|4>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|7>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|iii15-cost-accounting-for-observables-and-the-remainder-comparison|<tuple|?|1>>
    <associate|k-iii-15-1|<tuple|10|11>>
    <associate|k-iii-15-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-13|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-15-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-15-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-15-9|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|5|4>>
    <associate|unit-inputs|<tuple|1|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
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