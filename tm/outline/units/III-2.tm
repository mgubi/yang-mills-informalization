<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.1 The block-spin step and the
  symmetric gauge fixing|III-1.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-2.tm>|<hlink|III.3 Free lattice kernels and covariances
  \<rightarrow\>|III-3.tm>>

  <ym-title|III.2. Choosing the constants: the order of choice and the RG
  schedule><label|iii2-choosing-the-constants-the-order-of-choice-and-the-rg-schedule>

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

  Explains the order in which constants and scales are chosen so that the
  renormalization estimates hold together.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-2.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.1|III-1.tm> <ym-middot> <hlink|Next:
  III.3 \<rightarrow\>|III-3.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/Price/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price>
    (the constants and the level schedule, 406 lines),
    <hlink|<verbatim|YM/Shoot/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot>
    (shooting, 228 lines), <hlink|<verbatim|YM/Integration/RG05Preconstruction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction>,
    <hlink|<verbatim|YM/Integration/NativeSelection/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection>
    and other files of <hlink|<verbatim|YM/Integration/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration>,
    <hlink|<verbatim|YM/RG08/Calendar/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar>,
    and parts of <hlink|<verbatim|YM/RG08/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08>,
    <hlink|<verbatim|YM/RG12/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12>,
    <hlink|<verbatim|YM/FullVolume/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume>
    (in particular <verbatim|Roll/>) and <hlink|<verbatim|YM/TraceExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension>.
    <strong|Size:> 18,156 lines in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition III.2.1 (order of choice).> For simple <math|G>,
  choose:

  <\enumerate>
    <item>A sheet: kernel <math|K> with branches on every patch; first stage
    <math|j<rsub|0>\<geqslant\>4>; floors <math|f<rsub|j>\<in\>\<bbb-N\>>;
    stage records with a clip of relaxation <math|r<rsub|j>>, derivative
    orders <math|k<rsub|j>\<geqslant\>6>, spatial powers
    <math|q<rsub|j>\<geqslant\>2>, support exponents
    <math|a<rsub|j>\<gtr\>0>, widths <math|w<rsub|j>\<gtr\>0>, path counts
    <math|\<varpi\><rsub|j>\<gtr\>0>, drift allowances
    <math|\<omega\><rsub|j>\<geqslant\>0>, column bounds
    <math|\<gamma\><rsub|j>\<geqslant\>1>,
    <math|r<rsub|j>*w<rsub|j>\<geqslant\>12>; nondecreasing <math|k,q,a>.

    <item>Nondecreasing odd <math|\<ell\><rsub|j>\<geqslant\>max
    <around|(|3,f<rsub|j>|)>>, with, for <math|j\<geqslant\>j<rsub|0>>,
  </enumerate>

  <\equation*>
    \<omega\><rsub|j>/log \<ell\><rsub|j>\<leqslant\>min
    <around|(|\<kappa\>/4,j<rsup|-2>|)>,<space|2em>log \<cal-C\><rsub|j>/log
    \<ell\><rsub|j>\<leqslant\>j<rsup|-2>,<space|2em>\<cal-C\><rsub|j>=1+\<varpi\><rsub|j>+w<rsub|j><rsup|-1>+\<gamma\><rsub|j>+r<rsub|j>+a<rsub|j>.
  </equation*>

  <\enumerate>
    <assign|item-nr|2><item>Positive nonincreasing
    <math|\<theta\><rsub|j>\<leqslant\>1/j> for
    <math|j\<geqslant\>j<rsub|0>>.

    <item>Unrestricted delays: real entry couplings
    <math|\<beta\><rsup|<math-up|ent>><rsub|j>>, real barrier-dependent entry
    scales <math|\<sigma\><rsup|<math-up|ent>><rsub|j><around|(|<wide|\<beta\>|\<bar\>>|)>>,
    natural shells <math|S<rsub|j>> and exponents <math|g<rsub|j>>.

    <item>A barrier <math|<wide|\<beta\>|\<bar\>>\<gtr\>1>, with
    <math|<wide|\<beta\>|\<bar\>>\<geqslant\>\<beta\><rsup|<math-up|ent>><rsub|j<rsub|0>>>,
    with <math|x<rsup|-1/2>*e<rsup|<around|(|log log
    x|)><rsup|2>>\<leqslant\>1> for every
    <math|x\<geqslant\><wide|\<beta\>|\<bar\>>>.

    <item>A wait: real readiness scales <math|\<sigma\><rsup|<math-up|rdy>><rsub|j>>,
    windows <math|h<rsub|j>:\<bbb-R\>\<to\>\<bbb-N\>> with
    <math|h<rsub|j><around|(|s|)>/s\<to\>0> as <math|s\<to\>\<infty\>> for
    each fixed <math|j>, and natural <math|n<rsub|min>>.
  </enumerate>

  Delays and waits are ordered componentwise. Factors exist for every sheet;
  <math|\<theta\>> can lie below any prescribed positive sequence; barriers
  exist above any prescribed real. <em|Status:> definitions and three
  existence theorems. <em|Lean:> <hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>,
  <hlink|<verbatim|Rolls.exists_rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L79-L84>,
  <hlink|<verbatim|Protection.exists_margin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L98-L111>,
  <hlink|<verbatim|Bar.exists_above>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L19-L37>.

  <strong|Proposition III.2.2 (schedule).> For simple <math|G> and any
  III.2.1 data, there are <math|J<rsub|m>>,
  <math|L<rsub|m>=\<ell\><rsub|J<rsub|m+1>>>,
  <math|n<rsub|p>=4*<around|(|M+p+1|)>> with natural <math|M>, retaining the
  prescribed data, such that:

  <\itemize-minus>
    <item><math|J<rsub|0>=J<rsub|1>=j<rsub|0>>; <math|J> is nondecreasing,
    increases by at most one, and diverges;
    <math|k<rsub|J<rsub|m>>,q<rsub|J<rsub|m>>,a<rsub|J<rsub|m>>> are
    nondecreasing.

    <item>For every <math|m>, <math|\<beta\><rsup|<math-up|ent>><rsub|J<rsub|m+1>>\<leqslant\><wide|\<beta\>|^><rsub|m>>;
    also <math|\<sigma\><rsup|<math-up|ent>><rsub|J<rsub|m+1>><around|(|<wide|\<beta\>|\<bar\>>|)>\<leqslant\>s<rsub|m>>
    if <math|J<rsub|m+1>\<gtr\>j<rsub|0>>.

    <item>For every <math|m,p>, with <math|j=J<rsub|m+1>>:
    <math|n<rsub|p>\<geqslant\>n<rsub|min>>,
    <math|S<rsub|j>*<around|(|1+B<rsub|m>+B<rsub|m+1>|)><rsup|g<rsub|j>>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m>>>,
    <math|100*<around|(|B<rsub|m>+1|)>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m>>>,
    <math|100*<around|(|R<rsub|m>+1|)>\<leqslant\>n<rsub|p>*e<rsup|s<rsub|m+1>>>.

    <item>Each <math|j\<geqslant\>j<rsub|0>> has some <math|k> with
    <math|\<sigma\><rsup|<math-up|rdy>><rsub|j>\<leqslant\>s<rsub|k>>,
    <math|h<rsub|j><around|(|s<rsub|k>|)>\<leqslant\>k>, and
    <math|J<rsub|i>=j> for <math|<around|\||i-k|\|>\<leqslant\>h<rsub|j><around|(|s<rsub|k>|)>>.

    <item><math|<wide|\<beta\>|^><rsub|m>\<gtr\>1>,
    <math|t<rsub|m>\<leqslant\>1>, <math|0\<less\>\<theta\><rsub|J<rsub|m>>\<leqslant\>1/J<rsub|m>>;
    <math|\<omega\><rsub|J<rsub|m+1>>/log L<rsub|m>> and <math|log
    \<cal-C\><rsub|J<rsub|m+1>>/log L<rsub|m>> are at most
    <math|J<rsub|m+1><rsup|-2>>; <math|log L<rsub|m>/s<rsub|m>\<to\>0>.
    Kernels are well posed, lattice symmetric and gauge covariant.
  </itemize-minus>

  Every positive integer divides <math|n<rsub|p>> infinitely often.
  <em|Status:> theorem; divisibility variant in III.10. <em|Lean:>
  <hlink|<verbatim|Wait.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239>,
  <hlink|<verbatim|Wait.engine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L26-L135>.

  <strong|Proposition III.2.3 (shooting).> Let <math|G> be simple; fix a
  level system with <math|\<omega\><rsub|J<rsub|m+1>>\<leqslant\><around|(|\<kappa\>/4|)>*log
  L<rsub|m>> and a recipe prescribing paths
  <math|P<rsup|\<cal-R\>><rsub|N,m>> and start, retention and transition
  tests. Admissibility requires these paths, the level budget point and clip,
  width <math|w<rsub|J<rsub|m>>>, path count
  <math|\<varpi\><rsub|J<rsub|m>>>, loop cap
  <math|2*M<rsub|m><rsup|\<theta\><rsub|J<rsub|m>>>>, allowances
  <math|<wide|\<beta\>|^><rsub|m><rsup|-11/10>,e<rsup|-M<rsub|m><rsup|1/5>>>,
  and retention. Continuity requires continuous <math|\<beta\>,v>, fixed
  activity address sets, and differences tending to zero in summed budget
  masses of regular derivative bounds through budget order on the healthy
  domain and forced uniform bounds on all configurations.

  Assume, for every <math|N,p>, a continuous admissible Wilson start family
  on <math|\<frak-B\><rsub|N>> with coupling equal to its parameter,
  <math|v=0>, density equal to the Wilson weight at that coupling, passing
  the start test. Assume also that every continuous admissible
  level-<math|<around|(|m+1|)>> family on any <math|<around|[|l,u|]>> with
  <math|l\<leqslant\>u>, <math|m\<less\>N>, with couplings in
  <math|\<frak-B\><rsub|m+1>>, admits a continuous admissible level-<math|m>
  family whose density is its block-spin push-forward at the input coupling,
  passing the transition test, with <math|<around|\||\<beta\><rprime|'>-\<beta\>-\<kappa\>*log
  L<rsub|m>|\|>\<leqslant\>\<omega\><rsub|J<rsub|m+1>>>.

  Then for all <math|N,p> a selected history exists: admissible
  representations in <math|\<frak-B\><rsub|m>>, Wilson top with <math|v=0>,
  these transitions, <math|\<beta\><rsub|N,p,0>=<wide|\<beta\>|\<bar\>>>,
  paths independent of <math|p>. For every <math|\<varepsilon\>\<gtr\>0>,
  some <math|m<rsub|0>> gives <math|<around|\||\<beta\><rsub|N,p,m>-<wide|\<beta\>|^><rsub|m>|\|>\<leqslant\>\<varepsilon\>*s<rsub|m>>
  for all <math|N\<geqslant\>m\<geqslant\>m<rsub|0>>, all <math|p>.
  <em|Status:> conditional theorem; hypotheses discharged in III.10.
  <em|Lean:> <hlink|<verbatim|Recipe.races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>.

  <strong|Proposition III.2.4 (joint purchase).> Assume simple <math|G>,
  kernel <math|K> branched on every patch, first stage <math|\<geqslant\>4>,
  nondecreasing <math|k<rsub|j>\<geqslant\>max <around|(|6,j|)>>,
  <math|q<rsub|j>\<geqslant\>max <around|(|2,j|)>>,
  <math|a<rsub|j>\<geqslant\>100>, nondecreasing
  <math|Q:\<bbb-N\>\<to\>\<bbb-N\>> with <math|Q<rsub|j>\<geqslant\>1>,
  records <math|\<Omega\>,\<Delta\>>, degree-<math|300> tableau at
  <math|\<xi\>> and contraction condition
  <hlink|<verbatim|sphere>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Purse.lean#L29>
  at <math|<around|(|\<xi\>,\<omega\><rsub|v>,\<omega\><rsub|t>|)>>, with
  <math|\<xi\>\<geqslant\>2>, <math|0\<less\>\<omega\><rsub|v>\<leqslant\>1>,
  <math|\<omega\><rsub|t>\<gtr\>0>, and prediction <math|\<pi\>> prepaid at
  every sheet and price map.

  There exist a sheet <math|s> preserving the prescribed kernel, first stage,
  derivative orders, powers and support exponents, price map <math|T>, real
  sequence <math|Y>, nondecreasing <math|K<rprime|'>\<geqslant\>1> and floor
  <math|\<tau\>\<geqslant\>f<rsup|s>>. For every floor
  <math|k\<geqslant\>\<tau\>>, factors exist; for every block-factor sequence
  <math|\<ell\>> for <math|s> with floors <math|k> there is <math|U>; for
  every wage <math|w\<geqslant\>U>, postage rate and exchange datum there are
  post-<math|L> costs; for every positive <math|\<theta\><rsup|0>> there is
  protection <math|\<theta\>\<leqslant\>\<theta\><rsup|0>>; for every menu,
  auxiliary record and delay <math|T<rsub|0>> there is
  <math|V\<geqslant\>T<rsub|0>>; for every <math|V<rprime|'>\<geqslant\>V>,
  barrier and wait <math|W> there is <math|Z\<geqslant\>W>; for every
  <math|W<rprime|'>\<geqslant\>Z> and level system meeting III.2.2 with
  divisible periods there are a directed datum and factor <math|X> recording
  these choices, satisfying <math|\<pi\><around|(|X|)>>.

  Wages, exchanges, menus and auxiliary records equal the prescribed data;
  postage rates do not exceed the prescribed rates. The same factor satisfies
  the III.12 conditions <hlink|<verbatim|Degree>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Prices.lean#L84>,
  <hlink|<verbatim|Savvy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym/Shorn.lean#L32-L35>,
  <hlink|<verbatim|Roofing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C/Ribbon.lean#L29>,
  <hlink|<verbatim|PaysW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Ready.lean#L56>,
  <hlink|<verbatim|Spire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Hours.lean#L43>,
  <hlink|<verbatim|Wild>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi/Entries.lean#L31>,
  <hlink|<verbatim|Tower.Sav>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Rent.lean#L25-L27>
  with <hlink|<verbatim|Canyon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Query.lean#L45>,
  <hlink|<verbatim|Cadre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L34-L39>,
  <hlink|<verbatim|AccordV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Tibetan.lean#L60>
  with <math|Q> (III.11), top kinetic data (III.9), amplification (III.1),
  and a bandage with extras <math|<around|(|\<Omega\>,\<Delta\>,b|)>>
  (III.15). Support exponents are <math|\<geqslant\>100>;
  <math|e<rsup|<around|(|a<rsub|j>+2|)>*<around|(|2<space|0.17em><math-up|span><rsub|i*j>+13|)><rsup|4>>\<leqslant\>\<ell\><rsub|i>>
  for <math|j\<leqslant\>i\<leqslant\>j+1>. The bandage also supplies the
  conditional family package <hlink|<verbatim|Unlatched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L25-L34>
  with a vacuous additional conclusion, under the family hypotheses of
  III.2.5. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|richFaresWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85>.

  <strong|Proposition III.2.5 (plentiful construction).> Under III.2.4 and
  <math|Q<rsub|i>\<geqslant\>2>, its conclusion additionally ensures: every
  compatible trajectory, reference levels with
  <math|d+3\<leqslant\>J<rsub|t<around|(|d|)>>>, section transfers and
  consecutive gauge doors satisfying family consistency, door compatibility
  and prescribed transfer bounds from level <math|t<around|(|d|)>> whenever
  <math|t<around|(|d|)>\<leqslant\>N> give, for every extraction order, the
  complete weak-continuum requirement (III.11) and trace gallery (VII.2).
  Floors, delays and waits may increase; the prediction persists.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>,
  <hlink|<verbatim|Unlatched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L25-L34>.

  <strong|Proposition III.2.6 (prediction).> Let <math|\<pi\>> be a
  prediction. For simple <math|G>, a sheet with the perceived-estimate
  package of detailed Lemma 4.16 at fixed tariff and scope, and
  <math|\<tau\>\<gtr\>0>, suppose: for every choice of targets with the
  canonical chart, expenses with deficit <math|-7/16>, programs, initial
  wages and baton there is a floor <math|u>; for every floor
  <math|l\<geqslant\>u>, factors, wages, duration bounds, register, postage,
  scouts, protection, step records with <math|\<varepsilon\>\<leqslant\>1/4>
  on transitions with output stage at least the first stage, post-<math|L>
  costs and delay <math|V>, there is <math|W\<geqslant\>V>; for every later
  delay, barrier, wait, pricing record, directed datum and remaining factor
  data, shelter and step conditions and divisible periods imply <math|\<pi\>>
  on the assembled factor. Then the complete native purchase of detailed
  Lemma 4.17 retains <math|\<pi\>> on the emitted factor, on level systems
  with divisible periods, maximizing its floor with <math|u> and inserting
  <math|W> before its booth and final delay. <em|Status:> theorem; used with
  vacuous prediction. <em|Lean:> <hlink|<verbatim|company>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106>,
  <hlink|<verbatim|Prepaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L30-L42>.

  <strong|Proposition III.2.7 (complete run).> Given simple <math|G>, penalty
  <math|b\<gtr\>0>, records <math|\<Omega\>,\<Delta\>>, custody request
  <math|\<cal-H\>>, eventually paid <math|\<Lambda\>>, and a demand assigning
  every sheet and price map nonempty choices <math|c>, floors
  <math|e<rsub|c>:\<bbb-N\>\<to\>\<bbb-N\>> and real arrays
  <math|F<rsub|c><around|(|n,i|)>,F<rprime|'><rsub|c><around|[|\<ell\>|]><around|(|n,i|)>>,
  there is a run with a campaign, penalty <math|b>, preselection
  <math|s,q,c>, and floor <math|n\<geqslant\>max
  <around|(|f<rsup|s>,e<rsub|c>|)>>. It uses <math|s> with floors <math|n>
  and the price map derived from <math|q>; both arrays are paid as in
  III.2.8(b), using actual <math|\<ell\>>, and
  <math|F<rprime|'><rsub|c><around|[|\<ell\>|]><around|(|0,J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>>
  for all <math|m>. Orders satisfy <math|k<rsub|j>,q<rsub|j>\<geqslant\>j>;
  <math|\<Lambda\>>, treasury funding, common-period funding, pillars, the
  funded, news and read-out records, custody and sky hold. Any universally
  prepaid prediction can persist. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>.

  <strong|Proposition III.2.8 (persistent payments).>

  (a) Eventually paid means: for every sheet, factors, protection and delay
  <math|V>, some <math|X\<geqslant\>V> ensures the property for every delay
  <math|W\<geqslant\>X>, every barrier and wait, and every system meeting
  their entrance conditions. Conjunction preserves it.

  (b) For every real array <math|F<around|(|n,i|)>>, eventually paid are
  <math|1\<leqslant\>1+log log <wide|\<beta\>|^><rsub|m>> at all levels and:
  for every <math|n>, eventually in <math|m>,
  <math|<around|\||F<around|(|n,i|)>|\|>\<leqslant\>1+log log
  <wide|\<beta\>|^><rsub|m>> for all <math|i\<leqslant\>J<rsub|m+1>>. For
  every real sequence <math|F>, <math|F<around|(|J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>>
  at all levels is eventually paid.

  (c) Every countably encoded family of requests (stage floors and costs
  depending on the transition, block geometry and stage record
  <math|X<rsub|J<rsub|m>>> at step <math|m>) has a common floor
  <math|<math-up|pre>> fixed before factors. If
  <math|\<ell\><rsub|j>\<geqslant\><math-up|pre><around|(|j|)>> at every
  stage, every delay can be enlarged so every later delay, any barrier and
  wait, and every admitted system satisfy, for
  <math|<math-up|code><around|(|\<alpha\>|)>\<leqslant\>J<rsub|n>>,
  <math|m\<geqslant\>n>, <math|<math-up|pre><rsub|\<alpha\>><around|(|J<rsub|m+1>|)>\<leqslant\>L<rsub|m>>
  and step cost <math|\<leqslant\>1+log <around|(|2+log
  <wide|\<beta\>|^><rsub|m>|)>>.

  (d) For simple <math|G> and every kernel, a plan fixes charge names and
  dictionaries of finite words and spectra for every request before factors.
  Above its floor, delays can be enlarged persistently to fund requests and
  the inverse charge from level zero. <em|Status:> definition in (a);
  theorems. <em|Lean:> <hlink|<verbatim|EventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38>,
  <hlink|<verbatim|eventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79>,
  <hlink|<verbatim|minDelay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L68-L77>,
  <hlink|<verbatim|buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64>.

  <strong|Proposition III.2.9 (analytic estimates).> Norms are componentwise
  exponentially weighted displacement <math|\<ell\><rsup|1>> norms, summing
  colour indices for multilinear kernels; colour spaces are fixed and finite,
  and constants may depend on them. Crosses map coarse fields to fine fields
  at block size <math|L>. Vanishing orders concern symbols at zero momentum.

  <\itemize-minus>
    <item>For <math|\<sigma\>,\<tau\>\<gtr\>0>, real <math|C>, natural
    <math|d>, some <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>>,
    <math|K\<geqslant\>0> give <math|<around|\<\|\|\>|A<rsup|<math-ss|T>>*R*B|\<\|\|\>><rsub|\<tau\>>\<leqslant\>K*M*L<rsup|2-d>>
    for positive odd <math|L> with <math|\<tau\>\<leqslant\>L*\<eta\>>,
    <math|<around|\<\|\|\>|A|\<\|\|\>><rsub|\<tau\>>\<leqslant\>C/L>,
    <math|<around|\<\|\|\>|\<nabla\><rsup|s>*B|\<\|\|\>><rsub|\<tau\>>\<leqslant\>C/L<rsup|1+<around|\||s|\|>>>
    through order <math|d>, <math|M\<geqslant\>0>,
    <math|<around|\<\|\|\>|R|\<\|\|\>><rsub|\<sigma\>>\<leqslant\>M>, and
    vanishing order <math|d>. For one-form rows, <math|d=3> gives
    <math|M*L<rsup|-1/2>> for all sufficiently large odd <math|L>.
    <hlink|<verbatim|pullback_gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110>,
    <hlink|<verbatim|large_contraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146>.

    <item>For natural <math|r,d>, <math|\<sigma\>,w\<gtr\>0>,
    <math|C\<geqslant\>0>, some <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>>,
    <math|K\<geqslant\>0>, fixed before <math|L>, give transfer bound
    <math|K*B*L<rsup|4>/L<rsup|r+1+d>> at width <math|w>. Assume a real
    <math|<around|(|r+1|)>>-linear kernel of width <math|\<sigma\>>, bound
    <math|B>, supported on tuples with first site zero, vanishing order
    <math|d> in independent momenta; positive odd <math|L>,
    <math|<around|(|r+2|)>*w\<leqslant\>L*\<eta\>>; crosses with
    <math|<around|\<\|\|\>|\<nabla\><rsup|i>*Q|\<\|\|\>><rsub|<around|(|r+2|)>*w>\<leqslant\>C/L<rsup|1+<around|\||i|\|>>>
    through order <math|d>; transfer through <math|r+1> copies of <math|Q>,
    followed by symmetrization and recentering.
    <hlink|<verbatim|flow_soft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90>.

    <item>For finite coordinates <math|I>, natural <math|n>,
    <math|\<sigma\>\<gtr\>0>, some <math|0\<less\>\<eta\>\<leqslant\>\<sigma\>>,
    <math|K\<geqslant\>0> ensure: every real kernel
    <math|f:\<bbb-Z\><rsup|I>\<to\>\<bbb-R\>> of weighted bound
    <math|A\<geqslant\>0>, vanishing order <math|n>, has real kernels
    <math|g<rsub|b>> of bound <math|K*A>, width <math|\<eta\>>, with
    <math|<wide|f|^><around|(|p|)>=<big|sum><rsub|b><big|prod><rsub|a=1><rsup|n><around|(|e<rsup|i*p<rsub|b<around|(|a|)>>>-1|)>*<wide|g|^><rsub|b><around|(|p|)>>
    for all real <math|p>, where <math|b:<around|{|1,\<ldots\>,n|}>\<to\>I>.
    <hlink|<verbatim|real_difference_division>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92>.

    <item>Fix step scenes with input coupling tending to infinity, leaves,
    cutoff parameter, radii satisfying the logarithm-chart conditions and
    fluctuations <math|z<rsub|i>>; put <math|H<rsub|i>=<frac|1|2>*log
    \<beta\><rsub|i><rsup|<math-up|out>>>,
    <math|\<eta\><rsub|\<ast\>,i>=e<rsup|-H<rsub|i>>>. Assume fluctuation
    bounds, leaf weights and third-derivative bounds <math|D<rsub|i>> have
    upper exponential rate zero relative to <math|H<rsub|i>>; eventually
    leaves are masked regular logarithmic terms whose threshold-squared
    expressions have zero first derivative at zero and derivatives through
    order three bounded by <math|D<rsub|i>> on the unit ball;
    <math|\<pm\>z<rsub|i>> are healthy; both cutoffs equal one near the
    origin in the two deformation parameters. Here upper rate <math|a> means
    an eventual bound <math|e<rsup|r*H<rsub|i>>> for every <math|r\<gtr\>a>.
    Writing <math|P<rsub|i>> for the paved expansion, for every
    <math|\<varepsilon\>\<gtr\>0>, eventually
    <math|<around|\<\|\|\>|D<rsub|y><rsup|2>*<around|(|P<rsub|i><around|(|z<rsub|i>;y|)>+P<rsub|i><around|(|-z<rsub|i>;y|)>|)>\|<rsub|y=0>|\<\|\|\>>\<leqslant\>\<eta\><rsub|\<ast\>,i><rsup|2-\<varepsilon\>>>.
    <hlink|<verbatim|mirror_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70>.

    <item>Fix a representation, degree-<math|d> frame and section readable at
    the origin for the representation\<#2019\>s budget. Two prescribed
    coefficient presentations with equal section densities, remainder bounds
    <math|a,b> and the same positive forced parameter satisfy
    <math|<around|\<\|\|\>|x<rsub|P>-x<rsub|Q>|\<\|\|\>><rsub|<math-up|coeff>>\<leqslant\>K<rsub|F,H>*e<rsup|-a<rsub|\<ast\>>*m>*<around|(|a+b|)>>
    for every natural <math|m> with <math|10*<around|(|m*<around|(|4*B+2|)>+2*B|)>\<less\>n>.
    Regular terms have supports containing zero, vanish at identity and have
    zero local degree-<math|d> projection on nonwrapping supports; nonzero
    forced supports contain zero and satisfy eligibility, support,
    gauge-invariance and measurability conditions.
    <hlink|<verbatim|unique_part>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42>.
  </itemize-minus>

  Further estimates concern the post-block Hessian
  (<hlink|<verbatim|design>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59>),
  cubic and quartic coefficients (<hlink|<verbatim|tanker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118>),
  and trace insertion (<hlink|<verbatim|cloche>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33>).
  <em|Status:> theorems under the displayed hypotheses; only statements of
  these supplementary estimates are included in the notes.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: <math|\<kappa\>\<gtr\>0>; III.1: calendars, histories,
    branches; III.9: reference quantities and Wilson startup; III.10:
    one-step construction and divisible periods.

    <item>III.11\UIII.12, III.15, VII.2: purchased conditions; III.14: demand
    and external records; III.16: strip and Laurent norms and jets.
    Free-kernel and stationary-branch inputs: III.3 and III.6 (probable).

    <item>Intermediate value theorem, compactness, logarithmic asymptotics,
    countable diagonal enumeration.
  </itemize-minus>

  The coupling shift with error <math|\<omega\>> is an input to shooting,
  supplied by III.10 (<hlink|<verbatim|Graces.winnow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L33-L50>).
  Positivity of <math|\<kappa\>> comes from
  <hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>.

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Choose stage data before factors, then costs, protection, delays, barrier
  and wait. Maxima combine floors; persistent increases combine delays and
  waits. Long plateaux provide comparison windows; exponential side growth
  pays volume demands. Shooting narrows continuous Wilson families into
  successive coupling bands until the level-zero coupling equals
  <math|<wide|\<beta\>|\<bar\>>>. The shooting windows are
  <math|<around|[|<wide|\<beta\>|\<bar\>>+<around|(|\<kappa\>/2|)>*s<rsub|m>,<wide|\<beta\>|\<bar\>>+2*\<kappa\>*s<rsub|m>|]>\<subset\>\<frak-B\><rsub|m>>.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Exhaustion.> Long plateaux meet entry and window
    thresholds; one period offset pays the finite first plateau.
    <hlink|<verbatim|Program.exhaust>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L41-L84>,
    <hlink|<verbatim|Wait.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239>.

    <item><strong|Narrowing.> Endpoint drift inequalities straddle the next
    window; first and last hitting points give a subinterval mapping entirely
    into it. Iterate downward. <hlink|<verbatim|gates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L81-L90>,
    <hlink|<verbatim|narrow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L18-L49>,
    <hlink|<verbatim|steps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L112-L154>.

    <item><strong|Running law.> The coupling error is bounded by
    <math|<big|sum><rsub|k=1><rsup|m>\<omega\><rsub|J<rsub|k>>=o<around|(|s<rsub|m>|)>>
    using <math|J<rsub|k>\<to\>\<infty\>>.
    <hlink|<verbatim|trajectory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53>.

    <item><strong|Diagonal payment.> Raise entry couplings above double
    exponentials of finite partial sums of array entries. Since
    <math|J<rsub|m>\<to\>\<infty\>>, every fixed row is eventually included.
    <hlink|<verbatim|eventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79>.

    <item><strong|Composition.> Combine sheet and native suppliers, joint and
    trace purchases and persistent payments by maxima of floors and
    transitivity of delay and wait bounds. Choose the schedule only after
    these increases, then assemble the run.
    <hlink|<verbatim|sailsW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169>,
    <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>,
    <hlink|<verbatim|engageWithCustodyFactor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/PeriodConstruction.lean#L30-L47>.

    <item><strong|Analytic gains.> Move differences from vanishing kernels
    onto crosses: their two bounds give <math|L<rsup|-2>>, fine-site
    summation gives <math|L<rsup|4>>, and <math|d> differences give
    <math|L<rsup|-d>>. Reflection cancels odd terms; local projection leaves
    exponentially small wrapping contributions.
    <hlink|<verbatim|pullback_gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110>,
    <hlink|<verbatim|mirror_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70>,
    <hlink|<verbatim|unique_part>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Factor-dependent costs require later persistent thresholds. Shooting needs
  full-family continuity and band membership throughout each interval. The
  <math|\<kappa\>/4> drift bound separates endpoints; <math|j<rsup|-2>>
  controls accumulated error. Each row is paid eventually; the zeroth
  post-<math|L> row needs separate all-level payment.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|m=0> is coarsest, <math|N> finest; <math|p> indexes volume, <math|j>
  stages. <math|s<rsub|m>=<big|sum><rsub|i\<less\>m>log L<rsub|i>>,
  <math|\<kappa\>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>,
  <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>>,
  <math|\<frak-B\><rsub|m>=<around|[|<wide|\<beta\>|^><rsub|m>/2,2*<wide|\<beta\>|^><rsub|m>|]>>,
  <math|M<rsub|m>=e<rsup|<around|(|log log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>>>,
  <math|t<rsub|m>=<wide|\<beta\>|^><rsub|m><rsup|-1/2>*M<rsub|m>>,
  <math|B<rsub|m>=<around|\<lceil\>|<around|(|log
  <wide|\<beta\>|^><rsub|m>|)><rsup|2>|\<rceil\>>>,
  <math|R<rsub|m>=<around|(|J<rsub|m+1>+3|)>*L<rsub|m>>. In read-out,
  <math|n,B,a<rsub|\<ast\>>> are side, cover size, support exponent;
  <math|K<rsub|F,H>> depends on the frame and holonomy tests.
  <math|<math-up|span><rsub|i*j>> is transition support; a prediction is a
  predicate on the factor recording all choices. Stage records, protection
  and admitted entrance conditions are <hlink|<verbatim|Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45-L61>,
  <hlink|<verbatim|Protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92>
  and <hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Purchased predicates need comparison with their owning units. Underlying
  analytic suppliers and dictionaries lack independent verification here;
  drift normalization against III.9 remains unresolved. Odd-cancellation
  scenes, coefficient and readability interfaces and auxiliary parameters
  need fuller mathematical accounts. Supplementary Hessian,
  coefficient-extraction and trace-insertion proofs remain unexplained.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-2.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.10|III-10.tm>, <hlink|VII.2|VII-2.tm>, <hlink|III.12|III-12.tm>,
  <hlink|III.7|III-7.tm>, <hlink|VII.1|VII-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.6|III-6.tm>, <hlink|II.1|II-1.tm>, <hlink|III.3|III-3.tm>,
  <hlink|III.9|III-9.tm>, <hlink|III.11|III-11.tm>, <hlink|III.4|III-4.tm>,
  <hlink|III.15|III-15.tm>, <hlink|II.2|II-2.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.5|III-5.tm>, <hlink|VII.6|VII-6.tm>, <hlink|VII.4|VII-4.tm>,
  <hlink|IV.1|IV-1.tm>.

  <strong|Referenced by:> <hlink|III.12|III-12.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.10|III-10.tm>, <hlink|III.9|III-9.tm>, <hlink|III.11|III-11.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|III.4|III-4.tm>, <hlink|VII.1|VII-1.tm>,
  <hlink|III.15|III-15.tm>, <hlink|III.6|III-6.tm>, <hlink|III.14|III-14.tm>,
  <hlink|III.1|III-1.tm>, <hlink|VII.4|VII-4.tm>, <hlink|III.7|III-7.tm>,
  <hlink|V.2|V-2.tm>, <hlink|VII.2|VII-2.tm>, <hlink|II.1|II-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 18,156 attributed lines; 2,085 line-counted
  declarations; 2,536 assigned declaration names. Of the assigned names,
  2,491 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>
    \V 6,253 lines.

    <item>proof of <hlink|<verbatim|joinExpensesShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L28-L119>
    \V 4,674 lines.

    <item>proof of <hlink|<verbatim|selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>
    and the results it chains to \V 4,010 lines.

    <item>proof of <hlink|<verbatim|joinRadarsShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144>
    \V 2,398 lines.

    <item>work package <hlink|<verbatim|YM/Price/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price>
    \V 406 lines.

    <item>work package <hlink|<verbatim|YM/Shoot/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot>
    \V 228 lines.

    <item>proof of <hlink|<verbatim|richFaresWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85>
    \V 164 lines.

    <item>work package <hlink|<verbatim|YM/Integration/NativeSelection/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection>
    \V 17 lines.

    <item>work package <hlink|<verbatim|YM/RG17/Clearance/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Clearance>
    \V 6 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>

    <item><hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>

    <item><hlink|<verbatim|verdant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Mails.lean#L55-L94>

    <item><hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>

    <item><hlink|<verbatim|Tableau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Cuts.lean#L18-L24>

    <item><hlink|<verbatim|bountyV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L22-L23>

    <item><hlink|<verbatim|Perceived>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L63-L79>

    <item><hlink|<verbatim|Amplify>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Miracles.lean#L21-L26>

    <item><hlink|<verbatim|reapsY>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Train/Wheels.lean#L77-L103>

    <item><hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>

    <item><hlink|<verbatim|Plan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L18-L20>

    <item><hlink|<verbatim|TreasuryFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L35-L38>

    <item><hlink|<verbatim|PaidRequests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L45-L48>

    <item><hlink|<verbatim|StagePaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePostLengthPayment.lean#L19-L20>

    <item><hlink|<verbatim|postnumeric_quote_diagonal_pair_requests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L31-L39>

    <item><hlink|<verbatim|PostnumericPreselection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46>

    <item><hlink|<verbatim|Prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L23-L24>

    <item><hlink|<verbatim|AllPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L13-L14>

    <item><hlink|<verbatim|Always>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedPredictionSupply.lean#L16>

    <item><hlink|<verbatim|plentiful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L84-L87>

    <item><hlink|<verbatim|richFares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L88-L91>

    <item><hlink|<verbatim|Extras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Resources.lean#L45-L48>

    <item><hlink|<verbatim|Schedule.Gentle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130>

    <item><hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>

    <item><hlink|<verbatim|CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>

    <item><hlink|<verbatim|Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26-L36>

    <item><hlink|<verbatim|Directed.Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L65-L72>

    <item><hlink|<verbatim|hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Graces/Eagles.lean#L21-L27>

    <item><hlink|<verbatim|Mallow.faces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Mallow/Pediment.lean#L41-L45>

    <item><hlink|<verbatim|AsDivisors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Divisors.lean#L21>

    <item><hlink|<verbatim|Factor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Roost/Foundry.lean#L26-L50>

    <item><hlink|<verbatim|Bandage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Stage/Iris.lean#L21-L35>

    <item><hlink|<verbatim|Orders>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L64-L68>

    <item><hlink|<verbatim|Draft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L70-L77>

    <item><hlink|<verbatim|WithStage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L81-L85>

    <item><hlink|<verbatim|raise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Merchant.lean#L36>

    <item><hlink|<verbatim|base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/V9_JOINT_ENDPOINT_LOAD/Heir/Fusion.lean#L58>

    <item><hlink|<verbatim|toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE/Geometry.lean#L50>

    <item><hlink|<verbatim|AtTop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/RECIPE_STARTUP_PORT/Layout.lean#L43>

    <item><hlink|<verbatim|Delays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115-L120>

    <item><hlink|<verbatim|Wait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134-L139>

    <item><hlink|<verbatim|Rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53>

    <item><hlink|<verbatim|Rolls.eventually_large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L55-L77>

    <item><hlink|<verbatim|Wait.lead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L109-L127>

    <item><hlink|<verbatim|Bar.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L43-L47>

    <item><hlink|<verbatim|Bar.allocated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L64-L84>

    <item><hlink|<verbatim|scaled_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L115-L121>

    <item><hlink|<verbatim|scaled_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L123-L130>

    <item><hlink|<verbatim|Program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L22-L28>

    <item><hlink|<verbatim|Program.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L89-L104>

    <item><hlink|<verbatim|DelayLe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/PRICE_COMPILER/Post.lean#L34-L38>

    <item><hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>

    <item><hlink|<verbatim|History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206>

    <item><hlink|<verbatim|Transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227>

    <item><hlink|<verbatim|History.Selected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240>

    <item><hlink|<verbatim|Calendar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64-L73>

    <item><hlink|<verbatim|Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>

    <item><hlink|<verbatim|Patch.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>

    <item><hlink|<verbatim|Need>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L33-L35>

    <item><hlink|<verbatim|Affords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Base.lean#L43-L45>

    <item><hlink|<verbatim|Decal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20>

    <item><hlink|<verbatim|Contemple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RemainderComparison/Chron/Age.lean#L68-L71>

    <item><hlink|<verbatim|deviation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L44-L49>

    <item><hlink|<verbatim|Curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L51-L57>

    <item><hlink|<verbatim|band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L63>

    <item><hlink|<verbatim|Recipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L67-L71>

    <item><hlink|<verbatim|Lives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L74-L79>

    <item><hlink|<verbatim|Recipe.Relays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L88-L91>

    <item><hlink|<verbatim|Recipe.Starter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L93-L96>

    <item><hlink|<verbatim|Recipe.Issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Criteria.lean#L99-L106>

    <item><hlink|<verbatim|successful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159>

    <item><hlink|<verbatim|floorBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L57>

    <item><hlink|<verbatim|ceilBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L58>

    <item><hlink|<verbatim|limits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L60-L68>

    <item><hlink|<verbatim|Drifting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L70-L71>

    <item><hlink|<verbatim|Drifting.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L73-L79>

    <item><hlink|<verbatim|Competes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L95-L98>

    <item><hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>

    <item><hlink|<verbatim|Trace.Over.gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-2-1>

  <\itemize-minus>
    <item><strong|K-III.2.1> <hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>
    <em|(numbered result)> \V A record of numerical and kernel data fixed
    before any block ratios are chosen.
  </itemize-minus>

  <label|k-iii-2-2>

  <\itemize-minus>
    <item><strong|K-III.2.2> <hlink|<verbatim|Large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39-L48>
    <em|(numbered result)> \V A predicate stating that numeric largeness
    conditions hold at a given smoothing stage for a threshold L.
  </itemize-minus>

  <label|k-iii-2-3>

  <\itemize-minus>
    <item><strong|K-III.2.3> <hlink|<verbatim|Protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88-L92>
    <em|(numbered result)> \V A record freezing a parameter theta that
    accommodates all contributing requests after L is chosen.
  </itemize-minus>

  <label|k-iii-2-4>

  <\itemize-minus>
    <item><strong|K-III.2.4> <hlink|<verbatim|Bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123-L127>
    <em|(numbered result)> \V A record giving a smallness barrier independent
    of the first spacing.
  </itemize-minus>

  <label|k-iii-2-5>

  <\itemize-minus>
    <item><strong|K-III.2.5> <hlink|<verbatim|enters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Length.lean#L90-L106>
    <em|(numbered result)> \V For a simple group and stage past the first,
    waiting long enough in the coarser scale ensures beta, scale, length, and
    volume-bill conditions hold uniformly.
  </itemize-minus>

  <label|k-iii-2-6>

  <\itemize-minus>
    <item><strong|K-III.2.6> <hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>
    <em|(numbered result)> \V A record stating that a bundle of entrance-gate
    and level-0 conditions holds for a schedule of levels.
  </itemize-minus>

  <label|k-iii-2-7>

  <\itemize-minus>
    <item><strong|K-III.2.7> <hlink|<verbatim|ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Waits.lean#L137-L239>
    <em|(key result)> \V There exists a level schedule for which all
    requested estimates (the whole calendar) are paid.
  </itemize-minus>

  <label|k-iii-2-8>

  <\itemize-minus>
    <item><strong|K-III.2.8> <hlink|<verbatim|races>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82>
    <em|(key result)> \V For a simple gauge group, if the recipe issues data
    at every scale and the coupling drifts, there is a trajectory that stays
    and produces a selected object.
  </itemize-minus>

  <label|k-iii-2-9>

  <\itemize-minus>
    <item><strong|K-III.2.9> <hlink|<verbatim|sailsW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L97-L169>
    <em|(main result)> \V For a simple gauge with kernel choices, there
    exists a sheet with prices and parameters such that for all tariffs and
    scopes a perceived-estimate package holds along suitable scale sequences.
  </itemize-minus>

  <label|k-iii-2-10>

  <\itemize-minus>
    <item><strong|K-III.2.10> <hlink|<verbatim|design>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Muse.lean#L35-L59>
    <em|(numbered result)> \V A sharp post-block Hessian bound for the
    isolated step under unscaled derivative bounds.
  </itemize-minus>

  <label|k-iii-2-11>

  <\itemize-minus>
    <item><strong|K-III.2.11> <hlink|<verbatim|richFaresWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Fares.lean#L26-L85>
    <em|(key result)> \V Under a prediction and pricing hypothesis, there is
    a sheet, price map and eventual threshold giving the joint RG/UV purchase
    with prediction retained.
  </itemize-minus>

  <label|k-iii-2-12>

  <\itemize-minus>
    <item><strong|K-III.2.12> <hlink|<verbatim|joinRadarsShipWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Expenses.lean#L133-L144>
    <em|(key result)> \V There exist a sheet and prices such that the joint
    same-factor procurement with prediction holds for all later choices of
    parameters and payments.
  </itemize-minus>

  <label|k-iii-2-13>

  <\itemize-minus>
    <item><strong|K-III.2.13> <hlink|<verbatim|company>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeSelection/FundedCompanySelection.lean#L49-L106>
    <em|(key result)> \V The complete native purchase can be performed with
    an additional prediction holding on the same emitted factor.
  </itemize-minus>

  <label|k-iii-2-14>

  <\itemize-minus>
    <item><strong|K-III.2.14> <hlink|<verbatim|tanker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Reservoir.lean#L84-L118>
    <em|(key result)> \V Given a gauge and bounds, one can choose atoms and
    widths such that sequences of lattice observables with jet-bounded
    records are approximated by an emitted base up to fifth-order remainders.
  </itemize-minus>

  <label|k-iii-2-15>

  <\itemize-minus>
    <item><strong|K-III.2.15> <hlink|<verbatim|tunes9>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Pads.lean#L25-L32>
    <em|(numbered result)> \V Given small epsilon on steps, there is a later
    delay schedule beyond which Pads9 holds for all further delays.
  </itemize-minus>

  <label|k-iii-2-16>

  <\itemize-minus>
    <item><strong|K-III.2.16> <hlink|<verbatim|purchasing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Medal.lean#L24-L45>
    <em|(key result)> \V For r\<gtr\>-1, the Medal property holds eventually
    in x with the power beta^r as the parameter.
  </itemize-minus>

  <label|k-iii-2-17>

  <\itemize-minus>
    <item><strong|K-III.2.17> <hlink|<verbatim|wallet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Money.lean#L31-L43>
    <em|(key result)> \V For large s, every admissible horn function with
    bounded weight gives a gale function that is smooth to order n at 0 and
    whose order-2 norm is at most a power of beta.
  </itemize-minus>

  <label|k-iii-2-18>

  <\itemize-minus>
    <item><strong|K-III.2.18> <hlink|<verbatim|yields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes/Events.lean#L44-L55>
    <em|(numbered result)> \V Counter and inspected hypotheses with an
    amplification condition give the cadre property.
  </itemize-minus>

  <label|k-iii-2-19>

  <\itemize-minus>
    <item><strong|K-III.2.19> <hlink|<verbatim|handbook'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Roads.lean#L25-L68>
    <em|(numbered result)> \V For a family of admissible horn functions, the
    order-2 norm of the associated gale function at 0 is controlled in
    temperature.
  </itemize-minus>

  <label|k-iii-2-20>

  <\itemize-minus>
    <item><strong|K-III.2.20> <hlink|<verbatim|mirror_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Shadows/Shape.lean#L54-L70>
    <em|(key result)> \V The sum of the paved expansions at z and -z is of
    order \<eta\>^2 in the order-2 norm, i.e. the odd parts cancel to the
    right order.
  </itemize-minus>

  <label|k-iii-2-21>

  <\itemize-minus>
    <item><strong|K-III.2.21> <hlink|<verbatim|mastering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Weather.lean#L18-L38>
    <em|(key result)> \V For simple gauge and kernel choices, there exist
    scales and constants with fine bases such that, for any tolerances,
    performance data exist.
  </itemize-minus>

  <label|k-iii-2-22>

  <\itemize-minus>
    <item><strong|K-III.2.22> <hlink|<verbatim|flux_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Flux.lean#L24-L114>
    <em|(key result)> \V For a simple gauge group there exist a price
    function and constants such that flux-capped bounds hold under horizontal
    calculation hypotheses, with explicit parameter dependence.
  </itemize-minus>

  <label|k-iii-2-23>

  <\itemize-minus>
    <item><strong|K-III.2.23> <hlink|<verbatim|pierce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas/Return.lean#L82-L123>
    <em|(key result)> \V For simple gauge, there is a price function and
    constants such that along sequences of steps the limiting path data
    satisfy uniform bounds and records.
  </itemize-minus>

  <label|k-iii-2-24>

  <\itemize-minus>
    <item><strong|K-III.2.24> <hlink|<verbatim|companyK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Linger.lean#L23-L51>
    <em|(key result)> \V A complete purchase of targets, expenses, and delays
    exists producing, after all later delays and payments, directed budgets
    and a sheltered alloy with the required rate and bounds.
  </itemize-minus>

  <label|k-iii-2-25>

  <\itemize-minus>
    <item><strong|K-III.2.25> <hlink|<verbatim|evening>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Sundial.lean#L24-L36>
    <em|(key result)> \V For large x, the derivative at 0 of the display map
    differs from the main stroke by at most x^{-p} for every p, uniformly
    over admissible tubes.
  </itemize-minus>

  <label|k-iii-2-26>

  <\itemize-minus>
    <item><strong|K-III.2.26> <hlink|<verbatim|dissent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Spins/Meteor.lean#L64-L123>
    <em|(key result)> \V For large x, the difference of the tube's display
    map vanishes at 0 with derivative at 0 bounded by x^{-p} for every power
    p.
  </itemize-minus>

  <label|k-iii-2-27>

  <\itemize-minus>
    <item><strong|K-III.2.27> <hlink|<verbatim|unique_part>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince/Unum.lean#L11-L42>
    <em|(key result)> \V Two coefficient expansions with the same density and
    remainder bounds have difference in coefficient size exponentially small
    in the number of steps m.
  </itemize-minus>

  <label|k-iii-2-28>

  <\itemize-minus>
    <item><strong|K-III.2.28> <hlink|<verbatim|trendH>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shunt/Ready.lean#L24-L37>
    <em|(key result)> \V For large x, any representative with the tool,
    merchant and depot properties admits a combat witness at every admissible
    level and axis.
  </itemize-minus>

  <label|k-iii-2-29>

  <\itemize-minus>
    <item><strong|K-III.2.29> <hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean#L26-L81>
    <em|(key result)> \V For a fixed calendar and funded prediction there
    exist a sheet, prices and thresholds yielding the full plentiful
    construction retaining the prediction.
  </itemize-minus>

  <label|k-iii-2-30>

  <\itemize-minus>
    <item><strong|K-III.2.30> <hlink|<verbatim|flows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Vote.lean#L18-L24>
    <em|(key result)> \V For a simple gauge group, any delay data can be
    enlarged so that any paid-up level system over further delays is
    acclaimed.
  </itemize-minus>

  <label|k-iii-2-31>

  <\itemize-minus>
    <item><strong|K-III.2.31> <hlink|<verbatim|taxes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L43-L52>
    <em|(key result)> \V For a simple gauge, the stored quantitative property
    holds for all sufficiently large scale x.
  </itemize-minus>

  <label|k-iii-2-32>

  <\itemize-minus>
    <item><strong|K-III.2.32> <hlink|<verbatim|Inspires>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir/Dolio.lean#L36-L64>
    <em|(main result)> \V For simple gauge groups, a large-scale
    representation with sight and age properties is wholesome, with uniform
    constants, at all heights in range.
  </itemize-minus>

  <label|k-iii-2-33>

  <\itemize-minus>
    <item><strong|K-III.2.33> <hlink|<verbatim|rocket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Swift/Troop.lean#L14-L34>
    <em|(key result)> \V For a simple gauge group, there exist constants D, C
    such that for large x, any representation and dart satisfying the
    hypotheses obey a quantitative bound.
  </itemize-minus>

  <label|k-iii-2-34>

  <\itemize-minus>
    <item><strong|K-III.2.34> <hlink|<verbatim|attain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52>
    <em|(key result)> \V Under nest, skill and ordeal hypotheses on a simple
    graph, the sceptre property holds for the given data.
  </itemize-minus>

  <label|k-iii-2-35>

  <\itemize-minus>
    <item><strong|K-III.2.35> <hlink|<verbatim|vroom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Liturgy.lean#L23-L48>
    <em|(numbered result)> \V For any sheet there is a threshold function
    beyond which a derived sheet satisfies a stated property.
  </itemize-minus>

  <label|k-iii-2-36>

  <\itemize-minus>
    <item><strong|K-III.2.36> <hlink|<verbatim|creation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Onus.lean#L43-L51>
    <em|(key result)> \V For large x, any made representation with sight at a
    dart satisfies the craft property with given parameters.
  </itemize-minus>

  <label|k-iii-2-37>

  <\itemize-minus>
    <item><strong|K-III.2.37> <hlink|<verbatim|embalms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/State.lean#L33-L50>
    <em|(key result)> \V Given a relay condition, any waiting condition can
    be strengthened so that every family paid for it satisfies the firing
    property in every dimension.
  </itemize-minus>

  <label|k-iii-2-38>

  <\itemize-minus>
    <item><strong|K-III.2.38> <hlink|<verbatim|post_phase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Eon.lean#L39-L59>
    <em|(key result)> \V For sufficiently large patch size, a phase
    configuration exists for all large scales over any window length, at
    levels j\<geqslant\>5 and i\<geqslant\>4.
  </itemize-minus>

  <label|k-iii-2-39>

  <\itemize-minus>
    <item><strong|K-III.2.39> <hlink|<verbatim|post_to>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Tael.lean#L17-L19>
    <em|(key result)> \V For any gauge, patch, kernel choices and parameters
    with positive alpha, there exist positive eta and nonnegative D such that
    the summit property holds.
  </itemize-minus>

  <label|k-iii-2-40>

  <\itemize-minus>
    <item><strong|K-III.2.40> <hlink|<verbatim|forwardSky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Order/Road.lean#L35-L80>
    <em|(key result)> \V Given an ask structure and budget/chart data, one
    can extend a waiting condition so that, along families paid for it,
    panels with common arc and angle give the required eventual estimates.
  </itemize-minus>

  <label|k-iii-2-41>

  <\itemize-minus>
    <item><strong|K-III.2.41> <hlink|<verbatim|pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir/Cement.lean#L19-L59>
    <em|(key result)> \V For large scale x, a configuration with climate and
    splendor bounds and no drift satisfies the depot property over all tower
    heights in range.
  </itemize-minus>

  <label|k-iii-2-42>

  <\itemize-minus>
    <item><strong|K-III.2.42> <hlink|<verbatim|cloche>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Arc.lean#L16-L33>
    <em|(key result)> \V For large x, uniformly in lattice size and
    configuration, a core observable approximates its midpoint pay value and
    is smooth with controlled derivative bounds.
  </itemize-minus>

  <label|k-iii-2-43>

  <\itemize-minus>
    <item><strong|K-III.2.43> <hlink|<verbatim|eventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeDiagonalClockRequest.lean#L52-L79>
    <em|(numbered result)> \V For any countable family, one admissible
    numerical delay request satisfies every fixed member eventually.
  </itemize-minus>

  <label|k-iii-2-44>

  <\itemize-minus>
    <item><strong|K-III.2.44> <hlink|<verbatim|panning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Vale/Sculpt.lean#L42-L54>
    <em|(key result)> \V The starting section built from a sound hologram
    abates at the fee weight, i.e. has polynomial vanishing below its weight
    at every rank.
  </itemize-minus>

  <label|k-iii-2-45>

  <\itemize-minus>
    <item><strong|K-III.2.45> <hlink|<verbatim|real_difference_division>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Differences.lean#L46-L92>
    <em|(key result)> \V A real coefficient packet whose n-th differences
    vanish can be divided by n difference factors, with a representation
    having smaller width and controlled norm.
  </itemize-minus>

  <label|k-iii-2-46>

  <\itemize-minus>
    <item><strong|K-III.2.46> <hlink|<verbatim|flow_soft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast/Slide.lean#L44-L90>
    <em|(key result)> \V Pre-block transfer maps a kernel of width \<sigma\>
    and bound B to flow with reduced width w and bound
    K<ym-middot>B<ym-middot>L^4/L^(r+1+d), uniformly in block size.
  </itemize-minus>

  <label|k-iii-2-47>

  <\itemize-minus>
    <item><strong|K-III.2.47> <hlink|<verbatim|selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>
    <em|(main result)> \V For any gauge data there exists a run with campaign
    satisfying the penalty value, preselection, order bounds, funded
    treasury/period purchase and a sky structure.
  </itemize-minus>

  <label|k-iii-2-48>

  <\itemize-minus>
    <item><strong|K-III.2.48> <hlink|<verbatim|allFactorWithTreasuryPeriod_preselected_quote_orders_postnumeric_of_prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodClock.lean#L44-L179>
    <em|(main result)> \V There exist a sheet, prices, choices, and a fully
    paid factor satisfying a prediction together with numerical,
    post-numerical, order and clock requirements simultaneously.
  </itemize-minus>

  <label|k-iii-2-49>

  <\itemize-minus>
    <item><strong|K-III.2.49> <hlink|<verbatim|pullback_gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Pullback.lean#L56-L110>
    <em|(key result)> \V Pulling back a zero-order-d row along two crosses
    gains a factor L^(2-d) in strip norm, giving an L^-1 contraction at d=3.
  </itemize-minus>

  <label|k-iii-2-50>

  <\itemize-minus>
    <item><strong|K-III.2.50> <hlink|<verbatim|large_contraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/KStep.lean#L130-L146>
    <em|(key result)> \V For large odd block length the Hessian difference is
    a contraction uniformly in gate, giving L^(-1/2) decay after block
    choice.
  </itemize-minus>

  <label|k-iii-2-51>

  <\itemize-minus>
    <item><strong|K-III.2.51> <hlink|<verbatim|plan_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L28-L31>
    <em|(key result)> \V For a simple gauge group and any kernel choices, a
    complete plan (calendar treasury of scales and costs) exists.
  </itemize-minus>

  <label|k-iii-2-52>

  <\itemize-minus>
    <item><strong|K-III.2.52> <hlink|<verbatim|covariance_moves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gaussian/Stability.lean#L54-L93>
    <em|(numbered result)> \V If conditional covariances are strip-bounded
    and the Hessians differ by a strip-bounded amount, the tree covariance
    and mean vary in a controlled way.
  </itemize-minus>

  <label|k-iii-2-53>

  <\itemize-minus>
    <item><strong|K-III.2.53> <hlink|<verbatim|buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/CalendarTreasuryPurchase.lean#L42-L64>
    <em|(key result)> \V Given a plan with floors met, any delay can be
    enlarged so that all further delays and payments yield a fully
    treasury-funded level.
  </itemize-minus>

  <label|k-iii-2-54>

  <\itemize-minus>
    <item><strong|K-III.2.54> <hlink|<verbatim|names>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Basis.lean#L40-L43>
    <em|(numbered result)> \V For simple gauge group and kernel choices, a
    naming (charges) data package exists.
  </itemize-minus>

  <label|k-iii-2-55>

  <\itemize-minus>
    <item><strong|K-III.2.55> <hlink|<verbatim|wishes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar/Vocals.lean#L66-L76>
    <em|(numbered result)> \V Given sound admissible data, a dialect
    (finite-word and spectrum data) for the requested operation exists.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.1 The block-spin step and the
  symmetric gauge fixing|III-1.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-2.tm>|<hlink|III.3 Free lattice kernels and covariances
  \<rightarrow\>|III-3.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.2. Choosing the constants: the order of choice
    and the RG schedule \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|5>>
    <associate|3-strategy|<tuple|3|6>>
    <associate|4-steps|<tuple|4|6>>
    <associate|5-where-the-difficulty-lies|<tuple|5|6>>
    <associate|6-notation|<tuple|6|7>>
    <associate|7-what-remains-unexplained|<tuple|7|7>>
    <associate|additional-source-locations|<tuple|9.1|8>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|8>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|3|6>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|7>>
    <associate|auto-7|<tuple|7|7>>
    <associate|auto-8|<tuple|8|7>>
    <associate|auto-9|<tuple|9|7>>
    <associate|code-dependencies|<tuple|8|7>>
    <associate|iii2-choosing-the-constants-the-order-of-choice-and-the-rg-schedule|<tuple|?|1>>
    <associate|k-iii-2-1|<tuple|10|11>>
    <associate|k-iii-2-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-13|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-14|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-15|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-16|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-17|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-18|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-19|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-2-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-20|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-21|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-22|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-23|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-24|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-25|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-26|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-27|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-28|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-2-29|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-3|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-30|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-31|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-32|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-33|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-34|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-35|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-36|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-37|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-38|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-2-39|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-4|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-40|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-41|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-42|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-43|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-44|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-45|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-46|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-47|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-2-48|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-49|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-5|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-50|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-51|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-52|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-53|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-54|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-55|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-2-6|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-7|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-8|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-2-9|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|7>>
    <associate|unit-difficulty|<tuple|6|6>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|5>>
    <associate|unit-limitations|<tuple|6|7>>
    <associate|unit-notation|<tuple|5|6>>
    <associate|unit-results|<tuple|?|2>>
    <associate|unit-steps|<tuple|3|6>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|6>>
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