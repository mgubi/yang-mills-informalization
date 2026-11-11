<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.15 Cost accounting for observables
  and the remainder comparison (notes)|III-15.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-16.tm>|<hlink|IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit (notes)
  \<rightarrow\>|IV-1.tm>>

  <ym-title|III.16. Analytic toolkit \V detailed
  notes><label|iii16-analytic-toolkit--detailed-notes>

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

    <with|par-left|1tab|4.1 Positive kernels and quadrature
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The finite trace inequality
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 From matrices to kernels
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Holomorphy in a strip and Laurent coefficients
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Fourier analysis on tori
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Matrix square root
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Taylor coefficients and analyticity
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Free Maxwell field
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 Labels <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
    The full account of unit III.16: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-16.tm>.
  </quotation>

  <hlink|Unit page|../units/III-16.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> eight folders, none a numbered chapter of its own:
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

  The results fall into three groups.

  <\itemize-minus>
    <item><strong|(A) Traces of kernel products.> A Hölder inequality and
    Cauchy's estimate give a dimension-free Lipschitz bound for moving
    insertions between time slices. Quadrature passes the bound from matrices
    to kernels; IV.1 uses it for equicontinuity.

    <item><strong|(B) Analytic and Fourier estimates.> Holomorphic symbols
    correspond to exponentially summable Laurent coefficients. Fourier and
    Bloch identities diagonalize periodized kernels, and a binomial series
    supplies a matrix square root. Taylor coefficient identities and
    several-variable analyticity support these arguments.

    <item><strong|(C) Maxwell fields and labels.> Radial-gauge potentials
    correspond to closed curvature jets. Restriction to the Maxwell shell
    defines the free contractions and Wick hierarchy. Gauge-invariant
    polynomial labels admit coherent complex bases with real coefficients.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The contraction kernel and Wick hierarchy are definitions whose properties
  are proved here.

  <em|Notation for (A).>

  <\itemize-minus>
    <item>Matrices are complex <math|\<iota\>\<times\>\<iota\>> matrices with
    <math|\<iota\>> finite, and <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>>>
    is the operator norm.

    <item><math|<around|\<\|\|\>|b|\<\|\|\>><rsub|2*q>\<assign\><around*|(|<math-up|tr><around|(|<around|(|b<rsup|\<ast\>>*b|)><rsup|q>|)>|)><rsup|1/<around|(|2*q|)>>>
    is the Schatten <math|2*q>-norm.

    <item>For <math|A\<succeq\>0> with spectral decomposition
    <math|A=<big|sum><rsub|\<lambda\>>\<lambda\>*P<rsub|\<lambda\>>>, put
    <math|A<rsup|z>\<assign\><big|sum><rsub|\<lambda\>\<gtr\>0>e<rsup|z*log
    \<lambda\>>*P<rsub|\<lambda\>>> for <math|z\<in\>\<bbb-C\>>. This is
    entire in <math|z>. It vanishes on <math|ker A> for every <math|z>, so
    <math|A<rsup|0>> is the projection onto the range, and it equals the
    ordinary power <math|A<rsup|m>> for every integer <math|m\<geqslant\>1>.

    <item>Products <math|<big|prod><rsub|k=1><rsup|n>> are ordered by
    <math|k>.
  </itemize-minus>

  <strong|Proposition III.16.1 (integrating a positive-semidefinite kernel).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|X> is a compact metric space with a finite Borel measure
    <math|\<mu\>>, and <math|\<cal-A\>,\<cal-B\>> are sets.

    <item><math|K:\<cal-A\>\<times\>\<cal-A\>\<to\>\<bbb-C\>> is positive
    semidefinite: for every <math|m> and all
    <math|a<rsub|1>,\<ldots\>,a<rsub|m>\<in\>\<cal-A\>> (repetitions
    allowed), the matrix <math|<around|(|K<around|(|a<rsub|i>,a<rsub|j>|)>|)><rsub|i,j>>
    is Hermitian and positive semidefinite.

    <item><math|g:\<cal-B\>\<times\>X\<to\>\<cal-A\>> is such that
    <math|<around|(|x,y|)>\<mapsto\>K<around|(|g<around|(|b,x|)>,g<around|(|c,y|)>|)>>
    is continuous on <math|X\<times\>X> for all <math|b,c\<in\>\<cal-B\>>.
  </itemize-minus>

  <em|Conclusion.> The kernel

  <\equation*>
    <wide|K|~><around|(|b,c|)>=<big|int><rsub|X><space|-0.17em><big|int><rsub|X>K<around*|(|g<around|(|b,x|)>,g<around|(|c,y|)>|)>*<space|0.17em>d*\<mu\><around|(|y|)>*<space|0.17em>d*\<mu\><around|(|x|)>
  </equation*>

  is positive semidefinite on <math|\<cal-B\>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Analysis.NNKernel.accumulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70>;
  the notion of positive semidefinite kernel is
  <hlink|<verbatim|NNKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19>.

  <strong|Proposition III.16.2 (Hölder inequality for traces with complex
  exponents).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|A\<succeq\>0> and <math|b<rsub|1>,\<ldots\>,b<rsub|n>> are
    complex <math|\<iota\>\<times\>\<iota\>> matrices.

    <item><math|q,M\<geqslant\>1> are integers, and
    <math|Z<rsub|A>\<assign\><math-up|tr><space|0.17em>A<rsup|M>\<gtr\>0>.

    <item><math|v\<in\>\<bbb-C\><rsup|n>> satisfies
    <math|<math-up|Re><space|0.17em>v<rsub|k>\<geqslant\>0> for all <math|k>
    and <math|<frac|n|2*q>+<frac|1|M>*<big|sum><rsub|k><math-up|Re><space|0.17em>v<rsub|k>=1>.
  </itemize-minus>

  <em|Conclusion.>

  <\equation*>
    <mid|\|><math-up|tr><big|prod><rsub|k=1><rsup|n>b<rsub|k>*A<rsup|v<rsub|k>><mid|\|>\<leqslant\><big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>\<cdot\>Z<rsub|A><rsup|<space|0.17em>1-n/<around|(|2*q|)>>.
  </equation*>

  For real <math|v<rsub|k>\<gtr\>0>, the corresponding Schatten exponent is
  <math|M/v<rsub|k>> and <math|<around|\<\|\|\>|A<rsup|v<rsub|k>>|\<\|\|\>><rsub|M/v<rsub|k>>=Z<rsub|A><rsup|v<rsub|k>/M>>.
  At <math|v<rsub|k>=0>, the factor is the range projection, whose operator
  norm is <math|1> since <math|Z<rsub|A>\<gtr\>0>. The bound has no dimension
  factor.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Holder.estimation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165>.
  The left side is <hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109>
  and the right side is <hlink|<verbatim|cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112>.

  <strong|Proposition III.16.3 (Lipschitz bound in the gaps, matrices; key
  result).>

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|A\<succeq\>0> and <math|b<rsub|1>,\<ldots\>,b<rsub|n>> are as
    in III.16.2.

    <item><math|q,w\<geqslant\>1> are integers, <math|M=2*q*w>, and
    <math|<math-up|tr><space|0.17em>A<rsup|M>\<gtr\>0>.

    <item><math|Y\<in\>\<bbb-N\><rsup|n>> satisfies
    <math|n*w+<big|sum><rsub|k>Y<rsub|k>=M>.

    <item>For some <math|i\<ne\>j> and some <math|\<ell\>\<in\>\<bbb-N\>>,
    the vector <math|Y<rprime|'>\<in\>\<bbb-N\><rsup|n>> moves <math|\<ell\>>
    units from gap <math|j> to gap <math|i>:
    <math|Y<rprime|'><rsub|i>=Y<rsub|i>+\<ell\>>,
    <math|Y<rprime|'><rsub|j>+\<ell\>=Y<rsub|j>>, and
    <math|Y<rprime|'><rsub|k>=Y<rsub|k>> otherwise.

    <item><math|r\<gtr\>0>, <math|Y<rsub|k>\<gtr\>2*r> for every <math|k>,
    and <math|\<ell\>\<leqslant\>r>.
  </itemize-minus>

  <em|Conclusion.>

  <\equation*>
    <mid|\|><math-up|tr><big|prod><rsub|k>b<rsub|k>*A<rsup|Y<rprime|'><rsub|k>>-<math-up|tr><big|prod><rsub|k>b<rsub|k>*A<rsup|Y<rsub|k>><mid|\|>\<leqslant\><frac|\<ell\>|r>*<space|0.17em><big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q><space|0.17em><around*|(|<math-up|tr><space|0.17em>A<rsup|M>|)><rsup|1-n/<around|(|2*q|)>>.
  </equation*>

  The condition <math|i\<ne\>j> forces <math|n\<geqslant\>2>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.Holder.finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>.

  <strong|Proposition III.16.4 (Lipschitz bound in the gaps, kernels; key
  result).>

  <em|Setting.> <math|X> is a compact metric space with a finite Borel
  measure <math|\<mu\>>. For <math|L\<geqslant\>1> and continuous
  <math|k<rsub|1>,\<ldots\>,k<rsub|L>:X\<times\>X\<to\>\<bbb-C\>>, write

  <\equation*>
    <math-up|Tr><around|(|k<rsub|1>*\<cdots\>*k<rsub|L>|)>=<big|int><rsub|X<rsup|L>><big|prod><rsub|l=1><rsup|L>k<rsub|l>*<around|(|x<rsub|l>,x<rsub|l+1>|)>*<space|0.17em>d*\<mu\><around|(|x<rsub|1>|)>*\<cdots\>*d*\<mu\><around|(|x<rsub|L>|)>,<space|2em>x<rsub|L+1>=x<rsub|1>,
  </equation*>

  and write <math|k<rsup|\<ast\>><around|(|x,y|)>=<wide|k<around|(|y,x|)>|\<bar\>>>
  for the adjoint kernel. Powers inside <math|<math-up|Tr>> denote
  repetitions in the cyclic word.

  <em|Hypotheses.>

  <\itemize-minus>
    <item><math|K> is a continuous positive-semidefinite kernel, and
    <math|B<rsub|1>,\<ldots\>,B<rsub|n>> are continuous kernels.

    <item><math|q,w\<geqslant\>1>, <math|M=2*q*w>, and
    <math|<math-up|Tr><around|(|K<rsup|M>|)>=Z> with <math|Z\<gtr\>0> real.

    <item><math|Y,Y<rprime|'>,\<ell\>,r> are as in III.16.3.

    <item><math|c<rsub|1>,\<ldots\>,c<rsub|n>> are real numbers with
    <math|<mid|\|><math-up|Tr><around*|(|<around|(|B<rsub|k><rsup|\<ast\>>*B<rsub|k>|)><rsup|q>|)><mid|\|><rsup|1/<around|(|2*q|)>>\<leqslant\>c<rsub|k>*<space|0.17em>Z<rsup|1/<around|(|2*q|)>>>
    for every <math|k>.
  </itemize-minus>

  <em|Conclusion.>

  <\equation*>
    <mid|\|><math-up|Tr><around|(|B<rsub|1>*K<rsup|Y<rprime|'><rsub|1>>*\<cdots\>*B<rsub|n>*K<rsup|Y<rprime|'><rsub|n>>|)>-<math-up|Tr><around|(|B<rsub|1>*K<rsup|Y<rsub|1>>*\<cdots\>*B<rsub|n>*K<rsup|Y<rsub|n>>|)><mid|\|>\<leqslant\>Z<around*|(|<big|prod><rsub|k>c<rsub|k>|)><frac|\<ell\>|r>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.TimeKernel.passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>,
  with <hlink|<verbatim|closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76>
  (the cyclic integral), <hlink|<verbatim|along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18>
  (the word with gaps) and <hlink|<verbatim|multiply>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20>
  (the column word <math|<around|(|B<rsup|\<ast\>>*B|)><rsup|q>>).

  <em|Notation for (B).>

  <\itemize-minus>
    <item><math|\<alpha\>> is a finite index set; in the applications it is
    the four axes.

    <item><math|<around|\||x|\|><rsub|1>=<big|sum><rsub|a><around|\||x<rsub|a>|\|>>
    for <math|x\<in\>\<bbb-Z\><rsup|\<alpha\>>>, and
    <math|e<rsup|i*p\<cdot\>x>=exp <around|(|i*<big|sum><rsub|a>p<rsub|a>*x<rsub|a>|)>>
    for <math|p\<in\>\<bbb-C\><rsup|\<alpha\>>>.

    <item><math|S<rsub|\<eta\>>=<around|{|p\<in\>\<bbb-C\><rsup|\<alpha\>>:<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<less\>\<eta\>\<forall\>a|}>>.

    <item>For <math|f:\<bbb-Z\><rsup|\<alpha\>>\<to\>\<bbb-C\>>, the symbol
    is <math|<wide|f|^><around|(|p|)>=<big|sum><rsub|x>f<around|(|x|)>*e<rsup|i*p\<cdot\>x>>.
  </itemize-minus>

  <strong|Proposition III.16.5 (holomorphy in a strip and exponentially
  weighted Laurent coefficients).> Let <math|\<eta\>\<gtr\>0>.

  (a) Let <math|u> be holomorphic on <math|S<rsub|\<eta\>>> and
  <math|2*\<pi\>>-periodic there: <math|u*<around|(|p+2*\<pi\>*x|)>=u<around|(|p|)>>
  for <math|p\<in\>S<rsub|\<eta\>>> and <math|x\<in\>\<bbb-Z\><rsup|\<alpha\>>>.
  For <math|p\<in\>S<rsub|\<eta\>>> let <math|<wide|u|^><rsub|p><around|(|x|)>=<big|int><rsub|<around|[|0,1|]><rsup|\<alpha\>>>u*<around|(|p+2*\<pi\>*\<theta\>|)>*e<rsup|-2*\<pi\>*i*\<theta\>\<cdot\>x>*d*\<theta\>>,
  and put <math|<wide|u|^>=<wide|u|^><rsub|0>>. Then:

  <\itemize-minus>
    <item>the integral <math|<big|int>u*<around|(|p+2*\<pi\>*\<theta\>|)>*<space|0.17em>d*\<theta\>>
    does not depend on <math|p\<in\>S<rsub|\<eta\>>>;

    <item><math|<wide|u|^><rsub|p><around|(|x|)>=e<rsup|i*p\<cdot\>x>*<wide|u|^><around|(|x|)>>.
  </itemize-minus>

  If moreover <math|<around|\||u|\|>\<leqslant\>K> on <math|S<rsub|\<eta\>>>,
  then:

  <\itemize-minus>
    <item><math|<around|\||<wide|u|^><rsub|p><around|(|x|)>|\|>\<leqslant\>K>;

    <item>for <math|H\<geqslant\>0> and <math|b\<gtr\>0> with
    <math|H+b\<less\>\<eta\>>, <math|<big|sum><rsub|x>e<rsup|H<around|\||x|\|><rsub|1>><around|\||<wide|u|^><around|(|x|)>|\|>\<leqslant\>K*<around*|(|2*<around|(|1+b|)>/b|)><rsup|<math-up|card><space|0.17em>\<alpha\>>>;

    <item><math|u<around|(|p|)>=<big|sum><rsub|x><wide|u|^><around|(|x|)>*e<rsup|i*p\<cdot\>x>>
    on <math|S<rsub|\<eta\>>>, with absolute convergence.
  </itemize-minus>

  (b) Let <math|<big|sum><rsub|x>e<rsup|\<eta\><around|\||x|\|><rsub|1>><around|\||f<around|(|x|)>|\|>\<leqslant\>W>.
  Then:

  <\itemize-minus>
    <item><math|<around|\||<wide|f|^><around|(|p|)>|\|>\<leqslant\>W>
    whenever <math|<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<leqslant\>\<eta\>>
    for all <math|a>;

    <item>for <math|0\<less\>\<sigma\>\<less\>\<eta\>>, <math|<wide|f|^>> is
    holomorphic on <math|S<rsub|\<sigma\>>> with
    <math|<around|\<\|\|\>|D<wide|f|^><around|(|p|)>|\<\|\|\>>\<leqslant\>W/<around|(|\<eta\>-\<sigma\>|)>>
    (operator norm for the sup norm on <math|\<bbb-C\><rsup|\<alpha\>>>), so
    <math|<around|\||<wide|f|^><around|(|p|)>-<wide|f|^><around|(|p<rprime|'>|)>|\|>\<leqslant\>W*<around|\<\|\|\>|p-p<rprime|'>|\<\|\|\>><rsub|\<infty\>>/<around|(|\<eta\>-\<sigma\>|)>>
    on <math|S<rsub|\<sigma\>>>;

    <item>for real <math|p>, the symbol of <math|<math-up|Re><space|0.17em>f>
    equals <math|<tfrac|1|2><around*|(|<wide|f|^><around|(|p|)>+<wide|<wide|f|^><around|(|-p|)>|\<bar\>>|)>>.
  </itemize-minus>

  <em|Status:> theorems. <em|Lean:>

  <\itemize-minus>
    <item>for (a): <hlink|<verbatim|market_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99>,
    <hlink|<verbatim|full_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112>,
    <hlink|<verbatim|coat_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L114-L118>,
    <hlink|<verbatim|Vane.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L61-L87>,
    <hlink|<verbatim|Vane.paints>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104>;

    <item>for (b): <hlink|<verbatim|Width.estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L131-L133>,
    <hlink|<verbatim|readDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95>,
    <hlink|<verbatim|readDiff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L97-L101>,
    <hlink|<verbatim|readRealPart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L119-L133>.
  </itemize-minus>

  <strong|Proposition III.16.6 (Fourier and Bloch decomposition on tori).>

  <em|Setting.>

  <\itemize-minus>
    <item>All torus side lengths <math|n,c,f,L> are positive integers, and
    <math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>>. For
    <math|p\<in\>\<Lambda\><rsub|n>>, represented in
    <math|<around|{|0,\<ldots\>,n-1|}><rsup|4>>, let
    <math|k<rsub|p>=2*\<pi\>*p/n>, and let
    <math|F<rsub|n>=<around|(|e<rsup|i*k<rsub|p>\<cdot\>x>|)><rsub|x,p\<in\>\<Lambda\><rsub|n>>>.

    <item><math|\<alpha\>,\<beta\>> are finite index sets, and the real
    kernel <math|R=<around|(|R<rsub|a*b><around|(|x|)>|)>>,
    <math|x\<in\>\<bbb-Z\><rsup|4>>, satisfies
    <math|<big|sum><rsub|x><around|\||R<rsub|a*b><around|(|x|)>|\|>\<less\>\<infty\>>
    for every <math|a\<in\>\<alpha\>>, <math|b\<in\>\<beta\>>.

    <item>Its periodization on <math|\<Lambda\><rsub|n>> is
    <math|R<rsub|n><around*|(|<around|(|y,a|)>,<around|(|y<rprime|'>,b|)>|)>=<big|sum><rsub|x:<space|0.17em>y+x\<equiv\>y<rprime|'>>R<rsub|a*b><around|(|x|)>>,
    and its symbol is <math|<wide|R|^><around|(|k|)><rsub|a*b>=<big|sum><rsub|x>R<rsub|a*b><around|(|x|)>*e<rsup|i*k\<cdot\>x>>.
  </itemize-minus>

  (a) <math|F<rsub|n>*F<rsub|n><rsup|\<ast\>>=F<rsub|n><rsup|\<ast\>>*F<rsub|n>=n<rsup|4>*I>,
  and <math|R<rsub|n>*<around|(|F<rsub|n>\<otimes\>I<rsub|\<beta\>>|)>=<around|(|F<rsub|n>\<otimes\>I<rsub|\<alpha\>>|)><space|0.17em><math-up|diag><rsub|p\<in\>\<Lambda\><rsub|n>><wide|R|^><around|(|k<rsub|p>|)>>.
  This holds for every <math|p>, including <math|p=0>.

  (b) Let <math|f=c*L>. For <math|p\<in\>\<Lambda\><rsub|c>> and
  <math|l\<in\>\<Lambda\><rsub|L>> let <math|k<rsub|p,l>=2*\<pi\>*<around|(|p+c*l|)>/f>.
  These are the <math|L<rsup|4>> fine momenta <math|k> with
  <math|L*k\<equiv\>2*\<pi\>*p/c> modulo <math|2*\<pi\>>, i.e. the aliases of
  the coarse momentum <math|2*\<pi\>*p/c>. The fine Fourier matrix
  <math|\<Phi\>=<around|(|e<rsup|i*k<rsub|p,l>\<cdot\>y>|)><rsub|y\<in\>\<Lambda\><rsub|f>,<around|(|p,l|)>>>
  satisfies:

  <\itemize-minus>
    <item><math|\<Phi\>*\<Phi\><rsup|\<ast\>>=f<rsup|4>*I>;

    <item><math|R<rsub|f>*<around|(|\<Phi\>\<otimes\>I<rsub|\<beta\>>|)>=<around|(|\<Phi\>\<otimes\>I<rsub|\<alpha\>>|)><space|0.17em><math-up|diag><rsub|p\<in\>\<Lambda\><rsub|c>><space|0.17em><math-up|diag><rsub|l\<in\>\<Lambda\><rsub|L>><wide|R|^><around|(|k<rsub|p,l>|)>>.
  </itemize-minus>

  (c) For every <math|p\<in\>\<bbb-C\><rsup|4>>, the alias block
  <math|E<rsub|L><around|(|p|)>=<around|(|e<rsup|i*<around|(|p+2*\<pi\>*l|)>\<cdot\>x/L>|)><rsub|x,l\<in\>\<Lambda\><rsub|L>>>
  satisfies <math|E<rsub|L><around|(|<wide|p|\<bar\>>|)><rsup|\<ast\>>*E<rsub|L><around|(|p|)>=L<rsup|4>*I>.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L117-L119>,
  <hlink|<verbatim|coGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L121-L127>,
  <hlink|<verbatim|circulant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104>,
  <hlink|<verbatim|readingsGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75>,
  <hlink|<verbatim|aligns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129>,
  <hlink|<verbatim|straightens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53>.

  <strong|Proposition III.16.7 (analytic square root near a spectral band).>
  Let <math|m\<gtr\>0> and let the finite matrix index set be nonempty. For
  complex matrices <math|X> with <math|<around|\<\|\|\>|X/m-1|\<\|\|\>>\<less\>1>,
  put <math|\<Phi\><rsub|m><around|(|X|)>\<assign\><sqrt|m>*<big|sum><rsub|k\<geqslant\>0><binom|1/2|k><around|(|X/m-1|)><rsup|k>>.

  <\itemize-minus>
    <item><math|\<Phi\><rsub|m>> is holomorphic on this ball.

    <item><math|\<Phi\><rsub|m>> is bounded on each smaller ball
    <math|<around|\<\|\|\>|X/m-1|\<\|\|\>>\<leqslant\>r\<less\>1>.

    <item><math|\<Phi\><rsub|m>> commutes with entrywise complex conjugation.

    <item>If <math|X> is Hermitian and <math|v\<leqslant\>X\<leqslant\>m> as
    quadratic forms, with <math|v\<gtr\>0>, then
    <math|\<Phi\><rsub|m><around|(|X|)>> is Hermitian,
    <math|\<Phi\><rsub|m><around|(|X|)><rsup|2>=X>, and
    <math|<sqrt|v>\<leqslant\>\<Phi\><rsub|m><around|(|X|)>\<leqslant\><sqrt|m>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|binRoot_on_band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198>,
  <hlink|<verbatim|binRoot_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L127-L130>,
  <hlink|<verbatim|binSum_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L116-L123>,
  <hlink|<verbatim|binRoot_conj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L138-L143>.

  <em|Notation for (C).>

  <\itemize-minus>
    <item>Fix a compact matrix gauge group <math|G>. Its colour space
    <math|\<frak-g\>> is the real Lie algebra in coordinates orthonormal for
    <math|-<around|(|<math-up|dim><space|0.17em>\<rho\>|)><rsup|-1><math-up|Re><space|0.17em><math-up|tr><around|(|X*Y|)>>,
    where <math|\<rho\>> is the fixed defining representation.

    <item>A homogeneous polynomial on spacetime is identified with its
    symmetric multilinear Taylor coefficient.

    <item>For <math|j\<geqslant\>0>:

    <\itemize-minus>
      <item><math|\<cal-A\><rsub|j>> is the space of <math|4>-tuples
      <math|<around|(|A<rsub|l>|)>> of <math|\<frak-g\>>-valued homogeneous
      polynomials of degree <math|j+1> on <math|\<bbb-R\><rsup|4>> with
      <math|<big|sum><rsub|l>x<rsub|l>*A<rsub|l><around|(|x|)>=0> (radial, or
      Fock\USchwinger, gauge);

      <item><math|\<cal-C\><rsub|j>> is the space of <math|\<frak-g\>>-valued
      homogeneous polynomials <math|F<rsub|i*l>> of degree <math|j> with
      <math|F<rsub|i*l>=-F<rsub|l*i>> and
      <math|\<partial\><rsub|a>*F<rsub|b*c>+\<partial\><rsub|b>*F<rsub|c*a>+\<partial\><rsub|c>*F<rsub|a*b>=0>;

      <item><math|\<cal-S\><rsub|j>\<subset\>\<cal-C\><rsub|j>>, the Maxwell
      shell, adds the condition <math|<big|sum><rsub|a>\<partial\><rsub|a>*F<rsub|a*b>=0>.
    </itemize-minus>
  </itemize-minus>

  <strong|Proposition III.16.8 (free Maxwell field).>

  (a) <em|(Poincaré lemma in radial gauge.)> The curl
  <math|A\<mapsto\>F<rsub|i*l>=\<partial\><rsub|i>*A<rsub|l>-\<partial\><rsub|l>*A<rsub|i>>
  is a linear isomorphism <math|\<cal-A\><rsub|j>\<to\>\<cal-C\><rsub|j>>.
  Its inverse is <math|A<rsub|i><around|(|x|)>=<around|(|j+2|)><rsup|-1>*<big|sum><rsub|k>x<rsub|k>*F<rsub|k*i><around|(|x|)>>.

  (b) <em|(Taylor coefficients of solutions.)> Let
  <math|U\<subset\>\<bbb-R\><rsup|4>> be open, and let the
  <math|\<frak-g\>>-valued field <math|f=<around|(|f<rsub|a*b>|)>> be smooth
  and antisymmetric on <math|U> and satisfy the Bianchi and Maxwell equations
  there. Then for every <math|x\<in\>U> and <math|j\<geqslant\>0>, the
  <math|j>-th Taylor coefficient of <math|f> at <math|x> lies in
  <math|\<cal-S\><rsub|j>>.

  (c) <em|(Free two-point function.)> The function
  <math|G<rsub|0><around|(|x|)>=1/<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)>>
  is harmonic on <math|\<bbb-R\><rsup|4>\<setminus\><around|{|0|}>>. Put

  <\equation*>
    C<rsub|a*b,k*m>=\<partial\><rsub|a>*\<psi\><rsub|b,k*m>-\<partial\><rsub|b>*\<psi\><rsub|a,k*m>,<space|2em>\<psi\><rsub|b,k*m>=\<delta\><rsub|k*b>*\<partial\><rsub|m>*G<rsub|0>-\<delta\><rsub|m*b>*\<partial\><rsub|k>*G<rsub|0>.
  </equation*>

  This is the field-strength two-point function
  <math|<around|\<langle\>|F<rsub|a*b><around|(|x|)>*F<rsub|k*m><around|(|0|)>|\<rangle\>>>
  of one colour component of the free field in Feynman gauge. Then:

  <\itemize-minus>
    <item>for fixed <math|<around|(|k,m|)>>,
    <math|<around|(|a,b|)>\<mapsto\>C<rsub|a*b,k*m>> is smooth and
    antisymmetric on <math|x\<ne\>0> and solves the Bianchi and Maxwell
    equations there;

    <item>the same holds in <math|<around|(|k,m|)>> for fixed
    <math|<around|(|a,b|)>>;

    <item><math|C<rsub|a*b,k*m><around|(|x|)>=C<rsub|k*m,a*b><around|(|x|)>=C<rsub|a*b,k*m>*<around|(|-x|)>>.
  </itemize-minus>

  (d) <em|(One contraction between jets.)> Let <math|j,l\<geqslant\>0>, and
  let <math|p> and <math|q> be real linear forms on <math|\<cal-S\><rsub|j>>
  and <math|\<cal-S\><rsub|l>> (probes). Write
  <math|c<rsub|j>*h<around|(|z|)>=D<rsup|j>*h<around|(|z|)>/j!>, and let
  <math|<around|(|e<rsub|c>|)>> be the orthonormal colour basis. Choose
  linear extensions <math|P,Q> of <math|p,q> to the unrestricted two-index
  multilinear tensors. Define the colour-valued field

  <\equation*>
    R<rsub|P,k*m><around|(|z|)>=<big|sum><rsub|c>P<around*|(|<around|(|c<rsub|j>*<around|(|C<rsub|a*b,k*m>*e<rsub|c>|)><around|(|z|)>|)><rsub|a,b>|)>*e<rsub|c>,
  </equation*>

  and, for <math|z\<ne\>0>, put

  <\equation*>
    \<kappa\><around|(|p,q|)><around|(|z|)>=<around|(|-1|)><rsup|l>*Q<around*|(|<around|(|c<rsub|l>*R<rsub|P,k*m><around|(|z|)>|)><rsub|k,m>|)>.
  </equation*>

  This definition is independent of both extensions. It is bilinear in
  <math|<around|(|p,q|)>>, smooth for <math|z\<ne\>0>, and satisfies
  <math|\<kappa\><around|(|p,q|)><around|(|z|)>=\<kappa\><around|(|q,p|)>*<around|(|-z|)>>.

  For the coordinate probes <math|p<around|(|F|)>=F<rsub|a*b><around|[|u|]><rsub|c>>
  and <math|q<around|(|F|)>=F<rsub|k*m><around|[|v|]><rsub|d>>, with
  <math|u\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|j>> and
  <math|v\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|l>>,

  <\equation*>
    \<kappa\><around|(|p,q|)><around|(|z|)>=\<delta\><rsub|c*d>*<around|(|-1|)><rsup|l>*c<rsub|l>*<around*|(|t\<mapsto\>c<rsub|j>*C<rsub|a*b,k*m><around|(|t|)><around|[|u|]>|)><around|(|z|)><around|[|v|]>.
  </equation*>

  Equivalently, at <math|z=x-y> this is the mixed Taylor coefficient at
  <math|<around|(|x,y|)>> of <math|\<delta\><rsub|c*d>*C<rsub|a*b,k*m>*<around|(|x-y|)>>.
  Thus <math|\<kappa\>> is the free covariance of the corresponding jet
  observables, with Taylor coefficients used at both endpoints.

  <em|Status:> theorems in (a)\U(c); definition and theorems in (d).
  <em|Lean:>

  <\itemize-minus>
    <item>(a): <hlink|<verbatim|potential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L218-L224>,
    <hlink|<verbatim|closedCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128>,
    <hlink|<verbatim|curl_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195>,
    <hlink|<verbatim|potential_recover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214>;

    <item>(b): <hlink|<verbatim|WaveOn.jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122>;

    <item>(c): <hlink|<verbatim|harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77>,
    <hlink|<verbatim|Bare.equation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98>,
    <hlink|<verbatim|Bare.equation_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L111-L123>,
    <hlink|<verbatim|Bare.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L104-L109>,
    <hlink|<verbatim|Bare.even>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L100-L102>;

    <item>(d): <hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>,
    <hlink|<verbatim|descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159>,
    <hlink|<verbatim|pairing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L24-L47>,
    <hlink|<verbatim|exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169>,
    <hlink|<verbatim|raw_mixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L72-L87>,
    <hlink|<verbatim|reads_mixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L90-L105>.
  </itemize-minus>

  <strong|Proposition III.16.9 (field labels).>

  <em|Setting.> Let <math|d\<geqslant\>0> be an integer.

  <\itemize-minus>
    <item>Fix real bases of the spaces <math|\<cal-A\><rsub|j>>.

    <item><math|<math-up|Pol>> is the algebra of complex polynomials in the
    resulting coordinates of a jet sequence
    <math|<around|(|A<rsub|j>|)><rsub|j\<geqslant\>0>>.

    <item>A coordinate from <math|\<cal-A\><rsub|j>> has weight <math|j+2>,
    and a monomial has the sum of the weights of its factors.

    <item><math|<math-up|Label><rsub|d>\<subset\><math-up|Pol>> consists of
    the polynomials of weight <math|\<leqslant\>d> that are invariant under
    the simultaneous adjoint action of <math|G> on all <math|A<rsub|j>>.
    Invariance is imposed on the whole polynomial.
  </itemize-minus>

  (a) A polynomial that vanishes on all real jet sequences is zero.

  (b) There are finitely many monomials of weight <math|\<leqslant\>d>, so
  <math|<math-up|Label><rsub|d>> is finite-dimensional.

  (c) Every element of <math|<math-up|Label><rsub|d>> is the sum of its
  bihomogeneous components (weight, polynomial degree), both indices
  <math|\<leqslant\>d>.

  <\itemize-minus>
    <item>Each component is again a label.

    <item>Taking components commutes with complex conjugation of coefficients
    and with the action of <math|O<around|(|4|)>> on jets.

    <item>For <math|s\<in\>O<around|(|4|)>>, set
    <math|<around|(|T<rsub|s>*A<rsub|j>|)><rsub|i><around|(|x|)>=<big|sum><rsub|k>s<rsub|i*k><around|(|A<rsub|j>|)><rsub|k>*<around|(|s<rsup|-1>*x|)>>.
    The induced label action is <math|<around|(|s\<cdot\>P|)><around|(|A|)>=P*<around|(|T<rsub|s<rsup|-1>>*A|)>>;
    it satisfies <math|<around|(|s*t|)>\<cdot\>P=s\<cdot\><around|(|t\<cdot\>P|)>>.
  </itemize-minus>

  (d) For every integer <math|d\<geqslant\>0>, <math|<math-up|Label><rsub|d>>
  has a complex basis (a frame) <math|e<rsub|0>=1,e<rsub|1>,\<ldots\>,e<rsub|N<rsub|d>>>
  of bihomogeneous labels with real coefficients. These bases can be chosen
  simultaneously so that, under the natural inclusion, every basis vector at
  level <math|d> occurs at level <math|d+1>. No ordering beyond
  <math|e<rsub|0>=1> is prescribed.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|eval_ext>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49>,
  <hlink|<verbatim|cap_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94>,
  <hlink|<verbatim|labels_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L114-L117>,
  <hlink|<verbatim|decompose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105>,
  <hlink|<verbatim|gradePart_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L66-L71>,
  <hlink|<verbatim|gradePart_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L73-L74>,
  <hlink|<verbatim|rotation_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88>,
  <hlink|<verbatim|Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57>,
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>.

  <strong|Proposition III.16.10 (free Wick hierarchy on labels).>

  <em|Definitions.> Let <math|n\<geqslant\>0>, let
  <math|d<rsub|1>,\<ldots\>,d<rsub|n>\<geqslant\>0> be integers, and let
  <math|x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>\<bbb-R\><rsup|4>> be pairwise
  distinct.

  <\itemize-minus>
    <item>For Wick monomials in the coordinates of shell jets, the <em|free
    moment> is the sum, over all pairings of the factor occurrences in which
    partners sit at different points, of the products of the kernels
    <math|\<kappa\><around|(|\<cdummy\>,\<cdummy\>|)>*<around|(|x<rsub|i>-x<rsub|i<rprime|'>>|)>>
    of the paired coordinate forms. It is extended multilinearly to Wick
    polynomials.

    <item>The <em|free correlation> of labels
    <math|P<rsub|k>\<in\><math-up|Label><rsub|d<rsub|k>>> is the moment of
    their restrictions to on-shell jets, <math|A<rsub|j>=<math-up|curl><rsup|-1>F<rsub|j>>
    with <math|F<rsub|j>\<in\>\<cal-S\><rsub|j>>.
  </itemize-minus>

  <em|Properties.>

  <\itemize-minus>
    <item>The free correlation is smooth on the configuration space.

    <item>It vanishes if one label vanishes on all on-shell jets, i.e. lies
    in the equation ideal.

    <item>It is invariant under permuting the points together with the
    labels. More generally, embedding the index set into a larger
    configuration of distinct points preserves the correlation when each
    added point carries the label <math|1>.

    <item>The moment with every insertion equal to <math|1> is <math|1>,
    including at <math|n=0>. For constant insertions
    <math|a<rsub|1>,\<ldots\>,a<rsub|n>\<in\>\<bbb-C\>>, it is
    <math|<big|prod><rsub|i>a<rsub|i>>.
  </itemize-minus>

  <em|Status:> definitions and theorems. <em|Lean:>
  <hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>,
  <hlink|<verbatim|Wick.correlation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147>,
  <hlink|<verbatim|Wick.smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L152-L154>,
  <hlink|<verbatim|Wick.kills_equation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L149-L150>,
  <hlink|<verbatim|ideal_meaning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79>,
  <hlink|<verbatim|Wick.exchangeSites>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L112-L124>,
  <hlink|<verbatim|Wick.monExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L103-L110>,
  <hlink|<verbatim|Wick.adjoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L126-L144>,
  <hlink|<verbatim|Wick.constants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L146-L153>.

  Other units also quote, by name, the general lemmas of Ÿ4: the algebra of
  positive kernels (4.1), quadrature (4.2), the calculus of Taylor
  coefficients (4.19), and analyticity in several variables and weak
  analyticity (4.20).

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|I.1 (lattice, symmetries, gauge groups).>

    <\itemize-minus>
      <item>The torus <math|\<Lambda\><rsub|n>>, its cover
      <math|\<bbb-Z\><rsup|4>>, and the coarse/fine subdivision maps:
      <hlink|<verbatim|Lattice.Site>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19>,
      <hlink|<verbatim|Lattice.wrap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L35-L38>,
      <hlink|<verbatim|Lattice.Ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22-L24>.

      <item><math|\<bbb-R\><rsup|4>> with its axes, and
      <math|O<around|(|4|)>>: <hlink|<verbatim|E4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24>,
      <hlink|<verbatim|Ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20>.

      <item>The gauge-group data, namely the colour space and the adjoint
      action: <hlink|<verbatim|Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23-L26>,
      <hlink|<verbatim|Gauge.Color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43>,
      <hlink|<verbatim|Gauge.adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114-L117>.

      <item>The configuration space of distinct points:
      <hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>.

      <item>All of these are definitions.
    </itemize-minus>

    <item><strong|III.1:> the summability condition "nonnegative, summable,
    sum <math|\<leqslant\>W>", <hlink|<verbatim|RG.SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>,
    used to define the weighted norms of (B). It is a definition.

    <item><strong|Mathlib:>

    <\itemize-minus>
      <item>Hadamard's three-lines theorem;

      <item>Cauchy's estimate for the derivative on a circle, and the mean
      value inequality on convex sets;

      <item>the spectral theorem for Hermitian matrices;

      <item>the Schur product theorem;

      <item>dominated convergence;

      <item>Cauchy's theorem for rectangles and the Cauchy integral formula;

      <item>multivariable Fourier inversion for continuous torus functions
      with absolutely summable Fourier coefficients;

      <item>the binomial series in Banach algebras;

      <item>symmetry of second derivatives;

      <item>the identity theorem for polynomials on infinite sets.
    </itemize-minus>

    <item><strong|Standard references:> B. Simon, <em|Trace Ideals and Their
    Applications>, for Schatten inequalities; Berg\UChristensen\URessel,
    <em|Harmonic Analysis on Semigroups>, for positive kernels; Katznelson,
    <em|An Introduction to Harmonic Analysis>, for torus Fourier series;
    Reed\USimon, <em|Methods of Modern Mathematical Physics>, vol. I, for
    operator functional calculus; Hörmander, <em|An Introduction to Complex
    Analysis in Several Variables>, and Rudin, <em|Functional Analysis>, for
    holomorphy; Glimm\UJaffe, <em|Quantum Physics>, for Wick products and
    reflection positivity.

    <item><strong|Imported constants and assumptions.> All analytic
    assumptions appear in the statements above. The numerical factors are
    explicit. The parameters <math|q,w,M,r> in (A), the strip widths and
    torus sizes in (B), and the label cutoff <math|d> are chosen in the
    applications.
  </itemize-minus>

  <strong|Uses in other units.> The principal applications are listed below;
  the scope of the longer dependency lists is noted in Ÿ7.

  <\itemize-minus>
    <item><strong|III.16.1\UIII.16.4:> the external applications of this
    trace argument are in IV.1.

    <\itemize-minus>
      <item>III.16.1 gives the positivity of the Wilson transfer kernel:
      <hlink|<verbatim|Slice.step_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91>,
      Lemma IV.1.f.

      <item>III.16.4 gives the time-direction Lipschitz bound:
      <hlink|<verbatim|Slice.Time.powering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102>,
      Lemmas IV.1.e\Uf.

      <item>Lemma 4.1 (the algebra of positive kernels) is also used in
      III.2, III.4, III.6, III.10, III.11, III.13 and VIII.1.
    </itemize-minus>

    <item><strong|III.16.5:> III.7, III.3, III.6, III.2, III.4, III.9,
    III.10, III.12\UIII.15, VII.1, VII.2.

    <item><strong|III.16.6:> III.7, III.3, III.4, III.2, III.6, III.14,
    III.10, III.13, III.9, III.11, III.1, III.5, VII.1, VII.2.

    <item><strong|III.16.7:> III.6, in the square-root theorem described in
    Ÿ3.

    <item><strong|III.16.8 and III.16.10:> VI.2, VII.1, VII.3, VI.1, III.11,
    II.1, VII.2, IV.1.

    <item><strong|III.16.9:> II.1, III.11, VII.2, III.12, III.13, III.6,
    VI.2, VI.1, III.10, III.2, VII.3, VII.1, VII.4, VIII.1.

    <item><strong|Lemma 4.20:> III.6 and V.2 use
    <hlink|<verbatim|finiteD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238>;
    III.13, V.1 and V.2 use <hlink|<verbatim|lift_weak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50>.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  <strong|(A) Moving an insertion.> Transfer-kernel correlations have the
  form <math|<math-up|Tr><around|(|B<rsub|1>*K<rsup|Y<rsub|1>>*\<cdots\>*B<rsub|n>*K<rsup|Y<rsub|n>>|)>/Z>.
  Moving one insertion transfers <math|\<ell\>> units between two gaps. For
  finite matrices, continue the exponents along
  <math|Y+z*<around|(|e<rsub|i>-e<rsub|j>|)>>. The trace is entire, and the
  Hölder balance is unchanged. III.16.2 bounds it by a constant <math|C> on
  <math|<around|\||z|\|>\<leqslant\>2*r>; Cauchy's estimate gives
  <math|<around|\||F<rprime|'>|\|>\<leqslant\>C/r> on
  <math|<around|\||z|\|>\<leqslant\>r>, hence a change of at most
  <math|C*\<ell\>/r>. The dimension-free bound passes to kernels by sampling
  every factor and adjoint with the same partition. In IV.1, for nonnegative
  Wilson coupling, positivity follows from III.16.1 and the positive-kernel
  algebra; <math|Z> is the partition function. The condition <math|M=2*q*w>
  makes the reflected column <math|<around|(|B<rsup|\<ast\>>*B|)><rsup|q>>
  fill the time period, so chessboard estimates bound its normalized trace.
  The normalized difference is at most <math|<around|(|<big|prod><rsub|k>c<rsub|k>|)>*\<ell\>/r>;
  uniformity in volume and spacing requires corresponding control of
  <math|c<rsub|k>> and <math|\<ell\>/r>.

  <strong|(B) Kernels and symbols.> Exponentially weighted summability gives
  bounded holomorphic symbols. Moving the Fourier integration torus in the
  imaginary directions gives the converse, with a narrower exponential
  weight. Discrete Fourier identities then transfer symbol identities to
  every finite torus, including the zero momentum. For the square-root
  construction in III.6, take a real square matrix kernel <math|Q> with
  <math|<big|sum><rsub|x>e<rsup|\<eta\><around|\||x|\|><rsub|1>><around|\||Q<rsub|a*b><around|(|x|)>|\|>\<leqslant\>A>
  for every entry, <math|\<eta\>\<gtr\>0>, and Hermitian real-momentum
  symbols satisfying <math|v*I\<leqslant\><wide|Q|^><around|(|p|)>\<leqslant\>A*I>,
  where <math|0\<less\>v\<leqslant\>A>. The derivative bound, together with
  the norm conversion from entrywise bounds to the matrix operator norm,
  keeps <math|<wide|Q|^>/A-I> in a ball of radius less than <math|1> on a
  thinner strip. III.16.7 gives a bounded holomorphic root there. Its Laurent
  coefficients have an exponential bound; taking their real parts preserves
  the positive square-root symbol at real momenta because
  <math|<wide|Q|^><around|(|-p|)>=<wide|<wide|Q|^><around|(|p|)>|\<bar\>>>.
  Fourier diagonalization yields <math|P<rsub|n><rsup|<math-ss|T>>*P<rsub|n>=Q<rsub|n>>
  with <math|P<rsub|n>> symmetric on every torus. The parameter choices and
  assembly belong to III.6.

  <strong|(C) Free fields and labels.> For homogeneous closed curvature jets,
  the radial-gauge formula <math|A<rsub|i>=<around|(|j+2|)><rsup|-1>*<big|sum><rsub|k>x<rsub|k>*F<rsub|k*i>>
  inverts the curl. Imposing the Maxwell equation gives the shell. The
  explicit two-curl kernel derived from <math|G<rsub|0><around|(|x|)>=<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)><rsup|-1>>
  solves both equations in each leg away from the origin, so its Taylor
  coefficients define pairings on shell probes. Wick sums of these pairings
  give the free hierarchy on polynomial labels. Bihomogeneous decomposition
  and conjugation provide coherent complex bases with real coefficients. This
  hierarchy is the comparison object for short-distance limits, stress-tensor
  identities, the trace anomaly and nontriviality in VI.1\UVI.2 and
  VII.1\UVII.3; its kernels are used at distinct points.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Positive kernels and quadrature><label|41-positive-kernels-and-quadrature>

  <strong|Lemma 4.1 (algebra of positive-semidefinite kernels).>

  <em|Statement.>

  <\itemize-minus>
    <item>Generators: the class contains the Gram kernels
    <math|<wide|f<around|(|x|)>|\<bar\>>f<around|(|y|)>> and the constant
    <math|1>.

    <item>Closure: it is closed under multiplication by constants
    <math|c\<geqslant\>0>, finite sums, pointwise (Schur) products,
    nonnegative integer powers, pullbacks
    <math|K<around|(|\<varphi\><around|(|x|)>,\<varphi\><around|(|y|)>|)>>,
    pointwise limits, and <math|K\<mapsto\>e<rsup|K>>.

    <item>Criterion: a kernel is positive semidefinite if and only if it is
    Hermitian and <math|<big|sum><rsub|i,j><wide|c|\<bar\>><rsub|i>*K<around|(|x<rsub|i>,x<rsub|j>|)>*c<rsub|j>\<geqslant\>0>
    for all finite families.

    <item>Integrated form: on a compact metric space with a finite Borel
    measure, for continuous positive-semidefinite <math|K> and bounded
    measurable <math|f>, <math|<big|iint>K<around|(|x,y|)><wide|f<around|(|x|)>|\<bar\>>f<around|(|y|)>*<space|0.17em>d*\<mu\>*<space|0.17em>d*\<mu\>\<geqslant\>0>.
  </itemize-minus>

  <em|Sketch.>

  <\itemize-minus>
    <item>Products follow from the Schur product theorem.

    <item><math|e<rsup|K>> is the limit of the partial sums
    <math|<big|sum><rsub|m\<less\>N>K<rsup|m>/m!>.

    <item>Limits are handled by the quadratic-form criterion. Hermitian
    symmetry passes to the limit through the <math|2\<times\>2> Gram
    matrices.

    <item>For the integrated form, replace <math|K> by its values at the tags
    of a fine partition (Lemma 4.2). The integral becomes
    <math|<big|sum><rsub|i,j><wide|<big|int><rsub|<text|cell
    >i>f|\<bar\>><space|0.17em>K<around|(|x<rsub|i>,x<rsub|j>|)>*<big|int><rsub|<text|cell
    >j>f\<geqslant\>0>, and dominated convergence finishes the proof.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L24-L28>,
  <hlink|<verbatim|scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L33-L34>,
  <hlink|<verbatim|plus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L35-L36>,
  <hlink|<verbatim|times>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L37-L38>,
  <hlink|<verbatim|pow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L49-L52>,
  <hlink|<verbatim|titled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L54-L55>,
  <hlink|<verbatim|criterion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L69-L75>,
  <hlink|<verbatim|closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L80-L88>,
  <hlink|<verbatim|exp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L90-L99>,
  <hlink|<verbatim|integrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/MomentPD.lean#L19-L62>.

  <strong|Lemma 4.2 (quadrature).>

  <em|Statement.> Let <math|X> be a compact metric space with a finite Borel
  measure <math|\<mu\>>.

  <\itemize-minus>
    <item>For each <math|k\<geqslant\>0> there is a finite measurable
    partition of <math|X> with assigned tags such that every point lies
    within <math|1/<around|(|k+1|)>> of its cell's tag. Empty cells and zero
    masses are allowed; a tag need not lie in its cell.

    <item>Let <math|m<rsub|i>=\<mu\><around|(|<text|cell >i|)>>. For every
    finite index set <math|I> and every continuous <math|F:X<rsup|I>\<to\>E>
    with <math|E> a Banach space, the Riemann sums
    <math|<big|sum><rsub|i\<in\><text|cells><rsup|I>><big|prod><rsub|j\<in\>I>m<rsub|i<rsub|j>>*<space|0.17em>F<around*|(|<around|(|x<rsub|i<rsub|j>>|)><rsub|j\<in\>I>|)>>
    converge to <math|<big|int>F*<space|0.17em>d*\<mu\><rsup|\<otimes\>I>>.
  </itemize-minus>

  <em|Sketch.>

  <\itemize-minus>
    <item>The partitions: cover <math|X> by finitely many balls of radius
    <math|1/<around|(|k+1|)>> and disjointify.

    <item>The convergence: the Riemann sum equals
    <math|<big|int>F\<circ\>\<pi\><rsub|k>*<space|0.17em>d*\<mu\><rsup|\<otimes\>I>>,
    where <math|\<pi\><rsub|k>> sends every point to the tag of its cell.
    Since <math|\<pi\><rsub|k>\<to\><math-up|id>> pointwise and <math|F> is
    bounded, dominated convergence applies.

    <item>The statement concerns each fixed <math|F> and finite product; it
    asserts no uniform rate over families of integrands.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Quad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26>,
  <hlink|<verbatim|refine_>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L40-L63>,
  <hlink|<verbatim|shrink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L65-L66>,
  <hlink|<verbatim|counting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L95-L114>,
  <hlink|<verbatim|approximation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L119-L133>,
  <hlink|<verbatim|approx>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L19-L38>.

  <strong|Lemma 4.3 (proof of III.16.1).>

  <em|Sketch.>

  <\itemize-minus>
    <item>For a partition, define <math|G<rsub|Q><around|(|b,c|)>=<big|sum><rsub|i,j>m<rsub|i>*m<rsub|j>*K<around|(|g<around|(|b,x<rsub|i>|)>,g<around|(|c,x<rsub|j>|)>|)>>.

    <item><math|G<rsub|Q>> is Hermitian. For each finite family of elements
    <math|b\<in\>\<cal-B\>> and coefficients <math|r<rsub|b>>, its quadratic
    form <math|<big|sum><rsub|b,c><wide|r|\<bar\>><rsub|b>*G<rsub|Q><around|(|b,c|)>*r<rsub|c>>
    is the quadratic form of <math|K> at the points
    <math|g<around|(|b,x<rsub|i>|)>>, indexed by <math|<around|(|b,i|)>>,
    with coefficients <math|r<rsub|b>*m<rsub|i>>. Hence <math|G<rsub|Q>> is
    positive semidefinite.

    <item>By Lemma 4.2 in two variables, <math|G<rsub|Q>\<to\><wide|K|~>>
    pointwise.

    <item>Positive-semidefinite kernels are closed under pointwise limits
    (Lemma 4.1).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|accumulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70>.

  <subsection|4.2 The finite trace inequality><label|42-the-finite-trace-inequality>

  <strong|Lemma 4.4 (three-lines Hölder lemma).>

  <em|Definition.> A <em|strip path> is an entire map
  <math|V:\<bbb-C\>\<to\>M<rsub|\<iota\>><around|(|\<bbb-C\>|)>> with:

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|V<around|(|t|)>|\<\|\|\>>\<leqslant\>1> for
    <math|0\<leqslant\><math-up|Re><space|0.17em>t\<leqslant\>1>;

    <item>trace norm <math|sup<rsub|<around|\<\|\|\>|C|\<\|\|\>>\<leqslant\>1><around|\||<math-up|tr><space|0.17em>V<around|(|t|)>*C|\|>\<leqslant\>1>
    for <math|<math-up|Re><space|0.17em>t=1>.
  </itemize-minus>

  <em|Statement.> If <math|V<rsub|1>,\<ldots\>,V<rsub|n>> are strip paths and
  <math|h<rsub|k>\<in\>\<bbb-C\>> satisfy
  <math|<math-up|Re><space|0.17em>h<rsub|k>\<in\><around|[|0,1|]>> and
  <math|<big|sum><rsub|k><math-up|Re><space|0.17em>h<rsub|k>=1>, then
  <math|<around|\||<math-up|tr><space|0.17em>V<rsub|1><around|(|h<rsub|1>|)>*\<cdots\>*V<rsub|n><around|(|h<rsub|n>|)>|\|>\<leqslant\>1>.

  <em|Sketch.> Prove <math|<around|\||<math-up|tr><around|(|c*<space|0.17em>V<rsub|1><around|(|h<rsub|1>|)>*\<cdots\>*V<rsub|n><around|(|h<rsub|n>|)>|)>|\|>\<leqslant\>1>
  for every contraction <math|c>, by induction on <math|n>. The case
  <math|n=0> is excluded by the balance condition. In the induction step let
  <math|t=<math-up|Re><space|0.17em>h<rsub|1>>.

  <\itemize-minus>
    <item><em|Case <math|t=1>.> The other factors are contractions. Apply the
    trace-norm bound of <math|V<rsub|1>> after a cyclic permutation.

    <item><em|Case <math|t\<less\>1>.> Put
    <math|E<around|(|x|)>=<math-up|tr><around*|(|c*<space|0.17em>V<rsub|1>*<around|(|x+i<space|0.17em><math-up|Im><space|0.17em>h<rsub|1>|)>*<big|prod><rsub|k\<geqslant\>2>V<rsub|k><around|(|x<rsub|k><around|(|x|)>|)>|)>>
    with <math|x<rsub|k><around|(|x|)>=<math-up|Re><space|0.17em>h<rsub|k>*<space|0.17em><frac|1-x|1-t>+i<space|0.17em><math-up|Im><space|0.17em>h<rsub|k>>.

    <\itemize-minus>
      <item><math|E> is entire and bounded on
      <math|0\<leqslant\><math-up|Re><space|0.17em>x\<leqslant\>1>. The bound
      depends on <math|<math-up|card><space|0.17em>\<iota\>>, but it is used
      only qualitatively.

      <item>On <math|<math-up|Re><space|0.17em>x=0>, the first factor is a
      contraction absorbed into <math|c>, and the remaining real parts sum to
      <math|1>; the induction hypothesis gives
      <math|<around|\||E|\|>\<leqslant\>1>.

      <item>On <math|<math-up|Re><space|0.17em>x=1>, the factors
      <math|V<rsub|k><around|(|x<rsub|k><around|(|x|)>|)>> with
      <math|k\<geqslant\>2> are contractions, and the trace-norm bound of
      <math|V<rsub|1>> gives <math|<around|\||E|\|>\<leqslant\>1>.

      <item>The three-lines theorem gives
      <math|<around|\||E<around|(|t|)>|\|>\<leqslant\>1>, and
      <math|E<around|(|t|)>> is the trace to be bounded.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Flex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29>,
  <hlink|<verbatim|holder_core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L73-L126>,
  <hlink|<verbatim|convexStrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132>.

  <strong|Lemma 4.5 (Schatten factorization).> For every matrix <math|b> and
  integer <math|q\<geqslant\>1> there is a strip path <math|V> with
  <math|b=<around|\<\|\|\>|b|\<\|\|\>><rsub|2*q>*<space|0.17em>V*<around|(|1/<around|(|2*q|)>|)>>.

  <em|Sketch.>

  <\itemize-minus>
    <item>Write <math|b<rsup|\<ast\>>*b=U<space|0.17em><math-up|diag><around|(|s<rsub|i><rsup|2>|)>*<space|0.17em>U<rsup|\<ast\>>>.
    Then <math|b=W<space|0.17em><math-up|diag><around|(|s|)>*<space|0.17em>U<rsup|\<ast\>>>
    with <math|<around|\<\|\|\>|W|\<\|\|\>>\<leqslant\>1>, where
    <math|W=b*U<space|0.17em><math-up|diag><around|(|s|)><rsup|-1>> on the
    support of <math|s>.

    <item>If <math|b=0>, take <math|V=0>. Otherwise let
    <math|f<rsub|i>=s<rsub|i><rsup|2*q>/<big|sum><rsub|j>s<rsub|j><rsup|2*q>>
    and <math|V<around|(|t|)>=W<space|0.17em><math-up|diag><around|(|f<rsub|i><rsup|<space|0.17em>t>|)>*<space|0.17em>U<rsup|\<ast\>>>,
    with the convention <math|0<rsup|t>=0>.

    <item>Since <math|f<rsub|i>\<leqslant\>1>,
    <math|<around|\<\|\|\>|V<around|(|t|)>|\<\|\|\>>\<leqslant\>1> on the
    closed strip.

    <item>For <math|<math-up|Re><space|0.17em>t=1>,
    <math|<around|\||<math-up|tr><space|0.17em>V<around|(|t|)>*C|\|>\<leqslant\><big|sum><rsub|i>f<rsub|i><around|\||<around|(|U<rsup|\<ast\>>*C*W|)><rsub|i*i>|\|>\<leqslant\>1>.

    <item>At <math|t=1/<around|(|2*q|)>>,
    <math|f<rsub|i><rsup|1/<around|(|2*q|)>>=s<rsub|i>/<around|\<\|\|\>|b|\<\|\|\>><rsub|2*q>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|even_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214>,
  <hlink|<verbatim|imageForm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L114-L156>,
  <hlink|<verbatim|weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L60-L81>,
  <hlink|<verbatim|specPow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L38>.

  <strong|Lemma 4.6 (complex powers).> For <math|A\<succeq\>0> and integer
  <math|M\<geqslant\>1> there is a strip path <math|P> with
  <math|A<rsup|z>=Z<rsub|A><rsup|z/M>*P*<around|(|z/M|)>> for all
  <math|z\<in\>\<bbb-C\>>. Here <math|Z<rsub|A><rsup|w>=e<rsup|w*log
  Z<rsub|A>>> if <math|Z<rsub|A>\<gtr\>0>, and <math|Z<rsub|A><rsup|w>=0>
  otherwise. Moreover <math|A<rsup|z>> equals the ordinary power
  <math|A<rsup|m>> at every integer <math|z=m\<geqslant\>1>.

  <em|Sketch.> If <math|Z<rsub|A>=0>, positivity gives <math|A=0> and one may
  take <math|P=0>. Otherwise take <math|P<around|(|w|)>=U<space|0.17em><math-up|diag><around*|(|<around|(|\<lambda\><rsub|i><rsup|M>/Z<rsub|A>|)><rsup|w>|)>*U<rsup|\<ast\>>>.
  The normalized eigenvalues sum to <math|1>, so the strip and trace-norm
  bounds follow as in Lemma 4.5.

  <em|Lean:> <hlink|<verbatim|leap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24>,
  <hlink|<verbatim|leap_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L26-L32>,
  <hlink|<verbatim|flexPower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L39-L63>.

  <strong|Lemma 4.7 (proof of III.16.2).>

  <em|Sketch.>

  <\itemize-minus>
    <item>Write <math|b<rsub|k>=<around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>*V<rsub|k>*<around|(|1/<around|(|2*q|)>|)>>
    (Lemma 4.5) and <math|A<rsup|v<rsub|k>>=Z<rsub|A><rsup|v<rsub|k>/M>*P*<around|(|v<rsub|k>/M|)>>
    (Lemma 4.6).

    <item>The scalar prefactors have modulus
    <math|<big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>*<space|0.17em>Z<rsub|A><rsup|<big|sum><math-up|Re>v<rsub|k>/M>=<big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>*<space|0.17em>Z<rsub|A><rsup|1-n/<around|(|2*q|)>>>.

    <item>The <math|2*n> strip paths <math|V<rsub|1>,P,V<rsub|2>,P,\<ldots\>>
    are evaluated at exponents whose real parts, <math|1/<around|(|2*q|)>>
    and <math|<math-up|Re><space|0.17em>v<rsub|k>/M>, lie in
    <math|<around|[|0,1|]>> and sum to <math|1>.

    <item>Lemma 4.4 bounds the remaining trace by <math|1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|estimation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165>.

  <strong|Lemma 4.8 (proof of III.16.3).>

  <em|Sketch.>

  <\itemize-minus>
    <item>Let <math|F<around|(|z|)>=<math-up|tr><big|prod><rsub|k>b<rsub|k>*A<rsup|W<rsub|k><around|(|z|)>>>
    with <math|W<around|(|z|)>=Y+z*<around|(|e<rsub|i>-e<rsub|j>|)>>, and put
    <math|C=<around|(|<big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>|)><around|(|<math-up|tr><space|0.17em>A<rsup|M>|)><rsup|1-n/<around|(|2*q|)>>>.
    The function <math|F> is entire.

    <item>The relation <math|n*w+<big|sum>Y<rsub|k>=M> is the balance
    <math|n/<around|(|2*q|)>+<big|sum><rsub|k>Y<rsub|k>/M=1>, and
    <math|<big|sum><rsub|k><math-up|Re><space|0.17em>W<rsub|k><around|(|z|)>=<big|sum><rsub|k>Y<rsub|k>>.

    <item>On <math|<around|\||z|\|>\<leqslant\>2*r>,
    <math|<math-up|Re><space|0.17em>W<rsub|k><around|(|z|)>\<geqslant\>Y<rsub|k>-2*r\<gtr\>0>,
    so III.16.2 gives <math|<around|\||F|\|>\<leqslant\>C> there.

    <item>For <math|<around|\||x|\|>\<leqslant\>r>, the circle of radius
    <math|r> about <math|x> lies in this disc, and Cauchy's estimate gives
    <math|<around|\||F<rprime|'><around|(|x|)>|\|>\<leqslant\>C/r>.

    <item>The mean value inequality on the convex disc
    <math|<around|\||z|\|>\<leqslant\>r>, between <math|0> and
    <math|\<ell\>>, gives the claim.

    <item><math|F<around|(|0|)>> and <math|F<around|(|\<ell\>|)>> are the two
    traces, because all <math|Y<rsub|k>,Y<rprime|'><rsub|k>\<geqslant\>1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>.

  <subsection|4.3 From matrices to kernels><label|43-from-matrices-to-kernels>

  <strong|Lemma 4.9 (sampled traces).> Let <math|L\<geqslant\>1>. For a
  partition with masses <math|m<rsub|i>> and tags <math|x<rsub|i>>, sample a
  kernel as <math|k<rsup|Q>=<around|(|<sqrt|m<rsub|i>>*<space|0.17em>k<around|(|x<rsub|i>,x<rsub|j>|)><sqrt|m<rsub|j>>|)><rsub|i*j>>.
  Then:

  <\itemize-minus>
    <item><math|<around|(|k<rsup|\<ast\>>|)><rsup|Q>=<around|(|k<rsup|Q>|)><rsup|\<ast\>>>;

    <item><math|k<rsup|Q>> is positive semidefinite whenever <math|k> is;

    <item><math|<math-up|tr><around|(|k<rsub|1><rsup|Q>*\<cdots\>*k<rsub|L><rsup|Q>|)>=<big|sum><rsub|i<rsub|1>,\<ldots\>,i<rsub|L>><big|prod><rsub|l>m<rsub|i<rsub|l>>*<big|prod><rsub|l>k<rsub|l>*<around|(|x<rsub|i<rsub|l>>,x<rsub|i<rsub|l+1>>|)>>,
    because every vertex contributes two square-root weights;

    <item>this Riemann sum converges to <math|<math-up|Tr><around|(|k<rsub|1>*\<cdots\>*k<rsub|L>|)>>
    for continuous <math|k<rsub|l>> along the partitions of Lemma 4.2.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|sample>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L81>,
  <hlink|<verbatim|safe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L90-L94>,
  <hlink|<verbatim|measureWeight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L96-L104>,
  <hlink|<verbatim|learns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119>.

  <strong|Lemma 4.10 (proof of III.16.4).>

  <em|Sketch.> Apply III.16.3, for each partition, to <math|A=K<rsup|Q>> and
  <math|b<rsub|l>=B<rsub|l><rsup|Q>>.

  <\itemize-minus>
    <item>By Lemma 4.9, <math|<math-up|tr>A<rsup|M>\<to\>Z\<gtr\>0>, so the
    hypothesis <math|<math-up|tr>A<rsup|M>\<gtr\>0> holds for fine
    partitions.

    <item><math|<around|\<\|\|\>|b<rsub|l>|\<\|\|\>><rsub|2*q>\<to\><around|\||<math-up|Tr><around|(|<around|(|B<rsub|l><rsup|\<ast\>>*B<rsub|l>|)><rsup|q>|)>|\|><rsup|1/<around|(|2*q|)>>>,
    because the column word is sampled with the same partition.

    <item>The two gap traces converge to the cyclic integrals.

    <item>Passing to the limit at fixed <math|<around|(|q,w,Y,Y<rprime|'>,\<ell\>,r|)>>
    gives the bound <math|<frac|\<ell\>|r>*<big|prod><rsub|l><around|\||<math-up|Tr><around|(|<around|(|B<rsub|l><rsup|\<ast\>>*B<rsub|l>|)><rsup|q>|)>|\|><rsup|1/<around|(|2*q|)>>*<space|0.17em>Z<rsup|1-n/<around|(|2*q|)>>>.

    <item>The column hypothesis turns this into
    <math|Z*<big|prod><rsub|l>c<rsub|l>*<space|0.17em>\<ell\>/r>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>,
  <hlink|<verbatim|goes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L45-L58>,
  <hlink|<verbatim|totality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L60-L72>.

  <subsection|4.4 Holomorphy in a strip and Laurent
  coefficients><label|44-holomorphy-in-a-strip-and-laurent-coefficients>

  <strong|Lemma 4.11 (torus integrals inside the strip).> These are the first
  three claims of III.16.5(a).

  <em|Sketch.>

  <\itemize-minus>
    <item>The coefficient bound: <math|<wide|u|^><rsub|p><around|(|x|)>> is
    an average of <math|u> over the torus
    <math|p+2*\<pi\><around|[|0,1|]><rsup|\<alpha\>>> against a unimodular
    character.

    <item>Independence of <math|p>: change one coordinate at a time. A real
    shift leaves a full-period integral unchanged. For an imaginary shift in
    coordinate <math|i>, apply Cauchy's theorem to a rectangle of horizontal
    width <math|2*\<pi\>> between heights
    <math|<math-up|Im><space|0.17em>p<rsub|i>> and
    <math|<math-up|Im><space|0.17em>p<rprime|'><rsub|i>>. Periodicity cancels
    the vertical sides, so the horizontal integrals agree.

    <item>The identity <math|<wide|u|^><rsub|p><around|(|x|)>=e<rsup|i*p\<cdot\>x>*<wide|u|^><around|(|x|)>>
    is independence applied to <math|u<around|(|p|)>*e<rsup|-i*p\<cdot\>x>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|market_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99>,
  <hlink|<verbatim|full_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112>,
  <hlink|<verbatim|coat_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L114-L118>.

  <strong|Lemma 4.12 (weighted <math|\<ell\><rsup|1>> bound).> Under the
  holomorphy and periodicity hypotheses of III.16.5(a), if
  <math|<around|\||u|\|>\<leqslant\>K> on <math|S<rsub|\<eta\>>>,
  <math|H\<geqslant\>0>, <math|b\<gtr\>0>, and <math|H+b\<less\>\<eta\>>,
  then <math|<big|sum><rsub|x>e<rsup|H<around|\||x|\|><rsub|1>><around|\||<wide|u|^><around|(|x|)>|\|>\<leqslant\>K*<around|(|2*<around|(|1+b|)>/b|)><rsup|<math-up|card><space|0.17em>\<alpha\>>>.

  <em|Sketch.>

  <\itemize-minus>
    <item>For given <math|x>, take <math|p> with
    <math|<math-up|Im><space|0.17em>p<rsub|a>=-<around|(|H+b|)><space|0.17em><math-up|sign><space|0.17em>x<rsub|a>>.
    Then <math|<around|\||e<rsup|i*p\<cdot\>x>|\|>=e<rsup|<around|(|H+b|)><around|\||x|\|><rsub|1>>>,
    and Lemma 4.11 gives <math|<around|\||<wide|u|^><around|(|x|)>|\|>\<leqslant\>K*e<rsup|-<around|(|H+b|)><around|\||x|\|><rsub|1>>>.

    <item>Then <math|<big|sum><rsub|x\<in\>\<bbb-Z\><rsup|\<alpha\>>>e<rsup|-b<around|\||x|\|><rsub|1>>\<leqslant\><around*|(|2*<big|sum><rsub|k\<geqslant\>0>e<rsup|-b*k>|)><rsup|<math-up|card><space|0.17em>\<alpha\>>\<leqslant\><around|(|2*<around|(|1+b|)>/b|)><rsup|<math-up|card><space|0.17em>\<alpha\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Vane.issues>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L61-L87>,
  <hlink|<verbatim|Width.compactPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L39-L57>,
  <hlink|<verbatim|pins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L13-L35>.

  <strong|Lemma 4.13 (Laurent representation).> Under the same holomorphy and
  periodicity hypotheses, if <math|<around|\||u|\|>\<leqslant\>K> on
  <math|S<rsub|\<eta\>>>, then <math|u<around|(|p|)>=<big|sum><rsub|x><wide|u|^><around|(|x|)>*e<rsup|i*p\<cdot\>x>>
  on <math|S<rsub|\<eta\>>>.

  <em|Sketch.>

  <\itemize-minus>
    <item>By Lemma 4.12, with <math|H=max
    <around|(|<around|{|0|}>\<cup\><around|{|<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>:a\<in\>\<alpha\>|}>|)>>
    and <math|b=<around|(|\<eta\>-H|)>/2>, the Fourier series of
    <math|\<theta\>\<mapsto\>u*<around|(|p+2*\<pi\>*\<theta\>|)>> is
    absolutely summable.

    <item>Fourier inversion for the continuous shifted function identifies
    this series with the function.

    <item>Evaluate at <math|\<theta\>=0> and use
    <math|<wide|u|^><rsub|p><around|(|x|)>=e<rsup|i*p\<cdot\>x>*<wide|u|^><around|(|x|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Vane.paints>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L90-L104>.

  <strong|Lemma 4.14 (Laurent sums).> This is III.16.5(b).

  <em|Sketch.>

  <\itemize-minus>
    <item>Differentiate term by term, using
    <math|<around|\<\|\|\>|D<rsub|p>*e<rsup|i*p\<cdot\>x>|\<\|\|\>>\<leqslant\><around|\||x|\|><rsub|1>*e<rsup|\<sigma\><around|\||x|\|><rsub|1>>\<leqslant\><around|(|\<eta\>-\<sigma\>|)><rsup|-1>*e<rsup|\<eta\><around|\||x|\|><rsub|1>>>
    on <math|S<rsub|\<sigma\>>>.

    <item>The derivative series is uniformly summable on the open convex
    strip, which gives holomorphy and the derivative bound.

    <item>The Lipschitz bound follows from the mean value inequality.

    <item>The real-part identity follows from
    <math|<wide|e<rsup|-i*p\<cdot\>x>|\<bar\>>=e<rsup|i*p\<cdot\>x>> for real
    <math|p>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Width.estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L131-L133>,
  <hlink|<verbatim|reward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L48-L56>,
  <hlink|<verbatim|readDeriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95>,
  <hlink|<verbatim|readDiff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L97-L101>,
  <hlink|<verbatim|readRealPart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L119-L133>.

  <subsection|4.5 Fourier analysis on tori><label|45-fourier-analysis-on-tori>

  <strong|Lemma 4.15 (orthogonality).> <math|<big|sum><rsub|x\<in\>\<Lambda\><rsub|n>>e<rsup|i*<around|(|k<rsub|p>-k<rsub|p<rprime|'>>|)>\<cdot\>x>=n<rsup|4>*\<delta\><rsub|p*p<rprime|'>>>,
  and hence <math|F<rsub|n>*F<rsub|n><rsup|\<ast\>>=F<rsub|n><rsup|\<ast\>>*F<rsub|n>=n<rsup|4>*I>.

  <em|Sketch.> For <math|p\<ne\>0> some unit step <math|e<rsub|a>> has
  <math|e<rsup|i*k<rsub|p>\<cdot\>e<rsub|a>>\<ne\>1>. Translation invariance
  of the sum then forces it to vanish.

  <em|Lean:> <hlink|<verbatim|sum_cell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L98-L104>,
  <hlink|<verbatim|orthogonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L106-L110>,
  <hlink|<verbatim|gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L117-L119>,
  <hlink|<verbatim|coGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L121-L127>.

  <strong|Lemma 4.16 (circulant diagonalization; III.16.6(a)).> Under the
  hypotheses of III.16.6, periodization is diagonalized by the Fourier
  matrix. For real <math|p>, the symbol is <math|2*\<pi\>>-periodic and
  satisfies <math|<wide|R|^><around|(|-<wide|p|\<bar\>>|)>=<wide|<wide|R|^><around|(|p|)>|\<bar\>>>
  entrywise. These identities also hold at complex momenta wherever the
  series converge absolutely.

  <em|Sketch.> For fixed <math|a,b,p>, summing the periodized kernel against
  the Fourier column gives <math|<big|sum><rsub|z>R<rsub|a*b><around|(|z|)>*e<rsup|i*k<rsub|p>\<cdot\><around|(|y+z|)>>=e<rsup|i*k<rsub|p>\<cdot\>y>*<wide|R|^><around|(|k<rsub|p>|)><rsub|a*b>>.
  Absolute convergence permits regrouping by residues. Periodicity follows
  from <math|e<rsup|2*\<pi\>*i*m\<cdot\>z>=1>, and conjugation follows term
  by term because <math|R> is real.

  <em|Lean:> <hlink|<verbatim|circulant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104>,
  <hlink|<verbatim|Row.periods>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L49-L50>,
  <hlink|<verbatim|Row.conjugate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L39-L45>.

  <strong|Lemma 4.17 (aliases; III.16.6(b)\U(c)).>

  <em|Sketch.>

  <\itemize-minus>
    <item>The fine Fourier matrix factors as the coarse Fourier matrix
    composed with the alias blocks <math|E<rsub|L>*<around|(|2*\<pi\>*p/c|)>>.

    <item><math|E<rsub|L><around|(|<wide|p|\<bar\>>|)><rsup|\<ast\>>*E<rsub|L><around|(|p|)>=L<rsup|4>*I>
    is Lemma 4.15 on <math|\<Lambda\><rsub|L>>. The common factor
    <math|e<rsup|i*p\<cdot\>x/L>> cancels against its conjugate taken at
    <math|<wide|p|\<bar\>>>.

    <item>The intertwining relation is Lemma 4.16 on the fine torus, using
    <math|e<rsup|i*k<rsub|p,l>\<cdot\>f*z>=1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|aliasAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L20>,
  <hlink|<verbatim|aliasBlock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31>,
  <hlink|<verbatim|straightens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L41-L53>,
  <hlink|<verbatim|energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L65-L69>,
  <hlink|<verbatim|readings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L46>,
  <hlink|<verbatim|readingsGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75>,
  <hlink|<verbatim|aligns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129>.

  <subsection|4.6 Matrix square root><label|46-matrix-square-root>

  <strong|Lemma 4.18 (= III.16.7).>

  <em|Sketch.>

  <\itemize-minus>
    <item>Diagonalize <math|X=U<space|0.17em><math-up|diag><around|(|s|)>*<space|0.17em>U<rsup|\<ast\>>>
    with <math|v\<leqslant\>s<rsub|i>\<leqslant\>m>. Then <math|X/m-1> has
    eigenvalues of modulus <math|\<leqslant\>1-v/m\<less\>1>.

    <item>The scalar identity <math|<big|sum><rsub|k><binom|1/2|k>t<rsup|k>=<sqrt|1+t>>
    for <math|<around|\||t|\|>\<less\>1>, applied to the eigenvalues, gives
    <math|\<Phi\><rsub|m><around|(|X|)>=U<space|0.17em><math-up|diag><around|(|<sqrt|s<rsub|i>>|)>*<space|0.17em>U<rsup|\<ast\>>>.

    <item>The binomial series in the Banach algebra of matrices has radius of
    convergence at least <math|1>, giving holomorphy. Continuity and
    compactness give boundedness on each smaller closed ball. Its real scalar
    coefficients imply commutation with entrywise conjugation.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|binRoot_on_band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198>,
  <hlink|<verbatim|binSum_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L104-L114>,
  <hlink|<verbatim|Band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L21-L24>.

  <subsection|4.7 Taylor coefficients and
  analyticity><label|47-taylor-coefficients-and-analyticity>

  <strong|Lemma 4.19 (Taylor coefficients).> Let <math|E,F> be real normed
  spaces, let <math|j,l\<geqslant\>0> be integers, let <math|f:E\<to\>F>, and
  put <math|c<rsub|j>*f<around|(|x|)>=D<rsup|j>*f<around|(|x|)>/j!>.

  <\itemize-minus>
    <item>If <math|f> is <math|C<rsup|j>> at <math|x>, then
    <math|D<rsup|j>*f<around|(|x|)>> is symmetric.

    <item>Two symmetric continuous <math|j>-linear forms with the same
    diagonal are equal.

    <item>If <math|U\<subset\>E> is open, <math|f> is smooth on <math|U>,
    <math|x\<in\>U>, <math|u\<in\>E<rsup|j>>, and <math|v\<in\>E<rsup|l>>,
    then

    <\equation*>
      c<rsub|j>*<around*|(|y\<mapsto\>c<rsub|l>*f<around|(|y|)><around|[|v|]>|)><around|(|x|)><around|[|u|]>=c<rsub|l>*<around*|(|y\<mapsto\>c<rsub|j>*f<around|(|y|)><around|[|u|]>|)><around|(|x|)><around|[|v|]>.
    </equation*>

    <item>If <math|f> is <math|C<rsup|j>> at <math|-x>, then
    <math|c<rsub|j>(f(-\<cdot\><around|)||)><around|(|x|)>=<around|(|-1|)><rsup|j>*c<rsub|j>*f*<around|(|-x|)>>.
    If <math|f> is <math|C<rsup|j>> at <math|x-y>, then
    <math|c<rsub|j>*<around|(|y<rprime|'>\<mapsto\>f*<around|(|x-y<rprime|'>|)>|)><around|(|y|)>=<around|(|-1|)><rsup|j>*c<rsub|j>*f*<around|(|x-y|)>>.

    <item>If <math|f> is <math|C<rsup|j+1>> at <math|x>, then, for
    <math|u,z\<in\>E>,

    <\equation*>
      D<rsub|u>*<around*|(|t\<mapsto\>c<rsub|j+1>*f<around|(|x|)><around|[|t,\<ldots\>,t|]>|)><around|(|z|)>=c<rsub|j>*<around|(|D<rsub|u>*f|)><around|(|x|)><around|[|z,\<ldots\>,z|]>.
    </equation*>
  </itemize-minus>

  <em|Sketch.> Induct on <math|j> for symmetry, using symmetry of the second
  derivative to exchange the first two slots and the induction hypothesis for
  the remaining slots. Equality on diagonals then implies equality of the
  forms by differentiating the diagonal and inducting on the arity. For
  commutation, peel off one directional derivative at a time. The chain rule
  gives the reflection identities. Differentiating a symmetric diagonal
  contributes <math|j+1> equal terms; the factorials give the last identity.

  <em|Lean:> <hlink|<verbatim|sym_Jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L71-L134>,
  <hlink|<verbatim|commuteD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L54-L60>,
  <hlink|<verbatim|ext_diag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L62-L77>,
  <hlink|<verbatim|coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65-L66>,
  <hlink|<verbatim|exchangeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L36-L69>,
  <hlink|<verbatim|reflectionJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L72-L99>,
  <hlink|<verbatim|oppositeCoeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L102-L108>,
  <hlink|<verbatim|slot_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L71-L78>.

  <strong|Lemma 4.20 (several-variable and weak analyticity).>

  <\itemize-minus>
    <item>A map between finite-dimensional complex normed spaces that is
    complex-differentiable on a neighbourhood of <math|x> is analytic at
    <math|x>.

    <item>Let <math|E> be a complex Banach space and
    <math|f:\<bbb-C\>\<to\>E> continuous on an open set <math|U>. If
    <math|L\<circ\>f> is holomorphic on <math|U> for every <math|L> in a
    family of continuous complex linear functionals that separates points,
    then <math|f> is analytic on <math|U>.
  </itemize-minus>

  <em|Sketch.>

  <\itemize-minus>
    <item>First claim: choose coordinates and a closed polydisc contained in
    the differentiability neighbourhood. Successive applications of the
    one-variable Cauchy formula express each scalar component as a continuous
    linear functional applied to the product of the Cauchy kernels and the
    fixed boundary values. Each kernel is analytic in the interior variables,
    since its denominator is invertible in the Banach algebra of continuous
    functions on the angle torus. Their finite product and the resulting
    integral are analytic. Coordinate changes recover the assertion for the
    original spaces.

    <item>Second claim: the Cauchy integral formula holds after applying each
    <math|L>, the separating family lifts it to <math|E>, and the Cauchy
    power series converges.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|finiteD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238>,
  <hlink|<verbatim|lift_weak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50>.

  <subsection|4.8 Free Maxwell field><label|48-free-maxwell-field>

  <strong|Lemma 4.21 (Poincaré lemma in radial gauge; III.16.8(a)).>

  <em|Sketch.>

  <\itemize-minus>
    <item>The curl is closed by symmetry of second derivatives.

    <item>Inverse on <math|\<cal-C\><rsub|j>>: for
    <math|F\<in\>\<cal-C\><rsub|j>> and <math|A<rsub|i>=<around|(|j+2|)><rsup|-1>*x<rsub|k>*F<rsub|k*i>>,
    compute <math|\<partial\><rsub|i>*A<rsub|l>-\<partial\><rsub|l>*A<rsub|i>=<around|(|j+2|)><rsup|-1>*<around*|(|2*F<rsub|i*l>+x<rsub|k>*<around|(|\<partial\><rsub|i>*F<rsub|k*l>-\<partial\><rsub|l>*F<rsub|k*i>|)>|)>>.
    By Bianchi this equals <math|<around|(|j+2|)><rsup|-1>*<around*|(|2*F<rsub|i*l>+x<rsub|k>*\<partial\><rsub|k>*F<rsub|i*l>|)>>,
    and by Euler's identity this is <math|F<rsub|i*l>>.

    <item>The map lands in radial gauge, since
    <math|x<rsub|i>*x<rsub|k>*F<rsub|k*i>=0> by antisymmetry.

    <item>Inverse on <math|\<cal-A\><rsub|j>>: differentiating
    <math|x<rsub|k>*A<rsub|k>=0> gives <math|x<rsub|k>*\<partial\><rsub|i>*A<rsub|k>=-A<rsub|i>>.
    Hence <math|x<rsub|k>*F<rsub|k*i>=<around|(|j+1|)>*A<rsub|i>+A<rsub|i>=<around|(|j+2|)>*A<rsub|i>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|takeCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L97-L98>,
  <hlink|<verbatim|closedCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128>,
  <hlink|<verbatim|contracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L130-L154>,
  <hlink|<verbatim|curl_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195>,
  <hlink|<verbatim|potential_recover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214>,
  <hlink|<verbatim|potential>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L218-L224>.

  <strong|Lemma 4.22 (the shell; III.16.8(b)).>

  <\itemize-minus>
    <item><math|\<cal-S\><rsub|j>> is a subspace of <math|\<cal-C\><rsub|j>>.

    <item>The inverse curl restricted to the shell is injective:
    <hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>,
    <hlink|<verbatim|leg_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L49-L50>.
  </itemize-minus>

  <em|Sketch for III.16.8(b).> By Lemma 4.19, for <math|j\<geqslant\>1> the
  derivatives of the <math|j>-th homogeneous Taylor polynomial are the
  <math|<around|(|j-1|)>>-th Taylor coefficients of the derivatives; the
  degree-zero case is constant. The Bianchi and Maxwell combinations of
  <math|f> vanish near <math|x>, so the corresponding combinations of Taylor
  coefficients vanish.

  <em|Lean:> <hlink|<verbatim|onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>,
  <hlink|<verbatim|WaveOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L57-L62>,
  <hlink|<verbatim|WaveOn.jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122>.

  <strong|Lemma 4.23 (the free kernel; III.16.8(c)).>

  <em|Sketch.>

  <\itemize-minus>
    <item><math|\<partial\><rsub|i>*\<partial\><rsub|j>*G<rsub|0>=-2*N*\<delta\><rsub|i*j>\|x\|<rsup|-4>+8*N*x<rsub|i>*x<rsub|j><around|\||x|\|><rsup|-6>>
    with <math|N=<around|(|4*\<pi\><rsup|2>|)><rsup|-1>>. The trace vanishes
    in dimension four.

    <item><math|\<psi\><rsub|\<cdot\>,k*m>> is divergence-free and harmonic,
    so <math|<big|sum><rsub|a>\<partial\><rsub|a>*C<rsub|a*b,k*m>=\<Delta\>*\<psi\><rsub|b>-\<partial\><rsub|b><space|0.17em><math-up|div><space|0.17em>\<psi\>=0>.

    <item>Bianchi holds because <math|C> is a curl.

    <item>Exchange and evenness follow from the explicit Hessian.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22>,
  <hlink|<verbatim|second_Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L49-L66>,
  <hlink|<verbatim|harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77>,
  <hlink|<verbatim|curlOpp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L17-L18>,
  <hlink|<verbatim|bareCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20>,
  <hlink|<verbatim|Bare.equation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98>,
  <hlink|<verbatim|Bare.exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L104-L109>.

  <strong|Lemma 4.24 (jet pairing; III.16.8(d)).>

  <em|Sketch.>

  <\itemize-minus>
    <item>By III.16.8(b)\U(c), the Taylor coefficients of <math|C> in either
    leg lie on the shell. Hence only the restrictions of <math|p> and
    <math|q> matter.

    <item>Symmetry: it suffices to check probes that read single mixed Taylor
    coefficients, because these span the dual of the shell. For those, the
    claim follows from:

    <\itemize-minus>
      <item>commutation of Taylor coefficients of different orders (Lemma
      4.19);

      <item>the reflection rule, with sign <math|<around|(|-1|)><rsup|l>>;

      <item><math|C<rsub|a*b,k*m><around|(|x|)>=C<rsub|k*m,a*b>*<around|(|-x|)>>.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L64>,
  <hlink|<verbatim|contraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L145-L146>,
  <hlink|<verbatim|descends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159>,
  <hlink|<verbatim|kernel_smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L168-L172>,
  <hlink|<verbatim|exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169>.

  <strong|Lemma 4.25 (Wick hierarchy; III.16.10).>

  <em|Definitions.>

  <\itemize-minus>
    <item><em|Pairings> are fixed-point-free involutions of the factor
    occurrences whose partners sit at different points; no self-contractions
    are allowed.

    <item>The <em|moment> is defined on the monomial basis and extended
    multilinearly.

    <item>Labels enter through the substitution
    <math|A<rsub|j>=<math-up|curl><rsup|-1>F<rsub|j>>,
    <math|F<rsub|j>\<in\>\<cal-S\><rsub|j>>.

    <item>The <em|equation ideal> is the kernel of this substitution. It
    consists of the labels that vanish on every on-shell jet sequence.
  </itemize-minus>

  <em|Sketch of the properties.>

  <\itemize-minus>
    <item>Vanishing on the equation ideal: multilinearity.

    <item>Relabelling and insertion of <math|1>: added unit monomials have no
    occurrences. An injection of the remaining indices induces bijections of
    occurrences and pairings. If the orientation of an edge reverses, the
    exchange identity for <math|\<kappa\>> preserves its value. Extend from
    monomials by multilinearity.

    <item>Smoothness: each polynomial has finitely many monomials and each
    monomial finitely many pairings, so the result is a finite sum of
    products of smooth kernels off the diagonal. When all insertions are
    <math|1>, there are no occurrences and exactly one empty pairing, whose
    product is <math|1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Wick.entry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24>,
  <hlink|<verbatim|Wick.Occ.Matching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L75-L76>,
  <hlink|<verbatim|Wick.monomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L107>,
  <hlink|<verbatim|reduceEq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50>,
  <hlink|<verbatim|observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>,
  <hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>,
  and the links of III.16.10.

  <subsection|4.9 Labels><label|49-labels>

  <strong|Lemma 4.26 (= III.16.9).>

  <em|Sketch.>

  <\itemize-minus>
    <item>(a) A complex polynomial that vanishes on <math|\<bbb-R\><rsup|N>>
    is zero.

    <item>(b) A coordinate's exponent in a monomial of weight
    <math|\<leqslant\>d> is at most <math|d>, and only finitely many
    coordinates have weight <math|\<leqslant\>d>.

    <item>(c) Bihomogeneous components of an invariant polynomial are
    invariant, because the adjoint action is linear in each <math|A<rsub|j>>
    and preserves bidegree. They are real if the label is real.

    <item>(d) Real bihomogeneous labels span <math|<math-up|Label><rsub|d>>
    over <math|\<bbb-C\>>, by taking real and imaginary parts of its
    bihomogeneous components. A basis containing <math|1> can be extracted,
    and the bases are extended inductively from level <math|d> to level
    <math|d+1>.

    <item>Each frame gives coordinates on <math|<math-up|Label><rsub|d>>. For
    every real <math|t>, rescaling the coordinate of <math|e<rsub|i>> by
    <math|t<rsup|deg e<rsub|i>>> (polynomial degree) commutes with the action
    of <math|O<around|(|4|)>>, since that action preserves each polynomial
    degree: <hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>,
    <hlink|<verbatim|Frame.scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L96-L109>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37>,
  <hlink|<verbatim|eval_ext>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49>,
  <hlink|<verbatim|cap_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94>,
  <hlink|<verbatim|component_mem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L35-L48>,
  <hlink|<verbatim|decompose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105>,
  <hlink|<verbatim|frame_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86>,
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>,
  <hlink|<verbatim|rotation_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The analytic issue in III.16.3\UIII.16.4 is to retain a bound independent
  of matrix dimension while varying the exponents and passing to integral
  kernels. The three-lines argument uses dimension only for qualitative
  boundedness on the strip. Arbitrary insertions are allowed: their Schatten
  norms supply the entire insertion cost. Positivity and a positive cyclic
  trace are required of the transfer kernel, and quadrature is taken at fixed
  exponents and period.

  The complex-power convention matters at zero: <math|A<rsup|0>> is the range
  projection. The strict inequalities <math|Y<rsub|k>\<gtr\>2*r> ensure that
  the integer endpoints agree with ordinary positive powers. Fourier
  inversion loses strip width and the explicit factor
  <math|<around|(|2*<around|(|1+b|)>/b|)><rsup|4>>; differentiating a Laurent
  sum costs <math|1/<around|(|\<eta\>-\<sigma\>|)>>. The Bloch identities
  retain all momenta, and at complex momentum the alias identity uses the
  adjoint evaluated at <math|<wide|p|\<bar\>>>.

  For Maxwell jets, the conventions are Taylor coefficients
  <math|D<rsup|j>/j!>, real orthonormal colour coordinates, the normalization
  <math|<around|(|4*\<pi\><rsup|2>|)><rsup|-1>>, and the sign
  <math|<around|(|-1|)><rsup|l>> at the second endpoint. The equation
  subspace is defined by restriction to shell jets; no presentation by
  invariant generators is needed. The chosen label bases are coherent as sets
  of polynomials, rather than as prescribed ordered lists.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|positive-semidefinite
  kernel>|<cell|<hlink|<verbatim|NNKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19>>|<cell|all
  finite Gram matrices Hermitian and positive
  semidefinite>>|<row|<cell|tagged partitions <math|Q<rsub|k>>, masses
  <math|m<rsub|i>>>|<cell|<hlink|<verbatim|Quad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26>,
  <hlink|<verbatim|Quad.shrink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L65-L66>>|<cell|finite
  measurable partition with tags; mesh <math|1/<around|(|k+1|)>>>>|<row|<cell|<math|<around|\<lVert\>|b|\<rVert\>><rsub|2*q>>>|<cell|<hlink|<verbatim|paysNorm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L106>,
  <hlink|<verbatim|rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L105>
  <math|=1/<around|(|2*q|)>>>|<cell|Schatten norm via
  <math|<math-up|tr><around|(|<around|(|b<rsup|\<ast\>>*b|)><rsup|q>|)>>>>|<row|<cell|strip
  path>|<cell|<hlink|<verbatim|Flex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29>>|<cell|entire;
  contraction on the strip; trace norm <math|\<leqslant\>1> on
  <math|<math-up|Re>=1>>>|<row|<cell|<math|A<rsup|z>>>|<cell|<hlink|<verbatim|leap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24>,
  <hlink|<verbatim|specPow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L38>>|<cell|complex
  power, <math|0> on <math|ker A>>>|<row|<cell|<math|Z<rsub|A>=<math-up|tr>A<rsup|M>>>|<cell|<hlink|<verbatim|Holder.Q>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L37>>|<cell|absolute
  trace, equal to the trace for <math|A\<succeq\>0>>>|<row|<cell|sides of
  III.16.2>|<cell|<hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109>,
  <hlink|<verbatim|cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112>>|<cell|trace
  product and Hölder bound>>|<row|<cell|<math|q,w,M,\<ell\>,K,Z,c<rsub|k>,Y<rprime|'>>>|<cell|<verbatim|p>,
  <verbatim|width>, <verbatim|N>, <verbatim|m>, <verbatim|T>, <verbatim|R>,
  <verbatim|K>, <verbatim|Z>>|<cell|Lean parameters of <verbatim|finite_lip>,
  <verbatim|passage>>>|<row|<cell|<math|<math-up|Tr><around|(|k<rsub|1>*\<cdots\>*k<rsub|L>|)>>>|<cell|<hlink|<verbatim|TimeKernel.closed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76>>|<cell|cyclic
  integral>>|<row|<cell|<math|k<rsup|Q>>,
  <math|k<rsup|\<ast\>>>>|<cell|<hlink|<verbatim|sample>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L81>,
  <hlink|<verbatim|op>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L83>>|<cell|sampled
  matrix; adjoint kernel>>|<row|<cell|<math|B<rsub|1>*K<rsup|Y<rsub|1>>*\<cdots\>>;
  <math|<around|(|B<rsup|\<ast\>>*B|)><rsup|q>>>|<cell|<hlink|<verbatim|along>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18>,
  <hlink|<verbatim|multiply>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20>>|<cell|gap
  word; column word>>|<row|<cell|<math|S<rsub|\<eta\>>>;
  <math|e<rsup|i*p\<cdot\>x>>; <math|<around|\<lvert\>|x|\<rvert\>><rsub|1>>>|<cell|<hlink|<verbatim|strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L43>,
  <hlink|<verbatim|mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L39>,
  <hlink|<verbatim|size>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L34>>|<cell|strip,
  Fourier character and lattice one-norm>>|<row|<cell|<math|<big|sum>e<rsup|\<eta\><around|\<lvert\>|x|\<rvert\>><rsub|1>><around|\<lvert\>|f<around|(|x|)>|\<rvert\>>\<leqslant\>W>>|<cell|<hlink|<verbatim|Width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104>>|<cell|weighted
  norm bound>>|<row|<cell|<math|<wide|f|^>>>|<cell|<hlink|<verbatim|Laurent.read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L123>,
  <hlink|<verbatim|Row.read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L30-L31>>|<cell|symbol
  (Laurent series)>>|<row|<cell|periodic holomorphic <math|u> on
  <math|S<rsub|\<eta\>>>; <math|<wide|u|^><rsub|p>>>|<cell|<hlink|<verbatim|Vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L18-L21>,
  <hlink|<verbatim|market>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L80>>|<cell|strip
  hypotheses and shifted Fourier coefficients>>|<row|<cell|kernel <math|R>;
  periodization <math|R<rsub|n>>>|<cell|<hlink|<verbatim|Bloch.Row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22>,
  <hlink|<verbatim|Row.acts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L33-L34>,
  <hlink|<verbatim|Row.strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26>>|<cell|real
  kernel over <math|\<bbb-Z\><rsup|4>> with internal
  indices>>|<row|<cell|<math|k<rsub|p>>; <math|F<rsub|n>>>|<cell|<hlink|<verbatim|mon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L18>,
  <hlink|<verbatim|cell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L20>,
  <hlink|<verbatim|F>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L113>>|<cell|torus
  momentum, character and Fourier matrix>>|<row|<cell|alias momenta;
  <math|E<rsub|L><around|(|p|)>>>|<cell|<hlink|<verbatim|aliasAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L20>,
  <hlink|<verbatim|aliasBlock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31>>|<cell|fine
  momenta over one coarse momentum and their Fourier
  block>>|<row|<cell|<math|\<Phi\><rsub|m>>;
  <math|v\<leqslant\>X\<leqslant\>m>>|<cell|<hlink|<verbatim|binRoot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L125>,
  <hlink|<verbatim|Band>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L21-L24>>|<cell|analytic
  root and quadratic-form bounds>>|<row|<cell|<math|c<rsub|j>*f<around|(|x|)>=D<rsup|j>*f<around|(|x|)>/j!>>|<cell|<hlink|<verbatim|Tensor.coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65-L66>>|<cell|Taylor
  coefficient>>|<row|<cell|<math|\<partial\><rsub|i>>>|<cell|<hlink|<verbatim|Maxwell.grad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L20>>|<cell|partial
  derivative along axis <math|i>>>|<row|<cell|<math|\<cal-A\><rsub|j>>>|<cell|<hlink|<verbatim|Labels.Taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39>
  (<hlink|<verbatim|radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37>)>|<cell|radial-gauge
  potentials, degree <math|j+1>, weight <math|j+2>>>|<row|<cell|<math|\<cal-C\><rsub|j>>;
  <math|\<cal-S\><rsub|j>>>|<cell|<hlink|<verbatim|formSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L63-L95>
  (<hlink|<verbatim|ClosedJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L57-L61>);
  <hlink|<verbatim|Shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L44>>|<cell|closed
  curvature jets; Maxwell shell>>|<row|<cell|curl and its
  inverse>|<cell|<hlink|<verbatim|takeCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L97-L98>,
  <hlink|<verbatim|contracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L130-L154>>|<cell|homogeneous
  radial-gauge identification>>|<row|<cell|<math|G<rsub|0>>;
  <math|C<rsub|a*b,k*m>>>|<cell|<hlink|<verbatim|Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22>,
  <hlink|<verbatim|bareCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20>>|<cell|<math|G<rsub|0>=<around|(|4*\<pi\><rsup|2><around|\<lvert\>|x|\<rvert\>><rsup|2>|)><rsup|-1>>;
  free field-strength two-point function>>|<row|<cell|probe;
  <math|\<kappa\><around|(|p,q|)>>>|<cell|<hlink|<verbatim|Probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L64>,
  <hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>>|<cell|linear
  form on <math|\<cal-S\><rsub|j>>; one-contraction kernel>>|<row|<cell|free
  moment; free correlation>|<cell|<hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>,
  <hlink|<verbatim|Wick.correlation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147>>|<cell|Wick
  pairing sum and its restriction to labels>>|<row|<cell|equation
  ideal>|<cell|<hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>>|<cell|labels
  vanishing on all on-shell jets>>|<row|<cell|<math|<math-up|Pol>>;
  <math|<math-up|Label><rsub|d>>; weight>|<cell|<hlink|<verbatim|Labels.Pol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L29>,
  <hlink|<verbatim|Labels.Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>,
  <hlink|<verbatim|height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L55>>|<cell|polynomial
  algebra, invariant filtered subspace and engineering
  weight>>|<row|<cell|frame>|<cell|<hlink|<verbatim|Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57>,
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>>|<cell|complex
  basis of real bihomogeneous polynomials, with <math|e<rsub|0>=1>, coherent
  in <math|d>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Additional lemmas and dependency lists.> The elementary
    helper lemmas assigned to this unit outside the eight folders have not
    been checked individually. The longer unit lists in Ÿ2 have not been
    independently verified entry by entry and should be treated as guides to
    placement.

    <item><strong|Norms and parameter choices.> The square-root argument uses
    the matrix operator norm; its entrywise Laurent bounds require a
    finite-dimensional norm conversion. In III.6 the strip is narrowed to
    <math|\<tau\>=min <around|(|\<eta\>/2,v/<around|(|2*C*D|)>|)>>, with
    <math|D=2*A/\<eta\>> and <math|C> a norm-conversion constant, and then to
    <math|\<tau\>/3>. IV.1 chooses <math|q,w,r> and sums successive insertion
    moves. Those choices must accompany any claim of uniformity in volume or
    spacing.

    <item><strong|Placement.> The trace estimate belongs with IV.1, Laurent
    and Bloch analysis with III.2\UIII.7, labels with II.1, and Maxwell jets
    and Wick correlations with VI.1\UVI.2 and VII.1\UVII.3. The full
    square-root theorem is assembled in III.6.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.15 Cost accounting for observables
  and the remainder comparison (notes)|III-15.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-16.tm>|<hlink|IV.1 Infinite volume: extraction of a
  subsequence and the Euclidean axioms of the limit (notes)
  \<rightarrow\>|IV-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.16. Analytic toolkit \V detailed notes \U
    Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|8>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-positive-kernels-and-quadrature|<tuple|4.1|10>>
    <associate|42-the-finite-trace-inequality|<tuple|4.2|11>>
    <associate|43-from-matrices-to-kernels|<tuple|4.3|13>>
    <associate|44-holomorphy-in-a-strip-and-laurent-coefficients|<tuple|4.4|14>>
    <associate|45-fourier-analysis-on-tori|<tuple|4.5|15>>
    <associate|46-matrix-square-root|<tuple|4.6|16>>
    <associate|47-taylor-coefficients-and-analyticity|<tuple|4.7|16>>
    <associate|48-free-maxwell-field|<tuple|4.8|17>>
    <associate|49-labels|<tuple|4.9|19>>
    <associate|5-where-the-difficulty-lies|<tuple|5|19>>
    <associate|6-notation|<tuple|6|20>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|16>>
    <associate|auto-11|<tuple|4.7|16>>
    <associate|auto-12|<tuple|4.8|17>>
    <associate|auto-13|<tuple|4.9|19>>
    <associate|auto-14|<tuple|5|19>>
    <associate|auto-15|<tuple|6|20>>
    <associate|auto-16|<tuple|7|21>>
    <associate|auto-2|<tuple|2|8>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|10>>
    <associate|auto-5|<tuple|4.1|10>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|iii16-analytic-toolkit--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Positive kernels and quadrature
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The finite trace inequality
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 From matrices to kernels
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Holomorphy in a strip and Laurent
      coefficients <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Fourier analysis on tori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Matrix square root
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Taylor coefficients and analyticity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Free Maxwell field
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 Labels
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