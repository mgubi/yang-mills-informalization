<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.13 Alternative construction: one
  Wilson family for all labels|III-13.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-14.tm>|<hlink|III.15 Cost accounting for observables and
  the remainder comparison \<rightarrow\>|III-15.tm>>

  <ym-title|III.14. The construction run: flat representations and the
  ultraviolet rate><label|iii14-the-construction-run-flat-representations-and-the-ultraviolet-rate>

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

  Selects the construction run used by the main theorem and describes its
  additional Gaussian-limit data.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-14.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.13|III-13.tm> <ym-middot> <hlink|Next:
  III.15 \<rightarrow\>|III-15.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> The final assembly uses the run, its penalty,
  pillars and funded bounds; it discards the attached-recipe conjunct. The
  Gaussian limit is an additional property of the selected run. See
  <hlink|VIII.1|VIII-1.tm>; this does not establish that its construction can
  be omitted.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|ConstructionRun|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean>,
    <hlink|NativeComponentRecipe|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean>,
    <hlink|Flat|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat>.
    <strong|Size:> 14,290 lines (2,509 declarations) in the source
    allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Throughout, <math|G> is a compact matrix gauge group; \Psimple\Q means its
  real Lie algebra is simple and nonabelian. Level systems and full horizon
  sufficiency are those of III.1. A sheet fixes the kernel, stage profile and
  floors before block factors are chosen. Notation and norms are specified in
  Ÿ6.

  <strong|Proposition III.14.1 (construction run).> For simple <math|G> and
  <math|b\<gtr\>0>, there exist a run <math|R>, a campaign <math|T> and
  pillars <math|W> for <math|<around|(|R,T|)>>, with penalty <math|b>,
  satisfying the full thirteen-clause funded condition of III.15 relative to
  <math|\<Delta\><rsub|10>>, and carrying an attached native component
  recipe. The selection uses <math|Q<around|(|i|)>=i+2> and support exponent
  <math|100> at every stage.

  Attachment means that there exist a sheet <math|s>, price map <math|q>,
  recipe <math|C> of III.14.2 and floors <math|n\<geqslant\>max
  <around|(|n<rsub|s>,E<rsub|C>|)>> such that <math|R> uses <math|s> with
  floors raised to <math|n> and primary price map <math|P<rsub|s,q>>; the
  recipe is realized on its own levels and horizon. Here <math|n<rsub|s>> is
  the sheet's floor, <math|E<rsub|C>> combines the three component floors and
  two numerical floors, and <math|B<rsub|C>> is the maximum of the two
  post-length bills. Set <math|U<rsub|C><around|(|r,j|)>=\<rho\><rsub|C><around|(|r,j|)><rsup|-1>>
  for the positive recipe widths <math|\<rho\><rsub|C>>, and
  <math|V<rsub|C><around|(|\<ell\>,r,j|)>=B<rsub|C><around|(|\<ell\>,j|)>>.
  For both request families <math|F<around|(|r,j|)>=U<rsub|C><around|(|r,j|)>>
  and <math|F<around|(|r,j|)>=V<rsub|C><around|(|\<ell\>,r,j|)>>, every fixed
  <math|r> admits <math|m<rsub|0>> such that
  <math|<around|\||F<around|(|r,j|)>|\|>\<leqslant\>1+log log
  <wide|\<beta\>|^><rsub|m>> for <math|m\<geqslant\>m<rsub|0>>,
  <math|j\<leqslant\>J<rsub|m+1>>; also <math|B<rsub|C><around|(|\<ell\>,J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>>
  for every <math|m>. Realization includes III.14.3 with <math|e=0>.

  <em|Status:> theorem. <em|Lean:> <hlink|constructionRun|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>,
  <hlink|Funded|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>,
  <hlink|Attached|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L56-L69>.

  <strong|Proposition III.14.2 (recipe).> For simple <math|G> and every sheet
  <math|s>, there exist a secondary price map <math|X> and floors
  <math|E<rsup|\<flat\>>,E<rsup|<math-up|sw>>,E<rsup|<math-up|du>>:\<bbb-N\>\<to\>\<bbb-N\>>.
  For every level system with the kernel and profile of <math|s>:

  <\itemize-minus>
    <item>If <math|L<rsub|i>\<geqslant\>E<rsup|\<flat\>><around|(|J<rsub|i+1>|)>>
    for all <math|i>, every entry stage <math|e> satisfying the delay
    condition in III.14.3 admits its conclusions with this <math|X>,
    simultaneously for every sufficient horizon.

    <item>If <math|L<rsub|i>\<geqslant\>E<rsup|<math-up|sw>><around|(|J<rsub|i+1>|)>>
    for all <math|i>, every horizon sufficient for some price map has, for
    every <math|i\<leqslant\>N>, every torus and all colour-valued link
    fields <math|A,B>, colour-summed bilinear form
    <math|<big|sum><rsub|a><around|\<langle\>|A<rsup|a>,\<cal-K\><rsup|\<bbb-T\>><rsub|N,i>*B<rsup|a>|\<rangle\>>>
    invariant under simultaneous pullback by signed axis permutations fixing
    the origin. Reversing link orientation reverses the pullback sign.

    <item>If <math|L<rsub|i>\<geqslant\>E<rsup|<math-up|du>><around|(|J<rsub|i+1>|)>>
    for all <math|i>, then for every such horizon, every <math|m\<less\>N>
    and every level-system torus, the canonical free background map of III.3
    satisfies III.14.5 for the fine/coarse metrics
    <math|<around|(|M<rsup|\<bbb-T\><rsub|f>><rsub|N,m+1>,M<rsup|\<bbb-T\><rsub|c>><rsub|N,m>|)>>,
    hence minimizes the actual Gaussian variational problem.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|Choice|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L29-L51>,
  <hlink|available|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59>.

  <strong|Proposition III.14.3 (Gaussian ultraviolet rate).> For simple
  <math|G> and every sheet <math|s>, there exist a price map <math|X> and
  <math|E:\<bbb-N\>\<to\>\<bbb-N\>> with this property: for every level
  system with the kernel and profile of <math|s> satisfying
  <math|L<rsub|i>\<geqslant\>E<around|(|J<rsub|i+1>|)>> for all <math|i>, and
  every <math|e\<in\>\<bbb-N\>> satisfying
  <math|\<Omega\><rsup|X><rsub|J<rsub|i>>\<leqslant\>log
  <wide|\<beta\>|^><rsub|i>> for <math|i\<geqslant\>e>, there are link
  kernels <math|F<rsub|i>> (<math|i\<geqslant\>e>) and constants
  <math|A,B\<geqslant\>0> with the following properties. For every horizon
  <math|H> of that system sufficient for some price map, every
  <math|k\<in\>\<bbb-N\>>, <math|i\<geqslant\>e>, <math|N\<geqslant\>i> and
  links <math|u,v>,

  <\equation*>
    <around|\<lVert\>|F<rsub|i>|\<rVert\>><rsub|w<rsub|J<rsub|i>>>\<leqslant\>B*\<Lambda\><rsub|k,i>,<space|2em>\<cal-O\><rsup|H><rsub|n,i><around|(|u,v|)>\<longrightarrow\>F<rsub|i><around|(|u,v|)>,<space|2em><around|\<lVert\>|\<cal-O\><rsup|H><rsub|N,i>-F<rsub|i>|\<rVert\>><rsub|w<rsub|J<rsub|i>>>\<leqslant\>A*\<Lambda\><rsub|k,i>*<around|(|a<rsub|N>/a<rsub|i>|)><rsup|1/4>.
  </equation*>

  Here <math|n\<to\>\<infty\>>, <math|w<rsub|j>=min
  <around|(|1,\<alpha\><rsup|X><rsub|j>,\<alpha\><rsup|X><rsub|j+1>|)>>, and
  <math|A,B\<geqslant\>0> depend only on <math|G> and the lattice,
  independently of <math|s>, the levels, <math|e> and <math|H>.

  <em|Status:> theorem, order zero. <em|Lean:>
  <hlink|Flat.entrance_gate|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50>.

  <strong|Proposition III.14.4 (abstract flat representations).> Fix a price
  map <math|P>, <math|\<theta\>\<gtr\>0>, positive widths <math|w<rsub|j>>,
  <math|A<rsub|0>\<geqslant\>0>, <math|d<rsub|0>\<in\>\<bbb-N\>>, and a
  family <math|<around|(|\<cal-L\><rsub|x>,H<rsub|x>,r<rsub|x>,N<rsub|x>,n<rsub|x>,k<rsub|x>,Z<rsub|x>|)><rsub|x\<in\>X>>
  with <math|r<rsub|x>\<leqslant\>N<rsub|x>\<leqslant\>n<rsub|x>>,
  <math|k<rsub|x>\<in\>\<bbb-N\>>, <math|Z<rsub|x>\<geqslant\>0>. Put
  <math|\<Lambda\><rsub|x><around|(|i|)>=2+Z<rsub|x>+<around|\||s<rsub|i>-s<rsub|k<rsub|x>>|\|>>,
  using each system's scales. Assume each <math|H<rsub|x>> is sufficient for
  <math|P>, its plaquette transfers at cutoff <math|N<rsub|x>> and
  <math|r<rsub|x>\<leqslant\>i\<less\>N<rsub|x>> are canonical free kernels,
  and <math|w<rsub|j>\<leqslant\>\<alpha\><rsub|j>> for all <math|j>. On
  those stage ranges assume

  <\equation*>
    w<rsub|J<rsub|i>>\<leqslant\>min <around|(|1,\<alpha\><rsub|J<rsub|i>>,\<alpha\><rsub|J<rsub|i+1>>|)>,<space|1em>2*w<rsub|J<rsub|i>>\<leqslant\>L<rsub|i>*w<rsub|J<rsub|i+1>>,<space|1em>q<rsub|i><around|(|w<rsub|J<rsub|i+1>>|)>\<leqslant\>L<rsub|i><rsup|-\<theta\>>,
  </equation*>

  and assume <math|2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N<rsub|x>>>\<leqslant\>A<rsub|0>*\<Lambda\><rsub|x><around|(|N<rsub|x>|)><rsup|d<rsub|0>>>
  for every <math|x>. Then, simultaneously for all <math|x> and
  <math|r<rsub|x>\<leqslant\>i\<leqslant\>N<rsub|x>>, there are flat
  representatives of <math|\<cal-K\><rsub|n<rsub|x>,i>-\<cal-K\><rsub|N<rsub|x>,i>>
  of width <math|w<rsub|J<rsub|i>>> and cost
  <math|A*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>*<around|(|a<rsub|N<rsub|x>>/a<rsub|i>|)><rsup|min
  <around|(|1,\<theta\>/2|)>>>, where <math|A\<geqslant\>0> depends only on
  <math|A<rsub|0>,d<rsub|0>,\<theta\>>.

  <em|Status:> theorem. <em|Lean:> <hlink|Flat.World.overlap|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174>.

  <strong|Proposition III.14.5 (Schur identity and flat step).> Fix
  fine/coarse tori with side ratio <math|L>, block average <math|Q> and
  <math|b\<gtr\>0>. The background-field relations are

  <\equation*>
    \<cal-K\><around|(|M|)>*W=Q<rsup|\<top\>>*\<cal-K\><around|(|M<rprime|'>|)>,<space|2em>Q*W=1-b<rsup|-1>*\<cal-K\><around|(|M<rprime|'>|)>.
  </equation*>

  For symmetric positive semidefinite <math|M> and every coarse field
  <math|A<rprime|'>>, they make <math|W*A<rprime|'>> a minimizer of
  <math|<around|\<langle\>|A,\<cal-K\><around|(|M|)>*A|\<rangle\>>+b*<around|\||A<rprime|'>-Q*A|\|><rsup|2>>,
  with minimum <math|<around|\<langle\>|A<rprime|'>,\<cal-K\><around|(|M<rprime|'>|)>*A<rprime|'>|\<rangle\>>>.
  If two triples <math|<around|(|W<rsub|j>;M<rsub|j>,M<rprime|'><rsub|j>|)>>
  satisfy these relations and <math|M<rsub|2>,M<rprime|'><rsub|2>> are
  symmetric, then

  <\equation*>
    \<cal-K\><around|(|M<rprime|'><rsub|2>|)>-\<cal-K\><around|(|M<rprime|'><rsub|1>|)>=W<rsub|2><rsup|\<top\>>*<around|(|\<cal-K\><around|(|M<rsub|2>|)>-\<cal-K\><around|(|M<rsub|1>|)>|)>*W<rsub|1>.
  </equation*>

  Let <math|B> be a neutral translation-invariant plaquette representative of
  the fine difference, with <math|<around|\<lVert\>|B|\<rVert\>><rsup|<math-up|pl>><rsub|\<tau\>>\<leqslant\>r>,
  <math|\<tau\>\<gtr\>0>, <math|r\<geqslant\>0>. Suppose <math|T,U> are
  order-two strip-bounded curvature transports in width <math|\<omega\>>,
  with constants <math|q,p\<geqslant\>0>, scaled covariance
  <math|T<around|(|x+L*v,y+v|)>=T<around|(|x,y|)>> and likewise for <math|U>.
  Require their periodizations <math|C<rsub|2>,C<rsub|1>> to satisfy
  <math|d*W<rsub|2>=C<rsub|2>*d>, <math|d*W<rsub|1>=C<rsub|1>*d>, and
  <math|<big|sum><rsub|z>U<around|(|<around|(|x,\<varphi\>|)>,<around|(|z,\<psi\>|)>|)>>
  to be independent of <math|x> for each orientation pair. If
  <math|0\<leqslant\>\<sigma\>\<leqslant\>\<omega\>> and
  <math|2*\<sigma\>\<leqslant\>L*\<tau\>>, then

  <\equation*>
    B<rprime|'><around|(|y,z|)>=<big|sum><rsub|x,w>T<around|(|x,y|)>*B<around|(|x,w|)>*U<around|(|w,z|)>,<space|2em><around|\<lVert\>|B<rprime|'>|\<rVert\>><rsup|<math-up|pl>><rsub|\<sigma\>>\<leqslant\><frac|2<around|\||\<cal-F\>|\|><rsup|2>*q*p|\<tau\>*L>*r.
  </equation*>

  It is neutral, translation invariant and represents the coarse difference.

  <em|Status:> theorem. <em|Lean:> <hlink|Flat.poised|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L24-L38>,
  <hlink|Flat.toward|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78>.

  <strong|Proposition III.14.6 (recursion rate).> For each <math|x\<in\>X>,
  fix scales with <math|L<rsub|i>\<geqslant\>3>, stages
  <math|r<rsub|x>\<leqslant\>i\<leqslant\>t<rsub|x>>, reporting scale
  <math|k<rsub|x>\<in\>\<bbb-N\>>, and <math|\<Lambda\><rsub|x><around|(|i|)>=2+Z<rsub|x>+<around|\||s<rsub|i>-s<rsub|k<rsub|x>>|\|>>,
  <math|Z<rsub|x>\<geqslant\>0>. Fix uniform
  <math|\<theta\>,c<rsub|0>\<gtr\>0>, <math|A<rsub|0>\<geqslant\>0>,
  <math|d<rsub|0>\<in\>\<bbb-N\>>. If <math|f<rsub|x>,g<rsub|x>\<geqslant\>0>
  satisfy <math|f<rsub|x><around|(|i|)>\<leqslant\>L<rsub|i><rsup|-\<theta\>>*f<rsub|x>*<around|(|i+1|)>+g<rsub|x><around|(|i|)>>
  below <math|t<rsub|x>>, <math|f<rsub|x><around|(|t<rsub|x>|)>\<leqslant\>g<rsub|x><around|(|t<rsub|x>|)>>,
  and <math|g<rsub|x><around|(|i|)>\<leqslant\>A<rsub|0>*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>*<around|(|a<rsub|t<rsub|x>>/a<rsub|i>|)><rsup|c<rsub|0>>>
  throughout, then

  <\equation*>
    f<rsub|x><around|(|i|)>\<leqslant\>A*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>*<around|(|a<rsub|t<rsub|x>>/a<rsub|i>|)><rsup|\<mu\>>,<space|2em>\<mu\>=min
    <around|(|c<rsub|0>,\<theta\>/2|)>.
  </equation*>

  One may take <math|A=A<rsub|0>*<around|(|K+1|)><rsup|d<rsub|0>>/<around|(|1-3<rsup|-\<theta\><rprime|'>/2>|)>>,
  <math|\<theta\><rprime|'>=\<theta\>-\<mu\>>,
  <math|K=2*<around|(|d<rsub|0>+1|)>/\<theta\><rprime|'>>.

  <em|Status:> theorem. <em|Lean:> <hlink|Rate.Stair.fade_solve|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: group data and <hlink|one-loop
    slope|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>
    <math|s<rsub|G>>; III.1: levels, <hlink|sufficiency|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>
    and background-field relations.

    <item>III.2: <hlink|selection|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>
    with nonempty demands and countable numerical requests; III.3:
    <hlink|sufficient free horizons|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>,
    canonical transfers and point-group invariance.

    <item>III.8: <hlink|weighted kernel bounds|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L37-L42>;
    III.12: <hlink|runs|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>,
    pillars and primary price maps; III.15: full <hlink|funded
    condition|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>.

    <item>Gaussian block-spin minimization (Balaban; Gaw¦dzki\UKupiainen),
    exponentially weighted <math|\<ell\><rsup|1>> composition, discrete
    Grönwall, dominated and monotone convergence.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Compare cutoffs at their common finest stage, where kinetic normalization
  makes the metric difference neutral. Transport this difference by the mixed
  Schur identity; neutrality gains <math|L<rsup|-1>>, floors give contraction
  <math|L<rsup|-1/2>>, and the recursion estimate gives exponent <math|1/4>.
  A shadow with altered clip parameters supplies free data; uniqueness
  transfers its Gaussian forms to every sufficient horizon.

  Choose recipe and floors before block factors, then raise coupling
  thresholds to meet the post-length bill and countable requests. III.2
  retains these conditions on the selected funded run. VIII.1 uses its
  penalty, pillars and funded property, discarding the attached-recipe
  conjunct.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Initialize and propagate.> The metric difference at stage
    <math|N> has cost <math|2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N>>>
    and zero orientation-wise row sums. The Schur identity transports it
    without inverting the curvature form; subtracting the transport kernel at
    the first base point gains <math|L<rsup|-1>>, using half the input
    exponential weight. <hlink|Flat.toward|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78>.

    <item><strong|Obtain the rate.> Floors ensure compatible widths and
    <math|q<rsub|i><around|(|w<rsub|J<rsub|i+1>>|)>\<leqslant\>L<rsub|i><rsup|-1/2>>;
    downward induction and III.14.6 absorb age growth.
    <hlink|spacing_choice|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L64-L92>.

    <item><strong|Take the limit.> Diverging-torus periodizations identify
    link kernels; composing with <math|d<rsup|\<top\>>,d> gives the pairwise
    cutoff estimate. Its Cauchy limit preserves the weighted bounds.
    <hlink|supplies|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164>.

    <item><strong|Transfer from the shadow.> Downward Schur induction from
    the bare terminal form proves equality of Gaussian forms for sufficient
    horizons on systems differing only in clip parameters. This transfers the
    rate, symmetries and free background identities.
    <hlink|same_path|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L23-L36>.

    <item><strong|Realize and select.> The combined floor and bill enforce
    the recipe with <math|e=0> on the run's own horizon. Apply III.2 with
    reciprocal-width requests and <math|V<rsub|C><around|(|\<ell\>,r,j|)>=B<rsub|C><around|(|\<ell\>,j|)>>.
    <hlink|on_run|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L25-L54>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Gauge zero modes obstruct curvature-form inversion. Orientation-wise
  neutrality supplies the gain, but preserving it requires constant row sums,
  beyond scaled covariance. Floors precede block factors; bills follow them.
  The rate concerns only the Gaussian link kernel: it gives no rate for the
  undetermined part of the plaquette metric, positive-order coefficients or
  source kernels. The formal recipe does not identify physical marked
  observables.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|L<rsub|i>=\<ell\><rsub|J<rsub|i+1>>\<geqslant\>3> are odd block
  factors; <math|a<rsub|0>=1>, <math|a<rsub|i+1>=a<rsub|i>/L<rsub|i>>,
  <math|s<rsub|i>=log <around|(|1/a<rsub|i>|)>>;
  <math|J<rsub|i>\<leqslant\>J<rsub|i+1>\<leqslant\>J<rsub|i>+1> are
  smoothing indices. Cutoff <math|N> has spacing <math|a<rsub|N>>. Put
  <math|<wide|\<beta\>|^><rsub|i>=<wide|\<beta\>|\<bar\>>+s<rsub|G>*s<rsub|i>\<gtr\>1>,
  <math|\<Lambda\><rsub|k,i>=5+log <wide|\<beta\>|^><rsub|k>+<around|\||s<rsub|i>-s<rsub|k>|\|>>.
  A price map is <math|<around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>,\<eta\><rsub|j>|)>>:
  positive widths, upper bounds, positive coercivity bounds. A horizon
  supplies metric kernels <math|M<rsup|\<infty\>><rsub|N,i>> and transfer
  data; <math|M<rsup|\<bbb-T\>><rsub|N,i>> is the periodization. The lattice
  exterior derivative is <math|d>; <math|\<cal-K\><around|(|M|)>=d<rsup|\<top\>>*M*d>,
  <math|\<cal-O\>=d<rsup|\<top\>>*M<rsup|\<infty\>>*d>, without a factor
  <math|1/2>. The local-estimate package <math|\<Delta\><rsub|10>> is
  <hlink|garment10|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63>.

  Write <math|x<around|(|u|)>> for a base point. For link kernels,
  <math|<around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>=sup<rsub|u>
  sup<rsub|\<phi\>> <big|sum><rsub|y\<in\>\<bbb-Z\><rsup|4>><around|\||F<around|(|u,<around|(|y,\<phi\>|)>|)>|\|>*e<rsup|\<sigma\>*<around|\||x<around|(|u|)>-y|\|><rsub|1>>>,
  with <math|\<phi\>> a link orientation; for plaquettes,
  <math|<around|\<lVert\>|B|\<rVert\>><rsup|<math-up|pl>><rsub|\<sigma\>>=sup<rsub|u>
  <big|sum><rsub|v\<in\>\<bbb-Z\><rsup|4>\<times\>\<cal-F\>><around|\||B<around|(|u,v|)>|\|>*e<rsup|\<sigma\>*<around|\||x<around|(|u|)>-x<around|(|v|)>|\|><rsub|1>>>,
  summing all target orientations <math|\<cal-F\>>. A flat representative is
  translation invariant, has zero row sums in each target orientation, and on
  every level-system torus periodizes to the quadratic-form difference after
  applying <math|d<rsup|\<top\>><around|(|\<cdummy\>|)>*d>; cost bounds this
  norm. In III.14.4, <math|q<rsub|i><around|(|u|)>=2<around|\||\<cal-F\>|\|><rsup|2>*h<rsub|i><rsup|2>/<around|(|u*L<rsub|i>|)>>,
  <math|h<rsub|i>=e<rsup|4><around|\||\<cal-F\>|\|><rsup|2>*\<Omega\><rsub|J<rsub|i+1>><rsup|2>*\<Omega\><rsub|J<rsub|i>>>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The scale and extraction choices are constructed in III.2; the meanings and
  proofs of the full funded clauses belong to III.15 and later units. The
  free-kernel existence proof and lattice kernel estimates are used without
  explanation here. The auxiliary curvature-lift, marked-kernel and formal
  Ward estimates still require their full admissibility conditions and
  proofs. Removing the recipe demand would not identify the resulting run
  with this selected run.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-14.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|III.8|III-8.tm>, <hlink|I.1|I-1.tm>,
  <hlink|III.1|III-1.tm>, <hlink|III.7|III-7.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.6|III-6.tm>, <hlink|III.10|III-10.tm>, <hlink|III.15|III-15.tm>,
  <hlink|II.1|II-1.tm>, <hlink|III.2|III-2.tm>, <hlink|III.3|III-3.tm>,
  <hlink|III.9|III-9.tm>, <hlink|III.5|III-5.tm>, <hlink|III.12|III-12.tm>,
  <hlink|VIII.1|VIII-1.tm>.

  <strong|Referenced by:> none above the threshold.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 14,290 attributed lines; 2,509 line-counted
  declarations; 3,229 assigned declaration names. Of the assigned names,
  3,099 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|harbor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190>
    and the results it chains to \V 7,716 lines.

    <item>proof of <hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>
    \V 4,831 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Line/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line>
    \V 371 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Necks/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks>
    \V 316 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Atlas/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas>
    \V 110 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Rows/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rows>
    \V 110 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Cell/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cell>
    \V 99 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Cairn/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cairn>
    \V 76 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Prism/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Prism>
    \V 75 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Quarry/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Quarry>
    \V 66 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Lagoon/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Lagoon>
    \V 64 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Hatch/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Hatch>
    \V 58 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Trill/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill>
    \V 54 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Clef/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Clef>
    \V 53 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Weald/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald>
    \V 50 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Trickle/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle>
    \V 41 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Tack/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Tack>
    \V 39 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Gallery/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Gallery>
    \V 32 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Atrium/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atrium>
    \V 27 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Sideshow/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow>
    \V 27 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Nacre/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Nacre>
    \V 20 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Billet/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Billet>
    \V 18 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Aggregate/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate>
    \V 8 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Slate/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Slate>
    \V 8 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Spar/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar>
    \V 6 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Aura/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura>
    \V 5 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Yurt/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt>
    \V 5 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Flint/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint>
    \V 4 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Fold/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Fold>
    \V 1 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>

    <item><hlink|<verbatim|Campaign.Pillars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>

    <item><hlink|<verbatim|raging>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L18>

    <item><hlink|<verbatim|fundedRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31>

    <item><hlink|<verbatim|ActualRunNativeComponentRecipe.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean>

    <item><hlink|<verbatim|postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L21-L23>

    <item><hlink|<verbatim|of_preselection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L71-L77>

    <item><hlink|<verbatim|Realized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L117-L128>

    <item><hlink|<verbatim|floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L61-L65>

    <item><hlink|<verbatim|numeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L71-L72>

    <item><hlink|<verbatim|post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L75-L79>

    <item><hlink|<verbatim|PostnumericPreselection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46>

    <item><hlink|<verbatim|destination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74>

    <item><hlink|<verbatim|Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88>

    <item><hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>

    <item><hlink|<verbatim|Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121>

    <item><hlink|<verbatim|MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128>

    <item><hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>

    <item><hlink|<verbatim|Precision.K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>

    <item><hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>

    <item><hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103>

    <item><hlink|<verbatim|RowCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L28-L29>

    <item><hlink|<verbatim|response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Coin.lean#L40>

    <item><hlink|<verbatim|carrier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L24>

    <item><hlink|<verbatim|inherited_precision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L32-L34>

    <item><hlink|<verbatim|allotment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L14>

    <item><hlink|<verbatim|fine_share>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L15>

    <item><hlink|<verbatim|neutral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/NullPair.lean#L9>

    <item><hlink|<verbatim|Folded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Stacks.lean#L14>

    <item><hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>

    <item><hlink|<verbatim|R2IGoals.fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>

    <item><hlink|<verbatim|selectRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84>

    <item><hlink|<verbatim|EventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38>

    <item><hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>

    <item><hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>

    <item><hlink|<verbatim|Aura.licensed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L24-L26>

    <item><hlink|<verbatim|Aura.dual_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L28-L52>

    <item><hlink|<verbatim|Cast.assured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cast/Profile.lean#L16-L34>

    <item><hlink|<verbatim|same_terminal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L19-L21>

    <item><hlink|<verbatim|same_output>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L38-L43>

    <item><hlink|<verbatim|resolve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L101-L115>

    <item><hlink|<verbatim|writ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L15-L16>

    <item><hlink|<verbatim|output>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L18>

    <item><hlink|<verbatim|sumToken>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L66>

    <item><hlink|<verbatim|output_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L89-L90>

    <item><hlink|<verbatim|Flat.Quorum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L13-L21>

    <item><hlink|<verbatim|Flat.curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L14>

    <item><hlink|<verbatim|Lambda'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L17>

    <item><hlink|<verbatim|Flat.Delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L19>

    <item><hlink|<verbatim|before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L21-L23>

    <item><hlink|<verbatim|entrance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L25>

    <item><hlink|<verbatim|work items>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L29>

    <item><hlink|<verbatim|universeClock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L38-L62>

    <item><hlink|<verbatim|Mesh.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean>

    <item><hlink|<verbatim|Flat.clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L30>

    <item><hlink|<verbatim|Spacing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L32-L41>

    <item><hlink|<verbatim|berth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L45-L54>

    <item><hlink|<verbatim|Spacing.funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L56-L68>

    <item><hlink|<verbatim|Flat.meshed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L75-L101>

    <item><hlink|<verbatim|rearrange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L21-L23>

    <item><hlink|<verbatim|shadow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L30-L50>

    <item><hlink|<verbatim|same_shadow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L52-L75>

    <item><hlink|<verbatim|World.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean>

    <item><hlink|<verbatim|World.Funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L101-L110>

    <item><hlink|<verbatim|World.Provides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L112-L115>

    <item><hlink|<verbatim|header>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L22>

    <item><hlink|<verbatim|quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L23>

    <item><hlink|<verbatim|topTab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L24>

    <item><hlink|<verbatim|Flat.FlatRep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L36-L40>

    <item><hlink|<verbatim|World>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L82-L91>

    <item><hlink|<verbatim|Sigil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L43-L44>

    <item><hlink|<verbatim|solvent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Limit.lean#L51-L59>

    <item><hlink|<verbatim|neutralCoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L84-L85>

    <item><hlink|<verbatim|turn_class>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Present.lean#L52-L78>

    <item><hlink|<verbatim|town_hall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Pushed.lean#L116-L122>

    <item><hlink|<verbatim|travels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L75>

    <item><hlink|<verbatim|invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L77-L104>

    <item><hlink|<verbatim|town>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Torus.lean#L18>

    <item><hlink|<verbatim|slope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L26-L54>

    <item><hlink|<verbatim|poly_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L56-L116>

    <item><hlink|<verbatim|Fade.of_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L83-L87>

    <item><hlink|<verbatim|Fade.cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L90-L97>

    <item><hlink|<verbatim|Fade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L108>

    <item><hlink|<verbatim|Stair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L24-L30>

    <item><hlink|<verbatim|drop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L66>

    <item><hlink|<verbatim|drop_length>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L79-L82>

    <item><hlink|<verbatim|rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L46>

    <item><hlink|<verbatim|receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L65>

    <item><hlink|<verbatim|after>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L67>

    <item><hlink|<verbatim|Yamen.stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L48>

    <item><hlink|<verbatim|Yamen.hatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L56-L64>

    <item><hlink|<verbatim|Yamen.need>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Pledge.lean#L36>

    <item><hlink|<verbatim|YM/RG12/Burst/Wardrobe.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean>

    <item><hlink|<verbatim|Decal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20>

    <item><hlink|<verbatim|Attic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L30-L34>

    <item><hlink|<verbatim|annex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L36-L61>

    <item><hlink|<verbatim|YM/RG08/Packets/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets>

    <item><hlink|<verbatim|YM/RG08/Rate/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate>

    <item><hlink|<verbatim|YM/RG08/Redo/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-14-1>

  <\itemize-minus>
    <item><strong|K-III.14.1> <hlink|<verbatim|jointProjection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Solid.lean#L21-L38>
    <em|(numbered result)> \V Under stated algebraic hypotheses on inverse,
    gauge kernel and section, the triangular projection of the joint inverse
    recovers x from B x on the tree slice.
  </itemize-minus>

  <label|k-iii-14-2>

  <\itemize-minus>
    <item><strong|K-III.14.2> <hlink|<verbatim|septet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Score.lean#L74-L79>
    <em|(numbered result)> \V For symmetric multilinear coefficient families,
    a bound on all-direction evaluations of the total polynomial by
    W<ym-middot>B yields a bound on any single coefficient by a constant
    times B.
  </itemize-minus>

  <label|k-iii-14-3>

  <\itemize-minus>
    <item><strong|K-III.14.3> <hlink|<verbatim|stood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Saloon.lean#L94-L96>
    <em|(numbered result)> \V Conditioning a centered Gaussian bracket by
    substituting means on integrated coordinates equals the prescribed
    finite-sum expression on the survivors.
  </itemize-minus>

  <label|k-iii-14-4>

  <\itemize-minus>
    <item><strong|K-III.14.4> <hlink|<verbatim|arm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/LiftOne.lean#L198-L206>
    <em|(key result)> \V Any priced array of given rank can be lifted in one
    argument to rank plus one with controlled width and constants, preserving
    other ranks and closures.
  </itemize-minus>

  <label|k-iii-14-5>

  <\itemize-minus>
    <item><strong|K-III.14.5> <hlink|<verbatim|multi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/Resolve.lean#L158-L178>
    <em|(key result)> \V A priced array with rank-1 closed slots in all legs
    can be lifted to a rank-2 array with comparable pricing, with no harmonic
    exception.
  </itemize-minus>

  <label|k-iii-14-6>

  <\itemize-minus>
    <item><strong|K-III.14.6> <hlink|<verbatim|quarry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt/Cairns.lean#L46-L69>
    <em|(numbered result)> \V Uniform constant B bounds deterministic
    cancellation errors for odd block sizes under the tutor hypotheses.
  </itemize-minus>

  <label|k-iii-14-7>

  <\itemize-minus>
    <item><strong|K-III.14.7> <hlink|<verbatim|push_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113>
    <em|(key result)> \V Pushing a neutral folded packet through atlas
    substitutions yields a folded packet with a smaller radius and
    neutral-coin constant multiplier.
  </itemize-minus>

  <label|k-iii-14-8>

  <\itemize-minus>
    <item><strong|K-III.14.8> <hlink|<verbatim|toward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78>
    <em|(key result)> \V A precision-difference identity for the flat step
    shows how diagonal Towers data and kernel matches propagate folded bounds
    to the next step without Fourier Lipschitz at the pole.
  </itemize-minus>

  <label|k-iii-14-9>

  <\itemize-minus>
    <item><strong|K-III.14.9> <hlink|<verbatim|fade_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134>
    <em|(key result)> \V A nonnegative array satisfying a fine-to-coarse
    recursive inequality with a contracting weight and a decaying forcing
    term itself decays, giving a uniform majorant.
  </itemize-minus>

  <label|k-iii-14-10>

  <\itemize-minus>
    <item><strong|K-III.14.10> <hlink|<verbatim|overlap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174>
    <em|(key result)> \V Under funding, flat representations exist at all
    stages with cost A<ym-middot>age^d<ym-middot>(a_fine/a_i)^c, i.e. a
    geometric UV rate.
  </itemize-minus>

  <label|k-iii-14-11>

  <\itemize-minus>
    <item><strong|K-III.14.11> <hlink|<verbatim|bottle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81>
    <em|(key result)> \V For a near-identity moving coordinate change, the
    bracket of the Jacobian-weighted density has vanishing component along
    the spare variable, comparing volume via a velocity path.
  </itemize-minus>

  <label|k-iii-14-12>

  <\itemize-minus>
    <item><strong|K-III.14.12> <hlink|<verbatim|still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111>
    <em|(key result)> \V With a spare variable not used in the data, the
    Gaussian evolution under a near-identity nonlinear change of coordinates
    equals the bracket of the Jacobian-corrected density.
  </itemize-minus>

  <label|k-iii-14-13>

  <\itemize-minus>
    <item><strong|K-III.14.13> <hlink|<verbatim|absorbed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123>
    <em|(key result)> \V Without any spare variable, under a near-identity
    nonlinear coordinate change, evolving by the heat kernel equals the
    formal Gaussian bracket of the Jacobian-corrected density, in centered
    coordinates.
  </itemize-minus>

  <label|k-iii-14-14>

  <\itemize-minus>
    <item><strong|K-III.14.14> <hlink|<verbatim|stirred>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Chord.lean#L48-L76>
    <em|(numbered result)> \V A formal Ward identity holds for the centered
    joint polynomial, with scalar and vacuum terms retained, for a single
    mark.
  </itemize-minus>

  <label|k-iii-14-15>

  <\itemize-minus>
    <item><strong|K-III.14.15> <hlink|<verbatim|line_legs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/FinalLegs.lean#L49-L74>
    <em|(key result)> \V Translation-invariant cell coefficients of arity at
    least three admit a literal linear-cost lift to the cover with weaker
    width, reusable on differences.
  </itemize-minus>

  <label|k-iii-14-16>

  <\itemize-minus>
    <item><strong|K-III.14.16> <hlink|<verbatim|doubleLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Loop/Empty.lean#L81-L107>
    <em|(key result)> \V Rank-two translation-invariant cells with vanishing
    first moment admit a linear-cost lift with weaker width.
  </itemize-minus>

  <label|k-iii-14-17>

  <\itemize-minus>
    <item><strong|K-III.14.17> <hlink|<verbatim|arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81>
    <em|(key result)> \V For symmetric (adjoint-graded) coefficient spaces, a
    curvature-coefficient lift exists with uniform width loss, linear cost
    and Lipschitz control on differences.
  </itemize-minus>

  <label|k-iii-14-18>

  <\itemize-minus>
    <item><strong|K-III.14.18> <hlink|<verbatim|warehouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49>
    <em|(key result)> \V For symmetric graded spaces there exist fixed
    \<theta\> and K such that the lift is rigged: the same \<theta\> may be
    reused at every stage.
  </itemize-minus>

  <label|k-iii-14-19>

  <\itemize-minus>
    <item><strong|K-III.14.19> <hlink|<verbatim|impress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Refresh.lean#L87-L106>
    <em|(key result)> \V Under a finite cover transformation of sincere
    ledgers, the transformed quadratic plus connected part equals the
    original.
  </itemize-minus>

  <label|k-iii-14-20>

  <\itemize-minus>
    <item><strong|K-III.14.20> <hlink|<verbatim|notes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle/Airs.lean#L75-L97>
    <em|(key result)> \V Symbol clocks for the time PDE flows are computed
    directly at all degrees as a Note.
  </itemize-minus>

  <label|k-iii-14-21>

  <\itemize-minus>
    <item><strong|K-III.14.21> <hlink|<verbatim|report>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trickle/Fleet.lean#L59-L61>
    <em|(numbered result)> \V One step of the finite prescription transforms
    the marker as a Markov column identity, giving a recursion formula.
  </itemize-minus>

  <label|k-iii-14-22>

  <\itemize-minus>
    <item><strong|K-III.14.22> <hlink|<verbatim|badges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Charge.lean#L39-L52>
    <em|(numbered result)> \V Scaling identity for the sonic functional under
    filtered perturbations, giving homogeneity at threshold.
  </itemize-minus>

  <label|k-iii-14-23>

  <\itemize-minus>
    <item><strong|K-III.14.23> <hlink|<verbatim|lunch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yurt/Ferry.lean#L15-L59>
    <em|(numbered result)> \V Pointwise funded cell estimate: a constant D
    bounds the cell expression in terms of inputs with null consumed.
  </itemize-minus>

  <label|k-iii-14-24>

  <\itemize-minus>
    <item><strong|K-III.14.24> <hlink|<verbatim|supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164>
    <em|(key result)> \V The row UV convergence holds in the same width, with
    no count-dependent loss, giving every fixed position-moment under finite
    width discount.
  </itemize-minus>

  <label|k-iii-14-25>

  <\itemize-minus>
    <item><strong|K-III.14.25> <hlink|<verbatim|summer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Growth.lean#L95-L98>
    <em|(numbered result)> \V Ward identity at finite regulator for analytic
    precursors with external and gauge parameters linearized around the
    trivial orbit.
  </itemize-minus>

  <label|k-iii-14-26>

  <\itemize-minus>
    <item><strong|K-III.14.26> <hlink|<verbatim|welcomed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Pitch.lean#L80-L98>
    <em|(key result)> \V The formal Ward receipt for the cover before
    normalization holds, with normalized transport produced via logs.
  </itemize-minus>

  <label|k-iii-14-27>

  <\itemize-minus>
    <item><strong|K-III.14.27> <hlink|<verbatim|holy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Cast.lean#L78-L93>
    <em|(numbered result)> \V The multilinear operator is exactly invariant
    under the group action on polynomial-growth coefficients.
  </itemize-minus>

  <label|k-iii-14-28>

  <\itemize-minus>
    <item><strong|K-III.14.28> <hlink|<verbatim|hymn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Snaps.lean#L59-L84>
    <em|(numbered result)> \V A uniform constant bounds first-grade test
    quantities in terms of the sequence bounds, uniformly in the call data.
  </itemize-minus>

  <label|k-iii-14-29>

  <\itemize-minus>
    <item><strong|K-III.14.29> <hlink|<verbatim|spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hunger.lean#L77-L91>
    <em|(key result)> \V A Ward estimate replacing any list of growing probe
    directions with only lower-order costs, with a constant announced before
    block length.
  </itemize-minus>

  <label|k-iii-14-30>

  <\itemize-minus>
    <item><strong|K-III.14.30> <hlink|<verbatim|spark_band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hero.lean#L24-L54>
    <em|(numbered result)> \V A multilinear product bound with a single
    derivative insertion and weight restoration holds with a uniform constant
    for lists of growing probe directions.
  </itemize-minus>

  <label|k-iii-14-31>

  <\itemize-minus>
    <item><strong|K-III.14.31> <hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>
    <em|(main result)> \V For any simple gauge group and positive penalty
    there exists a Wilson run with campaign and pillars with the specified
    funded and native-recipe properties.
  </itemize-minus>

  <label|k-iii-14-32>

  <\itemize-minus>
    <item><strong|K-III.14.32> <hlink|<verbatim|harbor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190>
    <em|(key result)> \V A one-step precise lower-triangular estimate: for
    admissible parameters there are constants and a growth function such that
    the transit bound holds for bouquets of kernels in the race.
  </itemize-minus>

  <label|k-iii-14-33>

  <\itemize-minus>
    <item><strong|K-III.14.33> <hlink|<verbatim|podium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Swift.lean#L40-L96>
    <em|(key result)> \V A single-rank receipt for certified primary
    projections on deterministic legs, giving a bound including the exact
    leading term at leading weight.
  </itemize-minus>

  <label|k-iii-14-34>

  <\itemize-minus>
    <item><strong|K-III.14.34> <hlink|<verbatim|self>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Fields.lean#L85-L103>
    <em|(key result)> \V The exact pre-reset gauge recursion for each cover
    kernel preserves the admissibility and comb-type properties of the
    carrier family of grains.
  </itemize-minus>

  <label|k-iii-14-35>

  <\itemize-minus>
    <item><strong|K-III.14.35> <hlink|<verbatim|entrance_gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50>
    <em|(key result)> \V For simple gauge group and kernel choices, the flat
    supply admits precision receipts: explicit kernels and constants giving a
    quorum estimate for admissible levels beyond a length threshold.
  </itemize-minus>

  <label|k-iii-14-36>

  <\itemize-minus>
    <item><strong|K-III.14.36> <hlink|<verbatim|baton>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Kumi.lean#L63-L106>
    <em|(key result)> \V Polynomial diagonal engineering before whole-graph
    recursion: positive-order output is bounded by fixed lower terms plus
    input times a power of L, with exact principal propagation when B=0.
  </itemize-minus>

  <label|k-iii-14-37>

  <\itemize-minus>
    <item><strong|K-III.14.37> <hlink|<verbatim|available>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59>
    <em|(key result)> \V For a simple gauge group and a given scale sheet, a
    choice of native RG/lattice components exists.
  </itemize-minus>

  <label|k-iii-14-38>

  <\itemize-minus>
    <item><strong|K-III.14.38> <hlink|<verbatim|preheat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Recipe.lean#L60-L83>
    <em|(key result)> \V The flat Gaussian line inverse in cell coordinates
    has a pre-block strip bound and post-block cost uniformly across
    compatible sides, periods and cutoffs.
  </itemize-minus>

  <label|k-iii-14-39>

  <\itemize-minus>
    <item><strong|K-III.14.39> <hlink|<verbatim|slushy_uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95>
    <em|(key result)> \V For given parameters there is a single function J
    controlling, uniformly over all gauge/patch data, a comparison of two
    configurations whose components agree within budget for the relevant
    ranks.
  </itemize-minus>

  <label|k-iii-14-40>

  <\itemize-minus>
    <item><strong|K-III.14.40> <hlink|<verbatim|transcribe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Complex.lean#L108-L138>
    <em|(numbered result)> \V A strip bound for the completed matrix on
    harmonic modes gives a real position-space inverse with polynomial norm
    cost in L.
  </itemize-minus>

  <label|k-iii-14-41>

  <\itemize-minus>
    <item><strong|K-III.14.41> <hlink|<verbatim|Lobby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Lagoon/Hull.lean#L56-L68>
    <em|(numbered result)> \V Step normalization and coefficient data for the
    cover kernels satisfy an exact gauge recursion.
  </itemize-minus>

  <label|k-iii-14-42>

  <\itemize-minus>
    <item><strong|K-III.14.42> <hlink|<verbatim|rooted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Carry.lean#L69-L104>
    <em|(numbered result)> \V If the rail transform shifts variables at scale
    g before the chart, a compatibility identity of marked block functionals
    transfers between two grain families.
  </itemize-minus>

  <label|k-iii-14-43>

  <\itemize-minus>
    <item><strong|K-III.14.43> <hlink|<verbatim|realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L132-L182>
    <em|(numbered result)> \V Pre-length floors and a paid post-length bill
    suffice to realize the native component recipe on a given clock.
  </itemize-minus>

  <label|k-iii-14-44>

  <\itemize-minus>
    <item><strong|K-III.14.44> <hlink|<verbatim|conquer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Lob.lean#L32-L124>
    <em|(numbered result)> \V A fully marked RG step yields a graded
    difference bound for two kernels with constants independent of the scale.
  </itemize-minus>

  <label|k-iii-14-45>

  <\itemize-minus>
    <item><strong|K-III.14.45> <hlink|<verbatim|drive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Tides.lean#L45-L88>
    <em|(numbered result)> \V Along deterministic legs, the graded kernel
    entries satisfy a driven bound with controlled constants.
  </itemize-minus>

  <label|k-iii-14-46>

  <\itemize-minus>
    <item><strong|K-III.14.46> <hlink|<verbatim|DocketBill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Elect.lean#L78-L140>
    <em|(numbered result)> \V Under novice-parameter hypotheses there exist
    constants and growth function such that differences of two graded kernel
    families satisfy a docket bound at each rank.
  </itemize-minus>

  <label|k-iii-14-47>

  <\itemize-minus>
    <item><strong|K-III.14.47> <hlink|<verbatim|blossom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas/Furnace.lean#L32-L51>
    <em|(key result)> \V If two jets of fields agree to the relevant order on
    the penalty germ and are related by a gauge transformation, their
    block-integral germs coincide.
  </itemize-minus>

  <label|k-iii-14-48>

  <\itemize-minus>
    <item><strong|K-III.14.48> <hlink|<verbatim|switch_rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate/Voice.lean#L84-L94>
    <em|(key result)> \V Rescaled evaluations of a gauge-invariant packet
    coincide for two representatives of a field whose lattice representations
    differ by a gauge transformation and a symbol shift, up to finite order.
  </itemize-minus>

  <label|k-iii-14-49>

  <\itemize-minus>
    <item><strong|K-III.14.49> <hlink|<verbatim|hatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel/Works.lean#L43-L52>
    <em|(key result)> \V Completed unmarked packets at all ranks have their
    positive rescaled evaluations compared, with a stated identification of
    the completion.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.13 Alternative construction: one
  Wilson family for all labels|III-13.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-14.tm>|<hlink|III.15 Cost accounting for observables and
  the remainder comparison \<rightarrow\>|III-15.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.14. The construction run: flat representations
    and the ultraviolet rate \U Yang\UMills informalization>
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
    <associate|additional-source-locations|<tuple|9.1|7>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|7>>
    <associate|auto-11|<tuple|10|10>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|iii14-the-construction-run-flat-representations-and-the-ultraviolet-rate|<tuple|?|1>>
    <associate|k-iii-14-1|<tuple|10|11>>
    <associate|k-iii-14-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-13|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-14|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-15|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-16|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-17|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-18|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-19|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-14-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-20|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-21|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-22|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-23|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-24|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-25|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-26|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-27|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-28|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-29|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-14-3|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-30|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-31|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-32|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-33|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-34|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-35|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-36|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-37|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-38|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-14-39|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-4|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-40|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-41|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-42|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-43|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-44|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-45|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-46|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-47|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-48|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-14-49|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-14-5|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-6|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-7|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-8|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-14-9|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|key-statements|<tuple|10|10>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|5|5>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
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