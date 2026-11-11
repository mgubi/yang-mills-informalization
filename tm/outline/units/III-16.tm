<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.15 Cost accounting for observables
  and the remainder comparison|III-15.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-16.tm>|<hlink|IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit \<rightarrow\>|IV-1.tm>>

  <ym-title|III.16. Analytic toolkit><label|iii16-analytic-toolkit>

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

  Collects analytic tools for kernels, Fourier estimates, trace bounds and
  field labels.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-16.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.15|III-15.tm> <ym-middot> <hlink|Next:
  IV.1 \<rightarrow\>|IV-1.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> eight folders, none a numbered unit of its own:
    <hlink|<verbatim|YM/Complex/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex>,
    <hlink|<verbatim|YM/TimeKernel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel>,
    <hlink|<verbatim|YM/Analysis/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis>,
    <hlink|<verbatim|YM/Laurent/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent>,
    <hlink|<verbatim|YM/CellFourier/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier>,
    <hlink|<verbatim|YM/Work/F07/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07>,
    <hlink|<verbatim|YM/Maxwell/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell>,
    <hlink|<verbatim|YM/Labels/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels>.
    <strong|Size:> 5,318 physical source lines in 41 files, plus elementary
    helper lemmas in other folders.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition III.16.1 (integrated positivity).> Let <math|X> be
  compact metric with finite Borel measure <math|\<mu\>>,
  <math|\<cal-A\>,\<cal-B\>> sets, <math|K:\<cal-A\><rsup|2>\<to\>\<bbb-C\>>
  positive semidefinite, and <math|g:\<cal-B\>\<times\>X\<to\>\<cal-A\>>. If
  <math|<around|(|x,y|)>\<mapsto\>K<around|(|g<around|(|b,x|)>,g<around|(|c,y|)>|)>>
  is continuous for every <math|b,c>, then
  <math|<wide|K|~><around|(|b,c|)>=<big|iint>K<around|(|g<around|(|b,x|)>,g<around|(|c,y|)>|)>*<space|0.17em>d*\<mu\><around|(|y|)>*d*\<mu\><around|(|x|)>>
  is positive semidefinite. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|YM.Analysis.NNKernel.accumulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70>.

  <strong|Proposition III.16.2 (trace Hölder).> For finite complex square
  matrices of the same size <math|A\<succeq\>0,b<rsub|1>,\<ldots\>,b<rsub|n>>,
  integers <math|q,M\<geqslant\>1>, <math|Z<rsub|A>=<math-up|tr>A<rsup|M>\<gtr\>0>,
  and <math|v\<in\>\<bbb-C\><rsup|n>> with
  <math|<math-up|Re><space|0.17em>v<rsub|k>\<geqslant\>0> and
  <math|n/<around|(|2*q|)>+<big|sum><rsub|k><math-up|Re><space|0.17em>v<rsub|k>/M=1>,

  <\equation*>
    <around*|\||<math-up|tr><big|prod><rsub|k>b<rsub|k>*A<rsup|v<rsub|k>>|\|>\<leqslant\>C<rsub|A>,<space|2em>C<rsub|A>=<big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>*Z<rsub|A><rsup|1-n/<around|(|2*q|)>>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Holder.estimation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165>.

  <strong|Proposition III.16.3 (moving matrix gaps).> For such matrices,
  integers <math|q,w\<geqslant\>1>, <math|M=2*q*w>, <math|Z<rsub|A>\<gtr\>0>,
  and <math|Y,Y<rprime|'>\<in\>\<bbb-N\><rsup|n>>, suppose
  <math|n*w+<big|sum><rsub|k>Y<rsub|k>=M> and
  <math|Y<rprime|'>=Y+\<ell\>*<around|(|e<rsub|i>-e<rsub|j>|)>> for
  <math|i\<ne\>j>, <math|\<ell\>\<in\>\<bbb-N\>>, with <math|e<rsub|i>> the
  coordinate vectors. If <math|r\<gtr\>0>, <math|Y<rsub|k>\<gtr\>2*r> for
  every <math|k>, and <math|\<ell\>\<leqslant\>r>, then

  <\equation*>
    <around*|\||<math-up|tr><big|prod><rsub|k>b<rsub|k>*A<rsup|Y<rprime|'><rsub|k>>-<math-up|tr><big|prod><rsub|k>b<rsub|k>*A<rsup|Y<rsub|k>>|\|>\<leqslant\>C<rsub|A>*\<ell\>/r.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Holder.finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>.

  <strong|Proposition III.16.4 (moving kernel gaps).> On <math|X,\<mu\>> as
  in III.16.1, let <math|K> be continuous positive semidefinite and
  <math|B<rsub|1>,\<ldots\>,B<rsub|n>> continuous complex kernels. For
  integers <math|q,w\<geqslant\>1>, <math|M=2*q*w>, real
  <math|Z=<math-up|Tr><around|(|K<rsup|M>|)>\<gtr\>0>, and
  <math|Y,Y<rprime|'>,\<ell\>,r> satisfying all gap conditions of III.16.3,
  assume real <math|c<rsub|k>> satisfy <math|<around|\||<math-up|Tr><around|(|<around|(|B<rsub|k><rsup|\<ast\>>*B<rsub|k>|)><rsup|q>|)>|\|><rsup|1/<around|(|2*q|)>>\<leqslant\>c<rsub|k>*Z<rsup|1/<around|(|2*q|)>>>.
  Then

  <\equation*>
    <around|\||<math-up|Tr><around|(|B<rsub|1>*K<rsup|Y<rprime|'><rsub|1>>*\<cdots\>*B<rsub|n>*K<rsup|Y<rprime|'><rsub|n>>|)>-<math-up|Tr><around|(|B<rsub|1>*K<rsup|Y<rsub|1>>*\<cdots\>*B<rsub|n>*K<rsup|Y<rsub|n>>|)>|\|>\<leqslant\>Z*<big|prod><rsub|k>c<rsub|k>*<space|0.17em>\<ell\>/r.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.TimeKernel.passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>.

  <strong|Proposition III.16.5 (Laurent estimates).> Let <math|\<alpha\>> be
  finite and <math|\<eta\>\<gtr\>0>. For holomorphic,
  <math|2*\<pi\>>-periodic <math|u:S<rsub|\<eta\>>\<to\>\<bbb-C\>>, define
  <math|<wide|u|^><rsub|p><around|(|x|)>=<big|int><rsub|<around|[|0,1|]><rsup|\<alpha\>>>u*<around|(|p+2*\<pi\>*\<theta\>|)>*e<rsup|-2*\<pi\>*i*\<theta\>\<cdot\>x>*d*\<theta\>>,
  <math|<wide|u|^>=<wide|u|^><rsub|0>>. The torus mean is independent of
  <math|p\<in\>S<rsub|\<eta\>>>, and <math|<wide|u|^><rsub|p><around|(|x|)>=e<rsup|i*p\<cdot\>x>*<wide|u|^><around|(|x|)>>.
  If <math|<around|\||u|\|>\<leqslant\>K>, then
  <math|<around|\||<wide|u|^><rsub|p><around|(|x|)>|\|>\<leqslant\>K> and,
  for <math|H\<geqslant\>0>, <math|b\<gtr\>0>, <math|H+b\<less\>\<eta\>>,

  <\equation*>
    <big|sum><rsub|x>e<rsup|H<around|\||x|\|><rsub|1>><around|\||<wide|u|^><around|(|x|)>|\|>\<leqslant\>K*<around|(|2*<around|(|1+b|)>/b|)><rsup|<math-up|card><space|0.17em>\<alpha\>>.
  </equation*>

  If <math|<around|\||u|\|>\<leqslant\>K>, the Laurent series reconstructs
  <math|u> absolutely throughout <math|S<rsub|\<eta\>>>:
  <math|u<around|(|p|)>=<big|sum><rsub|x><wide|u|^><around|(|x|)>*e<rsup|i*p\<cdot\>x>>.

  Conversely, for <math|f:\<bbb-Z\><rsup|\<alpha\>>\<to\>\<bbb-C\>>, if
  <math|<big|sum><rsub|x>e<rsup|\<eta\><around|\||x|\|><rsub|1>><around|\||f<around|(|x|)>|\|>\<leqslant\>W>,
  then <math|<around|\||<wide|f|^>|\|>\<leqslant\>W> on
  <math|<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<leqslant\>\<eta\>>.
  For every <math|0\<less\>\<sigma\>\<less\>\<eta\>>, <math|<wide|f|^>> is
  holomorphic on <math|S<rsub|\<sigma\>>>, with derivative norm and Lipschitz
  constant at most <math|W/<around|(|\<eta\>-\<sigma\>|)>> for the sup norm.
  For real <math|p>, <math|<wide|<math-up|Re><space|0.17em>f|^><around|(|p|)>=<around|(|<wide|f|^><around|(|p|)>+<wide|<wide|f|^><around|(|-p|)>|\<bar\>>|)>/2>.
  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|full_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112>,
  <hlink|<verbatim|Vane.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L61-L87>,
  <hlink|<verbatim|Vane.paints>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104>,
  <hlink|<verbatim|Width.estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L131-L133>,
  <hlink|<verbatim|readDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95>,
  <hlink|<verbatim|readDiff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L97-L101>,
  <hlink|<verbatim|readRealPart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L119-L133>.

  <strong|Proposition III.16.6 (Fourier and Bloch identities).> For positive
  integers <math|n,c,L>, finite internal index sets
  <math|\<alpha\>,\<beta\>>, and real entrywise summable
  <math|R:\<bbb-Z\><rsup|4>\<to\>\<bbb-R\><rsup|\<alpha\>\<times\>\<beta\>>>,
  put <math|R<rsub|n><around|(|<around|(|y,a|)>,<around|(|y<rprime|'>,b|)>|)>=<big|sum><rsub|x\<in\>\<bbb-Z\><rsup|4>:y+x\<equiv\>y<rprime|'><pmod|n>>R<rsub|a*b><around|(|x|)>>.
  Then

  <\equation*>
    F<rsub|n>*F<rsub|n><rsup|\<ast\>>=F<rsub|n><rsup|\<ast\>>*F<rsub|n>=n<rsup|4>*I,<space|2em>R<rsub|n>*<around|(|F<rsub|n>\<otimes\>I<rsub|\<beta\>>|)>=<around|(|F<rsub|n>\<otimes\>I<rsub|\<alpha\>>|)><math-up|diag><rsub|p><wide|R|^><around|(|2*\<pi\>*p/n|)>.
  </equation*>

  This includes <math|p=0>. With <math|f=c*L>, reindexing fine momenta as
  <math|k<rsub|p,l>=2*\<pi\>*<around|(|p+c*l|)>/f>,
  <math|p\<in\>\<Lambda\><rsub|c>,l\<in\>\<Lambda\><rsub|L>>, gives
  <math|\<Phi\>*\<Phi\><rsup|\<ast\>>=f<rsup|4>*I> and the same intertwining
  identity with <math|\<Phi\>>, <math|R<rsub|f>>, and blocks
  <math|<math-up|diag><rsub|p,l><wide|R|^><around|(|k<rsub|p,l>|)>>. For
  every <math|p\<in\>\<bbb-C\><rsup|4>>, <math|E<rsub|L><around|(|<wide|p|\<bar\>>|)><rsup|\<ast\>>*E<rsub|L><around|(|p|)>=L<rsup|4>*I>.
  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|circulant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104>,
  <hlink|<verbatim|gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L117-L119>,
  <hlink|<verbatim|coGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L121-L127>,
  <hlink|<verbatim|readingsGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75>,
  <hlink|<verbatim|aligns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129>,
  <hlink|<verbatim|straightens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53>.

  <strong|Proposition III.16.7 (matrix root).> For <math|m\<gtr\>0>, nonempty
  finite matrix indices and complex square <math|X>,

  <\equation*>
    \<Phi\><rsub|m><around|(|X|)>=<sqrt|m>*<big|sum><rsub|k\<geqslant\>0><binom|1/2|k><around|(|X/m-I|)><rsup|k>
  </equation*>

  is holomorphic on <math|<around|\<\|\|\>|X/m-I|\<\|\|\>>\<less\>1>, bounded
  on every smaller closed ball, and commutes with entrywise conjugation. If
  <math|v\<gtr\>0> and <math|X> is Hermitian with
  <math|v*I\<leqslant\>X\<leqslant\>m*I> as quadratic forms, its value is
  Hermitian, squares to <math|X>, and lies between <math|<sqrt|v>*I> and
  <math|<sqrt|m>*I>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|binRoot_on_band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198>,
  <hlink|<verbatim|binRoot_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L127-L130>,
  <hlink|<verbatim|binSum_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L116-L123>,
  <hlink|<verbatim|binRoot_conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L138-L143>.

  <strong|Proposition III.16.8 (Maxwell jets).> Fix the compact matrix gauge
  group and orthonormal real colour coordinates. For every integer
  <math|j\<geqslant\>0>, curl is an isomorphism
  <math|\<cal-A\><rsub|j>\<to\>\<cal-C\><rsub|j>>, with inverse
  <math|A<rsub|i>=<around|(|j+2|)><rsup|-1>*<big|sum><rsub|k>x<rsub|k>*F<rsub|k*i>>.
  For every smooth antisymmetric colour-valued field satisfying Bianchi and
  Maxwell on an open <math|U\<subset\>\<bbb-R\><rsup|4>>, its <math|j>-th
  Taylor coefficient lies in <math|\<cal-S\><rsub|j>> at every
  <math|x\<in\>U>.

  Off zero, <math|G<rsub|0>=<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)><rsup|-1>>
  is harmonic; set <math|\<psi\><rsub|b,k*m>=\<delta\><rsub|k*b>*\<partial\><rsub|m>*G<rsub|0>-\<delta\><rsub|m*b>*\<partial\><rsub|k>*G<rsub|0>>,
  <math|C<rsub|a*b,k*m>=\<partial\><rsub|a>*\<psi\><rsub|b,k*m>-\<partial\><rsub|b>*\<psi\><rsub|a,k*m>>.
  In either index pair, <math|C> is smooth, antisymmetric and solves both
  equations; <math|C<rsub|a*b,k*m><around|(|z|)>=C<rsub|k*m,a*b><around|(|z|)>=C<rsub|a*b,k*m>*<around|(|-z|)>>.

  For all <math|j,l\<geqslant\>0>, real linear probes <math|p,q> on
  <math|\<cal-S\><rsub|j>,\<cal-S\><rsub|l>> have a bilinear contraction
  <math|\<kappa\><around|(|p,q|)><around|(|z|)>>, independent of extensions
  to unrestricted tensors, smooth for <math|z\<ne\>0>, with
  <math|\<kappa\><around|(|p,q|)><around|(|z|)>=\<kappa\><around|(|q,p|)>*<around|(|-z|)>>.
  For coordinate probes <math|p<around|(|F|)>=F<rsub|a*b><around|[|u|]><rsub|c>>,
  <math|q<around|(|F|)>=F<rsub|k*m><around|[|v|]><rsub|d>>,
  <math|u\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|j>,v\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|l>>,

  <\equation*>
    \<kappa\><around|(|p,q|)><around|(|z|)>=\<delta\><rsub|c*d>*<around|(|-1|)><rsup|l>*c<rsub|l>*<around|(|t\<mapsto\>c<rsub|j>*C<rsub|a*b,k*m><around|(|t|)><around|[|u|]>|)><around|(|z|)><around|[|v|]>.
  </equation*>

  <em|Status:> theorems; contraction definition. <em|Lean:>
  <hlink|<verbatim|potential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L218-L224>,
  <hlink|<verbatim|WaveOn.jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122>,
  <hlink|<verbatim|Bare.equation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98>,
  <hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>,
  <hlink|<verbatim|reads_mixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L90-L105>.

  <strong|Proposition III.16.9 (labels).> Fix real bases of
  <math|\<cal-A\><rsub|j>>; coordinate weight is <math|j+2>. For each integer
  <math|d\<geqslant\>0>, <math|<math-up|Label><rsub|d>> consists of complex
  polynomials of weight <math|\<leqslant\>d> invariant under simultaneous
  adjoint action. Real jet evaluation determines polynomials. There are
  finitely many weight-<math|\<leqslant\>d> monomials, so
  <math|<math-up|Label><rsub|d>> is finite-dimensional. Every label
  decomposes into invariant bihomogeneous components (weight and degree both
  <math|\<leqslant\>d>), commuting with conjugation and
  <math|O<around|(|4|)>>. For <math|s\<in\>O<around|(|4|)>>, the action is
  <math|<around|(|s\<cdot\>P|)><around|(|A|)>=P*<around|(|T<rsub|s<rsup|-1>>*A|)>>,
  where <math|<around|(|T<rsub|s>*A<rsub|j>|)><rsub|i><around|(|x|)>=<big|sum><rsub|k>s<rsub|i*k><around|(|A<rsub|j>|)><rsub|k>*<around|(|s<rsup|-1>*x|)>>,
  and satisfies the group law. Simultaneously for all <math|d>, there exist
  complex bases of real bihomogeneous labels containing <math|e<rsub|0>=1>,
  nested as sets of polynomials with no further prescribed ordering.
  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|eval_ext>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49>,
  <hlink|<verbatim|labels_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L114-L117>,
  <hlink|<verbatim|decompose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105>,
  <hlink|<verbatim|rotation_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88>,
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>.

  <strong|Proposition III.16.10 (Wick hierarchy).> For every
  <math|n\<geqslant\>0>, integer cutoffs <math|d<rsub|i>\<geqslant\>0>,
  distinct <math|x<rsub|i>\<in\>\<bbb-R\><rsup|4>>, and
  <math|P<rsub|i>\<in\><math-up|Label><rsub|d<rsub|i>>>, restrict labels by
  <math|A<rsub|j>=<math-up|curl><rsup|-1>F<rsub|j>>,
  <math|F<rsub|j>\<in\>\<cal-S\><rsub|j>>. Sum products of
  <math|\<kappa\><around|(|\<cdummy\>,\<cdummy\>|)>*<around|(|x<rsub|i>-x<rsub|j>|)>>
  over pairings of monomial occurrences at different points, extending
  multilinearly. This correlation is smooth, kills any insertion vanishing on
  all shell jets, respects simultaneous permutations and insertion of unit
  labels at additional distinct points, and equals
  <math|<big|prod><rsub|i>a<rsub|i>> for constant insertions
  <math|a<rsub|i>\<in\>\<bbb-C\>>, including the empty product <math|1>.
  <em|Status:> definitions and theorems. <em|Lean:>
  <hlink|<verbatim|Wick.correlation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147>,
  <hlink|<verbatim|Wick.smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L152-L154>,
  <hlink|<verbatim|Wick.kills_equation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L149-L150>,
  <hlink|<verbatim|Wick.exchangeSites>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L112-L124>,
  <hlink|<verbatim|Wick.adjoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L126-L144>,
  <hlink|<verbatim|Wick.constants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L146-L153>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: lattices, subdivision, gauge colours, adjoint action and
    distinct-point configurations: <hlink|<verbatim|Lattice.Site>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19>,
    <hlink|<verbatim|Gauge.Color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43>.

    <item>III.1: summability budgets: <hlink|<verbatim|RG.SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>.

    <item>Three-lines theorem, Cauchy estimates and contour formulas, mean
    value inequality, spectral theorem, Schur products, dominated
    convergence, Fourier inversion, Banach-algebra binomial series, symmetry
    of derivatives and polynomial identity theorem. All analytic assumptions
    are stated above; parameters are chosen in the applications.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Moving an insertion transfers units between two gaps. Continue these gaps
  holomorphically while preserving the Hölder balance; Cauchy's derivative
  estimate controls the change by <math|\<ell\>/r>. Sampling all kernels and
  adjoints with one partition passes this dimension-free estimate to cyclic
  integrals.

  Shift Fourier contours to exchange strip holomorphy for exponential decay;
  diagonalize finite tori and construct matrix roots by a binomial series on
  a thinner strip. Radial gauge identifies potentials with closed jets; the
  free kernel descends to shell probes and supplies Wick correlations.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Factor matrices into normalized entire paths with operator norm
    <math|\<leqslant\>1> on <math|0\<leqslant\><math-up|Re><space|0.17em>z\<leqslant\>1>
    and trace norm <math|\<leqslant\>1> on its right boundary. At exponents
    with nonnegative real parts summing to <math|1>, three-lines induction
    bounds the product trace by <math|1>, giving dimension-free Hölder.
    <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L73-L126>.

    <item>Vary gaps along <math|Y+z*<around|(|e<rsub|i>-e<rsub|j>|)>>;
    Cauchy's estimate on radius-<math|r> circles gives III.16.3.
    <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>.

    <item>Positive quadratic forms pass through quadrature, proving
    integrated positivity. Sample kernels with square-root cell masses;
    positivity, adjoints and cyclic traces survive, and quadrature passes the
    trace estimate to kernels. <hlink|<verbatim|accumulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70>,
    <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119>.

    <item>Shift integration contours and sum geometric tails; Fourier
    inversion reconstructs symbols; termwise differentiation gives the
    reverse derivative estimate. <hlink|<verbatim|Vane.paints>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104>,
    <hlink|<verbatim|readDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95>.

    <item>Character orthogonality diagonalizes periodized kernels and their
    alias blocks, retaining zero momentum.
    <hlink|<verbatim|circulant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104>,
    <hlink|<verbatim|straightens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53>.

    <item>Diagonalization reduces the binomial matrix series to scalar square
    roots; Banach-algebra convergence gives holomorphy.
    <hlink|<verbatim|binRoot_on_band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198>.

    <item>Euler's identity and Bianchi invert curl; shell restriction makes
    contractions independent of extensions.
    <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195>,
    <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159>.

    <item>Finite Wick sums give smoothness; real bihomogeneous decomposition
    gives nested frames. <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L152-L154>,
    <hlink|Lean|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The trace bound must remain independent of matrix dimension as gaps vary
  and quadrature converges at fixed exponents and period. Strict gap
  inequalities avoid the exceptional zeroth-power convention. Laurent
  estimates lose strip width; complex alias adjoints require
  <math|<wide|p|\<bar\>>>. Maxwell contractions retain factorials, the colour
  normalization and the second-endpoint sign.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>>>: operator norm;
  <math|<around|\<\|\|\>|b|\<\|\|\>><rsub|2*q>=<around|(|<math-up|tr><around|(|<around|(|b<rsup|\<ast\>>*b|)><rsup|q>|)>|)><rsup|1/<around|(|2*q|)>>>.
  Products are ordered. <math|A<rsup|z>=<big|sum><rsub|\<lambda\>\<gtr\>0>e<rsup|z*log
  \<lambda\>>*P<rsub|\<lambda\>>> for spectral projections
  <math|P<rsub|\<lambda\>>>; <math|A<rsup|0>> projects onto the range. For
  <math|L\<geqslant\>1>, <math|<math-up|Tr><around|(|k<rsub|1>*\<cdots\>*k<rsub|L>|)>=<big|int><rsub|X<rsup|L>><big|prod><rsub|l=1><rsup|L>k<rsub|l>*<around|(|x<rsub|l>,x<rsub|l+1>|)>*<space|0.17em>d*\<mu\><rsup|\<otimes\>L>>,
  <math|x<rsub|L+1>=x<rsub|1>>; powers repeat kernels;
  <math|B<rsup|\<ast\>><around|(|x,y|)>=<wide|B<around|(|y,x|)>|\<bar\>>>.
  Positive semidefinite means every finite Gram matrix, allowing repeated
  points, is Hermitian positive semidefinite.

  <math|<around|\||x|\|><rsub|1>=<big|sum><rsub|a><around|\||x<rsub|a>|\|>>,
  <math|S<rsub|\<eta\>>=<around|{|p\<in\>\<bbb-C\><rsup|\<alpha\>>:<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<less\>\<eta\>\<forall\>a|}>>,
  <math|<wide|f|^><around|(|p|)>=<big|sum><rsub|x>f<around|(|x|)>*e<rsup|i*p\<cdot\>x>>.
  <math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>>;
  <math|F<rsub|n>=<around|(|e<rsup|2*\<pi\>*i*p\<cdot\>x/n>|)>>,
  <math|\<Phi\>=<around|(|e<rsup|i*k<rsub|p,l>\<cdot\>y>|)><rsub|y\<in\>\<Lambda\><rsub|f>,<around|(|p,l|)>\<in\>\<Lambda\><rsub|c>\<times\>\<Lambda\><rsub|L>>>,
  <math|E<rsub|L><around|(|p|)>=<around|(|e<rsup|i*<around|(|p+2*\<pi\>*l|)>\<cdot\>x/L>|)><rsub|x,l\<in\>\<Lambda\><rsub|L>>>.
  Residues use representatives <math|0,\<ldots\>,n-1>.

  Colour coordinates are orthonormal for <math|-<around|(|<math-up|dim><space|0.17em>\<rho\>|)><rsup|-1><math-up|Re><space|0.17em><math-up|tr><around|(|X*Y|)>>
  in the fixed defining representation. <math|\<cal-A\><rsub|j>>:
  colour-valued <math|4>-tuples of homogeneous degree-<math|<around|(|j+1|)>>
  potentials with <math|x\<cdot\>A=0>; <math|\<cal-C\><rsub|j>>:
  antisymmetric homogeneous degree-<math|j> curvature jets satisfying
  <math|\<partial\><rsub|a>*F<rsub|b*c>+\<partial\><rsub|b>*F<rsub|c*a>+\<partial\><rsub|c>*F<rsub|a*b>=0>;
  <math|\<cal-S\><rsub|j>>: additionally divergence-free.
  <math|c<rsub|j>=D<rsup|j>/j!>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  III.6 supplies norm conversion and strip choices for square roots; IV.1
  supplies gap parameters needed for uniformity. External helper lemmas and
  longer dependency lists remain unchecked individually.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-16.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>.

  <strong|Referenced by:> <hlink|III.7|III-7.tm>, <hlink|VI.2|VI-2.tm>,
  <hlink|VII.2|VII-2.tm>, <hlink|II.1|II-1.tm>, <hlink|III.11|III-11.tm>,
  <hlink|III.3|III-3.tm>, <hlink|III.12|III-12.tm>, <hlink|VII.1|VII-1.tm>,
  <hlink|III.6|III-6.tm>, <hlink|VII.3|VII-3.tm>, <hlink|III.13|III-13.tm>,
  <hlink|III.2|III-2.tm>, <hlink|VI.1|VI-1.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.14|III-14.tm>, <hlink|III.4|III-4.tm>, <hlink|III.10|III-10.tm>,
  <hlink|VII.4|VII-4.tm>, <hlink|IV.1|IV-1.tm>, <hlink|III.9|III-9.tm>,
  <hlink|VII.6|VII-6.tm>, <hlink|III.15|III-15.tm>, <hlink|III.8|III-8.tm>,
  <hlink|V.1|V-1.tm>, <hlink|V.2|V-2.tm>, <hlink|V.3|V-3.tm>,
  <hlink|VII.5|VII-5.tm>, <hlink|III.5|III-5.tm>, <hlink|III.1|III-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 4,013 attributed lines; 564 line-counted
  declarations; 796 assigned declaration names. Of the assigned names, 745
  are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Maxwell/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell>
    \V 1,007 lines.

    <item>work package <hlink|<verbatim|YM/Analysis/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis>
    \V 901 lines.

    <item>work package <hlink|<verbatim|YM/Labels/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels>
    \V 587 lines.

    <item>work package <hlink|<verbatim|YM/Complex/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex>
    \V 464 lines.

    <item>work package <hlink|<verbatim|YM/Laurent/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent>
    \V 374 lines.

    <item>work package <hlink|<verbatim|YM/CellFourier/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier>
    \V 268 lines.

    <item>work package <hlink|<verbatim|YM/Work/F07/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07>
    \V 263 lines.

    <item>work package <hlink|<verbatim|YM/TimeKernel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel>
    \V 149 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|oppositeCoeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L102-L108>

    <item><hlink|<verbatim|exchangeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L36-L69>

    <item><hlink|<verbatim|reflectionJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L72-L99>

    <item><hlink|<verbatim|coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65-L66>

    <item><hlink|<verbatim|slot_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L71-L78>

    <item><hlink|<verbatim|integrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/MomentPD.lean#L19-L62>

    <item><hlink|<verbatim|NNKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19>

    <item><hlink|<verbatim|gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L24-L28>

    <item><hlink|<verbatim|scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L33-L34>

    <item><hlink|<verbatim|plus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L35-L36>

    <item><hlink|<verbatim|times>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L37-L38>

    <item><hlink|<verbatim|pow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L49-L52>

    <item><hlink|<verbatim|titled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L54-L55>

    <item><hlink|<verbatim|criterion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L69-L75>

    <item><hlink|<verbatim|closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L80-L88>

    <item><hlink|<verbatim|exp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L90-L99>

    <item><hlink|<verbatim|finiteD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238>

    <item><hlink|<verbatim|approx>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L19-L38>

    <item><hlink|<verbatim|approximation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L119-L133>

    <item><hlink|<verbatim|Quad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26>

    <item><hlink|<verbatim|refine_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L40-L63>

    <item><hlink|<verbatim|shrink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L65-L66>

    <item><hlink|<verbatim|counting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L95-L114>

    <item><hlink|<verbatim|commuteD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L54-L60>

    <item><hlink|<verbatim|sym_Jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L71-L134>

    <item><hlink|<verbatim|ext_diag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L62-L77>

    <item><hlink|<verbatim|lift_weak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50>

    <item><hlink|<verbatim|aliasAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L20>

    <item><hlink|<verbatim|aliasBlock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31>

    <item><hlink|<verbatim|energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L65-L69>

    <item><hlink|<verbatim|Bloch.Row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22>

    <item><hlink|<verbatim|Row.strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26>

    <item><hlink|<verbatim|Row.read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L30-L31>

    <item><hlink|<verbatim|Row.acts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L33-L34>

    <item><hlink|<verbatim|Row.conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L39-L45>

    <item><hlink|<verbatim|Row.periods>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L49-L50>

    <item><hlink|<verbatim|orthogonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L106-L110>

    <item><hlink|<verbatim|F>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L113>

    <item><hlink|<verbatim|mon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L18>

    <item><hlink|<verbatim|cell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L20>

    <item><hlink|<verbatim|sum_cell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L98-L104>

    <item><hlink|<verbatim|readings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L46>

    <item><hlink|<verbatim|imageForm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L114-L156>

    <item><hlink|<verbatim|specPow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L38>

    <item><hlink|<verbatim|weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L60-L81>

    <item><hlink|<verbatim|rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L105>

    <item><hlink|<verbatim|paysNorm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L106>

    <item><hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109>

    <item><hlink|<verbatim|cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112>

    <item><hlink|<verbatim|leap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24>

    <item><hlink|<verbatim|leap_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L26-L32>

    <item><hlink|<verbatim|Holder.Q>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L37>

    <item><hlink|<verbatim|flexPower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L39-L63>

    <item><hlink|<verbatim|convexStrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132>

    <item><hlink|<verbatim|Flex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29>

    <item><hlink|<verbatim|Gauge.adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117>

    <item><hlink|<verbatim|Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26>

    <item><hlink|<verbatim|Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57>

    <item><hlink|<verbatim|frame_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86>

    <item><hlink|<verbatim|component_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L35-L48>

    <item><hlink|<verbatim|gradePart_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L66-L71>

    <item><hlink|<verbatim|gradePart_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L73-L74>

    <item><hlink|<verbatim|radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37>

    <item><hlink|<verbatim|Labels.Taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39>

    <item><hlink|<verbatim|Labels.Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>

    <item><hlink|<verbatim|Labels.Pol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L29>

    <item><hlink|<verbatim|height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L55>

    <item><hlink|<verbatim|cap_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94>

    <item><hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>

    <item><hlink|<verbatim|Frame.scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L96-L109>

    <item><hlink|<verbatim|Lattice.wrap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38>

    <item><hlink|<verbatim|Lattice.Ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24>

    <item><hlink|<verbatim|pins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L13-L35>

    <item><hlink|<verbatim|Width.compactPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L39-L57>

    <item><hlink|<verbatim|Width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104>

    <item><hlink|<verbatim|Laurent.read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L123>

    <item><hlink|<verbatim|size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34>

    <item><hlink|<verbatim|mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L39>

    <item><hlink|<verbatim|strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L43>

    <item><hlink|<verbatim|reward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L48-L56>

    <item><hlink|<verbatim|Vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L18-L21>

    <item><hlink|<verbatim|market>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L80>

    <item><hlink|<verbatim|market_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99>

    <item><hlink|<verbatim|coat_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L114-L118>

    <item><hlink|<verbatim|exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169>

    <item><hlink|<verbatim|pairing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L24-L47>

    <item><hlink|<verbatim|raw_mixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L72-L87>

    <item><hlink|<verbatim|Bare.even>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L100-L102>

    <item><hlink|<verbatim|Bare.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L104-L109>

    <item><hlink|<verbatim|Bare.equation_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L111-L123>

    <item><hlink|<verbatim|curlOpp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L17-L18>

    <item><hlink|<verbatim|bareCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20>

    <item><hlink|<verbatim|reduceEq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50>

    <item><hlink|<verbatim|observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>

    <item><hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>

    <item><hlink|<verbatim|ideal_meaning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79>

    <item><hlink|<verbatim|closedCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128>

    <item><hlink|<verbatim|contracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L130-L154>

    <item><hlink|<verbatim|potential_recover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214>

    <item><hlink|<verbatim|Maxwell.grad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L20>

    <item><hlink|<verbatim|ClosedJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L57-L61>

    <item><hlink|<verbatim|formSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L63-L95>

    <item><hlink|<verbatim|takeCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L97-L98>

    <item><hlink|<verbatim|contraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L145-L146>

    <item><hlink|<verbatim|kernel_smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L168-L172>

    <item><hlink|<verbatim|Probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L64>

    <item><hlink|<verbatim|Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22>

    <item><hlink|<verbatim|second_Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L49-L66>

    <item><hlink|<verbatim|harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77>

    <item><hlink|<verbatim|Wick.monExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L103-L110>

    <item><hlink|<verbatim|onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>

    <item><hlink|<verbatim|Shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44>

    <item><hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>

    <item><hlink|<verbatim|leg_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L49-L50>

    <item><hlink|<verbatim|WaveOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L57-L62>

    <item><hlink|<verbatim|Wick.monomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L107>

    <item><hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>

    <item><hlink|<verbatim|Wick.entry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24>

    <item><hlink|<verbatim|Wick.Occ.Matching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L75-L76>

    <item><hlink|<verbatim|Slice.Time.powering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102>

    <item><hlink|<verbatim|Slice.step_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91>

    <item><hlink|<verbatim|E4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24>

    <item><hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>

    <item><hlink|<verbatim|Ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20>

    <item><hlink|<verbatim|closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76>

    <item><hlink|<verbatim|sample>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L81>

    <item><hlink|<verbatim|op>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L83>

    <item><hlink|<verbatim|safe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L90-L94>

    <item><hlink|<verbatim|measureWeight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L96-L104>

    <item><hlink|<verbatim|along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18>

    <item><hlink|<verbatim|multiply>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20>

    <item><hlink|<verbatim|goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L45-L58>

    <item><hlink|<verbatim|totality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L60-L72>

    <item><hlink|<verbatim|binSum_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L104-L114>

    <item><hlink|<verbatim|binRoot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L125>

    <item><hlink|<verbatim|Band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L21-L24>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-16-1>

  <\itemize-minus>
    <item><strong|K-III.16.1> <hlink|<verbatim|accumulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70>
    <em|(numbered result)> \V Integrating a nonnegative-type kernel over
    independent random labels on each side yields a nonnegative-type kernel
    again.
  </itemize-minus>

  <label|k-iii-16-2>

  <\itemize-minus>
    <item><strong|K-III.16.2> <hlink|<verbatim|even_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214>
    <em|(numbered result)> \V Even Schatten powers at real parameters are
    bounded by a cost along a strip path of trace interpolation.
  </itemize-minus>

  <label|k-iii-16-3>

  <\itemize-minus>
    <item><strong|K-III.16.3> <hlink|<verbatim|finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>
    <em|(key result)> \V Moving two gap centers by m lattice steps changes
    the trace of the product by at most cost times m over r.
  </itemize-minus>

  <label|k-iii-16-4>

  <\itemize-minus>
    <item><strong|K-III.16.4> <hlink|<verbatim|passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>
    <em|(key result)> \V For nonnegative kernels with column bounds, the
    cyclic integrals of products differing by one center motion differ by at
    most R<ym-middot>\<big-prod\>K<ym-middot>m/r.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.15 Cost accounting for observables
  and the remainder comparison|III-15.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-16.tm>|<hlink|IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit \<rightarrow\>|IV-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.16. Analytic toolkit \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|5>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|iii16-analytic-toolkit|<tuple|?|1>>
    <associate|k-iii-16-1|<tuple|10|11>>
    <associate|k-iii-16-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-16-3|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-iii-16-4|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|8|5>>
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