<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.14 The construction run: flat
  representations and the ultraviolet rate (notes)|III-14.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-15.tm>|<hlink|III.16 Analytic toolkit (notes)
  \<rightarrow\>|III-16.tm>>

  <ym-title|III.15. Cost accounting for observables and the remainder
  comparison \V detailed notes><label|iii15-cost-accounting-for-observables-and-the-remainder-comparison--detailed-notes>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. What this
    unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|Part A: pair-step pricing
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|Part B: derivative bounds for local observables
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|Part C: launch data for the remainder comparison
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. What it
    uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Strategy>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Steps>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <with|par-left|1tab|4.1 Elementary asymptotics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.2 Pair-step rates
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.3 Merging hard and soft families
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.4 Slots and atoms
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.5 The Chron chain (Part C)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.6 Records and other fragments (Part D)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.15: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-15.tm>.
  </quotation>

  <hlink|Unit page|../units/III-15.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> chapter 32: <hlink|<verbatim|YM/RemainderComparison/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison>
  (packages Chron, Cadenza, Halo, Muse, Solo, Lyric, Herbal, Cascade, Sleet,
  Access, Portal, Aux and about twenty smaller ones),
  <hlink|<verbatim|YM/Progress/DIRECTED_RECIPE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE>,
  <hlink|<verbatim|YM/Next/SCHEDULE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE>,
  <hlink|<verbatim|YM/RG05Readout/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG05Readout>,
  <hlink|<verbatim|YM/Integration/ChronPreconstruction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ChronPreconstruction>,
  <hlink|<verbatim|YM/Integration/RG05Preconstruction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction>,
  and small parts of <verbatim|YM/R2I/>, <verbatim|YM/RG12/>,
  <verbatim|YM/OPE/Therm/>. <strong|Size:> 7,382 lines in 1,053 declarations
  used by the main theorem. About 4,200 of these lines are the launch theorem
  and its prerequisites.

  <strong|Overview.> The unit has three independent parts, plus some record
  types.

  <\itemize-minus>
    <item><strong|(A) Pair-step pricing> (<verbatim|DIRECTED_RECIPE>). Two
    numerical facts used by the RG step of III.9 and III.10. A hard family of
    polymer activities is merged with the Mayer expansion of the exponential
    of soft local terms. The merged family keeps a weighted polymer bound and
    carries an explicit Gaussian large-field factor (III.15.1\U2).

    <item><strong|(B) Derivative bounds for local observables>
    (<verbatim|SCHEDULE/Wages>). On the small-field region, a transported
    curvature slot has left derivatives of every order <math|\<leqslant\>K>
    bounded by a constant times <math|t>. A <math|k>-leg monomial in slots
    has them bounded by a constant times <math|t<rsup|k>>. Here <math|t> is
    the small-field threshold (III.15.3\U4).

    <item><strong|(C) Launch data for the remainder comparison>
    (<verbatim|RemainderComparison>). For connected-activity targets with
    rates below <math|-<tfrac|3|8>>, a sufficiently large block side permits
    the numerical conditions of a comparison step. After the auxiliary data
    are fixed, one chooses the comparison functions and then an entry
    coupling above which those conditions hold (III.15.5\U7).

    <item><strong|(D) Records and numerical definitions.> These include the
    construction-run bounds, the additional-expense and readout records, and
    the RG05 readout prices. Their scope is described in Ÿ4.6.
  </itemize-minus>

  <strong|Status of the parts for the main theorem.>

  <\itemize-minus>
    <item>(A) and (B) are consumed by III.2, III.9 and III.10.

    <item>(C) supplies additional comparison data in the main-theorem
    dependency chain:

    <\itemize-minus>
      <item>III.2's assembly lemma <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>
      calls the launch and delay-enlargement theorems to build the additional
      conjunct <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.Stagehands.News>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Rig.lean#L21-L22>,
      which records a family of quarries and their stagewise bounds.

      <item>That conjunct is passed unchanged up to the selected-run theorem
      <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>
      of III.14.

      <item>In the main-theorem dependency chain,
      <hlink|<verbatim|YM.Independent.constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>
      discards it. The retained construction-run conditions form a separate
      record.

      <item>Part C imposes additional lower bounds on block sides and entry
      couplings. Its comparison conclusions are absent from the final
      construction-run statement.
    </itemize-minus>
  </itemize-minus>

  <strong|Conventions.>

  <\itemize-minus>
    <item><math|x> denotes the coarse renormalized inverse coupling
    <math|<wide|\<beta\>|^>>.

    <item><math|\<beta\><rsub|F><around|(|x,L|)>=x+b<rsub|G>*log L> is the
    inverse coupling at the next finer scale
    (<hlink|<verbatim|YM.Pressure.betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>);
    <math|b<rsub|G>> is the slope constant of <math|G>, positive when
    <math|G> is simple.
  </itemize-minus>

  For <math|\<beta\>\<gtr\>0> and <math|x\<gtr\>1>, use the scale functions

  <\equation*>
    g<around|(|\<beta\>|)>=\<beta\><rsup|-1/2>,<space|2em>p<around|(|x|)>=e<rsup|<around|(|log
    log x|)><rsup|2>>,<space|2em>t<around|(|x|)>=g<around|(|x|)>*<space|0.17em>p<around|(|x|)>,<space|2em>\<cal-B\><around|(|x|)>=<around|\<lceil\>|<around|(|log
    x|)><rsup|2>|\<rceil\>>.
  </equation*>

  <\itemize-minus>
    <item><math|t> is the small-field threshold
    (<hlink|<verbatim|YM.Pressure.temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>,
    equal to <hlink|<verbatim|YM.Next.Scheduling.Instrument.t>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59>
    for the plain instrument).

    <item><math|\<cal-B\>> is the cluster radius
    (<hlink|<verbatim|YM.Pressure.radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>,
    the same formula as <hlink|<verbatim|YM.Next.Scheduling.Clock.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38>).

    <item>The band of <math|y> is <math|<around|[|y/4,4*y|]>>
    (<hlink|<verbatim|YM.Next.Scheduling.inBand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99>).
    On it, <math|g<around|(|y|)>/2\<leqslant\>g<around|(|\<beta\>|)>\<leqslant\>2*g<around|(|y|)>>
    (<hlink|<verbatim|YM.Next.Scheduling.band_gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L105-L111>).
  </itemize-minus>

  Growth classes, at fixed <math|L>, as <math|x\<to\>\<infty\>>:

  <\itemize-minus>
    <item><strong|Rate> <math|\<leqslant\>a>
    (<hlink|<verbatim|YM.ConnectedActivityE6.Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23>):
    for every <math|v\<gtr\>a>, eventually
    <math|<around|\||w<around|(|x|)>|\|>\<leqslant\>\<beta\><rsub|F><around|(|x,L|)><rsup|v>>.

    <item><strong|Reserve> (<hlink|<verbatim|YM.RemainderComparison.Reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26>):
    <math|<around|\||w<around|(|x|)>|\|>\<leqslant\>M<around|(|x|)><rsup|k>>
    eventually for some <math|k\<in\>\<bbb-N\>>, where
    <math|M<around|(|x|)>=p<around|(|\<beta\><rsub|F><around|(|x,L|)>|)>>
    (<hlink|<verbatim|YM.Push.AbsoluteSums.Delay.fineMonitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24>).
    Every reserve has rate at most <math|0>.

    <item><strong|Gear> <math|a> (<hlink|<verbatim|YM.RemainderComparison.Gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean#L25>):
    <math|\<beta\><rsub|F><rsup|-a>*w> is a reserve, equivalently
    <math|<around|\||w<around|(|x|)>|\|>\<leqslant\>\<beta\><rsub|F><around|(|x,L|)><rsup|a>*M<around|(|x|)><rsup|k>>
    eventually for some <math|k\<in\>\<bbb-N\>>. This implies rate at most
    <math|a>.
  </itemize-minus>

  Weighted hit bound (<hlink|<verbatim|YM.Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>):
  for supports <math|X<rsub|i>>, weights <math|f<rsub|i>\<geqslant\>0>, scale
  <math|M> and exponent <math|a>, write <math|<math-up|Hit><rsub|M><around|(|f;a|)>\<leqslant\>\<gamma\>>
  if

  <\equation*>
    <big|sum><rsub|i:<space|0.17em>z\<in\>X<rsub|i>>f<rsub|i>*<space|0.17em>e<rsup|a*N<rsub|M><around|(|X<rsub|i>|)>>\<leqslant\>\<gamma\><space|1em><text|for
    every site >z,
  </equation*>

  where <math|N<rsub|M><around|(|X|)>> is the minimal number of
  <math|M>-balls with connected union covering <math|X>.

  The quote is <math|<math-up|quote><around|(|\<kappa\>,\<gamma\>|)>=e<rsup|-\<kappa\>>*<around|(|e<rsup|\<gamma\>>-1|)>>
  (<hlink|<verbatim|YM.Bid.quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18>).

  In the code, a price or bill is a numerical bound; \Pfinanced\Q means that
  the bound satisfies the specified growth conditions.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <subsection|Part A: pair-step pricing><label|part-a-pair-step-pricing>

  <strong|Proposition III.15.1 (pair-step rates).> Let
  <math|\<rho\>\<gtr\>0>, <math|C\<geqslant\>0>, <math|r\<gtr\>\<rho\>>,
  <math|d\<in\>\<bbb-N\>>, <math|e\<in\>\<bbb-R\>> and <math|q\<gtr\>0>. For
  <math|y\<gtr\>1> and <math|\<beta\>\<gtr\>0> put

  <\equation*>
    s<around|(|y,\<beta\>|)>=<frac|t<around|(|y|)>|g<around|(|\<beta\>|)>>=p<around|(|y|)><sqrt|\<beta\>/y>,<space|1em><math-up|mild><around|(|y|)>=C*<around|(|1+\<cal-B\><around|(|y|)>|)><rsup|d>*p<around|(|y|)><rsup|e>*g<around|(|y|)><rsup|q>,
  </equation*>

  <\equation*>
    <math-up|strong><around|(|y,\<beta\>|)>=C*e<rsup|-r*s<rsup|2>>,<space|1em>\<kappa\><around|(|y,\<beta\>|)>=\<rho\>*s<rsup|2>.
  </equation*>

  For all sufficiently large <math|y\<gtr\>1>, the following holds for every
  <math|\<beta\>\<in\><around|[|y/4,4*y|]>> and every integer
  <math|0\<leqslant\>B\<leqslant\>\<cal-B\><around|(|y|)>>. With
  <math|a=<math-up|strong><around|(|y,\<beta\>|)>>,
  <math|b=<math-up|mild><around|(|y|)>> and
  <math|\<gamma\>=e<rsup|\<kappa\>>*a+2*b>:

  <\equation*>
    \<kappa\>\<geqslant\>0,<space|1em>a\<geqslant\>0,<space|1em>0\<leqslant\>b\<leqslant\>1,<space|1em><around|(|2*B+1|)><rsup|4>*\<gamma\>\<leqslant\>1,<space|1em><math-up|quote><around|(|\<kappa\>,\<gamma\>|)>\<leqslant\>e<rsup|-\<kappa\>>.
  </equation*>

  These are the rate conditions with target <math|w=e<rsup|-\<kappa\>>>. The
  threshold in <math|y> depends only on <math|<around|(|\<rho\>,C,r,d,e,q|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Pairing.currency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139>;
  data <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Pairing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36>;
  conditions <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39>
  and <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.inflation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L32>.
  <em|Used in:>

  <\itemize-minus>
    <item>III.9, in <hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.Time.cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Currency.lean#L75-L126>,
    with <math|d=e=0>, <math|q=<tfrac|1|2>>, <math|y=x+b<rsub|G>*log L> and
    <math|B=\<cal-B\><around|(|x|)>>.

    <item>III.2, in <hlink|<verbatim|YM.PhysicalNext.Repeat.Jams.reunite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L72-L85>.
  </itemize-minus>

  <strong|Proposition III.15.2 (merging a hard and a soft family).> Fix a
  parameter point <math|P> with derivative order <math|K\<geqslant\>6>,
  direction power <math|P<rsub|0>\<geqslant\>2>, cluster scale
  <math|B<rsub|P>\<geqslant\>1>, support exponent <math|\<sigma\>\<gtr\>0>
  and threshold <math|0\<less\>t<rsub|P>\<leqslant\>1>. Consider a countably
  indexed regular family <math|E<rsub|i>>, a <strong|hard family> of forced
  activities <math|F<rsub|i>> with supports <math|X<rsub|i>>, and a
  <strong|soft family> of real local exponential corrections
  <math|\<ell\><rsub|i>> with nonempty supports <math|X<rprime|'><rsub|i>>.
  Assume:

  <\enumerate>
    <item>The regular terms satisfy the regular-family conditions at
    <math|P>: regularity on their supports, vanishing at the flat field, and
    vanishing affine Hessian on nonwrapping supports. The forced terms and
    their eligibility tests are gauge invariant, measurable and determined by
    the links and final flags on their supports; a nonzero forced term
    satisfies its eligibility test. The regular and forced families admit the
    prescribed translation/reflection permutations, including the support and
    inventory transformations. Each <math|\<ell\><rsub|i>> is gauge
    invariant, measurable and determined by the links and final flags on
    <math|X<rprime|'><rsub|i>>; it vanishes on configurations small-field on
    <math|X<rprime|'><rsub|i>>. The soft family is also covariant under
    translations and reflections.

    <item>The regular family has bound <math|\<delta\>>: it admits
    nonnegative bounds on all left derivatives through order <math|K> on its
    small-field supports, in the directions specified by <math|P>, whose
    weighted sum at each anchor is at most <math|\<delta\>>.

    <item>For every <math|i> and every configuration <math|U>,
    <math|<around|\||F<rsub|i><around|(|U|)>|\|>\<leqslant\>p<rsub|i>> and
    <math|<around|\||\<ell\><rsub|i><around|(|U|)>|\|>\<leqslant\>q<rsub|i>>,
    with <math|p<rsub|i>,q<rsub|i>\<geqslant\>0>.

    <item><math|<math-up|Hit><rsub|B<rsub|P>><around|(|p;\<sigma\>+1|)>\<leqslant\>a>
    on <math|<around|(|X<rsub|i>|)>> and <math|<math-up|Hit><rsub|B<rsub|P>><around|(|q;\<sigma\>+1|)>\<leqslant\>b>
    on <math|<around|(|X<rprime|'><rsub|i>|)>>.

    <item>The rate inequalities of III.15.1 hold with <math|B=B<rsub|P>>,
    with the final inequality replaced by
    <math|<math-up|quote><around|(|\<kappa\>,e<rsup|\<kappa\>>*a+2*b|)>\<leqslant\>w>.
  </enumerate>

  Then the fusion input condition with <math|<around|(|\<delta\>,w|)>> holds.
  Explicitly:

  <\itemize-minus>
    <item>the original regular and forced families retain bounds
    <math|\<delta\>> and <math|a>, respectively; the soft corrections admit a
    summable uniform majorant;

    <item>the merged family <math|<around|(|F<rsub|i>|)>\<sqcup\><around|(|e<rsup|\<ell\><rsub|i>>-1|)>>,
    with weights <math|e<rsup|\<kappa\>>*p<rsub|i>> and <math|2*q<rsub|i>>,
    satisfies <math|<around|\||F<rsub|i>|\|>\<leqslant\>e<rsup|-\<kappa\>>\<cdot\>e<rsup|\<kappa\>>*p<rsub|i>>
    and <math|<around|\||e<rsup|\<ell\><rsub|i>>-1|\|>\<leqslant\>2*q<rsub|i>>;

    <item>that family has <math|<math-up|Hit><rsub|B<rsub|P>><around|(|\<cdummy\><space|0.17em>;\<sigma\>+1|)>\<leqslant\>\<gamma\>\<assign\>e<rsup|\<kappa\>>*a+2*b>,
    with <math|<around|(|2*B<rsub|P>+1|)><rsup|4>*\<gamma\>\<leqslant\>1>;

    <item><math|<math-up|quote><around|(|\<kappa\>,\<gamma\>|)>\<leqslant\>w>.
  </itemize-minus>

  <em|Status:> theorem. The only analytic input is
  <math|<around|\||e<rsup|z>-1|\|>\<leqslant\>2<around|\||z|\|>> for
  <math|<around|\||z|\|>\<leqslant\>1>. Through the fusion lemmas of III.10
  (<verbatim|Work.H01>\U<verbatim|H03>, used in
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Ingredients.gates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L63-L68>),
  the conclusion gives the fused polymer family with norm bound
  <math|\<leqslant\>w>. With <math|w=e<rsup|-\<kappa\>>> from III.15.1, this
  is the Gaussian large-field factor <math|exp
  <around|(|-\<rho\>*<space|0.17em><around|(|\<beta\>/y|)>*<space|0.17em>p<around|(|y|)><rsup|2>|)>>.
  <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133>;
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.hardCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.softCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.rooted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L48-L49>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Fittings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L52-L62>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Ingredients>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33>.
  <em|Used in:> III.9 (<hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.Collection.Local.renew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Investor.lean#L112-L128>)
  and III.10 (<hlink|<verbatim|YM.PhysicalNext.Repeat.Marlin.cannon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Marlin/Pylon.lean#L38-L49>).

  <subsection|Part B: derivative bounds for local
  observables><label|part-b-derivative-bounds-for-local-observables>

  A <em|slot> <math|s> is a lattice walk <math|\<omega\>> from the origin,
  followed by a plaquette <math|\<pi\>> (two axes) at the endpoint of
  <math|\<omega\>> (<hlink|<verbatim|YM.RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>).
  Its length is <math|<around|\||s|\|>=<around|\||\<omega\>|\|>+4>, and its
  value at a site <math|o> is the transported curvature

  <\equation*>
    s<around|(|U,o|)>=<math-up|Ad><around|(|U<rsub|\<omega\>>|)>*<space|0.17em>\<cal-C\><around|(|U<rsub|\<pi\>>|)>\<in\>\<frak-g\>,
  </equation*>

  where <math|\<cal-C\>> is the colour projection of the anti-Hermitian part.

  A <em|<math|k>-leg atom> <math|a> has slots
  <math|s<rsub|1>,\<ldots\>,s<rsub|k>> and a real coefficient tensor
  <math|c<rsub|b>> indexed by colour multi-indices
  <math|b\<in\><around|{|1,\<ldots\>,dim \<frak-g\>|}><rsup|k>>
  (<hlink|<verbatim|YM.RG.Atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86>).
  Its value is <math|a<around|(|U,o|)>=<big|sum><rsub|b>c<rsub|b>*<big|prod><rsub|i>s<rsub|i><around|(|U,o|)><rsup|b<rsub|i>>>,
  its size is <math|<around|\||a|\|>=<big|sum><rsub|b><around|\||c<rsub|b>|\|>>,
  and its length is <math|<math-up|len><around|(|a|)>=<big|sum><rsub|i><around|\||s<rsub|i>|\|>>.

  Fix a parameter point with derivative order <math|K\<geqslant\>6>, power
  <math|P\<geqslant\>2> and threshold <math|t\<in\><around|(|0,1|]>>.
  Directions are colour-valued increments <math|A> of the left derivative
  <math|\<partial\><rsub|A>>. A direction is <em|admissible at <math|o>> if

  <\equation*>
    <around|\<\|\|\>|A<rsub|e>|\<\|\|\>>\<leqslant\>t*<space|0.17em><around|(|1+<math-up|dist><around|(|e,o|)>|)><rsup|P><space|1em><text|for
    every link >e.
  </equation*>

  Here <math|<math-up|dist><around|(|e,o|)>> is the periodic maximum distance
  from the basepoint of <math|e> to <math|o>
  (<hlink|<verbatim|YM.RG.BudgetPoint.dirBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142>).

  A configuration is <em|small-field on <math|X>> (healthy,
  <hlink|<verbatim|YM.RG.Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>)
  if every plaquette touching a site of <math|X> has chord distance
  <math|\<leqslant\>t> from the identity. Let
  <math|\<kappa\><rsub|G>\<gtr\>0> be the colour scale of <math|G> and
  <math|<around|\<\|\|\>|1|\<\|\|\>>> the Frobenius norm of the identity
  matrix.

  <strong|Proposition III.15.3 (slot derivative bound).> Let
  <math|\<ell\>\<in\>\<bbb-N\>> and <math|s> be a slot with
  <math|<around|\||s|\|>\<leqslant\>\<ell\>>, let <math|S> be a finite set of
  points of <math|\<bbb-Z\><rsup|4>> containing the stencil of <math|s>, and
  let <math|o> be a site. Then <math|U\<mapsto\>s<around|(|U,o|)>> is
  <math|K> times left-differentiable. Let <math|U> be small-field on
  <math|o+S> (wrapped on the torus), and let
  <math|A<rsub|1>,\<ldots\>,A<rsub|m>> be admissible directions at <math|o>
  with <math|m\<leqslant\>K>. Then

  <\equation*>
    <mid|\|>\<partial\><rsub|A<rsub|1>>*\<cdots\>*\<partial\><rsub|A<rsub|m>>*s<around|(|U,o|)><mid|\|>\<leqslant\><math-up|slotCost><around|(|P,K,\<ell\>|)>*<space|0.17em>t,
  </equation*>

  <\equation*>
    <math-up|slotCost><around|(|P,K,\<ell\>|)>=<around*|(|1+\<kappa\><rsub|G><rsup|-1><around|\<\|\|\>|1|\<\|\|\>>|)><space|0.17em><math-up|margin><around|(|P,\<ell\>|)><rsup|K>,<space|2em><math-up|margin><around|(|P,\<ell\>|)>=2*<around|(|\<kappa\><rsub|G>+1|)>*<space|0.17em>2<rsup|P>*<around|(|\<ell\>+1|)><rsup|P+1>.
  </equation*>

  The constant depends on <math|P,K,\<ell\>,G> only, not on <math|t>,
  <math|o> or the volume. At <math|m=0> the stronger order-zero bound is
  <math|<around|\<\|\|\>|s<around|(|U,o|)>|\<\|\|\>>\<leqslant\>t>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.slotPays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159>;
  <hlink|<verbatim|YM.Next.Scheduling.Wages.slotCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.margin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94>,
  <hlink|<verbatim|YM.Work.G07.LeftBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Calculus.lean#L124-L129>.
  <em|Used in:> III.9 (<hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.Low.plain_bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Quadratic.lean#L64-L83>)
  and III.15.4.

  <strong|Proposition III.15.4 (bound for <math|k>-leg atoms).> Let
  <math|k\<in\>\<bbb-N\>>, let <math|a> be a <math|k>-leg atom, <math|o> a
  site, and <math|U> small-field on the footprint
  <math|o+<math-up|stencil><around|(|a|)>>. Then
  <math|U\<mapsto\>a<around|(|U,o|)>> is <math|K> times left-differentiable,
  and every left derivative of order <math|m\<leqslant\>K> in admissible
  directions at <math|o> is bounded by

  <\equation*>
    <math-up|price><around|(|a|)>=<around|\||a|\|>*<space|0.17em>2<rsup|K>*<around*|(|2<rsup|K><space|0.17em><math-up|slotCost><around|(|P,K,<math-up|len><around|(|a|)>|)>*<space|0.17em>t|)><rsup|k>=<math-up|start><around|(|G,k,P,K|)>*<space|0.27em>t<rsup|k><space|0.27em><around|\||a|\|>*<space|0.27em><around|(|<math-up|len><around|(|a|)>+1|)><rsup|<around|(|P+1|)>*K*k>,
  </equation*>

  where <math|<math-up|start><around|(|G,k,P,K|)>=2<rsup|K><around*|(|2<rsup|K><math-up|slotCost><around|(|P,K,0|)>|)><rsup|k>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.fin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.scan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.startup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L78>.
  <em|Used in:> III.9 (<hlink|<verbatim|YM.AnalyticBridge.VerifiedReset.High.paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticBridge/VERIFIED_RESET_STEP/Higher.lean#L35-L41>)
  and III.10.

  <subsection|Part C: launch data for the remainder
  comparison><label|part-c-launch-data-for-the-remainder-comparison>

  A <em|connected-activity target> <math|Q>
  (<hlink|<verbatim|YM.ConnectedActivityE6.Target>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76>,
  III.10) carries:

  <\itemize-minus>
    <item>a rate <math|\<rho\><rsub|Q>\<in\><around|(|-<tfrac|1|2>,0|)>>;

    <item>an exponent <math|<math-up|e><rsub|Q>\<geqslant\>0>;

    <item>small parameters <math|\<varepsilon\><rsub|Q>,\<delta\><rsub|Q>\<gtr\>0>
    with <math|4*\<varepsilon\><rsub|Q>> below the top support exponent;

    <item>a halo <math|h<rsub|Q>\<geqslant\>500>;

    <item>a chart table with its local-ratio property. The target also
    requires <math|8*\<varepsilon\><rsub|Q>> below both input chart widths.
  </itemize-minus>

  Its relative exponent is <math|<math-up|rel><rsub|Q>=<math-up|e><rsub|Q>+2*\<varepsilon\><rsub|Q>+\<delta\><rsub|Q>>.

  Stage pairs <math|<around|(|j,i|)>> are those with
  <math|i\<in\><around|{|j,j-1|}>> (<hlink|<verbatim|YM.Push.PriceCompiler.StepStages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Basic.lean#L27>).
  The stage profile <math|P<rsub|j>> has support exponent
  <math|\<sigma\><rsub|j>>.

  <strong|Proposition III.15.5 (launch data).> Let <math|G> be simple. Fix:

  <\itemize-minus>
    <item>a sheet with stage profiles <math|P<rsub|j>> and a kernel choice;

    <item>a compatible price table and targets <math|R<rsub|j*i>> with
    <math|<tfrac|3|8>+\<rho\><rsub|R<rsub|j*i>>\<less\>0> for all
    <math|j,i\<in\>\<bbb-N\>>;

    <item>tolerances <math|h<rsub|j*i>\<gtr\>0>;

    <item>libraries <math|C<rsub|j*i>> (of the order of <math|P<rsub|i>>);

    <item>mark numbers <math|r<rsub|j*i>>.
  </itemize-minus>

  Then there are thresholds <math|f:\<bbb-N\>\<to\>\<bbb-N\>> and constants
  <math|C<rprime|'><rsub|j*i>\<geqslant\>1> such that:

  <\enumerate>
    <item>For all <math|j,i>, the <em|quotation bound> holds for
    <math|<around|(|C<rsub|j*i>,<math-up|power><around|(|P<rsub|i>|)>,r<rsub|j*i>|)>>
    with fine exponent <math|\<sigma\><rsub|j>>, coarse exponent
    <math|\<sigma\><rsub|i>+2> and constant <math|C<rprime|'><rsub|j*i>>.
    More precisely, take an RG step of side <math|L>, fine and coarse
    parameter points <math|B,P>, and supports <math|X,Y> such that <math|Y>
    lies in the <math|r<rsub|j*i>*\<cal-B\><around|(|x|)>>-neighbourhood of
    the coarse image of <math|X>. Assume <math|P> has the power of
    <math|P<rsub|i>>, <math|B> has support exponent <math|\<sigma\><rsub|j>>,
    <math|B<rsub|P>=\<cal-B\><around|(|x|)>>,
    <math|B<rsub|B>\<leqslant\>2*B<rsub|P>>,
    <math|t<rsub|P>\<leqslant\>2*t<rsub|B>>, and the acceptance condition in
    (c) below. For every <math|u\<geqslant\>0> satisfying the local analytic
    smallness condition for the return fee and every
    <math|\<tau\>\<geqslant\>0>,

    <\equation*>
      e<rsup|<around|(|\<sigma\><rsub|i>+2|)>*N<rsub|B<rsub|P>><around|(|Y|)>>*<space|0.17em>\<tau\><space|0.17em><math-up|returnFee>\<leqslant\>C<rprime|'><rsub|j*i>*L<rsup|-5>*e<rsup|\<sigma\><rsub|j>*N<rsub|B<rsub|B>><around|(|X|)>>*\<tau\>.
    </equation*>

    <item>For every stage pair <math|<around|(|j,i|)>> and every block side
    <math|L\<geqslant\>f<rsub|j>>:

    <\itemize-minus>
      <item>(a) the quay condition (III.15.6) holds for <math|R<rsub|j*i>> at
      side <math|L>;

      <item>(b) <math|<around|(|<math-up|rel><rsub|R<rsub|j*i>>+1|)>*<space|0.17em>10*<space|0.17em>c<rsub|h+5>/L+2*\<varepsilon\><rsub|R<rsub|j*i>>\<leqslant\>\<sigma\><rsub|j>>,
      where <math|c<rsub|h+5>> is the pre-cost of halo
      <math|h<rsub|R<rsub|j*i>>+5>;

      <item>(c) the acceptance condition <math|20*<around|(|\<sigma\><rsub|i>+2|)><space|0.17em><math-up|toll><around|(|r<rsub|j*i>|)>\<leqslant\>L*\<sigma\><rsub|j>>;

      <item>(d) <math|C<rprime|'><rsub|j*i>/L\<leqslant\>h<rsub|j*i>>.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem. The construction run calls it with rates
  <math|\<less\>-<tfrac|7|16>>; these are supplied by III.2's company
  selection, and <math|-<tfrac|7|16>> implies the hypothesis. <em|Lean:>
  <hlink|<verbatim|YM.RemainderComparison.Chron.sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>,
  <hlink|<verbatim|YM.RemainderComparison.Chron.Pledge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95>,
  <hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.Quotation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L23-L27>,
  <hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.accepts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L59>,
  <hlink|<verbatim|YM.RemainderComparison.Lyric.radiusCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36>,
  <hlink|<verbatim|YM.RemainderComparison.Chron.Contemple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71>
  (tolerances).

  The <em|heart condition> on rays for a stage <math|E<rprime|'>> and
  exponent <math|<math-up|e><rsub|Q>> consists of the support inequalities

  <\equation*>
    0\<leqslant\>\<sigma\><rsub|\<ast\>>,<space|1em>\<sigma\><rsub|E<rprime|'>>\<leqslant\>\<sigma\><rsub|\<ast\>>,<space|1em>\<sigma\><rsub|\<ast\>>+1\<leqslant\>a<rsub|\<ast\>>,<space|1em>\<varepsilon\><rsub|\<ast\>>\<gtr\>0,<space|1em>a<rsub|\<ast\>>+3*\<varepsilon\><rsub|\<ast\>>\<leqslant\><math-up|e><rsub|Q>,
  </equation*>

  and the order inequalities

  <\equation*>
    <math-up|ord><around|(|E<rprime|'>|)>\<leqslant\>J<rsub|\<ast\>>,<space|1em><math-up|ord><around|(|E<rprime|'>|)>+<around|(|p<rsub|\<ast\>>+1|)>+p<rsub|\<ast\>>+2\<leqslant\>n<rsub|\<ast\>>,<space|1em>p<rsub|\<ast\>>+1\<leqslant\>s<rsub|\<ast\>>,<space|1em>k<rsub|\<ast\>>+1\<leqslant\>s<rsub|\<ast\>>.
  </equation*>

  The starred quantities are the support exponents, slack and requested
  orders carried by the rays.

  <strong|Proposition III.15.6 (the quay for large sides).> Let <math|G> be
  simple, <math|K> a kernel choice, and <math|Q> a target with
  <math|<tfrac|3|8>+\<rho\><rsub|Q>\<less\>0>. There is <math|n> such that
  for every block side <math|L\<geqslant\>n> the following holds. Take any:

  <\itemize-minus>
    <item>patch <math|p> of side <math|L> satisfying the branching condition;

    <item><math|W,\<mu\>\<gtr\>0>, and order datum at <math|W>;

    <item>songbook and scrollwork at side <math|L>, and <math|\<chi\>>;

    <item>stages <math|E,E<rprime|'>>, and rays with the heart property for
    <math|<around|(|E<rprime|'>,<math-up|e><rsub|Q>|)>>;

    <item>library <math|C> of the order of <math|E<rprime|'>>;

    <item>record with parameter <math|\<varepsilon\>\<leqslant\><tfrac|1|4>>;

    <item><math|j\<in\>\<bbb-N\>>, reserve <math|f>, and
    <math|\<eta\>,\<delta\>\<gtr\>0>.
  </itemize-minus>

  Then there exist a quarry <math|D> (a record of bounding functions of
  <math|x>, with <math|d<around|(|D|)>\<gtr\>0> and paint supply) and a
  threshold <math|P<rsub|1>> with:

  <\itemize-minus>
    <item><math|D> is financed at rate <math|\<rho\><rsub|Q>>;

    <item>for every <math|x\<geqslant\>P<rsub|1>>, the poster comparison and
    chart conditions and the instructions hold. For every
    <math|\<beta\>\<in\><around|[|\<beta\><rsub|F><around|(|x,L|)>/4,4*\<beta\><rsub|F><around|(|x,L|)>|]>>
    and every parameter point <math|Z> tempered to <math|E<rprime|'>> at
    <math|x>, the active, resonance and tolerance conditions hold.
  </itemize-minus>

  Here <em|tempered> means that <math|Z> has cluster radius
  <math|\<cal-B\><around|(|x|)>>, threshold <math|t<around|(|x|)>>, the
  order, power and support exponent of <math|E<rprime|'>>, and threshold at
  most <math|2*t<around|(|\<beta\><rsub|F><around|(|x,L|)>|)>>. The active
  conditions comprise the local analytic estimates, readiness of the spatial
  restrictions, compatibility estimates and the prescribed tail bounds. The
  block-side threshold <math|n> is independent of the auxiliary data; the
  quarry and <math|P<rsub|1>> may depend on all of them. The quarry is a
  fixed record of functions of <math|x>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.buoys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Quay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Allot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L42-L44>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Coaxes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L35-L41>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39>.

  <strong|Proposition III.15.7 (using the launch data).> Fix a sheet,
  compatible target and expense tables <math|R,X>, chosen block sizes
  <math|L<rsub|j>>, a protection, a register and a firmament. The register
  supplies <math|W<rsub|j*i>,\<mu\><rsub|j*i>> and order data, with
  positivity for stage pairs. The firmament gives, for each stage pair,
  finitely many <em|request slots>; each carries a scrollwork, a songbook,
  grade and order data, a reserve, positive constants, and an extra condition
  that holds eventually for every financed quarry. Fix also tolerances,
  libraries <math|C<rsub|j*i>>, mark numbers <math|r<rsub|j*i>> and records
  <math|u<rsub|j*i>>. Assume:

  <\itemize-minus>
    <item>launch data as in III.15.5 with thresholds
    <math|k<rsub|j>\<leqslant\>L<rsub|j>>;

    <item><math|\<varepsilon\><around|(|u<rsub|j*i>|)>\<leqslant\><tfrac|1|4>>
    for stage pairs with <math|i> at least the first stage;

    <item><math|\<sigma\><rsub|i>+3\<less\><math-up|e><rsub|R<rsub|j*i>>> for
    all <math|j,i>.
  </itemize-minus>

  Then for every initial delay datum <math|T<rsub|0>> there are a delay datum
  <math|W\<geqslant\>T<rsub|0>> and a quarry <math|V<rsub|j*i*g>> for every
  request slot <math|g>, indexed at all <math|<around|(|j,i|)>>, with the
  following properties for every delay datum <math|U\<geqslant\>W>:

  <\itemize-minus>
    <item>(a) launch data with <math|f<rsub|j>\<leqslant\>L<rsub|j>>;

    <item>(b) for every stage pair <math|<around|(|j,i|)>> with
    <math|j\<geqslant\>4>, <math|i> at least the first stage, and the patch
    branching, and for every slot <math|g>: the slot's rays have the heart
    property; <math|d<around|(|V<rsub|j*i*g>|)>\<gtr\>0>; paint supply holds;
    the allotment of III.15.6 holds with threshold
    <math|\<beta\><rsup|\<ast\>><rsub|j><around|(|U|)>>; and the slot's extra
    condition holds for <math|x\<geqslant\>\<beta\><rsup|\<ast\>><rsub|j><around|(|U|)>>;

    <item>(c) for every stage pair with <math|i> at least the first stage,
    every request slot <math|g>, every <math|x\<geqslant\>\<beta\><rsup|\<ast\>><rsub|j><around|(|U|)>>
    and every torus side <math|c\<geqslant\><math-up|shells><rsub|j><around|(|U|)>*<space|0.17em><around|(|1+\<cal-B\><around|(|x|)>|)><rsup|<math-up|growth><rsub|j><around|(|U|)>>>,
    the slot's scope is tiled at <math|<around|(|x,c|)>>. This means
    <math|2*z<rsub|g><around|(|x|)>\<less\>c> and
    <math|4<space|0.17em><math-up|halo><rsub|g><around|(|x|)>+16\<leqslant\>c>,
    where <math|z<rsub|g>> and <math|<math-up|halo><rsub|g>> belong to its
    scrollwork.
  </itemize-minus>

  The order on delay data increases entry couplings, scale-entry functions,
  shell counts and growth exponents componentwise. The quarries are chosen
  before <math|U>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Chron.grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70>,
  <hlink|<verbatim|YM.RemainderComparison.Chron.Pillar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28>,
  <hlink|<verbatim|YM.RemainderComparison.Chron.Firmament>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L64-L66>,
  <hlink|<verbatim|YM.RemainderComparison.Chron.Glint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L49-L63>.
  <em|Use of III.15.5 and III.15.7:> III.2
  (<hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.RG05Joint.joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>),
  whose comparison conjunct reaches the selected-run theorem of III.14 and is
  discarded by the final construction-run theorem (see the overview).

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item>III.1: the scale functions <math|t>, <math|\<cal-B\>> and
    <math|\<beta\><rsub|F>>; slots and atoms.

    <item>II.1: ordered left-derivative calculus; the order-zero slot bound
    <hlink|<verbatim|YM.Work.G07.slot_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L165-L176>.

    <item>II.2: weighted hit bounds.

    <item>III.5: the logarithmic tail bound of the cluster expansion, used in
    Lemma 4.15.

    <item>III.10, a large set of inputs:

    <\itemize-minus>
      <item>the growth classes, connected-activity targets and step records;

      <item>the three fusion theorems, which turn the fusion input condition
      into a fused activity bound;

      <item>the quotation constants <hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.quoting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29>
      (including the factor <math|L<rsup|-5>>);

      <item>the per-vertex weight <hlink|<verbatim|YM.PhysicalNext.Repeat.Height.grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25>
      <math|=\<beta\><rsub|F><rsup|3/8>> and the criterion
      <hlink|<verbatim|YM.PhysicalNext.Repeat.Height.pressureYoung>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L30-L35>;

      <item>the local derivative and connected-activity estimates, including
      the rate-<math|\<rho\><rsub|Q>> bound on the tree sum.
    </itemize-minus>

    <item>III.2: the targets <math|R<rsub|j*i>> with rates
    <math|\<less\>-<tfrac|7|16>> and <math|\<sigma\><rsub|i>+3\<less\><math-up|e><rsub|R<rsub|j*i>>>
    (the expense records of the company selection). Also the block-size and
    delay order into which III.15.5 and III.15.7 are inserted.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Cluster and polymer expansions with weighted per-site bounds
    (Kotecký\UPreiss, Commun. Math. Phys. 103 (1986); Brydges, <em|A short
    course on cluster expansions>, Les Houches 1984).

    <item>The small-field/large-field decomposition and Mayer expansion used
    in the RG step. The <math|L<rsup|-5>> estimate is an input from III.10,
    with its explicit support and analytic hypotheses.

    <item>The Leibniz rule and the chain rule for products of group elements
    along a path.

    <item><math|<around|\||e<rsup|z>-1|\|>\<leqslant\>2<around|\||z|\|>> for
    <math|<around|\||z|\|>\<leqslant\>1>.

    <item>Elementary asymptotics: <math|e<rsup|a<around|(|log log
    y|)><rsup|d>>> grows faster than every power of <math|log y> when
    <math|a\<gtr\>0> and <math|d\<gtr\>1>, and
    <math|e<rsup|-c*<space|0.17em>p<around|(|y|)><rsup|a>>> decays faster
    than every inverse power of <math|y> when <math|a,c\<gtr\>0>.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>Simplicity of <math|G>. In Part C it enters through the local
    single-occurrence estimate used in Lemma 4.16. Parts (A) and (B) do not
    use it.

    <item><math|<tfrac|3|8>+\<rho\>\<less\>0> for the targets. The value
    <math|<tfrac|3|8>> is the exponent of the per-vertex tree weight
    <math|\<beta\><rsub|F><rsup|3/8>> of III.10. In Lemma 4.17 it is used to
    make that weight times the activity summable. Since targets have
    <math|\<rho\><rsub|Q>\<gtr\>-<tfrac|1|2>>, the admissible window is
    <math|<around|(|-<tfrac|1|2>,-<tfrac|3|8>|)>>; the run uses
    <math|<around|(|-<tfrac|1|2>,-<tfrac|7|16>|)>>.

    <item>The tolerance table <math|h<rsub|j*i>> and the firmament are
    inputs. In the run they come from a fixed default
    (<hlink|<verbatim|YM.Integration.RiderResourceDynamics.defaultDynamics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RiderResourceDynamics.lean#L24-L25>).
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Part A separates the numerical loss from the fusion argument. On the
  coupling band, the hard bound is <math|C*e<rsup|-r*s<rsup|2>>> with
  <math|s\<geqslant\>p<around|(|y|)>/2>. Retaining
  <math|e<rsup|-\<rho\>*s<rsup|2>>> leaves
  <math|C*e<rsup|-<around|(|r-\<rho\>|)>*s<rsup|2>>> to absorb the
  support-counting factor. The soft bound decays because its negative power
  of <math|y> dominates its powers of <math|p<around|(|y|)>> and
  <math|\<cal-B\><around|(|y|)>>. The Mayer expansion then combines the hard
  activities with <math|e<rsup|\<ell\><rsub|i>>-1>; their weighted bounds add
  to <math|e<rsup|\<kappa\>>*a+2*b>. Both families may be supported on large
  fields. The terminology \Phard\Q and \Psoft\Q distinguishes their
  estimates.

  Part B represents a transported curvature slot as the projection of the
  single group word <math|\<omega\>\<cdot\>\<partial\>*\<pi\>\<cdot\>\<omega\><rsup|-1>>.
  Unitarity bounds each differentiated product without an exponential loss in
  path length. Each derivative contributes one direction norm, at most
  <math|t*<around|(|1+2*\<ell\>|)><rsup|P>>, and has at most <math|2*\<ell\>>
  possible link occurrences. For positive derivative order,
  <math|t<rsup|m>\<leqslant\>t>; at order zero, the small-field plaquette
  bound gives the factor <math|t>. The Leibniz rule gives <math|t<rsup|k>>
  for a product of <math|k> slots, with a polynomial loss in total path
  length.

  Part C first chooses a block-side threshold and then, for each permitted
  side and each fixed set of auxiliary data, chooses comparison functions and
  an entry coupling. The connected-activity bounds have rate
  <math|\<rho\><rsub|Q>>; the extra tree weight
  <math|\<beta\><rsub|F><rsup|3/8>> still leaves negative rate. A marked
  input family of size <math|\<delta\>\<leqslant\>\<beta\><rsub|F><rsup|-11/10>>
  gives an anchored output bound <math|<around|(|C<rprime|'>/L+o<around|(|1|)>|)>*\<delta\>>,
  subject to the support and local analytic conditions in Lemma 4.16.
  Clusters with at least one marked occurrence and <math|m> further
  occurrences outside the inserted leaves gain an additional factor
  <math|S<rprime|'><around|(|x|)><rsup|m>> of negative rate. At each fixed
  expansion order, the tail bounds are small enough to absorb any prescribed
  power of <math|g<around|(|\<beta\>|)>>. Finally, finitely many requests at
  each stage are met by enlarging the entry coupling and spatial-size
  thresholds.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Elementary asymptotics><label|41-elementary-asymptotics>

  <strong|Lemma 4.1.> For every <math|k\<in\>\<bbb-N\>>, as
  <math|x\<to\>\<infty\>>:

  <\enumerate>
    <item><math|p<around|(|x|)><rsup|a>*g<around|(|x|)><rsup|q>\<to\>0> for
    all <math|a\<in\>\<bbb-R\>> and <math|q\<gtr\>0>;

    <item><math|<around|(|1+\<cal-B\><around|(|x|)>|)><rsup|k>/p<rsub|d><around|(|x|)><rsup|a>\<to\>0>
    for <math|d\<gtr\>1> and <math|a\<gtr\>0>, where
    <math|p<rsub|d><around|(|x|)>=e<rsup|<around|(|log log x|)><rsup|d>>>;

    <item><math|g<around|(|x|)><rsup|q>*e<rsup|-c*<space|0.17em>p<rsub|d><around|(|x|)><rsup|a>>\<to\>0>
    for every real <math|q>, <math|c,a\<gtr\>0> and <math|d\<gtr\>1>.
  </enumerate>

  <em|Sketch:> substitute <math|u=log log x>, so that <math|log x=e<rsup|u>>;
  each claim reduces to a polynomial or exponential in <math|u> against
  <math|e<rsup|u>> or <math|e<rsup|u<rsup|d>>>. <em|Lean:>
  <hlink|<verbatim|Clocks.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean>;
  <hlink|<verbatim|YM.Next.Scheduling.Clock.light>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L100-L106>,
  <hlink|<verbatim|YM.Next.Scheduling.Clock.ceiling_cheaper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L110-L120>,
  <hlink|<verbatim|YM.Next.Scheduling.Clock.burnt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L141-L152>.

  <subsection|4.2 Pair-step rates><label|42-pair-step-rates>

  <strong|Lemma 4.2 (III.15.1).> Under the hypotheses of III.15.1, the rate
  conditions hold eventually, uniformly over the coupling band and
  <math|B\<leqslant\>\<cal-B\><around|(|y|)>>.

  <em|Proof sketch:>

  <\enumerate>
    <item>Put <math|\<eta\>=<around|(|r-\<rho\>|)>/4>. On the band,
    <math|g<around|(|\<beta\>|)>\<leqslant\>2*g<around|(|y|)>>, so
    <math|s\<geqslant\>p<around|(|y|)>/2>. Hence
    <math|e<rsup|\<kappa\>><space|0.17em><math-up|strong>=C*e<rsup|-<around|(|r-\<rho\>|)>*s<rsup|2>>\<leqslant\>h<around|(|y|)>\<assign\>C*e<rsup|-\<eta\>*p<around|(|y|)><rsup|2>>>.

    <item>Put <math|v=h+2<space|0.17em><math-up|mild>>. For every <math|k>,
    <math|<around|(|1+\<cal-B\>|)><rsup|k>*v\<to\>0>:

    <\itemize-minus>
      <item>for <math|h>, write <math|<around|(|1+\<cal-B\>|)><rsup|k>*e<rsup|-\<eta\>*p<rsup|2>>=<around*|[|<around|(|1+\<cal-B\>|)><rsup|k>*g|]>\<cdot\><around*|[|g<rsup|-1>*e<rsup|-\<eta\>*p<rsup|2>>|]>>
      and use Lemma 4.1(1, 2, 3);

      <item>for <math|<math-up|mild>>, write
      <math|<around|(|1+\<cal-B\>|)><rsup|d+k>*p<rsup|e>*g<rsup|q>=<around*|[|<around|(|1+\<cal-B\>|)><rsup|d+k>/p|]>\<cdot\><around*|[|p<rsup|1+e>*g<rsup|q>|]>>.
    </itemize-minus>

    <item>With <math|k=4>: <math|<around|(|2*B+1|)><rsup|4>*\<gamma\>\<leqslant\>2<rsup|4>*<around|(|1+\<cal-B\>|)><rsup|4>*v\<leqslant\>1>
    eventually.

    <item><math|e<rsup|v>-1\<leqslant\>1> eventually gives
    <math|<math-up|quote><around|(|\<kappa\>,\<gamma\>|)>\<leqslant\>e<rsup|-\<kappa\>>>,
    and <math|<math-up|mild>\<to\>0> gives
    <math|<math-up|mild>\<leqslant\>1>.
  </enumerate>

  All thresholds are independent of <math|\<beta\>> and of
  <math|B\<leqslant\>\<cal-B\><around|(|y|)>>. <em|Lean:>
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Pairing.currency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L76-L139>,
  the two private asymptotic estimates in
  <hlink|<verbatim|Economy.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean>.
  The same file also defines the record of these rate conditions along the
  chosen sequence of scales.

  <subsection|4.3 Merging hard and soft families><label|43-merging-hard-and-soft-families>

  <strong|Lemma 4.3 (blend).> Let <math|p,q\<geqslant\>0> satisfy
  <math|<math-up|Hit><rsub|B><around|(|p;\<sigma\>+1|)>\<leqslant\>a> on
  <math|<around|(|X<rsub|i>|)>> and <math|<math-up|Hit><rsub|B><around|(|q;\<sigma\>+1|)>\<leqslant\>b>
  on <math|<around|(|X<rprime|'><rsub|i>|)>>. Then the weights
  <math|<around|(|e<rsup|\<kappa\>>*p<rsub|i>|)>\<sqcup\><around|(|2*q<rsub|i>|)>>
  on the disjoint union satisfy <math|<math-up|Hit><rsub|B><around|(|\<cdummy\><space|0.17em>;\<sigma\>+1|)>\<leqslant\>e<rsup|\<kappa\>>*a+2*b>.

  <em|Sketch:> multiply a hit bound by a constant, then add two summable
  families. <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.give>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L78-L86>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.blend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L88>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.merges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L98-L105>.

  <strong|Lemma 4.4 (activity bounds of the merged family).> Under the
  nonempty-support and positive-exponent conventions of III.15.2, assume
  <math|p<rsub|i>,q<rsub|i>\<geqslant\>0>,
  <math|<around|\||F<rsub|i>|\|>\<leqslant\>p<rsub|i>>,
  <math|<around|\||\<ell\><rsub|i>|\|>\<leqslant\>q<rsub|i>>, the soft hit
  bound <math|b>, and <math|b\<leqslant\>1>. Then
  <math|<around|\<\|\|\>|F<rsub|i>|\<\|\|\>>\<leqslant\>e<rsup|-\<kappa\>>*<around|(|e<rsup|\<kappa\>>*p<rsub|i>|)>>
  and <math|<around|\||e<rsup|\<ell\><rsub|i>>-1|\|>\<leqslant\>2*q<rsub|i>>.

  <em|Sketch:>

  <\enumerate>
    <item>Dropping one unit of support exponent gives a sum bound for the
    weights <math|e<rsup|\<sigma\>*N<around|(|X<rprime|'><rsub|i>|)>>*q<rsub|i>>.

    <item>A single term is at most the sum, so
    <math|<around|\||\<ell\><rsub|i>|\|>\<leqslant\>q<rsub|i>\<leqslant\>e<rsup|\<sigma\>*N<around|(|X<rprime|'><rsub|i>|)>>*q<rsub|i>\<leqslant\>b\<leqslant\>1>.

    <item>Then <math|<around|\||e<rsup|z>-1|\|>\<leqslant\>2<around|\||z|\|>>
    for <math|<around|\||z|\|>\<leqslant\>1>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.shares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L107-L117>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.drop_reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L64-L76>.

  <strong|Lemma 4.5 (III.15.2).> Under the hypotheses of III.15.2, the fusion
  input condition holds, with witness <math|<around|(|\<kappa\>,e<rsup|\<kappa\>>*a+2*b,a|)>>.

  <em|Sketch:> the original-family estimate combines the structural
  assumptions, the regular bound <math|\<delta\>>, the hard sup bounds and
  the reduction of the support exponent by one. The merged-family estimate
  uses <math|\<gamma\>\<geqslant\>0> and <math|\<kappa\>\<geqslant\>0>, the
  capital inequality, Lemma 4.3 and Lemma 4.4. The quote inequality is the
  last rate condition. <em|Lean:> <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.tender>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L124-L133>.

  <subsection|4.4 Slots and atoms><label|44-slots-and-atoms>

  <strong|Lemma 4.6 (a slot is one group word).> For every slot <math|s>,
  site <math|o> and configuration <math|U>,

  <\equation*>
    s<around|(|U,o|)>=\<Pi\><around*|(|U<rsub|\<omega\>\<cdot\>\<partial\>*\<pi\>\<cdot\>\<omega\><rsup|-1>>|)>,<space|2em>\<Pi\><around|(|A|)>=\<cal-P\><rsub|G><around*|(|<tfrac|1|2><around|(|A-A<rsup|\<ast\>>|)>|)>,<space|2em><around|\<\|\|\>|\<Pi\><around|(|A|)>|\<\|\|\>>\<leqslant\>\<kappa\><rsub|G><rsup|-1><around|\<\|\|\>|A|\<\|\|\>>.
  </equation*>

  Here <math|\<cal-P\><rsub|G>> is the colour-coordinate projection with the
  normalization of <math|G>.

  <em|Sketch:> <math|\<cal-C\>*<around|(|h*g*h<rsup|-1>|)>=<math-up|Ad><around|(|h|)>*<space|0.17em>\<cal-C\><around|(|g|)>>.
  The detour has length <math|2\|\<omega\>\|+4\<leqslant\>2<around|\||s|\|>>.
  <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.detour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L64-L65>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.projector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L67-L68>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.hangs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L70-L80>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.norm_projector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L82-L88>.

  <strong|Lemma 4.7 (derivatives of a word).> Let <math|w> be a product of
  link variables and inverses with <math|n> link uses, and let
  <math|T\<geqslant\>0>. Write <math|\<iota\><rsub|G>> for the
  colour-to-matrix map. Suppose the matrix representative of every increment
  satisfies <math|<around|\<\|\|\>|\<iota\><rsub|G><around|(|A<rsub|e>|)>|\<\|\|\>>=\<kappa\><rsub|G><around|\<\|\|\>|A<rsub|e>|\<\|\|\>>\<leqslant\>T>
  on every used link <math|e>, for every direction in the list
  <math|<wide|A|\<vect\>>>. Then

  <\equation*>
    <around|\<\|\|\>|\<partial\><rsub|<wide|A|\<vect\>>>*U<rsub|w>|\<\|\|\>>\<leqslant\><around|\<\|\|\>|1|\<\|\|\>>*<space|0.17em><around|(|T*n|)><rsup|<around|\||<wide|A|\<vect\>>|\|>>.
  </equation*>

  <em|Sketch:> the Leibniz rule; each derivative replaces one factor by its
  left increment. <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.Path.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/GridCost.lean#L184-L197>.

  <strong|Lemma 4.8 (III.15.3).> Under the hypotheses of III.15.3, the slot
  derivative bound holds.

  <em|Sketch:>

  <\enumerate>
    <item>Every used link basepoint of the detour is within distance
    <math|2*\<ell\>> of <math|o>. Admissible directions therefore give
    <math|T=\<kappa\><rsub|G>*t*<around|(|1+2*\<ell\>|)><rsup|P>>, and
    <math|T\<cdot\>2*\<ell\>\<leqslant\><math-up|margin>\<cdot\>t>.

    <item>Lemma 4.7, then <math|\<Pi\>>, give
    <math|\<kappa\><rsub|G><rsup|-1><around|\<\|\|\>|1|\<\|\|\>><around|(|<math-up|margin><space|0.17em>t|)><rsup|m>>.

    <item>Since <math|<math-up|margin>\<geqslant\>1>, <math|t\<leqslant\>1>
    and <math|1\<leqslant\>m\<leqslant\>K>, this is at most
    <math|\<kappa\><rsub|G><rsup|-1><around|\<\|\|\>|1|\<\|\|\>><space|0.17em><math-up|margin><rsup|K>t>.

    <item>For <math|m=0>, use the order-zero small-field slot bound.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.slotPays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L108-L159>.

  <strong|Lemma 4.9 (III.15.4).> Under the hypotheses of III.15.4, the atom
  derivative bound and its closed form hold.

  <em|Sketch:>

  <\enumerate>
    <item>Extract colour components by an orthonormal projection.

    <item>Apply the Leibniz rule to the product of the <math|k> leg
    components: two derivative bounds <math|c<rsub|1>,c<rsub|2>> up to order
    <math|K> give <math|2<rsup|K>*c<rsub|1>*c<rsub|2>>.

    <item>Multiply by <math|c<rsub|b>> and sum over <math|b>.

    <item>The closed form follows from <math|<math-up|slotCost><around|(|P,K,\<ell\>|)>=<math-up|slotCost><around|(|P,K,0|)>*<around|(|\<ell\>+1|)><rsup|<around|(|P+1|)>*K>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|YM.Next.Scheduling.Wages.fin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L56-L71>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.scan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L85-L89>.

  <subsection|4.5 The Chron chain (Part C)><label|45-the-chron-chain-part-c>

  The following conventions specify the conditional estimates in this chain.
  An <em|admissible step record> consists of step data with the prescribed
  patch, a stamped tube, an input representation <math|R>, and its
  connected-activity hypotheses at <math|<around|(|W,x,\<mu\>,L,Q|)>>. A
  <em|marked input> <math|<around|(|E,w,\<delta\>|)>> is a set <math|E> of
  regular input indices with derivative bounds <math|w<rsub|i>\<geqslant\>0>,
  zero outside <math|E>, satisfying

  <\equation*>
    <big|sum><rsub|i:<space|0.17em>o<rsub|i>=z>e<rsup|\<sigma\><rsub|R>*N<rsub|B<rsub|R>><around|(|X<rsub|i>|)>>*w<rsub|i>\<leqslant\>\<delta\><space|2em><text|for
    every fine site >z.
  </equation*>

  Here <math|o<rsub|i>,X<rsub|i>> are the input anchors and supports, and the
  derivative bounds use the input parameter point. In particular,
  <math|\<delta\>\<geqslant\>0>.

  For a finite family of inserted leaves with supports
  <math|Z<rsub|\<alpha\>>>, nonnegative coefficients
  <math|l<rsub|\<alpha\>>>, attached root sets <math|A<rsub|\<alpha\>>> and
  leaf weights <math|\<omega\><rsub|\<alpha\>>>, the <em|leaf-scale
  condition> with parameters <math|<around|(|n,\<sigma\>,Y|)>> requires
  <math|Y\<geqslant\>0>, at most <math|n> roots over each coarse site, and

  <\equation*>
    <big|sum><rsub|\<alpha\>:<space|0.17em>v\<in\>A<rsub|\<alpha\>>>e<rsup|\<sigma\>*N<rsub|B<rsub|R>><around|(|Z<rsub|\<alpha\>>|)>>*\<omega\><rsub|\<alpha\>>\<leqslant\>Y<space|2em><text|for
    every root >v.
  </equation*>

  The weights <math|\<omega\><rsub|\<alpha\>>> include the leaf norm and
  <math|l<rsub|\<alpha\>>>, and each positive weight must have an attached
  root lying in its leaf support. The <em|radius condition at
  <math|\<sigma\>>> is <math|<around|(|<math-up|rel><rsub|Q>+1|)>*10*c<rsub|h<rsub|Q>+5>/L+2*\<varepsilon\><rsub|Q>\<leqslant\>\<sigma\>>.

  A cluster together with chosen leaf insertions has <math|N> <em|remaining
  occurrences>: the sum, over its vertices, of the numbers of input
  occurrences outside those insertions. It is <em|marked> if at least one
  remaining occurrence comes from <math|E>. Thus <math|N\<geqslant\>1> for a
  marked cluster, but the other remaining occurrences need not be marked. The
  insertion count is the total number of leaves, counted with multiplicity.
  These are the two counts used below.

  <strong|Lemma 4.10 (quotation and acceptance).> Let <math|t,u> be stage
  profiles, <math|C> a library of order <math|<math-up|ord><around|(|u|)>>,
  <math|r<rprime|'>\<in\>\<bbb-N\>> and <math|h\<gtr\>0>. There are
  <math|E\<geqslant\>1> and <math|k> such that:

  <\itemize-minus>
    <item>the quotation bound holds with exponents
    <math|<around|(|\<sigma\><rsub|t>,\<sigma\><rsub|u>+2|)>> and constant
    <math|E> under the support and analytic hypotheses of III.15.5;

    <item>for every <math|L\<geqslant\>k>:
    <math|20*<around|(|\<sigma\><rsub|u>+2|)><math-up|toll><around|(|r<rprime|'>|)>\<leqslant\>L*\<sigma\><rsub|t>>
    and <math|E/L\<leqslant\>h>.
  </itemize-minus>

  <em|Sketch:> the quotation theorem of III.10 gives an <math|L>-independent
  <math|E>. Then <math|E/L\<to\>0> and <math|L*\<sigma\><rsub|t>\<to\>\<infty\>>.
  The return-fee estimate gives the factor <math|L<rsup|-5>>. Summing over
  the <math|L<rsup|4>> fine sites of a block leaves <math|E/L>, by the
  anchored-sum estimate. <em|Lean:> inner step of
  <hlink|<verbatim|YM.RemainderComparison.Chron.sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>;
  <hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Release.quoting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Choirs.lean#L28-L29>.

  <strong|Lemma 4.11 (radius cost).> If <math|b\<gtr\>0> and
  <math|b+2*\<varepsilon\><rsub|Q>\<leqslant\>v>, then
  <math|<around|(|<math-up|rel><rsub|Q>+1|)>*10*<space|0.17em>c<rsub|h<rsub|Q>+5>/L+2*\<varepsilon\><rsub|Q>\<leqslant\>v>
  for all large <math|L>. In III.15.5, take <math|b=\<varepsilon\><rsub|Q>>:
  the target condition gives <math|3*\<varepsilon\><rsub|Q>\<less\>4*\<varepsilon\><rsub|Q>\<less\>\<sigma\><rsub|j>>.

  <em|Sketch:> multiply the desired inequality by <math|L\<gtr\>0> and choose
  <math|L> so large that <math|<around|(|<math-up|rel><rsub|Q>+1|)>*10*c<rsub|h<rsub|Q>+5>\<leqslant\>b*L>.
  <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Lyric.bidLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L37-L42>.

  <strong|Lemma 4.12 (comparison functions).> Fix a target <math|Q>, a patch,
  stages <math|E,E<rprime|'>>, a kernel choice, an order datum at <math|W>, a
  songbook, a scrollwork, <math|\<mu\>\<gtr\>0>, and rays satisfying the
  heart condition for <math|<around|(|E<rprime|'>,<math-up|e><rsub|Q>|)>>.
  There is a poster <math|D> such that <math|d<around|(|D|)>\<gtr\>0>, its
  paint-supply condition holds, and its radius, charge and four comparison
  functions are reserves. Eventually in <math|x>, it satisfies the
  conditional comparison statement, the chart-radius estimates and the
  axis-chart existence statement required by the poster condition.

  <em|Sketch:> obtain the radius and chart estimates from the chart
  construction, and choose the paint constant. The comparison-function
  theorem applies when the chart parameter is positive; otherwise the chart
  hypotheses are inconsistent. It requires positive comparison parameters
  <math|a,d>, a subpower bound on the volume function, reserves for the
  radius, charge and derivative control, paint supply, and orders satisfying
  <math|j+<around|(|r+1|)>+r+2\<leqslant\>n> and <math|n+N\<leqslant\>k>. The
  ray heart condition supplies these order inequalities. It produces four
  reserve functions, uniformly over the subsequent step and chart choices.
  Its conclusion is conditional on local derivative bounds, the chart
  estimates and coefficient matching: derivatives through order <math|j> of
  the differences of the expansion coefficients through degree <math|r> have
  the prescribed bound. The proof combines finite-order exponential bounds,
  analytic expansion estimates and the assumed coefficient match. <em|Lean:>
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Poster.quorum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Metro.lean#L29-L51>,
  <hlink|<verbatim|YM.RemainderComparison.Herbal.compile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L41-L56>,
  <hlink|<verbatim|YM.RemainderComparison.Herbal.Airstrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39>,
  <hlink|<verbatim|YM.RemainderComparison.Portal.JMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81>
  <em|(proof read; proofs of the analytic expansion estimates not expanded)>.

  <strong|Lemma 4.13 (connected-activity structures).> Fix an input
  specification and target <math|Q>. There is <math|l> such that, for every
  <math|L\<geqslant\>l>, branching patch, order <math|j>, auxiliary choice
  <math|\<chi\>>, <math|W,\<mu\>\<gtr\>0> and order datum at <math|W>, one
  can choose constants and functions before <math|x> as follows: <math|d,v>
  have gear <math|-<tfrac|1|2>>; <math|B,r,T<rprime|'>> have rate at most
  <math|0>; and <math|p> is a reserve, with
  <math|T<rprime|'>,p\<geqslant\>0>. Eventually in <math|x>, every admissible
  step record admits a connected-activity structure with the heavy,
  derivative and marked-input estimates specified by its three accompanying
  conditions.

  <em|Sketch:> combine the connected-activity existence theorem with the
  derivative estimates for its local factors and the marked-input estimate.
  The growth-class rules keep <math|d,v> at gear <math|-<tfrac|1|2>> and the
  remaining stated functions at rate at most <math|0>. The structure is
  chosen separately for each step record; the bounding functions are common
  to all those records. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Halo.seeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Nexus.lean#L12-L57>
  <em|(proof read; analytic inputs from III.10)>.

  <strong|Lemma 4.14 (remaining-occurrence bound).> There is a block-side
  threshold depending only on the input specification and <math|Q> such that,
  for every <math|L> above it and every branching patch, the following holds.
  Fix the remaining data of Lemma 4.13 and <math|a\<geqslant\>0>,
  <math|\<varepsilon\>\<gtr\>0> with <math|a+2*\<varepsilon\>\<leqslant\><math-up|e><rsub|Q>>.
  One can choose bounding functions such that, for every fixed pair of orders
  <math|I,J>, reserve <math|Y> and nonnegative integer-valued function
  <math|n> whose real-valued cast is a reserve, there are a reserve <math|V>
  and a function <math|S<rprime|'>> of gear <math|q\<less\>0> with the
  following property. Eventually in <math|x>, every admissible step record
  admits a connected-activity structure for which the following holds. For
  every finite leaf family satisfying the leaf-scale condition
  <math|<around|(|n<around|(|x|)>,\<sigma\>,Y<around|(|x|)>|)>> and the
  radius condition at <math|\<sigma\>>, every marked input with
  <math|\<delta\>\<leqslant\>\<beta\><rsub|F><rsup|-11/10>>, and every
  <math|m\<in\>\<bbb-N\>>, the bills restricted to marked clusters with
  <math|N\<geqslant\>1+m> remaining occurrences and insertion count at most
  <math|I> satisfy

  <\equation*>
    <math-up|Hit><rsub|\<cal-B\><around|(|x|)>><around|(|<math-up|bill>;a|)>\<leqslant\>V<around|(|x|)>*S<rprime|'><around|(|x|)><rsup|m>*\<delta\>.
  </equation*>

  The derivative order is <math|j> and the support-polynomial order in the
  bill is <math|J>. The bill is formed from the local majorant supplied by
  the chosen structure.

  <em|Sketch:> increase the weights of the remaining occurrences by a factor
  whose inverse has negative gear. On the indicated clusters the inflated
  product contains at least one marked factor and <math|m> further factors.
  Apply the weighted cluster bound and divide by those factors. The
  leaf-scale and radius conditions control the inserted leaves; the insertion
  cap <math|I> controls the accompanying polynomial losses. <em|Lean:>
  <hlink|<verbatim|YM.RemainderComparison.Halo.ramp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Tome.lean#L33-L65>
  <em|(proof read; weighted-cluster estimates used as inputs)>.

  <strong|Lemma 4.15 (restriction to a cluster predicate).> Fix an admissible
  step record, a connected-activity structure, a nonnegative local majorant
  satisfying its derivative condition, nonnegative leaf coefficients and
  nonnegative vertex weights <math|\<gamma\>>. Let <math|a\<geqslant\>0>,
  <math|e<rsub|1>,\<delta\>\<gtr\>0> and <math|q<rprime|'>\<less\>1>. Suppose
  the polymer majorant has hit bound <math|e<rsub|1>> at exponent
  <math|a+2*\<delta\>>, and its degree price with slack <math|\<delta\>> is
  at most <math|q<rprime|'>>. If a cluster predicate <math|V> and
  <math|v\<geqslant\>0> satisfy <math|1\<leqslant\>v*<big|prod>\<gamma\>> on
  <math|V>, then the restricted bills have hit bound at exponent <math|a> at
  most

  <\equation*>
    v*A<rsub|\<delta\>><around|(|x;j,m|)>*e<rsub|1>*<around|(|1-q<rprime|'>|)><rsup|-1>,<space|2em>A<rsub|\<delta\>><around|(|x;j,m|)>=<around|[|4*<around|(|2*\<cal-B\><around|(|x|)>+1|)>|]><rsup|m*j>*<around|(|m*j|)>!<space|0.17em>\<delta\><rsup|-m*j>*e<rsup|\<delta\>>.
  </equation*>

  The bill uses derivative order <math|j> and support-polynomial order
  <math|m>.

  <em|Sketch:> the logarithmic cluster-tail estimate gives the geometric sum
  <math|e<rsub|1>/<around|(|1-q<rprime|'>|)>>. Absorb
  <math|<around|(|1+N|)><rsup|m*j>> into <math|e<rsup|\<delta\>*N>>, using
  <math|N<rsup|m*j>*e<rsup|-\<delta\>*N>\<leqslant\><around|(|m*j|)>!\<delta\><rsup|-m*j>>
  with the corresponding shift by <math|1>. The spatial factor is
  <math|<around|[|4*<around|(|2*\<cal-B\><around|(|x|)>+1|)>|]><rsup|m*j>>.
  Finally insert <math|v*<big|prod>\<gamma\>\<geqslant\>1> on the retained
  clusters. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Lyric.gathers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L49-L76>,
  <hlink|<verbatim|YM.RemainderComparison.Lyric.run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Salary.lean#L82-L100>.

  <strong|Lemma 4.16 (anchored bound for marked outputs).> There is a
  block-side threshold depending only on the input specification and <math|Q>
  such that the following holds for every <math|L> above it and every
  branching patch. Fix the remaining data of Lemma 4.13 and
  <math|a\<geqslant\>0>, <math|\<varepsilon\>\<gtr\>0> with
  <math|a+3*\<varepsilon\>\<leqslant\><math-up|e><rsub|Q>>. The
  connected-activity functions can be chosen as follows. Fix orders
  <math|J,r,I,n,P<rsub|0>> with <math|2\<leqslant\>n\<leqslant\>j>, assume
  <math|G> simple, and fix an auxiliary choice, a reserve <math|Y> and a
  nonnegative integer-valued function <math|i> whose cast is a reserve, a
  record with parameter at most <math|<tfrac|1|4>>, and a library of order
  <math|n>. There are a reserve <math|V> and a function <math|V<rprime|'>> of
  some rate <math|q<rprime|'>\<less\>0> such that, eventually in <math|x>,
  every admissible step record has:

  <\itemize-minus>
    <item>the marked hit bound <math|V<around|(|x|)>*\<delta\>> at exponent
    <math|a+\<varepsilon\>>, for leaf families with scale
    <math|<around|(|i<around|(|x|)>,\<sigma\>,Y<around|(|x|)>|)>> satisfying
    the radius condition, marked inputs <math|\<delta\>\<leqslant\>\<beta\><rsub|F><rsup|-11/10>>,
    and insertion count at most <math|I>;

    <item>an anchored output bound <math|<around|(|C<rsub|0>/L+V<rprime|'><around|(|x|)>|)>*\<delta\>>
    at exponent <math|a>, provided the output parameter point has radius
    <math|\<cal-B\><around|(|x|)>>, threshold <math|t<around|(|x|)>> and
    power <math|P<rsub|0>\<leqslant\>J>, the library's compatibility
    condition holds, <math|r\<geqslant\>h<rsub|Q>+5>, and the acceptance,
    quotation and local analytic smallness conditions hold with quotation
    constant <math|C<rsub|0>>.
  </itemize-minus>

  The anchored bound includes regularity and all left derivatives through the
  output order on the small-field supports. The proof gives
  <math|q<rprime|'>=max <around|(|q,-<tfrac|1|2>|)>>, where <math|q\<less\>0>
  is the gear exponent in Lemma 4.14.

  <em|Sketch:> separate clusters with a single remaining occurrence from
  those with at least two, and separate supports whose covering number
  exceeds <math|\<cal-B\><around|(|x|)>>. The single-occurrence contribution
  uses the quotation bound and the sum over <math|L<rsup|4>> sites. Lemma
  4.14 bounds the other contributions by <math|V*S<rprime|'>> and
  <math|e<rsup|-\<varepsilon\>*\<cal-B\>>*V>. A further local comparison
  error has rate at most <math|-<tfrac|1|2>>. Their sum defines
  <math|V<rprime|'>>. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Solo.atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Solo/Barque.lean#L21-L61>
  <em|(proof read; local singleton estimate used as an input)>.

  <strong|Lemma 4.17 (tail bounds).> Fix <math|L>, <math|\<mu\>\<gtr\>0>,
  <math|a\<geqslant\>0>, <math|b\<gtr\>0> with
  <math|a+2*b\<leqslant\><math-up|e><rsub|Q>>, and
  <math|<tfrac|3|8>+\<rho\><rsub|Q>\<less\>0>. Fix orders <math|j,n,k,s,J>,
  functions <math|B,p<rsub|0>> of rate at most <math|0>, and a nonnegative
  integer-valued function <math|m> whose cast has rate at most <math|0>. Put
  <math|G<rsub|\<ast\>><around|(|x|)>=\<beta\><rsub|F><around|(|x,L|)><rsup|3/8>>
  and <math|\<tau\><around|(|x|)>=G<rsub|\<ast\>><around|(|x|)><rsup|5>>. Let
  <math|I<around|(|x|)>> be the additional root-activity bound formed from
  <math|m,p<rsub|0>>, and let <math|\<Sigma\><around|(|x|)>> be the resulting
  tree-sum majorant with derivative factor
  <math|1+2<rsup|j>*B<around|(|x|)>>. Eventually in <math|x>:

  <\itemize-minus>
    <item>the degree prices of <math|G<rsub|\<ast\>>*<around|(|<around|(|<text|root
    activity>|)>+I|)>> and of <math|\<Sigma\>> are at most
    <math|<tfrac|1|2>>, with slacks <math|\<delta\><rsub|Q>> and <math|b>,
    respectively;

    <item><math|G<rsub|\<ast\>>\<geqslant\>1>, <math|I> is below the
    prescribed root allowance, and <math|G<rsub|\<ast\>><rsup|5*k+2*s>\<leqslant\>e<rsup|<math-up|mark>>>
    and <math|G<rsub|\<ast\>><rsup|5*k+2*s>\<leqslant\>e<rsup|\<varepsilon\><rsub|Q>*<around|\<lfloor\>|\<cal-B\>/100000|\<rfloor\>>>>;

    <item>for every <math|\<beta\>> in the band of <math|\<beta\><rsub|F>>,

    <\equation*>
      \<tau\><rsup|k>*G<rsub|\<ast\>><rsup|-<around|(|5*k+2*s|)>>*A<rsub|b><around|(|x;j,J|)>*<space|0.17em>2*\<Sigma\><around|(|x|)>\<leqslant\>g<around|(|\<beta\>|)><rsup|s>,
    </equation*>

    <\equation*>
      \<tau\><rsup|k>*e<rsup|-<math-up|mark>>*<space|0.17em>2<math-up|pledge><around|(|x|)>\<leqslant\>e<rsup|-<math-up|mark>/2>*g<around|(|\<beta\>|)><rsup|s>;
    </equation*>

    <item><math|e<rsup|-<math-up|mark>/2>\<leqslant\>e<rsup|-4*p<around|(|x|)><rsup|1/5>>>.
  </itemize-minus>

  <em|Sketch:> the additional root term has rate at most <math|-<tfrac|3|2>>.
  Thus <math|\<Sigma\>> has rate at most <math|<tfrac|3|8>+\<rho\><rsub|Q>\<less\>0>,
  and the polynomial spatial factors have rate at most <math|0>. These facts
  give the two degree-price inequalities. In the first displayed tail bound
  the factors <math|\<tau\><rsup|k>> and <math|G<rsub|\<ast\>><rsup|-5*k>>
  cancel; <math|G<rsub|\<ast\>><rsup|-2*s>> supplies
  <math|\<beta\><rsub|F><rsup|-3*s/4>>, sufficient for
  <math|g<around|(|\<beta\>|)><rsup|s>> uniformly on the band. The large
  marking exponent absorbs the remaining powers in the second bound.
  <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Lyric.epochs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L93-L120>,
  <hlink|<verbatim|YM.RemainderComparison.Lyric.Premium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L80-L89>.

  <strong|Lemma 4.18 (simultaneous derivative and tail estimates).> Suppose
  <math|<tfrac|3|8>+\<rho\><rsub|Q>\<less\>0>. There is <math|\<ell\>> such
  that, for every <math|L\<geqslant\>\<ell\>>, branching patch,
  <math|W,\<mu\>\<gtr\>0>, order datum, auxiliary choice, orders
  <math|j,J,k,s>, and <math|a\<geqslant\>0>,
  <math|\<varepsilon\>,\<Delta\>\<gtr\>0> with
  <math|a+2*\<varepsilon\>\<leqslant\><math-up|e><rsub|Q>>, the following
  holds. Fix a reserve <math|Y>, a nonnegative integer-valued function
  <math|n> whose cast is a reserve, and a function <math|p<rsub|0>> of any
  fixed finite rate. There are reserves <math|A,B,C> and a function <math|E>
  of rate <math|q\<less\>0> such that, eventually in <math|x>, each
  admissible step record admits three connected-activity structures with
  these properties:

  <\itemize-minus>
    <item>the first has the derivative estimates, mass condition and tail
    bounds of Lemma 4.17, and the required depth bound for
    <math|G<rsub|\<ast\>><rsup|5*k+2*s>>;

    <item><math|A<around|(|x|)>\<geqslant\>1>, and the full bill from the
    second has hit bound <math|B<around|(|x|)>> at exponent <math|a> for
    leaves whose coefficients have been divided by <math|A<around|(|x|)>>,
    whenever the original leaf-scale condition
    <math|<around|(|n<around|(|x|)>,\<sigma\>,Y<around|(|x|)>|)>> and radius
    condition hold;

    <item>the third gives hit bound <math|C<around|(|x|)>*E<around|(|x|)><rsup|i>*\<delta\>>
    at exponent <math|a> for marked clusters with <math|N\<geqslant\>1+i>,
    insertion count at most <math|k>, and
    <math|\<delta\>\<leqslant\>\<beta\><rsub|F><rsup|-11/10>>, under the same
    leaf-scale and radius conditions;

    <item>writing <math|\<pi\><rsub|\<Delta\>><around|(|x|)>=e<rsup|-\<Delta\>*<around|\<lfloor\>|\<cal-B\><around|(|x|)>/100000|\<rfloor\>>>>,
    the crop inequalities hold:

    <\equation*>
      \<pi\><rsub|\<Delta\>>*p<rsub|0>\<leqslant\>\<beta\><rsub|F><rsup|-11/10>,<space|2em>C*\<pi\><rsub|\<Delta\>>*p<rsub|0>\<leqslant\>g<around|(|\<beta\><rsub|H>|)><rsup|s>,<space|2em>\<pi\><rsub|\<Delta\>>*A<rsup|k>*B\<leqslant\>g<around|(|\<beta\><rsub|H>|)><rsup|s>.
    </equation*>
  </itemize-minus>

  The full and marked majorants also satisfy their local derivative
  conditions. Here <math|\<beta\><rsub|H>> is the coupling of the step
  record; the last bounds are for each fixed <math|s>.

  <em|Sketch:> use separate connected-activity structures for the mass bound,
  the full bill and the marked bill. Combine the full-bill estimate, Lemma
  4.14, Lemma 4.17 and the decay of <math|\<pi\><rsub|\<Delta\>>> against
  every function of finite rate. The three structures need not coincide.
  <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Muse.generation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L80-L96>,
  <hlink|<verbatim|YM.RemainderComparison.Muse.Roles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Muse/Baton.lean#L63-L77>
  <em|(proof read; connected-activity and full-bill estimates used as
  inputs)>.

  <strong|Lemma 4.19 (extending the comparison functions).> Suppose <math|G>
  is simple and <math|<tfrac|3|8>+\<rho\><rsub|Q>\<less\>0>. There is
  <math|\<ell\>> such that, for every branching patch of side at least
  <math|\<ell\>>, <math|W,\<mu\>\<gtr\>0>, order datum, songbook, scrollwork,
  auxiliary choice, mark number <math|r>, stage <math|E<rprime|'>>, rays with
  the heart property, library of order <math|<math-up|ord><around|(|E<rprime|'>|)>>,
  record with parameter at most <math|<tfrac|1|4>>, and financed poster
  <math|D>, there is a quarry <math|F> extending <math|D>, chosen before
  <math|x>, such that:

  <\itemize-minus>
    <item>its new functions <math|Y>, spin and <math|e> are reserves, its
    connected-activity bound <math|R<rsub|b>> has rate at most
    <math|\<rho\><rsub|Q>>, and its marked-output correction <math|h> has
    some negative rate;

    <item>eventually in <math|x>, every parameter point tempered to
    <math|E<rprime|'>> and every compatible admissible step record has the
    required local analytic bounds and a connected-activity structure with
    tree-sum bound at most <math|R<rsub|b><around|(|x|)>>;

    <item>its marked-output bound is <math|<around|(|C<rsub|0>/L+h<around|(|x|)>|)>*\<delta\>>,
    under all the marked-input, compatibility, acceptance, quotation and
    local analytic hypotheses of Lemma 4.16, with
    <math|r\<geqslant\>h<rsub|Q>+5>.
  </itemize-minus>

  <em|Sketch:> take the new reserve functions and the finite-rate tail
  function from Lemma 4.18. The tree-sum bound is twice the polynomial
  spatial factor times the connected-activity majorant, whose rate is at most
  <math|\<rho\><rsub|Q>>. Take <math|h=V<rprime|'>> from Lemma 4.16 and apply
  that lemma with an empty leaf family. The additional tail function is a
  field of the quarry but carries no separate growth assertion in its
  financing condition. <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Cadenza.rollBefore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L64-L80>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Instructions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L57-L60>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Staked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L47-L51>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Bequest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L44-L45>.

  <strong|Lemma 4.20 (III.15.6).> Under the hypotheses of III.15.6, the quay
  condition holds for all sufficiently large block sides.

  <em|Sketch:> take <math|n> from 4.19. For given data, 4.12 gives a poster,
  and 4.19 extends it to a quarry. The remaining step conditions hold
  eventually in <math|x> by their local analytic estimates and the scrollwork
  growth condition. Take <math|P<rsub|1>> beyond all of these thresholds.
  <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Cadenza.buoys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L47-L58>
  <em|(proof read; individual local analytic estimates not expanded)>.

  <strong|Lemma 4.21 (III.15.5).> Under the hypotheses of III.15.5, the
  launch data exist.

  <em|Sketch:> for each <math|<around|(|j,i|)>>, take <math|k<rsub|j*i>>
  (4.10), <math|g<rsub|j*i>> (4.20) and <math|n<rsub|j*i>> (4.11). Set

  <\equation*>
    f<rsub|j>=max<rsub|i\<in\><around|{|j,j-1|}>>
    g<rsub|j*i>+max<rsub|i\<in\><around|{|j,j-1|}>>
    k<rsub|j*i>+max<rsub|i\<in\><around|{|j,j-1|}>> n<rsub|j*i>
  </equation*>

  and take <math|C<rprime|'><rsub|j*i>=E<rsub|j*i>> from 4.10. <em|Lean:>
  <hlink|<verbatim|YM.RemainderComparison.Chron.sails>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L98-L111>.

  <strong|Lemma 4.22 (III.15.7).> Under the hypotheses of III.15.7, the
  quarries and a common enlargement of the delay data exist.

  <em|Sketch:>

  <\enumerate>
    <item>For each stage pair and slot, apply the pledge at
    <math|L=L<rsub|j>> (allowed since <math|k<rsub|j>\<leqslant\>L<rsub|j>>)
    to the slot's data. The chosen rays have the heart property because
    <math|\<sigma\><rsub|i>+3\<less\><math-up|e><rsub|R<rsub|j*i>>>. This
    gives a quarry <math|V<rsub|j*i*g>> and a threshold. The slot's extra
    condition holds eventually.

    <item>Set <math|<math-up|shells><rsub|j>=max
    <around|(|<math-up|shells><rsub|j><around|(|T<rsub|0>|)>,max<rsub|i\<in\><around|{|j,j-1|}>,g><around|(|4*\<ell\><rsub|g>+50|)>|)>>
    and <math|<math-up|growth><rsub|j>=max
    <around|(|<math-up|growth><rsub|j><around|(|T<rsub|0>|)>,1|)>>. The inner
    maximum is <math|0> when there are no request slots. Tiling follows from
    the scrollwork growth conditions.

    <item>Since there are finitely many slots and two stage pairs per
    <math|j>, choose <math|\<beta\><rsup|\<ast\>><rsub|j>> beyond all
    thresholds.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|YM.RemainderComparison.Chron.grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L33-L70>.

  <subsection|4.6 Records and other fragments (Part
  D)><label|46-records-and-other-fragments-part-d>

  The construction-run record collects local estimates, growth of the copy
  count, bounds for the selected representations, and the conditions required
  for later OPE and comparison arguments. Its fields are established when the
  run is assembled. The additional-expense records collect the hypotheses
  needed on the same selected run. The readout record extends three primitive
  conditions and adds a growth condition, a bound on block sizes by an
  iterated logarithm of the coupling, and cross-stage comparison
  inequalities.

  The unit also contains numerical definitions and lemmas for the RG05
  readout, the scale functions, and the instrument and postage records. These
  are not all mere projections: some prove asymptotic and transport
  estimates. The readout formulas and the remaining RG12 and R2I fragments
  are outside the detailed statements above; see Ÿ7.

  <em|Lean:> <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>,
  <hlink|<verbatim|YM.PhysicalNext.Repeat.Legato.R2I.Extras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Expenses.lean#L35-L45>,
  <hlink|<verbatim|YM.Integration.RG05Preconstruction.PrimitiveExtras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L41-L43>,
  <hlink|<verbatim|YM.Integration.RG05Preconstruction.ReadoutPurchase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L28-L39>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The active outputs III.15.1\U4 require uniform estimates in the coupling
  band and the volume. In III.15.1, the threshold must work for every
  <math|\<beta\>> in the band and every <math|B\<leqslant\>\<cal-B\><around|(|y|)>>.
  In III.15.3\U4, the constants depend on derivative order and path length
  but not on <math|t> or the torus side. The single-word representation and
  unitarity give that independence.

  Part C adds the conditional comparison bounds to the selected run, but
  those bounds are discarded in the final construction-run theorem. Its main
  estimates concern an inherited marked family: the anchored bound
  <math|<around|(|C<rprime|'>/L+o<around|(|1|)>|)>*\<delta\>> and the
  geometric gain per additional remaining occurrence. Their application
  requires the leaf-scale, radius, quotation and local analytic conditions.
  The gain counts all remaining occurrences, with at least one marked
  occurrence.

  The exponent <math|<tfrac|3|8>> is the tree-weight exponent inherited from
  III.10. Requiring <math|\<rho\><rsub|Q>\<less\>-<tfrac|3|8>> makes the
  relevant tree-sum majorant decay; the run's choice
  <math|\<rho\><rsub|Q>\<less\>-<tfrac|7|16>> leaves a margin greater than
  <math|<tfrac|1|16>>. The large-side threshold is independent of the later
  auxiliary data. The comparison functions and entry-coupling threshold may
  depend on those data, and the estimates then hold for all larger <math|x>.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|<math|g<around|(|\<beta\>|)>>>|<cell|<hlink|<verbatim|YM.Next.Scheduling.Clock.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L40>,
  <verbatim|gStep>>|<cell|<math|\<beta\><rsup|-1/2>>>>|<row|<cell|<math|p<around|(|x|)>>>|<cell|<hlink|<verbatim|YM.Next.Scheduling.Instrument.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L55>
  (plain), <hlink|<verbatim|YM.Next.Scheduling.Clock.watch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L42>
  <math|2>>|<cell|<math|e<rsup|<around|(|log log
  x|)><rsup|2>>>>>|<row|<cell|<math|t<around|(|x|)>>>|<cell|<hlink|<verbatim|YM.Pressure.temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>,
  <hlink|<verbatim|YM.Next.Scheduling.Instrument.t>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L59>>|<cell|small-field
  threshold <math|g<around|(|x|)>*p<around|(|x|)>>>>|<row|<cell|<math|\<cal-B\><around|(|x|)>>>|<cell|<hlink|<verbatim|YM.Pressure.radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>,
  <hlink|<verbatim|YM.Next.Scheduling.Clock.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Clocks.lean#L38>>|<cell|cluster
  radius <math|<around|\<lceil\>|<around|(|log
  x|)><rsup|2>|\<rceil\>>>>>|<row|<cell|<math|\<beta\><rsub|F><around|(|x,L|)>>>|<cell|<hlink|<verbatim|YM.Pressure.betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>>|<cell|<math|x+b<rsub|G>*log
  L>>>|<row|<cell|band of <math|y>>|<cell|<hlink|<verbatim|YM.Next.Scheduling.inBand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/Dues.lean#L99>>|<cell|<math|<around|[|y/4,4*y|]>>>>|<row|<cell|<math|<math-up|Rate><rsub|L><around|(|a|)>>>|<cell|<hlink|<verbatim|YM.ConnectedActivityE6.Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22-L23>>|<cell|<math|<around|\<lvert\>|w|\<rvert\>>\<leqslant\>\<beta\><rsub|F><rsup|v>>
  eventually, for every <math|v\<gtr\>a>>>|<row|<cell|reserve;
  <math|M<around|(|x|)>>>|<cell|<hlink|<verbatim|YM.RemainderComparison.Reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Access/Geometry.lean#L25-L26>,
  <hlink|<verbatim|YM.Push.AbsoluteSums.Delay.fineMonitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L24>>|<cell|<math|<around|\<lvert\>|w|\<rvert\>>\<leqslant\>M<rsup|k>>
  with <math|M=p<around|(|\<beta\><rsub|F>|)>>>>|<row|<cell|gear
  <math|a>>|<cell|<hlink|<verbatim|YM.RemainderComparison.Gear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Gear/Class.lean#L25>>|<cell|<math|\<beta\><rsub|F><rsup|-a>*w>
  is a reserve>>|<row|<cell|<math|<math-up|Hit><rsub|M><around|(|f;a|)>\<leqslant\>\<gamma\>>>|<cell|<hlink|<verbatim|YM.Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>>|<cell|weighted
  per-site polymer bound>>|<row|<cell|<math|<math-up|quote><around|(|\<kappa\>,\<gamma\>|)>>>|<cell|<hlink|<verbatim|YM.Bid.quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L18>>|<cell|<math|e<rsup|-\<kappa\>>*<around|(|e<rsup|\<gamma\>>-1|)>>>>|<row|<cell|rate
  conditions <math|<around|(|B,w,a,b,\<kappa\>|)>>>|<cell|<hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L33-L39>>|<cell|the
  five inequalities of III.15.1>>|<row|<cell|mild, strong,
  <math|\<kappa\>>>|<cell|<hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.Pairing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Economy.lean#L28-L36>
  (<verbatim|mild>, <verbatim|strong>, <verbatim|kGoal>)>|<cell|power-decaying
  and Gaussian pair-step costs>>|<row|<cell|hard and soft
  family>|<cell|<hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.hardCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L42-L43>,
  <hlink|<verbatim|YM.Progress.DirectedRecipe.Payments.softCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Tender.lean#L45-L46>>|<cell|forced
  activities and local exponential corrections>>|<row|<cell|Ingredients>|<cell|<hlink|<verbatim|YM.Progress.DirectedRecipe.Ingredients>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/DIRECTED_RECIPE/Batch.lean#L32-L33>>|<cell|input
  to the fusion of III.10>>|<row|<cell|slot <math|s>, atom
  <math|a>>|<cell|<verbatim|Slot>, <verbatim|Atom> (III.1)>|<cell|transported
  curvature; <math|k>-leg monomial>>|<row|<cell|small-field on
  <math|X>>|<cell|<hlink|<verbatim|YM.RG.Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>>|<cell|plaquettes
  touching <math|X> within chord <math|t> of <math|1>>>|<row|<cell|admissible
  direction>|<cell|<hlink|<verbatim|YM.RG.BudgetPoint.dirBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L141-L142>>|<cell|<math|<around|\<lVert\>|A<rsub|e>|\<rVert\>>\<leqslant\>t*<around|(|1+<math-up|dist><around|(|e,o|)>|)><rsup|P>>>>|<row|<cell|<math|<math-up|slotCost>>,
  <math|<math-up|margin>>, <math|<math-up|price>>>|<cell|<hlink|<verbatim|YM.Next.Scheduling.Wages.slotCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L95>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.margin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/SlotPay.lean#L94>,
  <hlink|<verbatim|YM.Next.Scheduling.Wages.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/SCHEDULE/TensorCost.lean#L52-L54>>|<cell|derivative
  constants of III.15.3\U4>>|<row|<cell|target <math|Q>;
  <math|\<rho\><rsub|Q>>, <math|<math-up|e><rsub|Q>>,
  <math|\<varepsilon\><rsub|Q>>>|<cell|<hlink|<verbatim|YM.ConnectedActivityE6.Target>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/OptionCost.lean#L62-L76>>|<cell|connected-activity
  target (rate, exponent, \<ldots\>)>>|<row|<cell|<math|\<beta\><rsub|F><rsup|3/8>>>|<cell|<hlink|<verbatim|YM.PhysicalNext.Repeat.Height.grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Height/Highway.lean#L25>>|<cell|per-vertex
  tree weight (III.10)>>|<row|<cell|pledge>|<cell|<hlink|<verbatim|YM.RemainderComparison.Chron.Pledge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L94-L95>>|<cell|launch
  conditions (1)\U(2) of III.15.5>>|<row|<cell|quay>|<cell|<hlink|<verbatim|YM.RemainderComparison.Cadenza.Quay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Syllabus.lean#L46>>|<cell|all
  step conditions available at side <math|L>>>|<row|<cell|quarry,
  financed>|<cell|<hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L21-L27>,
  <hlink|<verbatim|YM.RemainderComparison.Cadenza.Quarry.Financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Sheriff.lean#L34-L39>>|<cell|bounding
  functions of <math|x> with reserve/rate
  bounds>>|<row|<cell|Pillar>|<cell|<hlink|<verbatim|YM.RemainderComparison.Chron.Pillar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Corners.lean#L23-L28>>|<cell|pledge
  plus per-slot allotments and tilings>>|<row|<cell|radius
  cost>|<cell|<hlink|<verbatim|YM.RemainderComparison.Lyric.radiusCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Orbit.lean#L35-L36>>|<cell|<math|<around|(|<math-up|rel><rsub|Q>+1|)>*10*c<rsub|h+5>/L+2*\<varepsilon\><rsub|Q>\<leqslant\>v>>>|<row|<cell|comparison
  estimate>|<cell|<hlink|<verbatim|YM.RemainderComparison.Herbal.Airstrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Herbal/Orbit.lean#L33-L39>,
  <hlink|<verbatim|YM.RemainderComparison.Portal.JMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Wire.lean#L80-L81>>|<cell|interacting
  vs. model, with jets matched to order <math|r>>>|<row|<cell|heart
  condition>|<cell|<hlink|<verbatim|YM.RemainderComparison.Cadenza.Rays.Heart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L50-L59>>|<cell|support
  and order inequalities stated before III.15.6>>|<row|<cell|<math|B<rsub|P>,t<rsub|P>>>|<cell|<hlink|<verbatim|YM.RG.BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>>|<cell|cluster
  radius and threshold of a parameter point>>|<row|<cell|support
  enlargement>|<cell|<hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Walled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Depth.lean#L44>>|<cell|<math|Y>
  lies within distance <math|r*\<cal-B\><around|(|x|)>> of the coarse image
  of <math|X>>>|<row|<cell|local analytic
  smallness>|<cell|<hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Lute.Plented>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L25-L26>>|<cell|numerical
  hypothesis on the return fee>>|<row|<cell|library
  compatibility>|<cell|<hlink|<verbatim|YM.PhysicalNext.JointLoad.Heir.Plays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Sonata.lean#L66-L75>>|<cell|registered
  local estimates for the library>>|<row|<cell|marked
  input>|<cell|<hlink|<verbatim|YM.RemainderComparison.Halo.Presents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Cut.lean#L26-L29>>|<cell|derivative
  bounds on an inherited regular subfamily>>|<row|<cell|leaf-scale
  condition>|<cell|<hlink|<verbatim|YM.RemainderComparison.Lyric.Scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Flux.lean#L54-L59>>|<cell|nonnegative
  weights, attached roots, rooted bound and occupancy>>|<row|<cell|<math|N>;
  marked cluster>|<cell|<hlink|<verbatim|YM.RemainderComparison.Halo.gross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L39>>|<cell|remaining
  occurrences after removing leaf insertions>>|<row|<cell|insertion
  count>|<cell|<hlink|<verbatim|YM.RemainderComparison.Lyric.notes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Plectrum.lean#L33>>|<cell|number
  of inserted leaves, with multiplicity>>|<row|<cell|<math|A<rsub|b><around|(|x;j,J|)>>>|<cell|<hlink|<verbatim|YM.ConnectedActivityE6.Blaze.March.collars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Armada.lean#L25>>|<cell|polynomial
  spatial factor in Lemma 4.15>>|<row|<cell|<math|\<pi\><rsub|\<Delta\>><around|(|x|)>>>|<cell|<hlink|<verbatim|YM.RemainderComparison.Sleet.pigment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Sleet/Flint.lean#L42>>|<cell|<math|e<rsup|-\<Delta\>*<around|\<lfloor\>|\<cal-B\><around|(|x|)>/100000|\<rfloor\>>>>>>|<row|<cell|tempered
  point>|<cell|<hlink|<verbatim|YM.RemainderComparison.Cadenza.Temper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Cadenza/Cord.lean#L63-L69>>|<cell|agreement
  of scale, threshold and stage parameters>>|<row|<cell|comparison
  structure>|<cell|<hlink|<verbatim|YM.RemainderComparison.Portal.Pan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Portal/Lamps.lean#L51-L58>>|<cell|analytic
  expansion data and coefficient match>>|<row|<cell|<math|\<iota\><rsub|G>>;
  <math|\<cal-P\><rsub|G>>>|<cell|<hlink|<verbatim|YM.Gauge.colorMat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L64>,
  <hlink|<verbatim|YM.Gauge.projectColor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L96-L97>>|<cell|colour-to-matrix
  map; normalized colour projection>>|<row|<cell|<math|I<around|(|x|)>>;
  <math|\<Sigma\><around|(|x|)>>>|<cell|<hlink|<verbatim|YM.RemainderComparison.Lyric.ink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Forecast.lean#L31>,
  <hlink|<verbatim|YM.RemainderComparison.Lyric.salaries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Lyric/Store.lean#L62-L63>>|<cell|additional
  root term; tree-sum majorant in Lemma 4.17>>|<row|<cell|<math|<math-up|pledge><around|(|x|)>>>|<cell|<hlink|<verbatim|YM.PhysicalNext.Repeat.Daisy.pledgeQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Daisy/Corral.lean#L26>>|<cell|tail
  coefficient in Lemma 4.17>>|<row|<cell|marked
  cluster>|<cell|<hlink|<verbatim|YM.RemainderComparison.Halo.dyed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Halo/Strike.lean#L37>>|<cell|a
  remaining occurrence belongs to the inherited family>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Scope of Part C.> The selected-run theorem retains its
    comparison data as an additional conjunct; the final construction-run
    theorem discards that conjunct. A written proof using only the final run
    properties can omit these comparison conclusions. An all-order expansion
    using them would also have to supply the coefficient-matching hypotheses;
    existence of the comparison functions alone does not supply that match.

    <item><strong|Local analytic conditions.> The quotation bound and Lemmas
    4.12, 4.16 and 4.19 retain the source's support-enlargement,
    library-compatibility and analytic-smallness conditions. Their full
    numerical definitions, and the local analytic, readiness, compatibility,
    resonance and tolerance conditions in III.15.6, remain to be written out.
    In particular, the local analytic condition attached to a funded step has
    not been translated into an independent mathematical statement.

    <item><strong|Provider proofs.> The assembly proofs in Ÿ4 have been read.
    The deeper proofs of the local singleton estimate, weighted-cluster
    bounds, full-bill estimates and analytic expansion estimates have not all
    been checked here. The contraction and occurrence-count statements are
    consequences of the cited conditional estimates, not unconditional bounds
    for arbitrary local terms.

    <item><strong|Historical interpretation.> The estimate <math|L<rsup|-5>>
    per fine site and its conversion to <math|L<rsup|-1>> per coarse block
    are explicit. Identifying it with a particular dimension-five operator is
    not justified by those inequalities alone. The reason for the choice
    <math|<tfrac|3|8>> belongs to III.10's tree estimates.

    <item><strong|Other fragments.> The construction-run, additional-expense
    and readout record statements have been read. The RG05 readout price
    formulas and their proofs, and the remaining RG12 and R2I fragments, are
    not covered by the detailed verification. The thermodynamic fragment also
    includes eventual numerical estimates and a delay-enlargement lemma; it
    is not solely a collection of definitions.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.14 The construction run: flat
  representations and the ultraviolet rate (notes)|III-14.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-15.tm>|<hlink|III.16 Analytic toolkit (notes)
  \<rightarrow\>|III-16.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.15. Cost accounting for observables and the
    remainder comparison \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|3>>
    <associate|2-what-it-uses|<tuple|2|9>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-elementary-asymptotics|<tuple|4.1|10>>
    <associate|42-pair-step-rates|<tuple|4.2|11>>
    <associate|43-merging-hard-and-soft-families|<tuple|4.3|11>>
    <associate|44-slots-and-atoms|<tuple|4.4|12>>
    <associate|45-the-chron-chain-part-c|<tuple|4.5|13>>
    <associate|46-records-and-other-fragments-part-d|<tuple|4.6|18>>
    <associate|5-where-the-difficulty-lies|<tuple|5|18>>
    <associate|6-notation|<tuple|6|19>>
    <associate|7-what-remains-unexplained|<tuple|7|20>>
    <associate|auto-1|<tuple|1|3>>
    <associate|auto-10|<tuple|4.3|11>>
    <associate|auto-11|<tuple|4.4|12>>
    <associate|auto-12|<tuple|4.5|13>>
    <associate|auto-13|<tuple|4.6|18>>
    <associate|auto-14|<tuple|5|18>>
    <associate|auto-15|<tuple|6|19>>
    <associate|auto-16|<tuple|7|20>>
    <associate|auto-2|<tuple|1.1|3>>
    <associate|auto-3|<tuple|1.2|5>>
    <associate|auto-4|<tuple|1.3|6>>
    <associate|auto-5|<tuple|2|9>>
    <associate|auto-6|<tuple|3|10>>
    <associate|auto-7|<tuple|4|10>>
    <associate|auto-8|<tuple|4.1|10>>
    <associate|auto-9|<tuple|4.2|11>>
    <associate|iii15-cost-accounting-for-observables-and-the-remainder-comparison--detailed-notes|<tuple|?|1>>
    <associate|part-a-pair-step-pricing|<tuple|1.1|3>>
    <associate|part-b-derivative-bounds-for-local-observables|<tuple|1.2|5>>
    <associate|part-c-launch-data-for-the-remainder-comparison|<tuple|1.3|6>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      What this unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Part A: pair-step pricing
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Part B: derivative bounds for local
      observables <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|Part C: launch data for the remainder
      comparison <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      What it uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Strategy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Steps> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1 Elementary asymptotics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.2 Pair-step rates
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.3 Merging hard and soft families
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.4 Slots and atoms
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.5 The Chron chain (Part C)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.6 Records and other fragments (Part D)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>