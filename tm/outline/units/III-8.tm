<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.7 Matching the Wilson energy to
  fourth order|III-7.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-8.tm>|<hlink|III.9 The marginal flow: the running
  coupling and its reset \<rightarrow\>|III-9.tm>>

  <ym-title|III.8. Connected activities and backward dependence
  cones><label|iii8-connected-activities-and-backward-dependence-cones>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1. What this
    unit proves> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|Part A <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|Part B <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2. What it
    uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3. Strategy>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4. Steps>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Code
    dependencies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Lean source>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <with|par-left|1tab|Additional source locations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Key statements>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  <em|Part III \V Ultraviolet construction (renormalization group).>

  Explains connected activity expansions and the regions of earlier fields on
  which an observable depends.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-8.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.7|III-7.tm> <ym-middot> <hlink|Next:
  III.9 \<rightarrow\>|III-9.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> <hlink|<verbatim|YM/RG08/Steam/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam>,
    <hlink|<verbatim|YM/RG08/Forms/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms>,
    <hlink|<verbatim|YM/RG08/Skiff/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff>,
    <hlink|<verbatim|YM/RG08/Jetty/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty>,
    <hlink|<verbatim|YM/Push/GRID_APPROXIMATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION>.
    <strong|Size:> 4,147 lines in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <subsection|Part A><label|part-a>

  Let <math|I> be any set, <math|d> a pseudometric,
  <math|\<sigma\>\<geqslant\>0>. Rank-<math|n> tensors are real functions on
  <math|I<rsup|n>> with ordered slots; <math|<math-up|diam><rsub|d><around|(|x|)>>
  is the largest pairwise distance, zero for an empty tuple. Use

  <\equation*>
    <around|\<\|\|\>|F|\<\|\|\>><rsub|\<sigma\>>=max<rsub|i> sup<rsub|z>
    <big|sum><rsub|x:x<rsub|i>=z><around|\||F<around|(|x|)>|\|>*e<rsup|\<sigma\><math-up|diam><rsub|d><around|(|x|)>>,<space|2em><around|[|\<Gamma\>|]><rsub|\<sigma\>>=max
    <around*|(|sup<rsub|u> <big|sum><rsub|v><around|\||\<Gamma\><around|(|u,v|)>|\|>*e<rsup|\<sigma\>*d<around|(|u,v|)>>,sup<rsub|v>
    <big|sum><rsub|u><around|\||\<Gamma\><around|(|u,v|)>|\|>*e<rsup|\<sigma\>*d<around|(|u,v|)>>|)>.
  </equation*>

  Empty maxima and suprema are zero, including rank-zero tensor norms.
  Propagators need not be symmetric. A pair is
  <math|<around|(|B,\<delta\>|)>>-controlled if both norms are at most
  <math|B> and its difference norm is at most <math|B*\<delta\>>. A
  polynomial majorant satisfies <math|0\<leqslant\>P<around|(|x|)>\<leqslant\>C*x<rsup|q>>
  for <math|x\<geqslant\>1>, for some <math|C\<geqslant\>0>,
  <math|q\<in\>\<bbb-N\>>.

  A formal potential <math|V=<around|(|V<rsub|e,n>|)>> is eligible if
  <math|V<rsub|0,n>=0> and nonzero coefficients satisfy
  <math|n\<leqslant\>e+2>, <math|e+n> even. Let
  <math|\<Delta\><rsub|\<Gamma\>>> and <math|\<star\><rsub|\<Gamma\>>>
  contract and join slots, averaging over output permutations:

  <\equation*>
    \<Delta\><rsub|\<Gamma\>>*H<around|(|x|)>=<math-up|Sym><big|sum><rsub|u,v>\<Gamma\><around|(|u,v|)>*H<around|(|u,v,x|)>,<space|2em><around|(|H*\<star\><rsub|\<Gamma\>>*G|)><around|(|x,y|)>=<math-up|Sym><big|sum><rsub|u,v>H<around|(|u,x|)>*\<Gamma\><around|(|u,v|)>*G<around|(|v,y|)>.
  </equation*>

  Define <math|V<rsup|<around|(|0|)>>=V> and

  <\equation*>
    V<rsup|<around|(|j+1|)>><rsub|e,n>=<frac|1|j+1>*<around*|[|<binom|n+2|2>\<Delta\><rsub|\<Gamma\>>*V<rsup|<around|(|j|)>><rsub|e,n+2>+<big|sum><rsub|c=0><rsup|n><big|sum><rsub|i=0><rsup|j><big|sum><rsub|a=0><rsup|e><frac|<around|(|c+1|)>*<around|(|n-c+1|)>|2>*V<rsup|<around|(|i|)>><rsub|a,c+1>*\<star\><rsub|\<Gamma\>>*V<rsup|<around|(|j-i|)>><rsub|e-a,n-c+1>|]>.
  </equation*>

  <strong|Proposition III.8.1.> Fix <math|j,e,n\<in\>\<bbb-N\>>. Put

  <\equation*>
    T<rsub|j><around|(|e,n|)>=<around|{|<around|(|a,r|)>:1\<leqslant\>a\<less\>e,1\<leqslant\>r\<leqslant\>a+2|}>\<cup\><around|{|<around|(|e,r|)>:1\<leqslant\>e,n\<less\>r\<leqslant\>e+2|}>,
  </equation*>

  adding <math|<around|(|e,n|)>> if <math|j=0>, <math|e\<geqslant\>1>,
  <math|1\<leqslant\>n\<leqslant\>e+2>. There is a polynomial majorant
  <math|P>, depending only on <math|<around|(|j,e,n|)>>, such that for all
  <math|W\<geqslant\>1>, <math|\<delta\>\<geqslant\>0>, eligible
  <math|V,V<rprime|'>> and propagators <math|\<Gamma\>,\<Gamma\><rprime|'>>,
  control <math|<around|(|W,\<delta\>|)>> of the propagators and coefficient
  pairs in <math|T<rsub|j><around|(|e,n|)>> implies control
  <math|<around|(|P<around|(|W|)>,\<delta\>|)>> of the output pair
  <math|V<rsup|<around|(|j|)>><rsub|e,n>>. The majorant is uniform in
  <math|I,d,\<sigma\>,\<delta\>>. At <math|n=0> this is vacuous. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|navigation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83>.

  <strong|Proposition III.8.2.> For every eligible <math|V> and arbitrary
  <math|\<Gamma\>>, all <math|V<rsup|<around|(|j|)>>> are eligible, nonzero
  coefficients satisfy <math|n+2*j\<leqslant\>3*e>, and positive-<math|j>
  outputs are symmetric. For every real <math|t>,

  <\equation*>
    \<cal-E\><rsub|t><around|(|V|)><rsub|e,n>=<big|sum><rsub|j=0><rsup|3*e>t<rsup|j>*V<rsup|<around|(|j|)>><rsub|e,n>=V<rsub|e,n>+\<cal-R\><rsub|t><around|(|V|)><rsub|e,n>.
  </equation*>

  Here <math|\<cal-R\><rsub|t>> sums <math|j\<geqslant\>1>, and
  <math|\<cal-E\><rsub|t><around|(|V|)>> is eligible. The series vanishes for
  <math|n\<gtr\>3*e>; otherwise its degree is at most
  <math|<around|\<lfloor\>|<around|(|3*e-n|)>/2|\<rfloor\>>>. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|preserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64>,
  <hlink|<verbatim|live>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70>,
  <hlink|<verbatim|coal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75>.

  <strong|Proposition III.8.3.> Let <math|\<cal-S\>> consist of smooth real
  functions on <math|\<bbb-R\><rsup|4>> with polynomially growing
  derivatives, with

  <\equation*>
    <around|\<\|\|\>|f|\<\|\|\>><rsub|k,\<sigma\>>=max<rsub|<around|\||\<alpha\>|\|>\<leqslant\>k>
    sup<rsub|y><around|\||\<partial\><rsup|\<alpha\>>*f<around|(|y|)>|\|>*e<rsup|-\<sigma\><around|\||y|\|>>.
  </equation*>

  For marked tensors valued in real-linear functionals on <math|\<cal-S\>>,
  use <math|<around|\<\|\|\>|\<lambda\>|\<\|\|\>><rsup|\<ast\>><rsub|k,\<sigma\>>=sup<rsub|<around|\<\|\|\>|f|\<\|\|\>><rsub|k,\<sigma\>>\<leqslant\>1><around|\||\<lambda\><around|(|f|)>|\|>>
  and <math|<around|\<\|\|\>|M|\<\|\|\>><rsub|h>=<big|sum><rsub|x><around|\<\|\|\>|M<around|(|x|)>|\<\|\|\>><rsup|\<ast\>><rsub|k,\<sigma\>>*e<rsup|\<sigma\>*h<around|(|x|)>>>,
  where <math|h:I\<to\><around|[|0,\<infty\>|)>> is 1-Lipschitz and
  <math|h<around|(|x|)>=max <around|(|0,max<rsub|i>
  h<around|(|x<rsub|i>|)>|)>>. Set <math|M<rsup|<around|(|0|)>>=F>; the
  recursion replaces the contraction input by <math|M> and the join by
  <math|M<rsup|<around|(|i|)>>*\<star\><rsub|\<Gamma\>>*V<rsup|<around|(|j-i|)>>>,
  doubling its coefficient.

  For each <math|j,e,n\<in\>\<bbb-N\>> there is a polynomial majorant
  <math|P>, depending only on these indices, such that for all
  <math|k\<in\>\<bbb-N\>>, <math|\<sigma\>\<gtr\>0>, <math|W\<geqslant\>1>,
  <math|U,\<delta\>\<geqslant\>0>: if <math|V,V<rprime|'>> are eligible,
  propagators and unmarked inputs <math|1\<leqslant\>a\<leqslant\>e>,
  <math|1\<leqslant\>r\<leqslant\>a+2> are
  <math|<around|(|W,\<delta\>|)>>-controlled, and marked inputs with
  <math|a\<less\>e>, or <math|a=e,r\<gtr\>n>, or
  <math|j=0,<around|(|a,r|)>=<around|(|e,n|)>> are
  <math|<around|(|U,\<delta\>|)>>-controlled, the marked output pair is
  <math|<around|(|P<around|(|W|)>*U,\<delta\>|)>>-controlled and real-linear.

  For every <math|l\<in\>\<bbb-N\>>, eligible <math|V> and <math|F> supported
  on <math|r\<leqslant\>l+a> give nonzero outputs only if
  <math|n+2*j\<leqslant\>l+3*e> and <math|n\<leqslant\>l+e>. For fixed
  <math|l,e,n>, there is a polynomial majorant <math|P> depending only on
  these indices such that the paired sums
  <math|<big|sum><rsub|j=1><rsup|l+3*e>t<rsup|j>*M<rsup|<around|(|j|)>><rsub|e,n>>
  are <math|<around|(|P<around|(|W|)>*U,\<delta\>|)>>-controlled for
  <math|<around|\||t|\|>\<leqslant\>W>, under the preceding bounds omitting
  the marked input <math|<around|(|e,n|)>>. They comprise the whole
  positive-time part if both marked inputs satisfy that support condition.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|journey>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127>,
  <hlink|<verbatim|registry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36>,
  <hlink|<verbatim|full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68>.

  <subsection|Part B><label|part-b>

  Use I.1's gauge group and Haar probability measures. A block step has odd
  <math|L\<geqslant\>3>, <math|J\<geqslant\>4>, patch radius
  <math|\<rho\>=<around|(|J+3|)>*L>, embedding <math|\<iota\>>, and
  <math|\<cal-B\>*F<around|(|U|)>=<big|int>k<rsub|\<beta\>><around|(|U,V|)>*F<around|(|V|)>*<space|0.17em>d*V>.
  Locality on <math|X> means dependence only on links with both endpoints in
  <math|X>; <math|\<cal-I\><around|(|X|)>> adds gauge invariance,
  measurability and boundedness.

  The patch hypothesis requires unique minimising frames and best predictors
  whenever their branches are used, and nonempty fallback tags for every
  cover configuration.

  <strong|Proposition III.8.4.> Assume the patch hypothesis,
  <math|\<beta\>\<in\>\<bbb-R\>>. For bounded measurable complex <math|F>
  local on <math|X>, <math|\<cal-B\>*F> is local on any
  <math|Y\<supseteq\><big|cup><rsub|x\<in\>X>\<Lambda\><rsub|10*\<rho\>>*<around|(|\<iota\>*x|)>>.
  If also <math|k<rsub|\<beta\>><around|(|U<rsup|g>,V<rsup|g\<circ\>\<iota\>>|)>=k<rsub|\<beta\>><around|(|U,V|)>>
  for every fine gauge transformation <math|g>, then
  <math|F\<in\>\<cal-I\><around|(|\<Lambda\><rsub|R><around|(|o|)>|)>>
  implies <math|\<cal-B\>*F\<in\>\<cal-I\>*<around|(|\<Lambda\><rsub|L*R+10*\<rho\>>*<around|(|\<iota\>*o|)>|)>>,
  with the same sup bound. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|back_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136>,
  <hlink|<verbatim|back_cylinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169>.

  Histories satisfy the patch hypothesis, gauge covariance and covariance
  under translations and signed axis permutations at every step. For each
  <math|N,p>, <math|\<cal-B\><rsub|m>> uses coupling
  <math|\<beta\><rsub|N,p,m+1>>; levels grow finer,
  <math|a<rsub|m+1>=a<rsub|m>/L<rsub|m>>,
  <math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1>,
  <math|\<rho\><rsub|m>=<around|(|J<rsub|m+1>+3|)>*L<rsub|m>>. Define

  <\equation*>
    \<cal-B\><rsub|k\<to\>m>=\<cal-B\><rsub|m-1>\<circ\>\<cdots\>\<circ\>\<cal-B\><rsub|k>,<space|1em>r<rsub|k\<to\>k><around|(|r|)>=r,<space|1em>r<rsub|k\<to\>m+1><around|(|r|)>=L<rsub|m>*r<rsub|k\<to\>m><around|(|r|)>+10*\<rho\><rsub|m>,
  </equation*>

  with <math|L<rsub|m>> odd, <math|L<rsub|m>\<geqslant\>3>,
  <math|J<rsub|m>\<geqslant\>4>, identity at <math|m=k>,
  <math|\<tau\><rsub|m>=30*a<rsub|m>*<around|(|J<rsub|m>+5|)>>, and
  <math|<math-up|room><around|(|h,k,r|)>> meaning
  <math|2*<around|(|a<rsub|k>*r+\<tau\><rsub|k>|)>\<less\>a<rsub|h>>.

  <strong|Proposition III.8.5.> Under the patch hypothesis, for every
  <math|\<beta\>>, bounded measurable <math|F,G> local on disjoint coarse
  sets satisfy <math|\<cal-B\>*<around|(|F*G|)>=\<cal-B\>*F*<space|0.17em>\<cal-B\>*G>;
  likewise finite products of <math|F<rsub|i>\<in\>\<cal-I\><around|(|C<rsub|i>|)>>
  on distinct tiling cells. For every history, <math|N,p>,
  <math|h\<leqslant\>k\<leqslant\>m>, finite level-<math|h> set <math|l>, and
  <math|F<rsub|i>\<in\>\<cal-I\>*<around|(|\<Lambda\><rsub|r>*<around|(|\<iota\><rsub|h\<to\>k>*i|)>|)>>,
  <math|<math-up|room><around|(|h,k,r|)>> implies

  <\equation*>
    \<cal-B\><rsub|k\<to\>m>*<big|prod><rsub|i\<in\>l>F<rsub|i>=<big|prod><rsub|i\<in\>l>\<cal-B\><rsub|k\<to\>m>*F<rsub|i>.
  </equation*>

  This also holds for tile copies of one <math|F\<in\>\<cal-I\><around|(|\<Lambda\><rsub|r><around|(|0|)>|)>>,
  with level-<math|m> copies on the right. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|back_factors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150>,
  <hlink|<verbatim|backTo_copies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76>.

  <strong|Proposition III.8.6.> For every history, <math|N,p>,
  <math|k\<leqslant\>m>, pull-back preserves bounded measurability, is
  linear, fixes constants, commutes with conjugation and decreases the sup
  norm. For bounded measurable complex <math|F> at level <math|k> and
  integrable complex <math|g> at level <math|m>, the composite push-forward
  from level <math|m> to <math|k> is integrable and

  <\equation*>
    <big|int><around|(|\<cal-B\><rsup|\<ast\>><rsub|k\<to\>m>*g|)>*F=<big|int>g*\<cal-B\><rsub|k\<to\>m>*F,<space|2em><big|int>\<cal-B\><rsup|\<ast\>><rsub|k\<to\>m>*g=<big|int>g.
  </equation*>

  For <math|h\<leqslant\>k> and every level-<math|h> site <math|i>, pull-back
  sends <math|\<cal-I\>*<around|(|\<Lambda\><rsub|r>*<around|(|\<iota\><rsub|h\<to\>k>*i|)>|)>>
  into <math|\<cal-I\>*<around|(|\<Lambda\><rsub|r<rsub|k\<to\>m><around|(|r|)>>*<around|(|\<iota\><rsub|h\<to\>m>*i|)>|)>>.
  On bounded measurable functions it commutes with signed axis permutations
  followed by translation by <math|\<iota\><rsub|h\<to\>\<cdot\>>*i>, and
  centred level-<math|h> copy maps. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|pushTo_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101>,
  <hlink|<verbatim|backTo_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115>,
  <hlink|<verbatim|backTo_copy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147>.

  <strong|Proposition III.8.7.> For every such history and nonnegative
  integer levels and radii,

  <\equation*>
    \<tau\><rsub|m+1>\<leqslant\><tfrac|2|3>\<tau\><rsub|m>,<space|2em>\<tau\><rsub|m>\<leqslant\><around|(|2/3|)><rsup|m>*\<tau\><rsub|0>\<to\>0,<space|2em>a<rsub|m>*r<rsub|k\<to\>m><around|(|r|)>+\<tau\><rsub|m>\<leqslant\>a<rsub|k>*r+\<tau\><rsub|k>*<space|1em><around|(|k\<leqslant\>m|)>.
  </equation*>

  If <math|h\<leqslant\>k> and <math|<math-up|room><around|(|h,k,r|)>> holds,
  every cone box at <math|m\<geqslant\>k> lies in its centred level-<math|h>
  cell, of physical side <math|a<rsub|h>>. For fixed <math|h,r>, room holds
  for all sufficiently large <math|k\<geqslant\>h>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|scales_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150>,
  <hlink|<verbatim|room_fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169>,
  <hlink|<verbatim|plenty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: periodic lattices, Haar measure,
    <hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>.

    <item>III.1: probability kernels, the patch hypothesis proved in
    <hlink|<verbatim|Next.Foundations.branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71>,
    covariance, <hlink|<verbatim|History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206>.

    <item>IV.1: cells, copies, <hlink|<verbatim|Tiling.planted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38>
    (chessboard estimate).

    <item>Polchinski's formal heat equation; weighted <math|\<ell\><rsup|1>>
    estimates; Fubini. III.14 supplies Part A's inputs.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  For finite <math|I>, eligible symmetric <math|V> and symmetric
  <math|\<Gamma\>>, the unmarked series represents <math|log
  \<bbb-E\><rsub|t*\<Gamma\>>*e<rsup|V>> formally by Wick\<#2019\>s rule.
  Contractions and joins generate connected coefficients. Diameter and height
  inequalities make exponential weights multiply; induction and telescoping
  give polynomial and difference bounds.

  Given the fine field, site tags are independent; coarse links are
  independent conditional on those tags. Unused variables integrate out.
  Locality iterates through the affine radius recurrence; decay of the
  physical budget keeps cones within cells.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>For finite input norms and positive output rank,
    <math|<around|\<\|\|\>|\<Delta\><rsub|\<Gamma\>>*H|\<\|\|\>><rsub|\<sigma\>>\<leqslant\><around|\<\|\|\>|H|\<\|\|\>><rsub|\<sigma\>><around|[|\<Gamma\>|]><rsub|\<sigma\>>>
    and <math|<around|\<\|\|\>|H*\<star\><rsub|\<Gamma\>>*G|\<\|\|\>><rsub|\<sigma\>>\<leqslant\><around|\<\|\|\>|H|\<\|\|\>><rsub|\<sigma\>><around|[|\<Gamma\>|]><rsub|\<sigma\>><around|\<\|\|\>|G|\<\|\|\>><rsub|\<sigma\>>>.
    Diameter inequalities absorb internal sums; telescoping gives difference
    factors <math|2,3>. <hlink|<verbatim|Held.bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L102>.

    <item>Heat-order induction gives bounds; slot counting gives support. The
    marked norm also controls scalars. <hlink|<verbatim|journey>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127>.

    <item>Frame routes stay within <math|9*\<rho\>>; uniqueness makes
    selected frames local; connectors fit within <math|10*\<rho\>>.
    <hlink|<verbatim|patch_dep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L115-L155>.

    <item>Disjoint coarse sets use disjoint tags and bonds, giving
    factorisation. <hlink|<verbatim|back_factors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150>.

    <item>Physical radius increments are at most <math|\<tau\><rsub|m>/3>;
    combine with budget decay and iterate.
    <hlink|<verbatim|scales_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145>.

    <item>For <math|h\<leqslant\>k\<leqslant\>N>, bounded measurable <math|O>
    at level <math|N> and <math|F\<in\>\<cal-I\><around|(|\<Lambda\><rsub|w><around|(|0|)>|)>>
    at level <math|k> satisfying <math|<math-up|room><around|(|h,k,w|)>>,
    expand replicated differences over subsets and apply factorisation and
    duality; the remaining factors stay inside one push-forward.
    <hlink|Joint.restored|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Joint.lean#L102-L128>.

    <item>For central-cell observables under IV.1\<#2019\>s chessboard
    hypotheses, expand differences of products over nonempty subsets and
    bound each by its chessboard roots. <hlink|tariff|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Positive heat order uses higher ranks at the same coupling order; the
  polynomial may depend on the fixed orders. Unmarked scalar bounds are
  vacuous. Conditional factorisation allows overlapping fine windows without
  asserting independence under the fine Gibbs law.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|e,n,j>: coupling order, rank, heat order.
  <math|\<Delta\><rsub|\<Gamma\>>,\<star\><rsub|\<Gamma\>>>:
  <hlink|<verbatim|lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17>,
  <hlink|<verbatim|bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21>.
  <math|\<Lambda\><rsub|r>>: periodic <math|\<ell\><rsup|\<infty\>>> box
  (<hlink|<verbatim|window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L22-L23>).
  <math|\<iota\><rsub|h\<to\>m>>: embedded site.
  <math|\<cal-B\><rsup|\<ast\>>>: iterated push-forward
  (<hlink|<verbatim|pushTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29>).
  Copies translate, reflect and conjugate on odd tiles.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  III.14 must supply covariance bounds; the relation to polymer activities
  remains tentative. The marked normalised Gaussian interpretation remains
  provisional (probable). Non-summable infinite-lattice sums are assigned
  zero; unmarked scalars require separate convergence arguments; no
  convergence in <math|g> is asserted. Support packages need separate
  outlines.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-8.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|IV.1|IV-1.tm>, <hlink|III.16|III-16.tm>, <hlink|II.2|II-2.tm>,
  <hlink|II.1|II-1.tm>, <hlink|III.6|III-6.tm>.

  <strong|Referenced by:> <hlink|III.14|III-14.tm>, <hlink|VII.2|VII-2.tm>,
  <hlink|III.13|III-13.tm>, <hlink|III.4|III-4.tm>, <hlink|III.11|III-11.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 4,147 attributed lines; 871 line-counted
  declarations; 1,114 assigned declaration names. Of the assigned names,
  1,066 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Push/GRID_APPROXIMATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION>
    \V 1,093 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Carrel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel>
    \V 488 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Forms/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms>
    \V 412 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Skiff/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff>
    \V 306 lines.

    <item>work package <hlink|<verbatim|YM/AnalyticNext/QUARTIC_MATCH/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH>
    \V 302 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Bulk/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk>
    \V 289 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Jetty/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty>
    \V 227 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Camera/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Camera>
    \V 194 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Room/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room>
    \V 152 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Steam/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam>
    \V 138 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Rudder/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder>
    \V 136 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Packets/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets>
    \V 94 lines.

    <item>work package <hlink|<verbatim|YM/WilsonBulk/Web/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Web>
    \V 78 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Isles/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Isles>
    \V 68 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Glyph/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph>
    \V 66 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Anchor/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Anchor>
    \V 43 lines.

    <item>work package <hlink|<verbatim|YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_REAL_MODELS_ESTIMATES_20261012>
    \V 34 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Cloud/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud>
    \V 27 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|StepData.covary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67>

    <item><hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>

    <item><hlink|<verbatim|Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>

    <item><hlink|<verbatim|laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24>

    <item><hlink|<verbatim|Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113>

    <item><hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>

    <item><hlink|<verbatim|LocalOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197>

    <item><hlink|<verbatim|a_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104>

    <item><hlink|<verbatim|shrinks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109>

    <item><hlink|<verbatim|embeds_scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189>

    <item><hlink|<verbatim|site_dep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L160-L164>

    <item><hlink|<verbatim|connector_dep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L166-L184>

    <item><hlink|<verbatim|window_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L33-L42>

    <item><hlink|<verbatim|window_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L52-L60>

    <item><hlink|<verbatim|reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65>

    <item><hlink|<verbatim|visits_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L67-L83>

    <item><hlink|<verbatim|route_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L85-L99>

    <item><hlink|<verbatim|grows_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L103-L104>

    <item><hlink|<verbatim|tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107>

    <item><hlink|<verbatim|tail_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121>

    <item><hlink|<verbatim|tail_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133>

    <item><hlink|<verbatim|room>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153>

    <item><hlink|<verbatim|anchor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L24>

    <item><hlink|<verbatim|anchor_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L31-L45>

    <item><hlink|<verbatim|tiling_window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L49-L85>

    <item><hlink|<verbatim|window_fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L87-L91>

    <item><hlink|<verbatim|expansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97>

    <item><hlink|<verbatim|grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99>

    <item><hlink|<verbatim|backTo_orient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126>

    <item><hlink|<verbatim|backTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25>

    <item><hlink|<verbatim|backTo_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L32-L34>

    <item><hlink|<verbatim|backTo_env>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47>

    <item><hlink|<verbatim|backTo_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55>

    <item><hlink|<verbatim|backTo_const>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60>

    <item><hlink|<verbatim|backTo_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67>

    <item><hlink|<verbatim|backTo_star>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73>

    <item><hlink|<verbatim|pushTo_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89>

    <item><hlink|<verbatim|back>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22>

    <item><hlink|<verbatim|back_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L41-L51>

    <item><hlink|<verbatim|back_env>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L53-L55>

    <item><hlink|<verbatim|back_natural>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L76-L84>

    <item><hlink|<verbatim|back_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L88-L97>

    <item><hlink|<verbatim|actualEdges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L100>

    <item><hlink|<verbatim|state_reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L107-L114>

    <item><hlink|<verbatim|noiseLink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L28>

    <item><hlink|<verbatim|perLink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32>

    <item><hlink|<verbatim|perSite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35>

    <item><hlink|<verbatim|density_parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L39-L47>

    <item><hlink|<verbatim|noiseLink_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L51-L55>

    <item><hlink|<verbatim|perLink_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L62-L67>

    <item><hlink|<verbatim|site_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L83-L85>

    <item><hlink|<verbatim|parts_back>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L87-L97>

    <item><hlink|<verbatim|back_cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40>

    <item><hlink|<verbatim|backTo_cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51>

    <item><hlink|<verbatim|copy_window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L57-L66>

    <item><hlink|<verbatim|sum_ignores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L137-L143>

    <item><hlink|<verbatim|sum_independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L145-L156>

    <item><hlink|<verbatim|Reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L19>

    <item><hlink|<verbatim|pi_ignores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L88-L96>

    <item><hlink|<verbatim|pi_independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L98-L109>

    <item><hlink|<verbatim|rooted_translates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Translate.lean#L104-L109>

    <item><hlink|<verbatim|StepData.isKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208>

    <item><hlink|<verbatim|StepData.connector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42>

    <item><hlink|<verbatim|likelihood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51>

    <item><hlink|<verbatim|StepData.density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72>

    <item><hlink|<verbatim|StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>

    <item><hlink|<verbatim|Calendar.BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128>

    <item><hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>

    <item><hlink|<verbatim|Levels.transition_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159>

    <item><hlink|<verbatim|Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>

    <item><hlink|<verbatim|frameMass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136>

    <item><hlink|<verbatim|Patch.frameMass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151>

    <item><hlink|<verbatim|Patch.frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155>

    <item><hlink|<verbatim|Patch.Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>

    <item><hlink|<verbatim|Patch.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>

    <item><hlink|<verbatim|Cloud.Clockwise.linear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud/Arch.lean#L46-L49>

    <item><hlink|<verbatim|Cot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19>

    <item><hlink|<verbatim|WireCot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24>

    <item><hlink|<verbatim|Cot.lap'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L49-L54>

    <item><hlink|<verbatim|Cot.bridge'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L55-L61>

    <item><hlink|<verbatim|bridge_compare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L13-L24>

    <item><hlink|<verbatim|Held.lap_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L26-L29>

    <item><hlink|<verbatim|Held.bridge_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L31-L35>

    <item><hlink|file|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean>

    <item><hlink|<verbatim|Tape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L17>

    <item><hlink|<verbatim|Flake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L18>

    <item><hlink|<verbatim|Ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24>

    <item><hlink|<verbatim|Ground.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L35>

    <item><hlink|<verbatim|Held>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61>

    <item><hlink|<verbatim|ensign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L78-L84>

    <item><hlink|<verbatim|unary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L23-L46>

    <item><hlink|<verbatim|Held.lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L58>

    <item><hlink|<verbatim|lap_compare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L72-L79>

    <item><hlink|<verbatim|Line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L14>

    <item><hlink|<verbatim|Wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22>

    <item><hlink|<verbatim|Alley>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L38-L43>

    <item><hlink|<verbatim|Cot.raft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L72-L89>

    <item><hlink|<verbatim|lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L19-L20>

    <item><hlink|<verbatim|street>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L22-L23>

    <item><hlink|<verbatim|raft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L56>

    <item><hlink|<verbatim|Wage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11>

    <item><hlink|<verbatim|bleach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38>

    <item><hlink|<verbatim|Held.bleach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L74-L79>

    <item><hlink|<verbatim|arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L26-L42>

    <item><hlink|<verbatim|root_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L49-L69>

    <item><hlink|<verbatim|binary_EN>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L71-L99>

    <item><hlink|<verbatim|Glyph.breaktime>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L26-L32>

    <item><hlink|<verbatim|Glyph.cloudy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L43-L73>

    <item><hlink|<verbatim|waxed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Towers.lean#L15>

    <item><hlink|<verbatim|Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17>

    <item><hlink|<verbatim|Loom.cage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L18>

    <item><hlink|<verbatim|Sings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36>

    <item><hlink|<verbatim|Lyrics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L37>

    <item><hlink|<verbatim|Pearl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Cube.lean#L24>

    <item><hlink|<verbatim|purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40>

    <item><hlink|<verbatim|beam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15>

    <item><hlink|<verbatim|Necks.slushy_uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95>

    <item><hlink|<verbatim|Dyad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17>

    <item><hlink|<verbatim|Dyad.pocket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L39-L48>

    <item><hlink|<verbatim|Dyad.cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L52-L63>

    <item><hlink|<verbatim|pocket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28>

    <item><hlink|<verbatim|fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33>

    <item><hlink|<verbatim|cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75>

    <item><hlink|<verbatim|clocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L20-L21>

    <item><hlink|<verbatim|reel_stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L22-L23>

    <item><hlink|<verbatim|shim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L23>

    <item><hlink|<verbatim|shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L24>

    <item><hlink|<verbatim|rungs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L25-L26>

    <item><hlink|<verbatim|skate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31>

    <item><hlink|<verbatim|climbs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L38-L40>

    <item><hlink|<verbatim|Lit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L52>

    <item><hlink|<verbatim|shaker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71>

    <item><hlink|<verbatim|cruising>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L72-L73>

    <item><hlink|<verbatim|across>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L85>

    <item><hlink|<verbatim|strict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L25>

    <item><hlink|<verbatim|allG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L26>

    <item><hlink|<verbatim|paving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L34-L48>

    <item><hlink|<verbatim|Grain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L23>

    <item><hlink|<verbatim|unilateral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L33>

    <item><hlink|<verbatim|pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L34-L35>

    <item><hlink|<verbatim|wheels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L37-L38>

    <item><hlink|<verbatim|bank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L42-L44>

    <item><hlink|<verbatim|burn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46>

    <item><hlink|<verbatim|blaze>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L55-L62>

    <item><hlink|<verbatim|taps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14>

    <item><hlink|<verbatim|postage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L88-L101>

    <item><hlink|<verbatim|Eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L17-L20>

    <item><hlink|<verbatim|predecessors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L34-L48>

    <item><hlink|<verbatim|off>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72>

    <item><hlink|<verbatim|ember>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74>

    <item><hlink|<verbatim|cinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75>

    <item><hlink|<verbatim|smoulder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80>

    <item><hlink|<verbatim|appropriate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-8-1>

  <\itemize-minus>
    <item><strong|K-III.8.1> <hlink|<verbatim|navigation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83>
    <em|(key result)> \V For fixed orders, the formal connected
    heat-propagation map is bounded in weighted-norm (Cot) estimates by a
    polynomial in the input width W, uniformly in the cell count, scale and
    stage, for both absolute values and differences.
  </itemize-minus>

  <label|k-iii-8-2>

  <\itemize-minus>
    <item><strong|K-III.8.2> <hlink|<verbatim|journey>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127>
    <em|(key result)> \V There is a polynomial such that differences in the
    inputs of the skate recursion are controlled by a polynomially larger
    difference in outputs, uniformly in geometry.
  </itemize-minus>

  <label|k-iii-8-3>

  <\itemize-minus>
    <item><strong|K-III.8.3> <hlink|<verbatim|back_factors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150>
    <em|(numbered result)> \V The back-transformation of a product of locally
    supported observables on disjoint regions factors into the product of
    back-transformations.
  </itemize-minus>

  <label|k-iii-8-4>

  <\itemize-minus>
    <item><strong|K-III.8.4> <hlink|<verbatim|back_cylinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169>
    <em|(numbered result)> \V Under gauge covariance, pulling back a local
    observable supported in a window yields one supported in an enlarged fine
    window.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.7 Matching the Wilson energy to
  fourth order|III-7.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-8.tm>|<hlink|III.9 The marginal flow: the running
  coupling and its reset \<rightarrow\>|III-9.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.8. Connected activities and backward dependence
    cones \U Yang\UMills informalization>
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
    <associate|auto-10|<tuple|8|6>>
    <associate|auto-11|<tuple|9|6>>
    <associate|auto-12|<tuple|9.1|7>>
    <associate|auto-13|<tuple|10|12>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|3>>
    <associate|auto-4|<tuple|2|4>>
    <associate|auto-5|<tuple|3|4>>
    <associate|auto-6|<tuple|4|4>>
    <associate|auto-7|<tuple|5|5>>
    <associate|auto-8|<tuple|6|5>>
    <associate|auto-9|<tuple|7|5>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|iii8-connected-activities-and-backward-dependence-cones|<tuple|?|1>>
    <associate|k-iii-8-1|<tuple|10|12>>
    <associate|k-iii-8-2|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-8-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-iii-8-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|6>>
    <associate|part-a|<tuple|1.1|2>>
    <associate|part-b|<tuple|1.2|3>>
    <associate|unit-difficulty|<tuple|7|5>>
    <associate|unit-inputs|<tuple|1.2|4>>
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

      <with|par-left|<quote|1tab>|Part A <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Part B <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      What it uses> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Strategy> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Steps> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Code
      dependencies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Lean
      source> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Additional source locations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Key
      statements> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>