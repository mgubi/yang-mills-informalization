<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> II.1 Field labels and their lattice
  representatives|II-1.tm>|<hlink|Part II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Detailed
  notes|../notes/II-2.tm>|<hlink|III.1 The block-spin step and the symmetric
  gauge fixing \<rightarrow\>|III-1.tm>>

  <ym-title|II.2. Marker algebra, polymer combinatorics and Gaussian
  estimates><label|ii2-marker-algebra-polymer-combinatorics-and-gaussian-estimates>

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

  <em|Part II \V Data of the construction.>

  Develops the algebra and estimates used to multiply and sum polymer
  activities.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/II-2.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: II.1|II-1.tm> <ym-middot> <hlink|Next: III.1
  \<rightarrow\>|III-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> For activity definitions see
  <hlink|III.1|III-1.tm>, for field labels and Wilson-family data
  <hlink|II.1|II-1.tm>, and for reflection-positive cells
  <hlink|IV.1|IV-1.tm>. The source allocation below does not define these
  reading routes.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> II, Data of the construction. <strong|Lean:>
    <hlink|<verbatim|YM/Marker/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker>,
    <hlink|<verbatim|YM/Ac/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac>,
    <hlink|<verbatim|YM/Ovens/Coffee.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean>,
    <hlink|<verbatim|YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean>,
    <hlink|<verbatim|YM/Extra/MULTISOURCE_TRAJECTORIES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES>,
    <hlink|<verbatim|YM/Push/GRID_APPROXIMATION/Nil.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean>,
    <hlink|<verbatim|YM/MergeProof/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof>,
    <hlink|<verbatim|YM/Next/RANK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK>,
    <hlink|<verbatim|YM/Vac/Treasury.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean>.
    <strong|Size:> 3,691 lines in 793 line-counted declarations in the source
    allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition II.2.1 (marker algebra).> For finite <math|V> and a
  downward-closed family <math|R\<subseteq\>2<rsup|V>> containing
  <math|\<emptyset\>> and singletons, <math|\<cal-A\><rsub|R>=\<bbb-C\><rsup|R>>
  is a commutative unital algebra: <math|\<delta\><rsub|x>*\<delta\><rsub|y>=\<delta\><rsub|x\<cup\>y>>
  for disjoint <math|x,y> with <math|x\<cup\>y\<in\>R>, and zero otherwise;
  <math|1=\<delta\><rsub|\<emptyset\>>>. Constant coefficients multiply. If
  <math|a<around|(|\<emptyset\>|)>=0>, then <math|a<rsup|k><around|(|x|)>=0>
  for <math|<around|\||x|\|>\<less\>k>, hence <math|a<rsup|k>=0> for
  <math|k\<gtr\><around|\||V|\|>>. <em|Status:> theorem. <em|Lean:>
  <hlink|ring structure|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean>,
  <hlink|<verbatim|Poly.stops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L26-L27>.

  <strong|Proposition II.2.2 (norm).> For positive <math|w<rsub|v>>, set
  <math|w<rsup|x>=<big|prod><rsub|v\<in\>x>w<rsub|v>>,
  <math|<around|\<\|\|\>|a|\<\|\|\>><rsub|w>=<big|sum><rsub|x\<in\>R>w<rsup|x><around|\||a<around|(|x|)>|\|>>
  and <math|<math-up|Exp><around|(|a|)>=<big|sum><rsub|k=0><rsup|<around|\||V|\|>>a<rsup|k>/k!>.
  Then <math|<around|\<\|\|\>|1|\<\|\|\>><rsub|w>=1>,
  <math|<around|\<\|\|\>|c*\<delta\><rsub|x>|\<\|\|\>><rsub|w>=w<rsup|x><around|\||c|\|>>,
  <math|<around|\<\|\|\>|a*b|\<\|\|\>><rsub|w>\<leqslant\><around|\<\|\|\>|a|\<\|\|\>><rsub|w><around|\<\|\|\>|b|\<\|\|\>><rsub|w>>,
  and <math|<around|\<\|\|\>|<math-up|Exp><around|(|a|)>|\<\|\|\>><rsub|w>\<leqslant\>e<rsup|<around|\<\|\|\>|a|\<\|\|\>><rsub|w>>>.
  A countable family with <math|<around|\<\|\|\>|f<rsub|i>|\<\|\|\>><rsub|w>\<leqslant\>b<rsub|i>>
  and <math|<big|sum><rsub|i>b<rsub|i>\<less\>\<infty\>> has a
  coefficientwise sum of norm at most <math|<big|sum><rsub|i>b<rsub|i>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|multiplication>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L139-L146>,
  <hlink|<verbatim|budgeted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L51-L58>.

  <strong|Proposition II.2.3 (connected polynomial).> For zero-constant
  <math|a,b>, <math|<math-up|Exp><around|(|a+b|)>=<math-up|Exp><around|(|a|)><math-up|Exp><around|(|b|)>>
  and <math|<math-up|Exp><around|(|-a|)><math-up|Exp><around|(|a|)>=1>. For
  nonempty <math|x\<in\>R>, <math|<math-up|Exp><around|(|c*\<delta\><rsub|x>|)>=1+c*\<delta\><rsub|x>>.
  Every <math|F<around|(|\<emptyset\>|)>=1> has a unique zero-constant
  <math|C> with <math|<math-up|Exp><around|(|C|)>=F>; <math|C> depends
  continuously on <math|F>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Exponential.pass_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L56-L88>,
  <hlink|<verbatim|connected_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L179-L180>.

  <strong|Proposition II.2.4 (tagging; repacking).> For finite <math|s> and
  <math|\<tau\>:\<iota\>\<to\>R>, a nonzero tagged product requires pairwise
  disjoint tags with union in <math|R>; it equals
  <math|<around|(|<big|prod><rsub|i\<in\>s>c<rsub|i>|)>*\<delta\><rsub|<big|cup><rsub|i>\<tau\><around|(|i|)>>>,
  and weights factor. If <math|\<sigma\>:\<iota\>\<to\>\<kappa\>>,
  admissibility is any property of finite slot sets, and
  <math|<big|sum><rsub|i><around|\<\|\|\>|F<rsub|i>|\<\|\|\>><rsub|w>\<less\>\<infty\>>,
  then

  <\equation*>
    <big|sum><rsub|<stack|<tformat|<table|<row|<cell|s<text|
    finite>:\<sigma\>\|<rsub|s><text| injective>>>|<row|<cell|\<sigma\><around|(|s|)><text|
    admissible>>>>>>><big|prod><rsub|i\<in\>s>F<rsub|i>=<big|sum><rsub|<stack|<tformat|<table|<row|<cell|S<text|
    finite>>>|<row|<cell|S<text| admissible>>>>>>><big|prod><rsub|k\<in\>S><big|sum><rsub|\<sigma\><around|(|i|)>=k>F<rsub|i>,
  </equation*>

  with summable terms. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|tagged_prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L57-L69>,
  <hlink|<verbatim|Packets.repack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L114-L124>.

  <strong|Proposition II.2.5 (components).> For arbitrary finite supports
  <math|X<rsub|i>> and finite label set <math|s>, overlap-chain classes
  partition <math|s> into nonempty connected sets, called sparks, with
  disjoint support-unions. Conversely, disjointly supported sparks recover
  exactly these classes. Removing <math|i\<in\>s> from a spark <math|s>
  leaves components each meeting <math|X<rsub|i>>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|separates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L79-L101>,
  <hlink|<verbatim|excise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L103-L113>.

  <strong|Proposition II.2.6 (tree bound).> Let <math|M\<in\>\<bbb-N\>>,
  <math|a,\<gamma\>,f<rsub|i>\<geqslant\>0> and
  <math|<around|(|2*M+1|)><rsup|4>*\<gamma\>\<leqslant\>1>. If, at every site
  <math|x>, <math|<big|sum><rsub|i:x\<in\>X<rsub|i>>f<rsub|i>*e<rsup|<around|(|a+1|)><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>>
  is summable and at most <math|\<gamma\>>, then

  <\equation*>
    <big|sum><rsub|<stack|<tformat|<table|<row|<cell|s<text|
    spark>>>|<row|<cell|x\<in\>X<around|(|s|)>>>>>>>e<rsup|a<math-up|cov><rsub|M><around|(|X<around|(|s|)>|)>>*<big|prod><rsub|i\<in\>s>f<rsub|i>\<leqslant\>e<rsup|\<gamma\>>-1,
  </equation*>

  and this family is summable; labels are not repeated. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Ac.forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127>.

  <strong|Proposition II.2.7 (two overlaps).> Give each label finite mentions
  and walls, and mark some labels dirty. Within a selection, a label is hot
  when mention-connected to dirt; its fuel comprises mentions and, when hot,
  walls in disjoint copies of their ambient sets. Fuel components retain
  their internal hotness. They bijectively decompose finite selections into
  nonempty fuel-connected sets with disjoint mention-unions and disjoint
  wall-unions among dirty-containing components. If walls are lattice
  supports and mention overlap implies wall overlap inside such a connected
  set, it is wall-connected. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Kiln.undo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240>,
  <hlink|<verbatim|Kiln.attends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L242-L253>.

  <strong|Proposition II.2.8 (fusion).> Fix a gauge group <math|G>,
  four-dimensional periodic lattice <math|\<Lambda\>>, activity parameters
  and regular/forced addresses (forced inventories nonempty and contained in
  their supports, with extra tests) and coefficients
  <math|E<rsub|i>,K<rsub|i>>, plus logarithms <math|\<ell\><rsub|i>> on
  nonempty supports <math|Y<rsub|i>>, indexed by <math|\<bbb-N\>>. Patches
  are forced supports or <math|Y<rsub|i>>. Pellets are finite patch-connected
  selections containing a forced label, with disjoint forced supports; their
  reaches are <math|K<rsub|i>> and <math|e<rsup|\<ell\><rsub|i>>-1>. Pellets
  admit a bijective enumeration. Fusion preserves regular activities and
  assigns each pellet its union support, union forced inventory, conjunction
  of forced eligibility tests, and eligibility indicator times its
  reach-product. <em|Status:> definitions; enumeration theorem. The density,
  bound, covariance and parametric continuity results belong to III.10.
  <em|Lean:> <hlink|<verbatim|fused>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L78>,
  <hlink|<verbatim|encoding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L121-L133>.

  The digest condition requires unfused validity with bounds
  <math|\<delta\>,b>; logarithms supported on patches meeting the large-field
  set, uniformly summably bounded, measurable, gauge invariant, local in
  internal links and flags, and affine covariant. Fusion bounds require
  <math|\<kappa\>,\<gamma\>\<geqslant\>0>,
  <math|<around|(|2*B+1|)><rsup|4>*\<gamma\>\<leqslant\>1>, and a
  configuration-independent <math|f\<geqslant\>0> with
  <math|<around|\||<math-up|reach>|\|>\<leqslant\>e<rsup|-\<kappa\>>*f> on
  forced labels and <math|<around|\||<math-up|reach>|\|>\<leqslant\>f>
  otherwise, satisfying II.2.6's hit condition with cover size <math|B> and
  exponent <math|e<rsub|P>+1>. <em|Lean:>
  <hlink|<verbatim|Digests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L81-L90>,
  <hlink|<verbatim|Buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L94-L98>.

  <strong|Proposition II.2.9 (switching).> For finite <math|\<iota\>>,
  <math|<math-up|val><rsub|x><around|(|g|)><around|(|r|)>=<big|sum><rsub|i\<subseteq\>r>x<rsup|<around|\||i|\|>>*g<around|(|i|)>>
  is invertible for <math|x\<gtr\>0>. A model satisfies
  <math|<math-up|val><rsub|x><around|(|g<rsub|x>|)>=f<rsub|x>> on
  <math|<around|[|0,1|]>> and <math|g<rsub|x>\<to\>g<rsub|0>>; its jet is
  <math|g<rsub|0>>. A family is paid at cost <math|d> when models share a
  bound <math|<around|\||g<rsub|x><rsup|u><around|(|i|)>|\|>\<leqslant\>b<around|(|i|)>>
  with <math|b\<geqslant\>0>, <math|<big|sum><rsub|i>b<around|(|i|)>\<leqslant\>d>.
  Costs add under finite sums and multiply under finite products; summable
  costs permit infinite sums and commuting jets with sums. If modeled
  <math|f<rsub|x><around|(|r|)>=f<rsub|x>*<around|(|r\<setminus\><around|{|v|}>|)>>
  for every <math|r> and <math|x\<in\><around|[|0,1|]>>, then
  <math|<math-up|jet><around|(|f|)><around|(|i|)>=0> whenever
  <math|v\<in\>i>; pointwise measurability of paid families passes to jets.
  If <math|<around|\<\|\|\>|\<rho\><rsub|v>|\<\|\|\>><rsub|w>\<leqslant\>1>,
  then <math|<big|sum><rsub|i><math-up|jet><around|(|f<rsup|u>|)><around|(|i|)>*<big|prod><rsub|v\<in\>i>\<rho\><rsub|v>>
  has a common coefficient majorant of weighted norm at most <math|d>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|entire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L33-L42>,
  <hlink|<verbatim|Accent.crystal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L13-L19>.

  <strong|Proposition II.2.10 (Gaussian calculus).> For complex symmetric
  <math|P,Q>, define <math|\<cal-G\><rsub|Q>*p=p*<around|(|X+\<partial\><rsub|Q>|)>*1>
  and <math|\<bbb-E\><rsub|Q,m>*p=<around|(|\<cal-G\><rsub|Q>*p|)><around|(|m|)>>.
  These satisfy Wick recursion, <math|\<cal-G\><rsub|P>*\<cal-G\><rsub|Q>=\<cal-G\><rsub|P+Q>>,
  and covariance transport <math|Q\<mapsto\>A*Q*A<rsup|T>> under
  substitutions with finitely supported rows. A real random vector
  <math|\<xi\>> under a probability law with all polynomial moments and
  <math|\<bbb-E\>*<around|[|\<xi\><rsub|v>*q<around|(|\<xi\>|)>|]>=\<bbb-E\><around|[|<around|(|\<partial\><rsub|Q<rsub|v\<cdot\>>>*q|)><around|(|\<xi\>|)>|]>>
  for every <math|v,q> has expectation <math|\<bbb-E\>*<around|[|q*<around|(|m+\<xi\>|)>|]>=\<bbb-E\><rsub|Q,m>*q>
  for every real <math|m>. If <math|B\<geqslant\>1>,
  <math|<around|\||m<rsub|v>|\|>,<around|\||Q<rsub|v*w>|\|>\<leqslant\>B>,
  <math|deg p\<leqslant\>d>, then <math|<around|\||\<bbb-E\><rsub|Q,m>*p|\|>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*\<pi\><around|(|B,d|)>>.
  Two such pairs differing entrywise by at most <math|E\<geqslant\>0> have
  expectation difference at most <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>*E*\<pi\><around|(|B,d|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|warms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L96-L102>,
  <hlink|<verbatim|payment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L61-L78>,
  <hlink|<verbatim|Common.differs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126>.

  <strong|Proposition II.2.11 (polynomial steps).> Let <math|Q> be symmetric
  and <math|H<rsub|v>> linear. If <math|C\<geqslant\>1>,
  <math|<around|\<\|\|\>|H<rsub|v>|\<\|\|\>><rsub|1>,<around|\||Q<rsub|v*w>|\|>\<leqslant\>C>,
  <math|deg p\<leqslant\>d>, then <math|T<rsub|H,Q>*p=<around|(|\<cal-G\><rsub|Q>*p|)>\<circ\>H>
  has degree at most <math|d> and norm at most
  <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>*<around|(|2*<around|(|d+2|)>*C|)><rsup|d>>.
  Two such pairs differing by at most <math|\<varepsilon\>\<geqslant\>0> in
  these norms have output difference bounded by
  <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>*\<varepsilon\>*<around|(|2*<around|(|d+2|)>*C|)><rsup|d>>.
  Zero cross-covariance between variables of <math|P,R> gives
  <math|T*<around|(|P*R|)>=T<around|(|P|)>*T<around|(|R|)>>. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|crux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L119-L124>,
  <hlink|<verbatim|crossing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L125-L126>,
  <hlink|<verbatim|bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Crust.lean#L59>.

  Weighted coefficient quantities <math|<big|sum><rsub|\<beta\>>r<rsup|w\<cdot\>\<beta\>><around|\||c<rsub|\<beta\>>|\|>>,
  for <math|w:V\<to\>\<bbb-N\>>, <math|r\<geqslant\>0>, are
  submultiplicative, and norms for <math|r\<gtr\>0>. If
  <math|0\<leqslant\>\<varepsilon\>\<leqslant\>1>,
  <math|<around|\||Q<rsub|v*w>|\|>\<leqslant\>\<varepsilon\>>, <math|deg
  p\<leqslant\>d>, then <math|<around|\<\|\|\>|\<cal-G\><rsub|Q>*p-p|\<\|\|\>><rsub|1>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1>*\<varepsilon\>*<around|(|2*<around|(|d+2|)>|)><rsup|d>>.
  For linear <math|f<rsub|v>> and polynomials <math|A<rsub|v>> without terms
  below degree two, <math|<around|\<\|\|\>|f<rsub|v>|\<\|\|\>><rsub|1>,<around|\<\|\|\>|A<rsub|v>|\<\|\|\>><rsub|1>\<leqslant\>B>,
  <math|B\<geqslant\>1>, <math|0\<less\>t\<leqslant\>1>, symmetric <math|K>
  with <math|0\<leqslant\>\<varepsilon\>\<leqslant\>1>,
  <math|<around|\||K<rsub|v*w>|\|>\<leqslant\>\<varepsilon\>>, and <math|deg
  P\<leqslant\>n>,

  <\equation*>
    <around|\<\|\|\>|\<Phi\><rsub|t><around|(|P|)>-<around|(|\<cal-G\><rsub|K>*P|)>\<circ\>f|\<\|\|\>><rsub|1>\<leqslant\><around|\<\|\|\>|P|\<\|\|\>><rsub|1>*<around*|(|n*t*B*<around|(|2*B|)><rsup|n>+\<varepsilon\>*<around|(|2*<around|(|n+2|)>|)><rsup|n>*B<rsup|n>|)>,
  </equation*>

  where <math|\<Phi\><rsub|t>:X<rsub|v>\<mapsto\>f<rsub|v>+t<rsup|-1>*A<rsub|v>*<around|(|t*X|)>>.
  A measurable <math|g\<in\><around|[|0,1|]>> with
  <math|<big|int><around|(|1-g|)>*d*\<mu\>\<leqslant\>\<eta\>> is an
  <math|\<eta\>>-guard. For probability <math|\<mu\>> and measurable <math|f>
  with <math|<big|int><around|\||f|\|><rsup|2>*d*\<mu\>\<leqslant\>B\<less\>\<infty\>>,
  <math|<around|\||<big|int>g*f*<space|0.17em>d*\<mu\>-<big|int>f*<space|0.17em>d*\<mu\>|\|>>
  is at most <math|\<varepsilon\><rprime|'>*B+\<eta\>/\<varepsilon\><rprime|'>>
  for every <math|\<varepsilon\><rprime|'>\<gtr\>0>. Under II.2.10's
  probability-law hypotheses and entry bounds,
  <math|<big|int><around|\||p*<around|(|m+\<xi\>|)>|\|><rsup|2>\<leqslant\><around|\<\|\|\>|p|\<\|\|\>><rsub|1><rsup|2>*\<pi\><around|(|B,2*d|)>>.
  For finite <math|V>, <math|d\<in\>\<bbb-N\>>, <math|\<delta\>\<gtr\>0>,
  there exist finite nonempty <math|T\<subseteq\><around|[|-\<delta\>,\<delta\>|]><rsup|V>>
  and <math|C\<geqslant\>0> with <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>\<leqslant\>C*max<rsub|x\<in\>T><around|\||p<around|(|x|)>|\|>>
  for every <math|deg p\<leqslant\>d>. <em|Lean:>
  <hlink|<verbatim|LiftMark.stock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L66-L84>,
  <hlink|<verbatim|escaped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L108-L125>,
  <hlink|<verbatim|Spindle.molds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L56-L81>.

  <strong|Proposition II.2.12 (scales).> For <math|s\<gtr\>e>, put
  <math|y=log log s>, <math|\<Pi\>=e<rsup|y<rsup|2>>>,
  <math|\<theta\>=s<rsup|-1/2>*\<Pi\>>, <math|h=e<rsup|y<rsup|3/2>>>,
  <math|j=h<rsup|1/5>>, <math|M=<around|\<lceil\>|<around|(|log
  s|)><rsup|2>|\<rceil\>>>, <math|W=M<rsup|2>>. For every fixed
  <math|a,p\<gtr\>0>,

  <\equation*>
    y<rsup|2>\<ll\>j\<ll\>h\<ll\>\<Pi\><rsup|a>\<ll\>s<rsup|p>,<space|2em>W\<sim\><around|(|log
    s|)><rsup|4>.
  </equation*>

  For fixed <math|a\<gtr\>0>, <math|k\<in\>\<bbb-N\>>,
  <math|c\<in\>\<bbb-R\>>, eventually <math|W<rsup|k>,h\<leqslant\>\<Pi\><rsup|a>>,
  <math|c*log W\<leqslant\>a*y<rsup|2>>, <math|y<around|(|s|)><rsup|2>\<leqslant\>a*W*<around|(|s/2|)>,a*j*<around|(|s/2|)>>
  and <math|j<around|(|s|)>\<leqslant\>h*<around|(|s/2|)>>. Eventually
  <math|s*\<theta\><rsup|2>=\<Pi\><rsup|2>>,
  <math|s*\<theta\><rsup|3>,s*\<theta\><rsup|4>\<leqslant\>1>, and
  <math|2*\<Pi\><rsup|v>*\<theta\><rsup|2>\<leqslant\>1> for every
  <math|v\<leqslant\>1>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|uniform_loop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L83-L108>,
  <hlink|<verbatim|rate_fire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L110-L122>.

  <strong|Proposition II.2.13 (numerical feasibility).> Fix
  <math|m,Q\<in\>\<bbb-N\>>, <math|e,U,V\<geqslant\>0>, <math|a\<gtr\>0>,
  <math|\<alpha\>\<geqslant\>1>, <math|L\<gtr\>1>, and
  <math|G<around|(|u|)>=e<rsup|-a*h<around|(|u|)><rsup|2>>>. Eventually,
  uniformly for <math|u,v\<in\><around|[|s/2,s|]>>,
  <math|<around|(|2*W<around|(|u|)>+1|)><rsup|4>*\<Pi\><around|(|s|)><rsup|-1>\<leqslant\>1>,
  <math|G<around|(|u|)>\<leqslant\>\<Pi\><around|(|s|)><rsup|-3/4>*e<rsup|-7*j<around|(|v|)>/10>>
  and <math|<around|(|\<alpha\>+1|)><rsup|<around|\<lceil\>|10*log
  M<around|(|s|)>/log L|\<rceil\>>>*\<Pi\><around|(|s|)><rsup|-3/4>\<leqslant\>\<Pi\><around|(|s|)><rsup|-1/2>>.
  For fixed <math|k,n\<in\>\<bbb-N\>>, <math|A\<geqslant\>1>,
  <math|\<phi\>=1/<around|(|4*<around|(|n*k+k+1|)>|)>>, eventually

  <\equation*>
    n*\<Pi\><rsup|-2>*<around|(|A+\<Pi\><rsup|-2>|)><rsup|n>*\<pi\><around|(|\<Pi\><rsup|\<phi\>>,n*k|)>+A<rsup|n>*\<Pi\><rsup|-2>*\<pi\><around|(|\<Pi\><rsup|\<phi\>>,n*k|)>\<leqslant\>\<Pi\><rsup|-3/2>.
  </equation*>

  <em|Status:> theorems and numerical definitions. <em|Lean:>
  <hlink|<verbatim|on_time>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L81-L89>,
  <hlink|<verbatim|collected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L39-L62>.

  For numerical records with <math|t,g,H<rsub|0>\<in\>\<bbb-N\>>,
  <math|b,c,f,F\<in\>\<bbb-R\>>, <math|K\<geqslant\>1>,
  <math|c\<geqslant\>1>, <math|F\<geqslant\>0>, <math|f+c\<leqslant\>-8>,
  <math|g\<geqslant\>6>, <math|U=V>, <math|f=1/16-U>,
  <math|2*V+2\<leqslant\>g-1>, put <math|C<rsub|d>=<around|(|2*<around|(|d+2|)>*K|)><rsup|d>>.
  If <math|b\<geqslant\>0>, <math|L\<gtr\>1> and <math|log
  L\<geqslant\>2*<around|(|b+2|)>*log q> for
  <math|q\<in\><around|{|\<alpha\>+2,C<rsub|t>,C<rsub|2*t>|}>>, then at
  <math|H=<around|\<lceil\>|<around|(|b+2|)>*y<rsup|2>/log L|\<rceil\>>>
  eventually <math|<around|(|\<alpha\>+2|)><rsup|H>,C<rsub|t><rsup|H>,C<rsub|2*t><rsup|H>,H\<leqslant\>\<Pi\>>
  and <math|\<Pi\><rsup|2*c+1>+\<Pi\><rsup|2*c+2>\<leqslant\>\<Pi\><rsup|2*c+3>>.
  Consequently <math|<around|(|\<alpha\>+2|)><rsup|r>*\<Pi\><rsup|-g>\<leqslant\>\<Pi\><rsup|-4>>
  for <math|0\<leqslant\>r\<leqslant\>H>. Such block-size bounds hold for all
  sufficiently large <math|L>; parameters precede <math|L>, which precedes
  <math|s>. <em|Lean:> <hlink|<verbatim|racetrack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L56-L61>.

  Put <math|A<rsub|Q>=<around|(|2*Q+1|)><rsup|4>> and
  <math|R<rsub|Q><around|(|z|)>=e<rsup|z*A<rsub|Q>>>. For
  <math|B,\<varepsilon\>,w\<geqslant\>0>, <math|D\<in\>\<bbb-N\>>, define

  <\equation*>
    q<rsub|0>=w*\<pi\><around|(|B,D|)>,<space|1em>d<rsub|0>=w*D*B<rsup|D>*\<varepsilon\>,
  </equation*>

  <\equation*>
    q<rsub|1>=d<rsub|0>+\<varepsilon\>*w<rsup|2>*\<pi\><around|(|B,2*D|)>+\<varepsilon\>+w*\<varepsilon\>*\<pi\><around|(|B,D|)>,
  </equation*>

  <\equation*>
    q<rsub|2>=2*q<rsub|0>*d<rsub|0>+\<varepsilon\>*w<rsup|4>*\<pi\><around|(|B,4*D|)>+2*\<varepsilon\>+w<rsup|2>*\<varepsilon\>*\<pi\><around|(|B,2*D|)>,<space|1em>\<cal-Q\>=q<rsub|1>+q<rsub|2>+<around|(|q<rsub|0>+q<rsub|1>|)>*q<rsub|1>+q<rsub|1>*q<rsub|0>.
  </equation*>

  For these records, if <math|F\<geqslant\>g+10*Z+10>, <math|Z=2*c+8*t+13>,
  eventually <math|4*R<rsub|Q>*<around|(|e+2|)>*\<cal-Q\><around|(|\<Pi\>,\<Pi\><rsup|-F>,\<Pi\><rsup|2*c+3>,2*t|)>\<leqslant\>\<Pi\><rsup|-g>>.
  <em|Lean:> <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Purchased.lean#L49-L56>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: lattice supports, connected cover numbers, cardinality and
    intersecting-union bounds.

    <item>III.1: activity format, eligibility, weighted bounds and gas.

    <item>Kotecký\UPreiss induction; nilpotent exponentials; Boolean Möbius
    inversion; Gaussian integration by parts and Wick recursion;
    finite-dimensional norm equivalence.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Square-zero markers encode allowed products; their exponential separates
  connected contributions. Connected-component decomposition and a
  Kotecký\UPreiss induction control polymer sums. Switching transfers scalar
  coefficient bounds to markers. Algebraic Gaussian convolution controls
  polynomial comparisons, and separated scales absorb their fixed-degree
  losses.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Construct the connected polynomial by
    <math|C<rsub|k+1>=C<rsub|k>+F-<math-up|Exp><around|(|C<rsub|k>|)>>: each
    correction removes another marker order.
    <hlink|<verbatim|rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L133-L149>.

    <item>Remove one root per component. The extra unit in the hit exponent
    pays each attachment; the cardinality bound closes induction.
    <hlink|<verbatim|lookup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L81-L106>,
    <hlink|<verbatim|Ac.forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L89-L127>.

    <item>Restrict hotness to fuel components to recover the two-overlap
    decomposition. <hlink|<verbatim|hot_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L149-L162>,
    <hlink|<verbatim|Kiln.undo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240>.

    <item>Invert switching triangularly and pass convergent models to zero.
    <hlink|<verbatim|Models.exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L58-L63>.

    <item>Apply Wick recursion inductively to moments and differences.
    <hlink|<verbatim|width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L121-L123>,
    <hlink|<verbatim|differs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L124-L126>.

    <item>Compare logarithms of the scale functions and intersect the
    eventual inequalities, uniformly on <math|<around|[|s/2,s|]>>.
    <hlink|<verbatim|mint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L145-L158>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Cover subadditivity requires intersecting unions. Hotness depends on the
  selection. Switching needs convergence, beyond boundedness. Numerical
  feasibility supplies no analytic trajectory estimates.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|P=<around|(|r,q,e<rsub|P>,B,t<rsub|P>|)>> has
  <math|r,q,B\<in\>\<bbb-N\>>, <math|r\<geqslant\>6>, <math|q\<geqslant\>2>,
  <math|B\<geqslant\>1>, <math|e<rsub|P>\<gtr\>0>,
  <math|0\<less\>t<rsub|P>\<leqslant\>1>; <math|e<rsub|P>> is its support
  exponent. Polynomials are complex; degrees are total and lie in
  <math|\<bbb-N\>>. <math|\<partial\><rsub|b>*X<rsub|v>=b<rsub|v>>.
  <math|X<around|(|s|)>=<big|cup><rsub|i\<in\>s>X<rsub|i>>;
  <math|<math-up|cov><rsub|M>> is the least number of radius-<math|M> balls
  whose union is connected and contains the support.
  <math|<around|\<\|\|\>|p|\<\|\|\>><rsub|1>> sums absolute coefficients;
  <math|\<pi\><around|(|B,d|)>=<around|(|2*B*<around|(|d+1|)>|)><rsup|d>>.
  <math|f\<ll\>g> means <math|f/g\<to\>0>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  III.11 must construct restarted representations and verify analytic
  hypotheses along trajectories. The auxiliary regrouping and switching-cost
  declarations' full role remains to be traced.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/II-2.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>.

  <strong|Referenced by:> <hlink|III.11|III-11.tm>, <hlink|III.12|III-12.tm>,
  <hlink|VII.6|VII-6.tm>, <hlink|VII.4|VII-4.tm>, <hlink|III.10|III-10.tm>,
  <hlink|III.13|III-13.tm>, <hlink|III.2|III-2.tm>, <hlink|III.15|III-15.tm>,
  <hlink|VII.2|VII-2.tm>, <hlink|III.4|III-4.tm>, <hlink|III.5|III-5.tm>,
  <hlink|III.9|III-9.tm>, <hlink|VII.1|VII-1.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.8|III-8.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 3,691 attributed lines; 793 line-counted
  declarations; 1,161 assigned declaration names. Of the assigned names,
  1,097 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>shared machinery (Exponential <ym-middot> Bird <ym-middot> Weight)
    \V 3,291 lines.

    <item>work package <hlink|<verbatim|YM/Ac/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac>
    \V 286 lines.

    <item>work package <hlink|<verbatim|YM/Ovens/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens>
    \V 71 lines.

    <item>work package <hlink|<verbatim|YM/Further/SHELL_BIRTH_49/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49>
    \V 43 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|packHits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L115-L118>

    <item><hlink|<verbatim|Ac.Pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L18>

    <item><hlink|<verbatim|Ac.Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49>

    <item><hlink|<verbatim|Parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L55>

    <item><hlink|<verbatim|reconstruct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L60-L63>

    <item><hlink|<verbatim|separate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L72-L77>

    <item><hlink|<verbatim|Ac.pouch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L20>

    <item><hlink|<verbatim|film>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Table.lean#L79>

    <item><hlink|<verbatim|Tree.lean> (<verbatim|step>,
    <verbatim|all_pack>)|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean>

    <item><hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>

    <item><hlink|<verbatim|demand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L15-L27>

    <item><hlink|<verbatim|Ac.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82>

    <item><hlink|<verbatim|Ac.roots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L84-L85>

    <item><hlink|<verbatim|YM/Bid/Kitchen.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean>

    <item><hlink|<verbatim|Bid.H01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L15-L16>

    <item><hlink|<verbatim|H04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Kitchen.lean#L33-L35>

    <item><hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>

    <item><hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>

    <item><hlink|<verbatim|Trajectories.pass_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean>

    <item><hlink|<verbatim|Trajectories.pass_send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L113-L122>

    <item><hlink|<verbatim|Trajectories.pass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L124-L134>

    <item><hlink|<verbatim|Trajectories.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L44-L45>

    <item><hlink|<verbatim|fits_of_tagged_prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L71-L87>

    <item><hlink|<verbatim|toll_union>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Algebra.lean#L89-L90>

    <item><hlink|<verbatim|Packets.summable_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/MULTISOURCE_TRAJECTORIES/Packets.lean#L30-L38>

    <item><hlink|<verbatim|Start.digests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Cake.lean#L27-L36>

    <item><hlink|<verbatim|Loan.buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WILSON_STARTUP/Funds.lean#L120-L123>

    <item><hlink|<verbatim|Collide.spark_ac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L113-L117>

    <item><hlink|<verbatim|Kiln>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L123-L126>

    <item><hlink|<verbatim|Kiln.Hot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L131>

    <item><hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L132>

    <item><hlink|<verbatim|Mole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L133>

    <item><hlink|<verbatim|slabs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L135>

    <item><hlink|<verbatim|fuel_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L163-L164>

    <item><hlink|<verbatim|good>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L165-L169>

    <item><hlink|<verbatim|takes_mole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L183-L187>

    <item><hlink|<verbatim|clubs_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L190-L196>

    <item><hlink|<verbatim|walls_away>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L197-L205>

    <item><hlink|<verbatim|Collide.uncluttered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L91-L111>

    <item><hlink|<verbatim|halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43-L44>

    <item><hlink|<verbatim|covers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L52-L55>

    <item><hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>

    <item><hlink|<verbatim|Marker.Census>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L22-L26>

    <item><hlink|<verbatim|Poly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40>

    <item><hlink|<verbatim|Poly.send>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L51>

    <item><hlink|<verbatim|Poly.prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L68>

    <item><hlink|<verbatim|Poly.high>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L10-L22>

    <item><hlink|<verbatim|Poly.pass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L29>

    <item><hlink|<verbatim|pass_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L39-L46>

    <item><hlink|<verbatim|share>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Truncated.lean#L60>

    <item><hlink|<verbatim|equivalent_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L102-L112>

    <item><hlink|<verbatim|binary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L124-L137>

    <item><hlink|<verbatim|multiple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L148-L152>

    <item><hlink|<verbatim|powers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L154-L157>

    <item><hlink|<verbatim|Poly.quiet_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L28>

    <item><hlink|<verbatim|Poly.toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L74>

    <item><hlink|<verbatim|Poly.price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Weight.lean#L76>

    <item><hlink|<verbatim|Digits.lean> (<verbatim|vane>,
    <verbatim|decodes>)|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean>

    <item><hlink|<verbatim|jet_erase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L27-L36>

    <item><hlink|<verbatim|Paid.jet_meas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Digits.lean#L38-L49>

    <item><hlink|<verbatim|Accent.quality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Jetty.lean#L29-L35>

    <item><hlink|<verbatim|Kilner.molecule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Harbor.lean#L29-L53>

    <item><hlink|<verbatim|shockProd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L29-L33>

    <item><hlink|<verbatim|whisper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L35-L40>

    <item><hlink|<verbatim|Accent.ballots>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Pitch.lean#L58-L62>

    <item><hlink|<verbatim|paidClick>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L108-L112>

    <item><hlink|<verbatim|Paid.sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L116-L119>

    <item><hlink|<verbatim|Switch.value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L26>

    <item><hlink|<verbatim|jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L46>

    <item><hlink|<verbatim|Models>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L48-L50>

    <item><hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L56>

    <item><hlink|<verbatim|Paid.tasting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L77-L79>

    <item><hlink|<verbatim|Paid.add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Switch.lean#L88-L93>

    <item><hlink|<verbatim|mapScores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L33-L36>

    <item><hlink|<verbatim|sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L60>

    <item><hlink|<verbatim|mul_sounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L64-L65>

    <item><hlink|<verbatim|soundSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L81-L87>

    <item><hlink|<verbatim|soundExp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchCost.lean#L88-L91>

    <item><hlink|<verbatim|comb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L10>

    <item><hlink|<verbatim|value_comb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L15-L25>

    <item><hlink|<verbatim|Models.mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L28-L34>

    <item><hlink|<verbatim|Paid.mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L46-L50>

    <item><hlink|<verbatim|Paid.prod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/SwitchProd.lean#L52-L55>

    <item><hlink|<verbatim|LiftMark.puff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L35-L77>

    <item><hlink|<verbatim|LiftMark.bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ample.lean#L79-L96>

    <item><hlink|<verbatim|Perch.Demand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L21-L31>

    <item><hlink|<verbatim|Shelf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L39-L49>

    <item><hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bird.lean#L67-L77>

    <item><hlink|<verbatim|Particle.tide>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/BoundParticle.lean#L29-L36>

    <item><hlink|<verbatim|capZ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L38>

    <item><hlink|<verbatim|defect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Cabal.lean#L39>

    <item><hlink|<verbatim|rentQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Canal.lean#L30>

    <item><hlink|<verbatim|grant\<#2081\>>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L51>

    <item><hlink|<verbatim|grant\<#2082\>>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Combing.lean#L52>

    <item><hlink|<verbatim|Common.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean>

    <item><hlink|<verbatim|Common.priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Common.lean#L36>

    <item><hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L126>

    <item><hlink|<verbatim|roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L130-L132>

    <item><hlink|<verbatim|roll_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L151-L156>

    <item><hlink|<verbatim|Expands.uniq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L161-L174>

    <item><hlink|<verbatim|Exponential.connected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L177>

    <item><hlink|<verbatim|correct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L184-L185>

    <item><hlink|<verbatim|pass_neg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L90>

    <item><hlink|<verbatim|pass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Exponential.lean#L92-L100>

    <item><hlink|<verbatim|grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Festoon.lean#L46-L49>

    <item><hlink|<verbatim|Paint.trib>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Fleet.lean#L62>

    <item><hlink|<verbatim|Normal.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L14>

    <item><hlink|<verbatim|prepared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L76-L81>

    <item><hlink|<verbatim|wets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussSubst.lean#L83-L84>

    <item><hlink|<verbatim|lodge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L106-L109>

    <item><hlink|<verbatim|Normal.pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L113>

    <item><hlink|<verbatim|piped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTags.lean#L115-L122>

    <item><hlink|<verbatim|spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/GaussTrack.lean#L31-L35>

    <item><hlink|<verbatim|blend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L106>

    <item><hlink|<verbatim|Normal.Symmetric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L21-L23>

    <item><hlink|<verbatim|slit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L40>

    <item><hlink|<verbatim|cream_comm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L64-L65>

    <item><hlink|<verbatim|make>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L73-L74>

    <item><hlink|<verbatim|milk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L77>

    <item><hlink|<verbatim|feeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L82>

    <item><hlink|<verbatim|skims>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L83-L88>

    <item><hlink|<verbatim|froze>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Gaussian.lean#L89-L94>

    <item><hlink|<verbatim|Guard.lean> (<verbatim|pinned>)|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean>

    <item><hlink|<verbatim|Tapes.differently>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L36-L43>

    <item><hlink|<verbatim|Tapes.bound_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L44>

    <item><hlink|<verbatim|Guarded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L69-L73>

    <item><hlink|<verbatim|guards_mul>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L79-L88>

    <item><hlink|<verbatim|squareFits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Guard.lean#L90-L105>

    <item><hlink|<verbatim|Tapes.Valve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L14-L16>

    <item><hlink|<verbatim|Valve.read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L18>

    <item><hlink|<verbatim|Valve.Fair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L20-L23>

    <item><hlink|<verbatim|crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Herald.lean#L37>

    <item><hlink|<verbatim|LiftMark.message>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Instructions.lean#L29-L53>

    <item><hlink|<verbatim|Purse.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Joule.lean#L41>

    <item><hlink|<verbatim|load>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/LedgerGate.lean#L101>

    <item><hlink|<verbatim|Paint.q_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/NoSpill.lean#L98-L101>

    <item><hlink|<verbatim|Digits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L30-L35>

    <item><hlink|<verbatim|pulse_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Odometer.lean#L41-L42>

    <item><hlink|<verbatim|VMeasure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/ParticleMoment.lean#L21-L25>

    <item><hlink|<verbatim|Spindle.decipher>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Peano.lean#L99-L102>

    <item><hlink|<verbatim|LiftMark.garnish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Pin.lean#L29-L30>

    <item><hlink|<verbatim|Glimmer.fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L21>

    <item><hlink|<verbatim|Glimmer.transports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L34-L36>

    <item><hlink|<verbatim|shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Planck.lean#L68-L69>

    <item><hlink|<verbatim|Panel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L37-L47>

    <item><hlink|<verbatim|preSheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Prepaid.lean#L91-L109>

    <item><hlink|<verbatim|Racer.pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L113-L119>

    <item><hlink|<verbatim|Tapes.Purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L20-L38>

    <item><hlink|<verbatim|torque>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L61>

    <item><hlink|<verbatim|Racer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L64-L69>

    <item><hlink|<verbatim|Candle.small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L72-L89>

    <item><hlink|<verbatim|Faring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Ratios.lean#L92-L110>

    <item><hlink|<verbatim|fire_stretch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L127-L137>

    <item><hlink|<verbatim|Perch.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25>

    <item><hlink|<verbatim|walls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L28>

    <item><hlink|<verbatim|hot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L30>

    <item><hlink|<verbatim|join>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L31>

    <item><hlink|<verbatim|w>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L32>

    <item><hlink|<verbatim|logspan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L59-L69>

    <item><hlink|<verbatim|rate_wall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L71-L90>

    <item><hlink|<verbatim|rate_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L94-L108>

    <item><hlink|<verbatim|Rise.cents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L13>

    <item><hlink|<verbatim|Rise.funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L33-L37>

    <item><hlink|<verbatim|Rise.coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L47>

    <item><hlink|<verbatim|Rise.rise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Rise.lean#L51-L66>

    <item><hlink|<verbatim|trill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SolveRay.lean#L160-L167>

    <item><hlink|<verbatim|ball_count>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L145-L156>

    <item><hlink|<verbatim|Spindle.listen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/SpectrumReal.lean#L22-L28>

    <item><hlink|<verbatim|Spindle.hotter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L127-L134>

    <item><hlink|<verbatim|Spindle.amove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Spirals.lean#L20-L41>

    <item><hlink|<verbatim|Station.bump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L37>

    <item><hlink|<verbatim|Station.more>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Station.lean#L38>

    <item><hlink|<verbatim|Era>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L37-L40>

    <item><hlink|<verbatim|Tally>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L55-L58>

    <item><hlink|<verbatim|Perch.Candle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Stepped.lean#L93-L96>

    <item><hlink|<verbatim|invariantJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L105-L107>

    <item><hlink|<verbatim|little>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L109-L112>

    <item><hlink|<verbatim|retakes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L115-L117>

    <item><hlink|<verbatim|Ovens.Pipes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L23-L27>

    <item><hlink|<verbatim|Tap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L32-L35>

    <item><hlink|<verbatim|reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L48>

    <item><hlink|<verbatim|contains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L57-L58>

    <item><hlink|<verbatim|addr>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L72>

    <item><hlink|<verbatim|solid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ovens/Coffee.lean#L74-L76>

    <item><hlink|<verbatim|Nil.Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L75>

    <item><hlink|<verbatim|Nil.combine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L79>

    <item><hlink|<verbatim|merged_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Nil.lean#L93-L109>

    <item><hlink|<verbatim|Valid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L106-L111>

    <item><hlink|gas|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L129>

    <item><hlink|forced addresses|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L42-L47>

    <item><hlink|Eligibility|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L54-L55>

    <item><hlink|<verbatim|SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>

    <item><hlink|<verbatim|Activities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62-L66>

    <item><hlink|<verbatim|Dominated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/ActivityBounds.lean#L12-L13>

    <item><hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>

    <item><hlink|<verbatim|flags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34-L36>

    <item><hlink|<verbatim|Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>

    <item><hlink|<verbatim|UsesFinal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L84-L85>

    <item><hlink|<verbatim|treasury_stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L115-L150>

    <item><hlink|<verbatim|Numbers.monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L67-L69>

    <item><hlink|<verbatim|Hat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L71>

    <item><hlink|<verbatim|P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72>

    <item><hlink|<verbatim|theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L73>

    <item><hlink|<verbatim|cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L74-L78>

    <item><hlink|<verbatim|Work.H01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H01.lean#L253-L255>

    <item><hlink|<verbatim|H02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H02.lean#L17-L80>

    <item><hlink|<verbatim|H03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H03.lean#L332-L334>

    <item><hlink|<verbatim|H04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/H04.lean#L155-L161>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-ii-2-1>

  <\itemize-minus>
    <item><strong|K-II.2.1> <hlink|<verbatim|undo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/SHELL_BIRTH_49/Fusing/Coal.lean#L210-L240>
    <em|(numbered result)> \V Under disjointness hypotheses, the
    decomposition of a union of supports into pieces can be uniquely
    recovered.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> II.1 Field labels and their lattice
  representatives|II-1.tm>|<hlink|Part II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Detailed
  notes|../notes/II-2.tm>|<hlink|III.1 The block-spin step and the symmetric
  gauge fixing \<rightarrow\>|III-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|II.2. Marker algebra, polymer combinatorics and
    Gaussian estimates \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|14>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|ii2-marker-algebra-polymer-combinatorics-and-gaussian-estimates|<tuple|?|1>>
    <associate|k-ii-2-1|<tuple|10|14>>
    <associate|key-statements|<tuple|10|14>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|6|5>>
    <associate|unit-inputs|<tuple|1|4>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|5>>
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