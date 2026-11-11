<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law|III-4.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-5.tm>|<hlink|III.6 The stationary branch: background
  field of the effective action \<rightarrow\>|III-6.tm>>

  <ym-title|III.5. Cluster expansion of the polymer
  gas><label|iii5-cluster-expansion-of-the-polymer-gas>

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

  Controls sums of interacting polymer activities by a convergent cluster
  expansion.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-5.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.4|III-4.tm> <ym-middot> <hlink|Next:
  III.6 \<rightarrow\>|III-6.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> work packages <hlink|<verbatim|YM/Push/ABSOLUTE_SUMS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS>
    (3,624 lines), <hlink|<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS>
    (3,589), <hlink|<verbatim|YM/Push/SECTOR_MEASURE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE>
    (1,153), <hlink|<verbatim|YM/SectorNext/VACUUM_NORMALIZATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION>
    (935), <hlink|<verbatim|YM/Progress/STATIONARY_SCENES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES>
    (445). <strong|Size:> 9,746 lines in 1,097 line-counted declarations in
    the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  All propositions are <strong|theorems> under the stated hypotheses.
  Infinite nonnegative bounds include summability.

  <strong|Proposition III.5.1.> For finite labels, reflexive symmetric
  incompatibility <math|R> and real <math|w>, put
  <math|\<ell\><rsub|m>=<big|sum><rsub|z\<in\>\<iota\><rsup|m+1>>\<phi\><rsub|R><rsup|T><around|(|z|)>*<big|prod><rsub|a>w<rsub|z<rsub|a>>/<around|(|m+1|)>!>.
  If <math|<around|\||\<ell\><rsub|m>|\|>\<leqslant\>C*q<rsup|m>> for every
  <math|m\<geqslant\>0>, <math|C\<geqslant\>0>, <math|0\<less\>q\<less\>1>,
  then <math|\<Xi\><around|(|w|)>=exp <around|(|<big|sum><rsub|m>\<ell\><rsub|m>|)>>.
  <hlink|<verbatim|Gas.exact_polynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145>

  <strong|Proposition III.5.2.> On every finite graph with a distinguished
  vertex, the absolute alternating sum over connected spanning subgraphs is
  bounded by its number of spanning trees.
  <hlink|<verbatim|Graph.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148>

  <strong|Proposition III.5.3.> For arbitrary labels, supports
  <math|X<rsub|i>\<subseteq\>\<Lambda\><rsub|n>>, <math|B\<in\>\<bbb-N\>>,
  <math|w\<geqslant\>0>, <math|a\<geqslant\>0>, <math|R\<subseteq\>> overlap
  and <math|<math-up|Ready><around|(|w;a,\<gamma\>,\<delta\>,q|)>>, every
  site <math|x> and <math|m\<geqslant\>0> satisfy

  <\equation*>
    <big|sum><rsub|k\<geqslant\>m><big|sum><rsub|z\<in\>\<iota\><rsup|k+1>:x\<in\>X<around|(|z|)>><frac|<around|\||\<phi\><rsub|R><rsup|T><around|(|z|)>|\|>*<big|prod><rsub|a>w<rsub|z<rsub|a>>|<around|(|k+1|)>!>*e<rsup|a<math-up|cov><rsub|B><around|(|X<around|(|z|)>|)>>\<leqslant\><frac|\<gamma\>*q<rsup|m>|1-q>.
  </equation*>

  The same bound holds for connected finite sets through <math|x> of at least
  <math|m+1> labels, weighted by <math|<big|prod><rsub|i>w<rsub|i>*e<rsup|a<math-up|cov><rsub|B><around|(|X<rsub|i>|)>>>.
  If <math|Q\<subseteq\>\<iota\>> has total inflated weight
  <math|<big|sum><rsub|i\<in\>Q>w<rsub|i>*e<rsup|<around|(|a+\<delta\>|)><math-up|cov><rsub|B><around|(|X<rsub|i>|)>>\<leqslant\>b>,
  the order-<math|m> cluster sum marked by <math|Q>, with individual covering
  weights, is <math|\<leqslant\>b*q<rsup|m>>.
  <hlink|<verbatim|Ursell.log_hit_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243>
  <hlink|<verbatim|Ursell.cluster_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183>

  <strong|Proposition III.5.4.> For the same supports, real <math|w>,
  reflexive symmetric <math|R\<subseteq\>> overlap, <math|a\<geqslant\>0> and
  <math|<math-up|Ready><around|(|<around|\||w|\|>;a,\<gamma\>,\<delta\>,q|)>>,
  the gas converges absolutely with absolute sum
  <math|\<leqslant\>e<rsup|n<rsup|4>*\<gamma\>>>; its cluster series
  converges absolutely to <math|log \<Xi\><around|(|w|)>>, with absolute sum
  <math|\<leqslant\>n<rsup|4>*\<gamma\>/<around|(|1-q|)>> and order-<math|m>
  bound <math|n<rsup|4>*\<gamma\>*q<rsup|m>>. In particular
  <math|\<Xi\><around|(|w|)>\<gtr\>0>. <hlink|<verbatim|Gas.price_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149>

  <strong|Proposition III.5.5.> Under III.5.4, with nonempty supports and
  overlap incompatibility, deleting all polymers meeting any
  <math|Y\<subseteq\>\<Lambda\><rsub|n>> gives
  <math|\<Xi\><around|(|w<rsup|Y>|)>=\<Xi\><around|(|w|)>*e<rsup|-p>>.
  <math|p> sums clusters meeting <math|Y>; their absolute tail from order
  <math|m> is <math|\<leqslant\><around|\||Y|\|>*\<gamma\>*q<rsup|m>/<around|(|1-q|)>>
  for every <math|m\<geqslant\>0>. <hlink|<verbatim|Gas.restores_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95>

  <strong|Proposition III.5.6.> On one lattice, let unforced
  <math|<around|(|X<rsub|i>,u<rsub|i>|)>> and forced
  <math|<around|(|Y<rsub|k>,d<rsub|k>|)>> have nonempty supports,
  <math|u,d\<geqslant\>0>, <math|R\<subseteq\>> overlap. Assume
  <math|A\<geqslant\>0>, <math|\<delta\><rprime|'>\<gtr\>0>,
  <math|t\<geqslant\>1>, <math|0\<leqslant\>\<sigma\>\<less\>1>,
  <math|\<mu\>\<geqslant\>0>, <math|\<eta\>\<gtr\>0>,
  <math|q<rprime|'>\<less\>1>, <math|<math-up|Ready><around|(|u;A+\<delta\><rprime|'>,\<gamma\>,\<delta\>,q|)>>,
  <math|<math-up|Hit><rsub|B><around|(|d;A+\<delta\><rprime|'>,c|)>>, and

  <\equation*>
    <frac|t*e<rsup|\<mu\>>*c+t*\<gamma\>/<around|(|1-q|)>|1-\<sigma\>>\<leqslant\>\<eta\>\<leqslant\>\<sigma\>,<space|2em>4<math-up|ball><rsub|B>\<eta\>/\<delta\><rprime|'>\<leqslant\>q<rprime|'>.
  </equation*>

  Atoms are forced polymers and unforced cluster tuples with absolute cluster
  weights. For every site <math|x> and <math|m\<in\>\<bbb-N\>>, connected
  atom multisets through <math|x>, containing a forced atom and total
  multiplicity <math|\<geqslant\>m>, have total weight
  <math|e<rsup|A<math-up|cov><rsub|B>(\<cup\>)>*<big|prod><rsub|\<alpha\>>w<rsub|\<alpha\>><rsup|n<rsub|\<alpha\>>>/n<rsub|\<alpha\>>!>
  at most <math|t<rsup|-m>*e<rsup|-\<mu\>>*\<eta\>/<around|(|1-q<rprime|'>|)>>.
  <hlink|<verbatim|OmitClusters.restore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100>

  <strong|Proposition III.5.7.> For a step of block side <math|L>,
  <math|l,B\<in\>\<bbb-N\>>, connected packets with
  <math|0\<leqslant\>p<rsub|A>\<leqslant\>C*e<rsup|<around|(|s-g|)><around|\||A|\|>>>,
  <math|a,C\<geqslant\>0>, and <math|\<rho\>=K<rsub|<math-up|step>><rsup|2>*e<rsup|s-g+a*<around|(|2*l+3|)><rsup|4>>\<leqslant\>q\<less\>1>
  satisfy, for every coarse site <math|x> and <math|m\<in\>\<bbb-N\>>,

  <\equation*>
    <big|sum><rsub|A:x\<in\>D<around|(|A|)>,<space|0.17em><around|\||A|\|>\<geqslant\>m>p<rsub|A>*e<rsup|a<math-up|cov><rsub|B><around|(|D<around|(|A|)>|)>>\<leqslant\>K<rsub|<math-up|hit>>*C*q<rsup|max
    <around|(|1,m|)>>/<around|(|1-q|)>.
  </equation*>

  This includes variants supported within domes whose total packet weight
  obeys the same envelope. <hlink|<verbatim|Packets.packet_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105>
  <hlink|<verbatim|Packets.packet_variants_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L124-L175>

  For <math|\<varepsilon\>,\<delta\>,\<gamma\><rsub|<math-up|root>>\<gtr\>0>,
  <math|a,C,e<rsub|s>,\<mu\><rsub|s>\<geqslant\>0>, assume the packet
  condition at <math|<around|(|a+2*\<varepsilon\>+\<delta\>,s+2*\<varepsilon\>*e<rsub|s>+\<mu\><rsub|s>|)>>
  with ratio <math|q<rsub|p>\<less\>1>, optional polymers
  <math|w<rsub|i>,\<lambda\><rsub|i>\<geqslant\>0> satisfying
  <math|<math-up|Hit><rsub|B><around|(|w*e<rsup|2*\<varepsilon\>*\<lambda\>>;a+2*\<varepsilon\>+\<delta\>,\<gamma\><rsub|<math-up|opt>>|)>>,
  and <math|K<rsub|<math-up|hit>>*C*q<rsub|p>/<around|(|1-q<rsub|p>|)>+\<gamma\><rsub|<math-up|opt>>\<leqslant\>\<gamma\><rsub|<math-up|root>>>,
  <math|4<math-up|ball><rsub|B>\<gamma\><rsub|<math-up|root>>/\<delta\>\<leqslant\>q\<less\>1>.
  Connected mixed sets through <math|x>, of size <math|\<geqslant\>m+1>, seed
  count <math|\<geqslant\>r> and charge <math|<math-up|ch>\<geqslant\>T>,
  satisfy

  <\equation*>
    <big|sum><rsub|s><big|prod><rsub|\<alpha\>\<in\>s>w<rsub|\<alpha\>>*<around|(|1+<math-up|ch><around|(|s|)>|)><rsup|k>*e<rsup|a<math-up|cov><rsub|B><around|(|D<around|(|s|)>|)>>\<leqslant\>k!\<varepsilon\><rsup|-k>*e<rsup|\<varepsilon\>>*e<rsup|-\<varepsilon\>*T-\<mu\><rsub|s>*r>*\<gamma\><rsub|<math-up|root>>*q<rsup|m>/<around|(|1-q|)>
  </equation*>

  for every <math|m,k,r\<in\>\<bbb-N\>>, <math|T\<in\>\<bbb-R\>>. Charge sums
  individual covering numbers and lengths; packet length is
  <math|e<rsub|s><around|\||A|\|>>. Disconnected packets have weight zero.
  <hlink|<verbatim|Mixed.mixed_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189>

  <strong|Proposition III.5.8.> Fix the group, <math|L,l>,
  <math|\<mu\>,u\<gtr\>0>, <math|a,D\<geqslant\>0>, <math|d\<in\>\<bbb-N\>>,
  <math|z\<less\>2>. Eventually in <math|x>, whenever <math|s\<leqslant\>F>,
  <math|g\<geqslant\>M>, <math|0\<leqslant\>C\<leqslant\>e<rsup|F>>, where
  <math|F=D<math-up|bill><rsup|d>P<around|(|\<beta\><rsub|F>|)><rsup|z>>,
  <math|M=\<mu\>*u*P<around|(|\<beta\><rsub|F>|)><rsup|2>>, the packet ratio
  is <math|\<leqslant\>q=e<rsup|-M/2>> and
  <math|K<rsub|<math-up|hit>>*C*q<rsup|max
  <around|(|1,m|)>>/<around|(|1-q|)>\<leqslant\>e<rsup|-M*max
  <around|(|1,m|)>/4>> for every <math|m>. Every
  <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>> gives
  <math|\<beta\>*\<mu\>*t<rsup|2>\<geqslant\>M>.
  <hlink|<verbatim|Delay.fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214>

  For <math|\<varepsilon\>,\<delta\>\<gtr\>0>,
  <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>>,
  <math|C,e<rsub|s>\<geqslant\>0>, <math|C\<leqslant\>e<rsup|F>>,
  <math|s+2*\<varepsilon\>*e<rsub|s>\<leqslant\>F>,
  <math|0\<leqslant\>\<gamma\><rsub|<math-up|opt>>\<leqslant\>\<delta\>/<around|(|16<math-up|ball><rsub|B>|)>>,
  the mixed numerical conditions eventually hold with
  <math|g=\<beta\>*\<mu\>*t<rsup|2>>, <math|\<mu\><rsub|s>=M/2>,
  <math|q=1/2>, <math|\<gamma\><rsub|<math-up|root>>=e<rsup|-M/8>+\<gamma\><rsub|<math-up|opt>>>.
  Actual weight bounds remain hypotheses. For every estimator, choose
  <math|L> sufficiently large, then <math|W> sufficiently large: some
  <math|\<mu\>\<gtr\>0>, chosen before <math|l,d,u,a,D,z>, gives the point
  charge for all sufficiently large <math|x> and funded steps of coarse side
  <math|\<geqslant\>100*<around|(|1+B|)>>, uniformly in volume.
  <hlink|<verbatim|Buy.quoted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103>
  <hlink|<verbatim|Grant.order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71>

  <strong|Proposition III.5.9.> Let <math|J> be finite,
  <math|\<emptyset\>\<ne\>X<rsub|i>\<subseteq\>J>, <math|v\<geqslant\>0>,
  <math|w\<geqslant\>1> submultiplicative on overlapping unions,
  <math|a\<geqslant\>0>, <math|0\<leqslant\>\<delta\>\<leqslant\>1-e<rsup|-a>>,
  and <math|<big|sum><rsub|i:x\<in\>X<rsub|i>>w<around|(|X<rsub|i>|)>*v<rsub|i>*e<rsup|a<around|\||X<rsub|i>|\|>>\<leqslant\>\<delta\>>
  for every <math|x>. For every real <math|<around|\||u|\|>\<leqslant\>v>,
  the disjoint-support gas satisfies <math|Z<rsub|u><around|(|B|)>\<gtr\>0>,
  <math|Z<rsub|u><around|(|B|)>=e<rsup|-<big|sum><rsub|A\<subseteq\>B>\<lambda\><rsub|u><around|(|A|)>>>,
  <math|<around|\||\<lambda\><rsub|u>|\|>\<leqslant\>\<lambda\><rsub|-v>> and
  <math|<big|sum><rsub|A\<ni\>x>w<around|(|A|)>*\<lambda\><rsub|-v><around|(|A|)>\<leqslant\>a>.
  Deleting any <math|Q\<subseteq\>J> multiplies
  <math|Z<rsub|u><around|(|J|)>> by <math|e<rsup|l>>,
  <math|<around|\||l|\|>\<leqslant\>a<around|\||Q|\|>>.
  <hlink|<verbatim|ReLog.catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228>

  For countably many local, gauge-invariant Borel <math|E<rsub|i>> bounded by
  <math|v<rsub|i>> on unflagged supports, mask flagged supports. If
  <math|M\<in\>\<bbb-N\>>, <math|A,a\<geqslant\>0>, <math|v\<geqslant\>0>,
  <math|a*<around|(|2*M+1|)><rsup|4>\<leqslant\>1>,
  <math|\<delta\>\<leqslant\>1-e<rsup|-a>> and
  <math|<big|sum><rsub|i:x\<in\>X<rsub|i>>e<rsup|<around|(|A+1|)><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>*v<rsub|i>\<leqslant\>\<delta\>>
  at every site, the masked gas has these identities and a field-independent
  envelope <math|<around|\||\<lambda\><rsub|P><around|(|V|)>|\|>\<leqslant\>g<around|(|P|)>>,
  <math|<big|sum><rsub|P\<ni\>x>e<rsup|A<math-up|cov><rsub|M><around|(|P|)>>*g<around|(|P|)>\<leqslant\>a>.
  Raw coefficients are local, gauge-invariant Borel; masked coefficients
  vanish on flagged regions. <hlink|<verbatim|ReLog.intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183>

  <strong|Proposition III.5.10.> For finite real matrices <math|A\<gtr\>0>,
  <math|C=C<rsup|T>>, <math|S=A*C-I>, and
  <math|<big|sum><rsub|j><around|\||S<rsub|i*j>|\|>\<leqslant\>q\<less\>1>,
  <math|q\<geqslant\>0>, both <math|det C,det <around|(|I+S|)>\<gtr\>0>, and
  <math|log det <around|(|I+S|)>=<big|sum><rsub|k\<geqslant\>1><around|(|-1|)><rsup|k+1><math-up|tr><around|(|S<rsup|k>|)>/k>
  absolutely. <hlink|<verbatim|Round.exact_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L149-L155>

  <strong|Proposition III.5.11.> Fix a funded step, tube, estimator,
  threshold <math|t>, <math|W,\<kappa\>\<gtr\>0>, adapted lawful
  representation, coupling <math|\<beta\>\<geqslant\>0>, tree-gauge forest
  and Borel nonnegative allocation summing to one. Require global cell chords
  <math|\<geqslant\>t/4> on listed seeds, <math|\<leqslant\>t/2> otherwise;
  wire chords <math|\<geqslant\>W*t> on listed bonds,
  <math|\<leqslant\>2*W*t> otherwise; and equality of packet sites with
  coarse flags wherever allocated weight is nonzero. Assume the point charge
  <math|\<cal-E\><rsub|A>\<geqslant\>\<kappa\>*t<rsup|2><around|\||A|\|>> on
  every local sector on every tree-gauge slice; local tests use
  <math|D<rsub|5*B><around|(|A|)>> and positive frame mass. Then, for every
  <math|V>, <math|<math-up|push><rsub|\<beta\>>\<rho\><rsub|R><around|(|V|)>=<big|sum><rsub|A>c<rsub|A><around|(|V|)>>
  and <math|<around|\||c<rsub|A><around|(|V|)>|\|>\<leqslant\>\<pi\><rsub|\<beta\>>*e<rsup|-\<beta\>*\<kappa\>*t<rsup|2><around|\||A|\|>>*\<ell\><rsub|A><around|(|V|)>>,
  with bounded Borel sector outputs and remainders. The point charge comes
  from III.10 or the committed-scale hypothesis of III.1.
  <hlink|<verbatim|Presented.portionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210>

  <strong|Proposition III.5.12.> For finite symmetric
  <math|M\<geqslant\>r*I\<gtr\>0> with lattice positions, weighted row and
  column sums <math|\<leqslant\>C> at rate <math|\<eta\>\<geqslant\>0>,
  <math|0\<leqslant\>\<theta\>\<leqslant\>1>,
  <math|\<theta\>*C\<leqslant\>r/2>, every <math|u\<geqslant\>0> satisfies

  <\equation*>
    e<rsup|\<theta\>*\<eta\>*d<around|(|a<rsub|i>,a<rsub|j>|)>><around|\||<around|(|M+u*I|)><rsup|-1><rsub|i*j>|\|>\<leqslant\><around|[|min
    <around|(|1,r/2|)>*<around|(|1+u|)>|]><rsup|-1>.
  </equation*>

  Hypotheses persist under principal restriction.
  <hlink|<verbatim|Green.inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251>

  <strong|Proposition III.5.13.> For finite real symmetric
  <math|A\<geqslant\>r*I\<gtr\>0>, fixed positive weighted row/column bounds
  at positive rate and counting bound <math|<math-up|card><around|{|j:d<around|(|y,d<rsub|j>|)>\<leqslant\>\<rho\>|}>\<leqslant\>U*<around|(|1+\<rho\>|)><rsup|4>>,
  windows containing every index within distance <math|R> of their addressed
  index have, uniformly for large <math|R>, inverse residual and inverse
  difference <math|\<leqslant\>K*e<rsup|-c*R>\<less\>1> for some
  <math|K,c\<gtr\>0> at a positive rate. Full/windowed inverses are bounded
  by <math|K> throughout <math|t*A+<around|(|1-t|)>*I>,
  <math|0\<leqslant\>t\<leqslant\>1>. At <math|t=1>, the symmetrized windowed
  inverse has positive uniform lower bounds, as does its inverse.
  <hlink|<verbatim|Win.Promise.receive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L106-L178>

  <strong|Proposition III.5.14.> Fix an estimator and patch satisfying branch
  conditions. For all large <math|x>, every funded step with that patch,
  coarse side <math|\<geqslant\>100*<around|(|1+B|)>>, forest, packet and
  field with matching flags has completed precision
  <math|G=D<rsup|T>*D+I<rsub|<math-up|inactive>>\<geqslant\>r*I>, uniform
  counting constant <math|U>, and weighted row/column bound <math|K> at half
  the upper path-decay rate, for some <math|r,U,K\<gtr\>0>. Endpoint windows
  of radius <math|<around|\<lfloor\>|B/4|\<rfloor\>>> satisfy III.5.13 with
  error <math|K<rsub|<math-up|win>>*e<rsup|-c<rsub|<math-up|win>>*<around|\<lfloor\>|B/4|\<rfloor\>>>\<less\>1>.
  <hlink|<verbatim|Aff.bedrock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158>
  <hlink|<verbatim|Aff.install_promises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42>

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1, II.2: lattice covering bounds and connected supports.

    <item>III.1, III.2: step data, funding, branches, lawful representations
    and committed-scale energy assumptions.

    <item>III.10: energy grant; III.6: gauge-fixed Poincaré inequality.

    <item>Mayer expansion, Penrose partition, lattice-animal counting, Möbius
    inversion, Schur test, Combes\UThomas conjugation.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Component decomposition identifies the finite-gas logarithm. Tree estimates
  give geometric cluster tails; absolute convergence extends the identity to
  arbitrary labels. Seed energy dominates packet entropy. Deletion gives
  another logarithm; exponential conjugation and the spectral gap control
  windowed inverses.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>For gas polynomial <math|P> and cluster series <math|L>, splitting
    the distinguished component gives <math|P<rprime|'>=L<rprime|'>*P>, hence
    <math|P*e<rsup|-L>=1>. <hlink|<verbatim|Coef.recurrence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138>

    <item>Penrose intervals cancel free edges; parent factorials cost at most
    <math|4<rsup|m>*m!>, absorbed by the reserve exponent.
    <hlink|<verbatim|Graph.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148>
    <hlink|<verbatim|Trees.trees_afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228>

    <item>Count packets by spanning walks and compare their entropy with
    <math|P<around|(|\<beta\><rsub|F>|)><rsup|2>>.
    <hlink|<verbatim|Packets.stores_count>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L260-L269>
    <hlink|<verbatim|Delay.fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214>

    <item>Deletion induction bounds Möbius logarithm pieces by
    negative-envelope pieces. <hlink|<verbatim|ReLog.swept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233>

    <item>Sum allocations, then extract the orientation-averaged point
    charge. <hlink|<verbatim|Oriented.turn_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297>

    <item>Poincaré and background comparison give the spectral gap;
    conjugation gives decay, and window residuals occur beyond <math|R>.
    <hlink|<verbatim|Aff.surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113>
    <hlink|<verbatim|Windows.window_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169>
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The bounds retain pins, covering weights and repeated labels. Global seed
  tests survive orientations. The sector remainder has no volume-uniform
  bound here.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>>,
  <math|n\<geqslant\>1>; <math|d> is maximum distance;
  <math|<math-up|cov><rsub|B>> is connected ball-cover number;
  <math|<math-up|ball><rsub|B>=<around|(|2*B+1|)><rsup|4>>.
  <math|<math-up|Hit><rsub|B><around|(|w;a,\<gamma\>|)>> means every site sum
  of <math|w<rsub|i>*e<rsup|a<math-up|cov><rsub|B><around|(|X<rsub|i>|)>>> is
  <math|\<leqslant\>\<gamma\>>. <math|<math-up|Ready>> adds
  <math|\<gamma\>,\<delta\>\<gtr\>0>, <math|4<math-up|ball><rsub|B>\<gamma\>/\<delta\>\<leqslant\>q\<less\>1>,
  using exponent <math|a+\<delta\>>.

  <math|\<Xi\>> sums compatible finite sets; <math|\<phi\><rsup|T>> is the
  connected spanning alternating sum on the occurrence graph (edges require
  mutual <math|R>); singleton coefficient <math|1>;
  <math|X<around|(|z|)>=\<cup\><rsub|a>X<rsub|z<rsub|a>>>. Order <math|m>
  means <math|m+1> occurrences. Seeds are fine cells, coarse bonds or sites;
  packets are finite seed sets; <math|D<rsub|r><around|(|A|)>> is the
  radius-<math|r> neighbourhood of seed locations (projected cell vertices,
  bond endpoints, or site). Skins are individual radius-<math|l*B>
  neighbourhoods; <math|D<around|(|A|)>> is their union, connectedness their
  overlap connectivity. <math|\<tau\><rsub|L>=L<rsup|4><math-up|card><around|{|<text|plaquette
  orientations>|}>+5>, <math|K<rsub|<math-up|hit>>=<around|(|2*l*B+3|)><rsup|4>*\<tau\><rsub|L>>,
  <math|K<rsub|<math-up|step>>=<around|(|4*l*B+5|)><rsup|4>*\<tau\><rsub|L>>.

  <math|\<beta\><rsub|F>=x+b*log L>, <math|B=<around|\<lceil\>|<around|(|log
  x|)><rsup|2>|\<rceil\>>>, <math|P<around|(|s|)>=e<rsup|<around|(|log log
  s|)><rsup|2>>>, <math|t=\<beta\><rsub|F><rsup|-1/2>*P<around|(|\<beta\><rsub|F>|)>>,
  <math|<math-up|bill>=1+B+<around|(|log \<beta\><rsub|F>|)><rsup|2>>.
  <math|\<lambda\><rsub|u>> denotes Möbius pieces of <math|-log Z<rsub|u>>.
  <math|\<cal-E\><rsub|A>> assesses energy anchored in
  <math|D<rsub|2*B><around|(|A|)>> with truncated walks.
  <math|\<pi\><rsub|\<beta\>>> is the inverse product of single-bond
  normalizations; <math|\<ell\><rsub|A>> is the remaining absolute sector
  integral. <math|D> is the transported flat row matrix, using truncated
  curl/path rows and linearized block constraints, replica transport and
  centred path gauges in every orientation. Keep row centres outside
  <math|D<rsub|8*B><around|(|A|)>> and nontrunk columns with projected
  endpoints outside <math|D<rsub|10*B><around|(|A|)>>; normalize by the
  square root of the orientation count. Its range is
  <math|<around|\<lfloor\>|B/100000|\<rfloor\>>+R<rsub|<math-up|pred>>+2>.
  Weighted sums at rate <math|\<eta\>> use factors
  <math|e<rsup|\<eta\>*d<around|(|a<rsub|i>,a<rsub|j>|)>>>. A windowed
  inverse uses column <math|j> of the principal inverse on
  <math|P<around|(|j|)>>, extended by zero.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Imported energy and Poincaré proofs, supporting counts and local Gaussian
  comparisons remain inputs. Raw logarithm coefficients are local; masked
  coefficients additionally inspect flags. The transported flat matrix is not
  identified with the nonlinear derivative.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-5.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.10|III-10.tm>, <hlink|II.2|II-2.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.6|III-6.tm>.

  <strong|Referenced by:> <hlink|III.10|III-10.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.4|III-4.tm>, <hlink|III.11|III-11.tm>, <hlink|III.12|III-12.tm>,
  <hlink|III.2|III-2.tm>, <hlink|III.15|III-15.tm>, <hlink|VII.1|VII-1.tm>,
  <hlink|III.14|III-14.tm>, <hlink|III.9|III-9.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 9,746 attributed lines; 1,097 line-counted
  declarations; 1,408 assigned declaration names. Of the assigned names,
  1,340 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Push/ABSOLUTE_SUMS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS>
    \V 3,624 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS>
    \V 3,589 lines.

    <item>work package <hlink|<verbatim|YM/Push/SECTOR_MEASURE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE>
    \V 1,153 lines.

    <item>work package <hlink|<verbatim|YM/SectorNext/VACUUM_NORMALIZATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION>
    \V 935 lines.

    <item>work package <hlink|<verbatim|YM/Progress/STATIONARY_SCENES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES>
    \V 445 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Ac.Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49>

    <item><hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>

    <item><hlink|<verbatim|Ac.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82>

    <item><hlink|<verbatim|Aff.derivative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L116-L118>

    <item><hlink|<verbatim|Aff.Dmat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127>

    <item><hlink|<verbatim|Aff.gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147>

    <item><hlink|<verbatim|Aff.decomposes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L134-L139>

    <item><hlink|<verbatim|Aff.inflow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L27-L69>

    <item><hlink|<verbatim|Win.Promise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L22-L30>

    <item><hlink|<verbatim|Promise.Served>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L36-L37>

    <item><hlink|<verbatim|Turns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L71-L83>

    <item><hlink|<verbatim|Turns.Takes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L91-L101>

    <item><hlink|<verbatim|Aff.stencil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L120-L159>

    <item><hlink|<verbatim|Mint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Mint.lean#L22-L28>

    <item><hlink|<verbatim|Aff.cert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L23-L24>

    <item><hlink|<verbatim|Rates.allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Rate.lean#L27>

    <item><hlink|<verbatim|Win.planePrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70>

    <item><hlink|<verbatim|Aff.received>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Speed.lean#L138-L155>

    <item><hlink|<verbatim|Aff.Alongside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L71-L78>

    <item><hlink|<verbatim|Aff.shifted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L100-L121>

    <item><hlink|<verbatim|Aff.velocity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L44-L97>

    <item><hlink|<verbatim|Aff.unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L29-L30>

    <item><hlink|<verbatim|Aff.Reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L34-L39>

    <item><hlink|<verbatim|Aff.reserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L41-L49>

    <item><hlink|<verbatim|Windows.inverse_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L124-L141>

    <item><hlink|<verbatim|covariance_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L171-L188>

    <item><hlink|<verbatim|covariance_floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L191-L202>

    <item><hlink|<verbatim|Win.Windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L28-L30>

    <item><hlink|<verbatim|within>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L36-L37>

    <item><hlink|<verbatim|error>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L39>

    <item><hlink|<verbatim|Windows.stitched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L51-L69>

    <item><hlink|<verbatim|cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L73>

    <item><hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>

    <item><hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>

    <item><hlink|<verbatim|separation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81>

    <item><hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>

    <item><hlink|<verbatim|zLin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L53-L55>

    <item><hlink|<verbatim|Next.Fluctuations.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24>

    <item><hlink|<verbatim|Sector.peel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L229-L259>

    <item><hlink|<verbatim|Sector.prefactor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L71-L72>

    <item><hlink|<verbatim|Teller.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>

    <item><hlink|<verbatim|Testing.proceeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L147-L152>

    <item><hlink|<verbatim|notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>

    <item><hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>

    <item><hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>

    <item><hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>

    <item><hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>

    <item><hlink|<verbatim|dome>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L44>

    <item><hlink|<verbatim|shares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L46>

    <item><hlink|<verbatim|Plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58>

    <item><hlink|<verbatim|assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>

    <item><hlink|<verbatim|Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96>

    <item><hlink|<verbatim|Green.diminishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L135-L147>

    <item><hlink|<verbatim|Green.schur>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L149-L168>

    <item><hlink|<verbatim|Green.Rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L26-L27>

    <item><hlink|<verbatim|Green.Both>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L29-L30>

    <item><hlink|<verbatim|Green.Bottom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L32-L33>

    <item><hlink|<verbatim|Green.Rows.restrict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L78-L88>

    <item><hlink|<verbatim|Green.Bottom.restrict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L93-L113>

    <item><hlink|<verbatim|Response.response_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Response.lean#L242-L259>

    <item><hlink|<verbatim|Gas.cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L24>

    <item><hlink|<verbatim|Gas.missing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L25>

    <item><hlink|<verbatim|Gas.missing_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63>

    <item><hlink|<verbatim|Animals.animals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L122-L137>

    <item><hlink|<verbatim|ballCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L148>

    <item><hlink|<verbatim|Basic.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean>

    <item><hlink|<verbatim|Breadth.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Breadth.lean>

    <item><hlink|<verbatim|ratioCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L28-L29>

    <item><hlink|<verbatim|fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L34-L35>

    <item><hlink|<verbatim|totalCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L37-L38>

    <item><hlink|<verbatim|Packets.cover_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L42-L53>

    <item><hlink|<verbatim|Ursell.cluster_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L185-L192>

    <item><hlink|<verbatim|Ursell.connected_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L194-L211>

    <item><hlink|<verbatim|Ursell.Tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L59>

    <item><hlink|<verbatim|Coef.gasRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L19>

    <item><hlink|<verbatim|Coef.logRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L20>

    <item><hlink|<verbatim|Coef.unbased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L71-L76>

    <item><hlink|<verbatim|Coef.discrete>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L79-L125>

    <item><hlink|<verbatim|Multiple.Reps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L26>

    <item><hlink|<verbatim|manyW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L28-L29>

    <item><hlink|<verbatim|Multiple.buy_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L60-L72>

    <item><hlink|<verbatim|Delay.step_delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L128-L156>

    <item><hlink|<verbatim|Delay.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L43-L52>

    <item><hlink|<verbatim|Delay.monitor_pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L74-L101>

    <item><hlink|<verbatim|Trees.touch_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276>

    <item><hlink|<verbatim|Gas.total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L22>

    <item><hlink|<verbatim|Gas.term>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L24>

    <item><hlink|<verbatim|Gas.logSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L26>

    <item><hlink|<verbatim|Gas.absolute_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L35-L51>

    <item><hlink|<verbatim|Gas.absolute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L53-L57>

    <item><hlink|<verbatim|Trees.Ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32>

    <item><hlink|<verbatim|Trees.forest_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L46-L56>

    <item><hlink|<verbatim|Gas.sums>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L128-L137>

    <item><hlink|<verbatim|Gas.row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L69-L120>

    <item><hlink|<verbatim|Grant.credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L48>

    <item><hlink|<verbatim|Labels.together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Labels.lean#L83-L96>

    <item><hlink|<verbatim|Gas.finite_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L29-L41>

    <item><hlink|<verbatim|Mixed.Accounts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89>

    <item><hlink|<verbatim|Mixed.ready_vertices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122>

    <item><hlink|<verbatim|Packets.cover_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L171-L176>

    <item><hlink|<verbatim|typesAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L181>

    <item><hlink|<verbatim|hitCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L215>

    <item><hlink|<verbatim|stepCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L216>

    <item><hlink|<verbatim|Packets.connected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L77>

    <item><hlink|<verbatim|fanout_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L184-L189>

    <item><hlink|<verbatim|Trees.parent_fanout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L191-L193>

    <item><hlink|<verbatim|Partition.allMass_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L23-L28>

    <item><hlink|<verbatim|Product.everyone_ne>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L43-L51>

    <item><hlink|<verbatim|Product.set_products>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L53-L64>

    <item><hlink|<verbatim|Reserves.reserve_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L34-L56>

    <item><hlink|<verbatim|Reserves.sets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L97-L135>

    <item><hlink|<verbatim|blocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L22>

    <item><hlink|<verbatim|Ursell.pot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L32-L33>

    <item><hlink|<verbatim|Ursell.coefficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L35>

    <item><hlink|<verbatim|degreePrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L52>

    <item><hlink|<verbatim|Seeded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L51-L59>

    <item><hlink|<verbatim|Alive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L62>

    <item><hlink|<verbatim|earn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29>

    <item><hlink|<verbatim|Oriented.enters_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L185-L208>

    <item><hlink|<verbatim|Oriented.mean_pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L210-L219>

    <item><hlink|<verbatim|PointCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32>

    <item><hlink|<verbatim|points_grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51>

    <item><hlink|<verbatim|push_columns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Output.lean#L102-L114>

    <item><hlink|<verbatim|leftOver>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L140-L143>

    <item><hlink|<verbatim|cutEntry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L145-L148>

    <item><hlink|<verbatim|PortionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155>

    <item><hlink|<verbatim|Presented.expel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L40-L56>

    <item><hlink|<verbatim|Presented.use_gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L66-L78>

    <item><hlink|<verbatim|Allocation.hard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L68-L78>

    <item><hlink|<verbatim|SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>

    <item><hlink|<verbatim|StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>

    <item><hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>

    <item><hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>

    <item><hlink|<verbatim|ReLog.retest_meas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L104-L114>

    <item><hlink|<verbatim|ReLog.retain_mask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143>

    <item><hlink|<verbatim|ReLog.native_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L26-L32>

    <item><hlink|<verbatim|Fund>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L43-L49>

    <item><hlink|<verbatim|ReLog.permits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L51-L65>

    <item><hlink|<verbatim|Tags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L72-L77>

    <item><hlink|<verbatim|ReLog.retest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L99-L101>

    <item><hlink|<verbatim|ReLog.leash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L180-L211>

    <item><hlink|<verbatim|Deletion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L31-L34>

    <item><hlink|<verbatim|Receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L39-L43>

    <item><hlink|<verbatim|locker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L46>

    <item><hlink|<verbatim|ReLog.matures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L75-L106>

    <item><hlink|<verbatim|fumes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L122>

    <item><hlink|<verbatim|Sufficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L168-L173>

    <item><hlink|<verbatim|ReLog.stock_deletion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L68-L114>

    <item><hlink|<verbatim|ReLog.crop_glue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L118-L134>

    <item><hlink|<verbatim|lamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L161>

    <item><hlink|<verbatim|ReLog.lamp_shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L169-L176>

    <item><hlink|<verbatim|ReLog.lamp_cropped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L178-L196>

    <item><hlink|<verbatim|ReLog.lamp_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L197-L209>

    <item><hlink|<verbatim|glue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L36>

    <item><hlink|<verbatim|shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L38>

    <item><hlink|<verbatim|crop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L40>

    <item><hlink|<verbatim|Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L45-L47>

    <item><hlink|<verbatim|Round.twins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L74-L93>

    <item><hlink|<verbatim|Round.twin_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144>

    <item><hlink|<verbatim|pieces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Sprig.lean#L23-L28>

    <item><hlink|<verbatim|Tree.Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>

    <item><hlink|<verbatim|Vac.Numbers.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72>

    <item><hlink|<verbatim|Work.F01.link_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-5-1>

  <\itemize-minus>
    <item><strong|K-III.5.1> <hlink|<verbatim|canonical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101>
    <em|(numbered result)> \V A canonical choice of sector-cost allocation
    profile.
  </itemize-minus>

  <label|k-iii-5-2>

  <\itemize-minus>
    <item><strong|K-III.5.2> <hlink|<verbatim|budget_count_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163>
    <em|(numbered result)> \V If the number of live labels of degree k grows
    like A B^k and weights decay like C r^k with B r\<less\>1, then tails of
    the sum are geometrically bounded.
  </itemize-minus>

  <label|k-iii-5-3>

  <\itemize-minus>
    <item><strong|K-III.5.3> <hlink|<verbatim|inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251>
    <em|(key result)> \V A Hermitian matrix with a spectral gap and
    off-diagonal exponential decay has an inverse with pointwise exponential
    decay, uniformly in a spectral parameter.
  </itemize-minus>

  <label|k-iii-5-4>

  <\itemize-minus>
    <item><strong|K-III.5.4> <hlink|<verbatim|window_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169>
    <em|(numbered result)> \V For a Hermitian matrix with a bottom eigenvalue
    bound and off-diagonal decay, the layered price estimates hold within one
    window system with small error.
  </itemize-minus>

  <label|k-iii-5-5>

  <\itemize-minus>
    <item><strong|K-III.5.5> <hlink|<verbatim|Buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58>
    <em|(numbered result)> \V A named sufficient condition on a cost function
    for charging a connected result pointwise.
  </itemize-minus>

  <label|k-iii-5-6>

  <\itemize-minus>
    <item><strong|K-III.5.6> <hlink|<verbatim|partition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237>
    <em|(key result)> \V The total mass of a hard-core potential decomposes
    by splitting off the connected component of a chosen position, as the
    component coefficient times the mass of the complement.
  </itemize-minus>

  <label|k-iii-5-7>

  <\itemize-minus>
    <item><strong|K-III.5.7> <hlink|<verbatim|recurrence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138>
    <em|(numbered result)> \V The gas coefficients and log coefficients
    satisfy the standard recurrence (m+1)g_{m+1}=\<Sigma\>(k+1)l_k g_{m-k}.
  </itemize-minus>

  <label|k-iii-5-8>

  <\itemize-minus>
    <item><strong|K-III.5.8> <hlink|<verbatim|exact_polynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145>
    <em|(key result)> \V If the log series coefficients decay geometrically,
    the exponential of the full log series equals the finite polynomial sum
    of values over subsets.
  </itemize-minus>

  <label|k-iii-5-9>

  <\itemize-minus>
    <item><strong|K-III.5.9> <hlink|<verbatim|pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148>
    <em|(key result)> \V The absolute value of the Ursell (overlap graph)
    mass is bounded by the number of tree-compatible assignments.
  </itemize-minus>

  <label|k-iii-5-10>

  <\itemize-minus>
    <item><strong|K-III.5.10> <hlink|<verbatim|substochastic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126>
    <em|(numbered result)> \V For a ranked parent function and a
    substochastic kernel, the sum over all label assignments of the product
    of kernel entries along the forest is at most 1.
  </itemize-minus>

  <label|k-iii-5-11>

  <\itemize-minus>
    <item><strong|K-III.5.11> <hlink|<verbatim|trees_afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228>
    <em|(numbered result)> \V The sum over forests of size m and label
    choices in a finite set is bounded by a currency factor times a degree
    price to the power m.
  </itemize-minus>

  <label|k-iii-5-12>

  <\itemize-minus>
    <item><strong|K-III.5.12> <hlink|<verbatim|estimates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169>
    <em|(key result)> \V Sums over unordered repeated-label multisets with
    connected footprint have an exponential-tail budget bounded by a
    geometric factor.
  </itemize-minus>

  <label|k-iii-5-13>

  <\itemize-minus>
    <item><strong|K-III.5.13> <hlink|<verbatim|cluster_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183>
    <em|(key result)> \V Ursell cluster sums over tuples containing a marked
    occurrence satisfy an absolute summability bound geometric in the tuple
    length.
  </itemize-minus>

  <label|k-iii-5-14>

  <\itemize-minus>
    <item><strong|K-III.5.14> <hlink|<verbatim|restore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100>
    <em|(key result)> \V After merging, a weighted hit bound with geometric
    tail holds for every required copy-cut, combining exponential recovery
    with seed and degree costs.
  </itemize-minus>

  <label|k-iii-5-15>

  <\itemize-minus>
    <item><strong|K-III.5.15> <hlink|<verbatim|price_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149>
    <em|(key result)> \V On hard overlap graphs, absolute-bound hypotheses
    give absolute convergence of both the value and term series, with
    exp(log-sum) equal to the positive total and its log equal to the
    log-sum.
  </itemize-minus>

  <label|k-iii-5-16>

  <\itemize-minus>
    <item><strong|K-III.5.16> <hlink|<verbatim|restores_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95>
    <em|(key result)> \V Ratio estimate for a polymer gas with a deleted set
    of labels, expressed via the logarithm with sign retained and an upper
    bound with absorption cost.
  </itemize-minus>

  <label|k-iii-5-17>

  <\itemize-minus>
    <item><strong|K-III.5.17> <hlink|<verbatim|fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214>
    <em|(numbered result)> \V For large parameter x, tree-vertex price
    constants fit the required inequalities for all per-packet combinatorial
    tests uniformly.
  </itemize-minus>

  <label|k-iii-5-18>

  <\itemize-minus>
    <item><strong|K-III.5.18> <hlink|<verbatim|quoted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103>
    <em|(numbered result)> \V For large parameter values, explicit numeric
    conditions on constants suffice to satisfy the hypotheses for the packet
    estimates.
  </itemize-minus>

  <label|k-iii-5-19>

  <\itemize-minus>
    <item><strong|K-III.5.19> <hlink|<verbatim|packet_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105>
    <em|(numbered result)> \V Weights bounded by a per-seed income yield a
    summability budget for packet sums with an explicit total charge.
  </itemize-minus>

  <label|k-iii-5-20>

  <\itemize-minus>
    <item><strong|K-III.5.20> <hlink|<verbatim|bundle_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201>
    <em|(numbered result)> \V Winding path bundles with complete path
    coefficients satisfy a hit bound at common anchors with a tail decaying
    in true length.
  </itemize-minus>

  <label|k-iii-5-21>

  <\itemize-minus>
    <item><strong|K-III.5.21> <hlink|<verbatim|Allocation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36>
    <em|(numbered result)> \V A partition of unity subordinate to seed
    prerequisites, as a data structure.
  </itemize-minus>

  <label|k-iii-5-22>

  <\itemize-minus>
    <item><strong|K-III.5.22> <hlink|<verbatim|plots_column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Decompose.lean#L120-L126>
    <em|(numbered result)> \V The sum over sectors of integrals restricted to
    each sector's own plots equals the column integral.
  </itemize-minus>

  <label|k-iii-5-23>

  <\itemize-minus>
    <item><strong|K-III.5.23> <hlink|<verbatim|tap_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114>
    <em|(numbered result)> \V For large x, the minimizing choice on a patch
    satisfies uniform opening bounds.
  </itemize-minus>

  <label|k-iii-5-24>

  <\itemize-minus>
    <item><strong|K-III.5.24> <hlink|<verbatim|escape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241>
    <em|(numbered result)> \V The tree tangent hits every orientation channel
    on the one field simultaneously.
  </itemize-minus>

  <label|k-iii-5-25>

  <\itemize-minus>
    <item><strong|K-III.5.25> <hlink|<verbatim|shelf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163>
    \V For disjoint-family sums with summable weights, the negative-log piece
    satisfies the deletion property.
  </itemize-minus>

  <label|k-iii-5-26>

  <\itemize-minus>
    <item><strong|K-III.5.26> <hlink|<verbatim|swept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233>
    <em|(key result)> \V Under a receipt condition, the re-log of any signed
    activity dominated by the envelope satisfies an absolute budget applied
    against the envelope's ceiling.
  </itemize-minus>

  <label|k-iii-5-27>

  <\itemize-minus>
    <item><strong|K-III.5.27> <hlink|<verbatim|catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228>
    <em|(key result)> \V For countably addressed signed integrated
    coefficients, the log is exactly defined and obeys an absolute budget
    with a common envelope.
  </itemize-minus>

  <label|k-iii-5-28>

  <\itemize-minus>
    <item><strong|K-III.5.28> <hlink|<verbatim|omitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271>
    <em|(numbered result)> \V Deleting arbitrary sites after re-log gives a
    common ratio multiplying a forced family, with controlled sign of the
    omitted log contribution.
  </itemize-minus>

  <label|k-iii-5-29>

  <\itemize-minus>
    <item><strong|K-III.5.29> <hlink|<verbatim|intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183>
    <em|(key result)> \V Integrated gas coefficients admit absolute support
    price bounds with a common envelope for all configurations, without
    global small l\<onesuperior\> hypothesis.
  </itemize-minus>

  <label|k-iii-5-30>

  <\itemize-minus>
    <item><strong|K-III.5.30> <hlink|<verbatim|turn_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297>
    <em|(numbered result)> \V Sector payment inequality extends to the
    orientation-averaged cut rows with a multiplicative earn constant.
  </itemize-minus>

  <label|k-iii-5-31>

  <\itemize-minus>
    <item><strong|K-III.5.31> <hlink|<verbatim|portionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210>
    <em|(key result)> \V For a lawful representation with a point charge and
    funds, every forest and allocation satisfies the portion cost estimate.
  </itemize-minus>

  <label|k-iii-5-32>

  <\itemize-minus>
    <item><strong|K-III.5.32> <hlink|<verbatim|bought>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65>
    <em|(key result)> \V At any committed height pair, a single positive
    constant \<kappa\> works uniformly across inputs for the sector-measure
    consumer estimate.
  </itemize-minus>

  <label|k-iii-5-33>

  <\itemize-minus>
    <item><strong|K-III.5.33> <hlink|<verbatim|charged_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66>
    <em|(numbered result)> \V A pointwise inequality on sector points implies
    the sector charge condition.
  </itemize-minus>

  <label|k-iii-5-34>

  <\itemize-minus>
    <item><strong|K-III.5.34> <hlink|<verbatim|pre_center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L70-L122>
    <em|(numbered result)> \V A framed patch over the actual field predicts
    remote no-hole behaviour from curved precision before derivative tests.
  </itemize-minus>

  <label|k-iii-5-35>

  <\itemize-minus>
    <item><strong|K-III.5.35> <hlink|<verbatim|unfrozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L130-L163>
    <em|(numbered result)> \V The predicted affine energy bounds the local
    row estimate even for arbitrary formal fields away from frozen regions.
  </itemize-minus>

  <label|k-iii-5-36>

  <\itemize-minus>
    <item><strong|K-III.5.36> <hlink|<verbatim|perturb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207>
    <em|(key result)> \V The affine matrix D changes by a controlled amount
    under local perturbations satisfying a stencil bound, with cost
    polynomial in the stencil.
  </itemize-minus>

  <label|k-iii-5-37>

  <\itemize-minus>
    <item><strong|K-III.5.37> <hlink|<verbatim|arc_bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130>
    <em|(numbered result)> \V On a real weak patch, the affine approximation
    error of the local rows is bounded uniformly pointwise in sector.
  </itemize-minus>

  <label|k-iii-5-38>

  <\itemize-minus>
    <item><strong|K-III.5.38> <hlink|<verbatim|guard_\<delta\>>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Breath.lean#L83-L132>
    <em|(numbered result)> \V Given a displacement size \<delta\> along the
    central chart, one can choose \<varepsilon\> so that trigger
    disappearance is guaranteed on the same read.
  </itemize-minus>

  <label|k-iii-5-39>

  <\itemize-minus>
    <item><strong|K-III.5.39> <hlink|<verbatim|bedrock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158>
    <em|(key result)> \V For large x, the Gram matrix of the step is served
    by a fixed window promise uniformly over all admissible step data.
  </itemize-minus>

  <label|k-iii-5-40>

  <\itemize-minus>
    <item><strong|K-III.5.40> <hlink|<verbatim|night>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116>
    <em|(key result)> \V For a funded patch with a reserve and wedge
    conditions, there is \<varepsilon\>\<gtr\>0 such that for large scale the
    plateau tests (Keys) hold.
  </itemize-minus>

  <label|k-iii-5-41>

  <\itemize-minus>
    <item><strong|K-III.5.41> <hlink|<verbatim|gram_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181>
    <em|(key result)> \V There is a uniform constant such that the Gram cost
    of the counted array is bounded across all admissible step data.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law|III-4.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-5.tm>|<hlink|III.6 The stationary branch: background
  field of the effective action \<rightarrow\>|III-6.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.5. Cluster expansion of the polymer gas \U
    Yang\UMills informalization>
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
    <associate|auto-11|<tuple|10|12>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|iii5-cluster-expansion-of-the-polymer-gas|<tuple|?|1>>
    <associate|k-iii-5-1|<tuple|10|12>>
    <associate|k-iii-5-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-12|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-13|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-18|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-5-20|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-21|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-22|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-23|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-5-24|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-25|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-26|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-27|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-28|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-29|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-5-30|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-31|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-32|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-33|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-5-34|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-35|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-36|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-37|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-38|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-39|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-40|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-41|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-5-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-5-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|6|5>>
    <associate|unit-inputs|<tuple|1|4>>
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