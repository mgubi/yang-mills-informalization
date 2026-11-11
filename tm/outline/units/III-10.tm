<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.9 The marginal flow: the running
  coupling and its reset|III-9.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-10.tm>|<hlink|III.11 Interacting rank, Gaussian
  comparison and the stress tensor \<rightarrow\>|III-11.tm>>

  <ym-title|III.10. One full nonlinear renormalization step: bounds on
  irrelevant terms><label|iii10-one-full-nonlinear-renormalization-step-bounds-on-irrelevant-terms>

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

  Bounds the large-field and fluctuation contributions produced by one
  nonlinear renormalization step.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-10.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.9|III-9.tm> <ym-middot> <hlink|Next:
  III.11 \<rightarrow\>|III-11.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
    (items E01\UE09, H01\UH04, I01\UI04),
    <hlink|<verbatim|YM/Bid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid>,
    <hlink|<verbatim|YM/Next/FLUCTUATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS>,
    <hlink|<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6>,
    <hlink|<verbatim|YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP>,
    <hlink|<verbatim|YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD>,
    <hlink|<verbatim|YM/Pressure/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure>
    (definitions). <strong|Size:> 49,448 lines in the source allocation.

    <strong|Conventions.> Levels are indexed from coarse to fine, as in
    III.9.

    <\itemize-minus>
      <item><em|Step and couplings.> One step <math|S> goes from a fine torus
      of side <math|f=c*L> to a coarse torus of side <math|c>, with odd block
      factor <math|L\<geqslant\>3>. Write <math|x> for the coarse reference
      coupling <math|<wide|\<beta\>|^><rsub|m>>. The fine coupling is
      <math|\<beta\><rsub|F>=x+b<rsub|G>*log L=<wide|\<beta\>|^><rsub|m+1>>
      (<hlink|<verbatim|clock_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L67-L70>),
      where <math|b<rsub|G>\<geqslant\>0> is the one-loop slope of III.9;
      <math|b<rsub|G>\<gtr\>0> when the Lie algebra of <math|G> is simple.

      <item><em|Thresholds, radius and cutoff.>
    </itemize-minus>

    <\equation*>
      t<rsub|c><around|(|x|)>=x<rsup|-1/2>*e<rsup|<around|(|log log
      x|)><rsup|2>><text|(coarse field)>,<space|2em>t=t<rsub|c><around|(|\<beta\><rsub|F>|)><text|(fine
      field)>,<space|2em>T=\<beta\><rsub|F><rsup|-49/100><text|(large field
      proper)>,
    </equation*>

    with cluster radius <math|B=<around|\<lceil\>|<around|(|log
    x|)><rsup|2>|\<rceil\>>> and path-length cutoff
    <math|R=<around|\<lfloor\>|B/10<rsup|5>|\<rfloor\>>>.

    <\itemize-minus>
      <item><em|Sizes.> Since <math|e<rsup|<around|(|log log
      \<beta\>|)><rsup|2>>=\<beta\><rsup|o<around|(|1|)>>>, we have
      <math|t=\<beta\><rsub|F><rsup|-1/2+o<around|(|1|)>>\<ll\>T>. On the
      other hand <math|\<beta\><rsub|F>*t<rsup|2>=e<rsup|2<around|(|log log
      \<beta\><rsub|F>|)><rsup|2>>> grows faster than every power of
      <math|log \<beta\><rsub|F>>.

      <item><em|Field sizes.> <math|\<chi\><around|(|g|)>> is the chordal
      distance from <math|g\<in\>G> to <math|1>. For a plaquette <math|p>,
      <math|<around|\||U<rsub|p>|\|>=\<chi\><around|(|U<rsub|\<partial\>*p>|)>>.
      For a coarse bond <math|b>, <math|w<rsub|b>=\<chi\>*<around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>
      measures how far the coarse field <math|V> is from the block-spin
      predictor <math|Q=Q<around|(|U,k|)>> of the fine field <math|U> with
      gauge-fixing tags <math|k> (III.1).

      <item>"For all large <math|x>" means <math|x\<geqslant\>x<rsub|0>>,
      with <math|x<rsub|0>> independent of the period and volume. Other
      dependencies are specified in each statement.
    </itemize-minus>
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  One-step energy, activity, derivative and Gaussian bounds support the
  effective-action construction of III.9; III.10.6 supplies start-up fusion
  and marker estimates.

  <strong|Data of a step.>

  <\itemize-minus>
    <item><em|Request.> A request <math|P>
    (<hlink|<verbatim|Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96>)
    consists of:

    <\itemize-minus>
      <item>kernel choices <math|K>, with penalty <math|a\<gtr\>0> and cuts;

      <item>a fine stage and a coarse stage, each with clip constants
      <math|\<alpha\>,\<lambda\>,\<rho\>\<gtr\>0> satisfying
      <math|\<lambda\>\<less\>\<alpha\>/16>
      (<hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>),
      a path width and a path budget;

      <item>a step index <math|j> and constants <math|\<eta\>\<gtr\>0>,
      <math|C>.
    </itemize-minus>

    <item><em|Tube.> A tube <math|<with|math-font|cal*|T>>
    (<hlink|<verbatim|Tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94-L99>)
    carries the towers <math|\<Phi\>,\<Phi\><rprime|'>,N> and the fine and
    coarse path data. <math|\<Phi\>> maps coarse plaquette coordinates to
    fine plaquette coordinates; <math|\<Phi\><rprime|'>> maps them to
    coarse-bond ("interior") coordinates; <math|N> maps them to gauge
    coordinates.

    <item><em|Admissibility.> A step with tube
    <math|<around|(|S,<with|math-font|cal*|T>|)>> is admissible for <math|P>
    (<hlink|<verbatim|Teller.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>)
    if:

    <\itemize-minus>
      <item><math|S> uses <math|K> and index <math|j>;

      <item>the patch is well posed (<hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>:
      unique minimizers whenever the frame or predictor selector uses
      minimization, and a nonempty set of eligible axial tags for every
      configuration);

      <item>the scalar tower coefficients have exponentially weighted
      absolute sums at rate <math|\<eta\>> bounded by <math|C/L<rsup|2>> for
      the fine kernel and <math|C> for the interior and gauge kernels. Finite
      differences of order <math|\<ell\>\<leqslant\>j-2> of the one-form and
      two-form cross kernels have bounds <math|C/L<rsup|1+\<ell\>>> and
      <math|C/L<rsup|2+\<ell\>>>, respectively
      (<hlink|<verbatim|YM.Precision.Towers.Deep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114>);

      <item>the clips and path budgets are those of <math|P>;

      <item>the flat, uncut tower matrices satisfy the exact identities
      <hlink|<verbatim|Towers.Roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96>,
      among them the resolution of the identity
    </itemize-minus>
  </itemize-minus>

  <\equation*>
    \<Phi\><rsub|0><rsup|\<ast\>>*\<Phi\><rsub|0>+\<Phi\><rsub|0><rprime|'><rsup|\<ast\>>*\<Phi\><rsub|0><rprime|'>+N<rsub|0><rsup|\<ast\>>*N<rsub|0>=1.
  </equation*>

  The transported kernels cut at length <math|R> need not satisfy this
  identity; their defects are estimated in Steps 5\U6.

  <strong|Seeds.> A store <math|A=<around|(|A<rsub|F>,A<rsub|I>,A<rsub|\<flat\>>|)>>
  (<hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>)
  consists of finite sets of fine plaquettes ("costs"), coarse bonds
  ("aisles") and coarse sites ("flags"). <math|\<sharp\>*A> is the sum of
  their cardinalities, including coincident seeds of different types.
  <math|D<rsub|r><around|(|A|)>> is the coarse <math|r>-neighbourhood of
  their positions: all parent sites touched by a fine plaquette, both
  endpoints of a coarse bond, and each flag site. <math|A> is <em|consistent>
  with <math|<around|(|U,k,V|)>> at <math|<around|(|x,W|)>>
  (<hlink|<verbatim|Plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58>)
  if the following hold:

  <\itemize-minus>
    <item>whenever a parent site touched by <math|p> meets
    <math|D<rsub|5*B><around|(|A|)>>, <math|p\<in\>A<rsub|F>> implies
    <math|<around|\||U<rsub|p>|\|>\<geqslant\>t/4>, and
    <math|p\<nin\>A<rsub|F>> implies <math|<around|\||U<rsub|p>|\|>\<leqslant\>t/2>;

    <item>whenever an endpoint of <math|b> meets
    <math|D<rsub|5*B><around|(|A|)>>, <math|b\<in\>A<rsub|I>> implies
    <math|w<rsub|b>\<geqslant\>W*t>, and <math|b\<nin\>A<rsub|I>> implies
    <math|w<rsub|b>\<leqslant\>2*W*t>;

    <item><math|A<rsub|\<flat\>>> agrees with the flags of <math|V> at
    threshold <math|t<rsub|c><around|(|x|)>> on
    <math|D<rsub|5*B><around|(|A|)>>;

    <item>each site tag based in <math|D<rsub|5*B><around|(|A|)>> has
    positive frame weight.
  </itemize-minus>

  Nothing is assumed outside <math|D<rsub|5*B><around|(|A|)>>. The <em|spent>
  seeds <math|A<rsup|<math-up|sp>>> are the costs with
  <math|<around|\||U<rsub|p>|\|>\<gtr\>T> and the aisles with
  <math|w<rsub|b>\<gtr\>T>.

  <strong|Action gap.>

  <\itemize-minus>
    <item><em|Clipped density.> For a stage with clip
    <math|<around|(|\<alpha\>,\<lambda\>,\<rho\>|)>> and threshold <math|s>,
    the clipped density of a plaquette is
    <math|\<phi\><rsub|s><around|(|<around|\||U<rsub|p>|\|>|)>+\<b-1\><rsub|<math-up|kept>><tfrac|1|2><around|\||\<ell\><rsub|p><around|(|U|)>|\|><rsup|2>>
    (<hlink|<verbatim|crown>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L68>).
    Here:

    <\itemize-minus>
      <item><math|\<phi\><rsub|s><around|(|r|)>=\<alpha\>*r<rsup|2>/2> for
      <math|r\<leqslant\>s> and <math|\<phi\><rsub|s><around|(|r|)>=\<lambda\>*s*r>
      for <math|r\<gtr\>s> (<hlink|<verbatim|clipped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L218-L219>);

      <item><math|\<ell\><rsub|p><around|(|U|)>> is the path series of the
      stage, cut at length <math|R>;

      <item>"kept" means <math|<around|\||U<rsub|q>|\|>\<leqslant\>s*<space|0.17em>e<rsup|<math-up|dist><around|(|p,q|)>/\<rho\>>>
      for all <math|q> (<hlink|<verbatim|kept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L210-L211>).
    </itemize-minus>

    <item><em|Actions.> <math|\<cal-A\><rsub|F><around|(|U|)>> is the fine
    clipped action (fine stage, threshold <math|t>) and
    <math|\<cal-A\><rsub|c><around|(|V|)>> the coarse one (coarse stage,
    threshold <math|t<rsub|c><around|(|x|)>>).

    <item><em|Step functional.> <math|\<cal-E\><rsub|A><around|(|U,V|)>>
    (<hlink|<verbatim|assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>)
    is the sum of the row contributions of Step 1 over the rows located in
    <math|D<rsub|2*B><around|(|A|)>>. Summed over all rows of the torus, the
    same contributions give exactly
  </itemize-minus>

  <\equation*>
    \<cal-A\><rsub|F><around|(|U|)>+<frac|a|2>*<big|sum><rsub|b>w<rsub|b><rsup|2>-\<cal-A\><rsub|c><around|(|V|)>.
  </equation*>

  So <math|\<cal-E\><rsub|A>> is the action gap of the step (fine action,
  plus block-spin penalty, minus coarse action), localized near the seeds.

  <strong|Proposition III.10.1 (energy per seed).> Let <math|P> be a request.
  There is <math|L<rsub|0>> such that for every block factor
  <math|L\<geqslant\>L<rsub|0>> there is <math|W<rsub|0><around|(|L|)>> such
  that for every <math|W\<geqslant\>W<rsub|0>> there is <math|x<rsub|0>> with
  the following property. Take <math|x\<geqslant\>x<rsub|0>> and:

  <\itemize-minus>
    <item>a step <math|S> of block factor <math|L> with coarse side
    <math|c\<geqslant\>100*<around|(|1+B|)>>, and a tube
    <math|<with|math-font|cal*|T>> admissible for <math|P>;

    <item>a spanning forest <math|F> of the block structure, and a fine field
    <math|U> equal to <math|1> on the trunks of <math|F>;

    <item>a store <math|A>, tags <math|k> and a coarse field <math|V> such
    that <math|A> is consistent with <math|<around|(|U,k,V|)>> at
    <math|<around|(|x,W|)>>.
  </itemize-minus>

  Then

  <\equation*>
    \<kappa\>*<space|0.17em>t<rsup|2>*<space|0.17em>\<sharp\>*A<space|0.27em>\<leqslant\><space|0.27em>\<cal-E\><rsub|A><around|(|U,V|)>,<space|2em>\<kappa\>=<tfrac|1|2>min
    <around|{|\<lambda\><rsub|F>/8,a/32,\<alpha\><rsub|c>/64|}>,
  </equation*>

  where <math|\<lambda\><rsub|F>> is the linear clip constant of the fine
  stage and <math|\<alpha\><rsub|c>> the quadratic clip constant of the
  coarse stage.

  <em|Status:> theorem under the stated admissibility, tree-gauge and
  consistency hypotheses.

  <\itemize-minus>
    <item>The Lean statement (<hlink|<verbatim|Teller.cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L124-L125>,
    <hlink|<verbatim|Teller.Grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L129-L131>)
    asserts only some <math|\<kappa\>\<gtr\>0> chosen after <math|L> and
    <math|W>. The value above is the one the proof produces (Step 7), and it
    is independent of <math|L> and <math|W>.

    <item>This deterministic estimate precedes the Gaussian tail and activity
    bounds of III.10.2.
  </itemize-minus>

  <em|Lean:> proved by <hlink|<verbatim|Fluctuations.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24>.
  This is <hlink|<verbatim|Integrated.pressure_grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L222-L225>
  applied to <hlink|<verbatim|Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>,
  through <hlink|<verbatim|Bid.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L155-L158>.

  <strong|Proposition III.10.2 (activities of one step).> Let <math|P> be a
  request and <math|\<cal-T\>> target data
  (<hlink|<verbatim|Target>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76>):
  constants <math|\<varepsilon\>,\<delta\>\<gtr\>0>, <math|e\<geqslant\>0>, a
  rate <math|r\<in\><around|(|-<tfrac|1|2>,0|)>>, a halo
  <math|h\<geqslant\>500> and a local exponential chart of <math|G>, with
  <math|4*\<varepsilon\>> below the support exponent of the fine stage and
  <math|8*\<varepsilon\>> below both stage widths. Put
  <math|a<rsub|\<ast\>>=e+2*\<varepsilon\>+\<delta\>>.

  There is <math|L<rsub|0>> such that for every <math|L\<geqslant\>L<rsub|0>>
  and every large <math|W> there is <math|\<mu\>\<gtr\>0> with the following
  property. For every patch <math|D> of block factor <math|L> satisfying the
  branch condition there are window constants <math|o>
  (<hlink|<verbatim|Target.Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L33-L46>:
  a decay rate, a spectral gap, a shell width <math|K>, a Lipschitz constant
  <math|\<gamma\>>, a drift cap, a plateau <math|a<rsub|o>> and a trigger
  level <math|\<xi\>>) and a constant <math|C\<geqslant\>0> such that the
  following holds for all large <math|x>, every step <math|S> on <math|D>
  with <math|c\<geqslant\>100*<around|(|1+B|)>> and every tube admissible for
  <math|P> (<hlink|<verbatim|Works>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Room.lean#L25-L28>).

  <\itemize-minus>
    <item>(a) The conclusions <hlink|<verbatim|GrantBodies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L51-L71>
    hold:

    <\enumerate>
      <item>the bound of III.10.1 holds at this <math|x> with constant
      <math|\<mu\>> (<hlink|<verbatim|PointCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32>);

      <item>if <math|U> is in tree gauge and, within coarse distance
      <math|B/4> of the bond's parent site, site tags have positive frame
      weight, fine plaquettes have size at most <math|t/2>, and coarse
      mismatches are at most <math|2*W*t>, that link lies within <math|K*t>
      of the replicated coarse link; the Lie logarithm is reliable at that
      radius (<hlink|<verbatim|ShellAccess>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L25-L29>);

      <item>in every sector whose flags are the actual flags of <math|V>
      (<hlink|<verbatim|manifest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Currents.lean#L21>),
      the Gaussian precision matrix is symmetric, has exponentially decaying
      entries and a positive spectral lower bound, and the covariance formed
      from its local inverses is positive definite
      (<hlink|<verbatim|Rotator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L110-L117>);

      <item>the Gaussian centring drift has norm at most
      <math|<math-up|cap>\<cdot\>t> at each fine bond. If the tube also
      satisfies the compatibility condition in (b), then, for every
      <math|\<beta\>\<gtr\>0>, a fluctuation satisfying
      <math|<around|\||z<rsub|j>|\|>\<leqslant\>\<xi\>*t<sqrt|\<beta\>>> on
      all coordinates within distance <math|B> of a site farther than
      <math|30*B> from the seeds has site and bond tag masses one,
      <math|<around|\||U<rsub|p>|\|>\<less\>t/4> for plaquettes based there,
      and <math|w<rsub|b>\<less\>W*t> for bonds based there;

      <item>numerical margins hold: <math|4*a<rsub|o>*t> is below the chart
      radius, and, for the window's positive inverse-kernel constants
      <math|\<tau\><rsub|0>,C<rsub|0>> and window bound
      <math|Q<rsub|0>\<geqslant\>1>, the quantity
      <math|\<epsilon\><rsub|B>=e<rsup|-\<tau\><rsub|0>*B>*<around|(|Q<rsub|0>*C<rsub|0>+1|)>>
      satisfies <math|\<epsilon\><rsub|B>\<less\>1> and
      <math|Q<rsub|0>*C<rsub|0>*\<epsilon\><rsub|B>\<less\>1>.
    </enumerate>

    <item>(b) The conclusions <hlink|<verbatim|Invoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L73-L88>
    hold for every tube satisfying the free-kernel compatibility condition
    <hlink|<verbatim|Stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Voyage.lean#L25-L27>,
    and for every input representation <math|K> of the fine-level density as
    in <hlink|<verbatim|Intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L42-L49>.
    The input has the fine-stage support exponent, threshold <math|t>,
    coupling <math|\<beta\>\<in\><around|[|\<beta\><rsub|F>/2,2*\<beta\><rsub|F>|]>>,
    the path data and clips of <math|<with|math-font|cal*|T>>, cluster radius
    <math|B<around|(|\<beta\><rsub|F>|)>>, and activities obeying the
    incoming bounds of III.9: <math|E>-norm
    <math|\<beta\><rsub|F><rsup|-11/10>>, <math|K>-norm
    <math|e<rsup|-M<rsup|1/5>>> and loop budget <math|2*M>, where <math|M> is
    the fine monitor. The conclusions are:

    <\enumerate>
      <item>the cost record with gain <math|\<beta\>*\<mu\>*t<rsup|2>> per
      seed and spend <math|C<space|0.17em><math-up|bill><around|(|x|)><rsup|5>>,
      where <math|<math-up|bill>=1+B+<around|(|log
      \<beta\><rsub|F>|)><rsup|2>>, passes the tree-graph summability test
      <hlink|<verbatim|Buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58>;

      <item>the letters of the new gas carry weights
      <math|k<rsub|i>,y<rsub|i>,E> satisfying a rooted Kotecký\UPreiss
      condition with exponent <math|\<varepsilon\>> and total
      <math|\<beta\><rsub|F><rsup|<space|0.17em>r>>
      (<hlink|<verbatim|Sales>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Weights.lean#L27-L29>).
      For a letter with support <math|X<rsub|i>> and extra length
      <math|d<rsub|i>>, this means nonnegative weights <math|u<rsub|i>> with
    </enumerate>
  </itemize-minus>

  <\equation*>
    <big|sum><rsub|i:o\<in\>X<rsub|i>>u<rsub|i>*exp
    <around*|(|a<rsub|\<ast\>>*N<rsub|B><around|(|X<rsub|i>|)>+2*\<varepsilon\>*d<rsub|i>|)>\<leqslant\>\<beta\><rsub|F><rsup|r><space|2em><text|for
    every coarse site >o.
  </equation*>

  <\verbatim-code>
    \ Here $N_B(H)$ is the minimum number of radius-$B$ balls whose connected
    union contains $H$. The letters are the forced activities of $K$, the
    logarithmic letters, and the warning letters. Their weights are
    respectively $k_i$, $y_i$ and $E$ times a fixed patch-dependent
    warning-amplitude bound; warning letters have $d_i=0$;
  </verbatim-code>

  <\enumerate>
    <assign|item-nr|2><item>in every manifest sector, the following bounds
    hold:

    <\itemize-minus>
      <item>the old activities are bounded by <math|k<rsub|i>>;

      <item>the logarithmic letters <math|\<ell\><rsub|i>> and the
      differences <math|e<rsup|\<ell\><rsub|i>>-1> are bounded by
      <math|y<rsub|i>>;

      <item>every packet weight satisfies
      <math|<around|\||<math-up|Pack>|\|>\<leqslant\>exp
      <around*|(|<around|(|C<space|0.17em><math-up|bill><rsup|5>-\<beta\>*\<mu\>*t<rsup|2>|)>*<space|0.17em>\<sharp\>*A|)>>
      (<hlink|<verbatim|Pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L23-L24>);

      <item>for every set <math|v> of warning addresses, the Gaussian measure
      of the catastrophe set is at most <math|E<rsup|\<sharp\>*v>>. The
      catastrophe set consists of the fluctuations <math|z> for which, near
      the anchor of each address in <math|v>, some coordinate within distance
      <math|2*B> satisfies <math|<around|\||z<rsub|j>|\|>\<geqslant\>\<xi\>*t<sqrt|\<beta\>>>.
      Every fluctuation that triggers the warnings on <math|v> lies in that
      set.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem. The target data, fine input bounds and free-kernel
  compatibility are hypotheses. The input bounds are supplied along the RG
  trajectory (III.9); the compatibility construction is discussed in Ÿ7.

  <\itemize-minus>
    <item><em|Quantifier order:> <math|L<rsub|0>>, then <math|W>, then
    <math|\<mu\>> (uniform in <math|D>), then <math|<around|(|o,C|)>> for
    each patch, then <math|x>.

    <item><em|Size of the per-seed factor.> Since
    <math|\<beta\>*\<mu\>*t<rsup|2>\<geqslant\><frac|\<mu\>|2>*e<rsup|2<around|(|log
    log \<beta\><rsub|F>|)><rsup|2>>> and
    <math|<math-up|bill><rsup|5>=O<around|(|<around|(|log
    \<beta\><rsub|F>|)><rsup|10>|)>>, the factor
    <math|e<rsup|C<math-up|bill><rsup|5>-\<beta\>*\<mu\>*t<rsup|2>>> is
    eventually smaller than every power of <math|\<beta\><rsub|F>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Target.issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185>.
  <hlink|<verbatim|Target.quotesTogether>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/IssuePlan.lean#L53-L69>
  repackages the output as the bundle <hlink|<verbatim|Cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L82-L97>
  (the activity estimates together with witnesses for the letter weights).

  <strong|Proposition III.10.3 (derivatives of the new activities).> Let
  <math|P> and <math|\<cal-T\>> be as in III.10.2. There is <math|L<rsub|0>>
  with the following property. Fix <math|L\<geqslant\>L<rsub|0>>, a patch
  <math|D> satisfying the branch condition, an order <math|i\<in\>\<bbb-N\>>,
  a sector cutoff <math|\<chi\>>, <math|W,\<mu\>\<gtr\>0>, window constants
  <math|o>, and chart constants <math|<around|(|A,f|)>> satisfying
  <hlink|<verbatim|YM.ConnectedActivityE6.Blaze.Eider.Canary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Eider.lean#L32-L37>.
  The latter require <math|A,f\<gtr\>0>, <math|log <around|(|exp u|)>=u> for
  <math|<around|\||u|\|>\<leqslant\>2*A>, <math|exp <around|(|log
  <around|(|exp u*<space|0.17em>g|)>|)>=exp u*<space|0.17em>g> for
  <math|<around|\||u|\|>\<leqslant\>A> and
  <math|<around|\<\|\|\>|g-1|\<\|\|\>>\<leqslant\>f>, and analyticity of
  <math|M\<mapsto\>log <around|(|exp u*<space|0.17em>M|)>> for
  <math|<around|\||u|\|>\<leqslant\>2*A>,
  <math|<around|\<\|\|\>|M-1|\<\|\|\>>\<leqslant\>f>. Fix a function
  <math|\<cal-V\>> of rate <math|-1/2> that is eventually nonnegative (rate
  as defined in Ÿ6).

  There are <math|C\<geqslant\>0>, functions <math|q,\<rho\>,p> of rates
  <math|-1/2,0,0>, respectively, and <math|l\<in\>\<bbb-N\>> such that, for
  all large <math|x>, the following holds for every step on <math|D>
  satisfying the compatibility condition, every fine representation <math|R>,
  and every bound bundle <math|H> of III.10.2 at
  <math|<around|(|W,x,\<mu\>|)>>. One has <math|8*a<rsub|o>*t\<leqslant\>A/2>
  and a derivative-bound structure <math|\<Xi\>>
  (<hlink|<verbatim|Utopia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L27-L46>)
  with the following properties in every sector at <math|x>, of shell width
  <math|K> from <math|o>, cutoff <math|\<chi\>>, and with the actual coarse
  flags.

  <\itemize-minus>
    <item>Its nonpacket weights satisfy the rooted bound of III.10.2(b) with
    total <math|\<beta\><rsub|F><rsup|r>>. Its catastrophe probabilities,
    with trigger <math|\<xi\>/2>, are at most
    <math|<around|(|<math-up|rad><rsup|2>|)><rsup|\<sharp\>*v>>.

    <item>Let <math|V<around|(|y|)>> be a family of coarse fields on a
    finite-dimensional real normed parameter space, based at the sector field
    <math|V<around|(|y<rsub|0>|)>=V<rsub|0>>. Suppose each link matrix is
    <math|C<rsup|i>> at <math|y<rsub|0>> and
  </itemize-minus>

  <\equation*>
    <around|\<\|\|\>|D<rsup|m>*V<rsub|e><around|(|y<rsub|0>|)>|\<\|\|\>>\<leqslant\>c<rsub|G>*\<cal-V\><around|(|x|)><rsup|m>*<space|2em><around|(|0\<leqslant\>m\<leqslant\>i|)>,
  </equation*>

  where <math|c<rsub|G>> is the fixed matrix-norm bound in
  <hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Tint.lean#L21-L23>.
  Transport the fluctuation coordinates compatibly with this family: the
  physical and Gaussian coordinates represent the same field, their physical
  displacement has all derivatives through order <math|i> bounded by
  <math|q<around|(|x|)>>, and, near <math|y<rsub|0>>, the resulting fine
  field agrees with the held fine field on every cold bond and on every hot
  bond whose physical coordinate has norm at most <math|8*a<rsub|o>*t>
  (<hlink|<verbatim|YM.ConnectedActivityE6.Blaze.Silica.Clutch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Eskim.lean#L86-L95>).
  In a region disjoint from the coarse flags, each letter <math|a<rsub|j>> is
  <math|C<rsup|i>> at <math|y<rsub|0>> and satisfies

  <\equation*>
    <around|\<\|\|\>|D<rsup|m>*a<rsub|j><around|(|y<rsub|0>|)>|\<\|\|\>>\<leqslant\><math-up|cost><rsub|j><around*|(|\<rho\><around|(|x|)><math-up|span><rsub|j>|)><rsup|m>*<space|2em><around|(|0\<leqslant\>m\<leqslant\>i|)>
  </equation*>

  (<hlink|<verbatim|Brush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Brush.lean#L44-L47>).
  Packet spans are one; other spans include their support and path lengths.
  The costs use the packet estimate and the nonpacket weights before
  extracting the catastrophe-probability factor.

  The same <math|\<Xi\>> satisfies an integrated estimate
  (<hlink|<verbatim|Herd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L48-L55>).
  Let <math|\<frak-p\>> be a finite molecule with connected support-overlap
  graph and total support disjoint from the flags. Require that its packet
  stores are connected with pairwise disjoint radius-<math|h*B>
  neighbourhoods, that its old forced supports are pairwise disjoint, and
  that every site in an old forced inventory touches a fine-plaquette seed in
  the union of the packet stores. Along a family <math|V<around|(|y|)>> as
  above, the prescribed transported integrand is <math|C<rsup|i>> at
  <math|y<rsub|0>> and has every derivative of order at most <math|i> bounded
  by an integrable function <math|g>. With
  <math|d*\<nu\>=d*\<lambda\><rsub|F>*<space|0.17em>d*\<gamma\>>, the product
  of tree-slice Haar measure and Gaussian fluctuation measure,

  <\equation*>
    <big|int>g*<space|0.17em>d*\<nu\>\<leqslant\><around|\||p<around|(|x|)>|\|>*<big|prod><rsub|j\<in\>\<frak-p\>><math-up|fare><rsub|j><space|0.17em><around|(|1+<math-up|shape><around|(|\<frak-p\>|)>|)><rsup|l>.
  </equation*>

  The fares include a factor <math|<math-up|rad>> for each distinct warning
  address. For one measurable, gauge-invariant source letter of amplitude at
  most <math|w<rsub|M>>, local with its eligibility tests included, the same
  estimate replaces its fare by <math|w<rsub|M>>. A forced source must vanish
  outside the original eligibility set; a regular source occupies an unused
  regular-letter address. The remaining warning and shape factors are
  unchanged.

  <em|Status:> theorem, conditional on the input bound bundle and
  compatibility. The constants and functions are uniform in the volume.
  <hlink|<verbatim|Captain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Captains.lean#L27-L36>
  and <hlink|<verbatim|rocketsC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Sparks.lean#L36-L61>
  also control iterated left derivatives in spatially weighted directions.

  <em|Lean:> <hlink|<verbatim|Utopia.whittle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102>
  (letter jets), <hlink|<verbatim|timing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179>
  (integrable majorants).

  <strong|Proposition III.10.4 (Gaussian sector of the step).> Fix a patch
  <math|D>, a request <math|Q> for which <math|D> satisfies the branch
  condition, an aperture <math|B<rsub|0>\<gtr\>0>, a sector cutoff
  <math|\<chi\>>, and <math|k,p\<in\>\<bbb-N\>>. There are
  <math|\<sigma\>,d\<gtr\>0> and <math|\<pi\>\<geqslant\>1>
  (<hlink|<verbatim|Charges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L34-L42>)
  such that the following holds for all large <math|x>.

  Take <math|0\<less\>\<beta\>\<leqslant\>2*\<beta\><rsub|F>>, a budget point
  of power <math|p> and threshold <math|t<rsub|c><around|(|x|)>>, a step on
  <math|D> with <math|c\<geqslant\>100*<around|(|1+B|)>> admissible for
  <math|Q>, a forest, tags, and a store <math|A> whose flags equal the flags
  of <math|V> on the whole coarse torus. Freeze <math|A>, the forest and tags
  while differentiating. Let <math|\<Gamma\>> be the sector precision matrix,
  <math|<wide|\<Gamma\>|~>> its local approximate inverse, <math|m> the
  smooth sector mean at aperture <math|B<rsub|0>*t>, and <math|h=-g<rsup|-1>>
  times its stationarity residual, with <math|g=\<beta\><rsup|-1/2>>. These
  are the objects in <hlink|<verbatim|Value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L60-L74>.
  Then <math|\<Gamma\>> and <math|<wide|\<Gamma\>|~>> are positive definite,
  and <math|m> equals the stationary logarithmic mean for every frozen-link
  input.

  For a coarse site <math|o> and <math|0\<leqslant\>m\<leqslant\>k>, let
  <math|\<cal-D\><rsup|m>> be an iterated left derivative in <math|m>
  directions satisfying <math|<around|\||A<rsub|e>|\|>\<leqslant\>t<rsub|c><around|(|x|)>*<around|(|1+<math-up|dist><around|(|e,o|)>|)><rsup|p>>.
  If <math|x<rsub|i>> is the coarse location of coordinate <math|i>, put

  <\equation*>
    G<rsub|i>=<around|(|1+<math-up|dist><around|(|x<rsub|i>,o|)>|)><rsup|p*k>.
  </equation*>

  The bounds are

  <\equation*>
    <around|\||\<cal-D\><rsup|m>*\<Gamma\><rsub|i*j>|\|>\<leqslant\>\<pi\>*e<rsup|-\<sigma\><math-up|dist><around|(|x<rsub|i>,x<rsub|j>|)>>*G<rsub|i><rsup|m>,<space|2em><around|\||\<cal-D\><rsup|m>*<around|(|\<Gamma\>*<wide|\<Gamma\>|~>-1|)><rsub|i*j>|\|>\<leqslant\>e<rsup|-d*B>*\<pi\>*e<rsup|-\<sigma\><math-up|dist><around|(|x<rsub|i>,x<rsub|j>|)>>*G<rsub|i><rsup|m>,
  </equation*>

  <\equation*>
    <around|\||\<cal-D\><rsup|m>*m<rsub|i>|\|>\<leqslant\>\<pi\>*t*G<rsub|i><rsup|m>,<space|2em><around|\||\<cal-D\><rsup|m>*h<rsub|i>|\|>\<leqslant\>e<rsup|-d*B>*\<pi\>*G<rsub|i><rsup|m>.
  </equation*>

  Thus the spatial exponent at derivative order <math|m> is <math|p*k*m>.

  <em|Status:> theorem. <hlink|<verbatim|JointLoad.stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98>
  also supplies a covariance cap and a trigger-tail estimate; its scales are
  given in Ÿ7.

  <em|Lean:> <hlink|<verbatim|JointLoad.capital>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L92-L157>.

  <strong|Proposition III.10.5 (schedule).>

  <\itemize-minus>
    <item>(a) Let <math|P> be a sheet of pre-<math|L> data (III.2) and
    <math|K> a price map. There are floors <math|k<rsub|i>> with the
    following property. Take block factors
    <math|L<rsub|i>\<geqslant\>k<rsub|i>>, any protection, any delays
    <math|V> and any <math|m\<geqslant\>0>. Then there are delays <math|W>,
    differing from <math|V> only by larger entry couplings
    <math|\<beta\><rsup|\<ast\>><rsub|i>>, and numbers
    <math|F<rsub|i*j>\<geqslant\>m>, such that for every pair of stages
    <math|j\<leqslant\>i\<leqslant\>j+1> with <math|j> at least the first
    stage of <math|P> the bound of III.10.1 holds at every coarse coupling
    <math|x\<geqslant\>\<beta\><rsup|\<ast\>><rsub|i>>, for the request with
    fine stage <math|i>, coarse stage <math|j> and step index <math|i>, with
    block factor <math|L<rsub|i>>, aisle multiplier <math|F<rsub|i*j>> and
    some <math|\<mu\><rsub|i*j>\<gtr\>0> uniform in <math|x>, period and
    volume (<hlink|<verbatim|Ringing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L161-L163>).

    <item>(b) If <math|G> is simple, then for every window datum of III.2
    (entry and plateau requirements) there is a level schedule that meets all
    requirements of III.2 (<hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>)
    and whose periods are divisible: for every side <math|c> and every
    <math|z> there is a period index <math|p\<geqslant\>z> with
    <math|c\<mid\><math-up|period><around|(|p|)>>.

    <item>(c) Along a directed trajectory satisfying (a), fix an adjacent
    stage pair <math|i=J<around|(|m|)>>, <math|j=J*<around|(|m+1|)>> with
    <math|i> at least the first stage of <math|P>. There is
    <math|\<mu\>\<gtr\>0>, uniform in the cutoff <math|N>, level <math|m> and
    period, such that for <math|m\<less\>N> at this pair and
    <math|x=<wide|\<beta\>|^><rsub|m>>, one has
    <math|\<mu\>*<space|0.17em>t<rsub|c><around|(|<wide|\<beta\>|^><rsub|m+1>|)><rsup|2>*<space|0.17em>\<sharp\>*A\<leqslant\>\<cal-E\><rsub|A>>
    whenever the fine field is in the chosen tree gauge and the store is
    consistent at multiplier <math|F<rsub|j*i>>.
  </itemize-minus>

  <em|Status:> theorems. Part (a) is unconditional
  (<hlink|<verbatim|pressure_pricing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37>
  applies <hlink|<verbatim|Bid.pricing_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202>
  to III.10.1). Divisibility is what lets torus tilings fit in
  III.12\UIII.13.

  <em|Lean:> <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>,
  <hlink|<verbatim|notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>.

  <strong|Proposition III.10.6 (start-up fusion H01\UH04; markers I01\UI04).>

  (H) <em|Setting.> Fix a budget point and:

  <\itemize-minus>
    <item>a <em|pipe> <math|X>: regular and forced addresses, and supports of
    logarithmic letters;

    <item>a <em|tap> <math|d>: regular activities, forced activities
    <math|K<rsub|i>> and logarithmic letters <math|\<ell\><rsub|i>>.
  </itemize-minus>

  The <em|fused> gas (<hlink|<verbatim|fused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78>)
  groups the forced activities and the factors
  <math|e<rsup|\<ell\><rsub|i>>-1> into connected clusters (pellets). Each
  pellet contains at least one forced activity, and the forced supports in a
  pellet are pairwise disjoint.

  <em|Hypotheses.> Fix a bijective enumeration of the pellets. Let
  <math|\<kappa\>,\<gamma\>\<geqslant\>0>.

  <\itemize-minus>
    <item><math|d> is <em|digested> (<hlink|<verbatim|Digests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90>):
    the gas is valid with specified regular and forced bounds; the
    logarithmic family has a summable uniform majorant, and each letter is
    measurable, gauge invariant, local with the flag tests included, vanishes
    on healthy configurations, and is translation and lattice-symmetry
    covariant.

    <item><math|d> is <em|bought> with constants <math|\<kappa\>,\<gamma\>>
    (<hlink|<verbatim|Buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98>):
    <math|<around|\||K<rsub|i>|\|>\<leqslant\>e<rsup|-\<kappa\>>*f<rsub|i>>
    and <math|<around|\||e<rsup|\<ell\><rsub|i>>-1|\|>\<leqslant\>f<rsub|i>>,
    where <math|f\<geqslant\>0> satisfies the rooted Kotecký\UPreiss
    condition at support exponent one larger than the budget exponent, with
    total <math|\<gamma\>>, and <math|<around|(|2*B+1|)><rsup|4>*\<gamma\>\<leqslant\>1>.
  </itemize-minus>

  <em|Conclusions.>

  <\itemize-minus>
    <item>(H01) For every configuration <math|V>, the fused gas equals the
    original gas times <math|exp <around|(|<big|sum><rsub|i=0><rsup|\<infty\>>\<ell\><rsub|i><around|(|V|)>|)>>.

    <item>(H02) The fused activities satisfy the <math|K>-bound with any
    price <math|v\<geqslant\>e<rsup|-\<kappa\>>*<around|(|e<rsup|\<gamma\>>-1|)>>.

    <item>(H03) The fused system is a forced family and admits the
    lattice-symmetry moves.

    <item>(H04) Fix the paths, clip, budget point, addresses and pellet
    enumeration. Suppose the original representations form a continuous curve
    on a subset of <math|\<bbb-R\>>, each forced or exponentiated logarithmic
    letter varies continuously in the supremum norm over configurations, and
    a single nonnegative rooted majorant as above works throughout the
    parameter set. Then the fused representations form a continuous curve in
    the same representation norm. This is a fixed-volume assertion.
  </itemize-minus>

  (I)

  <\itemize-minus>
    <item>(I01) Let <math|B\<geqslant\>8>, let <math|F> be a set of at least
    two markers with pairwise separation at least <math|B<rsup|2>>, and let
    <math|F\<subset\>H>. Then <math|B*<space|0.17em>\<sharp\>*F\<leqslant\>64*<space|0.17em>N<rsub|B><around|(|H|)>>,
    where <math|N<rsub|B><around|(|H|)>> is the minimum number of
    radius-<math|B> balls with connected union covering <math|H>. The markers
    lie on a finite periodic lattice with its max-distance; no nonwrapping
    hypothesis is required.

    <item>(I02) Fix a representation with budget order <math|n>. Suppose
    marker bands satisfy <hlink|<verbatim|YM.Mix.Stubs.Holds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L66-L70>
    at <math|r\<gtr\>0>: valid local addresses, <math|r> times every unit
    amplitude at most one, <math|B\<geqslant\>8> and separation at least
    <math|B<rsup|2>> for each pair of distinct markers, factorially weighted
    derivative majorants, and separate rooted budgets at most one for
    single-marker and multiple-marker terms. For the multiple-marker budget
    one may instead use positive weights <math|t<rsub|v>> and an extra
    exponent <math|\<delta\>\<geqslant\>0>, with
    <math|r\<leqslant\>t<rsub|v>*e<rsup|\<delta\>*B/64>> for every marker
    <math|v> and a rooted budget at most one using support exponent increased
    by <math|\<delta\>>. Then, at weight <math|r/n!>, the bands satisfy
    <hlink|<verbatim|YM.Overlay.Bands.Radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Table.lean#L56-L65>:
    positive weights, unit-amplitude bound one, and rooted ordinary
    derivative and forced-entry bounds at most two each.

    <item>(I03) Let a family satisfy the marker schedule condition:
    <math|B<rsub|r+1><rsup|2>\<leqslant\>2*B<rsub|r><rsup|2>> for every
    <math|r>, and <math|<around|(|L<rsub|r>*B<rsub|r><rsup|2>|)><rsup|4>*\<cal-F\><rsub|r+1>=o<around|(|<math-up|scale><rsub|r+1>|)>>.
    Here <math|a<rsub|r>> is the lattice spacing,
    <math|L<rsub|r>=a<rsub|r>/a<rsub|r+1>>, and the vacuum bound is
  </itemize-minus>

  <\equation*>
    \<cal-F\><rsub|r>=2*<around|(|2+4*P<rsub|r>|)>+1+6*<around|(|\<alpha\><rsub|r>+P<rsub|r><rsup|2>|)>+4*d<rsub|G>*<around*|(|log
    16+<tfrac|1|2>log <wide|\<beta\>|^><rsub|r>|)>,
  </equation*>

  with <math|P<rsub|r>> the stage's path budget, <math|\<alpha\><rsub|r>> its
  direct clip coefficient and <math|d<rsub|G>=dim<rsub|\<bbb-R\>>M<rsub|m><around|(|\<bbb-C\>|)>>
  for the defining matrix representation. This is the hypothesis of
  <hlink|<verbatim|YM.Stock.Tabs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Prior.lean#L15-L18>.
  Fix <math|k\<geqslant\>1> and levels <math|m\<leqslant\>i> such that
  <math|k*B<rsub|i><rsup|2>\<leqslant\>a<rsub|m>/a<rsub|i>> (an open stop).
  For every <math|N\<geqslant\>i> and every period, the centred copies at
  level <math|N> are the embedded sites from level <math|m>; their parents
  agree at consecutive levels from <math|m> to <math|N>; and distinct
  embedded sites are separated by at least <math|k*B<rsub|r><rsup|2>> for
  every <math|i\<leqslant\>r\<leqslant\>N>.

  <\itemize-minus>
    <item>(I04) Assume <math|G> is simple. For every family, every
    <math|p\<gtr\>0> and <math|r\<in\>\<bbb-N\>>, if
    <math|<math-up|order><rsub|i>!\<leqslant\><math-up|columns><rsub|i>> for
    all <math|i>, then the widths
  </itemize-minus>

  <\equation*>
    w<rsub|i>=<frac|<wide|\<beta\>|^><rsub|i><rsup|-r/2>|p<space|0.17em><math-up|columns><rsub|i><big|prod><rsub|m\<less\>i><math-up|columns><rsub|m+1>>
  </equation*>

  are positive, and for every <math|\<varepsilon\>\<gtr\>0> eventually
  <math|5-log <around|(|w<rsub|i>/<math-up|order><rsub|i>!|)>\<leqslant\>\<varepsilon\><space|0.17em><math-up|scale><rsub|i>>.

  <em|Status:> theorems. In the main-theorem closure:

  <\itemize-minus>
    <item>H01\UH04 are used by the start-up representation at the finest
    level;

    <item>I01, I03 and I04 are used by the replicated-marker constructions;

    <item>the assemblies <hlink|<verbatim|Oust.begins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L56-L66>
    and <hlink|<verbatim|Bid.installs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L146-L174>
    are not in the closure.
  </itemize-minus>

  <em|Lean:>

  <\itemize-minus>
    <item>Statements: <hlink|<verbatim|H01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16>,
    <hlink|<verbatim|H02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L20-L21>,
    <hlink|<verbatim|H03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L23-L24>,
    <hlink|<verbatim|H04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35>,
    <hlink|<verbatim|I01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L124-L126>\U<hlink|<verbatim|I04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Fuels.lean#L140-L142>.

    <item>Proofs: <hlink|<verbatim|H01.gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251>,
    <hlink|<verbatim|H02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80>,
    <hlink|<verbatim|H03.fused_forcedFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L138-L209>,
    <hlink|<verbatim|H04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161>,
    <hlink|<verbatim|I01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I01.lean#L19-L82>,
    <hlink|<verbatim|I02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I02.lean#L159-L180>,
    <hlink|<verbatim|I03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I03.lean#L43-L63>,
    <hlink|<verbatim|I04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L76-L129>.
  </itemize-minus>

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|III.1:> block-spin patches, tree gauge, predictor and tags;
    predictor-curvature reduction by <math|L<rsup|-2>>
    (<hlink|<verbatim|qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>).
    The branch condition holds for the construction's kernel choices
    (<hlink|<verbatim|Foundations.branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71>).

    <item><strong|III.2:> sheets, block factors, protection, delays, entry
    and plateau requirements.

    <item><strong|III.3\UIII.4:> flat tower identities and exponential decay
    (III.3 attribution probable), Gaussian integration and rectangle tails.

    <item><strong|III.5\UIII.8:> polymer representations and Kotecký\UPreiss
    bounds, stationary means and jets, quartic matching, connected-activity
    locality.

    <item><strong|III.9:> <math|b<rsub|G>>, thresholds, monitor and the
    incoming allowances <math|\<beta\><rsub|F><rsup|-11/10>>,
    <math|e<rsup|-M<rsup|1/5>>>, <math|2*M>.

    <item><strong|I.1, II.2, III.16:> lattice geometry, Haar measure, chordal
    distance, activities and Taylor jets.
  </itemize-minus>

  Standard results: Balaban's lattice-gauge renormalization method, rooted
  Kotecký\UPreiss and tree-graph bounds, Schur's test, Gaussian exponential
  moments and Taylor estimates on compact charts. Request and target data
  precede <math|L>; window constants follow <math|L,W> and the patch.
  Simplicity is required in III.10.5(b) and I04.

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Seeds cost <math|\<kappa\>*t<rsup|2>> each. At
  <math|\<beta\>\<geqslant\>\<beta\><rsub|F>/2>, their Boltzmann suppression
  pays every fixed polylogarithmic entropy loss. Completed squares isolate
  positive row contributions and two kernel defects: affected cells are paid
  by spent seeds, while local gauge fixing and flat identities reduce
  unaffected defects to chart errors and exponentially small tails.

  Gaussian integration produces packet, old forced, logarithmic and warning
  letters. Energy and annulus estimates bound packets; simultaneous Gaussian
  excursions bound warnings. Rooted bounds sum connected molecules.
  Compatible fluctuation transport controls derivatives, and Cauchy\USchwarz
  preserves one square root of the simultaneous-warning probability in
  integrated bounds.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  Steps 1\U7 use III.10.1's admissibility, tree gauge and consistency
  hypotheses; all thresholds are independent of period. Steps 8\U10 use
  III.10.2\UIII.10.3's activity, compatibility and derivative hypotheses;
  Steps 11\U12 use III.10.6 and III.10.5, respectively.

  <\enumerate>
    <item><strong|Complete the squares.> Fine, interior, coarse and gauge
    rows, together with the linear and completeness defects, sum exactly to
    <math|\<cal-A\><rsub|F>+<frac|a|2>*<big|sum><rsub|b>w<rsub|b><rsup|2>-\<cal-A\><rsub|c>>
    by adjoint cancellation; <math|\<cal-E\><rsub|A>> retains rows in
    <math|D<rsub|2*B><around|(|A|)>>. <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>.

    <item><strong|Pack seeds and compare links.> Fine plaquettes have bounded
    macro-box multiplicity; coarse plaquettes above a fixed
    <math|\<delta\>\<gtr\>0> lie within <math|4*B/5> of spent seeds, and the
    relevant neighbourhood contains <math|O<around|(|B<rsup|4>*\<sharp\>*A|)>>
    coarse plaquettes. Closing fine links by tree paths bounds their distance
    from replicated coarse links by macro-box curvature plus crossing
    mismatches. <hlink|<verbatim|Work.E01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324>;
    <hlink|<verbatim|Work.E02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244>.

    <item><strong|Bound kernels and predictions.> Absolute row and column
    sums control transported kernels and path series; in particular
    <math|<around|\||v|\|>\<leqslant\>A*t>,
    <math|<around|\||\<Phi\>*v|\|>\<leqslant\>A*t/L<rsup|2>>,
    <math|<around|\||\<Phi\><rprime|'>*v|\|>\<leqslant\>A*t>, with <math|A>
    independent of <math|L,W>. Norm-one adjoint transport and exponentially
    weighted coefficient sums give these estimates.
    <hlink|<verbatim|Work.E03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L228-L256>;
    <hlink|<verbatim|Work.E04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E04.lean#L282-L307>.

    <item><strong|Obtain positive row charges.> Large <math|L> separates fine
    seeds from their predictions, and large <math|W> separates mismatch
    seeds; dropped path terms are paid after summation by column bounds.
    Coarse rows above <math|t<rsub|c>> and below a fixed <math|\<delta\>> are
    positive, while small coarse rows lose
    <math|O<around|(|t<rsub|c><rsup|4>|)>>; affected-cell losses are charged
    to large fine inputs, mismatches and <math|O<around|(|t<rsup|2>*B<rsup|4>*\<sharp\>*A<rsup|<math-up|sp>>|)>>.
    <hlink|<verbatim|Work.E05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E05.lean#L211-L228>;
    <hlink|<verbatim|Work.E06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440>;
    <hlink|<verbatim|Work.E07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158>.

    <item><strong|Cancel flat defects.> Outside the affected set, local axial
    gauge fixing makes fine and coarse links <math|h=C*B<rsup|10>*T>-close to
    identity; the flat uncut tower identities cancel both linearized defects.
    Comparing transported, truncated quantities with their flat versions
    leaves errors governed by <math|\<omega\>=<around|(|1+R|)>*h+e<rsup|-\<tau\>*R>>.
    <hlink|<verbatim|Work.E08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E08.lean#L342-L344>;
    <hlink|<verbatim|roll_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L89-L136>;
    <hlink|<verbatim|roll_d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L69-L87>;
    <hlink|<verbatim|global_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148>.

    <item><strong|Sum unaffected defects.> Gauge covariance, locality and
    extension to global log-fields apply the chart estimates locally; the
    total defect loss is at most <math|\<varepsilon\>*t<rsup|2>*\<sharp\>*A>
    for every <math|\<varepsilon\>\<gtr\>0> and all large <math|x>. The
    factor <math|B<rsup|4>> is absorbed because
    <math|B<rsup|n>*\<omega\>\<to\>0> and
    <math|B<rsup|n>*h*\<omega\>/t\<to\>0> for every <math|n>.
    <hlink|<verbatim|interior_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63>;
    <hlink|<verbatim|Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>.

    <item><strong|Assemble the energy bound.> Choose <math|L>, then <math|W>,
    then <math|x>: the first absorbs fine cross terms, the second mismatch
    losses, and the last all remaining losses, using spent-seed charges of
    size <math|t*T>. The row sum gives exactly III.10.1's <math|\<kappa\>>.
    <hlink|<verbatim|Work.E09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L113-L159>.

    <item><strong|Bound packets and other letters.> The annulus remainder has
    rate <math|-3/2> and is absorbed into
    <math|C<space|0.17em><math-up|bill><rsup|5>>; retained energy gives the
    packet estimate. Incoming bounds and rate calculus control old and
    logarithmic letters, including both <math|\<ell\><rsub|i>> and
    <math|e<rsup|\<ell\><rsub|i>>-1>. <hlink|<verbatim|Coat.earns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86>;
    <hlink|<verbatim|steam_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L99-L140>;
    <hlink|<verbatim|recommends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92>.
    <em|(annulus statement only; other proofs read)>

    <item><strong|Control Gaussian warnings.> Coercivity and exponentially
    decaying rows give a positive precision and covariance, an
    <math|O<around|(|t|)>> drift and a small residual; compatibility gives
    the no-new-seed margins. Gaussian rectangle tails, summed over local
    witnesses, make catastrophe weights smaller than every inverse power of
    <math|\<beta\><rsub|F>>; these bounds combine with Step 8 into III.10.2.
    <hlink|<verbatim|shoots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144>;
    <hlink|<verbatim|Coat.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188>;
    <hlink|<verbatim|Coat.alarm_bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/ResponsePrice.lean#L65-L112>;
    <hlink|<verbatim|Target.issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185>.

    <item><strong|Differentiate letters and integrate molecules.> Compatible
    coordinate transport gives letter jets with rate-zero derivative scale
    and catastrophe probability <math|<math-up|rad><rsup|2*\<sharp\>*v>>.
    Leibniz bounds and Gaussian moments, followed by Cauchy\USchwarz, retain
    <math|<math-up|rad><rsup|\<sharp\>*v>> in the integrable molecule
    majorant; a source amplitude replaces its fare.
    <hlink|<verbatim|Utopia.whittle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102>;
    <hlink|<verbatim|timing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179>.

    <item><strong|Fuse and propagate markers.> Absolute convergence justifies
    Mayer regrouping; a retained forced-letter factor and rooted tree sum
    give <math|e<rsup|-\<kappa\>>*<around|(|e<rsup|\<gamma\>>-1|)>>, while
    common domination gives continuity. Connected ball-cover traversal proves
    I01; extra support decay and factorial rescaling give I02, composing
    centred embeddings gives I03, and subscale logarithmic column growth
    gives I04. <hlink|<verbatim|H01.gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251>;
    <hlink|<verbatim|H02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80>;
    <hlink|<verbatim|H04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161>;
    <hlink|<verbatim|I01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I01.lean#L19-L82>;
    <hlink|<verbatim|I02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I02.lean#L159-L180>;
    <hlink|<verbatim|I03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I03.lean#L43-L63>;
    <hlink|<verbatim|I04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L76-L129>.
    <em|(proof read; H03 symmetry moves statement only)>

    <item><strong|Choose levels and periods.> Adjacent-stage floors and
    larger entry couplings enforce the energy estimates; finite-request
    scheduling supplies the remaining requirements. Periods
    <math|4*<around|(|M+p+1|)>> admit arbitrarily late multiples of every
    side. <hlink|<verbatim|Bid.pricing_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202>;
    <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Fine-input coefficients must remain independent of <math|L>, and mismatch
  coefficients independent of <math|W>, until those parameters absorb the
  cross terms. Transported, truncated kernels lack exact completeness: only
  their flat versions cancel, so local gauge fixing and tail estimates must
  control the defects after neighbourhood summation. Derivative integration
  must also retain a gain for every distinct warning address under compatible
  fluctuation transport.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<sharp\>*A> counts all three seed types, including coincident types;
  <math|D<rsub|r><around|(|A|)>> uses coarse max-distance.
  <math|\<Phi\>,\<Phi\><rprime|'>,N> are transported towers, with subscript
  zero denoting flat uncut operators; <math|v> denotes thinned coarse
  coordinates. <math|N<rsub|B><around|(|H|)>> is the minimum connected
  radius-<math|B> ball-cover size. A function has rate <math|a> when, for
  every <math|v\<gtr\>a>, its absolute value is eventually at most
  <math|\<beta\><rsub|F><rsup|v>> (<hlink|<verbatim|Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23>).
  In III.10.3, <math|\<rho\>> is the rate-zero jet scale and
  <math|<math-up|rad>> is the square root of a warning-probability bound; in
  III.10.4, <math|\<Gamma\>,<wide|\<Gamma\>|~>,m,h> denote precision,
  approximate inverse, mean and scaled stationarity residual.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\itemize-minus>
    <item>The full conversion of rooted letter and packet/tree bounds to
    III.9's outgoing <math|E>- and <math|K>-norms, including reset, remains
    unwritten.

    <item>Compatibility is constructed on the auxiliary torus by
    <hlink|<verbatim|YM.PhysicalNext.Repeat.Pane.ovation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Rooms.lean#L39-L41>
    assuming lattice symmetry of the beds at every period; that symmetry for
    the selected trajectory and the exact III.3 attribution remain unchecked.

    <item>Underlying stationary coercivity, local-inverse, packet-jet and
    individual letter-jet proofs have not all been checked through; H03's
    full symmetry lift also remains unchecked.

    <item>Additional reset estimates and the full use of
    <hlink|<verbatim|JointLoad.stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98>'s
    covariance and trigger bounds remain outside the numbered outputs. The
    trigger uses <math|1+B> and <math|e<rsup|<around|(|log log
    \<beta\><rsub|F>|)><rsup|2>>>, absorbing fixed powers of the former into
    <math|e<rsup|-c*e<rsup|2<around|(|log log \<beta\><rsub|F>|)><rsup|2>>>>
    per distinct endpoint.

    <item>Exact correspondences with Balaban's lemmas, thresholds and
    normalizations remain open.
  </itemize-minus>

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-10.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|III.1|III-1.tm>, <hlink|I.1|I-1.tm>,
  <hlink|III.5|III-5.tm>, <hlink|III.4|III-4.tm>, <hlink|III.6|III-6.tm>,
  <hlink|III.9|III-9.tm>, <hlink|VIII.1|VIII-1.tm>, <hlink|III.2|III-2.tm>,
  <hlink|II.2|II-2.tm>, <hlink|IV.1|IV-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|II.1|II-1.tm>, <hlink|III.15|III-15.tm>, <hlink|VI.1|VI-1.tm>,
  <hlink|III.3|III-3.tm>, <hlink|V.1|V-1.tm>, <hlink|V.2|V-2.tm>.

  <strong|Referenced by:> <hlink|III.13|III-13.tm>, <hlink|III.12|III-12.tm>,
  <hlink|III.11|III-11.tm>, <hlink|III.2|III-2.tm>, <hlink|III.15|III-15.tm>,
  <hlink|III.4|III-4.tm>, <hlink|VIII.1|VIII-1.tm>, <hlink|VII.4|VII-4.tm>,
  <hlink|III.6|III-6.tm>, <hlink|III.5|III-5.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|III.14|III-14.tm>, <hlink|V.1|V-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|V.2|V-2.tm>, <hlink|III.7|III-7.tm>, <hlink|III.3|III-3.tm>,
  <hlink|VI.1|VI-1.tm>, <hlink|IV.1|IV-1.tm>, <hlink|III.9|III-9.tm>,
  <hlink|V.3|V-3.tm>, <hlink|VII.6|VII-6.tm>, <hlink|VII.1|VII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 49,448 attributed lines; 5,929 line-counted
  declarations; 7,823 assigned declaration names. Of the assigned names,
  7,561 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6>,
    with <hlink|<verbatim|YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP>
    \V 38,787 lines.

    <item>work package <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
    (in part, 30%) \V 11,420 lines.

    <item>work package <hlink|<verbatim|YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD>
    \V 3,666 lines.

    <item>work package <hlink|<verbatim|YM/Next/FLUCTUATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS>
    \V 1,723 lines.

    <item>work package <hlink|<verbatim|YM/Bid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid>
    \V 1,052 lines.

    <item>work package <hlink|<verbatim|YM/Work/E07/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07>
    \V 425 lines.

    <item>work package <hlink|<verbatim|YM/Work/E09/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09>
    \V 252 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticBridge/COUPLING_SHAPE_ESTIMATE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/COUPLING_SHAPE_ESTIMATE>
    \V 59 lines.

    <item>work package <hlink|<verbatim|YM/R2I/Vale/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Vale>
    \V 38 lines.

    <item>work package <hlink|<verbatim|YM/Planned/ATOM_FORCED_ESTIMATE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_FORCED_ESTIMATE>
    \V 6 lines.

    <item>work package <hlink|<verbatim|YM/UVNext/UV_STATION_TRANSFER/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/UV_STATION_TRANSFER>
    \V 5 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|YM.ConnectedActivityE6.Coat.tends_val>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/StampQ.lean#L50-L59>

    <item><hlink|<verbatim|Bid.E05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L101>

    <item><hlink|<verbatim|Seals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L103-L107>

    <item><hlink|<verbatim|Bid.E06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L110>

    <item><hlink|<verbatim|Lapse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L121-L128>

    <item><hlink|<verbatim|Bid.E07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L130>

    <item><hlink|<verbatim|Stitches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L134-L138>

    <item><hlink|<verbatim|Bid.E08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L140>

    <item><hlink|<verbatim|Belly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L142-L144>

    <item><hlink|<verbatim|Bid.EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>

    <item><hlink|<verbatim|Bid.E09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L151-L152>

    <item><hlink|<verbatim|recheck>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L204-L208>

    <item><hlink|<verbatim|Payments>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L27-L32>

    <item><hlink|<verbatim|MacroStore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L35-L38>

    <item><hlink|<verbatim|Bid.E01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L40-L41>

    <item><hlink|<verbatim|Bid.E02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52>

    <item><hlink|<verbatim|Allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L61-L64>

    <item><hlink|<verbatim|Bid.E03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L67>

    <item><hlink|<verbatim|LaneCounts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L74-L81>

    <item><hlink|<verbatim|Maximum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L83-L86>

    <item><hlink|<verbatim|Bid.E04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L89-L91>

    <item><hlink|<verbatim|Crowds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L94-L97>

    <item><hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>

    <item><hlink|<verbatim|extend_interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Charts.lean#L89-L106>

    <item><hlink|<verbatim|gauge_gaps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Covariance.lean#L151-L185>

    <item><hlink|<verbatim|widen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L70>

    <item><hlink|<verbatim|radius_stitch_errors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Scales.lean#L116-L152>

    <item><hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187>

    <item><hlink|<verbatim|vision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104>

    <item><hlink|<verbatim|workF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124>

    <item><hlink|<verbatim|workI>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L126-L127>

    <item><hlink|<verbatim|workC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L129-L131>

    <item><hlink|<verbatim|workL>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L133-L134>

    <item><hlink|<verbatim|workN>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L136>

    <item><hlink|<verbatim|workD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140>

    <item><hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55>

    <item><hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>

    <item><hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>

    <item><hlink|<verbatim|temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>

    <item><hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>

    <item><hlink|<verbatim|largeT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L27>

    <item><hlink|<verbatim|till>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L77>

    <item><hlink|<verbatim|Sheet.has>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>

    <item><hlink|<verbatim|Grant.order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71>

    <item><hlink|<verbatim|bank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L23-L62>

    <item><hlink|<verbatim|assemble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L69-L111>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-10-1>

  <\itemize-minus>
    <item><strong|K-III.10.1> <hlink|<verbatim|anchored_of_terms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L39-L90>
    <em|(numbered result)> \V Torus sums of kernel terms satisfying a cover
    envelope and separation bound give anchored row and column estimates with
    cardinality-weighted constants.
  </itemize-minus>

  <label|k-iii-10-2>

  <\itemize-minus>
    <item><strong|K-III.10.2> <hlink|<verbatim|gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251>
    <em|(key result)> \V The fused gas occurrence series sums to the poured
    gas times the exponential of the sum of logarithms.
  </itemize-minus>

  <label|k-iii-10-3>

  <\itemize-minus>
    <item><strong|K-III.10.3> <hlink|<verbatim|kernel_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Kernel.lean#L264-L298>
    <em|(key result)> \V At a fixed patch, kernel factors of the defects are
    near their flat matrices with constants independent of period, store and
    cut.
  </itemize-minus>

  <label|k-iii-10-4>

  <\itemize-minus>
    <item><strong|K-III.10.4> <hlink|<verbatim|columns_receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L24-L62>
    <em|(numbered result)> \V The accumulated log of column counts across
    levels is little-o of the schedule scale.
  </itemize-minus>

  <label|k-iii-10-5>

  <\itemize-minus>
    <item><strong|K-III.10.5> <hlink|<verbatim|Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>
    <em|(numbered result)> \V A packaging predicate collecting uniformity
    properties of raw cumulative kernels for a horizon at given levels and
    prices.
  </itemize-minus>

  <label|k-iii-10-6>

  <\itemize-minus>
    <item><strong|K-III.10.6> <hlink|<verbatim|x_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Slots.lean#L83-L158>
    <em|(key result)> \V On the chart, the linear map is bounded by C h and
    the plotted-minus-linear error is bounded by C h times a widening factor,
    for small h.
  </itemize-minus>

  <label|k-iii-10-7>

  <\itemize-minus>
    <item><strong|K-III.10.7> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244>
    <em|(key result)> \V A fine-link shell comparison estimate holds,
    bounding fine-link quantities against parent shell data.
  </itemize-minus>

  <label|k-iii-10-8>

  <\itemize-minus>
    <item><strong|K-III.10.8> <hlink|<verbatim|pricing_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202>
    <em|(key result)> \V Given grants for all test queries, there is a floor
    such that any sheet with larger floor admits raised delay records
    satisfying a ringing condition with arbitrarily large values.
  </itemize-minus>

  <label|k-iii-10-9>

  <\itemize-minus>
    <item><strong|K-III.10.9> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324>
    <em|(key result)> \V Macro charges and packing estimates hold on a single
    oriented sector (price E01 in the chain).
  </itemize-minus>

  <label|k-iii-10-10>

  <\itemize-minus>
    <item><strong|K-III.10.10> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158>
    <em|(key result)> \V A bound on all affected departures (E07 item in the
    price chain), using macro multiplicity and stencil clipping.
  </itemize-minus>

  <label|k-iii-10-11>

  <\itemize-minus>
    <item><strong|K-III.10.11> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440>
    <em|(key result)> \V Lower bounds on the F+I rows hold, with column and
    witness costs of order 1/L\<twosuperior\> times the swell currency at
    fixed pre-L data.
  </itemize-minus>

  <label|k-iii-10-12>

  <\itemize-minus>
    <item><strong|K-III.10.12> <hlink|<verbatim|z_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Prediction.lean#L243-L267>
    <em|(key result)> \V At a fixed patch, the linearization of the Z
    prediction is bounded linearly and approximates the test with quadratic
    error uniformly, independent of the torus.
  </itemize-minus>

  <label|k-iii-10-13>

  <\itemize-minus>
    <item><strong|K-III.10.13> <hlink|<verbatim|global_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148>
    <em|(numbered result)> \V Post-L, uniform small-log estimates on the full
    torus bound both defects in terms of a log-field size h.
  </itemize-minus>

  <label|k-iii-10-14>

  <\itemize-minus>
    <item><strong|K-III.10.14> <hlink|<verbatim|local_gaps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Locality.lean#L151-L174>
    <em|(numbered result)> \V Gap quantities depend only on configurations
    within distance D of the site, so agreeing near the site gives equal
    values.
  </itemize-minus>

  <label|k-iii-10-15>

  <\itemize-minus>
    <item><strong|K-III.10.15> <hlink|<verbatim|interior_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63>
    <em|(key result)> \V Within a halo, the two cut defects (linear gap and
    derivative gap) are bounded by a constant times h times a widening
    factor, uniformly over step data.
  </itemize-minus>

  <label|k-iii-10-16>

  <\itemize-minus>
    <item><strong|K-III.10.16> <hlink|<verbatim|bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>
    <em|(main result)> \V The bare defect-producer statement EBare holds
    unconditionally.
  </itemize-minus>

  <label|k-iii-10-17>

  <\itemize-minus>
    <item><strong|K-III.10.17> <hlink|<verbatim|grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24>
    <em|(key result)> \V For every teller, the pre- and post-pressure grants
    hold unconditionally, without a separate bare-estimate input.
  </itemize-minus>

  <label|k-iii-10-18>

  <\itemize-minus>
    <item><strong|K-III.10.18> <hlink|<verbatim|pressure_pricing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L32-L37>
    <em|(numbered result)> \V For any price map there is a threshold on the
    parameters beyond which the delay data can be enlarged in the beta entry
    so that a ringing function bounded below by any given constant exists.
  </itemize-minus>

  <label|k-iii-10-19>

  <\itemize-minus>
    <item><strong|K-III.10.19> <hlink|<verbatim|healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97>
    <em|(main result)> \V For a cleaner sequence of tables, there exists a
    hierarchy among the limit table that has the required orientation.
  </itemize-minus>

  <label|k-iii-10-20>

  <\itemize-minus>
    <item><strong|K-III.10.20> <hlink|<verbatim|rectangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Many.lean#L89-L101>
    <em|(numbered result)> \V For a Gaussian with covariance bounded above by
    M, the probability that all coordinates in a set exceed t in absolute
    value is at most 2^\|X\| exp((-st+Ms\<twosuperior\>/2)\|X\|).
  </itemize-minus>

  <label|k-iii-10-21>

  <\itemize-minus>
    <item><strong|K-III.10.21> <hlink|<verbatim|gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Passage.lean#L264-L270>
    <em|(numbered result)> \V The fused gas occurrence series sums to the
    product of the gas and the exponential of the summed logarithms.
  </itemize-minus>

  <label|k-iii-10-22>

  <\itemize-minus>
    <item><strong|K-III.10.22> <hlink|<verbatim|Coat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L49-L56>
    <em|(numbered result)> \V A structure packaging the input data of a
    sector as a view without new variables.
  </itemize-minus>

  <label|k-iii-10-23>

  <\itemize-minus>
    <item><strong|K-III.10.23> <hlink|<verbatim|Intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L42-L49>
    <em|(numbered result)> \V A packaged structure of hypotheses serving as
    input to the connected-activity jet service.
  </itemize-minus>

  <label|k-iii-10-24>

  <\itemize-minus>
    <item><strong|K-III.10.24> <hlink|<verbatim|Target>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76>
    <em|(numbered result)> \V A bundled record of hypotheses and parameters
    (ordering of epsilon before L, allowed marks) for the connected-activity
    jet estimate.
  </itemize-minus>

  <label|k-iii-10-25>

  <\itemize-minus>
    <item><strong|K-III.10.25> <hlink|<verbatim|Room>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Room.lean#L39-L48>
    <em|(numbered result)> \V A structure collecting stencil and delay
    hypotheses (enough room) for core and annulus analytic estimates.
  </itemize-minus>

  <label|k-iii-10-26>

  <\itemize-minus>
    <item><strong|K-III.10.26> <hlink|<verbatim|tail_bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/PathPrices.lean#L127-L142>
    <em|(numbered result)> \V Tail sums of path prices with exponential
    length weights are negligible for large x.
  </itemize-minus>

  <label|k-iii-10-27>

  <\itemize-minus>
    <item><strong|K-III.10.27> <hlink|<verbatim|required>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L133-L142>
    <em|(numbered result)> \V Under shell access and interior hypotheses with
    bounded hot directions, the signal is grafted at the base point with the
    stated radius and bound.
  </itemize-minus>

  <label|k-iii-10-28>

  <\itemize-minus>
    <item><strong|K-III.10.28> <hlink|<verbatim|tickets_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Mask.lean#L125-L145>
    \V The product of local estimate weights is bounded by an exponential in
    the number of shares with a rate depending on the patch.
  </itemize-minus>

  <label|k-iii-10-29>

  <\itemize-minus>
    <item><strong|K-III.10.29> <hlink|<verbatim|engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>
    <em|(main result)> \V There exists a level schedule satisfying the
    payment requirements whose scales are divisibly spaced.
  </itemize-minus>

  <label|k-iii-10-30>

  <\itemize-minus>
    <item><strong|K-III.10.30> <hlink|<verbatim|dressed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Harmonic.lean#L46-L101>
    <em|(key result)> \V For a fixed patch there are radii such that all
    sufficiently small displacements within the same chart keep the dressed
    quantities controlled uniformly over step data.
  </itemize-minus>

  <label|k-iii-10-31>

  <\itemize-minus>
    <item><strong|K-III.10.31> <hlink|<verbatim|approves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/MinBranches.lean#L134-L173>
    <em|(numbered result)> \V If the configuration is close to trivial within
    distance d of a site, the predictors are within delta of the identity and
    tag masses equal one.
  </itemize-minus>

  <label|k-iii-10-32>

  <\itemize-minus>
    <item><strong|K-III.10.32> <hlink|<verbatim|marks_here>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/PatchCap.lean#L115-L151>
    <em|(numbered result)> \V Actual tags are read correctly under weak local
    conditions, uniformly for large x.
  </itemize-minus>

  <label|k-iii-10-33>

  <\itemize-minus>
    <item><strong|K-III.10.33> <hlink|<verbatim|atoms_meet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Receiving.lean#L82-L111>
    <em|(numbered result)> \V Atoms with summed budget are translated with
    bounds certified by a Sales capacity at power r of beta.
  </itemize-minus>

  <label|k-iii-10-34>

  <\itemize-minus>
    <item><strong|K-III.10.34> <hlink|<verbatim|letters_LD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Outer.lean#L85-L131>
    <em|(numbered result)> \V Both mismatch rows after the short cut in the
    unaffected chart are bounded by a rate-order -3/2 function.
  </itemize-minus>

  <label|k-iii-10-35>

  <\itemize-minus>
    <item><strong|K-III.10.35> <hlink|<verbatim|input_decays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Compression.lean#L137-L181>
    <em|(numbered result)> \V A weighted exponential-decay bound on the
    response of the extracted rows to a single impulse at a bond, in terms of
    distance to the focus.
  </itemize-minus>

  <label|k-iii-10-36>

  <\itemize-minus>
    <item><strong|K-III.10.36> <hlink|<verbatim|f0_agrees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Folio/Base.lean#L107-L123>
    <em|(numbered result)> \V The extension function on F0 depends only on
    configurations near the relevant region, so two locally agreeing
    configurations give equal values.
  </itemize-minus>

  <label|k-iii-10-37>

  <\itemize-minus>
    <item><strong|K-III.10.37> <hlink|<verbatim|within>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Accuracy.lean#L64-L163>
    <em|(numbered result)> \V Within protected stencils, the jet remainder is
    bounded by explicit rate functions of orders \<minus\>1/2 and \<minus\>1.
  </itemize-minus>

  <label|k-iii-10-38>

  <\itemize-minus>
    <item><strong|K-III.10.38> <hlink|<verbatim|soft_bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Remainder.lean#L110-L179>
    <em|(numbered result)> \V The soft term differs from half the squared
    reply norm by at most a rate \<minus\>3/2 error on weak annulus cells.
  </itemize-minus>

  <label|k-iii-10-39>

  <\itemize-minus>
    <item><strong|K-III.10.39> <hlink|<verbatim|survey>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Survey.lean#L92-L109>
    <em|(key result)> \V For a patch with branching predictor, eventually in
    x, the forecast of the bare predictor model satisfies a uniform bound on
    directions of bounded norm for all steps and tubes.
  </itemize-minus>

  <label|k-iii-10-40>

  <\itemize-minus>
    <item><strong|K-III.10.40> <hlink|<verbatim|certified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L110-L120>
    <em|(numbered result)> \V Under the stated hypotheses, a day datum is
    valid and satisfies clearing and admission conditions.
  </itemize-minus>

  <label|k-iii-10-41>

  <\itemize-minus>
    <item><strong|K-III.10.41> <hlink|<verbatim|allocation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Intake.lean#L57-L59>
    <em|(numbered result)> \V An intake with point charge yields a charged
    allocation and portion-cost data without altering weights.
  </itemize-minus>

  <label|k-iii-10-42>

  <\itemize-minus>
    <item><strong|K-III.10.42> <hlink|<verbatim|issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185>
    <em|(key result)> \V For large side length L and large width W, there
    exist order, constants and a rate so that the required bounds hold
    simultaneously for all admissible tubes and steps, yielding the needed
    invoices.
  </itemize-minus>

  <label|k-iii-10-43>

  <\itemize-minus>
    <item><strong|K-III.10.43> <hlink|<verbatim|retreat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Resolve.lean#L59-L131>
    <em|(numbered result)> \V Remote affine paths are small at the local
    stationary mean, with an error of rate \<minus\>1.
  </itemize-minus>

  <label|k-iii-10-44>

  <\itemize-minus>
    <item><strong|K-III.10.44> <hlink|<verbatim|quoted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Export.lean#L48-L74>
    <em|(numbered result)> \V A single uniform beta cost per vertex handles
    the log/determinant correction, with rate-b error functions.
  </itemize-minus>

  <label|k-iii-10-45>

  <\itemize-minus>
    <item><strong|K-III.10.45> <hlink|<verbatim|ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188>
    <em|(key result)> \V For rare-event configurations away from seeds, a
    Gaussian-scale excursion lower bound holds uniformly for large x, with a
    fixed small constant.
  </itemize-minus>

  <label|k-iii-10-46>

  <\itemize-minus>
    <item><strong|K-III.10.46> <hlink|<verbatim|earns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86>
    <em|(key result)> \V The quoted cost near the point charge is at least
    (\<kappa\> t\<twosuperior\> \<minus\> E(x)) times the number of shares,
    with E decaying at rate \<minus\>3/2.
  </itemize-minus>

  <label|k-iii-10-47>

  <\itemize-minus>
    <item><strong|K-III.10.47> <hlink|<verbatim|dividend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AffOrd.lean#L93-L136>
    <em|(numbered result)> \V Mean and residual of the affine-ordered cost
    are bounded by a constant times t, with a rate-controlled error for the
    fixed-L exponent.
  </itemize-minus>

  <label|k-iii-10-48>

  <\itemize-minus>
    <item><strong|K-III.10.48> <hlink|<verbatim|rear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Via.lean#L95-L108>
    <em|(numbered result)> \V A linear identity holds for a response and
    turns in a unified function near a remote row.
  </itemize-minus>

  <label|k-iii-10-49>

  <\itemize-minus>
    <item><strong|K-III.10.49> <hlink|<verbatim|light_costs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L103-L160>
    <em|(numbered result)> \V Weak unmasked estimates on the light remainder
    at each stencil: bounded below by a rate \<minus\>E and above on selected
    packets.
  </itemize-minus>

  <label|k-iii-10-50>

  <\itemize-minus>
    <item><strong|K-III.10.50> <hlink|<verbatim|recommends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92>
    <em|(main result)> \V For large sides and all admissible stamped tubes,
    the offer of non-packet gas letters holds with prescribed power-of-beta
    bounds, using only actual inputs.
  </itemize-minus>

  <label|k-iii-10-51>

  <\itemize-minus>
    <item><strong|K-III.10.51> <hlink|<verbatim|annulus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L164-L185>
    <em|(key result)> \V On the annulus between radii 2B and 200B, the
    remainders of a sector packet's debit are bounded below by an
    O(x^{-3/2})-rate error, before determinant or Gaussian corrections.
  </itemize-minus>

  <label|k-iii-10-52>

  <\itemize-minus>
    <item><strong|K-III.10.52> <hlink|<verbatim|condenses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Rewards.lean#L44-L87>
    <em|(key result)> \V Local log differences of the condensation are
    bounded away from seeds by a rate \<minus\>1/2 error.
  </itemize-minus>

  <label|k-iii-10-53>

  <\itemize-minus>
    <item><strong|K-III.10.53> <hlink|<verbatim|unified_exp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/UnifiedValue.lean#L40-L73>
    <em|(key result)> \V The assembled dictionary gives a unified exponential
    value formula for the coat at the manifest width, used by the
    consolidated and selection-run results.
  </itemize-minus>

  <label|k-iii-10-54>

  <\itemize-minus>
    <item><strong|K-III.10.54> <hlink|<verbatim|seat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Buoy.lean#L46-L78>
    <em|(numbered result)> \V The integral over shifted stages equals an
    integral over the full coordinate split with the actual reference
    density.
  </itemize-minus>

  <label|k-iii-10-55>

  <\itemize-minus>
    <item><strong|K-III.10.55> <hlink|<verbatim|timing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179>
    <em|(key result)> \V For large lattice size and uniform parameters, given
    a rate-controlled V, there exist rate-controlled q, p and a Utopia
    structure on every admissible step whose Herd bound holds with the stated
    pressure bound.
  </itemize-minus>

  <label|k-iii-10-56>

  <\itemize-minus>
    <item><strong|K-III.10.56> <hlink|<verbatim|patch_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Diags.lean#L92-L107>
    <em|(numbered result)> \V The difference of the joint window quantities
    for two admissible fields is bounded by the number of colors times a
    pulse cost in the uniform gauge difference.
  </itemize-minus>

  <label|k-iii-10-57>

  <\itemize-minus>
    <item><strong|K-III.10.57> <hlink|<verbatim|fountain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Boulevard/Clasp.lean#L83-L101>
    <em|(numbered result)> \V Eventually in k, derivatives of a truncated
    auxiliary analytic charge are bounded by a estimate bound plus a
    site-count term.
  </itemize-minus>

  <label|k-iii-10-58>

  <\itemize-minus>
    <item><strong|K-III.10.58> <hlink|<verbatim|burst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Thrills.lean#L47-L69>
    <em|(key result)> \V For the auxiliary lattice step, a positivity bound
    holds and a brush-type estimate holds at admissible positions.
  </itemize-minus>

  <label|k-iii-10-59>

  <\itemize-minus>
    <item><strong|K-III.10.59> <hlink|<verbatim|read_guides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Guide.lean#L115-L163>
    <em|(numbered result)> \V The linear response of costs to the target
    field on a clean patch is bounded by a rate-controlled function of order
    -1.
  </itemize-minus>

  <label|k-iii-10-60>

  <\itemize-minus>
    <item><strong|K-III.10.60> <hlink|<verbatim|ligatures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Laud.lean#L27-L60>
    <em|(key result)> \V At critical station parameters with c at least 2,
    the comparisons on auxiliary lattices hold (statement truncated).
  </itemize-minus>

  <label|k-iii-10-61>

  <\itemize-minus>
    <item><strong|K-III.10.61> <hlink|<verbatim|capital>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Costs.lean#L92-L157>
    <em|(main result)> \V There are uniform per-jump receipt constants for
    the endpoint windows, valid for all large x and all admissible tubes,
    stores, and configurations.
  </itemize-minus>

  <label|k-iii-10-62>

  <\itemize-minus>
    <item><strong|K-III.10.62> <hlink|<verbatim|abides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Rain/Room.lean#L88-L92>
    <em|(key result)> \V For large n, all derivatives up to the given order
    of the actual weight function in the allowed directions are bounded by an
    explicit estimate-cost estimate.
  </itemize-minus>

  <label|k-iii-10-63>

  <\itemize-minus>
    <item><strong|K-III.10.63> <hlink|<verbatim|GrantBodies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L51-L71>
    <em|(numbered result)> \V A structure bundling the conclusions of a
    one-step vacuum production of normalized bounds for all words.
  </itemize-minus>

  <label|k-iii-10-64>

  <\itemize-minus>
    <item><strong|K-III.10.64> <hlink|<verbatim|Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L33-L46>
    <em|(numbered result)> \V A record of posted parameters and retained
    covariance bounds for all sectors in one step.
  </itemize-minus>

  <label|k-iii-10-65>

  <\itemize-minus>
    <item><strong|K-III.10.65> <hlink|<verbatim|Rotator>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L110-L117>
    <em|(numbered result)> \V A structure of real-sector window hypotheses at
    one torus coat.
  </itemize-minus>

  <label|k-iii-10-66>

  <\itemize-minus>
    <item><strong|K-III.10.66> <hlink|<verbatim|stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98>
    <em|(main result)> \V For a branching patch and local ratio, there is a
    kiosk of constants such that every matching desk satisfies the
    quantitative stage procurement bound for all large x.
  </itemize-minus>

  <label|k-iii-10-67>

  <\itemize-minus>
    <item><strong|K-III.10.67> <hlink|<verbatim|erudite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Shellac/Sables.lean#L26-L65>
    <em|(key result)> \V For large scale t, the full residual is positive and
    has derivative bounds of order beta^(-23/20) uniformly over admissible
    step data.
  </itemize-minus>

  <label|k-iii-10-68>

  <\itemize-minus>
    <item><strong|K-III.10.68> <hlink|<verbatim|school>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Calls.lean#L46-L49>
    <em|(key result)> \V Given delays, one can enlarge them so that all
    further enlargements satisfy the planks (schedule) conditions.
  </itemize-minus>

  <label|k-iii-10-69>

  <\itemize-minus>
    <item><strong|K-III.10.69> <hlink|<verbatim|rimfire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Basin.lean#L23-L49>
    <em|(key result)> \V There exist constants such that for an equalized
    representation with small perturbation t, a summable budget function
    controls the change of the contribution on healthy molecules.
  </itemize-minus>

  <label|k-iii-10-70>

  <\itemize-minus>
    <item><strong|K-III.10.70> <hlink|<verbatim|meritBar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Molt.lean#L25-L77>
    <em|(main result)> \V There exist constants K and s such that for
    equalized representations with t\<leqslant\>s, the orbit is consumed
    uniformly at unforced molecules with summable budget K.
  </itemize-minus>

  <label|k-iii-10-71>

  <\itemize-minus>
    <item><strong|K-III.10.71> <hlink|<verbatim|spectra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Satin.lean#L70-L109>
    <em|(key result)> \V For small t there is a summable budget with constant
    K controlling the pointed application certificate on varying
    configurations, with order V.order+2j.
  </itemize-minus>

  <label|k-iii-10-72>

  <\itemize-minus>
    <item><strong|K-III.10.72> <hlink|<verbatim|pressure_mean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Mean.lean#L100-L145>
    <em|(key result)> \V Away from the seeds, the real path at the stationary
    mean is uniformly bounded by an error of rate \<minus\>1.
  </itemize-minus>

  <label|k-iii-10-73>

  <\itemize-minus>
    <item><strong|K-III.10.73> <hlink|<verbatim|cooler>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Sienna/Crone.lean#L60-L90>
    <em|(key result)> \V Under an exponential-weight and budget inequality, a
    good configuration slice exists in the staying set with all tolls at most
    half the threshold.
  </itemize-minus>

  <label|k-iii-10-74>

  <\itemize-minus>
    <item><strong|K-III.10.74> <hlink|<verbatim|treasure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Grain.lean#L42-L79>
    <em|(key result)> \V There exist rate functions bounding, for large scale
    x, the first-order jet quantities of the step for all admissible data.
  </itemize-minus>

  <label|k-iii-10-75>

  <\itemize-minus>
    <item><strong|K-III.10.75> <hlink|<verbatim|coaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Coach.lean#L122-L158>
    <em|(key result)> \V For any base b\<geqslant\>2 and M\<gtr\>0 there is a
    uniform constant C\<geqslant\>1 such that, for all steps and tubes with
    funds, every forest satisfies the linear tree and principal-route
    licensing bound.
  </itemize-minus>

  <label|k-iii-10-76>

  <\itemize-minus>
    <item><strong|K-III.10.76> <hlink|<verbatim|lookingGlass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Lantern/Lens.lean#L41-L89>
    <em|(key result)> \V Given rate-controlled data and a Bolt bound with a
    negative decay rate, there exists a rate-0 function B bounding the
    quantity eventually.
  </itemize-minus>

  <label|k-iii-10-77>

  <\itemize-minus>
    <item><strong|K-III.10.77> <hlink|<verbatim|royaltyB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Lode.lean#L32-L100>
    <em|(key result)> \V There is a rate of order -1/2 giving a uniform
    remainder bound for every singleton after tuning, for large s.
  </itemize-minus>

  <label|k-iii-10-78>

  <\itemize-minus>
    <item><strong|K-III.10.78> <hlink|<verbatim|sterling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Yearling/Garter.lean#L34-L53>
    <em|(key result)> \V If the target has positive exponent, there is a
    threshold side length such that for large parameter x every admissible
    data admits a nonempty year-structure certificate.
  </itemize-minus>

  <label|k-iii-10-79>

  <\itemize-minus>
    <item><strong|K-III.10.79> <hlink|<verbatim|spicules>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Heights.lean#L44-L82>
    <em|(key result)> \V There exist rate functions of given polynomial
    orders such that a tentacle-type bound holds uniformly over all steps,
    tubes, supports and configurations.
  </itemize-minus>

  <label|k-iii-10-80>

  <\itemize-minus>
    <item><strong|K-III.10.80> <hlink|<verbatim|rocketsC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Sparks.lean#L36-L61>
    <em|(key result)> \V For large lattice size, uniformly in parameters,
    there exist rate-controlled constants and functions such that every
    admissible step datum has a Captain whose conduit satisfies the Herd
    bound.
  </itemize-minus>

  <label|k-iii-10-81>

  <\itemize-minus>
    <item><strong|K-III.10.81> <hlink|<verbatim|saleD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Malachite/Searchlight.lean#L38-L70>
    <em|(key result)> \V Compact-stencil derivative bounds with decay rates
    -1 and -1/2 for the dislocation and gap quantities.
  </itemize-minus>

  <label|k-iii-10-82>

  <\itemize-minus>
    <item><strong|K-III.10.82> <hlink|<verbatim|batten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Yearling/Headwind.lean#L32>
    <em|(key result)> \V For targets with expenses, there exists M such that
    the Yearling hood property holds.
  </itemize-minus>

  <label|k-iii-10-83>

  <\itemize-minus>
    <item><strong|K-III.10.83> <hlink|<verbatim|trove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mercury/Radio.lean#L31-L101>
    <em|(key result)> \V A uniform remainder bound with rate -1/2 holds for
    every singleton contribution after broadcast, for all large scales.
  </itemize-minus>

  <label|k-iii-10-84>

  <\itemize-minus>
    <item><strong|K-III.10.84> <hlink|<verbatim|ired>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Grotto.lean#L25-L98>
    <em|(key result)> \V For all large x, every step datum with given patch
    and cash structure has its tube covered, uniformly.
  </itemize-minus>

  <label|k-iii-10-85>

  <\itemize-minus>
    <item><strong|K-III.10.85> <hlink|<verbatim|feather>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Merry.lean#L33-L75>
    <em|(key result)> \V All log-head and catalog costs at a given point are
    bounded by a uniform constant for equalized data, uniformly along smooth
    families.
  </itemize-minus>

  <label|k-iii-10-86>

  <\itemize-minus>
    <item><strong|K-III.10.86> <hlink|<verbatim|masterP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Courage.lean#L66-L75>
    <em|(key result)> \V For equalized representations with small t, the
    emerging quantity changes by at most t times a summable-budget function.
  </itemize-minus>

  <label|k-iii-10-87>

  <\itemize-minus>
    <item><strong|K-III.10.87> <hlink|<verbatim|takeover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Census/Mettle.lean#L129-L152>
    <em|(key result)> \V For sufficiently large lattice size, uniformly over
    patches and parameters, there exist rate-controlled constants and
    functions such that every admissible step datum admits a 'Captain'
    structure with a heavy conduit.
  </itemize-minus>

  <label|k-iii-10-88>

  <\itemize-minus>
    <item><strong|K-III.10.88> <hlink|<verbatim|logos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Cub/Chant.lean#L50-L88>
    <em|(key result)> \V For large enough x, under mild index and smallness
    conditions, a nonempty structure 'Eve' (bundle of step data at stages)
    exists.
  </itemize-minus>

  <label|k-iii-10-89>

  <\itemize-minus>
    <item><strong|K-III.10.89> <hlink|<verbatim|twinkles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Census/Horns.lean#L24-L86>
    <em|(key result)> \V There is a threshold on L such that for all patches
    and targets, a heavy Utopia structure exists with constant and rate
    bounds for all large x.
  </itemize-minus>

  <label|k-iii-10-90>

  <\itemize-minus>
    <item><strong|K-III.10.90> <hlink|<verbatim|sweaters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Brim/Sun.lean#L39-L98>
    <em|(key result)> \V There exist rates N, \<delta\>, V of given orders
    such that a score bound holds uniformly for all sectors and estimates
    within budget.
  </itemize-minus>

  <label|k-iii-10-91>

  <\itemize-minus>
    <item><strong|K-III.10.91> <hlink|<verbatim|songs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Entrance.lean#L61-L82>
    <em|(key result)> \V Withdrawing epoch receipts at fixed adjacent-stage
    prices, there exists a record with small error that is tight and gives
    the plays bounds for all large x.
  </itemize-minus>

  <label|k-iii-10-92>

  <\itemize-minus>
    <item><strong|K-III.10.92> <hlink|<verbatim|dissent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Dissent.lean#L111-L170>
    <em|(key result)> \V For large x, the deviation of the Lie predictor
    vanishes at the origin and its derivative there is bounded by a small
    temperature-dependent quantity.
  </itemize-minus>

  <label|k-iii-10-93>

  <\itemize-minus>
    <item><strong|K-III.10.93> <hlink|<verbatim|shoots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144>
    <em|(key result)> \V For a fixed patch, window parameters exist such that
    for large x every manifest coat is a rotator, i.e. windows apply in real
    sectors.
  </itemize-minus>

  <label|k-iii-10-94>

  <\itemize-minus>
    <item><strong|K-III.10.94> <hlink|<verbatim|whittle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102>
    <em|(key result)> \V For all large sides, uniformly over patches and cash
    data, a Utopia structure with controlled constants exists.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.9 The marginal flow: the running
  coupling and its reset|III-9.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-10.tm>|<hlink|III.11 Interacting rank, Gaussian
  comparison and the stress tensor \<rightarrow\>|III-11.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.10. One full nonlinear renormalization step:
    bounds on irrelevant terms \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|10>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|11>>
    <associate|5-where-the-difficulty-lies|<tuple|5|12>>
    <associate|6-notation|<tuple|6|12>>
    <associate|7-what-remains-unexplained|<tuple|7|13>>
    <associate|additional-source-locations|<tuple|9.1|14>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|14>>
    <associate|auto-11|<tuple|10|16>>
    <associate|auto-2|<tuple|2|10>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|5|12>>
    <associate|auto-6|<tuple|6|12>>
    <associate|auto-7|<tuple|7|13>>
    <associate|auto-8|<tuple|8|13>>
    <associate|auto-9|<tuple|9|13>>
    <associate|code-dependencies|<tuple|8|13>>
    <associate|iii10-one-full-nonlinear-renormalization-step-bounds-on-irrelevant-terms|<tuple|?|1>>
    <associate|k-iii-10-1|<tuple|10|16>>
    <associate|k-iii-10-10|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-11|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-12|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-13|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-14|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-15|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-16|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-17|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-18|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-19|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-2|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-20|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-21|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-22|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-23|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-24|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-25|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-26|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-27|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-28|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-29|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-iii-10-3|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-30|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-31|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-32|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-33|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-34|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-35|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-36|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-37|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-38|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-39|<tuple|<with|mode|<quote|math>|<rigid|->>|19>>
    <associate|k-iii-10-4|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-40|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-41|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-42|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-43|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-44|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-45|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-46|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-47|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-48|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-49|<tuple|<with|mode|<quote|math>|<rigid|->>|20>>
    <associate|k-iii-10-5|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-50|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-51|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-52|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-53|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-54|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-55|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-56|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-57|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-58|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-59|<tuple|<with|mode|<quote|math>|<rigid|->>|21>>
    <associate|k-iii-10-6|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-60|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-61|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-62|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-63|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-64|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-65|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-66|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-67|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-68|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-69|<tuple|<with|mode|<quote|math>|<rigid|->>|22>>
    <associate|k-iii-10-7|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-70|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-71|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-72|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-73|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-74|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-75|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-76|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-77|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-78|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-79|<tuple|<with|mode|<quote|math>|<rigid|->>|23>>
    <associate|k-iii-10-8|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-10-80|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-81|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-82|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-83|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-84|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-85|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-86|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-87|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-88|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-89|<tuple|<with|mode|<quote|math>|<rigid|->>|24>>
    <associate|k-iii-10-9|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-10-90|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-10-91|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-10-92|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-10-93|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|k-iii-10-94|<tuple|<with|mode|<quote|math>|<rigid|->>|25>>
    <associate|key-statements|<tuple|10|16>>
    <associate|lean-source|<tuple|9|13>>
    <associate|unit-difficulty|<tuple|12|12>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
    <associate|unit-limitations|<tuple|6|12>>
    <associate|unit-notation|<tuple|5|12>>
    <associate|unit-results|<tuple|<with|mode|<quote|math>|<rigid|->>|2>>
    <associate|unit-steps|<tuple|3|11>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|10>>
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