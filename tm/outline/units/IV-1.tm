<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.16 Analytic
  toolkit|III-16.tm>|<hlink|Part IV|../units.tm#part-iv-infinite-volume><ym-nav-sep><hlink|Detailed
  notes|../notes/IV-1.tm>|<hlink|V.1 Decomposition of the limit into phases
  \<rightarrow\>|V-1.tm>>

  <ym-title|IV.1. Infinite volume: extraction of a subsequence and the
  Euclidean axioms of the limit><label|iv1-infinite-volume-extraction-of-a-subsequence-and-the-euclidean-axioms-of-the-limit>

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

  <em|Part IV \V Infinite volume.>

  Extracts an infinite-volume limit from fixed-volume correlation functions
  and establishes its Euclidean axioms.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/IV-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.16|III-16.tm> <ym-middot> <hlink|Next:
  V.1 \<rightarrow\>|V-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> For the main theorem, the Wilson family is supplied
  by <hlink|III.14|III-14.tm>. <hlink|III.13|III-13.tm> describes an
  alternative family; it is not substituted into that route here.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> IV, infinite volume (the related units). <strong|Lean:>
    <hlink|<verbatim|YM/Extraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction>,
    <hlink|<verbatim|YM/Cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells>,
    <hlink|<verbatim|YM/Slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice>,
    <hlink|<verbatim|YM/Euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid>,
    <hlink|<verbatim|YM/Dash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash>,
    <hlink|<verbatim|YM/Next/EXTRACTION>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION>,
    <hlink|<verbatim|YM/Lane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane>;
    D01\UD06. <strong|Size:> 7,444 lines in 1,049 line-counted declarations
    in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Let <math|C> be a Wilson family for a compact matrix gauge group.
  <strong|(H1)> is its specification (II.1\UII.2, III.13;
  <hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>).
  <strong|(H2)> comprises fixed-volume centered budgets, ordered-tail power
  budgets, reflection positivity and chessboard inequalities, including root
  subadditivity (<hlink|<verbatim|CenterPort>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L30-L34>).
  Extractions select strictly increasing spacing and volume indices; ordered
  tails mean <math|k> large, then <math|j> large depending on <math|k>. For
  every fixed <math|p> and label <math|v>, at every sufficiently fine scale
  <math|m>, (H2) gives a constant bounding all centered roots and the
  interior condition for all sites and large <math|j>, with
  <math|N<rsub|j>\<geqslant\>max <around|(|m,<math-up|ref><around|(|d|)>|)>>.
  For every degree <math|d>, <math|R\<gtr\>0> and
  <math|\<varepsilon\>\<gtr\>0>, it also gives
  <math|m<rsub|0>\<geqslant\><math-up|ref><around|(|d|)>> and
  <math|A\<geqslant\>0> such that, for every <math|m\<geqslant\>m<rsub|0>>
  and <math|\<eta\>\<gtr\>0>, eventually along ordered tails with
  <math|N\<geqslant\>m>, all labels <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R>
  and sites satisfy the centered interior condition and root bound
  <math|A*a<rsub|m><rsup|-d-\<varepsilon\>>+\<eta\>>. Positivity and
  chessboard laws hold at every cutoff and volume.

  <strong|Proposition IV.1.1 (raw limits).> Under (H1)\U(H2) along any
  extraction <math|f>, there exist a refinement
  <math|<around|(|<around|(|N<rsub|j>|)>,<around|(|p<rsub|k>|)>|)>> and
  multilinear tables <math|S,P<rsub|p>> such that, for every arity <math|n>
  and label list <math|v>:

  (a) For every <math|p>, <math|P<rsub|p><around|(|v;\<cdot\>|)>> is
  continuous on <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>>. For every
  compact <math|K> therein and <math|\<varepsilon\>\<gtr\>0>, eventually in
  <math|j>, <math|<around|\||\<cal-C\><rsub|N<rsub|j>,p><around|(|v;r|)>-P<rsub|p><around|(|v;a<rsub|N<rsub|j>>*r|)>|\|>\<less\>\<varepsilon\>>
  for all lifted lattice tuples <math|r> with
  <math|a<rsub|N<rsub|j>>*r\<in\>K>.

  (b) <math|S<around|(|v;\<cdot\>|)>> is continuous on
  <math|<math-up|Gen><rsub|n>>, and <math|P<rsub|p<rsub|k>>\<to\>S> locally
  uniformly there.

  (c) For every <math|t\<in\>\<cal-D\><rsub|n>>, <math|t> is eventually
  admissible at <math|p<rsub|k>>; at every admissible <math|p>,
  <math|V<rsub|p>=lim<rsub|j> \<cal-C\><rsub|N<rsub|j>,p><around|(|v;t|)>>
  exists, and <math|V<rsub|p<rsub|k>>\<to\><big|int>t*S<around|(|v;\<cdot\>|)>>.

  (d) <math|t*S<around|(|v;\<cdot\>|)>> is integrable for every
  <math|t\<in\>\<cal-D\><rsub|n>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Extraction.crops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137>.

  <strong|Proposition IV.1.2 (label derivatives).> Suppose <math|S> satisfies
  IV.1.1(c)\U(d), with (H1)\U(H2) along <math|f>. Assume the relay properties
  of Ÿ2 for every degree, projections <math|\<pi\><rsub|d><around|(|N,p|)>>
  on <math|<math-up|Label><rsub|d>> converging in operator norm along ordered
  tails to projections <math|\<pi\><rsub|d>>, and <math|dim
  <math-up|Null><rsub|d><around|(|S|)>\<leqslant\>dim ker \<pi\><rsub|d>>.
  Then <math|ker \<pi\><rsub|d>=<math-up|Null><rsub|d><around|(|S|)>>, and
  there exist linear maps <math|\<kappa\><rsub|d,e>:<math-up|Label><rsub|d>\<to\><math-up|Label><rsub|e>>
  for every <math|d\<leqslant\>e>, and <math|\<tau\><rsub|d,a>:<math-up|Label><rsub|d>\<to\><math-up|Label><rsub|d+1>>
  for every axis, such that for all arities, slots, labels and
  <math|t\<in\>\<cal-D\><rsub|n>>,

  <\equation*>
    <big|int>t*S<around|(|v<rsub|i\<to\>\<kappa\>*v<rsub|i>>|)>=<big|int>t*S<around|(|v|)>,<space|2em><big|int>t*S<around|(|v<rsub|i\<to\>\<tau\><rsub|a>*v<rsub|i>>|)>=-<big|int><around|(|\<partial\><rsub|x<rsub|i><rsup|a>>*t|)>*S<around|(|v|)>.
  </equation*>

  <em|Status:> conditional theorem. <em|Lean:>
  <hlink|<verbatim|Work.D04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240>,
  <hlink|<verbatim|lifts_model>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L71-L87>.

  <strong|Proposition IV.1.3 (smooth limit).> If <math|S> satisfies IV.1.1
  along an extraction where IV.1.2 applies, there exists <math|T>, smooth on
  every <math|<math-up|Conf><rsub|n>>, equal to <math|S> on
  <math|<math-up|Gen><rsub|n>>, satisfying IV.1.1(a)\U(d) with the same
  extraction and <math|P<rsub|p>>, and the basic identities below. The maps
  descend to <math|<math-up|rise><rsub|d,e>:F<rsub|d>\<to\>F<rsub|e>> and
  <math|\<partial\><rsub|d,a>:F<rsub|d>\<to\>F<rsub|d+1>>. For every arity,
  label list, slot and <math|x\<in\><math-up|Conf><rsub|n>>,

  <\equation*>
    T<around|(|\<ldots\>,<math-up|rise><space|0.17em>u,\<ldots\>|)>=T<around|(|\<ldots\>,u,\<ldots\>|)>,<space|2em>T<around|(|v<rsub|i\<to\>\<partial\><rsub|a>*v<rsub|i>>;x|)>=\<partial\><rsub|x<rsub|i><rsup|a>>*T<around|(|v;x|)>.
  </equation*>

  The smooth ordered limit on <math|<math-up|Conf><rsub|n>> along a given
  extraction is unique. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Org.Arrives.serves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L101-L109>.

  <strong|Proposition IV.1.4 (Euclidean hierarchy).> Assume (H1),
  IV.1.1(a)\U(c) for <math|T> along <math|f>, and smoothness on every
  <math|<math-up|Conf><rsub|n>>. Then, for every arity, degree list and
  labels, on <math|<math-up|Conf><rsub|n>>:

  <\itemize-minus>
    <item><strong|(E1)> Simultaneous permutations preserve <math|T>; the
    empty correlation is <math|1>; inserting <math|1<rsub|d>> deletes that
    slot.

    <item><strong|(E2)> <math|T<around|(|\<rho\><around|(|s|)>*v;s*x|)>=T<around|(|v;x|)>>
    for every <math|s\<in\>H<rsub|4>>, and
    <math|T<around|(|<wide|v|\<bar\>>;x|)>=<wide|T<around|(|v;x|)>|\<bar\>>>.

    <item><strong|(E3)> <math|T<around|(|v;x+b|)>=T<around|(|v;x|)>> for
    every <math|b\<in\>\<bbb-R\><rsup|4>>.

    <item><strong|(E4)> For every axis <math|a>, finite collection of words
    <math|w<rsub|i>> with distinct points within each word and
    <math|x<rsup|a>\<gtr\>0>, and <math|c\<in\>\<bbb-C\><rsup|m>>,
    <math|<big|sum><rsub|i,j><wide|c|\<bar\>><rsub|i>*c<rsub|j>*T*<around|(|\<Theta\><rsub|a>*w<rsub|i>*w<rsub|j>|)>>
    is real and nonnegative.

    <item><strong|(E5)> The same holds for smeared words
    <math|<around|(|v<rsup|<around|(|i|)>>,t<rsub|i>|)>>,
    <math|t<rsub|i>\<in\>\<cal-D\><rsub|n<rsub|i>>> supported where all
    <math|x<rsub|k><rsup|a>\<gtr\>0>, with entries
    <math|<big|iint><wide|t<rsub|i><around|(|y|)>|\<bar\>>t<rsub|j><around|(|z|)>*T<around|(|\<Theta\><rsub|a><around|(|v<rsup|<around|(|i|)>>,y|)><around|(|v<rsup|<around|(|j|)>>,z|)>|)>>;
    these integrals converge absolutely.
  </itemize-minus>

  With <strong|(E7)>, this gives (E1)\U(E7): <strong|(E6)> is smoothness;
  <strong|(E7)> requires, for every arity, degree list, labels and
  <math|j\<geqslant\>0>, some <math|A\<in\>\<bbb-N\>,C\<geqslant\>0> with
  <math|<around|\<\|\|\>|D<rsup|j>*T<around|(|v;x|)>|\<\|\|\>>\<leqslant\>C*r<rsup|-A>>
  for all <math|0\<less\>r\<leqslant\>1> and all <math|r>-separated
  configurations. The constants are independent of <math|r,x>;
  <math|D<rsup|j>> has its real Fréchet operator norm. <em|Status:> theorem,
  conditional on (E7) for assembly. <em|Lean:>
  <hlink|<verbatim|Order.assembles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65>.

  <strong|Proposition IV.1.5 (short-distance bound).> Assume (H1)\U(H2) along
  <math|f>, smoothness of <math|T> for every arity and labels, and
  IV.1.1(a)\U(b). For every arity, degree list <math|<around|(|d<rsub|i>|)>>
  and labels <math|v>, some <math|C\<geqslant\>0>, independent of <math|r,x>,
  satisfies <math|<around|\||T<around|(|v;x|)>|\|>\<leqslant\>C*r<rsup|-4*n*<around|(|1+max<rsub|i>
  d<rsub|i>|)>>> for all <math|0\<less\>r\<leqslant\>1> and
  <math|r>-separated <math|x>. The empty maximum is <math|0>. With IV.1.3,
  B10 (V.1) supplies (E7). <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Work.D05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180>.

  <strong|Proposition IV.1.6 (symmetries of derivatives).> For smooth,
  permutation-symmetric <math|T> satisfying (E2), let
  <math|<around|(|<math-up|rise>,\<partial\>|)>> satisfy IV.1.3's identities.
  For every <math|d\<leqslant\>e>, axis and <math|s\<in\>H<rsub|4>>, these
  maps commute with conjugation, <math|<math-up|rise>> commutes with
  <math|\<rho\><around|(|s|)>>, and

  <\equation*>
    \<rho\><rsub|d+1><around|(|s|)>*\<partial\><rsub|b>=<big|sum><rsub|a>s<rsub|a*b>*\<partial\><rsub|a>*\<rho\><rsub|d><around|(|s|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Work.D06.compat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>II.1\UII.2, III.13: Wilson family specification (H1).

    <item>III.11: centered budgets (H2), supplied by
    <hlink|<verbatim|MergeProof.Accent.gardena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40>.

    <item>III.10\UIII.11: relay approximations to differences and inclusions,
    null-label detection and the separate dimension comparison
    (<hlink|<verbatim|MergeProof.Scotia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20>,
    <hlink|<verbatim|savings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47>).

    <item>III.16: positive-kernel trace Lipschitz estimates. I.1, III.2, V.1:
    gentle scales and subpolynomial column products. V.1: B10.

    <item>Osterwalder\USeiler positivity; chessboard estimates; Schatten
    Hölder, three-lines and Cauchy estimates; Arzelà\UAscoli, dominated
    convergence and Fourier regularity.
  </itemize-minus>

  The relay hypotheses require bounded projections at each fixed volume and
  along ordered tails; degree-<math|<around|(|d+1|)>> approximants to
  degree-<math|d> forward differences and degree-<math|e> approximants to
  degree-<math|d> labels for <math|d\<leqslant\>e>, with subpolynomial cutoff
  coordinates; and a null-label detector. For each approximation error there
  must be one rate <math|y<around|(|N,p|)>\<to\>0>: for every integer
  <math|q\<geqslant\>0> and lower scale <math|m>, some <math|k\<geqslant\>m>
  gives, eventually along ordered tails with <math|N\<geqslant\>k>, interior
  errors with roots <math|\<leqslant\>y<around|(|N,p|)>> in every translated
  bond cell of side <math|a<rsub|k>>, at relative lattice coordinates
  satisfying <math|M\<leqslant\>z<rsup|a>> and
  <math|z<rsup|a>+M+1\<leqslant\>a<rsub|k>/a<rsub|N>>, where
  <math|M=<around|\<lfloor\>|<around|(|a<rsub|k>/a<rsub|N>|)>/<around|(|8*<around|(|q+1|)>|)>|\<rfloor\>>>.
  Projection-kernel labels with subpolynomial growth must be chessboard-close
  to bounded measurable observables whose separated spectator correlations
  vanish exactly, eventually along ordered tails. Subpolynomial means
  <math|<around|\<\|\|\>|B<rsub|d,N,p><rsup|-1>*w<around|(|N,p|)>|\<\|\|\>>\<leqslant\>a<rsub|N><rsup|-\<varepsilon\>>>
  eventually for every <math|\<varepsilon\>\<gtr\>0>, where <math|B> is the
  terminal transfer to reference coordinates. The dimension comparison is an
  additional hypothesis (<hlink|<verbatim|RelayBin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L46-L52>).

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Chessboard bounds control separated correlations. Transfer kernels turn
  movement of an insertion into movement between gaps; complex interpolation
  gives equicontinuity. Two compactness arguments select spacing and volume
  subsequences. Relay approximations give distributional derivatives as
  raised-label kernels, hence smoothness. Lattice symmetries and positivity
  pass to the limit; scale estimates give polynomial bounds.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Under (H1), reflection positivity and repeated Cauchy\USchwarz give
    chessboard estimates; translation log-convexity transfers centered bounds
    to interior positions. <hlink|<verbatim|Around.interior_from>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L95-L129>.

    <item>Under (H1)\U(H2), translated cells separate insertions and bound
    correlations on distinct-point compact sets.
    <hlink|<verbatim|Around.size_done>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L120-L132>.

    <item>Under the same hypotheses, slab traces and chessboard column
    moments give equicontinuity on generic compact sets through interpolation
    and Cauchy's estimate. <hlink|<verbatim|Difference.completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214>.

    <item>Two Arzelà\UAscoli extractions give IV.1.1(a)\U(b); domination
    gives (c)\U(d). <hlink|<verbatim|first_surface>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L166-L184>,
    <hlink|<verbatim|Order.ordinary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153>.

    <item>Under IV.1.2's hypotheses, summation by parts identifies weak
    derivatives; small chessboard errors vanish. Normalized projected
    approximants and the dimension count give fixed derivative labels.
    <hlink|<verbatim|Work.D03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249>,
    <hlink|<verbatim|Dash.brace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Limits.lean#L69-L111>.

    <item>Iterating these identities gives rapid localized Fourier decay and
    the smooth representative. <hlink|<verbatim|Dash.awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58>.

    <item>Under IV.1.4's hypotheses, density passes symmetries; limiting Gram
    matrices pass positivity. Under IV.1.5's hypotheses, two scale choices
    give its bound. The derivative plan then promotes it to (E7).
    <hlink|<verbatim|Order.realPositive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L46-L60>,
    <hlink|<verbatim|Work.D05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180>,
    <hlink|<verbatim|Work.B10.capped_tags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L72-L90>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Uncentered roots and transfer-kernel equicontinuity require the main
  estimates. Fixed derivative labels require normalized remainders and the
  separate rank comparison. Equicontinuity holds on generic configurations;
  smoothness extends to all distinct-point configurations. The label maps are
  determined only modulo null labels, while their quotient maps are
  intrinsic. Continuous rotation symmetry comes later.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|<math-up|Label><rsub|d>> is the finite-dimensional complex label
  space; <math|F<rsub|d>=<math-up|Label><rsub|d>/<math-up|Null><rsub|d>>,
  where null labels have zero smeared kernels in every arity and slot against
  all spectator labels and tests. <math|<math-up|Conf><rsub|n>> means
  distinct points; <math|<math-up|Gen><rsub|n>> means separation in every
  coordinate, modulo <math|L<rsub|p>> for
  <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>>.
  <math|\<cal-D\><rsub|n>=C<rsub|c><rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>|)>>;
  admissibility means support inside <math|<around|(|-L<rsub|p>/2,L<rsub|p>/2|)><rsup|4*n>>.
  <math|a<rsub|N>*\<downarrow\>*0> and <math|L<rsub|p>*\<uparrow\>*\<infty\>>
  are spacings and periods. <math|\<cal-C\><rsub|N,p><around|(|v;r|)>=<around|\<langle\>|<big|prod><rsub|i>I<rsub|N,p><around|(|v<rsub|i>,r<rsub|i>|)>|\<rangle\>>>;
  smearing sums against <math|t<around|(|<wide|r|^>|)>> with weight
  <math|a<rsub|N><rsup|4*n>>, where <math|<wide|r|^>> is the physical site
  position. Lifted tuples are reduced modulo <math|L<rsub|p>/a<rsub|N>> for
  evaluation. <math|v<rsub|i\<to\>w>> replaces slot <math|i> by <math|w>.
  Separation uses the supremum norm. <math|\<rho\><rsub|d>> acts on labels
  and their quotients. <math|H<rsub|4>> consists of signed coordinate
  permutations, with matrices <math|<around|(|s<rsub|a*b>|)>>;
  <math|s<rsub|a>> reverses axis <math|a>; <math|\<Theta\><rsub|a>> reverses
  words, reflects points and replaces <math|v> by
  <math|\<rho\><around|(|s<rsub|a>|)><wide|v|\<bar\>>>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The upstream relay, rank and full fixed-volume kernel arguments remain
  unexplained, as does the budget's relation to III.12. Extraction is
  subsequential in both indices; III.13 supplies the full-spacing upgrade
  (<hlink|<verbatim|UVExtension.Reports.useFull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69>).
  Independence from the volume subsequence is not asserted.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/IV-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.16|III-16.tm>, <hlink|III.1|III-1.tm>, <hlink|III.10|III-10.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>, <hlink|VII.4|VII-4.tm>,
  <hlink|VI.2|VI-2.tm>, <hlink|VI.1|VI-1.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|V.1|V-1.tm>, <hlink|III.11|III-11.tm>, <hlink|V.2|V-2.tm>,
  <hlink|V.3|V-3.tm>, <hlink|III.13|III-13.tm>, <hlink|III.6|III-6.tm>,
  <hlink|VII.3|VII-3.tm>, <hlink|III.10|III-10.tm>, <hlink|III.12|III-12.tm>,
  <hlink|VII.6|VII-6.tm>, <hlink|VII.1|VII-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|VII.5|VII-5.tm>, <hlink|III.8|III-8.tm>, <hlink|III.3|III-3.tm>,
  <hlink|III.2|III-2.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 7,444 attributed lines; 1,049 line-counted
  declarations; 1,464 assigned declaration names. Of the assigned names,
  1,385 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Extraction/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction>,
    with <hlink|<verbatim|YM/Slice/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice>,
    <hlink|<verbatim|YM/Cells/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells>
    \V 4,642 lines.

    <item>work package <hlink|<verbatim|YM/Euclid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid>
    \V 1,079 lines.

    <item>work package <hlink|<verbatim|YM/Dash/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash>
    \V 530 lines.

    <item>work package <hlink|<verbatim|YM/Next/EXTRACTION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION>
    \V 249 lines.

    <item>work package <hlink|<verbatim|YM/Lane/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane>
    \V 101 lines.

    <item>work package <hlink|<verbatim|YM/Further/DENSE_MIXED_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/DENSE_MIXED_KERNELS>
    \V 12 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|wilsonLimit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56>

    <item><hlink|<verbatim|WilsonFamily.Converges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90>

    <item><hlink|<verbatim|YM/Bid/Drops.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean>

    <item><hlink|<verbatim|dollar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L18-L19>

    <item><hlink|<verbatim|close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25>

    <item><hlink|<verbatim|vet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L39>

    <item><hlink|<verbatim|heighten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44>

    <item><hlink|<verbatim|Bid.D01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L54>

    <item><hlink|<verbatim|Bid.D02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L57-L58>

    <item><hlink|<verbatim|Bid.D03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L61-L62>

    <item><hlink|<verbatim|Bid.D04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L65-L67>

    <item><hlink|<verbatim|Bid.D05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L70-L71>

    <item><hlink|<verbatim|Bid.healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97>

    <item><hlink|<verbatim|Bid.B10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L101-L102>

    <item><hlink|<verbatim|Bid.OneCap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98>

    <item><hlink|<verbatim|Cells.Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>

    <item><hlink|<verbatim|Tiling.adds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L108-L131>

    <item><hlink|<verbatim|Tiling.maximize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L32-L63>

    <item><hlink|<verbatim|Cells.Positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L116-L117>

    <item><hlink|<verbatim|Cells.Cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L40-L45>

    <item><hlink|<verbatim|Tiling.planted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38>

    <item><hlink|<verbatim|Cells.center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40>

    <item><hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>

    <item><hlink|<verbatim|Tiling.fits_together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Proximity.lean#L53-L66>

    <item><hlink|<verbatim|Tiling.trip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L60-L86>

    <item><hlink|<verbatim|Tiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L19-L25>

    <item><hlink|<verbatim|Tiling.copy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L221-L224>

    <item><hlink|<verbatim|Tiling.rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>

    <item><hlink|<verbatim|Holder.estimation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165>

    <item><hlink|<verbatim|Holder.finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>

    <item><hlink|<verbatim|Holder.leap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24>

    <item><hlink|<verbatim|Holder.convexStrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132>

    <item><hlink|<verbatim|Bin.Upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L24-L26>

    <item><hlink|<verbatim|Bin.shortage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L39>

    <item><hlink|<verbatim|Bin.exactC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L41-L42>

    <item><hlink|<verbatim|Spans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L55-L60>

    <item><hlink|<verbatim|MonitorOps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L63-L65>

    <item><hlink|<verbatim|MonitorOps.Wakes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L67-L69>

    <item><hlink|<verbatim|Wakes.through_ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L89-L96>

    <item><hlink|<verbatim|repair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L62-L71>

    <item><hlink|<verbatim|aggregate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L91-L113>

    <item><hlink|<verbatim|Dash.monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L108>

    <item><hlink|<verbatim|Dash.Bin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L119>

    <item><hlink|<verbatim|closeBy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L17-L18>

    <item><hlink|<verbatim|currents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L58-L59>

    <item><hlink|<verbatim|Hidden>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L94-L95>

    <item><hlink|<verbatim|arises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L98-L115>

    <item><hlink|<verbatim|DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>

    <item><hlink|<verbatim|Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>

    <item><hlink|<verbatim|Derivatives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64>

    <item><hlink|<verbatim|DiffPlan.Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>

    <item><hlink|<verbatim|Table.null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L34>

    <item><hlink|<verbatim|Table.Field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>

    <item><hlink|<verbatim|Pairing.at_point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L126-L131>

    <item><hlink|<verbatim|Pairing.nearGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L16-L33>

    <item><hlink|<verbatim|Register.Token>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88>

    <item><hlink|<verbatim|Register.one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L90>

    <item><hlink|<verbatim|Register.reflectedToken>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L93>

    <item><hlink|<verbatim|Table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L55-L56>

    <item><hlink|<verbatim|Basic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L75-L78>

    <item><hlink|<verbatim|RealSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L80-L84>

    <item><hlink|<verbatim|Homogeneous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L86>

    <item><hlink|<verbatim|Smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L88-L89>

    <item><hlink|<verbatim|Capped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L97-L99>

    <item><hlink|<verbatim|Test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18>

    <item><hlink|<verbatim|RP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L123-L124>

    <item><hlink|<verbatim|RPSmear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L136-L138>

    <item><hlink|<verbatim|Spin.uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L42-L50>

    <item><hlink|<verbatim|Around.swept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L57-L93>

    <item><hlink|<verbatim|Banks.plane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L19>

    <item><hlink|<verbatim|Banks.kept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L94-L102>

    <item><hlink|<verbatim|centeredBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23>

    <item><hlink|<verbatim|CenteredBook>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L25-L28>

    <item><hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>

    <item><hlink|<verbatim|Wcmain.projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L42-L56>

    <item><hlink|<verbatim|CenterPort.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L58-L66>

    <item><hlink|<verbatim|Difference.chrono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L24-L35>

    <item><hlink|<verbatim|Difference.stars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L37-L49>

    <item><hlink|<verbatim|Difference.reading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L51-L87>

    <item><hlink|<verbatim|comparable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L115-L163>

    <item><hlink|<verbatim|permits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L51-L64>

    <item><hlink|<verbatim|stepTotal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103>

    <item><hlink|<verbatim|Gaps.allGrows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L119-L127>

    <item><hlink|<verbatim|Gaps.someGrows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L129-L137>

    <item><hlink|<verbatim|Gaps.some>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L63-L80>

    <item><hlink|<verbatim|Gaps.all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L82-L93>

    <item><hlink|<verbatim|Around.fits_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L73-L114>

    <item><hlink|<verbatim|Order.spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L124-L149>

    <item><hlink|<verbatim|Order.limits_basic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L151-L193>

    <item><hlink|<verbatim|fuse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L27>

    <item><hlink|<verbatim|Order.inPatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L39-L44>

    <item><hlink|<verbatim|Order.equal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L48-L51>

    <item><hlink|<verbatim|Order.homogeneous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L83-L112>

    <item><hlink|<verbatim|Order.poses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L155-L158>

    <item><hlink|<verbatim|Bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L25-L30>

    <item><hlink|<verbatim|Order.intraperiod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L66-L95>

    <item><hlink|<verbatim|Order.ring_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L98-L113>

    <item><hlink|<verbatim|Family.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L20>

    <item><hlink|<verbatim|Family.numeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L68-L69>

    <item><hlink|<verbatim|Order.smears>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L26-L27>

    <item><hlink|<verbatim|Order.Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35>

    <item><hlink|<verbatim|Order.determined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L47-L50>

    <item><hlink|<verbatim|Order.Meshes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L57-L62>

    <item><hlink|<verbatim|Order.VolumePoints>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L64-L66>

    <item><hlink|<verbatim|PointLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L68>

    <item><hlink|<verbatim|volume_oscillates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L116-L138>

    <item><hlink|<verbatim|RawLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160>

    <item><hlink|<verbatim|RawLimits.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L194-L202>

    <item><hlink|<verbatim|TransferLip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L26-L30>

    <item><hlink|<verbatim|each_oscillates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L51-L68>

    <item><hlink|<verbatim|setMeshes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L78-L105>

    <item><hlink|<verbatim|Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36>

    <item><hlink|<verbatim|refine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40>

    <item><hlink|<verbatim|late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L47>

    <item><hlink|<verbatim|Order.limits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L61-L64>

    <item><hlink|<verbatim|Banks.at_cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Pairs.lean#L104-L125>

    <item><hlink|<verbatim|NoHit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26>

    <item><hlink|<verbatim|Cyclic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L28-L29>

    <item><hlink|<verbatim|suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31>

    <item><hlink|<verbatim|simultaneous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Simultaneous.lean#L21-L32>

    <item><hlink|<verbatim|fitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Stencil.lean#L69-L70>

    <item><hlink|<verbatim|localAscoli>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L100-L114>

    <item><hlink|<verbatim|oscillation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L20-L21>

    <item><hlink|<verbatim|almostGeneric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Ties.lean#L44-L49>

    <item><hlink|<verbatim|Lease.rents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L20-L22>

    <item><hlink|<verbatim|Lease.gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L54-L55>

    <item><hlink|<verbatim|Lease.take>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L57-L124>

    <item><hlink|<verbatim|Schedule.Gentle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130>

    <item><hlink|<verbatim|mesh_inequality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162>

    <item><hlink|<verbatim|MergeProof.Accent.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>

    <item><hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L111-L122>

    <item><hlink|<verbatim|Next.Extract.Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>

    <item><hlink|<verbatim|Base.null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L72-L74>

    <item><hlink|<verbatim|Next.Extract.finish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L79-L92>

    <item><hlink|<verbatim|RelayCosts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L115-L119>

    <item><hlink|<verbatim|Projected.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L178-L181>

    <item><hlink|<verbatim|Presentation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41>

    <item><hlink|<verbatim|Affordable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L46-L48>

    <item><hlink|<verbatim|include_projections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L86-L93>

    <item><hlink|<verbatim|Beam.arriving_seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180>

    <item><hlink|<verbatim|OS.thickness>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Halves.lean#L29-L39>

    <item><hlink|<verbatim|Org.Cleaner.stay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L113-L114>

    <item><hlink|<verbatim|Org.Assembly.wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L75-L76>

    <item><hlink|<verbatim|Org.Arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L83-L86>

    <item><hlink|<verbatim|Org.Cleaner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L90-L96>

    <item><hlink|<verbatim|Time.partition_seen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L34-L38>

    <item><hlink|<verbatim|Slice.portPos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Gate.lean#L94-L102>

    <item><hlink|<verbatim|Time.selects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Resident.lean#L74-L87>

    <item><hlink|<verbatim|constant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102>

    <item><hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>

    <item><hlink|<verbatim|Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>

    <item><hlink|<verbatim|reality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86>

    <item><hlink|<verbatim|rotated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98>

    <item><hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>

    <item><hlink|<verbatim|generic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66>

    <item><hlink|<verbatim|TimeKernel.learns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119>

    <item><hlink|<verbatim|TimeKernel.passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>

    <item><hlink|<verbatim|UVExtension.Mast.calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36>

    <item><hlink|<verbatim|full_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58>

    <item><hlink|<verbatim|Work.B10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>

    <item><hlink|D01|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean>

    <item><hlink|<verbatim|Work.D01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L127-L134>

    <item><hlink|<verbatim|columnLogs_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L34-L63>

    <item><hlink|<verbatim|terminal_ball>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L92-L125>

    <item><hlink|D02|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean>

    <item><hlink|<verbatim|Work.D02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean#L24-L84>

    <item><hlink|D03|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean>

    <item><hlink|<verbatim|error_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L185-L242>

    <item><hlink|<verbatim|on_lattice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L71-L77>

    <item><hlink|D04|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean>

    <item><hlink|D05|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean>

    <item><hlink|<verbatim|scales>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L132-L158>

    <item><hlink|<verbatim|image_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L43-L68>

    <item><hlink|<verbatim|separated_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L95-L128>

    <item><hlink|D06|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean>

    <item><hlink|<verbatim|Work.D06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iv-1-1>

  <\itemize-minus>
    <item><strong|K-IV.1.1> <hlink|<verbatim|Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113>
    <em|(numbered result)> \V A structure packaging a measurable local
    assignment on a set of sites with a uniform bound independent of the
    continuum limit.
  </itemize-minus>

  <label|k-iv-1-2>

  <\itemize-minus>
    <item><strong|K-IV.1.2> <hlink|<verbatim|enumerate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L74-L99>
    \V The copy map for a cell sends the base chamber into the chamber of
    that cell.
  </itemize-minus>

  <label|k-iv-1-3>

  <\itemize-minus>
    <item><strong|K-IV.1.3> <hlink|<verbatim|existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Flood.lean#L110-L128>
    <em|(numbered result)> \V For a fold-closed predicate satisfied by some
    assignment, some constant assignment also satisfies it.
  </itemize-minus>

  <label|k-iv-1-4>

  <\itemize-minus>
    <item><strong|K-IV.1.4> <hlink|<verbatim|Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>
    <em|(key result)> \V A bundle of Euclidean-covariance-type properties
    (axioms) of a Schwinger-function table, required before establishing
    continuous rotation invariance.
  </itemize-minus>

  <label|k-iv-1-5>

  <\itemize-minus>
    <item><strong|K-IV.1.5> <hlink|<verbatim|awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58>
    <em|(key result)> \V Given a live, suitably regular family of
    distributions with enough derivatives, there is a smooth table matching
    it on the regular part.
  </itemize-minus>

  <label|k-iv-1-6>

  <\itemize-minus>
    <item><strong|K-IV.1.6> <hlink|<verbatim|pathway>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L89-L101>
    <em|(numbered result)> \V If a function along a sequence of translates
    has bounded root-test at both endpoints and all are interior, then it is
    bounded at all intermediate offsets.
  </itemize-minus>

  <label|k-iv-1-7>

  <\itemize-minus>
    <item><strong|K-IV.1.7> <hlink|<verbatim|fold_both>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Polar.lean#L94-L102>
    <em|(key result)> \V Cauchy\USchwarz-type fold estimate: the square of
    the root power of a mixed assignment is bounded by the product of the two
    homogeneous ones.
  </itemize-minus>

  <label|k-iv-1-8>

  <\itemize-minus>
    <item><strong|K-IV.1.8> <hlink|<verbatim|tiles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L80-L105>
    <em|(main result)> \V Chessboard estimate: the root power of a product of
    cell-localized functions is bounded by the product of single-function
    root tests.
  </itemize-minus>

  <label|k-iv-1-9>

  <\itemize-minus>
    <item><strong|K-IV.1.9> <hlink|<verbatim|physical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L117-L138>
    <em|(numbered result)> \V For large period and small mesh, evaluating a
    shifted test function at lattice cells after a one-slot jump equals
    evaluating at the translated point, with no wrapping.
  </itemize-minus>

  <label|k-iv-1-10>

  <\itemize-minus>
    <item><strong|K-IV.1.10> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249>
    <em|(key result)> \V Forward differences in a single slot are controlled
    in the ordered extraction.
  </itemize-minus>

  <label|k-iv-1-11>

  <\itemize-minus>
    <item><strong|K-IV.1.11> <hlink|<verbatim|step_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91>
    <em|(key result)> \V For nonnegative \<beta\>, the temporal heat-kernel
    transfer step of the Wilson lattice is a nonnegative (positive-type)
    kernel.
  </itemize-minus>

  <label|k-iv-1-12>

  <\itemize-minus>
    <item><strong|K-IV.1.12> <hlink|<verbatim|enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Present.lean#L76-L111>
    <em|(key result)> \V For a reflection-symmetric brick tiling, the p-th
    root-power of the norm of the column moment is bounded by the common
    root-test bound A of the function and its reflection.
  </itemize-minus>

  <label|k-iv-1-13>

  <\itemize-minus>
    <item><strong|K-IV.1.13> <hlink|<verbatim|reflected_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Reflection.lean#L98-L114>
    <em|(key result)> \V The Wilson lattice measure is reflection positive
    across a seam for nonnegative \<beta\>.
  </itemize-minus>

  <label|k-iv-1-14>

  <\itemize-minus>
    <item><strong|K-IV.1.14> <hlink|<verbatim|laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24>
    <em|(key result)> \V For nonnegative coupling, the cell
    reflection-positivity seam property holds for all sizes.
  </itemize-minus>

  <label|k-iv-1-15>

  <\itemize-minus>
    <item><strong|K-IV.1.15> <hlink|<verbatim|seamless>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84>
    <em|(key result)> \V For a family satisfying the makes condition, the
    torus tiling at every side and coupling scale has the seam property.
  </itemize-minus>

  <label|k-iv-1-16>

  <\itemize-minus>
    <item><strong|K-IV.1.16> <hlink|<verbatim|assembles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65>
    <em|(main result)> \V An ordered extraction with point limits, smooth and
    capped, yields a full Euclidean-positive hierarchy of limiting
    correlation functions.
  </itemize-minus>

  <label|k-iv-1-17>

  <\itemize-minus>
    <item><strong|K-IV.1.17> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180>
    <em|(key result)> \V The D05 requirement holds: the extraction order's
    evaluation, with tie handling and cofinal sequences, is established for
    the construction.
  </itemize-minus>

  <label|k-iv-1-18>

  <\itemize-minus>
    <item><strong|K-IV.1.18> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240>
    <em|(key result)> \V Transfer from match rents to the all-shot monitor
    holds, discharging a required hypothesis for the extraction.
  </itemize-minus>

  <label|k-iv-1-19>

  <\itemize-minus>
    <item><strong|K-IV.1.19> <hlink|<verbatim|uniqueLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Union.lean#L62-L83>
    <em|(key result)> \V Compatible finite-degree linear maps lift uniquely
    to a linear map on the union (colimit) space.
  </itemize-minus>

  <label|k-iv-1-20>

  <\itemize-minus>
    <item><strong|K-IV.1.20> <hlink|<verbatim|powering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102>
    <em|(key result)> \V Shifting a length l of time between two bricks
    changes the moment by at most the product of column bounds times l/r.
  </itemize-minus>

  <label|k-iv-1-21>

  <\itemize-minus>
    <item><strong|K-IV.1.21> <hlink|<verbatim|organized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Ordered.lean#L68-L115>
    <em|(numbered result)> \V For well-separated time points, cyclic gap
    arithmetic reorganizes the product of column moments with a bound in
    terms of the K_i.
  </itemize-minus>

  <label|k-iv-1-22>

  <\itemize-minus>
    <item><strong|K-IV.1.22> <hlink|<verbatim|primitive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L90-L145>
    <em|(key result)> \V Lattice correlation functions have a Lipschitz bound
    for a single-point shift in one axis, with constant given by a product of
    root-test bounds divided by the separation scale r.
  </itemize-minus>

  <label|k-iv-1-23>

  <\itemize-minus>
    <item><strong|K-IV.1.23> <hlink|<verbatim|completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214>
    <em|(key result)> \V Centered bounds on lattice data give Lipschitz
    equicontinuity of the transfer from the exact cell estimates.
  </itemize-minus>

  <label|k-iv-1-24>

  <\itemize-minus>
    <item><strong|K-IV.1.24> <hlink|<verbatim|crops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137>
    <em|(key result)> \V From centered bounds on the projected data one can
    extract a subsequence with raw continuum limits.
  </itemize-minus>

  <label|k-iv-1-25>

  <\itemize-minus>
    <item><strong|K-IV.1.25> <hlink|<verbatim|compat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135>
    <em|(key result)> \V For a smooth symmetric table with real spin and a
    differential plan with derivatives and inclusions, the plan is compatible
    with orientation.
  </itemize-minus>

  <label|k-iv-1-26>

  <\itemize-minus>
    <item><strong|K-IV.1.26> <hlink|<verbatim|Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L98-L118>
    <em|(numbered result)> \V A validity predicate bundling conditions on a
    common aligned series of coefficients for detecting sets at each weight.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.16 Analytic
  toolkit|III-16.tm>|<hlink|Part IV|../units.tm#part-iv-infinite-volume><ym-nav-sep><hlink|Detailed
  notes|../notes/IV-1.tm>|<hlink|V.1 Decomposition of the limit into phases
  \<rightarrow\>|V-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|IV.1. Infinite volume: extraction of a subsequence
    and the Euclidean axioms of the limit \U Yang\UMills informalization>
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
    <associate|iv1-infinite-volume-extraction-of-a-subsequence-and-the-euclidean-axioms-of-the-limit|<tuple|?|1>>
    <associate|k-iv-1-1|<tuple|10|12>>
    <associate|k-iv-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-18|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iv-1-20|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-21|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-22|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iv-1-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iv-1-24|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iv-1-25|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iv-1-26|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iv-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iv-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|7|4>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|2>>
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