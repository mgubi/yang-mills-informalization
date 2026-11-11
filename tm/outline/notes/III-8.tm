<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.7 Matching the Wilson energy to
  fourth order (notes)|III-7.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-8.tm>|<hlink|III.9 The marginal flow: the running
  coupling and its reset (notes) \<rightarrow\>|III-9.tm>>

  <ym-title|III.8. Connected activities and backward dependence cones \V
  detailed notes><label|iii8-connected-activities-and-backward-dependence-cones--detailed-notes>

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

    <with|par-left|1tab|A. Connected heat coefficients
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|B. Backward dependence cones
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.8: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-8.tm>.
  </quotation>

  <hlink|Unit page|../units/III-8.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/RG08/Steam/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam>,
  <hlink|<verbatim|YM/RG08/Forms/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms>,
  <hlink|<verbatim|YM/RG08/Skiff/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff>,
  <hlink|<verbatim|YM/RG08/Jetty/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty>,
  <hlink|<verbatim|YM/Push/GRID_APPROXIMATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION>.
  The support packages are listed in Ÿ7. <strong|Size:> 4,147 lines in the
  main-theorem closure:

  <\itemize-minus>
    <item>1,093 lines for the backward cones (<verbatim|GRID_APPROXIMATION>);

    <item>1,083 lines for the connected heat expansion (<verbatim|Steam> 138,
    <verbatim|Forms> 412, <verbatim|Skiff> 306, <verbatim|Jetty> 227);

    <item>about 1,970 lines in the support packages listed in Ÿ7.
  </itemize-minus>

  The unit has two independent halves.

  <\itemize-dot>
    <item><strong|Part A, connected activities.> Bounds at fixed order for a
    recursive heat expansion, organised by powers of the coupling <math|g>,
    the heat time <math|t> and the field. For finite index sets and symmetric
    inputs, its unmarked coefficients satisfy the formal equation for
    <math|log \<bbb-E\><rsub|t*\<Gamma\>>*e<rsup|V>>. A second recursion
    treats one marked insertion. Both admit polynomial bounds in an input
    size <math|W> and Lipschitz bounds for differences, uniform in the index
    set and geometry.

    <item><strong|Part B, backward dependence cones.> The pull-back of a
    coarse observable through the block-spin kernel of III.1 is its
    conditional expectation given the fine field. It is local in an explicit
    fine window, and pull-backs of observables on disjoint coarse sets
    multiply exactly. Along a history the radius of the window grows by an
    explicit affine map whose increments, in physical units, decay
    geometrically.
  </itemize-dot>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <subsection|Part A><label|part-a>

  <em|Conventions.>

  <\itemize-minus>
    <item><math|I> is an arbitrary set (of cells), <math|d> is a pseudometric
    on <math|I>, and <math|\<sigma\>\<geqslant\>0>.

    <item>A rank-<math|n> tensor is a function
    <math|F:I<rsup|n>\<to\>\<bbb-R\>> with ordered slots and no symmetry
    factors. For a tuple <math|x\<in\>I<rsup|n>>,
    <math|<math-up|diam><rsub|d><around|(|x|)>=max <around|(|0,max<rsub|i,j>
    d<around|(|x<rsub|i>,x<rsub|j>|)>|)>>, with value <math|0> for the empty
    tuple.

    <item>The <em|rooted norm> is
  </itemize-minus>

  <\equation*>
    <around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>=max<rsub|1\<leqslant\>i\<leqslant\>n>
    sup<rsub|z\<in\>I> <big|sum><rsub|x\<in\>I<rsup|n>,x<rsub|i>=z><around|\||F<around|(|x|)>|\|>*e<rsup|\<sigma\><math-up|diam><rsub|d><around|(|x|)>>\<in\><around|[|0,\<infty\>|]>.
  </equation*>

  For <math|n=0> set <math|<around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>=0>:
  a rooted bound imposes no condition on the scalar coefficient. Suprema over
  empty index sets also have value <math|0>.

  <\itemize-minus>
    <item>A <em|propagator> is any <math|\<Gamma\>:I\<times\>I\<to\>\<bbb-R\>>;
    symmetry is not assumed. It is measured by its weighted row and column
    sums,
  </itemize-minus>

  <\equation*>
    <around|[|\<Gamma\>|]><rsub|\<sigma\>>=max <around*|(|sup<rsub|u>
    <big|sum><rsub|v><around|\||\<Gamma\><around|(|u,v|)>|\|>*e<rsup|\<sigma\>*d<around|(|u,v|)>>,sup<rsub|v>
    <big|sum><rsub|u><around|\||\<Gamma\><around|(|u,v|)>|\|>*e<rsup|\<sigma\>*d<around|(|u,v|)>>|)>.
  </equation*>

  <\itemize-minus>
    <item>A pair <math|<around|(|F,F<rprime|'>|)>> is
    <em|<math|<around|(|W,\<delta\>|)>>-controlled> if
    <math|<around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>\<leqslant\>W>,
    <math|<around|\<lVert\>|F<rprime|'>|\<rVert\>><rsub|\<sigma\>>\<leqslant\>W>
    and <math|<around|\<lVert\>|F-F<rprime|'>|\<rVert\>><rsub|\<sigma\>>\<leqslant\>W*\<delta\>>.
    The same definition applies to a pair of propagators, with
    <math|<around|[|\<cdummy\>|]><rsub|\<sigma\>>> in place of
    <math|<around|\<lVert\>|\<cdummy\>|\<rVert\>><rsub|\<sigma\>>>.

    <item>A <em|polynomial majorant> is a function <math|P> with
    <math|0\<leqslant\>P<around|(|x|)>\<leqslant\>C*x<rsup|t>> for all
    <math|x\<geqslant\>1>, for some <math|C\<geqslant\>0> and
    <math|t\<in\>\<bbb-N\>>. The class is closed under sums and products.
  </itemize-minus>

  <em|Formal potentials.> A formal potential is a family
  <math|V=<around|(|V<rsub|e,n>|)><rsub|e,n\<geqslant\>0>> of rank-<math|n>
  tensors; <math|V<rsub|e,n>> is the coefficient of <math|g<rsup|e>> with
  <math|n> field variables. In Gaussian applications the variables may
  include spectators, on which <math|\<Gamma\>> vanishes. <math|V> is
  <em|eligible> if <math|V<rsub|0,n>=0> for all <math|n>, and
  <math|V<rsub|e,n>\<ne\>0> implies <math|n\<leqslant\>e+2> and <math|e+n>
  even. Eligibility does not require symmetry.

  <em|Heat coefficients.> The heat coefficients
  <math|V<rsup|<around|(|j|)>>=V<rsup|<around|(|j|)>><around|(|\<Gamma\>,V|)>>
  are defined by <math|V<rsup|<around|(|0|)>>=V> and

  <\equation*>
    V<rsup|<around|(|j+1|)>><rsub|e,n>=<frac|1|j+1>*<around*|[|<binom|n+2|2>\<Delta\><rsub|\<Gamma\>>*V<rsup|<around|(|j|)>><rsub|e,n+2>+<big|sum><rsub|c=0><rsup|n><big|sum><rsub|i=0><rsup|j><big|sum><rsub|a=0><rsup|e><frac|<around|(|c+1|)>*<around|(|n-c+1|)>|2>*V<rsup|<around|(|i|)>><rsub|a,c+1>*\<star\><rsub|\<Gamma\>>*V<rsup|<around|(|j-i|)>><rsub|e-a,n-c+1>|]>.<space|2em><around|(|<math-up|A1>|)>
  </equation*>

  Here <math|\<Delta\><rsub|\<Gamma\>>> (contraction) and
  <math|\<star\><rsub|\<Gamma\>>> (join) are defined in Step A1. For infinite
  <math|I>, the recursions assign value <math|0> to a sum that is not
  summable. The bounds below justify the required sums absolutely for
  positive-rank unmarked outputs and for all marked outputs; they make no
  convergence assertion for unmarked scalar contractions. The formal
  heat-equation interpretation for finite <math|I> and symmetric
  <math|V,\<Gamma\>> is given in A1.

  <strong|Proposition III.8.1 (bounds at fixed order for the connected heat
  coefficients).> Fix <math|j,e,n\<in\>\<bbb-N\>> and put

  <\equation*>
    T<rsub|j><around|(|e,n|)>=<around|{|<around|(|a,r|)>:1\<leqslant\>a\<less\>e,1\<leqslant\>r\<leqslant\>a+2|}>\<cup\><around|{|<around|(|e,r|)>:1\<leqslant\>e,n\<less\>r\<leqslant\>e+2|}>,
  </equation*>

  enlarged by <math|<around|(|e,n|)>> when <math|j=0>, <math|e\<geqslant\>1>
  and <math|1\<leqslant\>n\<leqslant\>e+2>. There is a polynomial majorant
  <math|P> with the following property. Let <math|I> be a set, <math|d> a
  pseudometric on it, <math|\<sigma\>\<geqslant\>0>,
  <math|\<delta\>\<geqslant\>0>, <math|W\<geqslant\>1>, <math|V,V<rprime|'>>
  eligible and <math|\<Gamma\>,\<Gamma\><rprime|'>> propagators. Suppose
  <math|<around|(|\<Gamma\>,\<Gamma\><rprime|'>|)>> is
  <math|<around|(|W,\<delta\>|)>>-controlled, and so is
  <math|<around|(|V<rsub|a,r>,V<rprime|'><rsub|a,r>|)>> for every
  <math|<around|(|a,r|)>\<in\>T<rsub|j><around|(|e,n|)>>. Then
  <math|<around*|(|V<rsup|<around|(|j|)>><rsub|e,n><around|(|\<Gamma\>,V|)>,V<rsup|<around|(|j|)>><rsub|e,n><around|(|\<Gamma\><rprime|'>,V<rprime|'>|)>|)>>
  is <math|<around|(|P<around|(|W|)>,\<delta\>|)>>-controlled.

  <\itemize-minus>
    <item><math|P> depends on <math|<around|(|j,e,n|)>> only. It does not
    depend on <math|I>, <math|d>, <math|\<sigma\>> or <math|\<delta\>>, hence
    not on the number of cells, the period, the scale or the stage at which
    it is applied.

    <item>For <math|j\<geqslant\>1>, inputs at the same order <math|e> have
    strictly higher rank.

    <item>For <math|n=0> the conclusion is empty.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|YM.RG08.Steam.navigation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83>,
  input range <hlink|<verbatim|taps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14>,
  norms <hlink|<verbatim|Held>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61>,
  <hlink|<verbatim|Wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22>,
  <hlink|<verbatim|Cot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19>,
  <hlink|<verbatim|WireCot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24>,
  majorants <hlink|<verbatim|Wage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11>.

  <strong|Proposition III.8.2 (support; the heat-time series is finite).> Let
  <math|V> be eligible and <math|\<Gamma\>> arbitrary.

  <\itemize-minus>
    <item>Every <math|V<rsup|<around|(|j|)>>> is eligible.

    <item><math|V<rsup|<around|(|j|)>><rsub|e,n>\<ne\>0> implies
    <math|n+2*j\<leqslant\>3*e>.

    <item>For <math|j\<geqslant\>1>, <math|V<rsup|<around|(|j|)>>> is
    symmetric under permutations of its slots.
  </itemize-minus>

  Hence, at fixed <math|<around|(|e,n|)>>, the heat-time series is zero if
  <math|n\<gtr\>3*e> and otherwise is a polynomial in <math|t> of degree at
  most <math|<around|\<lfloor\>|<around|(|3*e-n|)>/2|\<rfloor\>>>. For every
  real <math|t> the complete series is

  <\equation*>
    \<cal-E\><rsub|t><around|(|V|)><rsub|e,n>=<big|sum><rsub|j=0><rsup|3*e>t<rsup|j>*V<rsup|<around|(|j|)>><rsub|e,n>=V<rsub|e,n>+\<cal-R\><rsub|t><around|(|V|)><rsub|e,n>,<space|2em>\<cal-R\><rsub|t><around|(|V|)><rsub|e,n>=<big|sum><rsub|j=1><rsup|3*e>t<rsup|j>*V<rsup|<around|(|j|)>><rsub|e,n>,
  </equation*>

  and <math|\<cal-E\><rsub|t><around|(|V|)>> is eligible. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|preserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64>,
  <hlink|<verbatim|live>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70>,
  <hlink|<verbatim|off>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72>,
  <hlink|<verbatim|coal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75>,
  <hlink|<verbatim|ember>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74>,
  <hlink|<verbatim|cinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75>,
  <hlink|<verbatim|smoulder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80>,
  <hlink|<verbatim|appropriate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89>.

  <strong|Proposition III.8.3 (expansion with one marked insertion).>

  <em|Test functions and their norms.> Let <math|\<cal-S\>> be the real
  vector space of smooth real-valued functions on <math|\<bbb-R\><rsup|4>>
  whose derivatives of every order have polynomial growth. For
  <math|k\<in\>\<bbb-N\>> and <math|\<sigma\>\<gtr\>0>, using the Euclidean
  norm <math|<around|\||y|\|>>, put

  <\equation*>
    <around|\<lVert\>|f|\<rVert\>><rsub|k,\<sigma\>>=max<rsub|<around|\||\<alpha\>|\|>\<leqslant\>k>
    sup<rsub|y\<in\>\<bbb-R\><rsup|4>><around|\||\<partial\><rsup|\<alpha\>>*f<around|(|y|)>|\|>*e<rsup|-\<sigma\><around|\||y|\|>>,
  </equation*>

  and, for a real-linear functional <math|\<lambda\>> on <math|\<cal-S\>>,
  <math|<around|\<lVert\>|\<lambda\>|\<rVert\>><rsup|\<ast\>><rsub|k,\<sigma\>>=sup
  <around|{|<around|\||\<lambda\><around|(|f|)>|\|>:<around|\<lVert\>|f|\<rVert\>><rsub|k,\<sigma\>>\<leqslant\>1|}>>.

  <em|Marked tensors and the marked norm.> A marked rank-<math|n> tensor
  assigns to each <math|x\<in\>I<rsup|n>> a real-linear functional
  <math|M<around|(|x|)>> on <math|\<cal-S\>>. Let
  <math|h:I\<to\><around|[|0,\<infty\>|)>> be 1-Lipschitz for <math|d> (a
  height, for instance a distance to the insertion), and set
  <math|h<around|(|x|)>=max <around|(|0,max<rsub|i>
  h<around|(|x<rsub|i>|)>|)>> for a tuple <math|x>. The marked norm is the
  unrooted weighted <math|\<ell\><rsup|1>> norm

  <\equation*>
    <around|\<lVert\>|M|\<rVert\>><rsub|h>=<big|sum><rsub|x\<in\>I<rsup|n>><around|\<lVert\>|M<around|(|x|)>|\<rVert\>><rsup|\<ast\>><rsub|k,\<sigma\>>*e<rsup|\<sigma\>*h<around|(|x|)>>.
  </equation*>

  Unlike the rooted norm, it gives a genuine bound for <math|n=0>. A pair
  <math|<around|(|M,M<rprime|'>|)>> is <math|<around|(|U,\<delta\>|)>>-controlled
  if <math|<around|\<lVert\>|M|\<rVert\>><rsub|h>\<leqslant\>U>,
  <math|<around|\<lVert\>|M<rprime|'>|\<rVert\>><rsub|h>\<leqslant\>U> and
  <math|<around|\<lVert\>|M-M<rprime|'>|\<rVert\>><rsub|h>\<leqslant\>U*\<delta\>>.

  <em|Marked heat coefficients.> For a marked series
  <math|F=<around|(|F<rsub|e,n>|)>> they are <math|M<rsup|<around|(|0|)>>=F>
  and

  <\equation*>
    M<rsup|<around|(|j+1|)>><rsub|e,n>=<frac|1|j+1>*<around*|[|<binom|n+2|2>\<Delta\><rsub|\<Gamma\>>*M<rsup|<around|(|j|)>><rsub|e,n+2>+<big|sum><rsub|c=0><rsup|n><big|sum><rsub|i=0><rsup|j><big|sum><rsub|a=0><rsup|e><around|(|c+1|)>*<around|(|n-c+1|)>*M<rsup|<around|(|i|)>><rsub|a,c+1>*\<star\><rsub|\<Gamma\>>*V<rsup|<around|(|j-i|)>><rsub|e-a,n-c+1>|]>.
  </equation*>

  The cross term has twice the coefficient of its unmarked counterpart. The
  recursive outputs are initially maps on test functions; the bounds below
  prove that they are real-linear. Their interpretation as a normalised
  Gaussian expectation is discussed in Ÿ7.

  (i) <em|Fixed-order bound.> Fix <math|j,e,n>. There is a polynomial
  majorant <math|P> with the following property, for all <math|I,d,h> as
  above, <math|\<sigma\>\<gtr\>0>, <math|k\<in\>\<bbb-N\>>,
  <math|\<delta\>\<geqslant\>0>, <math|W\<geqslant\>1>,
  <math|U\<geqslant\>0>, eligible <math|V,V<rprime|'>>, propagators
  <math|\<Gamma\>,\<Gamma\><rprime|'>> and marked series
  <math|F,F<rprime|'>>. Assume:

  <\itemize-minus>
    <item><math|<around|(|\<Gamma\>,\<Gamma\><rprime|'>|)>> is
    <math|<around|(|W,\<delta\>|)>>-controlled;

    <item>the unmarked inputs <math|<around|(|V<rsub|a,r>,V<rprime|'><rsub|a,r>|)>>
    with <math|1\<leqslant\>a\<leqslant\>e> and
    <math|1\<leqslant\>r\<leqslant\>a+2> are
    <math|<around|(|W,\<delta\>|)>>-controlled;

    <item>the marked inputs <math|<around|(|F<rsub|a,r>,F<rprime|'><rsub|a,r>|)>>
    are <math|<around|(|U,\<delta\>|)>>-controlled for: <math|a\<less\>e>
    (any <math|r>); or <math|a=e> and <math|r\<gtr\>n>; or <math|j=0> and
    <math|<around|(|a,r|)>=<around|(|e,n|)>>.
  </itemize-minus>

  Then <math|<around*|(|M<rsup|<around|(|j|)>><rsub|e,n><around|(|\<Gamma\>,V,F|)>,M<rsup|<around|(|j|)>><rsub|e,n><around|(|\<Gamma\><rprime|'>,V<rprime|'>,F<rprime|'>|)>|)>>
  is <math|<around|(|P<around|(|W|)>*U,\<delta\>|)>>-controlled, with
  real-linear output values. The majorant depends only on
  <math|<around|(|j,e,n|)>>; in particular it is independent of
  <math|k,\<sigma\>> and the height <math|h>.

  (ii) <em|Support.> Let <math|l\<in\>\<bbb-N\>>. If <math|V> is eligible and
  <math|F<rsub|a,r>\<ne\>0> implies <math|r\<leqslant\>l+a> for every
  <math|a,r>, then <math|M<rsup|<around|(|j|)>><rsub|e,n>\<ne\>0> implies
  <math|n+2*j\<leqslant\>l+3*e> and <math|n\<leqslant\>l+e>.

  (iii) <em|Full positive-time part.> Fix <math|l,e,n>. There is a polynomial
  majorant <math|P> such that the pair

  <\equation*>
    <big|sum><rsub|j=1><rsup|l+3*e>t<rsup|j>*M<rsup|<around|(|j|)>><rsub|e,n><around|(|\<Gamma\>,V,F|)>,<space|2em><big|sum><rsub|j=1><rsup|l+3*e>t<rsup|j>*M<rsup|<around|(|j|)>><rsub|e,n><around|(|\<Gamma\><rprime|'>,V<rprime|'>,F<rprime|'>|)>
  </equation*>

  is <math|<around|(|P<around|(|W|)>*U,\<delta\>|)>>-controlled for every
  real <math|t> with <math|<around|\||t|\|>\<leqslant\>W>. The hypotheses are
  those of (i), with marked inputs required only for <math|a\<less\>e>, or
  <math|a=e> and <math|r\<gtr\>n>. By (ii), this is the whole positive-time
  part when both <math|F<rsub|a,r>> and <math|F<rprime|'><rsub|a,r>> vanish
  for <math|r\<gtr\>l+a>, for every <math|a,r>.

  <em|Status:> theorem. This is the form in which the main theorem uses Part
  A (in III.14). <em|Lean:> <hlink|<verbatim|journey>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127>,
  <hlink|<verbatim|full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68>,
  <hlink|<verbatim|registry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36>.
  Test space: <hlink|<verbatim|Pearl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Cube.lean#L24>.
  Norms: <hlink|<verbatim|Sings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36>,
  <hlink|<verbatim|Dyad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17>,
  <hlink|<verbatim|purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40>,
  <hlink|<verbatim|beam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15>,
  <hlink|<verbatim|Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17>,
  <hlink|<verbatim|fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33>.

  <subsection|Part B><label|part-b>

  <em|Setting.>

  <\itemize-minus>
    <item>The gauge group is as in I.1, with its Haar probability measure.

    <item>A block-spin step (III.1) maps a fine periodic lattice to a coarse
    one with odd block factor <math|L\<geqslant\>3>. The coarse site <math|x>
    sits at the fine site <math|\<iota\>*x>.

    <item>The kernel is built from patches: boxes of radius
    <math|\<rho\>=<around|(|J+3|)>*L> around the points <math|\<iota\>*x>,
    where the stage satisfies <math|J\<geqslant\>4>.

    <item><math|k<rsub|\<beta\>><around|(|U,V|)>> is the conditional density
    of the coarse configuration <math|V> given the fine configuration
    <math|U>, with respect to the product Haar probability measure.

    <item>The pull-back of a bounded measurable complex function <math|F> of
    the coarse configuration is
  </itemize-minus>

  <\equation*>
    <around|(|\<cal-B\>*F|)><around|(|U|)>=<big|int>k<rsub|\<beta\>><around|(|U,V|)>*F<around|(|V|)>*d*V.
  </equation*>

  <\itemize-minus>
    <item>For <math|r\<in\>\<bbb-N\>>, <math|\<Lambda\><rsub|r><around|(|x|)>>
    is the periodic <math|\<ell\><rsup|\<infty\>>> box of radius <math|r>
    about <math|x>; periodic images are allowed. All lattice radii below are
    nonnegative integers.

    <item><math|F> is <em|local on> <math|X> if <math|F<around|(|V|)>>
    depends only on the links of <math|V> with both endpoints in <math|X>.

    <item><math|\<cal-I\><around|(|X|)>> is the class of observables that are
    gauge invariant, measurable, bounded and local on <math|X> (IV.1).
  </itemize-minus>

  <em|Patch hypothesis (III.1).> The minimising frame and the best predictor
  are unique whenever their respective branches are used. The set of
  admissible fallback frame tags is nonempty for every cover configuration.

  <strong|Proposition III.8.4 (one step: the pull-back is local).> Assume the
  patch hypothesis, and let <math|\<beta\>\<in\>\<bbb-R\>>.

  (i) Let <math|F> be a bounded measurable complex function local on a coarse
  set <math|X>, and let <math|Y> be a set of fine sites containing
  <math|\<Lambda\><rsub|10*\<rho\>>*<around|(|\<iota\>*x|)>> for every
  <math|x\<in\>X>. Then <math|\<cal-B\>*F> is local on <math|Y>.

  (ii) Assume moreover that the density is gauge covariant,
  <math|k<rsub|\<beta\>><around|(|U<rsup|g>,V<rsup|g\<circ\>\<iota\>>|)>=k<rsub|\<beta\>><around|(|U,V|)>>
  for every fine gauge transformation <math|g>. If
  <math|F\<in\>\<cal-I\><around|(|\<Lambda\><rsub|R><around|(|o|)>|)>>, then
  <math|\<cal-B\>*F\<in\>\<cal-I\>*<around|(|\<Lambda\><rsub|L*R+10*\<rho\>>*<around|(|\<iota\>*o|)>|)>>,
  with the same sup bound.

  <em|Status:> theorem. III.1 supplies these kernel properties for its chosen
  kernel parameters: the patch hypothesis is
  <hlink|<verbatim|Next.Foundations.branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71>.
  Gauge covariance follows from <hlink|<verbatim|StepData.covary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L56-L67>.
  For each step of a history, both are fields of the block-control data built
  in <hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>.
  <em|Lean:> <hlink|<verbatim|back_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136>,
  <hlink|<verbatim|back_cylinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169>.

  <strong|Proposition III.8.5 (exact factorisation).> Assume the patch
  hypothesis.

  <\itemize-minus>
    <item>If <math|F,G> are bounded, measurable and local on disjoint coarse
    sets <math|X,Y>, then <math|\<cal-B\>*<around|(|F*G|)>=\<cal-B\>*F\<cdot\>\<cal-B\>*G>
    for every <math|\<beta\>>.

    <item>In particular <math|\<cal-B\>*<big|prod><rsub|i\<in\>l>F<rsub|i>=<big|prod><rsub|i\<in\>l>\<cal-B\>*F<rsub|i>>
    when <math|F<rsub|i>\<in\>\<cal-I\><around|(|C<rsub|i>|)>> for distinct
    cells <math|C<rsub|i>> of a tiling.

    <item>Along a history with the kernel properties stated below, fix
    <math|N,p> and let <math|h\<leqslant\>k\<leqslant\>m>. Let <math|l> be a
    finite set of level-<math|h> sites and
    <math|F<rsub|i>\<in\>\<cal-I\>*<around|(|\<Lambda\><rsub|r>*<around|(|\<iota\><rsub|h\<to\>k>*i|)>|)>>
    at level <math|k> for <math|i\<in\>l>. If
    <math|<math-up|room><around|(|h,k,r|)>> holds, then
    <math|\<cal-B\><rsub|k\<to\>m>*<big|prod><rsub|i\<in\>l>F<rsub|i>=<big|prod><rsub|i\<in\>l>\<cal-B\><rsub|k\<to\>m>*F<rsub|i>>.

    <item>The same holds for the product of the tile copies of one
    <math|F\<in\>\<cal-I\><around|(|\<Lambda\><rsub|r><around|(|0|)>|)>>
    (translated, reflected, and complex-conjugated on odd tiles), the copies
    on the right being taken at level <math|m>.
  </itemize-minus>

  <em|Status:> theorem. It is an identity, not an estimate, and the fine
  windows of <math|\<cal-B\>*F> and <math|\<cal-B\>*G> may overlap.
  <em|Lean:> <hlink|<verbatim|back_factors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150>,
  <hlink|<verbatim|back_cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40>,
  <hlink|<verbatim|backTo_cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51>,
  <hlink|<verbatim|backTo_copies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76>.

  <em|History.>

  <\itemize-minus>
    <item>Levels <math|m=0,1,2,\<ldots\>> get finer as <math|m> grows. Level
    <math|m> has spacing <math|a<rsub|m>>.

    <item>The step from level <math|m+1> to level <math|m> has block factor
    <math|L<rsub|m>> (odd, <math|\<geqslant\>3>), so
    <math|a<rsub|m+1>=a<rsub|m>/L<rsub|m>>. Its patch radius is
    <math|\<rho\><rsub|m>=<around|(|J<rsub|m+1>+3|)>*L<rsub|m>>, where
    <math|J<rsub|m>\<geqslant\>4> and <math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1>.
    The inverse couplings are <math|\<beta\><rsub|N,p,m>>.

    <item>Every step satisfies the patch hypothesis, gauge covariance and
    covariance under lattice translations and signed permutations of the
    axes. These are part of the history data supplied by III.1.

    <item><math|\<cal-B\><rsub|m>> is the pull-back through this step at
    <math|\<beta\><rsub|N,p,m+1>>. Put <math|\<cal-B\><rsub|k\<to\>m>=\<cal-B\><rsub|m-1>\<circ\>\<ldots\>\<circ\>\<cal-B\><rsub|k>>
    (with <math|\<cal-B\><rsub|k\<to\>k>=<math-up|id>>), and let
    <math|\<cal-B\><rsup|\<ast\>><rsub|k\<to\>m>> be the composite of the
    push-forwards of III.1 from level <math|m> to level <math|k>.

    <item>For a level-<math|h> site <math|i> and <math|m\<geqslant\>h>,
    <math|\<iota\><rsub|h\<to\>m>*i> is its image at level <math|m>.

    <item>The cone radius is <math|r<rsub|k\<to\>k><around|(|r|)>=r>,
    <math|r<rsub|k\<to\>m+1><around|(|r|)>=L<rsub|m>*r<rsub|k\<to\>m><around|(|r|)>+10*<around|(|J<rsub|m+1>+3|)>*L<rsub|m>>.

    <item>The physical budget is <math|\<tau\><rsub|m>=30*a<rsub|m>*<around|(|J<rsub|m>+5|)>>.

    <item><math|<math-up|room><around|(|h,k,r|)>> is the condition
    <math|2*<around|(|a<rsub|k>*r+\<tau\><rsub|k>|)>\<less\>a<rsub|h>>.
  </itemize-minus>

  <strong|Proposition III.8.6 (pull-back along the history).> For all
  <math|N,p> and <math|k\<leqslant\>m>:

  (i) <math|\<cal-B\><rsub|k\<to\>m>> maps bounded measurable functions to
  bounded measurable functions, with <math|sup
  <around|\||\<cal-B\><rsub|k\<to\>m>*F|\|>\<leqslant\>sup <around|\||F|\|>>.
  It is linear, fixes constants and commutes with complex conjugation.

  (ii) For every bounded measurable complex <math|F> at level <math|k> and
  every integrable complex <math|g> at level <math|m>,
  <math|<big|int><around|(|\<cal-B\><rsup|\<ast\>><rsub|k\<to\>m>*g|)>*F=<big|int>g*\<cal-B\><rsub|k\<to\>m>*F>
  and <math|<big|int>\<cal-B\><rsup|\<ast\>><rsub|k\<to\>m>*g=<big|int>g>.
  All integrals here use the Haar probability measures at their respective
  levels; the push-forward is integrable.

  (iii) Let <math|h\<leqslant\>k> and <math|i> a level-<math|h> site. If
  <math|F\<in\>\<cal-I\>*<around|(|\<Lambda\><rsub|r>*<around|(|\<iota\><rsub|h\<to\>k>*i|)>|)>>,
  then <math|\<cal-B\><rsub|k\<to\>m>*F\<in\>\<cal-I\>*<around|(|\<Lambda\><rsub|r<rsub|k\<to\>m><around|(|r|)>>*<around|(|\<iota\><rsub|h\<to\>m>*i|)>|)>>.

  (iv) On bounded measurable functions, <math|\<cal-B\><rsub|k\<to\>m>>
  commutes with signed permutations of the axes followed by translation by
  <math|\<iota\><rsub|h\<to\>\<cdot\>>*i>, for <math|h\<leqslant\>k> and each
  level-<math|h> site <math|i>, and with the copy maps of the centred
  level-<math|h> tiling.

  <em|Status:> theorem. The hypotheses on the kernels are supplied by the
  history. <em|Lean:> <hlink|<verbatim|backTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25>,
  <hlink|<verbatim|pushTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29>,
  <hlink|<verbatim|backTo_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55>,
  <hlink|<verbatim|backTo_env>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47>,
  <hlink|<verbatim|backTo_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67>,
  <hlink|<verbatim|backTo_const>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60>,
  <hlink|<verbatim|backTo_star>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73>,
  <hlink|<verbatim|pushTo_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101>,
  <hlink|<verbatim|pushTo_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89>,
  <hlink|<verbatim|backTo_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115>,
  <hlink|<verbatim|backTo_orient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126>,
  <hlink|<verbatim|backTo_copy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147>.

  <strong|Proposition III.8.7 (size of the cone in physical units).> For the
  history above and all nonnegative integer levels and radii:

  (i) <math|\<tau\><rsub|m+1>\<leqslant\><frac|2|3>*\<tau\><rsub|m>>; hence
  <math|\<tau\><rsub|m>\<leqslant\><around|(|2/3|)><rsup|m>*\<tau\><rsub|0>\<to\>0>.

  (ii) <math|a<rsub|m>*r<rsub|k\<to\>m><around|(|r|)>+\<tau\><rsub|m>\<leqslant\>a<rsub|k>*r+\<tau\><rsub|k>>
  for <math|k\<leqslant\>m>. Thus an observable of lattice radius <math|r> at
  level <math|k> has, at every finer level, a backward cone of physical
  radius at most <math|a<rsub|k>*r+\<tau\><rsub|k>>, uniformly in <math|m>,
  <math|N> and <math|p>.

  (iii) If <math|h\<leqslant\>k> and <math|<math-up|room><around|(|h,k,r|)>>
  holds, then for every <math|m\<geqslant\>k> and every level-<math|h> site
  <math|i>, the box <math|\<Lambda\><rsub|r<rsub|k\<to\>m><around|(|r|)>>*<around|(|\<iota\><rsub|h\<to\>m>*i|)>>
  lies in the cell of <math|i> of the centred level-<math|h> tiling at level
  <math|m>. That cell has <math|L<rsub|h>*\<cdots\>*L<rsub|m-1>> sites per
  side, i.e. physical side <math|a<rsub|h>>.

  (iv) For fixed <math|h> and <math|r>, <math|<math-up|room><around|(|h,k,r|)>>
  holds for all sufficiently large <math|k\<geqslant\>h>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107>,
  <hlink|<verbatim|tail_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121>,
  <hlink|<verbatim|tail_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133>,
  <hlink|<verbatim|scales_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145>,
  <hlink|<verbatim|scales_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150>,
  <hlink|<verbatim|room>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153>,
  <hlink|<verbatim|room_fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169>,
  <hlink|<verbatim|plenty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158>.

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-dot>
    <item><strong|III.1 (block-spin step, history).>

    <\itemize-dot>
      <item><em|The kernel.> <math|k<rsub|\<beta\>>>
      (<hlink|<verbatim|StepData.density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72>)
      is a sum over site tags and bond tags of a
      <hlink|<verbatim|likelihood>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L49-L51>
      times a product over bonds of normalised penalty densities. The
      likelihood is a product over sites of frame masses times a product over
      bonds of predictor masses.

      <item><em|Frames and patches.> <hlink|<verbatim|Patch.frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L153-L155>,
      <hlink|<verbatim|Patch.frameMass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L148-L151>,
      <hlink|<verbatim|StepData.connector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L39-L42>,
      and the patch radius <hlink|<verbatim|Patch.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>
      <math|=<around|(|J+3|)>*L>.

      <item><em|Patch hypothesis and kernel properties.> The patch hypothesis
      <hlink|<verbatim|Patch.Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>
      is proved in <hlink|<verbatim|Next.Foundations.branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L70-L71>.
      Also used: <hlink|<verbatim|frameMass_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Measurable.lean#L127-L136>;
      <hlink|<verbatim|StepData.isKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L203-L208>
      (positivity, measurability, boundedness, mass one); the push-forward
      <hlink|<verbatim|StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>.

      <item><em|The history.> <hlink|<verbatim|History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204-L206>,
      <hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>,
      <hlink|<verbatim|Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97-L118>
      (<math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1>),
      <hlink|<verbatim|Levels.transition_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L158-L159>.
      The per-step <hlink|<verbatim|Calendar.BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120-L128>
      holds the patch hypothesis and the lattice-symmetry and gauge
      covariance of each density; it is constructed in
      <hlink|<verbatim|Calendar.blocks_go>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Covariant.lean#L70-L72>.
    </itemize-dot>

    <item><strong|I.1.>

    <\itemize-dot>
      <item>Periodic lattices, links, Haar measure, gauge transformations,
      transport along routes, and locality
      <hlink|<verbatim|LocalOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196-L197>.

      <item>The spacing schedule <hlink|<verbatim|Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28-L34>:
      <math|L<rsub|m>> odd and <math|\<geqslant\>3>;
      <hlink|<verbatim|a_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L103-L104>
      (<math|a<rsub|m+1>=a<rsub|m>/L<rsub|m>>);
      <hlink|<verbatim|shrinks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L108-L109>
      (<math|a<rsub|m>\<to\>0>); <hlink|<verbatim|embeds_scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L184-L189>
      (<math|a<rsub|m>*L<rsub|h>*\<cdots\>*L<rsub|m-1>=a<rsub|h>>).
    </itemize-dot>

    <item><strong|IV.1.> Tilings, cells and copies; the class
    <hlink|<verbatim|Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113>
    <math|=\<cal-I\>>; and, in Step B7 only, the chessboard root
    <hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>
    and the chessboard bound <hlink|<verbatim|Tiling.planted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38>.
    Its reflection-positivity hypotheses are packaged in
    <hlink|<verbatim|Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>
    and proved for <math|\<beta\>\<geqslant\>0> in
    <hlink|<verbatim|laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24>.

    <item><strong|Part A is an abstract estimate.> The consumer, III.14,
    supplies <math|V>, <math|\<Gamma\>> and the bounds <math|W,\<delta\>>.
    The weighted <math|\<ell\><rsup|1>> estimates behind the rooted norm come
    from the support packages listed in Ÿ7. The covariance used by III.14 is
    discussed there.

    <item><strong|Standard mathematics.>

    <\itemize-dot>
      <item><em|Part A.> The formal Hamilton\UJacobi heat equation, often
      called the Polchinski equation, generates connected diagrams by
      contractions and joins. For finite <math|I> and symmetric inputs, put
      <math|W<rsub|t><around|(|\<phi\>|)>=log
      \<bbb-E\><rsub|t*\<Gamma\>>*e<rsup|V<around|(|g,\<phi\>+\<zeta\>|)>>>,
      with expectation interpreted by Wick's rule. Then
      <math|\<partial\><rsub|t>*W=<tfrac|1|2><big|sum><rsub|u,v>\<Gamma\><around|(|u,v|)>*<around|(|\<partial\><rsub|u>*\<partial\><rsub|v>*W+\<partial\><rsub|u>*W*<space|0.17em>\<partial\><rsub|v>*W|)>>.
      Rooted coefficient bounds give a direct inductive estimate for this
      equation. Background references include Polchinski, Nucl. Phys. B 231
      (1984) 269; Brydges\UKennedy, J. Stat. Phys. 48 (1987) 19; Salmhofer,
      <em|Renormalization: an introduction>, Springer 1999; and Brydges,
      <em|Lectures on the renormalisation group>, IAS/Park City Math. Ser.
      16, 2009.

      <item><em|Part B.> Conditional expectation for a Markov kernel; Fubini
      for product measures and for sums over products of probability vectors.
      The model is Baªaban's block averaging (Comm. Math. Phys. 98 (1985)
      17); the kernel here is the probabilistic one of III.1.

      <item><em|Step B7.> The chessboard estimate
      (Fröhlich\UIsrael\ULieb\USimon, Comm. Math. Phys. 62 (1978) 1).
    </itemize-dot>

    <item><strong|Imported constants and assumptions.>

    <\itemize-dot>
      <item>The patch radius <math|<around|(|J+3|)>*L> (III.1).

      <item><math|L<rsub|m>\<geqslant\>3> and
      <math|J<rsub|m+1>\<leqslant\>J<rsub|m>+1> (I.1, III.1).

      <item>The patch hypothesis is assumed in III.8.4\UIII.8.5; gauge
      covariance is also assumed in III.8.4(ii). III.1 supplies these
      properties for its chosen kernels, together with lattice-symmetry
      covariance for iteration.

      <item>The constants <math|10> (read radius), <math|8> (route length),
      <math|30> and <math|5> (in <math|\<tau\><rsub|m>>) are internal.

      <item>Part A imports no constants.
    </itemize-dot>
  </itemize-dot>

  <section|3. Strategy><label|3-strategy>

  <strong|Part A.> Each step of (A1) either contracts two slots of one
  coefficient or joins two coefficients by a propagator line. The rooted norm
  absorbs the internal sums without changing <math|\<sigma\>>: the output
  diameter is bounded by the input diameters plus the line length, so the
  exponential weights multiply. For a marked coefficient, the height
  inequality plays the same role, with the marked factor summed over all its
  slots.

  Induction on heat order gives a polynomial majorant in <math|W>.
  Telescoping the inputs gives the corresponding difference bound with the
  same <math|\<delta\>>. Every primitive vertex has positive coupling order
  and at most three times that order in slots; every propagator removes two
  slots. This gives <math|n+2*j\<leqslant\>3*e> and finiteness in heat time
  at each coupling order. Positive heat order uses only lower coupling orders
  and higher ranks at the same coupling order.

  <strong|Part B.> Given the fine field, the kernel first draws independent
  site tags, then independent predictor tags on bonds, and finally
  independent coarse links conditional on these tags. Integrating an
  observable local on <math|X> removes all unused bonds and site tags. The
  remaining factors read the fine field within radius <math|10*\<rho\>> of
  <math|\<iota\>*X>. Observables on disjoint coarse site sets use disjoint
  tags and bonds, so their pull-backs multiply. Under iteration the radius
  grows by <math|R\<mapsto\>L<rsub|m>*R+10*\<rho\><rsub|m>>. In physical
  units the added radius is at most <math|\<tau\><rsub|m>/3>, while
  <math|\<tau\><rsub|m+1>\<leqslant\>2*\<tau\><rsub|m>/3>. The total radius
  therefore stays within <math|a<rsub|k>*r+\<tau\><rsub|k>>. When this fits
  in one level-<math|h> cell, different cells remain separate at every
  intermediate step, allowing the product formula to iterate.

  <section|4. Steps><label|4-steps>

  <subsection|A. Connected heat coefficients><label|a-connected-heat-coefficients>

  <strong|A1. Operations and the recursion.>

  <em|Definitions.> For <math|F> of rank <math|m+2>,

  <\equation*>
    <around|(|\<Delta\><rsub|\<Gamma\>>*F|)><around|(|x|)>=<math-up|Sym><big|sum><rsub|u,v\<in\>I>\<Gamma\><around|(|u,v|)>*F<around|(|u,v,x|)>.
  </equation*>

  For <math|F> of rank <math|p+1> and <math|G> of rank <math|q+1>, the join
  has rank <math|p+q>:

  <\equation*>
    <around|(|F*\<star\><rsub|\<Gamma\>>*G|)><around|(|x,y|)>=<math-up|Sym><big|sum><rsub|u,v\<in\>I>F<around|(|u,x|)>*\<Gamma\><around|(|u,v|)>*G<around|(|v,y|)>.
  </equation*>

  <math|<math-up|Sym>> averages over permutations of the slots.

  <em|Combinatorial factors.> On a finite index set, write
  <math|W=<big|sum><rsub|n><around|\<langle\>|W<rsub|n>,\<phi\><rsup|\<otimes\>n>|\<rangle\>>>
  with symmetric coefficient tensors and no slot factorials. For symmetric
  <math|\<Gamma\>>, the differential operators
  <math|<tfrac|1|2><big|sum><rsub|u,v>\<Gamma\><around|(|u,v|)>*\<partial\><rsub|u>*\<partial\><rsub|v>*W>
  and <math|<tfrac|1|2><big|sum><rsub|u,v>\<Gamma\><around|(|u,v|)>*\<partial\><rsub|u>*W*<space|0.17em>\<partial\><rsub|v>*W>
  give the factors <math|<binom|n+2|2>> and
  <math|<around|(|c+1|)>*<around|(|n-c+1|)>/2>. For nonsymmetric tensors (A1)
  remains a definition, without this identification.

  <em|Vanishing terms and symmetry.> For eligible <math|V> the pair terms
  with <math|a=0> or <math|a=e> vanish, because
  <math|V<rsup|<around|(|i|)>><rsub|0,\<cdot\>>=0>. Every
  <math|V<rsup|<around|(|j|)>>> with <math|j\<geqslant\>1> is symmetric,
  since every term is symmetrised.

  <em|Formal heat equation.> For finite <math|I>, eligible <math|V> symmetric
  in every rank (<hlink|<verbatim|waxed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Towers.lean#L15>),
  and symmetric <math|\<Gamma\>>, III.14 proves:

  <\itemize-minus>
    <item>the generating series solves the formal Hamilton\UJacobi equation
    (<hlink|<verbatim|Glyph.cloudy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L43-L73>);

    <item>its exponential solves the linear heat equation
    (<hlink|<verbatim|Cloud.Clockwise.linear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cloud/Arch.lean#L46-L49>);

    <item>summation at time <math|t> gives
    <math|\<cal-E\><rsub|t><around|(|V|)>>
    (<hlink|<verbatim|Glyph.breaktime>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Glyph/Tempo.lean#L26-L32>).
  </itemize-minus>

  These identities support the formal cumulant interpretation. They do not
  assert convergence of a Gaussian integral or of the series in <math|g>. The
  norm estimates use only the recursion.

  <em|Lean:> <hlink|<verbatim|lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17>,
  <hlink|<verbatim|bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21>,
  <hlink|<verbatim|bleach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38>,
  <hlink|<verbatim|unilateral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L33>,
  <hlink|<verbatim|pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L34-L35>,
  <hlink|<verbatim|wheels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L37-L38>,
  <hlink|<verbatim|bank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L42-L44>,
  <hlink|<verbatim|burn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46>,
  <hlink|<verbatim|blaze>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L55-L62>,
  <hlink|<verbatim|coal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L65-L75>.

  <strong|A2. Support (Proposition III.8.2).> Since
  <math|\<Delta\><rsub|\<Gamma\>>*0=0> and
  <math|0*\<star\><rsub|\<Gamma\>>*G=F*\<star\><rsub|\<Gamma\>>*0=0>, a
  nonzero <math|V<rsup|<around|(|j+1|)>><rsub|e,n>> has a nonzero
  predecessor: either <math|V<rsup|<around|(|j|)>><rsub|e,n+2>\<ne\>0>, or
  both <math|V<rsup|<around|(|i|)>><rsub|a,c+1>> and
  <math|V<rsup|<around|(|j-i|)>><rsub|e-a,n-c+1>> are nonzero for some
  <math|c\<leqslant\>n>, <math|i\<leqslant\>j>, <math|a\<leqslant\>e>. Strong
  induction on <math|j> gives <math|n+2*j\<leqslant\>3*e>:

  <\itemize-minus>
    <item>at <math|j=0>, <math|n\<leqslant\>e+2\<leqslant\>3*e> because
    <math|e\<geqslant\>1>;

    <item>the contraction step uses <math|<around|(|n+2|)>+2*j\<leqslant\>3*e>;

    <item>the pair step adds <math|<around|(|c+1|)>+2*i\<leqslant\>3*a> and
    <math|<around|(|n-c+1|)>+2*<around|(|j-i|)>\<leqslant\>3*<around|(|e-a|)>>.
  </itemize-minus>

  Parity and <math|n\<leqslant\>e+2> propagate the same way. Splitting off
  <math|j=0> gives <math|\<cal-E\><rsub|t>=V+\<cal-R\><rsub|t>>. <em|Lean:>
  <hlink|<verbatim|predecessors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L34-L48>,
  <hlink|<verbatim|preserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L50-L64>,
  <hlink|<verbatim|live>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L66-L70>,
  <hlink|<verbatim|off>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L72>,
  <hlink|<verbatim|smoulder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L77-L80>,
  <hlink|<verbatim|appropriate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L82-L89>.

  <strong|A3. The two contraction estimates.> Let
  <math|\<sigma\>\<geqslant\>0>, let the input rooted norms and
  <math|<around|[|\<Gamma\>|]><rsub|\<sigma\>>> be finite, and require
  positive output rank. Then

  <\equation*>
    <around|\<lVert\>|\<Delta\><rsub|\<Gamma\>>*F|\<rVert\>><rsub|\<sigma\>>\<leqslant\><around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>*sup
    <around|\||\<Gamma\>|\|>\<leqslant\><around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>><around|[|\<Gamma\>|]><rsub|\<sigma\>>,<space|2em><around|\<lVert\>|F*\<star\><rsub|\<Gamma\>>*G|\<rVert\>><rsub|\<sigma\>>\<leqslant\><around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>><around|[|\<Gamma\>|]><rsub|\<sigma\>><around|\<lVert\>|G|\<rVert\>><rsub|\<sigma\>>.
  </equation*>

  <em|Symmetrisation.> <math|<math-up|Sym>> does not increase the rooted
  norm: it permutes the slots and preserves diameters.

  <em|Contraction.> Fix a slot of <math|x>. Then
  <math|<math-up|diam><around|(|x|)>\<leqslant\><math-up|diam><around|(|u,v,x|)>>
  and <math|<around|\||\<Gamma\><around|(|u,v|)>|\|>\<leqslant\>sup
  <around|\||\<Gamma\>|\|>>, and the sum over <math|<around|(|u,v,x|)>> with
  that slot fixed is a rooted sum of <math|F>.

  <em|Join.> The key inequality is

  <\equation*>
    <math-up|diam><around|(|x,y|)>\<leqslant\><math-up|diam><around|(|u,x|)>+d<around|(|u,v|)>+<math-up|diam><around|(|v,y|)>.
  </equation*>

  With a slot of <math|x> fixed, sum in three stages:

  <\enumerate>
    <item>over <math|y> at fixed <math|v>: at most
    <math|<around|\<lVert\>|G|\<rVert\>>>, rooted at <math|v>;

    <item>over <math|v>: at most the row sum of <math|\<Gamma\>>;

    <item>over <math|<around|(|u,x|)>>: at most
    <math|<around|\<lVert\>|F|\<rVert\>>>.
  </enumerate>

  A fixed slot of <math|y> is treated symmetrically, with column sums.

  <em|Differences.> Absolute convergence permits telescoping:
  <math|\<Delta\><rsub|\<Gamma\>>*F-\<Delta\><rsub|\<Gamma\><rprime|'>>*F<rprime|'>=\<Delta\><rsub|\<Gamma\>>*<around|(|F-F<rprime|'>|)>+\<Delta\><rsub|\<Gamma\>-\<Gamma\><rprime|'>>*F<rprime|'>>,
  and the join gives three terms. If the tensor pairs are
  <math|<around|(|P,\<delta\>|)>>- and <math|<around|(|Q,\<delta\>|)>>-controlled
  and <math|<around|(|\<Gamma\>,\<Gamma\><rprime|'>|)>> is
  <math|<around|(|B,\<delta\>|)>>-controlled, with
  <math|P,Q,B,\<delta\>\<geqslant\>0>, the contraction pair is
  <math|<around|(|2*P*B,\<delta\>|)>>-controlled and the join pair is
  <math|<around|(|3*P*B*Q,\<delta\>|)>>-controlled. At output rank <math|0>
  these controlled-pair conclusions are vacuous; telescoping need not be
  valid for divergent scalar sums.

  <em|Lean:> <hlink|<verbatim|Ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24>,
  <hlink|<verbatim|Held>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61>
  with <hlink|<verbatim|ensign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L78-L84>,
  <hlink|<verbatim|Wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22>,
  <hlink|<verbatim|unary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L23-L46>,
  <hlink|<verbatim|Held.lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L58>,
  <hlink|<verbatim|arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L26-L42>,
  <hlink|<verbatim|root_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L49-L69>,
  <hlink|<verbatim|binary_EN>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L71-L99>,
  <hlink|<verbatim|Held.bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L102>,
  <hlink|<verbatim|Held.bleach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L74-L79>,
  <hlink|<verbatim|lap_compare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L72-L79>,
  <hlink|<verbatim|bridge_compare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L13-L24>,
  <hlink|<verbatim|Held.lap_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L26-L29>,
  <hlink|<verbatim|Held.bridge_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Dial.lean#L31-L35>,
  <hlink|<verbatim|Cot.lap'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L49-L54>,
  <hlink|<verbatim|Cot.bridge'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L55-L61>.

  <strong|A4. Proof of Proposition III.8.1.> Strong induction on <math|j>,
  for all <math|<around|(|e,n|)>> at once.

  <em|Base, <math|j=0>.> For <math|n=0> the claim is vacuous. For <math|e=0>,
  or <math|n\<gtr\>e+2>, the coefficient is zero by eligibility. Otherwise
  <math|<around|(|e,n|)>\<in\>T<rsub|0><around|(|e,n|)>> and the bound is
  <math|W>.

  <em|Step, <math|j\<to\>j+1>.> Use (A1).

  <\itemize-minus>
    <item>The contraction term needs the case <math|<around|(|j;e,n+2|)>>.
    Its inputs (<math|a\<less\>e>, or <math|a=e> with
    <math|r\<geqslant\>n+2>) lie in <math|T<rsub|j+1><around|(|e,n|)>>.

    <item>Only pair terms with <math|0\<less\>a\<less\>e> survive. Both
    factors are of order less than <math|e>, so they need only inputs of
    order less than <math|e>.
  </itemize-minus>

  With <math|B=W> for the propagator, A3 gives the polynomial majorant

  <\equation*>
    P<rsub|j+1,e,n><around|(|x|)>=<frac|1|j+1>*<around*|[|<binom|n+2|2>2*x*P<rsub|j,e,n+2><around|(|x|)>+<big|sum><rsub|c=0><rsup|n><big|sum><rsub|i=0><rsup|j><big|sum><rsub|a=0><rsup|e><frac|<around|(|c+1|)>*<around|(|n-c+1|)>|2>*3*x*P<rsub|i,a,c+1><around|(|x|)>*P<rsub|j-i,e-a,n-c+1><around|(|x|)>|]>.
  </equation*>

  <em|Lean:> <hlink|<verbatim|navigation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L34-L83>,
  <hlink|<verbatim|taps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14>,
  <hlink|<verbatim|Wage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11>.

  <strong|A5. Full correction and change of index set (outside the
  main-theorem closure).>

  <\itemize-minus>
    <item><em|Full correction.> For fixed <math|e,n>, there is a polynomial
    majorant <math|P> such that, under III.8.1's hypotheses on the input
    range <math|T<rsub|1><around|(|e,n|)>>, the pair
    <math|<around|(|\<cal-R\><rsub|t><around|(|V|)><rsub|e,n>,\<cal-R\><rsub|t><around|(|V<rprime|'>|)><rsub|e,n>|)>>
    is <math|<around|(|P<around|(|W|)>,\<delta\>|)>>-controlled whenever
    <math|<around|\||t|\|>\<leqslant\>W>. Sum A4 over
    <math|1\<leqslant\>j\<leqslant\>3*e>, using
    <math|<around|\||t|\|><rsup|j>\<leqslant\>W<rsup|j>>.

    <item><em|Transport.> Let <math|n\<geqslant\>1>, let
    <math|<around|(|I,d|)>> and <math|<around|(|J,D|)>> be pseudometric
    spaces, and let <math|\<sigma\>,\<sigma\><rprime|'>\<geqslant\>0>. For
    each slot <math|i>, choose a kernel <math|K<rsub|i>:I\<times\>J\<to\>\<bbb-R\>>,
    a nonnegative weight <math|E<rsub|i>>, and <math|b<rsub|i>\<geqslant\>0>
    bounding both weighted row and column sums of
    <math|<around|\||K<rsub|i>|\|>*e<rsup|E<rsub|i>>>. Define
    <math|<around|(|K*F|)><around|(|y|)>=<big|sum><rsub|x\<in\>I<rsup|n>>F<around|(|x|)>*<big|prod><rsub|i>K<rsub|i>*<around|(|x<rsub|i>,y<rsub|i>|)>>.
    Suppose, for distinct slots <math|i,j>, that
    <math|\<sigma\><rprime|'>*D<around|(|y<rsub|i>,y<rsub|j>|)>\<leqslant\>\<sigma\>*d<around|(|x<rsub|i>,x<rsub|j>|)>+E<rsub|i><around|(|x<rsub|i>,y<rsub|i>|)>+E<rsub|j><around|(|x<rsub|j>,y<rsub|j>|)>>
    whenever the two kernel factors are nonzero. Then
    <math|<around|\<lVert\>|K*F|\<rVert\>><rsub|D,\<sigma\><rprime|'>>\<leqslant\><around|\<lVert\>|F|\<rVert\>><rsub|d,\<sigma\>>*<big|prod><rsub|i>b<rsub|i>>
    for every <math|F> with finite rooted norm. Fix an output slot: use its
    column bound to sum its input position, and use row bounds for the
    remaining slots. The geometric inequality bounds the output weight by the
    input weight times all slot weights.

    <item><em|Differences.> Suppose <math|<around|(|F,F<rprime|'>|)>> is
    <math|<around|(|C,\<delta\>|)>>-controlled, with
    <math|C,\<delta\>,B\<geqslant\>0>. If every
    <math|K<rsub|i>,K<rprime|'><rsub|i>> has weighted row and column bounds
    <math|B>, every <math|K<rsub|i>-K<rprime|'><rsub|i>> has bounds
    <math|B*\<delta\>>, and the same geometric inequality holds for every
    combination of their supports, then <math|<around|(|K*F,K<rprime|'>*F<rprime|'>|)>>
    is <math|<around|(|<around|(|n+1|)>*C*B<rsup|n>,\<delta\>|)>>-controlled.
    Telescope once in <math|F> and once in each of the <math|n> kernels.

    <item><em|Combination.> At <math|t=1>, take <math|K<rsub|i>=\<mu\>> in
    every slot and <math|B=W>. For eligible <math|V,V<rprime|'>> and the
    input bounds above, the transported correction has a polynomial bound in
    <math|W>. A bound for the transported full potential additionally
    requires <math|<around|(|V<rsub|e,n>,V<rprime|'><rsub|e,n>|)>> to be
    <math|<around|(|W,\<delta\>|)>>-controlled.

    <item><em|Rank <math|0>.> The unmarked rooted bounds leave the scalar
    term uncontrolled. On an infinite lattice its sums may diverge.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|postage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L88-L101>,
  <hlink|<verbatim|raft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L56>,
  <hlink|<verbatim|lighthouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L19-L20>,
  <hlink|<verbatim|street>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Pontoon.lean#L22-L23>,
  <hlink|<verbatim|Alley>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L38-L43>,
  <hlink|<verbatim|Cot.raft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/PontChange.lean#L72-L89>,
  <hlink|<verbatim|paving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L34-L48>,
  <hlink|<verbatim|strict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L25>,
  <hlink|<verbatim|allG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Ballot.lean#L26>.

  <strong|A6. Marked expansion (Proposition III.8.3).>

  <em|Operations.> For <math|M> marked and <math|G> unmarked, the contraction
  <math|\<Delta\><rsub|\<Gamma\>>*M> is as in A1, and the join is
  <math|<around|(|M*\<star\><rsub|\<Gamma\>>*G|)><around|(|x,y|)>=<math-up|Sym><big|sum><rsub|u,v>\<Gamma\><around|(|u,v|)>*G<around|(|v,y|)>*M<around|(|u,x|)>>.

  <em|Estimates.>

  <\equation*>
    <around|\<lVert\>|\<Delta\><rsub|\<Gamma\>>*M|\<rVert\>><rsub|h>\<leqslant\>sup
    <around|\||\<Gamma\>|\|><around|\<lVert\>|M|\<rVert\>><rsub|h>,<space|2em><around|\<lVert\>|M*\<star\><rsub|\<Gamma\>>*G|\<rVert\>><rsub|h>\<leqslant\><around|\<lVert\>|M|\<rVert\>><rsub|h><around|[|\<Gamma\>|]><rsub|\<sigma\>><around|\<lVert\>|G|\<rVert\>><rsub|\<sigma\>>.
  </equation*>

  The first holds because <math|h<around|(|x|)>\<leqslant\>h<around|(|u,v,x|)>>.
  The second follows from <math|h<around|(|x,y|)>\<leqslant\>h<around|(|u,x|)>+d<around|(|u,v|)>+<math-up|diam><rsub|d><around|(|v,y|)>>,
  which uses that <math|h> is 1-Lipschitz. Sum the marked factor over all its
  slots, the propagator by its row bound, and the unmarked factor by its
  rooted bound at <math|v>. With finite input bounds, the sum of the dual
  norms is finite. Evaluation at each test function is therefore absolutely
  summable and preserves linearity, including at output rank <math|0>. The
  difference constants are <math|2> and <math|3>, as in A3.

  <em|Induction for (i).> Induct on <math|j> as in A4.

  <\itemize-minus>
    <item>The contraction term uses the case <math|<around|(|j;e,n+2|)>>.

    <item>Pair terms with <math|a=e> vanish, because the unmarked factor then
    has order <math|0>.

    <item>For <math|a\<less\>e>, the marked factor
    <math|M<rsup|<around|(|i|)>><rsub|a,c+1>> is bounded by the induction
    hypothesis, which needs marked inputs of order at most <math|a\<less\>e>.
    The unmarked factor <math|V<rsup|<around|(|j-i|)>><rsub|e-a,n-c+1>> is
    bounded by III.8.1, whose inputs lie in
    <math|<around|{|1\<leqslant\>a<rprime|'>\<leqslant\>e,1\<leqslant\>r\<leqslant\>a<rprime|'>+2|}>>.
  </itemize-minus>

  This gives (i) with output <math|P<around|(|W|)>*U>.

  <em|(ii) and (iii).> For (ii), a nonzero contraction has a marked
  predecessor of rank <math|n+2>. A nonzero join has marked and unmarked
  predecessors whose ranks sum to <math|n+2> and whose coupling orders sum to
  <math|e>. Add the marked induction bounds to the unmarked bounds of III.8.2
  to obtain <math|n+2*j\<leqslant\>l+3*e> and <math|n\<leqslant\>l+e>. For
  (iii), sum (i) over <math|1\<leqslant\>j\<leqslant\>l+3*e>, using
  <math|<around|\||t|\|><rsup|j>\<leqslant\>W<rsup|j>>; no bound for the
  initial rank-<math|n>, order-<math|e> marked coefficient is needed.

  <em|Consistency.> Evaluating a marked tensor at a fixed test function turns
  its contraction and join into those of A1.

  <em|Lean:> <hlink|<verbatim|Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17>,
  <hlink|<verbatim|Sings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36>,
  <hlink|<verbatim|purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40>,
  <hlink|<verbatim|beam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15>,
  <hlink|<verbatim|Lyrics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L37>,
  <hlink|<verbatim|Dyad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17>,
  <hlink|<verbatim|fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L33>,
  <hlink|<verbatim|pocket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28>,
  <hlink|<verbatim|cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75>,
  <hlink|<verbatim|Dyad.pocket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L39-L48>,
  <hlink|<verbatim|Dyad.cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L52-L63>,
  <hlink|<verbatim|shim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L23>,
  <hlink|<verbatim|shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L24>,
  <hlink|<verbatim|rungs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L25-L26>,
  <hlink|<verbatim|skate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31>,
  <hlink|<verbatim|climbs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L38-L40>,
  <hlink|<verbatim|across>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L85>,
  <hlink|<verbatim|journey>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L92-L127>,
  <hlink|<verbatim|Lit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L52>,
  <hlink|<verbatim|full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L61-L68>,
  <hlink|<verbatim|shaker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71>,
  <hlink|<verbatim|cruising>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L72-L73>,
  <hlink|<verbatim|registry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L25-L36>,
  <hlink|<verbatim|clocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L20-L21>,
  <hlink|<verbatim|reel_stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Shed.lean#L22-L23>.

  <subsection|B. Backward dependence cones><label|b-backward-dependence-cones>

  <strong|B1. Product structure of the kernel.> Summing the bond tags out of
  the definition in III.1 gives

  <\equation*>
    k<rsub|\<beta\>><around|(|U,V|)>=<big|sum><rsub|t><big|prod><rsub|x>q<rsub|x><around|(|U,t<rsub|x>|)>*<big|prod><rsub|b>p<rsub|b><around|(|U,t;V<rsub|b>|)>.
  </equation*>

  <\itemize-minus>
    <item><math|t=<around|(|t<rsub|x>|)>> runs over the site (frame) tags,
    and <math|q<rsub|x><around|(|U,\<cdot\>|)>> is the frame mass at
    <math|x>.

    <item><math|p<rsub|b><around|(|U,t;\<cdot\>|)>> is a mixture, over
    predictor tags <math|r> with weights summing to one, of normalised
    penalty densities centred at the predictions
    <math|Q<rsub|r><around|(|Y<rsub|b>|)>>, which are built from the
    connector <math|Y<rsub|b>> of the bond:
  </itemize-minus>

  <\equation*>
    p<rsub|b><around|(|U,t;v|)>=<big|sum><rsub|r>w<rsub|r><around|(|Y<rsub|b>|)>*Z<rsub|\<beta\>><rsup|-1>*exp
    <around*|(|-\<beta\>*\<kappa\><math-up|price><around|(|v*Q<rsub|r><around|(|Y<rsub|b>|)><rsup|-1>|)>|)>.
  </equation*>

  Here <math|\<kappa\>\<gtr\>0> is the kernel penalty of III.1, called
  <math|b> in the main theorem.

  Each <math|p<rsub|b>> has Haar integral <math|1>. The identity
  <math|<big|sum><rsub|r>q<rsub|x><around|(|U,r|)>=1> uses the patch
  hypothesis (the fallback set is nonempty). Hence

  <\equation*>
    \<cal-B\>*F<around|(|U|)>=<big|sum><rsub|t><around*|(|<big|prod><rsub|x>q<rsub|x><around|(|U,t<rsub|x>|)>|)>*S<rsub|F><around|(|U,t|)>,<space|2em>S<rsub|F><around|(|U,t|)>=<big|int><big|prod><rsub|b>p<rsub|b><around|(|U,t;V<rsub|b>|)>*F<around|(|V|)>*d*V.
  </equation*>

  Given <math|U>, the site tags are independent; given <math|U> and the tags,
  the coarse links are independent. Adjacent bonds share a tag, so the links
  are not independent given <math|U> alone. <em|Lean:>
  <hlink|<verbatim|density_parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L39-L47>,
  <hlink|<verbatim|noiseLink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L28>,
  <hlink|<verbatim|perLink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32>,
  <hlink|<verbatim|perSite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35>,
  <hlink|<verbatim|noiseLink_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L51-L55>,
  <hlink|<verbatim|perLink_mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L62-L67>,
  <hlink|<verbatim|site_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L83-L85>,
  <hlink|<verbatim|parts_back>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L87-L97>.

  <strong|B2. Read sets.>

  (a) <em|Frames.> The frame and the frame mass at <math|x> depend only on
  <math|U> on links inside <math|\<Lambda\><rsub|10*\<rho\>>*<around|(|\<iota\>*x|)>>.
  There are two branches:

  <\itemize-minus>
    <item>if a small-field test on transports in the patch passes, the frame
    is the minimiser, normalised at the centre, of an averaged price of
    transports between patch points, and the mass is uniform over all tags;

    <item>otherwise the frame is the axial gauge built from the tag,
    normalised at the centre, and the mass is uniform over admissible tags
    (those whose axial cost is bounded by a multiple of the plaquette cost in
    the patch).
  </itemize-minus>

  All transports run along coordinate routes between points of
  <math|\<Lambda\><rsub|\<rho\>>>, of length at most <math|8*\<rho\>>, so
  they stay in <math|\<Lambda\><rsub|9*\<rho\>>>. The minimiser is selected
  by a global choice. Its uniqueness (patch hypothesis) is what forces two
  configurations that agree on the window to select the same frame.

  (b) <em|Connectors.> The connector of the bond from <math|x> to
  <math|x+e<rsub|\<mu\>>> depends only on the tags at both ends and on
  <math|U> in <math|\<Lambda\><rsub|10*\<rho\>>*<around|(|\<iota\>*x|)>\<cup\>\<Lambda\><rsub|10*\<rho\>>*<around|(|\<iota\>*<around|(|x+e<rsub|\<mu\>>|)>|)>>.
  It is built from the two frames and from straight transports of length
  <math|L\<leqslant\>\<rho\>>.

  <em|Lean:> <hlink|<verbatim|patch_dep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L115-L155>,
  <hlink|<verbatim|route_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L85-L99>,
  <hlink|<verbatim|visits_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L67-L83>,
  <hlink|<verbatim|site_dep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L160-L164>,
  <hlink|<verbatim|connector_dep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L166-L184>,
  <hlink|<verbatim|reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65>.

  <strong|B3. Locality (Proposition III.8.4).> Two elementary facts:

  <\itemize-minus>
    <item>(P1) if a function reads only the coordinates in a set <math|s>,
    its integral against a product of probability densities does not change
    when the densities outside <math|s> are changed;

    <item>(P2) the same holds for sums over products of probability vectors.
  </itemize-minus>

  <em|Proof of (i).> If <math|F> is local on <math|X>, it reads only bonds
  with both ends in <math|X>. By (P1) and B2(b),
  <math|S<rsub|F><around|(|U,t|)>> depends only on <math|t\|<rsub|X>> and on
  <math|U> in the windows around <math|\<iota\>*X>. By (P2), the tags off
  <math|X> sum out. By B2(a), <math|q<rsub|x>> for <math|x\<in\>X> reads
  <math|U> only in <math|\<Lambda\><rsub|10*\<rho\>>*<around|(|\<iota\>*x|)>>.

  <em|Proof of (ii).> If <math|y\<in\>\<Lambda\><rsub|R><around|(|o|)>> then
  <math|\<iota\>*y\<in\>\<Lambda\><rsub|L*R>*<around|(|\<iota\>*o|)>>, and
  <math|\<Lambda\><rsub|10*\<rho\>>> of a point of
  <math|\<Lambda\><rsub|L*R>*<around|(|\<iota\>*o|)>> lies in
  <math|\<Lambda\><rsub|L*R+10*\<rho\>>*<around|(|\<iota\>*o|)>>. Gauge
  invariance follows from the covariance of <math|k<rsub|\<beta\>>> and the
  invariance of Haar measure. The sup bound and measurability hold because
  <math|k<rsub|\<beta\>>> is a probability kernel.

  <em|Lean:> <hlink|<verbatim|Reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L19>,
  <hlink|<verbatim|pi_ignores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L88-L96>,
  <hlink|<verbatim|sum_ignores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L137-L143>,
  <hlink|<verbatim|actualEdges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L100>,
  <hlink|<verbatim|state_reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L107-L114>,
  <hlink|<verbatim|back_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L119-L136>,
  <hlink|<verbatim|window_embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L52-L60>,
  <hlink|<verbatim|window_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L33-L42>,
  <hlink|<verbatim|back_natural>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L76-L84>,
  <hlink|<verbatim|back_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L41-L51>,
  <hlink|<verbatim|back_env>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L53-L55>,
  <hlink|<verbatim|back_cylinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L156-L169>.

  <strong|B4. Factorisation (Proposition III.8.5).>

  <\itemize-minus>
    <item>If <math|X\<cap\>Y=\<emptyset\>>, the bond sets read by <math|F>
    and <math|G> are disjoint, so <math|S<rsub|F*G><around|(|U,t|)>=S<rsub|F><around|(|U,t|)>*S<rsub|G><around|(|U,t|)>>
    by Fubini.

    <item><math|S<rsub|F>> depends on <math|t\|<rsub|X>> and <math|S<rsub|G>>
    on <math|t\|<rsub|Y>>, and the <math|q<rsub|x><around|(|U,\<cdot\>|)>>
    are probability vectors, so the sum over tags factorises.

    <item>Induction over the cells of a tiling gives the finite-product
    version.

    <item>Along the history, induct on <math|m>. By III.8.7(iii), each
    <math|\<cal-B\><rsub|k\<to\>m>*F<rsub|i>> lies in <math|\<cal-I\>> of its
    own level-<math|h> cell, so the one-step product formula applies at every
    step.

    <item>The version for copies follows with III.8.6(iv).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pi_independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L98-L109>,
  <hlink|<verbatim|sum_independent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Product.lean#L145-L156>,
  <hlink|<verbatim|back_factors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L141-L150>,
  <hlink|<verbatim|back_cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L21-L40>,
  <hlink|<verbatim|backTo_cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L43-L51>,
  <hlink|<verbatim|copy_window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L57-L66>,
  <hlink|<verbatim|backTo_copies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Many.lean#L68-L76>.

  <strong|B5. Iteration (Proposition III.8.6).> Induct on <math|m-k>, with
  <math|\<cal-B\><rsub|k\<to\>m+1>=\<cal-B\><rsub|m>\<circ\>\<cal-B\><rsub|k\<to\>m>>.

  <\itemize-minus>
    <item>(i) and (ii) hold for one step because <math|k<rsub|\<beta\>>> is a
    real probability kernel; (ii) is Fubini.

    <item>(iii) is III.8.4(ii) at each step. The kernel hypotheses come from
    the block-control data, and <math|\<iota\>*<around|(|\<iota\><rsub|h\<to\>m>*i|)>=\<iota\><rsub|h\<to\>m+1>*i>.

    <item>(iv) uses the lattice-symmetry covariance of each density.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|backTo_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L32-L34>,
  <hlink|<verbatim|backTo_env>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L44-L47>,
  <hlink|<verbatim|backTo_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L49-L55>,
  <hlink|<verbatim|backTo_add>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L62-L67>,
  <hlink|<verbatim|backTo_const>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L57-L60>,
  <hlink|<verbatim|backTo_star>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L69-L73>,
  <hlink|<verbatim|back_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L88-L97>,
  <hlink|<verbatim|pushTo_integral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L81-L89>,
  <hlink|<verbatim|pushTo_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L92-L101>,
  <hlink|<verbatim|anchor_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L31-L45>,
  <hlink|<verbatim|backTo_local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L105-L115>,
  <hlink|<verbatim|backTo_orient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L117-L126>,
  <hlink|<verbatim|backTo_copy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L128-L147>.

  <strong|B6. Physical size of the cone (Proposition III.8.7).>

  <\itemize-minus>
    <item>(i) <math|\<tau\><rsub|m+1>\<leqslant\>30*<frac|a<rsub|m>|3>*<around|(|J<rsub|m>+6|)>\<leqslant\><frac|2|3>*\<tau\><rsub|m>>.

    <item>(ii) Put <math|r<rprime|'>=L<rsub|m>*r+10*<around|(|J<rsub|m+1>+3|)>*L<rsub|m>>.
    Then <math|a<rsub|m+1>*r<rprime|'>=a<rsub|m>*r+10*a<rsub|m>*<around|(|J<rsub|m+1>+3|)>\<leqslant\>a<rsub|m>*r+\<tau\><rsub|m>/3>.
    Adding <math|\<tau\><rsub|m+1>\<leqslant\><frac|2|3>*\<tau\><rsub|m>>
    gives <math|a<rsub|m+1>*r<rprime|'>+\<tau\><rsub|m+1>\<leqslant\>a<rsub|m>*r+\<tau\><rsub|m>>,
    and one iterates.

    <item>(iii) The cell of <math|i> at level <math|m> is exactly
    <math|\<Lambda\><rsub|<around|(|D-1|)>/2>*<around|(|\<iota\><rsub|h\<to\>m>*i|)>>,
    with <math|D=L<rsub|h>*\<cdots\>*L<rsub|m-1>> odd and
    <math|a<rsub|m>*D=a<rsub|h>>. By (ii) and room,
    <math|2*a<rsub|m>*r<rsub|k\<to\>m><around|(|r|)>\<less\>a<rsub|h>-2*\<tau\><rsub|m>\<less\>a<rsub|m>*D>,
    so <math|2*r<rsub|k\<to\>m><around|(|r|)>\<less\>D>.

    <item>(iv) <math|a<rsub|k>\<to\>0> and <math|\<tau\><rsub|k>\<to\>0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|expansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97>,
  <hlink|<verbatim|grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99>,
  <hlink|<verbatim|grows_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L103-L104>,
  <hlink|<verbatim|tail_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L110-L121>,
  <hlink|<verbatim|tail_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L123-L133>,
  <hlink|<verbatim|scales_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L135-L145>,
  <hlink|<verbatim|scales_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L147-L150>,
  <hlink|<verbatim|tiling_window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L49-L85>,
  <hlink|<verbatim|window_fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L87-L91>,
  <hlink|<verbatim|room_fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L160-L169>,
  <hlink|<verbatim|plenty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L155-L158>.

  <strong|B7. Two consequences used downstream.>

  (a) <em|Replicated differences (used by III.11).> Fix <math|N,p> and
  <math|h\<leqslant\>k\<leqslant\>N>. Let <math|O> be a bounded measurable
  complex function at level <math|N>, let
  <math|F\<in\>\<cal-I\><around|(|\<Lambda\><rsub|w><around|(|0|)>|)>> at
  level <math|k> with <math|<math-up|room><around|(|h,k,w|)>>, and let
  <math|s> be a finite set of level-<math|h> sites. Then

  <\equation*>
    Z<rsub|N><around*|\<langle\>|<big|prod><rsub|i\<in\>s><math-up|copy><rsub|i><around|(|\<cal-B\><rsub|k\<to\>N>*F-O|)>|\<rangle\>><rsub|N>=<big|sum><rsub|l\<subseteq\>s><big|int>\<cal-B\><rsup|\<ast\>><rsub|k\<to\>N>*<around*|[|e<rsup|-S<rsub|N>>*<big|prod><rsub|i\<in\>s\<setminus\>l><around|(|-<math-up|copy><rsub|i>O|)>|]>*<big|prod><rsub|i\<in\>l><math-up|copy><rsub|i>F.
  </equation*>

  Here <math|S<rsub|N>=\<beta\><rsub|N,p,N>*E<rsub|N>> is the Wilson action,
  <math|Z<rsub|N>=<big|int>e<rsup|-S<rsub|N>>*<space|0.17em>d*U>, and
  <math|<around|\<langle\>|Q|\<rangle\>><rsub|N>=Z<rsub|N><rsup|-1>*<big|int>e<rsup|-S<rsub|N>>*Q*<space|0.17em>d*U>.
  The copies on each side use the level-<math|h> tiling at the level of their
  argument; the integrals on the right are at level <math|k>. Expand the
  product, commute the copies with subtraction, then apply III.8.5 and the
  duality in III.8.6(ii). The old factors stay together inside one
  push-forward; no independence of <math|O> is required.

  (b) <em|Chessboard telescoping (used by III.13, VII.2).> Fix
  <math|h\<leqslant\>N>, <math|p> and a real coupling <math|\<beta\>> for
  which the chessboard inequality of IV.1 holds; the Wilson law has this
  property for <math|\<beta\>\<geqslant\>0>. Let <math|T> be the centred
  level-<math|h> tiling at level <math|N>. For a central-cell observable
  <math|Q>, define

  <\equation*>
    <math-up|root><rsub|T><around|(|Q|)>=<mid|\|><around*|\<langle\>|<big|prod><rsub|a\<in\>T><math-up|copy><rsub|a>Q|\<rangle\>><rsub|\<beta\>><mid|\|><rsup|1/<around|(|\<sharp\>*T|)>>,
  </equation*>

  where <math|\<sharp\>*T> is the number of cells. Let the index set be
  finite, let <math|a<rsub|i>> be distinct level-<math|h> sites, and let
  <math|O<rsub|i>,Z<rsub|i>\<in\>\<cal-I\><around|(|T<rsub|0>|)>>, where
  <math|T<rsub|0>> is the central cell. Put
  <math|b<rsub|i>=\<iota\><rsub|h\<to\>N>*a<rsub|i>> and let
  <math|\<tau\><rsub|b<rsub|i>>> act on configurations by lattice
  translation. If real bounds <math|c<rsub|i>,e<rsub|i>> satisfy
  <math|<math-up|root><rsub|T><around|(|O<rsub|i>|)>\<leqslant\>c<rsub|i>>
  and <math|<math-up|root><rsub|T><around|(|Z<rsub|i>-O<rsub|i>|)>\<leqslant\>e<rsub|i>>,
  then

  <\equation*>
    <mid|\|><around*|\<langle\>|<big|prod><rsub|i><around|(|Z<rsub|i>\<circ\>\<tau\><rsub|b<rsub|i>>|)>|\<rangle\>><rsub|\<beta\>>-<around*|\<langle\>|<big|prod><rsub|i><around|(|O<rsub|i>\<circ\>\<tau\><rsub|b<rsub|i>>|)>|\<rangle\>><rsub|\<beta\>><mid|\|>\<leqslant\><big|prod><rsub|i><around|(|e<rsub|i>+c<rsub|i>|)>-<big|prod><rsub|i>c<rsub|i>.
  </equation*>

  Expand <math|<big|prod><rsub|i><around|(|O<rsub|i>+<around|(|Z<rsub|i>-O<rsub|i>|)>|)>>
  over subsets. The empty-subset term cancels, and the chessboard estimate
  bounds each remaining term by the corresponding product of <math|c<rsub|i>>
  and <math|e<rsub|i>>. To apply it to literal translates, undo the
  reflection in each copy and, on odd cells, conjugate its source. These
  operations preserve the central-cell class and its root. Summing the
  nonempty-subset bounds gives the right-hand side.

  <em|Lean:> <hlink|<verbatim|Joint.restored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Joint.lean#L102-L128>,
  <hlink|<verbatim|tariff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78>;
  <hlink|<verbatim|rooted_translates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Translate.lean#L104-L109>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <\itemize-dot>
    <item><strong|Input ranges.> At positive heat order, inputs of coupling
    order <math|e> have strictly higher rank. The purely contracting
    contribution to <math|V<rsup|<around|(|j|)>><rsub|e,n>> starts at
    <math|V<rsub|e,n+2*j>>. This permits downward induction in rank at fixed
    coupling order. The bound is uniform in geometry, but its polynomial may
    depend on <math|<around|(|j,e,n|)>>; no resummation in <math|g> is
    proved.

    <item><strong|Scalar terms.> The unmarked rooted norm gives no scalar
    estimate. The marked norm sums all slots and does control rank <math|0>,
    including absolute convergence of its contractions. The same
    <math|\<sigma\>\<gtr\>0> occurs in the line, diameter, height and
    test-function weights.

    <item><strong|Locality of a selected minimiser.> Agreement on the read
    window makes the minimisation problems identical. Uniqueness then makes
    their selected frames equal. The read radius <math|10*\<rho\>> also
    includes fallback tests and connectors; the coordinate routes used by
    frames lie in <math|\<Lambda\><rsub|9*\<rho\>>>.

    <item><strong|Conditional factorisation.> Disjoint coarse site sets use
    disjoint tags and bonds. Their pull-backs may nevertheless read
    overlapping fine windows. Factorisation therefore concerns the
    conditional kernel, not the fine Gibbs law. Iteration requires separation
    at every intermediate level, supplied by the cell-containment bound.

    <item><strong|Physical size.> The lattice radius grows by
    <math|R\<mapsto\>L<rsub|m>*R+10*\<rho\><rsub|m>>, while its physical
    radius stays below <math|a<rsub|k>*r+30*a<rsub|k>*<around|(|J<rsub|k>+5|)>>.
    For fixed <math|h,r>, this bound eventually fits inside a level-<math|h>
    cell.
  </itemize-dot>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|I>,
  <math|d>, <math|<math-up|diam><rsub|d>>>|<cell|<hlink|<verbatim|Ground>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L20-L24>,
  <hlink|<verbatim|Ground.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L35>>|<cell|cells
  with a pseudometric; largest distance within a
  tuple>>|<row|<cell|rank-<math|n> tensor>|<cell|<hlink|<verbatim|Tape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L17>,
  <hlink|<verbatim|Flake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L18>;
  <hlink|file|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean>>|<cell|function
  on <math|I<rsup|n>>, ordered slots>>|<row|<cell|<math|<around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>\<leqslant\>p>>|<cell|<hlink|<verbatim|Held>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L61>>|<cell|rooted
  weighted <math|\<ell\><rsup|1>> bound (empty at rank
  <math|0>)>>|<row|<cell|<math|\<Gamma\>>,
  <math|<around|[|\<Gamma\>|]><rsub|\<sigma\>>\<leqslant\>B>>|<cell|<hlink|<verbatim|Line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L14>,
  <hlink|<verbatim|Wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lines.lean#L18-L22>>|<cell|propagator;
  weighted row and column sums>>|<row|<cell|<math|<around|(|W,\<delta\>|)>>-controlled>|<cell|<hlink|<verbatim|Cot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L15-L19>,
  <hlink|<verbatim|WireCot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Cot.lean#L21-L24>>|<cell|both
  at most <math|W>, difference at most <math|W*\<delta\>>>>|<row|<cell|polynomial
  majorant>|<cell|<hlink|<verbatim|Wage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Powers.lean#L11>>|<cell|<math|0\<leqslant\>P<around|(|x|)>\<leqslant\>C*x<rsup|t>>
  for <math|x\<geqslant\>1>>>|<row|<cell|<math|V=<around|(|V<rsub|e,n>|)>>,
  eligible>|<cell|<hlink|<verbatim|Grain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L23>,
  <hlink|<verbatim|Eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L17-L20>>|<cell|formal
  potential>>|<row|<cell|<math|\<Delta\><rsub|\<Gamma\>>>,
  <math|\<star\><rsub|\<Gamma\>>>, <math|<math-up|Sym>>>|<cell|<hlink|<verbatim|lap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Lap.lean#L17>,
  <hlink|<verbatim|bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Weld.lean#L21>,
  <hlink|<verbatim|bleach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Shuffle.lean#L38>>|<cell|contraction,
  join, symmetrisation>>|<row|<cell|<math|V<rsup|<around|(|j|)>>>>|<cell|<hlink|<verbatim|burn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Gears.lean#L46>>|<cell|heat
  coefficient>>|<row|<cell|<math|T<rsub|j><around|(|e,n|)>>>|<cell|<hlink|<verbatim|taps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Routing.lean#L14>
  (<verbatim|Residual> is <math|T<rsub|1>>)>|<cell|admissible
  inputs>>|<row|<cell|<math|\<cal-E\><rsub|t>>,
  <math|\<cal-R\><rsub|t>>>|<cell|<hlink|<verbatim|ember>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L74>,
  <hlink|<verbatim|cinder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Steam/Valves.lean#L75>>|<cell|full
  series; positive-time part>>|<row|<cell|<math|h>,
  <math|h<around|(|x|)>>>|<cell|<hlink|<verbatim|Loom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L15-L17>,
  <hlink|<verbatim|Loom.cage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L18>>|<cell|height;
  its maximum over a tuple>>|<row|<cell|<math|<around|\<lVert\>|f|\<rVert\>><rsub|k,\<sigma\>>>,
  <math|<around|\<lVert\>|\<lambda\>|\<rVert\>><rsup|\<ast\>><rsub|k,\<sigma\>>>>|<cell|<hlink|<verbatim|beam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Hoard.lean#L15>,
  <hlink|<verbatim|purse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Dosh.lean#L40>>|<cell|weighted
  <math|C<rsup|k>> norm of test functions; dual
  norm>>|<row|<cell|<math|<around|\<lVert\>|M|\<rVert\>><rsub|h>>;
  <math|<around|(|U,\<delta\>|)>>-controlled>|<cell|<hlink|<verbatim|Sings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Jetty/Bank.lean#L36>,
  <hlink|<verbatim|Dyad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pair.lean#L11-L17>>|<cell|marked
  norm; marked pairs>>|<row|<cell|marked <math|\<Delta\><rsub|\<Gamma\>>>,
  <math|\<star\><rsub|\<Gamma\>>>>|<cell|<hlink|<verbatim|pocket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L28>,
  <hlink|<verbatim|cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Pocket.lean#L75>>|<cell|marked
  contraction and join>>|<row|<cell|<math|M<rsup|<around|(|j|)>>>;
  <math|<big|sum><rsub|j\<geqslant\>1>t<rsup|j>*M<rsup|<around|(|j|)>>>>|<cell|<hlink|<verbatim|skate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L31>;
  <hlink|<verbatim|shaker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Skiff/Spoke.lean#L71>>|<cell|marked
  heat coefficients; positive-time part>>|<row|<cell|<math|k<rsub|\<beta\>>>>|<cell|<hlink|<verbatim|StepData.density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L71-L72>>|<cell|conditional
  density of the coarse field given the fine
  field>>|<row|<cell|<math|\<cal-B\>>>|<cell|<hlink|<verbatim|back>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22>>|<cell|one-step
  pull-back>>|<row|<cell|<math|q<rsub|x>>,
  <math|p<rsub|b>>>|<cell|<hlink|<verbatim|perSite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L34-L35>,
  <hlink|<verbatim|perLink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelLocal.lean#L30-L32>>|<cell|tag
  law at a site; link law at a bond>>|<row|<cell|<math|\<Lambda\><rsub|r><around|(|x|)>>>|<cell|<hlink|<verbatim|window>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L22-L23>>|<cell|periodic
  <math|\<ell\><rsup|\<infty\>>> box>>|<row|<cell|<math|10*\<rho\>>;
  <math|\<rho\>=<around|(|J+3|)>*L>>|<cell|<hlink|<verbatim|reach>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Cone.lean#L65>;
  <hlink|<verbatim|Patch.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L51>>|<cell|read
  radius; patch radius>>|<row|<cell|<math|\<cal-I\><around|(|X|)>>>|<cell|<hlink|<verbatim|Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113>>|<cell|gauge
  invariant, measurable, bounded, local on
  <math|X>>>|<row|<cell|<math|\<cal-B\><rsub|k\<to\>m>>,
  <math|\<cal-B\><rsup|\<ast\>><rsub|k\<to\>m>>>|<cell|<hlink|<verbatim|backTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25>,
  <hlink|<verbatim|pushTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L27-L29>>|<cell|iterated
  pull-back; push-forward>>|<row|<cell|<math|\<iota\><rsub|h\<to\>m>>>|<cell|<hlink|<verbatim|anchor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L24>>|<cell|image
  of a level-<math|h> site at level <math|m>>>|<row|<cell|<math|r<rsub|k\<to\>m><around|(|r|)>>>|<cell|<hlink|<verbatim|grows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L99>,
  <hlink|<verbatim|expansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L97>>|<cell|cone
  radius in lattice units>>|<row|<cell|<math|\<tau\><rsub|m>>>|<cell|<hlink|<verbatim|tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L107>>|<cell|physical
  cone budget <math|30*a<rsub|m>*<around|(|J<rsub|m>+5|)>>>>|<row|<cell|<math|<math-up|room><around|(|h,k,r|)>>>|<cell|<hlink|<verbatim|room>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Geometry.lean#L153>>|<cell|<math|2*<around|(|a<rsub|k>*r+\<tau\><rsub|k>|)>\<less\>a<rsub|h>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Application of the bounds.> The marked bound III.8.3 feeds
    III.14 through <hlink|<verbatim|Necks.slushy_uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95>.
    The support and finite-sum identities of III.8.2 also enter III.14
    directly. The choices of <math|W,\<delta\>,\<sigma\>,h> and the
    covariance line bounds must be explained there; their derivation from
    earlier covariance estimates has not been traced here. The paired
    covariance and potential bounds are explicit hypotheses of that
    application.

    <item><strong|Gaussian interpretation.> A1 verifies the unmarked formal
    heat equations for finite index sets and symmetric input tensors and
    propagators. For symmetric marked inputs, the intended identity is
  </enumerate>

  <\equation*>
    M<rsub|t><around|(|\<phi\>|)>=<frac|\<bbb-E\><rsub|t*\<Gamma\>>*<around|[|F<around|(|g,\<phi\>+\<zeta\>|)>*e<rsup|V<around|(|g,\<phi\>+\<zeta\>|)>>|]>|\<bbb-E\><rsub|t*\<Gamma\>><around|[|e<rsup|V<around|(|g,\<phi\>+\<zeta\>|)>>|]>><space|2em><text|(probable)>,
  </equation*>

  coefficientwise in <math|g>, with expectation interpreted by Wick's rule.
  The marked source announces this identification for later work, but a proof
  was not located. In particular the marked rank-<math|0> coefficient should
  not yet be described as a proved normalised expectation. No analytic
  convergence of the series in <math|g> is asserted. 3.
  <strong|Infinite-lattice scalars.> The unmarked norm leaves rank <math|0>
  uncontrolled. The scalar recursions are total-sum definitions, whose values
  need not represent convergent infinite-volume sums. A use of these scalars
  requires a separate finite-volume or vacuum-density argument. 4.
  <strong|Scope beyond the stated results.> Step A5 gives bounds outside the
  main-theorem closure; III.14 uses the transported-potential definitions
  without those bounds. The marked transport in <verbatim|Skiff/Pave.lean>
  and the further applications in <verbatim|GRID_APPROXIMATION/Birth>,
  <verbatim|Nil>, <verbatim|Candidates>, <verbatim|Picture>,
  <verbatim|Estimate> and <verbatim|Attach*> are not developed in this
  outline. The relation between these formal connected coefficients and the
  polymer activities of III.5 also remains to be explained in III.14
  (tentative). 5. <strong|Support packages.> About 1,970 assigned lines lie
  outside the two arguments above. Their mathematical roles have only been
  classified from documentation (tentative): <verbatim|Carrel> treats path
  templates and their leading curl; <verbatim|Camera> treats jets of chart
  germs; <verbatim|Room> treats field pull-backs, Jacobians and centred Wick
  operations; <verbatim|Rudder> treats symmetric lifts; and
  <verbatim|Pert/Bulk> and <verbatim|Packets> supply weighted sums.
  <verbatim|AnalyticNext/QUARTIC_MATCH> belongs with the quartic analysis of
  III.7 and III.10. Other assigned packages include <verbatim|Isles>,
  <verbatim|Anchor>, parts of <verbatim|Cloud> and <verbatim|Glyph>,
  <verbatim|WilsonBulk/Web> and <verbatim|ProofPorts/\<ldots\>>. These
  packages need separate outlines if their results are to be included here.

  <ym-unit-nav|<hlink|\<leftarrow\> III.7 Matching the Wilson energy to
  fourth order (notes)|III-7.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-8.tm>|<hlink|III.9 The marginal flow: the running
  coupling and its reset (notes) \<rightarrow\>|III-9.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.8. Connected activities and backward dependence
    cones \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|7>>
    <associate|3-strategy|<tuple|3|8>>
    <associate|4-steps|<tuple|4|9>>
    <associate|5-where-the-difficulty-lies|<tuple|5|15>>
    <associate|6-notation|<tuple|6|16>>
    <associate|7-what-remains-unexplained|<tuple|7|16>>
    <associate|a-connected-heat-coefficients|<tuple|4.1|9>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|6|16>>
    <associate|auto-11|<tuple|7|16>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-3|<tuple|1.2|5>>
    <associate|auto-4|<tuple|2|7>>
    <associate|auto-5|<tuple|3|8>>
    <associate|auto-6|<tuple|4|9>>
    <associate|auto-7|<tuple|4.1|9>>
    <associate|auto-8|<tuple|4.2|12>>
    <associate|auto-9|<tuple|5|15>>
    <associate|b-backward-dependence-cones|<tuple|4.2|12>>
    <associate|iii8-connected-activities-and-backward-dependence-cones--detailed-notes|<tuple|?|1>>
    <associate|part-a|<tuple|1.1|2>>
    <associate|part-b|<tuple|1.2|5>>
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

      <with|par-left|<quote|1tab>|A. Connected heat coefficients
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|B. Backward dependence cones
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>