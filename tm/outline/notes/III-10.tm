<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.9 The marginal flow: the running
  coupling and its reset (notes)|III-9.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-10.tm>|<hlink|III.11 Interacting rank, Gaussian
  comparison and the stress tensor (notes) \<rightarrow\>|III-11.tm>>

  <ym-title|III.10. One full nonlinear renormalization step: bounds on
  irrelevant terms \V detailed notes><label|iii10-one-full-nonlinear-renormalization-step-bounds-on-irrelevant-terms--detailed-notes>

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

    <with|par-left|1tab|4.1 The algebraic identity
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Packing and geometry
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Kernel bounds
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Row-by-row lower bounds
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Linearization defects on unaffected cells
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Assembly of III.10.1
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Activities of one step
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Derivatives <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 Start-up fusion and markers
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|4.10 The schedule
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
    The full account of unit III.10: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-10.tm>.
  </quotation>

  <hlink|Unit page|../units/III-10.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
  (items E01\UE09, H01\UH04, I01\UI04), <hlink|<verbatim|YM/Bid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid>,
  <hlink|<verbatim|YM/Next/FLUCTUATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS>,
  <hlink|<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6>,
  <hlink|<verbatim|YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP>,
  <hlink|<verbatim|YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD>,
  <hlink|<verbatim|YM/Pressure/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure>
  (definitions). <strong|Size:> 49,448 lines in the main-theorem closure.

  <strong|Conventions.> Levels are indexed from coarse to fine, as in III.9.

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
    <math|t=\<beta\><rsub|F><rsup|-1/2+o<around|(|1|)>>\<ll\>T>. On the other
    hand <math|\<beta\><rsub|F>*t<rsup|2>=e<rsup|2<around|(|log log
    \<beta\><rsub|F>|)><rsup|2>>> grows faster than every power of <math|log
    \<beta\><rsub|F>>.

    <item><em|Field sizes.> <math|\<chi\><around|(|g|)>> is the chordal
    distance from <math|g\<in\>G> to <math|1>. For a plaquette <math|p>,
    <math|<around|\||U<rsub|p>|\|>=\<chi\><around|(|U<rsub|\<partial\>*p>|)>>.
    For a coarse bond <math|b>, <math|w<rsub|b>=\<chi\>*<around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>
    measures how far the coarse field <math|V> is from the block-spin
    predictor <math|Q=Q<around|(|U,k|)>> of the fine field <math|U> with
    gauge-fixing tags <math|k> (III.1).

    <item>"For all large <math|x>" means <math|x\<geqslant\>x<rsub|0>>, with
    <math|x<rsub|0>> independent of the period and volume. Other dependencies
    are specified in each statement.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The unit does not construct the effective actions; that is III.9, with
  III.5\UIII.8. It proves the estimates on one nonlinear block-spin step that
  the construction consumes:

  <\itemize-minus>
    <item>a deterministic lower bound on the action gap of the step near
    large-field regions (III.10.1);

    <item>bounds on the activities produced when the fluctuation field is
    integrated out, and on all their derivatives in the coarse field
    (III.10.2, III.10.3);

    <item>bounds on the Gaussian sector of the step (III.10.4);

    <item>the numerical schedule under which these estimates hold at every
    level (III.10.5).
  </itemize-minus>

  III.10.6 collects the start-up fusion and marker estimates. In the energy
  argument, constants are chosen before <math|L>, after <math|L>, or after
  <math|W>; this order determines which losses they can absorb. The
  derivative and Gaussian estimates have their own quantifier orders, stated
  below.

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
  identity; their defects are estimated in Ÿ4.5.

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
    is the sum of the row contributions of Lemma 4.1 over the rows located in
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
    <math|W>. The value above is the one the proof produces (Lemma 4.14), and
    it is independent of <math|L> and <math|W>.

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
  <math|\<cal-V\>> of rate <math|-1/2> that is eventually nonnegative (Lemma
  4.15).

  There are <math|C\<geqslant\>0>, functions <math|q,\<rho\>,p> of rates
  <math|-1/2,0,0>, respectively, and <math|l\<in\>\<bbb-N\>> such that, for
  all large <math|x>, the following holds for every step on <math|D>
  satisfying the compatibility condition, every fine representation <math|R>,
  and every bound bundle <math|H> of III.10.2 at
  <math|<around|(|W,x,\<mu\>|)>>. One has <math|8*a<rsub|o>*t\<leqslant\>A/2>
  and a derivative-bound structure <math|\<Xi\>>
  (<hlink|<verbatim|Utopia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L27-L46>)
  with the following properties in every sector at <math|x>, of width
  <math|o.*K>, cutoff <math|\<chi\>>, and with the actual coarse flags.

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
    <math|P.<math-up|first>\<leqslant\>j\<leqslant\>i\<leqslant\>j+1> the
    bound of III.10.1 holds at every coarse coupling
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
    <math|P.<math-up|first>\<leqslant\>i>. There is <math|\<mu\>\<gtr\>0>,
    uniform in the cutoff <math|N>, level <math|m> and period, such that for
    <math|m\<less\>N> at this pair and <math|x=<wide|\<beta\>|^><rsub|m>>,
    one has <math|\<mu\>*<space|0.17em>t<rsub|c><around|(|<wide|\<beta\>|^><rsub|m+1>|)><rsup|2>*<space|0.17em>\<sharp\>*A\<leqslant\>\<cal-E\><rsub|A>>
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

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><em|III.1 (block-spin step and gauge fixing).>

    <\itemize-minus>
      <item>The step data: patch, kernel choices, tree gauge, predictor
      <math|Q> and tags.

      <item>The definitions of request, admissible tube, store, consistency
      and action gap, including the identity
      <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>.

      <item>The branch condition. It is proved for the kernel choices of the
      construction by <hlink|<verbatim|Foundations.branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71>
      (from <hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>)
      and is carried by every sheet (<hlink|<verbatim|Sheet.has>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>).

      <item>With usable tags at the base site, the curvature bound for the
      predictor <hlink|<verbatim|qdc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L210-L252>:

      <\itemize-minus>
        <item><math|<around|\||Q<rsub|p>|\|>\<leqslant\>C<rsub|Q>*L<rsup|-2><space|0.17em><math-up|port><around|(|x,U|)>>;

        <item><math|<around|\||V<rsub|p>|\|>\<leqslant\><big|sum><rsub|b\<subset\>\<partial\>*p>w<rsub|b>+C<rsub|Q>*L<rsup|-2><space|0.17em><math-up|port><around|(|x,U|)>>.
      </itemize-minus>

      Here <math|<math-up|port><around|(|x,U|)>> is the sum of the fine
      <math|<around|\||U<rsub|q>|\|>> over the macro box of the coarse site
      <math|x>. Block averaging reduces curvature by <math|L<rsup|-2>>.
    </itemize-minus>

    <item><em|III.2 (constants and schedule):> sheets, block factors,
    protection, delays, bar and waits. The target data precede the block
    choice; the per-step window constants are chosen in III.10.2.

    <item><em|III.3 and III.4 (free kernels, Gaussian integration):> the
    towers, their flat identities and exponential decay (III.3 attribution
    probable); the Gaussian tail bound <hlink|<verbatim|rectangle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Many.lean#L89-L101>,
    which for covariance at most <math|M> reads <math|Pr
    <around|(|<around|\||\<xi\><rsub|i>|\|>\<gtr\>s\<forall\>i\<in\>X|)>\<leqslant\>2<rsup|<around|\||X|\|>>*e<rsup|<around|(|-\<nu\>*s+M*\<nu\><rsup|2>/2|)><around|\||X|\|>>>
    for every <math|\<nu\>\<gtr\>0>.

    <item><em|III.5 (cluster expansion):> polymer norms, budget points,
    representations of the effective density, Kotecký\UPreiss sums.

    <item><em|III.6\UIII.8 (stationary branch, matching, connected
    activities):> the stationary mean and its jets, the quartic matching of
    the path data, and the locality of connected activities.

    <item><em|III.9:> the slope <math|b<rsub|G>>, the thresholds, the monitor
    and the incoming allowances. III.9 supplies the fine-level density
    representation and consumes the activity bounds; the norm conversion
    remains to be written out (Ÿ7).

    <item><em|I.1, II.2, III.16:> lattice, Haar measure, chordal distance,
    polymer activities, Taylor jets.
  </itemize-minus>

  <strong|Standard mathematics.> The analytic method is Balaban's
  lattice-gauge renormalization group. Relevant references are
  <em|Renormalization group approach to lattice gauge field theories>,
  <hlink|I, CMP 109 (1987), 249\U301|https://doi.org/10.1007/BF01215223>,
  <hlink|II, CMP 116 (1988), 1\U22|https://doi.org/10.1007/BF01239022>, and
  <em|Large field renormalization>, <hlink|I, CMP 122 (1989),
  175\U202|https://doi.org/10.1007/BF01257412>, <hlink|II, CMP 122 (1989),
  355\U392|https://doi.org/10.1007/BF01238433>. The summability estimates use
  rooted polymer bounds of <hlink|Kotecký\UPreiss, CMP 103 (1986),
  491\U498|https://doi.org/10.1007/BF01211762>, tree-graph estimates, Schur's
  test, Gaussian exponential moments, and Taylor estimates on compact charts.
  Exact correspondences with Balaban's lemmas remain open (Ÿ7).

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The request and target data precede <math|L>. The window constants
    in III.10.2 are chosen after <math|L,W> and the patch, before the
    threshold in <math|x>. Simplicity of <math|G> is required by III.10.5(b)
    and I04.

    <item>The following are internal choices of the proof: the exponent
    <math|49/100> in <math|T>; the factor <math|10<rsup|-5>> in <math|R>; the
    hysteresis thresholds <math|t/4>, <math|t/2>, <math|W*t>, <math|2*W*t>;
    and the radii <math|5*B>, <math|2*B>, <math|4*B/5>, <math|2*B/5>,
    <math|30*B>.

    <item>The incoming bounds on the fine activities
    (<math|\<beta\><rsub|F><rsup|-11/10>>, <math|e<rsup|-M<rsup|1/5>>>,
    <math|2*M>) are hypotheses supplied by III.9.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The method combines large-field suppression with Gaussian integration in
  the small-field region. Seeds record the fine plaquettes, mismatches and
  coarse flags that exceed their thresholds. The deterministic estimate gives
  an action cost <math|\<kappa\>*t<rsup|2>> per seed. Since
  <math|\<beta\>\<geqslant\>\<beta\><rsub|F>/2>, its Boltzmann factor is at
  most <math|e<rsup|-<around|(|\<kappa\>/2|)>*e<rsup|2<around|(|log log
  \<beta\><rsub|F>|)><rsup|2>>>>. This pays every fixed polylogarithmic
  entropy loss and is smaller than every inverse power of
  <math|\<beta\><rsub|F>>, while <math|t=\<beta\><rsub|F><rsup|-1/2+o<around|(|1|)>>>
  remains perturbatively small.

  An exact completed-square decomposition separates the fine, interior,
  coarse and gauge contributions from two kernel defects. Large <math|L>
  makes the fine prediction small; large <math|W> separates mismatch seeds
  from the interior prediction. Coarse plaquettes above a fixed threshold lie
  near spent seeds, whose larger cost <math|t*T> pays the affected-cell
  losses. Away from those seeds, local gauge fixing and the flat tower
  identities reduce the defects to chart errors and exponentially small
  kernel tails. Summation over a radius-<math|B> neighbourhood still leaves
  an error <math|o<around|(|t<rsup|2>|)>> per seed.

  The resulting gas has packet, old forced, logarithmic and warning letters.
  The energy bound and annulus estimate control packets; Gaussian tails
  control warnings. Rooted support bounds and tree-graph estimates sum
  connected molecules. Derivatives are taken with sector data fixed and
  fluctuation coordinates transported compatibly. The Leibniz rule controls
  products, and Cauchy\USchwarz retains the square root of the
  simultaneous-warning probability when integrating their jets.

  <section|4. Steps><label|4-steps>

  Unless a lemma gives different hypotheses, the energy estimates in
  ŸŸ4.2\U4.6 use the step, tube, forest, fields, tags and consistent store of
  III.10.1. A sufficiently large threshold in <math|x> may depend on the
  fixed request, <math|L,W>, and any additional parameters already chosen,
  but never on the period. Row and column bounds refer to sums of operator
  norms; vector bounds are pointwise in the coordinate index. Distances are
  native torus max-distances.

  <subsection|4.1 The algebraic identity><label|41-the-algebraic-identity>

  <strong|Lemma 4.1 (completed squares).> Notation:

  <\itemize-minus>
    <item><math|v=v<around|(|V|)>> are the coarse coordinates
    (<hlink|<verbatim|vision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L104>).
    For each coarse plaquette <math|q> they are the pair
    <math|<around|(|<sqrt|\<alpha\><rsub|c>><space|0.17em><math-up|curv><around|(|V<rsub|q>|)>,\<ell\><rsub|q><around|(|V|)>|)>>,
    with the first component multiplied by <math|min
    <around|(|1,t<rsub|c>/<around|\||V<rsub|q>|\|>|)>>, interpreted as one
    when <math|<around|\||V<rsub|q>|\|>=0>, and the second set to zero unless
    <math|q> is kept. Let <math|d<rsub|F>,d<rsub|c>> denote the clipped
    densities of Ÿ1.

    <item><math|X<around|(|U|)>> and <math|X<rsup|c><around|(|V|)>> are the
    unthinned fine and coarse coordinates.

    <item><math|Z<rsub|b>=<sqrt|a><space|0.17em><math-up|curv><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>.
  </itemize-minus>

  The rows are:

  <\itemize-minus>
    <item><em|fine plaquette <math|p>:> <math|d<rsub|F><around|(|U,p|)>+<tfrac|1|2>\|<around|(|\<Phi\>*v|)><rsub|p>\|<rsup|2>-<around|\<langle\>|<around|(|\<Phi\>*v|)><rsub|p>,X<rsub|p>|\<rangle\>>>;

    <item><em|coarse bond <math|b>:> <math|<tfrac|a|2>w<rsub|b><rsup|2>+<tfrac|1|2>\|<around|(|\<Phi\><rprime|'>*v|)><rsub|b>\|<rsup|2>-<around|\<langle\>|<around|(|\<Phi\><rprime|'>*v|)><rsub|b>,Z<rsub|b>|\<rangle\>>>;

    <item><em|coarse plaquette <math|q>:>
    <math|<around|\<langle\>|v<rsub|q>,X<rsup|c><rsub|q>|\<rangle\>>-<tfrac|1|2>\|v<rsub|q>\|<rsup|2>-d<rsub|c><around|(|V,q|)>>;

    <item><em|gauge coordinate <math|n>:>
    <math|<tfrac|1|2><around|\||<around|(|N*v|)><rsub|n>|\|><rsup|2>>;

    <item><em|defects at <math|q>:>

    <\itemize-minus>
      <item>the linear-defect contribution
      <math|<around|\<langle\>|v<rsub|q>,<around|(|\<Phi\><rsup|\<ast\>>*X+\<Phi\><rprime|'><rsup|\<ast\>>*Z-X<rsup|c>|)><rsub|q>|\<rangle\>>>;

      <item>the completeness-defect contribution
      <math|<tfrac|1|2><around|\<langle\>|v<rsub|q>,<around|(|v-<around|(|\<Phi\><rsup|\<ast\>>*\<Phi\>+\<Phi\><rprime|'><rsup|\<ast\>>*\<Phi\><rprime|'>+N<rsup|\<ast\>>*N|)>*v|)><rsub|q>|\<rangle\>>>.
    </itemize-minus>
  </itemize-minus>

  Their sum over the torus is <math|\<cal-A\><rsub|F><around|(|U|)>+<frac|a|2>*<big|sum><rsub|b>w<rsub|b><rsup|2>-\<cal-A\><rsub|c><around|(|V|)>>.
  The functional <math|\<cal-E\><rsub|A>> keeps only the rows located in
  <math|D<rsub|2*B><around|(|A|)>>.

  <em|Proof:> adjointness for the three kernels; all cross terms cancel. The
  cancellation is algebraic and works for any coarse coordinate vector
  <math|v> if the rows are defined with that vector.

  <em|Lean:> <hlink|<verbatim|Tube.locates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L145-L163>;
  rows <hlink|<verbatim|workF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L122-L124>,
  <hlink|<verbatim|workI>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L126-L127>,
  <hlink|<verbatim|workC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L129-L131>,
  <hlink|<verbatim|workN>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L136>,
  <hlink|<verbatim|workL>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L133-L134>,
  <hlink|<verbatim|workD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L138-L140>.

  <subsection|4.2 Packing and geometry><label|42-packing-and-geometry>

  <strong|Lemma 4.2 (packing; E01).> For every <math|\<delta\>\<gtr\>0> there
  is <math|N>, depending on <math|P> and <math|\<delta\>> but not on <math|L>
  or <math|W>, such that for all <math|L>, all <math|W\<gtr\>0>, all large
  <math|x> and all admissible data with <math|A> consistent:

  <\itemize-minus>
    <item>(i) for every coarse site <math|y>,
    <math|<math-up|port><around|(|y,U|)>=<big|sum><rsub|q>m<around|(|y,q|)><around|\||U<rsub|q>|\|>>
    with nonnegative integer charges <math|m> satisfying
    <math|<big|sum><rsub|y>m<around|(|y,q|)>\<leqslant\>N>, and
    <math|m<around|(|y,q|)>\<gtr\>0\<Rightarrow\><math-up|dist><around|(|y,<wide|q|\<bar\>>|)>\<leqslant\>N>;

    <item>(ii) every coarse plaquette of <math|D<rsub|2*B><around|(|A|)>>
    with <math|<around|\||V<rsub|q>|\|>\<gtr\>\<delta\>> (a tide) lies within
    <math|4*B/5> of <math|A<rsup|<math-up|sp>>> (the hit set);

    <item>(iii) <math|\<sharp\>*A<rsub|\<flat\>>\<leqslant\>4*<space|0.17em>\<sharp\><around|{|q\<in\>D<rsub|2*B>:<around|\||V<rsub|q>|\|>\<gtr\>t<rsub|c>|}>>;

    <item>(iv) <math|\<sharp\><around|{|<text|tides>|}>\<leqslant\>N*\<sharp\>*A<rsup|<math-up|sp>>>;

    <item>(v) the coarse plaquettes of <math|D<rsub|2*B><around|(|A|)>>
    number at most <math|N*B<rsup|4>*\<sharp\>*A>, and the hit set at most
    <math|N*B<rsup|4>*\<sharp\>*A<rsup|<math-up|sp>>>.
  </itemize-minus>

  <em|Proof:> the macro box has radius <math|<around|(|j+7|)>*L>. Counting
  possible parent sites gives a bounded total multiplicity for each fine
  plaquette. If no spent seed is within distance <math|j+8> of a coarse
  plaquette, consistency bounds every relevant input by <math|T>; the
  predictor-curvature bound then gives <math|<around|\||V<rsub|q>|\|>\<leqslant\>C<around|(|L,W|)>*T\<leqslant\>\<delta\>>
  for large <math|x>. Thus every tide has a nearby spent seed, and
  <math|j+8\<leqslant\>4*B/5> eventually. A flag is incident to a coarse
  plaquette above <math|t<rsub|c>>; each plaquette has at most four incident
  sites. Four-dimensional ball counts give the remaining bounds.

  <em|Lean:> <hlink|<verbatim|Bid.E01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L40-L41>
  (<hlink|<verbatim|Payments>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L27-L32>,
  <hlink|<verbatim|MacroStore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L35-L38>),
  <hlink|<verbatim|Work.E01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L289-L324>.

  <strong|Lemma 4.3 (shell comparison; E02).> For every gauge group <math|G>,
  block factor <math|L>, index <math|j> and kernel choices <math|K>, there is
  <math|C\<gtr\>0> with the following property. Take a step using <math|K>,
  block factor <math|L> and index <math|j>, whose fine side is at least
  <math|100> times the macro radius, with <math|c\<gtr\>1>; any <math|U> in
  the tree gauge; any <math|V>; and any fine link <math|e> with usable tags.
  Then

  <\equation*>
    \<chi\>*<around|(|U<rsub|e>*<wide|V|~><rsub|e><rsup|-1>|)>\<leqslant\>C<space|0.17em><math-up|port><around|(|<wide|e|\<bar\>>,U|)>+w<rsub|<around|(|<wide|e|\<bar\>>,\<mu\>|)>>,
  </equation*>

  where <math|<wide|V|~>> is the replica of <math|V> on fine links and
  <math|<wide|e|\<bar\>>> the parent block. The last term is present only
  when the ends of <math|e> lie in different blocks.

  <em|Sketch:> close <math|e> by the two tree paths, lift the loop to
  <math|\<bbb-Z\><rsup|4>>, and bound the chord of the product by the sum of
  chords along a walk whose length is bounded by the macro budget. For a
  crossing link, the predictor estimate controls the discrepancy between the
  two block roots; the triangle inequality then adds the coarse mismatch
  <math|w<rsub|b>>.

  <em|Lean:> <hlink|<verbatim|Bid.E02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52>,
  <hlink|<verbatim|Work.E02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244>.

  <subsection|4.3 Kernel bounds><label|43-kernel-bounds>

  <strong|Lemma 4.4 (rows and columns; E03).> There is <math|A\<gtr\>0>,
  independent of <math|L> and <math|W>, such that:

  <\itemize-minus>
    <item><math|\<Phi\>> has row sums at most <math|A/L<rsup|2>> and column
    sums at most <math|A*L<rsup|2>>;

    <item><math|\<Phi\><rprime|'>> and <math|N> have row and column sums at
    most <math|A>;

    <item>all entries vanish beyond distance <math|B/50>.
  </itemize-minus>

  Take absolute values of the cover coefficients. Adjoint transport has norm
  one, periodization charges each cover term once per row or column, and the
  fine residue multiplicity is <math|L<rsup|4>>
  (<hlink|<verbatim|anchored_of_terms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L39-L90>).

  <em|Lean:> <hlink|<verbatim|Bid.E03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L67>
  (<hlink|<verbatim|Allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L61-L64>),
  <hlink|<verbatim|Work.E03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E03.lean#L228-L256>.

  <strong|Lemma 4.5 (path series and predictions; E04, given E03).> There is
  <math|A\<gtr\>0>, independent of <math|L> and <math|W>, such that, with
  <math|s=t> at the fine stage and <math|s=t<rsub|c>> at the coarse stage:

  <\itemize-minus>
    <item>the fine and coarse path series have absolute row and column sums
    at most <math|A> and range at most <math|B/50>;

    <item><math|<around|\||\<ell\><rsub|p><around|(|U|)>|\|>\<leqslant\><big|sum><rsub|q>c<rsub|p*q><around|\||U<rsub|q>|\|>>
    for the nonnegative absolute path coefficients <math|c<rsub|p*q>>, and
    <math|<around|\||\<ell\><rsub|p>|\|>\<leqslant\>A*s> on kept plaquettes;

    <item><math|<around|\||v|\|>\<leqslant\>A*t>,
    <math|<around|\||\<Phi\>*v|\|>\<leqslant\>A*t/L<rsup|2>> and
    <math|<around|\||\<Phi\><rprime|'>*v|\|>\<leqslant\>A*t>.
  </itemize-minus>

  <em|Proof:> sum the absolute path coefficients with their exponential
  length weights. Periodization gives the column count; the kept test bounds
  each contributing plaquette by the threshold times the same exponential
  weight. Thinning bounds the coarse coordinates, and the row estimates of
  Lemma 4.4 bound their predictions. The comparison
  <math|t<rsub|c><around|(|x|)>\<leqslant\>2*t> holds eventually at fixed
  <math|L>.

  <em|Lean:> <hlink|<verbatim|Bid.E04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L89-L91>
  (<hlink|<verbatim|LaneCounts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L74-L81>,
  <hlink|<verbatim|Maximum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L83-L86>),
  <hlink|<verbatim|Work.E04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E04.lean#L282-L307>.

  <subsection|4.4 Row-by-row lower bounds><label|44-row-by-row-lower-bounds>

  <strong|Lemma 4.6 (coarse rows; E05).> There are
  <math|\<delta\>,B<rsub|1>\<gtr\>0>, independent of <math|L> and <math|W>,
  such that for every coarse plaquette with
  <math|\<tau\>=<around|\||V<rsub|q>|\|>>:

  <\itemize-minus>
    <item><math|t<rsub|c>\<less\>\<tau\>\<leqslant\>\<delta\>> implies row
    <math|\<geqslant\><frac|\<alpha\><rsub|c>|4>*t<rsub|c>*\<tau\>>;

    <item><math|\<tau\>\<leqslant\>t<rsub|c>> implies row
    <math|\<geqslant\>-B<rsub|1>*t<rsub|c><rsup|4>>;

    <item><math|\<tau\>\<gtr\>\<delta\>> implies row
    <math|\<geqslant\>-\<lambda\><rsub|c>*t<rsub|c>*\<tau\>>.
  </itemize-minus>

  <em|Sketch:> in matrix space the curvature is the tangential projection of
  <math|V<rsub|q>-1>, so <math|\<chi\><rsup|2>-<around|\||<math-up|curv>|\|><rsup|2>>
  is the squared normal displacement divided by the fixed matrix-to-colour
  normalization, which is <math|O<around|(|\<chi\><rsup|4>|)>> in a tubular
  neighbourhood of <math|G>.

  <\itemize-minus>
    <item>The path component cancels whether kept or dropped. For
    <math|\<tau\>\<leqslant\>t<rsub|c>> the direct component is unthinned,
    and the row equals <math|-<frac|\<alpha\><rsub|c>|2>*<around|(|\<chi\><rsup|2>-<around|\||<math-up|curv>|\|><rsup|2>|)>>.

    <item>For <math|t<rsub|c>\<less\>\<tau\>\<leqslant\>\<delta\>> the row is
    <math|\<geqslant\>\<alpha\><rsub|c>*t<rsub|c>*\<tau\>*<around|(|1-O<around|(|\<delta\><rsup|2>|)>|)>-<frac|\<alpha\><rsub|c>|2>*t<rsub|c><rsup|2>-\<lambda\><rsub|c>*t<rsub|c>*\<tau\>\<geqslant\><frac|\<alpha\><rsub|c>|4>*t<rsub|c>*\<tau\>>,
    using <math|\<lambda\><rsub|c>\<less\>\<alpha\><rsub|c>/16>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.E05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L101>
  (<hlink|<verbatim|Crowds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L94-L97>),
  <hlink|<verbatim|Work.E05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E05.lean#L211-L228>.

  <strong|Lemma 4.7 (fine and interior rows; E06, given E03, E04).> There is
  <math|L<rsub|1>> such that for every <math|L\<geqslant\>L<rsub|1>> and
  every <math|W\<geqslant\>2*A/<sqrt|a>> (with <math|A> from E04), for large
  <math|x>, with <math|d=\<alpha\><rsub|F>/128>:

  <\equation*>
    <tfrac|\<lambda\><rsub|F>|2><space|0.17em>t*<space|-0.17em><space|-0.17em><big|sum><rsub|p\<in\>A<rsub|F>,<space|0.17em><around|\||U<rsub|p>|\|>\<gtr\>t><space|-0.17em><space|-0.17em><around|\||U<rsub|p>|\|>+d*<space|0.17em>t<rsup|2>*<space|0.17em>\<sharp\><around|{|p\<in\>A<rsub|F>:<around|\||U<rsub|p>|\|>\<leqslant\>t|}>\<leqslant\><big|sum><text|fine
    rows>,<space|2em><tfrac|a|8><big|sum><rsub|b\<in\>A<rsub|I>>w<rsub|b><rsup|2>\<leqslant\><big|sum><text|interior
    rows>.
  </equation*>

  <em|Proof:>

  <\itemize-minus>
    <item><em|Costs with <math|<around|\||U<rsub|p>|\|>\<leqslant\>t>.> The
    direct part of the fine row is at least
    <math|<frac|1|2>*<around|(|<sqrt|\<alpha\><rsub|F>>\|U<rsub|p>\|-<around|\||<around|(|\<Phi\>*v|)><rsub|p>|\|>|)><rsup|2>>.
    For a cost, <math|<around|\||U<rsub|p>|\|>\<geqslant\>t/4>, while
    <math|<around|\||<around|(|\<Phi\>*v|)><rsub|p>|\|>\<leqslant\>A*t/L<rsup|2>\<leqslant\><sqrt|\<alpha\><rsub|F>>*t/8>
    for <math|L\<geqslant\>L<rsub|1>>; this gives
    <math|\<alpha\><rsub|F>*t<rsup|2>/128>.

    <item><em|Costs with <math|<around|\||U<rsub|p>|\|>\<gtr\>t>.> The
    clipped action is <math|\<lambda\><rsub|F>*t<around|\||U<rsub|p>|\|>>,
    and the cross term is at most <math|A*L<rsup|-2>*<sqrt|\<alpha\><rsub|F>>*t<around|\||U<rsub|p>|\|>\<leqslant\><frac|\<lambda\><rsub|F>|4>*t<around|\||U<rsub|p>|\|>>.

    <item><em|Path-series part.> It is a complete square on kept plaquettes.
    On dropped plaquettes the cross term is paid by the column bounds of E04,
    at total cost <math|<frac|\<lambda\><rsub|F>|4>*t*<big|sum><around|\||U<rsub|p>|\|>>;
    this works only after summation, not row by row.

    <item><em|Aisles.> On an aisle <math|w<rsub|b>\<geqslant\>W*t> and
    <math|<around|\||<around|(|\<Phi\><rprime|'>*v|)><rsub|b>|\|>\<leqslant\>A*t\<leqslant\><frac|<sqrt|a>|2>*w<rsub|b>>,
    so the row is at least <math|<frac|1|2>*<around|(|<frac|<sqrt|a>|2>*w<rsub|b>|)><rsup|2>=<frac|a|8>*w<rsub|b><rsup|2>>.

    <item><em|Unlisted rows.> Interior rows are nonnegative by the same
    square lower bound. Unlisted fine direct parts and kept path parts are
    nonnegative; the dropped path parts are included in the summed loss
    above.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Bid.E06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L110>
  (<hlink|<verbatim|Seals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L103-L107>),
  <hlink|<verbatim|Work.E06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E06.lean#L413-L440>.

  <strong|Lemma 4.8 (affected cells; E07, given E01, E03, E04).> For every
  fixed <math|\<delta\>\<gtr\>0> there is a pre-<math|L> constant
  <math|C<rsub|7>\<gtr\>0>, and for every <math|L> and <math|W\<gtr\>0> a
  constant <math|Z>, such that for large <math|x>:

  <\equation*>
    <text|defects><around|(|<math-up|hit>|)>+<frac|C<rsub|7>|L<rsup|2>>*t*<space|-0.17em><space|-0.17em><big|sum><rsub|p\<in\>A<rsub|F>,<around|\||U<rsub|p>|\|>\<gtr\>t><space|-0.17em><space|-0.17em><around|\||U<rsub|p>*<around|\||+C<rsub|7>*t*<big|sum><rsub|b\<in\>A<rsub|I>>w<rsub|b>+Z*t<rsup|2>*B<rsup|4>*\<sharp\>*A<rsup|<math-up|sp>>\<geqslant\>\<lambda\><rsub|c>*t<rsub|c>*<big|sum><rsub|<math-up|tides>>|\|>*V<rsub|q>|\|>.
  </equation*>

  <em|Proof:>

  <\enumerate>
    <item>By qdc, on the hit set <math|<around|\||V<rsub|q>|\|>\<leqslant\>r<rsub|0>*t+H<rsub|q>>.
    The macro excess <math|H> is bounded, through the charges of E01, by a
    pre-<math|L> constant times <math|L<rsup|-2>*<big|sum><rsub|<math-up|swell>><around|\||U<rsub|p>|\|>+<big|sum><rsub|A<rsub|I>>w<rsub|b>>.

    <item>The defect rows on hit cells are bounded below by Cauchy\USchwarz,
    using <math|<around|\||v|\|>\<leqslant\>A*t> and the kernel bounds of
    E03\UE04. The inputs <math|X>, <math|Z>, <math|X<rsup|c>> split into a
    uniform part, <math|O<around|(|t|)>> per cell, and the excess.

    <item>The uniform part is paid by <math|Z*t<rsup|2>*\<sharp\><math-up|hit>\<leqslant\>Z*N*t<rsup|2>*B<rsup|4>*\<sharp\>*A<rsup|<math-up|sp>>>;
    the excess is paid by the two middle terms.
  </enumerate>

  No cancellation of linear terms is used.

  <em|Lean:> <hlink|<verbatim|Bid.E07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L130>
  (<hlink|<verbatim|Lapse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L121-L128>),
  <hlink|<verbatim|Work.E07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E07.lean#L115-L158>.

  <strong|Lemma 4.9 (unaffected cells; E08, given E01, E02).> For every
  <math|L> and <math|W\<gtr\>0> there is <math|C> such that for large
  <math|x> the following holds. For every coarse plaquette <math|q> of
  <math|D<rsub|2*B><around|(|A|)>> outside the hit set there is a gauge
  transformation <math|z> with:

  <\itemize-minus>
    <item><math|\<chi\><around|(|V<rsup|z><rsub|b>|)>\<leqslant\>h\<assign\>C*B<rsup|10>*T>
    for all coarse bonds within <math|2*B/5> of <math|q>;

    <item><math|\<chi\><around|(|U<rsup|z\<circ\><space|0.17em><text|p*a*r*e*n*t>><rsub|e>|)>\<leqslant\>h>
    for all fine bonds whose parent is within <math|2*B/5>.
  </itemize-minus>

  <em|Sketch:> there is no spent seed within <math|4*B/5> of <math|q>, so all
  tolls and wires near <math|q> are at most <math|T>. An axial gauge on a box
  of the coarse cover, with E02 transferring the bound to fine links, loses a
  polynomial in <math|B>.

  <em|Lean:> <hlink|<verbatim|Bid.E08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L140>
  (<hlink|<verbatim|Stitches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L134-L138>),
  <hlink|<verbatim|Work.E08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E08.lean#L342-L344>.

  <subsection|4.5 Linearization defects on unaffected
  cells><label|45-linearization-defects-on-unaffected-cells>

  <strong|Lemma 4.10 (flat identities).> Consider the linearized uncut
  kernels <math|\<Phi\><rsub|0>,\<Phi\><rsub|0><rprime|'>,N<rsub|0>> (scalar
  matrices built from the towers), and the linearized inputs for log-fields
  <math|u> (fine) and <math|v> (coarse): <math|X<rsub|0><around|(|u|)>> (face
  curls and path series of <math|u>) and <math|Z<rsub|0><around|(|u,v|)>=<sqrt|a<rsub|<math-up|pen>>>*<space|0.17em><around|(|v-<math-up|probe><space|0.17em>u|)>>,
  where <math|a<rsub|<math-up|pen>>> is the penalty. Under the admissibility
  identities and agreement of the beds with the fine and coarse path data,
  for every <math|u,v> and every coarse two-layer vector <math|w>,

  <\equation*>
    \<Phi\><rsub|0><rsup|\<ast\>>*X<rsub|0><around|(|u|)>+\<Phi\><rsub|0><rprime|'><rsup|\<ast\>>*Z<rsub|0><around|(|u,v|)>-X<rsub|0><rsup|c><around|(|v|)>=0,<space|2em>w-<around|(|\<Phi\><rsub|0><rsup|\<ast\>>*\<Phi\><rsub|0>+\<Phi\><rsub|0><rprime|'><rsup|\<ast\>>*\<Phi\><rsub|0><rprime|'>+N<rsub|0><rsup|\<ast\>>*N<rsub|0>|)>*w=0.
  </equation*>

  <em|Proof:> the flat tower identities, applied componentwise to the scalar
  matrices and the attached path data.

  <em|Lean:> <hlink|<verbatim|roll_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L89-L136>,
  <hlink|<verbatim|roll_d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Linear.lean#L69-L87>.

  <strong|Lemma 4.11 (chart estimates on the torus).> For a patch <math|D>
  satisfying the branch condition there are <math|C,\<tau\>,r\<gtr\>0> with
  the following property. For every admissible step on <math|D>, all tags,
  all <math|R>, and all log-fields <math|a>, <math|b> with
  <math|<around|\<\|\|\>|a|\<\|\|\>>,<around|\<\|\|\>|b|\<\|\|\>>\<leqslant\>h\<leqslant\>r>,
  set <math|U=exp a> and <math|V=exp b>. Define the defect vectors
  <math|\<frak-l\>=\<Phi\><rsup|\<ast\>>*X+<around|(|\<Phi\><rprime|'>|)><rsup|\<ast\>>*Z-X<rsup|c>>
  and <math|\<frak-d\><around|(|w|)>=w-<around|(|\<Phi\><rsup|\<ast\>>*\<Phi\>+<around|(|\<Phi\><rprime|'>|)><rsup|\<ast\>>*\<Phi\><rprime|'>+N<rsup|\<ast\>>*N|)>*w>.
  At every coarse plaquette, componentwise in its two coordinates,

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|\<frak-l\>|\<\|\|\>>\<leqslant\>C*h*<space|0.17em>\<omega\>>;

    <item><math|<around|\<\|\|\>|\<frak-d\><around|(|w|)>|\<\|\|\>>\<leqslant\>C*q*<space|0.17em>\<omega\>>
    whenever <math|q\<geqslant\>0> and <math|<around|\<\|\|\>|w|\<\|\|\>>\<leqslant\>q>.
  </itemize-minus>

  Here <math|\<omega\>=\<omega\><around|(|R,h,\<tau\>|)>=<around|(|1+R|)>*h+e<rsup|-\<tau\>*R>>
  (<hlink|<verbatim|widen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L70>).

  <em|Proof:> compare every actual object with its linearization, then
  subtract Lemma 4.10.

  <\itemize-minus>
    <item><em|Kernels:> they are close to their flat versions
    (<hlink|<verbatim|kernel_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Kernel.lean#L264-L298>).

    <item><em|Path-series coordinates> (<hlink|<verbatim|x_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Slots.lean#L83-L158>):

    <\itemize-minus>
      <item>transporting a curvature of size <math|O<around|(|h|)>> along a
      path of length at most <math|R> costs
      <math|O<around|(|R*h\<cdot\>h|)>>;

      <item>the paths longer than <math|R> are paid by the weight
      <math|e<rsup|\<sigma\><space|0.17em><text|l*e*n*g*t*h>>> in the path
      budget, which gives <math|e<rsup|-<around|(|\<sigma\>/d|)>*R>>.
    </itemize-minus>

    <item><em|Predictor coordinates:> quadratic error
    (<hlink|<verbatim|z_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Prediction.lean#L243-L267>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|global_chart_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Global.lean#L76-L148>.

  <strong|Lemma 4.12 (interior cost).> For the same <math|D> there are
  <math|C,\<tau\>,r\<gtr\>0> with the following property. Suppose that in
  some gauge <math|z> both <math|U> and <math|V> are within
  <math|h\<leqslant\>r> of the identity on all bonds within distance
  <math|3*R+4+<math-up|reach>> of a coarse plaquette <math|q>, where
  <math|<math-up|reach>> is the predictor reach and <math|h\<geqslant\>0>.
  The step must be on <math|D> and admissible for <math|P>; the tags and cut
  length <math|R\<in\>\<bbb-N\>> are arbitrary. Then the bounds of Lemma 4.11
  hold at <math|q> for every coarse coordinate vector bounded by a
  nonnegative constant.

  <em|Proof:>

  <\enumerate>
    <item><em|Gauge covariance:> the defect vectors transform by
    <math|<math-up|Ad><around|(|z<rsub|q>|)>>
    (<hlink|<verbatim|gauge_gaps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Covariance.lean#L151-L185>).

    <item><em|Locality:> the defect vectors depend only on nearby bonds
    (<hlink|<verbatim|local_gaps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Locality.lean#L151-L174>).

    <item><em|Extension:> a configuration that is <math|h>-close to <math|1>
    on a ball agrees there with <math|exp> of a global log-field of norm
    <math|O<around|(|h|)>> (<hlink|<verbatim|extend_interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Charts.lean#L89-L106>).

    <item>Apply Lemma 4.11.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|interior_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Interior.lean#L22-L63>.

  <strong|Lemma 4.13 (unaffected defects; EBare).> Assume E03, E04 and the
  conclusion of E08 at <math|<around|(|P,L,W|)>>. Then for every
  <math|\<varepsilon\>\<gtr\>0> and all large <math|x>, the sum of the defect
  rows over the unhit coarse plaquettes of <math|D<rsub|2*B><around|(|A|)>>
  is at least <math|-\<varepsilon\>*t<rsup|2>*\<sharp\>*A>.

  <em|Proof:>

  <\enumerate>
    <item>Take <math|h=C*B<rsup|10>*T> from E08 and
    <math|\<omega\>=\<omega\><around|(|R,h,\<tau\>|)>>. Lemma 4.12 applies,
    since <math|3*R+4+<math-up|reach>\<leqslant\>2*B/5>.

    <item>Cauchy\USchwarz with <math|<around|\||v|\|>\<leqslant\>A*t> gives,
    on every unhit cell, defects at least <math|-\<ell\>>, where
    <math|\<ell\>=2*<around|(|A*t|)>*<around|(|C*h*\<omega\>|)>+<around|(|A*t|)>*<around|(|C*A*t*<space|0.17em>\<omega\>|)>>.

    <item>There are at most <math|N*B<rsup|4>*\<sharp\>*A> such cells (E01
    with <math|\<delta\>=1>).

    <item><math|N*B<rsup|4>*\<ell\>\<leqslant\>\<varepsilon\>*t<rsup|2>> for
    large <math|x>, because <math|B<rsup|n>*\<omega\>\<to\>0> and
    <math|B<rsup|n>*h*\<omega\>/t\<to\>0> for every <math|n>
    (<hlink|<verbatim|radius_stitch_errors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Scales.lean#L116-L152>).
    Indeed <math|h=\<beta\><rsub|F><rsup|-0.49+o<around|(|1|)>>>,
    <math|h<rsup|2>/t=\<beta\><rsub|F><rsup|-0.48+o<around|(|1|)>>>, and
    <math|e<rsup|-\<tau\>*R>\<leqslant\>\<beta\><rsub|F><rsup|-1>> because
    <math|R\<asymp\><around|(|log x|)><rsup|2>>.

    <item>If no patch with the request's data satisfies the branch condition,
    the statement is vacuous.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Bid.EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>
  (<hlink|<verbatim|Belly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L142-L144>),
  <hlink|<verbatim|Fluctuations.bare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Bare.lean#L64-L120>.

  <subsection|4.6 Assembly of III.10.1><label|46-assembly-of-iii101>

  <strong|Lemma 4.14 (assembly; E09).> For a fixed request, the packing
  estimate of Lemma 4.2, fine/interior bounds of Lemma 4.7, coarse bounds of
  Lemma 4.6 at some <math|\<delta\>\<gtr\>0>, affected-cell bound of Lemma
  4.8 at that <math|\<delta\>>, and unaffected-cell bound of Lemma 4.13 for
  every <math|L,W\<gtr\>0>, imply III.10.1.

  <em|Choice of constants:>

  <\itemize-minus>
    <item><math|L\<geqslant\>max <around|(|L<rsub|1>,L<rsub|7>|)>>, where
    <math|C<rsub|7>/L<rsub|7><rsup|2>\<leqslant\>\<lambda\><rsub|F>/4>;

    <item><math|W\<geqslant\>max <around|(|1,2*A/<sqrt|a>,16*C<rsub|7>/a|)>>;

    <item><math|m=min <around|(|\<lambda\><rsub|F>/8,\<alpha\><rsub|F>/128,a/32,\<alpha\><rsub|c>/64|)>>
    and <math|\<kappa\>=m/2>; since <math|\<lambda\><rsub|F>\<less\>\<alpha\><rsub|F>/16>,
    this is the value in III.10.1;

    <item><math|x> so large that: <math|t<rsub|c>\<leqslant\>\<delta\>>;
    <math|t\<leqslant\>T>; <math|t\<leqslant\>2*t<rsub|c>>;
    <math|<around|(|4*m*N+Z*B<rsup|4>|)>*t<rsup|2>\<leqslant\>m*<space|0.17em>t*T>;
    <math|B<rsub|1>*t<rsub|c><rsup|4>*N*B<rsup|4>\<leqslant\><frac|m|4>*t<rsup|2>>;
    and the unaffected-cell bound holds with <math|\<varepsilon\>=m/4>.
  </itemize-minus>

  <em|Proof:> add the rows.

  <\enumerate>
    <item><em|Swell costs:> <math|<frac|\<lambda\><rsub|F>|2>*t<around|\||U<rsub|p>|\|>>.
    Half of it pays the <math|C<rsub|7>*L<rsup|-2>> term of Lemma 4.8; the
    remainder is at least <math|2*m*t<rsup|2>>, and at least
    <math|m*<space|0.17em>t*T> when the cost is spent.

    <item><em|Other costs:> at least <math|\<alpha\><rsub|F>*t<rsup|2>/128\<geqslant\>m*t<rsup|2>>.

    <item><em|Aisles:> <math|<frac|a|8>*w<rsup|2>-C<rsub|7>*t*w\<geqslant\><frac|a|16>*w<rsup|2>\<geqslant\>m*t<rsup|2>>;
    spent aisles carry <math|m*<space|0.17em>t*T>.

    <item><em|Tides:> paid by Lemma 4.8.

    <item><em|Coarse plaquettes in the intermediate range:>
    <math|<frac|\<alpha\><rsub|c>|4>*t<rsub|c><around|\||V<rsub|q>|\|>\<geqslant\><frac|\<alpha\><rsub|c>|16>*t<rsup|2>>,
    which pays <math|4*m*t<rsup|2>> per intermediate plaquette, since
    <math|\<sharp\>*A<rsub|\<flat\>>\<leqslant\>4*<around|(|\<sharp\><text|intermediate>+N*\<sharp\>*A<rsup|<math-up|sp>>|)>>.

    <item><em|Small coarse plaquettes:> in total at least
    <math|-<frac|m|4>*t<rsup|2>*\<sharp\>*A>.

    <item><em|Gauge rows:> <math|\<geqslant\>0>.

    <item><em|Defects:> on hit cells they are inside Lemma 4.8; on unhit
    cells they total at least <math|-<frac|m|4>*t<rsup|2>*\<sharp\>*A>.

    <item><em|Spent seeds:> their <math|m*<space|0.17em>t*T> covers the flag
    charge against <math|A<rsup|<math-up|sp>>> and the <math|Z> term.
  </enumerate>

  The total is at least <math|<frac|m|2>*t<rsup|2>*\<sharp\>*A>.

  <em|Lean:> <hlink|<verbatim|Bid.E09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L151-L152>,
  <hlink|<verbatim|Work.E09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L113-L159>
  (with <hlink|<verbatim|assemble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L69-L111>
  and <hlink|<verbatim|bank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E09.lean#L23-L62>),
  <hlink|<verbatim|Bid.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L155-L158>.

  <subsection|4.7 Activities of one step><label|47-activities-of-one-step>

  The next estimates use the hypotheses of III.10.2. In statements about
  packets, logarithmic letters or warnings, the tube satisfies the
  compatibility condition, the input satisfies the stated fine-level bounds,
  and sectors have the actual coarse flags. Auxiliary window constants are
  fixed before the threshold in <math|x>.

  <strong|Lemma 4.15 (rate calculus).> A function <math|w> has rate <math|a>
  if for every <math|v\<gtr\>a>, <math|<around|\||w<around|(|x|)>|\|>\<leqslant\>\<beta\><rsub|F><rsup|<space|0.17em>v>>
  eventually. Products of functions with rates <math|a,b> have rate
  <math|a+b>; their sums have rate <math|max <around|(|a,b|)>>. Eventual
  absolute domination preserves a rate, and constants have rate <math|0>.
  Thus <math|t> has rate <math|-<frac|1|2>>, and <math|B> and
  <math|<math-up|bill>> have rate <math|0>.

  <em|Lean:> <hlink|<verbatim|Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23>.

  <strong|Lemma 4.16 (from the action gap to packet weights).>

  <\itemize-minus>
    <item>(a) There is <math|L<rsub|0>> such that for all
    <math|L\<geqslant\>L<rsub|0>> and all large <math|W> there is
    <math|\<mu\>\<gtr\>0> with two properties. First, the bound of III.10.1
    holds with constant <math|\<mu\>> at all large <math|x>
    (<hlink|<verbatim|Grant.order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71>;
    here <math|\<mu\>> is the <math|\<kappa\>> of III.10.1). Second, fix any
    halo and nonnegative support exponent, <math|d\<in\>\<bbb-N\>>,
    <math|D\<geqslant\>0>, <math|z\<less\>2> and <math|u\<gtr\>0>. For all
    large <math|x> and every <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>>,
    the gain <math|\<beta\>*\<mu\>*t<rsup|2>> passes the packet summability
    test for any spend at most <math|D<space|0.17em><math-up|bill><rsup|d>M<rsup|z>>
    and any nonnegative prefactor at most its exponential. The total packet
    charge is exponentially small in the retained gain. The threshold may
    depend on these additional parameters.

    <item>(b) Suppose the local sector and tag tests hold through radius
    <math|300*B>, and the physical fluctuation on hot bonds is bounded by a
    nonnegative function of rate <math|-1/2> through radius <math|304*B>. On
    the annulus <math|2*B\<less\><math-up|dist>\<leqslant\>200*B>, every
    remainder row is at least <math|-E<around|(|x|)>> for some nonnegative
    <math|E> of rate <math|-3/2> (<hlink|<verbatim|Coat.annulus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Annulus.lean#L164-L185>).
    After multiplying <math|E> by the annulus volume and fixed coordinate
    multiplicity, it still has rate <math|-3/2>. Consequently the assigned
    energy is at least <math|<around|(|\<mu\>*t<rsup|2>-E|)>*\<sharp\>*A>
    (<hlink|<verbatim|Coat.earns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/AssignedPrice.lean#L54-L86>).
    Since <math|\<beta\>*E> has rate at most <math|-1/2>, the loss is
    absorbed in <math|<math-up|bill><rsup|5>>.

    <item>(c) In every manifest sector, <math|<around|\||<math-up|Pack>|\|>\<leqslant\>exp
    <around*|(|<around|(|C<space|0.17em><math-up|bill><rsup|5>-\<beta\>*\<mu\>*t<rsup|2>|)>*\<sharp\>*A|)>>
    (<hlink|<verbatim|steam_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Revenue.lean#L99-L140>).
  </itemize-minus>

  <em|((a) and (c) proof read; (b) statement only)>

  <strong|Lemma 4.17 (old and logarithmic letters).> Fix
  <math|-1/2\<less\>s\<less\>0> and any <math|u\<in\>\<bbb-R\>>. Assume the
  sector drift and residual estimates, with a residual envelope of rate
  <math|-1>, as well as the common hypotheses of this subsection. For
  sufficiently large <math|L> and then all large <math|x>, the old forced
  letters have a rooted bound with total <math|\<beta\><rsub|F><rsup|u>>, and
  all logarithmic letters have one with total
  <math|\<beta\><rsub|F><rsup|s>>. The latter include inherited regular
  activities, local Jacobians and Gaussian determinant corrections. The
  weights bound both <math|<around|\||\<ell\><rsub|i>|\|>> and
  <math|<around|\||e<rsup|\<ell\><rsub|i>>-1|\|>>. Taking <math|u=s> gives
  the two totals used in III.10.2.

  <em|Proof:> transport the incoming forced bounds to coarse supports, and
  split the logarithmic alphabet into inherited activities, Jacobians and
  Gaussian corrections. Their envelopes have rate <math|-1/2> or smaller.
  Choose an intermediate rate strictly between <math|-1/2> and <math|s> to
  absorb their finite sum, and use <math|<around|\||e<rsup|z>-1|\|>\<leqslant\>2<around|\||z|\|>>
  once the individual logarithmic weights are at most one.

  <em|Lean:> <hlink|<verbatim|recommends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Quotation.lean#L47-L92>.

  <strong|Lemma 4.18 (window, drift, no new seeds).> For each patch there are
  window constants such that, for large <math|x>:

  <\itemize-minus>
    <item>every manifest sector satisfies the Hessian conditions of
    III.10.2(a)(iii) (<hlink|<verbatim|shoots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Shutter.lean#L119-L144>);

    <item>the Gaussian centring drift is <math|O<around|(|t|)>> and the
    residual of its linear stationarity equation has an envelope of any
    prescribed rate, in particular <math|-1>
    (<hlink|<verbatim|YM.ConnectedActivityE6.Coat.tends_val>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/StampQ.lean#L50-L59>);

    <item>there is <math|\<xi\>\<gtr\>0> with
    <math|\<sharp\><around|{|<text|colours>|}>\<cdot\>\<xi\>\<leqslant\>1>
    such that fluctuations satisfying the radius-<math|B> window test create
    no seeds at sites farther than <math|30*B> from the given ones
    (<hlink|<verbatim|Coat.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Peak.lean#L92-L188>).
  </itemize-minus>

  <em|Proof:> exponential row bounds and coercivity give the precision
  estimate; the local-inverse error tends to zero and yields a positive
  covariance. Applying the approximate inverse to the linear term gives the
  centring drift and a small linear residual. For the no-new-seed assertion,
  choose <math|\<xi\>> so the Gaussian fluctuation contributes at most one
  third of the available margin. Linear cancellation from the compatibility
  identities and the small nonlinear remainder pay the other two thirds. The
  fine and mismatch prediction bounds then give the strict thresholds
  <math|t/4> and <math|W*t>.

  <strong|Lemma 4.19 (catastrophes).> For every set <math|v> of warning
  addresses, the Gaussian measure of the catastrophe set is at most
  <math|E<rsup|\<sharp\>*v>>, with <math|E> eventually smaller than every
  power of <math|\<beta\><rsub|F>>. The threshold
  <math|\<xi\>*t<sqrt|\<beta\>>> equals <math|\<xi\>*e<rsup|<around|(|log log
  \<beta\><rsub|F>|)><rsup|2>>*<around|(|\<beta\>/\<beta\><rsub|F>|)><rsup|1/2>>
  in Gaussian units.

  <em|Proof:> the covariance has a volume-independent Schur bound. Apply the
  Gaussian rectangle estimate to simultaneous coordinate excursions and sum
  the possible witnesses in each radius-<math|2*B> neighbourhood. The
  resulting envelope can be taken as <math|C*B<rsup|4>*e<rsup|-c*M<rsup|1/2>>>,
  where <math|M=e<rsup|<around|(|log log \<beta\><rsub|F>|)><rsup|2>>> and
  <math|c\<gtr\>0>. It is smaller than every inverse power of
  <math|\<beta\><rsub|F>>. Repeated warning locations are paid through the
  fixed multiplicity bound.

  <em|Lean:> <hlink|<verbatim|Coat.alarm_bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/ResponsePrice.lean#L65-L112>.

  <strong|Lemma 4.20 (assembly of III.10.2).> The preceding estimates imply
  III.10.2 with the following parameter choices.

  <\enumerate>
    <item>The floor on <math|L> is the sum of the floors from Lemma 4.16(a),
    the no-new-seed margin, and Lemma 4.17.

    <item><math|W> is taken large for the energy estimate and the no-new-seed
    margin; <math|\<mu\>> comes from Lemma 4.16(a) and does not depend on the
    patch.

    <item>For each patch:

    <\itemize-minus>
      <item><math|K,\<gamma\>> come from the shell comparison;

      <item>the window constants from the precision estimate;

      <item>the drift constant <math|C<rsub|d>> from the centring estimate,
      and <math|a<rsub|o>=max <around|(|C<rsub|d>+1,\<gamma\>*K|)>>;

      <item><math|\<xi\>> from the no-new-seed estimate;

      <item><math|C> from the packet estimate;

      <item><math|s> is chosen with <math|-<frac|1|2>\<less\>s\<less\>r>.
    </itemize-minus>

    <item>All conditions holding for large <math|x> are merged into one
    threshold. The three letter totals have rate <math|s\<less\>r>, so their
    sum is eventually at most <math|\<beta\><rsub|F><rsup|<space|0.17em>r>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Target.issue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Issue.lean#L94-L185>.

  <subsection|4.8 Derivatives><label|48-derivatives>

  <strong|Lemma 4.21 (letter jets).> Under the hypotheses of III.10.3, the
  letter-jet structure exists before integration. Choose
  <math|-1/2\<less\>s\<less\>r> and set <math|<math-up|rad>=\<beta\><rsub|F><rsup|s>>.
  The warning amplitude before probability extraction is a patch constant.
  The jet scale is a sum <math|\<rho\><around|(|x|)>=B<rsub|0><around|(|x|)>+A<rsub|0><around|(|x|)>>
  of two rate-zero envelopes, chosen independently of the input
  representation and volume.

  <em|Proof:> combine the packet-jet estimate, the old and logarithmic letter
  estimates, and the differentiated warning cutoffs, all along compatible
  transported fluctuation coordinates. Choose the catastrophe envelope of
  rate <math|2*s-1>; its eventual bound by <math|\<beta\><rsub|F><rsup|2*s>>
  gives the probability factor <math|<math-up|rad><rsup|2>>. The three rooted
  letter totals have rate <math|s\<less\>r>.

  <em|Lean:> <hlink|<verbatim|Utopia.whittle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Das.lean#L49-L102>.

  <strong|Lemma 4.22 (molecule integrals).> The letter bounds of Lemma 4.21
  imply the integrated majorants of III.10.3, for the compatible connected
  molecules specified there.

  <em|Proof:> the Leibniz rule for <hlink|<verbatim|Brush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Brush.lean#L44-L47>
  adds the letter jet scales. Their sum is bounded by twice the molecule's
  shape, giving, for rate-zero transport envelopes <math|U,J<rprime|'>> and
  fixed integers <math|k,K\<geqslant\>0>, a pointwise factor

  <\equation*>
    <around|(|1+<around|\||U<around|(|x|)>|\|>+2*<around|(|\<rho\><around|(|x|)>+J<rprime|'><around|(|x|)>|)>|)><rsup|i>*<around|(|1+<math-up|shape>|)><rsup|i><space|0.17em><math-up|facescale><rsup|k*i>.
  </equation*>

  The bound vanishes outside the catastrophe set for the molecule's distinct
  warning addresses. If that set is <math|\<cal-C\>> and its address set is
  <math|v>, Cauchy\USchwarz gives

  <\equation*>
    <big|int>\<b-1\><rsub|\<cal-C\>><space|0.17em><math-up|facescale><rsup|k*i><space|0.17em>d*\<gamma\>\<leqslant\><around*|(|<big|int><math-up|facescale><rsup|2*k*i><space|0.17em>d*\<gamma\>|)><rsup|1/2>*\<gamma\><around|(|\<cal-C\>|)><rsup|1/2>\<leqslant\>e<around|(|x|)>*<around|(|1+<math-up|shape>|)><rsup|K><math-up|rad><rsup|\<sharp\>*v>,
  </equation*>

  where <math|e> has rate zero. Integration over the probability measure on
  the tree slice adds no factor. Multiplying by the pointwise coefficient
  gives a rate-zero prefactor <math|p> and shape power <math|l=K+i>. For a
  marked source, remove its ordinary fare and insert its amplitude bound.

  <em|Lean:> <hlink|<verbatim|timing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Charm.lean#L58-L179>.

  <subsection|4.9 Start-up fusion and markers><label|49-start-up-fusion-and-markers>

  <strong|Lemma 4.23 (H01\UH04).> Under the respective hypotheses in
  III.10.6(H), the four fusion conclusions hold.

  <\itemize-minus>
    <item><em|H01> is the Mayer identity <math|e<rsup|<big|sum>\<ell\><rsub|i>>=<big|prod><rsub|i><around|(|1+<around|(|e<rsup|\<ell\><rsub|i>>-1|)>|)>>,
    regrouped with the forced activities into pellets. Absolute domination of
    the original and logarithmic series justifies the product expansion and
    regrouping; the argument also proves summability of the fused series.

    <item><em|H02:> retain one factor <math|e<rsup|-\<kappa\>>> from a forced
    letter in every pellet and use the rooted tree sum
    <math|e<rsup|\<gamma\>>-1>.

    <item><em|H03:> transport every pellet support, inventory and eligibility
    test under each lattice symmetry. The local flag tests and the
    permutations of the original addresses induce those of the fused family.

    <item><em|H04:> each pellet is a fixed finite product; a common summable
    envelope then gives continuity of the weighted series by dominated
    convergence.
  </itemize-minus>

  <em|(proof read for H01, H02 and H04; H03 forced-family proof read,
  symmetry moves statement only)>

  <em|Lean:> <hlink|<verbatim|H01.gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L245-L251>,
  <hlink|<verbatim|H02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80>,
  <hlink|<verbatim|H03.fused_forcedFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L138-L209>,
  <hlink|<verbatim|H04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161>.

  <strong|Lemma 4.24 (I01\UI04).> Under the respective hypotheses in
  III.10.6(I), the four marker conclusions hold.

  <\itemize-minus>
    <item><em|I01:> traverse the centres of a minimizing connected
    <math|B>-ball cover. Distinct markers force gaps of at least
    <math|B<rsup|2>-2*B> between the traversal times of their covering
    centres. Comparing total traversal length with the number of balls gives
    the factor <math|64>.

    <item><em|I02:> I01 converts extra support decay to an increase of
    multiple-marker radii. Splitting single-marker and multiple-marker sums
    gives total two. Shrinking the radius by the order factorial converts
    factorially weighted derivative bounds to ordinary derivative bounds.

    <item><em|I03:> centred embeddings compose and preserve the parent
    relation. The open-stop inequality persists to later levels because
    <math|B<rsub|r+1><rsup|2>\<leqslant\>2*B<rsub|r><rsup|2>> and each block
    factor is at least three.

    <item><em|I04> follows from <hlink|<verbatim|columns_receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L24-L62>:
    for every level schedule, <math|<big|sum><rsub|m\<less\>i>log
    <math-up|columns><rsub|m+1>=o<around|(|<math-up|scale><rsub|i>|)>>.
    Combine this with <math|log <math-up|order><rsub|i>!\<leqslant\>log
    <math-up|columns><rsub|i>> and <math|log
    <wide|\<beta\>|^><rsub|i>=o<around|(|<math-up|scale><rsub|i>|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|I01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I01.lean#L19-L82>,
  <hlink|<verbatim|I02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I02.lean#L159-L180>,
  <hlink|<verbatim|I03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I03.lean#L43-L63>,
  <hlink|<verbatim|I04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/I04.lean#L76-L129>.

  <subsection|4.10 The schedule><label|410-the-schedule>

  <strong|Lemma 4.25 (pricing order).> Under the hypotheses of III.10.5(a),
  the following choices produce its floors and raised entry couplings.

  <\enumerate>
    <item>For each pair of adjacent stages, III.10.1 gives a floor
    <math|b<rsub|i*j>>; set <math|k<rsub|i>=max
    <around|(|b<rsub|i*i>,b<rsub|i,i-1>,<text|sheet floor><rsub|i>|)>>.

    <item>For <math|L<rsub|i>\<geqslant\>k<rsub|i>>, choose
    <math|W\<geqslant\>m> in the admissible range and a threshold
    <math|x<rsub|i*j>>.

    <item>Raise <math|\<beta\><rsup|\<ast\>><rsub|i>> to <math|max
    <around|(|\<beta\><rsup|\<ast\>><rsub|i>,x<rsub|i*i>,x<rsub|i,i-1>|)>>.

    <item>The conclusion persists under further raising
    (<hlink|<verbatim|recheck>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L204-L208>).
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Bid.pricing_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L173-L202>.

  <strong|Lemma 4.26 (divisible schedule).> Under the hypotheses of
  III.10.5(b), the following construction gives a schedule satisfying all
  entry, plateau and divisibility requirements.

  <\enumerate>
    <item>Entry couplings come from the bar (using <math|G> simple), leads
    from the wait data, and a monotone stage-index function <math|J> with
    steps at most <math|1> and <math|J\<to\>\<infty\>> by the finite-request
    scheduling lemma of III.2.

    <item>The scales are <math|s<rsub|i>>; the initial length <math|M> is the
    minimal length plus the largest bill over the first stages; the periods
    are <math|4*<around|(|M+p+1|)>>.
  </enumerate>

  The checks:

  <\itemize-minus>
    <item><math|<wide|\<beta\>|^><rsub|m>\<geqslant\>> the bar value, and
    <math|<wide|\<beta\>|^><rsub|m>\<geqslant\>\<beta\><rsup|\<ast\>><rsub|J*<around|(|m+1|)>>>;

    <item>the scale entries;

    <item>the volume inequalities: <math|<math-up|shells>\<cdot\><around|(|1+B<rsub|i>+B<rsub|i+1>|)><rsup|<math-up|growth>>\<leqslant\>>
    side, <math|100*<around|(|B<rsub|i>+1|)>\<leqslant\>> side, and
    <math|100*<around|(|<text|patch radius>+1|)>\<leqslant\>> next side;

    <item>the mesh condition <math|log L<rsub|J*<around|(|i+1|)>>/s<rsub|i>\<to\>0>;

    <item>divisibility: <math|p=c*<around|(|M+z+1|)>-<around|(|M+1|)>> gives
    the period <math|4*c*<around|(|M+z+1|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The energy estimate must preserve <math|L>-independent coefficients on the
  large fine inputs and <math|W>-independent coefficients on the mismatches.
  The fine prediction is <math|O<around|(|t/L<rsup|2>|)>>, so increasing
  <math|L> absorbs its cross terms. The interior prediction is
  <math|O<around|(|t|)>>, so increasing <math|W> absorbs the mismatch cross
  terms. Losses depending on both <math|L,W> are charged to spent seeds and
  absorbed only by increasing <math|x>.

  On unaffected cells, the transported, truncated kernels have no exact
  completeness identity. The flat identity cancels the linear part, while
  local gauge fixing, chart estimates and exponential tails control the
  remaining defects. This is the unaffected-defect estimate
  <hlink|<verbatim|Bid.EBare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L148>.
  The constant <math|\<kappa\>> is independent of <math|L,W>; the coupling
  threshold is not.

  The activity and derivative estimates additionally require compatible
  quadratic forms, controlled fluctuation transport and probability bounds
  for simultaneous warnings. Their product estimates retain one gain for each
  distinct warning address before the connected-molecule sum. The schedule is
  numerical; start-up fusion and marker estimates serve separate parts of the
  construction.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|<math|x=<wide|\<beta\>|^><rsub|m>>,
  <math|\<beta\><rsub|F>=x+b<rsub|G>*log L>>|<cell|<hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>>|<cell|coarse
  and fine reference couplings>>|<row|<cell|<math|t<rsub|c><around|(|x|)>>,
  <math|t=t<rsub|c><around|(|\<beta\><rsub|F>|)>>>|<cell|<hlink|<verbatim|temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>,
  <hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>>|<cell|small-field
  thresholds; <verbatim|fiery> is at the <strong|fine>
  coupling>>|<row|<cell|<math|T=\<beta\><rsub|F><rsup|-49/100>>>|<cell|<hlink|<verbatim|largeT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L27>>|<cell|spent-seed
  threshold>>|<row|<cell|<math|B>, <math|R>>|<cell|<hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>,
  <hlink|<verbatim|till>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L77>>|<cell|cluster
  radius <math|<around|\<lceil\>|<around|(|log x|)><rsup|2>|\<rceil\>>>, path
  cutoff <math|<around|\<lfloor\>|B/10<rsup|5>|\<rfloor\>>>>>|<row|<cell|<math|<around|\<lvert\>|U<rsub|p>|\<rvert\>>>,
  <math|w<rsub|b>>>|<cell|<hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L55>,
  <hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Cost.lean#L187>>|<cell|plaquette
  size; mismatch <math|\<chi\>*<around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>>>|<row|<cell|request
  <math|P>; admissible>|<cell|<verbatim|Teller>,
  <verbatim|Teller.Funds>>|<cell|data of one call of the step
  estimator>>|<row|<cell|<math|A=<around|(|A<rsub|F>,A<rsub|I>,A<rsub|\<flat\>>|)>>,
  consistent>|<cell|<verbatim|Stores>, <verbatim|Stores.Plot>>|<cell|seeds;
  two-sided thresholds on <math|D<rsub|5*B>>>>|<row|<cell|<math|A<rsup|<math-up|sp>>>,
  tides, hit>|<cell|<verbatim|spend>, <verbatim|tides>,
  <verbatim|hit>>|<cell|seeds above <math|T>; coarse plaquettes above
  <math|\<delta\>>; cells near <math|A<rsup|<math-up|sp>>>>>|<row|<cell|<math|\<cal-E\><rsub|A>>>|<cell|<verbatim|Stores.assessed>>|<cell|localized
  action gap>>|<row|<cell|<math|v>, <math|\<Phi\>,\<Phi\><rprime|'>,N>>|<cell|<verbatim|vision>,
  <verbatim|\<Phi\>>, <verbatim|\<Phi\>'>, <verbatim|N>>|<cell|coarse
  coordinates; transported kernels cut at
  <math|R>>>|<row|<cell|<math|\<Phi\><rsub|0>,\<Phi\><rsub|0><rprime|'>,N<rsub|0>>>|<cell|<verbatim|flatF>,
  <verbatim|flatI>, <verbatim|flatN>>|<cell|flat, uncut scalar tower
  operators>>|<row|<cell|<math|\<omega\><around|(|R,h,\<tau\>|)>>>|<cell|<verbatim|widen>>|<cell|<math|<around|(|1+R|)>*h+e<rsup|-\<tau\>*R>>>>|<row|<cell|rate
  <math|a>>|<cell|<verbatim|Rate>>|<cell|<math|\<leqslant\>\<beta\><rsub|F><rsup|a+o<around|(|1|)>>>>>|<row|<cell|target
  data <math|\<cal-T\>>>|<cell|<verbatim|Target>>|<cell|<math|\<varepsilon\>,\<delta\>,e>,
  rate <math|r>, halo, chart>>|<row|<cell|letter weights, KP
  condition>|<cell|<verbatim|Sales>, <verbatim|Buy>>|<cell|rooted
  Kotecký\UPreiss and tree-graph tests>>|<row|<cell|new-gas
  bounds>|<cell|<verbatim|Cash>, <verbatim|Utopia>, <verbatim|Herd>,
  <verbatim|Captain>>|<cell|III.10.2 bundle; letter jets; molecule
  integrals>>|<row|<cell|<math|N<rsub|B><around|(|H|)>>>|<cell|<verbatim|coverNumber>>|<cell|minimum
  connected ball-cover size>>|<row|<cell|<math|\<rho\><around|(|x|)>>,
  <math|<math-up|rad>>>|<cell|<verbatim|Utopia.active>,
  <verbatim|Utopia.rad>>|<cell|jet scale of rate zero; square root of a
  warning-probability bound>>|<row|<cell|Gaussian
  sector>|<cell|<verbatim|Value>, <verbatim|Charges>>|<cell|precision,
  approximate inverse, mean, residual>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Conversion to the norms of III.9.> The rooted
    optional-letter bound and the packet/tree test are explicit here. Their
    complete conversion to the outgoing <math|E>- and <math|K>-norms of II.2
    and III.5, including the reset, remains to be written out. The relevant
    per-step assemblies are the activity-bound bundle, its jet version, and
    the molecule-integral bounds.

    <item><strong|Free-kernel compatibility along the trajectory.> The
    condition requires fine and coarse beds satisfying the diagonal and flat
    tower identities, invariance under lattice symmetries, attachment to the
    chosen path data, and positive invertibility bounds.
    <hlink|<verbatim|YM.PhysicalNext.Repeat.Pane.ovation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Rooms.lean#L39-L41>
    constructs it on the auxiliary torus from the trajectory's beds, assuming
    their lattice-symmetry property at every period. The proof of that
    symmetry property for the final selected trajectory, and the precise
    III.3 attribution of all tower inputs, have not been checked here.

    <item><strong|Depth of the analytic proof checks.> The assembly proofs of
    III.10.2\UIII.10.4 and their defining estimates have been read. The
    underlying stationary coercivity, local-inverse, packet-jet and
    individual letter-jet estimates have not all been read through; their
    detailed analytic proofs remain to be checked. The proof of H03's
    forced-family structure was read; its full lift of lattice-symmetry
    permutations was not checked through. These limitations do not alter the
    conditional statements above.

    <item><strong|Additional reset estimates.>
    <hlink|<verbatim|meritBar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Molt.lean#L25-L77>
    and <hlink|<verbatim|rimfire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Alabaster/Basin.lean#L23-L49>
    give summable jet bounds proportional to the input difference, under
    matched-input and derivative-control hypotheses.
    <hlink|<verbatim|erudite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Shellac/Sables.lean#L26-L65>
    gives positivity of a residual density and a
    <math|\<beta\><rsub|F><rsup|-23/20>> jet bound on the off-diagonal
    remainder under matching, finite-bound and small-chart hypotheses. Their
    complete hypotheses and role in III.9's reset are not included in this
    unit's numbered outputs.

    <item><strong|Gaussian trigger scales.> In
    <hlink|<verbatim|JointLoad.stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Supply.lean#L72-L98>,
    the scales are <math|b<around|(|x|)>=1+B<around|(|x|)>> and
    <math|p<around|(|x|)>=e<rsup|<around|(|log log
    \<beta\><rsub|F>|)><rsup|2>>>; the trigger estimate absorbs fixed powers
    of <math|b> into <math|e<rsup|-c*p<rsup|2>>> per distinct endpoint. Its
    full use in the preconstruction has not been traced here.

    <item><strong|Comparison with Balaban.> The cited papers describe the
    corresponding small-field, cluster and large-field operations. A
    lemma-by-lemma identification, including threshold and normalization
    choices, remains open. The bibliographic dates and volumes above do not
    establish such an identification.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.9 The marginal flow: the running
  coupling and its reset (notes)|III-9.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-10.tm>|<hlink|III.11 Interacting rank, Gaussian
  comparison and the stress tensor (notes) \<rightarrow\>|III-11.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.10. One full nonlinear renormalization step:
    bounds on irrelevant terms \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|10>>
    <associate|3-strategy|<tuple|3|11>>
    <associate|4-steps|<tuple|4|12>>
    <associate|41-the-algebraic-identity|<tuple|4.1|12>>
    <associate|410-the-schedule|<tuple|4.10|21>>
    <associate|42-packing-and-geometry|<tuple|4.2|12>>
    <associate|43-kernel-bounds|<tuple|4.3|13>>
    <associate|44-row-by-row-lower-bounds|<tuple|4.4|14>>
    <associate|45-linearization-defects-on-unaffected-cells|<tuple|4.5|15>>
    <associate|46-assembly-of-iii101|<tuple|4.6|17>>
    <associate|47-activities-of-one-step|<tuple|4.7|18>>
    <associate|48-derivatives|<tuple|4.8|20>>
    <associate|49-start-up-fusion-and-markers|<tuple|4.9|21>>
    <associate|5-where-the-difficulty-lies|<tuple|5|22>>
    <associate|6-notation|<tuple|6|23>>
    <associate|7-what-remains-unexplained|<tuple|7|23>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|4.7|18>>
    <associate|auto-12|<tuple|4.8|20>>
    <associate|auto-13|<tuple|4.9|21>>
    <associate|auto-14|<tuple|4.10|21>>
    <associate|auto-15|<tuple|5|22>>
    <associate|auto-16|<tuple|6|23>>
    <associate|auto-17|<tuple|7|23>>
    <associate|auto-2|<tuple|2|10>>
    <associate|auto-3|<tuple|3|11>>
    <associate|auto-4|<tuple|4|12>>
    <associate|auto-5|<tuple|4.1|12>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|iii10-one-full-nonlinear-renormalization-step-bounds-on-irrelevant-terms--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The algebraic identity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Packing and geometry
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Kernel bounds
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Row-by-row lower bounds
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Linearization defects on unaffected
      cells <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Assembly of III.10.1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Activities of one step
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Derivatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 Start-up fusion and markers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|4.10 The schedule
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