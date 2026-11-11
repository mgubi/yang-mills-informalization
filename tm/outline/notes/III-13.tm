<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero (notes)|III-12.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-13.tm>|<hlink|III.14 The construction run: flat
  representations and the ultraviolet rate (notes) \<rightarrow\>|III-14.tm>>

  <ym-title|III.13. Extension to all labels: one common Wilson family \V
  detailed notes><label|iii13-extension-to-all-labels-one-common-wilson-family--detailed-notes>

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

    <with|par-left|1tab|4.1 Choosing the constants once
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Shooting, and the limit at a fixed level
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Renormalized observables
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Correlations at fixed volume
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Reports <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.13: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-13.tm>.
  </quotation>

  <hlink|Unit page|../units/III-13.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/SharpGram/Common.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean>,
  <hlink|<verbatim|YM/SharpGram/Measured.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean>,
  <hlink|<verbatim|YM/SharpGram/Assembly/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly>,
  <hlink|<verbatim|YM/UVExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension>.
  <strong|Size:> about 22,100 lines in the unit inventory. Principal assembly
  results: <hlink|<verbatim|multitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79>,
  <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>,
  <hlink|<verbatim|multitude_foot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93>.

  <strong|Place in the proof.> This unit supplies the ultraviolet
  construction for <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>
  (Proposition III.13.4). The main theorem
  <hlink|<verbatim|YangMills.constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>
  does not use it.

  <\itemize-minus>
    <item>The main theorem gets its Wilson family from the construction run
    of III.14 (<hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>,
    <hlink|<verbatim|Run.extractible17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90>).

    <item>The two constructions rest on the same per-step estimates
    (III.1\UIII.12) and package them differently.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <\itemize-minus>
    <item><strong|The constants are chosen once.> One choice of
    renormalization-group (RG) constants supplies a certified schedule,
    chessboard bounds, the logarithmic OPE package, coverage, weak comparison
    systems and extraction data (Ÿ4.1).

    <item><strong|Fixed-volume ultraviolet limits.> On every fixed,
    sufficiently large torus, the correlation functions of the renormalized
    observables at separated points converge along the <em|whole> sequence of
    lattice spacings, together with their lattice derivatives. Couplings and
    normalized effective-action readings depend holomorphically on a
    terminal-coupling shift in a disc independent of the cutoff and period.
    Transfer data and correlations have the analytic extensions specified in
    III.13.7 (Ÿ4.2\U4.4).
  </itemize-minus>

  <strong|Conventions.>

  <\itemize-minus>
    <item><math|G> is a compact matrix group with simple nonabelian real Lie
    algebra ("<math|G> simple").

    <item><math|b\<gtr\>0> is the <em|penalty> of the block-spin kernel. It
    is the Gaussian block-spin coefficient in the linearized kernel identity.
    Its comparison with Balaban's notation is left to Ÿ7.

    <item><strong|Levels.> RG levels are <math|m=0,1,\<ldots\>,N>. Level
    <math|N> (the <em|cutoff>) is the finest lattice, the Wilson end. Level
    <math|0> is the coarsest. The spacings are <math|a<rsub|0>=1> and
    <math|a<rsub|m+1>=a<rsub|m>/L<rsub|m>> with odd block sizes
    <math|L<rsub|m>>, and <math|\<sigma\><rsub|m>=log
    <around|(|1/a<rsub|m>|)>>.

    <item><strong|Tori.> The period index is <math|p>. The torus
    <math|\<Lambda\><rsub|N,p>> has spacing <math|a<rsub|N>> and side
    <math|\<ell\><rsub|p>>.

    <item><strong|Couplings.> A Wilson family <math|C> has a selected RG
    trajectory with inverse couplings <math|\<beta\><rsub|m><around|(|N,p|)>>.
    Its Wilson coupling is <math|\<beta\><rsub|N,p>=\<beta\><rsub|N><around|(|N,p|)>>,
    its value at level <math|0> at the centre of the shooting family is the
    <em|barrier> <math|<wide|\<beta\>|\<bar\>>>, and
    <math|<wide|\<beta\>|^><rsub|m>> is the reference running coupling.

    <item><strong|Labels and observables.>

    <\itemize-minus>
      <item><math|\<cal-L\><rsub|d>> is the space of labels of degree
      <math|d>, and <math|<math-up|ref><around|(|d|)>> is the reference level
      of degree <math|d>.

      <item><math|O<rsup|N,p><rsub|v><around|(|x|)>> is the renormalized
      lattice observable of a label <math|v> at a site <math|x> (II.1), and
      <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsub|N,p>> is the
      Wilson expectation at <math|\<beta\><rsub|N,p>>.
    </itemize-minus>

    <item><strong|Separated configurations.>
    <math|\<Omega\><rsup|n><rsub|p>=<around|{|x\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|n>:x<rsub|i>\<nequiv\>x<rsub|j><bmod>\<ell\><rsub|p>*\<bbb-Z\><rsup|4><text|
    for >i\<neq\>j|}>>. A test function is a complex-valued
    <math|C<rsup|\<infty\>>> function with compact support in the set of
    pairwise distinct configurations in <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>.
    It is <em|admissible at period <math|p>> if its closed support lies in
    <math|<around|(|-\<ell\><rsub|p>/2,\<ell\><rsub|p>/2|)><rsup|4*n>>; this
    support is then a compact subset of <math|\<Omega\><rsup|n><rsub|p>>.

    <item><strong|Extraction orders.> An extraction order <math|f> is a pair
    of subsequences (mesh indices, period indices) (II.2), and
    <math|f\<circ\>g> is its refinement by <math|g>.
  </itemize-minus>

  <em|Lean conventions:> <hlink|<verbatim|Test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18>,
  <hlink|<verbatim|Extraction.suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31>.

  <strong|Definition (chessboard bound in the schedule).> For
  <math|v\<in\>\<cal-L\><rsub|d>>, levels <math|m\<leqslant\>N> and
  <math|A\<geqslant\>0>, the <em|centered budget> holds if:

  <\itemize-minus>
    <item><math|<math-up|ref><around|(|d|)>\<leqslant\>N>;

    <item>for every site <math|o> of <math|\<Lambda\><rsub|N,p>>, the
    observable <math|O<rsup|N,p><rsub|v><around|(|o|)>> is supported in the
    reference cell of the level-<math|m> reflection-positivity tiling centred
    at <math|o>;

    <item>its chessboard root <math|<mid|\|><around|\<langle\>|<big|prod><rsub|cells><text|reflected
    copies>|\<rangle\>><rsub|N,p><mid|\|><rsup|1/\<sharp\><text|cells>>> is
    at most <math|A>.
  </itemize-minus>

  The family has the <strong|chessboard bound in the schedule> if for every
  <math|d> and all <math|R,\<varepsilon\>\<gtr\>0> there is
  <math|A\<geqslant\>0> such that, for every level
  <math|m\<geqslant\><math-up|ref><around|(|d|)>> and all sufficiently large
  <math|N>, the centered budget holds with constant
  <math|A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>> for every period
  <math|p> and every <math|v\<in\>\<cal-L\><rsub|d>> with
  <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R>.

  <em|Lean:> <hlink|<verbatim|Extraction.Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>,
  <hlink|<verbatim|centeredBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23>.

  <strong|Proposition III.13.1 (one family for the ultraviolet and
  logarithmic packages).> Let <math|G> be simple and <math|b\<gtr\>0>. There
  is a Wilson family <math|C> with the following properties.

  <\enumerate>
    <item>Its kernel penalty is <math|b>.

    <item><strong|<math|C> is calibrated.> There are a full schedule of
    constants (sheet, block sizes, protection, delays, bar, wait, chart
    ratio, prices, post-cost) and a directed history whose trails generate
    the history of <math|C>. Every step from level <math|m+1> to level
    <math|m> satisfies the per-step estimates of III.9\UIII.12.

    <item><strong|<math|C> is consistent.>

    <\itemize-minus>
      <item>The trajectory is the selected one.

      <item>The local sections are sound.

      <item>For every <math|d>: <math|d+3\<leqslant\>J<around|(|<math-up|ref><around|(|d|)>|)>>,
      and <math|d+1\<leqslant\>> order<math|<rsub|m>> and
      <math|d\<leqslant\>> power<math|<rsub|m>> for every
      <math|m\<geqslant\><math-up|ref><around|(|d|)>>.

      <item>Stencils fit: <math|20*<around|(|<around|\||x<rsub|i>|\|>+1|)>\<leqslant\>>
      side<math|<around|(|N,p|)>> for every stencil point <math|x> of the
      degree-<math|d> local section, every coordinate <math|i>, and all
      <math|N,p> with <math|<math-up|ref><around|(|d|)>\<leqslant\>N>.

      <item>For each basis label, the placed local section is regular on its
      footprint and has the prescribed derivative bounds with size
      <math|<math-up|columns><rsub|N><space|0.17em>\<theta\><rsub|N><rsup|q>>,
      where <math|q> is its factor degree and <math|\<theta\><rsub|N>> is the
      level-<math|N> threshold.

      <item>The transfer data are calibrated from
      <math|<math-up|ref><around|(|d|)>> on.
    </itemize-minus>

    <item><math|C> has the chessboard bound in the schedule.

    <item><math|C> is <em|floral>: it is the centre of an analytic shooting
    family (Proposition III.13.7).

    <item><math|C> satisfies the three entrance conditions of the OPE:

    <\itemize-minus>
      <item>the shell estimates of III.11 for every <math|d,D,h> with
      <math|D+h=d+4>: there are <math|t\<gtr\>1> and
      <math|j<around|(|i|)>\<to\>\<infty\>> with
      <math|\<sigma\><rsub|j<around|(|i|)>>/\<sigma\><rsub|i>\<to\>t> for
      which the prescribed shell remainder bounds hold, for every choice of
      labels and extraction order;

      <item>slow growth of the cover sizes,
      <math|<math-up|cs><rsub|i+1><rsup|2>\<leqslant\>2<space|0.17em><math-up|cs><rsub|i><rsup|2>>,
      with <math|<around|(|L<rsub|i><space|0.17em><math-up|cs><rsub|i><rsup|2>|)><rsup|4>\<cdot\><around|(|<text|vacuum
      cost>|)>\<leqslant\>\<varepsilon\>*<space|0.17em>\<sigma\><rsub|i+1>>
      eventually;

      <item>a positive auxiliary radius sequence <math|\<rho\><rsub|i>>
      satisfying <math|log \<rho\><rsub|i>/\<sigma\><rsub|i>\<to\>-1>.
    </itemize-minus>

    <item>There are coefficient-map bound data <math|W>, allowance indices
    <math|r:\<bbb-N\>\<to\>\<bbb-N\>> and one-step transfer data <math|D> for
    which two properties hold. Write <math|K> for the bound function supplied
    by <math|W>.

    <\itemize-minus>
      <item><strong|The logarithmic OPE package.> This contains the transfer
      and remainder estimates of III.11, quantitative triangular label steps,
      auxiliary label comparisons, geometric separation bounds, and the sup
      bounds for products and the additional arity bounds of VII.4. It also
      gives <math|L<rsub|m>\<leqslant\><wide|\<beta\>|^><rsub|m>> and
      columns<math|<rsub|m>>, columns<math|<rsub|m+1>\<leqslant\><wide|\<beta\>|^><rsub|m>>;
      <math|r\<to\>\<infty\>>; and support exponent <math|100> at every
      level.

      <item><strong|Calibrated label steps.> For each <math|d,N,p,m> with
      <math|<math-up|ref><around|(|d|)>\<leqslant\>m\<less\>N>, there is a
      linear isomorphism <math|T> such that, writing
      <math|x<rsub|m+1>,x<rsub|m>> for the coefficient maps,

      <\equation*>
        <around|\<\|\|\>|x<rsub|m><around|(|v|)>-T*<around|(|V<rsub|L<rsub|m>>*x<rsub|m+1><around|(|v|)>|)>|\<\|\|\>><rsub|1>\<leqslant\><math-up|barunit><around|(|L<rsub|m>|)><space|0.17em><around|\<\|\|\>|<math-up|core><around|(|x<rsub|m+1><around|(|v|)>|)>|\<\|\|\>><rsub|1>*<space|2em><around|(|v\<in\>\<cal-L\><rsub|d>|)>,
      </equation*>

      where <math|V<rsub|L>> multiplies a component of engineering grade
      <math|e> by <math|L<rsup|d-e>>. For an input basis vector of
      engineering grade <math|e> and factor degree <math|q>, its only output
      component of engineering grade <math|\<leqslant\>e> is itself,
      multiplied by <math|<around|(|\<theta\><rsub|m>/\<theta\><rsub|m+1>|)><rsup|q>>.
      No component of lower factor degree occurs. The map commutes with the
      core projection and lattice symmetries, preserves the unit, and
      satisfies <math|<around|\<\|\|\>|T|\<\|\|\>><rsub|1>,<around|\<\|\|\>|T<rsup|-1>|\<\|\|\>><rsub|1>\<leqslant\>K*<around|(|J*<around|(|m+1|)>|)>>.
    </itemize-minus>

    <item><em|Coverage> holds. There is <math|g<around|(|k|)>\<to\>\<infty\>>
    with <math|g<around|(|k|)>\<leqslant\>k> and
    <math|a<rsub|g<around|(|k|)>>\<leqslant\><wide|\<beta\>|^><rsub|k>*<space|0.17em>a<rsub|k>>
    for large <math|k> such that, for every <math|d> and all large <math|k>,
    three probe panels of depth <math|d> are poised at level
    <math|g<around|(|k|)>> (VII.1).

    <item>For every extraction order <math|F> satisfying the cell hypotheses
    (IV.1), the grid approximation property holds at arbitrarily fine fixed
    levels, for bounded label degrees and the reflection pairs allowed in
    III.11. Complete weak comparison systems exist for every finite demand
    and degree horizon, every positive radius bound, and every real-spin
    structure on the smooth free comparison table.

    <item>For every extraction order <math|f> there are:

    <\itemize-minus>
      <item>a refinement <math|g>;

      <item>tables <math|A>, <math|<around|(|L<rsub|k>|)>> and <math|T>, with
      a bin <math|R> and a derivative plan <math|E>, forming extraction base
      data along <math|f\<circ\>g> (IV.1);

      <item>a seed <math|s> for <math|<around|(|C,f\<circ\>g,T|)>> such that
      the Maxwell rank condition holds for <math|T>.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem. The only hypotheses are <math|G> simple and
  <math|b\<gtr\>0>.

  <em|Lean:> <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>.
  The predicates, in the order of the items:
  <hlink|<verbatim|Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>,
  <hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>,
  <hlink|<verbatim|Oasis.Floral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71>,
  <hlink|<verbatim|Acme.Aroma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Ozone.lean#L16-L19>,
  <hlink|<verbatim|LogPackage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L29-L33>,
  <hlink|<verbatim|TrueSteps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L29-L32>
  with <hlink|<verbatim|CalibratedStep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix/Leading.lean#L19-L27>,
  <hlink|<verbatim|Dense.Coverage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L16-L24>,
  <hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>,
  <hlink|<verbatim|East.CompleteWeak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L35>,
  <hlink|<verbatim|Next.Extract.Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>,
  <hlink|<verbatim|Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>,
  <hlink|<verbatim|Maxwell.Ranks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L135-L139>.
  The engineering rescaling and leading map are
  <hlink|<verbatim|Bid.vowel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L63>
  and <hlink|<verbatim|Heading.leads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/LocalDebt.lean#L77-L81>.

  <strong|Proposition III.13.2 (the coordinated family).> Let <math|G> be
  simple and <math|b\<gtr\>0>. There is one Wilson family <math|C> with the
  following properties:

  <\itemize-minus>
    <item>it has kernel penalty <math|b> and is consistent, calibrated and
    floral;

    <item>it has the chessboard bound in the schedule;

    <item>it has the fixed-volume limits of III.13.5;

    <item>it has the logarithmic OPE package and the calibrated label steps;

    <item>it has coverage;

    <item>it has complete weak comparison systems along every extraction
    order satisfying the cell hypotheses.
  </itemize-minus>

  In addition, for <strong|every> extraction order <math|F> there are a
  refinement <math|g> and a table <math|T> such that:

  <\itemize-minus>
    <item>(a) the ordered limit holds for <math|T> along the <em|full> mesh
    sequence and the period subsequence of <math|F\<circ\>g>;

    <item>(b) the OPE services of VII.4 hold for
    <math|<around|(|C,F\<circ\>g,T|)>>;

    <item>(c) a construction record of II.2 for
    <math|<around|(|C,F\<circ\>g,T|)>> exists.
  </itemize-minus>

  <em|Status:> theorem. The family is chosen before <math|F>.

  <em|Lean:> <hlink|<verbatim|coordination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37>,
  <hlink|<verbatim|Extraction.Order.Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35>,
  <hlink|<verbatim|OPE.Facilities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/ElementaryLog.lean#L12-L13>,
  <hlink|<verbatim|Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>.

  <strong|Proposition III.13.3 (the common family, all phases).> Let <math|G>
  be simple, <math|b\<gtr\>0>, and let <math|f> be an extraction order. There
  are a family <math|C>, a refinement <math|g>, a table <math|T>, a
  construction record <math|F> for <math|<around|(|C,f\<circ\>g,T|)>> and a
  reconstruction record <math|\<cal-A\>> for every phase of <math|F> (V.3)
  such that:

  <\itemize-minus>
    <item>everything listed in III.13.2 holds for
    <math|<around|(|C,f\<circ\>g,T|)>>;

    <item>the reconstruction is <em|completed> for every phase: Wightman
    realization, surjective comparison maps to the Osterwalder\USchrader
    Hilbert spaces, unique vacuum, light-cone and heat-kernel bounds uniform
    over the phases, trivial commutant, the continued stress tensor,
    continuous dependence of boundary correlations on the phase, and the
    barycentre identities;

    <item>the derivative sector of <math|F> has a prescription <math|P>
    giving the OPE estimates for all fixed finite cluster trees and the
    corresponding estimates with separated spectators (VII.4). These
    estimates allow an arbitrary positive power loss.
  </itemize-minus>

  <em|Status:> theorem. In the statement <math|C> is quantified after
  <math|f>. The proof takes <math|C> from III.13.2, so in fact one family
  serves all <math|f>.

  <em|Lean:> <hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60>,
  <hlink|<verbatim|EveryPhase.Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51-L71>,
  <hlink|<verbatim|EveryPhase.Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117-L132>,
  <hlink|<verbatim|OPE.AllShapes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45>.

  <strong|Proposition III.13.4 (headline: moving-frame Gram limits on the
  common family).> Let <math|G> be simple, <math|b\<gtr\>0>, and let <math|f>
  be an extraction order. There are <math|C,g,T,F,\<cal-A\>,P> as in III.13.3
  with all of its conclusions. In addition, coverage holds at the cutoff of
  <math|F>, and the following holds for every ultrafilter <math|\<cal-U\>> on
  <math|\<bbb-N\>\<times\>\<bbb-N\>> finer than the filter of
  <math|f\<circ\>g> ("period index large, then mesh index large") and every
  depth <math|D>:

  <\enumerate>
    <item><em|Moving-frame portfolios> of depth <math|D> along
    <math|\<cal-U\>> exist. A portfolio consists of:

    <\itemize-minus>
      <item>levels <math|k<rprime|'>=k<rprime|'><around|(|k|)>\<to\>\<infty\>>
      with <math|k<rprime|'>\<leqslant\>k> and
      <math|a<rsub|k>\<leqslant\>a<rsub|k<rprime|'>>\<leqslant\><wide|\<beta\>|^><rsub|k>*<space|0.17em>a<rsub|k>>
      for all sufficiently large <math|k>;

      <item>three probe panels poised at level <math|k<rprime|'>> for all
      sufficiently large <math|k>;

      <item>label matrices having limits along <math|\<cal-U\>> for all
      sufficiently large <math|k>.
    </itemize-minus>

    <item>For every portfolio <math|X> there are linear isomorphisms
    <math|Y<rsub|k><around|(|d|)>> from the degree-<math|d> field space of
    the free Maxwell table onto that of <math|T> (<math|d\<leqslant\>D>,
    <math|k\<in\>\<bbb-N\>>), with the following properties.

    <\itemize-minus>
      <item>For all sufficiently large <math|k>, they respect the grading
      through depth <math|D>.

      <item>For each <math|d\<leqslant\>D>, the Gram forms expressed in these
      bases are bounded and coercive uniformly for all sufficiently large
      <math|k>.

      <item>For each <math|d\<leqslant\>D>, there is
      <math|q<rsub|d>\<in\>\<bbb-N\>> such that, for every sufficiently large
      <math|k> and every field <math|x>, there are representatives <math|v>
      and <math|v<rsub|N,p>\<to\>v> along <math|\<cal-U\>>, projecting to
      <math|x>, whose source costs at level <math|k> are eventually at most
      <math|<wide|\<beta\>|^><rsub|k><rsup|q<rsub|d>>*a<rsub|k><rsup|d>*<around|\<\|\|\>|Y<rsub|k><around|(|d|)><rsup|-1>*x|\<\|\|\>>>.
      Conversely, there is <math|K<rsub|d>\<geqslant\>0> such that every
      convergent family of representatives with source cost at most <math|z>
      along any nontrivial filter finer than <math|\<cal-U\>> satisfies
      <math|<around|\<\|\|\>|Y<rsub|k><around|(|d|)><rsup|-1>*x|\<\|\|\>>\<leqslant\>K<rsub|d>*a<rsub|k><rsup|-d>*z>.
      Both assertions hold for all sufficiently large <math|k>.

      <item>For every <math|d\<leqslant\>D>, the Gram form of <math|X> at
      step <math|k>, read in the basis <math|Y<rsub|k><around|(|d|)>>,
      converges as <math|k\<to\>\<infty\>> to the Gram form of the free
      Maxwell model in degree <math|d>.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem; headline declaration. In the statement <math|C> is
  quantified after <math|f>, as in III.13.3.

  <em|Lean:> <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>,
  <hlink|<verbatim|Weak.Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49>,
  <hlink|<verbatim|PricedIn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L29-L37>.
  <em|(proof of the wrapper read)>

  <strong|Proposition III.13.5 (fixed-volume limit with <math|k>
  derivatives).> Let <math|C> be as in III.13.1, and fix
  <math|d,k\<in\>\<bbb-N\>>. For all sufficiently large periods <math|p> (the
  threshold depends on <math|d> and <math|k>), every <math|n>, and all labels
  <math|v<rsub|1>,\<ldots\>,v<rsub|n>> of degrees <math|\<leqslant\>d>, there
  is a function <math|g> on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>
  such that, as <math|N\<to\>\<infty\>> along the whole sequence:

  <\enumerate>
    <item><math|g> is continuous on <math|\<Omega\><rsup|n><rsub|p>>. The
    lattice correlation functions <math|x\<mapsto\><around|\<langle\>|<big|prod><rsub|i>O<rsup|N,p><rsub|v<rsub|i>><around|(|x<rsub|i>|)>|\<rangle\>><rsub|N,p>>,
    extended periodically and then as step functions using coordinatewise
    ceiling projection onto <math|<around|(|a<rsub|N>*\<bbb-Z\><rsup|4>|)><rsup|n>>,
    converge to <math|g> uniformly on compact subsets of
    <math|\<Omega\><rsup|n><rsub|p>>.

    <item>For every word <math|u> of at most <math|k> coordinate directions,
    the step-function extensions of the normalized forward differences
    converge to <math|\<partial\><rsub|u>*g> uniformly on compact subsets of
    <math|\<Omega\><rsup|n><rsub|p>>. The same limit is obtained by
    multilinear interpolation of any fixed word of normalized coordinate
    differences with positive integer step lengths and fixed integer stencil
    offsets, including forward, backward and centred differences.

    <item>On <math|\<Omega\><rsup|n><rsub|p>> these iterated directional
    derivatives exist: <math|\<partial\><rsub|a>*<around|(|\<partial\><rsub|u>*g|)>=\<partial\><rsub|<around|(|a,u|)>>*g>
    whenever the word <math|u> has length <math|\<less\>k>.

    <item>For every test function <math|t> admissible at period <math|p>,
    <math|t*g> is integrable and <math|a<rsub|N><rsup|4*n>*<big|sum><rsub|r>t<around|(|r|)><space|0.17em><around|\<langle\>|<big|prod><rsub|i>O<rsup|N,p><rsub|v<rsub|i>><around|(|r<rsub|i>|)>|\<rangle\>><rsub|N,p>\<to\><big|int>t*g>,
    where the sum is over the centred representatives of the torus lattice.
  </enumerate>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Poppy.Margins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L16-L21>,
  <hlink|<verbatim|Poppy.bravo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Summit.lean#L19-L22>,
  <hlink|<verbatim|Poppy.blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108>.

  <strong|Proposition III.13.6 (convergence at separated lattice points).>
  Let <math|C<rsup|\<b-up-s\>>> be a member of the shooting family of
  III.13.7. At a fixed period <math|p>, assume:

  <\itemize-minus>
    <item>its shifts converge, <math|s<rsub|N,p>\<to\>s> as
    <math|N\<to\>\<infty\>>, with <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>>;

    <item><math|C<rsup|\<b-up-s\>>> has the chessboard bound in the schedule;

    <item>the slow-growth, label-transfer and remainder bounds hold (these
    are supplied by the bundle of III.13.7 for every assignment of shifts).
  </itemize-minus>

  Let <math|J\<in\>\<bbb-N\>>, let <math|u<rsub|1>,\<ldots\>,u<rsub|I>> be
  labels with <math|<math-up|ref><around|(|deg u<rsub|i>|)>\<leqslant\>J>,
  and let <math|o<rsub|1>,\<ldots\>,o<rsub|I>> be pairwise distinct sites of
  the level-<math|J> lattice of the period-<math|p> torus. Then the sequence

  <\equation*>
    \<Psi\><rsub|N>=<around*|\<langle\>|<big|prod><rsub|i=1><rsup|I>O<rsup|N,p><rsub|u<rsub|i>><around|(|o<rsub|i>|)>|\<rangle\>><rsub|N,p>,
  </equation*>

  with <math|o<rsub|i>> read as sites of <math|\<Lambda\><rsub|N,p>>,
  converges as <math|N\<to\>\<infty\>>. <em|Status:> theorem. For the family
  of III.13.1, <math|\<b-up-s\>\<equiv\>0>.

  <em|Lean:> <hlink|<verbatim|Hearth.food>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112>.

  <strong|Proposition III.13.7 (the family is the centre of an analytic
  shooting family).> For the family <math|C> of III.13.1 there are:

  <\itemize-minus>
    <item>a schedule with its per-step data;

    <item>a shooting structure with an arc;

    <item>a label-transfer bundle;

    <item>reference levels <math|<math-up|ref>>;
  </itemize-minus>

  such that the following holds.

  <\enumerate>
    <item><em|Shooting.> There is <math|r<rsub|\<ast\>>\<gtr\>0>, depending
    only on the schedule, such that for all <math|N,p> and every real
    <math|s> with <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>> there is
    exactly one Wilson coupling whose trajectory under the fixed recursion
    stays in the prescribed scalar coupling bands and reaches
    <math|<wide|\<beta\>|\<bar\>>+s> at level <math|0>. For an assignment
    <math|\<b-up-s\>=<around|(|s<rsub|N,p>|)>> of real shifts with
    <math|<around|\||s<rsub|N,p>|\|>\<less\>r<rsub|\<ast\>>>, let
    <math|C<rsup|\<b-up-s\>>> be the Wilson family with these trajectories
    and the labels, sections and reference levels of the bundle. Then
    <math|C=C<rsup|\<b-0\>>>.

    <item><em|Analyticity, uniform in the cutoff.> For <math|m\<leqslant\>N>,
    the level-<math|m> coupling <math|\<beta\><rsub|m><around|(|N,p;s|)>> and
    the normalized activity readings of the level-<math|m> effective action
    extend holomorphically to <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>>.
    They are bounded there by <math|3*<wide|\<beta\>|^><rsub|m>> and by
    <math|<math-up|soft>=<math-up|rim>/8> respectively. For fixed <math|m,p>
    they converge as <math|N\<to\>\<infty\>>, with all derivatives in
    <math|s>, locally uniformly on the disc.

    <item><em|Bounds.> <math|C> satisfies the calibration package (with
    constant allowance) and the priced sup bounds. For every assignment
    <math|\<b-up-s\>>, <math|C<rsup|\<b-up-s\>>> satisfies the label-transfer
    and remainder bounds and has the chessboard bound in the schedule.
    Extraction base data exist at the centre.

    <item><em|Analytic transfer data.> There is <math|a\<gtr\>0>, with its
    disc contained in the shooting domain, on which the bundle has
    holomorphic coefficient and transfer data for all <math|d,N,p> with
    <math|<math-up|ref><around|(|d|)>\<leqslant\>N>. In particular, the
    inverse terminal label maps extend holomorphically there.

    <item><em|Analytic correlations.> Fix <math|d,m>. For all large <math|p>,
    every <math|n> and labels of degree <math|\<leqslant\>d>, there are
    <math|b<rprime|'>\<gtr\>0> and functions
    <math|W<rsub|N><around|(|z,x|)>>, holomorphic in
    <math|<around|\||z|\|>\<less\>b<rprime|'>>, and
    <math|f<around|(|z,\<cdot\>|)>> on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>
    such that:

    <\itemize-minus>
      <item><math|W<rsub|N><around|(|s,\<cdot\>|)>> is the lattice
      correlation function of <math|C<rsup|\<b-up-s\>>> whenever
      <math|s<rsub|N,p>=s> (for every <math|N> with
      <math|<math-up|ref><around|(|deg v<rsub|i>|)>\<leqslant\>N> for all
      <math|i>);

      <item>for every complex <math|z> in the disc,
      <math|f<around|(|z,\<cdot\>|)>> has continuous iterated coordinate
      derivatives through order <math|m> on <math|\<Omega\><rsup|n><rsub|p>>.
      The step-function differences and interpolated differences converge to
      these derivatives, with all derivatives in <math|z>, uniformly on
      products of compact subsets of the disc and
      <math|\<Omega\><rsup|n><rsub|p>>. At every real shift these limits
      agree with the fixed-volume limit of the constant-shift family;

      <item>for admissible <math|t>, <math|z\<mapsto\><big|int>t*<space|0.17em>f<around|(|z,\<cdot\>|)>>
      is holomorphic, and the smeared lattice correlations converge to it,
      with all derivatives in <math|z>, locally uniformly.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem (part of III.13.1). The full-mesh ordered limits in
  Ÿ4.5 use the real shooting trajectories and the bounds of item 3; they do
  not use the analytic correlation limits of item 5.

  <em|Lean:> <hlink|<verbatim|Oasis.Floral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L55-L71>,
  <hlink|<verbatim|Oasis.Spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L41-L49>,
  <hlink|<verbatim|Upland.Arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L33-L38>,
  <hlink|<verbatim|Mast.Cellar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37>,
  <hlink|<verbatim|Cellar.yard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L60>,
  <hlink|<verbatim|Harvest.Barn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L20-L23>,
  <hlink|<verbatim|Gale.Circuit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L43-L50>,
  <hlink|<verbatim|Beach.Shoal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L32-L36>,
  <hlink|<verbatim|Beach.Realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L35-L39>.
  <em|(definitions and producing proofs read)>

  <section|2. What it uses><label|2-what-it-uses>

  Inputs from other units.

  <\itemize-minus>
    <item><strong|I.1.> The Wilson measure and partition function, and the
    one-loop slope <math|\<kappa\><rsub|G>=11*<space|0.17em>C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>
    (<math|C<rsub|G>> the Casimir).

    <item><strong|II.1, II.2.> Labels, local sections, renormalized
    observables; tables, extraction orders, seeds and construction records.

    <item><strong|III.1.> Kernel choices with penalty <math|b> for which
    every patch branches (unique minimizing frames and predictors, a
    non-empty axial fallback): <hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>,
    <hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>.

    <item><strong|III.2.> The order of choice. The pre-<math|L> constants
    form the sheet; then come the block sizes, the wages, the protection
    <math|\<theta\>>, the delays, the bar and the waits, in this order.

    <item><strong|III.4 and III.8.> The relay supply
    <hlink|<verbatim|posters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L29-L33>,
    and the chessboard product estimate <hlink|<verbatim|GridApprox.tariff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78>.

    <item><strong|III.7.> The one-loop annulus calculation.
    <hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>
    holds for every simple <math|G> by <hlink|<verbatim|Stationary.pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>
    through <hlink|<verbatim|Fluent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115>.
    This is where the coefficient of <math|log L> in the marginal flow comes
    from (Lemma 4.3).

    <item><strong|III.9\UIII.12.> The per-step estimates, the selected
    trajectory and the band, and the directed histories, alloys and factors.
    They enter through the step package <hlink|<verbatim|uv_commerce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50>
    of this unit.

    <item><strong|III.11.>

    <\itemize-minus>
      <item>The calibration package <hlink|<verbatim|Chateau>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Almandine.lean#L24-L36>.
      It includes a certified schedule, consistency, transfer and remainder
      estimates, the chessboard bound in the schedule, and extraction base
      data, seeds and Maxwell ranks after refinement of every extraction
      order.

      <item>The priced sup bounds <hlink|<verbatim|Velour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Bonus.lean#L34-L36>.

      <item>The OPE entrance <hlink|<verbatim|Acme.emanate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L31-L37>.

      <item>The weak comparison systems <hlink|<verbatim|sponsored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Gran.lean#L38-L51>.

      <item>The cost bound <hlink|<verbatim|Ribbons.laurelE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/North/Economist.lean#L23-L32>.
    </itemize-minus>

    <item><strong|III.15, III.16.> Cost accounting for labels, and analytic
    tools.

    <item><strong|IV.1.> The chessboard bound in the schedule (as a
    definition), the cell hypotheses, extraction base data, the Maxwell
    ranks, and the Arzelà\UAscoli-type lemma
    <hlink|<verbatim|Extraction.growFrom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97>.

    <item><strong|V.3.> Reconstruction for every phase:
    <hlink|<verbatim|all_characters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L75-L80>.

    <item><strong|VII.1.>

    <\itemize-minus>
      <item>Coverage, through <hlink|<verbatim|Dense.covered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Passes.lean#L26-L33>.

      <item>The slim-window port <hlink|<verbatim|slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>.

      <item>The calibrated label steps.

      <item>The portfolios <hlink|<verbatim|fromCoverage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67>.
    </itemize-minus>

    <item><strong|VII.4.>

    <\itemize-minus>
      <item>The logarithmic package and the OPE services.

      <item>The prescriptions <hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>
      and the shapes.

      <item>The delay raises <hlink|<verbatim|OPE.halo_delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Gate.lean#L45-L54>
      and <hlink|<verbatim|OPE.Log.aux_delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log/Plans.lean#L19-L25>.
    </itemize-minus>

    <item><strong|VIII.1.> The construction record and
    <hlink|<verbatim|Acme.glistens>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Summit.lean#L17-L30>,
    which turns the UV package and the calibration into a record.
  </itemize-minus>

  Standard mathematics used.

  <\itemize-minus>
    <item><strong|Balaban's block-spin renormalization> for lattice gauge
    theory (Balaban, CMP 95\U122, 1984\U89; Dimock, <em|The renormalization
    group according to Balaban I\UIII>). The convergence statements of
    Ÿ4.2\U4.4 use the per-step estimates together with stability of the
    chosen recursion.

    <item><strong|Shooting by contraction> (Banach fixed point), uniform in
    the cutoff.

    <item><strong|Vitali's convergence theorem> (Vitali\UPorter). Locally
    bounded holomorphic functions that converge on a real segment converge
    locally uniformly, with all derivatives. The Lean proof maps into
    <math|\<ell\><rsup|\<infty\>><around|(|\<bbb-N\>;Y|)>> and applies the
    identity principle to the closed subspace of convergent sequences.

    <item><strong|Arzelà\UAscoli>, in the form: asymptotic equicontinuity on
    compacts together with convergence on a dense set gives locally uniform
    convergence.

    <item><strong|Dominated convergence.>

    <item><strong|Chessboard estimates> for reflection-positive measures
    (Fröhlich\UIsrael\ULieb\USimon 1978; Glimm\UJaffe, ch. 10).

    <item><strong|Ultrafilters.>
  </itemize-minus>

  <strong|Imported constants and assumptions.> The statements of
  III.13.1\UIII.13.4 have no hypotheses beyond <math|G> simple and
  <math|b\<gtr\>0>. The one-loop slope <math|\<kappa\><rsub|G>> enters the
  coupling-shift estimate (Lemma 4.3) through the hypothesis the annulus
  calculation, which III.7 proves for every simple <math|G>. The construction
  fixes the following constants:

  <\itemize-minus>
    <item>the stage data: first stage <math|4>, Taylor order <math|6+i>,
    power <math|2+i>, and support exponent <math|100> at level <math|i>;

    <item>the allowances <math|Q\<equiv\>1> (for the floral property) and
    <math|Q<rsub|2><around|(|j|)>=j+1> (for the OPE iteration);

    <item>auxiliary data <math|<around|(|40,1,1|)>>;

    <item>a bar parameter <math|2>;

    <item>the target rate <math|-7/16> of the factor.
  </itemize-minus>

  The analytic argument uses <math|<math-up|soft>=<math-up|rim>/8\<less\>1>,
  <math|<math-up|rad>=<math-up|rim>/4> and the gain
  <math|e<rsup|<around|(|\<sigma\><rsub|k>-\<sigma\><rsub|m>|)>/8>>.

  <section|3. Strategy><label|3-strategy>

  <strong|The order of choice.> Each estimate of III.9\UIII.12, and each
  requirement of the later parts (OPE with logarithmic corrections, coverage,
  weak comparison), has the form "there is a threshold beyond which the
  property holds". It is also stable under further raising: in the preorders
  on delays, waits and wages, and under decreasing the protection. Successive
  raises meet the finitely many requirements while preserving this order:
  sheet \<rightarrow\> block sizes \<rightarrow\> wages \<rightarrow\>
  protection \<rightarrow\> delays \<rightarrow\> bar \<rightarrow\> wait.

  Increasing stage parameters (Taylor order <math|6+i>, power <math|2+i>)
  accommodate the countably many label degrees: degree <math|d> is required
  only from its fixed reference level <math|<math-up|ref><around|(|d|)>>
  onwards.

  <strong|Shooting and convergence at a fixed level.>

  <\enumerate>
    <item>The family is the member <math|s=0> of a one-parameter family in
    which the terminal coupling at level <math|0> is
    <math|<wide|\<beta\>|\<bar\>>+s>. For each cutoff <math|N> the trajectory
    is found by shooting: it is the fixed point of a contraction with rate
    <math|1/2>, uniformly in <math|N>.

    <item>This uniformity, the convergence of the background fields and
    coupling shifts at each level (Lemma 4.7), and an
    <math|<math-up|soft><rsup|v>> decay of the influence of levels far above
    <math|m> together give convergence, as <math|N\<to\>\<infty\>> along the
    whole sequence, of the coupling and the effective action at any fixed
    level <math|m>, for every real <math|s> in the shooting disc (Lemma 4.8).

    <item>Holomorphic extension in <math|s> to a disc independent of <math|N>
    and <math|p>, with uniform bounds, and Vitali's theorem upgrade this to
    locally uniform convergence of all derivatives in <math|s> on the disc
    (Lemma 4.9).
  </enumerate>

  <strong|From the effective action to correlations.> A correlation of
  renormalized observables at distinct points is handled in three steps.

  <\enumerate>
    <item><strong|RG identity.> For a function of the level-<math|k>
    variables, its conditional average through the block-spin kernels has
    Wilson expectation equal to its expectation in the level-<math|k>
    effective measure. That measure converges as <math|N\<to\>\<infty\>>
    (Lemmas 4.11\U4.12).

    <item><strong|Coarse approximation.> Each fine renormalized observable is
    close to the conditional average of a level-<math|k> observable whose
    coefficients converge as <math|N\<to\>\<infty\>>. The error is measured
    in the chessboard norm and is small for <math|k> large, because the gain
    <math|e<rsup|<around|(|\<sigma\><rsub|k>-\<sigma\><rsub|m>|)>/8>> beats
    the subexponential growth of the costs (Lemma 4.13).

    <item><strong|Product estimate.> The chessboard product inequality turns
    these one-point approximations into an approximation of the product
    (Lemma 4.14).
  </enumerate>

  A Cauchy argument then gives Proposition III.13.6. Proposition III.13.5
  follows by Arzelà\UAscoli: there is convergence on the dense set of grid
  points of all levels, and there is equicontinuity from uniform bounds on
  lattice differences of order <math|k+1>. Those bounds need a non-degeneracy
  ("slicing") of the label snapshots, which is known only for large periods,
  so the fixed-volume statement holds for <math|p> large. The reports then
  feed this family to the OPE entrance, reconstruction and Gram machinery
  defined in other units.

  Balaban's estimates are used only through the per-step package; what this
  unit adds is the analysis just described and the order of choice.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Choosing the constants once><label|41-choosing-the-constants-once>

  <strong|Lemma 4.1 (the step package with all later constants raised).> Let
  <math|G> be simple. Fix the purchased sheet, prices, numerical bounds,
  scope, tariffs and block-size floor of Lemma 4.2, and assume that, for
  every stage pair <math|i\<leqslant\>j\<leqslant\>i+1> with <math|i> beyond
  the first stage and every <math|d+3\<leqslant\>i>, the local-section and
  nonconstant-label expansion costs are bounded by the supplied budget at
  stage <math|j>. Let <math|P*B,P<rsub|2>:\<bbb-N\>\<to\>\<bbb-N\>> be
  arbitrary allowance sequences. There is a floor
  <math|f\<geqslant\>v<rsub|0>> on the block sizes such that, for every
  block-size sequence <math|L\<geqslant\>f>, the following holds.

  <\itemize-minus>
    <item>Block-size rolls <math|D> exist.

    <item>For every roll <math|D> there is a wage threshold <math|U>. For
    every wage <math|w\<geqslant\>U>, postage data, exchange data and
    insertion tariff, there is a post-cost <math|P>.

    <item>For every sequence <math|\<theta\><rsub|0>:\<bbb-N\>\<to\>\<bbb-R\>>
    with <math|\<theta\><rsub|0><around|(|i|)>\<gtr\>0> for all <math|i>,
    there is a protection sequence <math|\<theta\>\<leqslant\>\<theta\><rsub|0>>.

    <item>For all menus, auxiliary data and delays <math|T<rsub|0>> there is
    an ordered delay <math|V\<geqslant\>T<rsub|0>> such that the following
    holds for every delay <math|Y\<geqslant\>V>, every bar, every wait
    <math|I> and every level system <math|a> paid by <math|I> whose spacing
    schedule has the divisor property. There are a directed history <math|B>
    on the given level system <math|a> and a set of per-step data <math|R>
    for this schedule, with the prescribed wages, exchange, menu and
    auxiliary data, postage rates bounded by the requested rates, the
    prepared insertion data, and:

    <\itemize-minus>
      <item>label-transfer bounds and connected-activity bounds for
      iteration;

      <item>target rates <math|\<leqslant\>-7/16>;

      <item>repeated-insertion bounds for both allowances;

      <item>startup and smallness data for shooting;

      <item>continuity bounds for a single RG step;

      <item>fixed-level limits of the kinematic coupling shifts and paths;

      <item>covariance comparison data.
    </itemize-minus>
  </itemize-minus>

  <em|Sketch:> The per-step estimates are supplied in the required order of
  choice. Successive delay raises add the later requirements. Each raise is a
  lemma "there is <math|V<rprime|'>\<geqslant\>V> such that every
  <math|Y\<geqslant\>V<rprime|'>> has the property". Raise the entry-coupling
  threshold pointwise by taking its maximum with the shooting threshold.
  Every subsequent delay increase preserves the preceding estimates.

  <em|Lean:> <hlink|<verbatim|multitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L31-L79>,
  <hlink|<verbatim|uv_commerce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Trading.lean#L22-L50>.
  <em|(proof of <verbatim|multitude> read; <verbatim|uv_commerce> read only
  as far as its call to <verbatim|Roof.uv_timberT>)>

  <strong|Lemma 4.2 (the purchased sheet).> Let <math|G> be simple, <math|K>
  kernel choices for which every patch branches, and <math|v> stage data
  satisfying the following conditions:

  <\itemize-minus>
    <item>first stage <math|\<geqslant\>4>;

    <item>Taylor orders monotone and <math|\<geqslant\>max <around|(|6,i|)>>;

    <item>powers monotone and <math|\<geqslant\>max <around|(|2,i|)>>;

    <item>support exponents monotone and positive.
  </itemize-minus>

  For every two allowance sequences there are a sheet with kernel <math|K>
  and stage data <math|v>, prices, a budget sequence and a bound <math|W>,
  chosen before the tariffs and scopes. For every tariff and scope there is
  then a block-size floor above the sheet floor such that Lemma 4.1 applies
  to every larger block-size sequence.

  <em|Sketch:> Choose the sheet using three inputs:

  <\itemize-minus>
    <item>the kinematic constant issuer: pre-<math|L> constants chosen so
    that, once <math|L> is revealed, only waiting is needed and the target
    estimates hold;

    <item>the horizon theorem: horizon data for every sheet with kernel
    <math|K>;

    <item>the kinematic convergence of Lemma 4.7.
  </itemize-minus>

  Then apply Lemma 4.1.

  <em|Lean:> <hlink|<verbatim|multitude_foot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Expenditures.lean#L84-L93>,
  <hlink|<verbatim|sailsV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Case/Wing.lean#L95-L154>,
  <hlink|<verbatim|office>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Clocks.lean#L43-L108>,
  <hlink|<verbatim|profiles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Free/Lease.lean#L171-L182>.
  <em|(proof of <verbatim|multitude_foot> read; the others statement only)>

  <strong|Lemma 4.3 (the one-loop running of the marginal coupling).> Let
  <math|G> be simple. Fix kernel choices, a stage <math|J>, a colour
  direction, positive tolerances <math|\<varepsilon\>,w,\<delta\>>, and
  nonnegative <math|D,Z,C,Z<rprime|'>>. There are
  <math|\<kappa\>\<geqslant\>0> and <math|s\<gtr\>0> with the following
  property. For all <math|\<tau\>,<math-up|pace>\<gtr\>0> and
  <math|A\<geqslant\>0> satisfying the annulus calculation of III.7 with
  parameters <math|<around|(|G,w,\<varepsilon\>,D,Z,\<tau\>,A|)>>, there are:

  <\itemize-minus>
    <item><math|d\<geqslant\>0> and <math|\<gamma\>\<gtr\>0>;

    <item>an integer <math|u>;

    <item>functions <math|\<beta\><around|(|L|)>> and
    <math|\<Lambda\><rsub|0><around|(|L|)>>;
  </itemize-minus>

  such that every sequence of step data with stage <math|J>, block size
  <math|L\<geqslant\>u>, diverging coarse side lengths, and the comparison
  hypotheses of III.7 admits the following data. Those hypotheses include
  input and output covariance strip bounds, input path bounds, admissible
  forests and charts, spectral gap and criticality estimates, heat bounds,
  direct clip bounds <math|Z,Z<rprime|'>>, a positive gap parameter and
  amplitude <math|\<Lambda\>\<geqslant\>1>. The output consists of:

  <\itemize-minus>
    <item>background path data <math|Y>;

    <item>a number <math|\<alpha\>>, the shift of the marginal coupling read
    from the actual quadratic form of the step in a colour direction, with
  </itemize-minus>

  <\equation*>
    <around|\||\<alpha\>+\<kappa\><rsub|G>*log L|\|>+1\<leqslant\>d;
  </equation*>

  <\itemize-minus>
    <item>equality of the classical Taylor coefficients through order
    <math|4>, and a finite-volume thermal comparison estimate. For every
    <math|\<Theta\>\<geqslant\>\<beta\><around|(|L|)>> and
    <math|c<rprime|'>\<leqslant\>\<gamma\>>, on a coarse torus with
    <math|\<nu\>> sites in each coordinate, the second derivatives differ by
    at most <math|\<nu\><rsup|4>*\<Theta\>*e<rsup|-c<rprime|'>*\<nu\>>> on
    the prescribed unit-bounded wave probes. The output path has its
    announced bounds whenever <math|0\<less\>\<eta\><rprime|'>\<leqslant\>s>,
    <math|A<rprime|'>\<geqslant\>\<kappa\>> and
    <math|\<Lambda\><rprime|'>\<geqslant\>max
    <around|(|\<Lambda\><rsub|0><around|(|L|)>,<math-up|pace><space|0.17em>\<Lambda\>|)>>.
  </itemize-minus>

  The annulus calculation supplies a comparison quadratic form whose coupling
  shift differs from <math|-\<kappa\><rsub|G>*log L> by a constant
  independent of <math|L>. Its conclusion applies to all odd <math|L> beyond
  a threshold under the input path, covariance, floor and compatibility
  assumptions of III.7.

  <em|Sketch:> <math|\<alpha\>> is compared with the coupling shift of the
  annulus comparison form, and the two bounds are added. The constant
  <math|d> is chosen before <math|L>, so the error is bounded uniformly in
  <math|L>.

  <em|Lean:> <hlink|<verbatim|ceilings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Heal.lean#L24-L114>,
  <hlink|<verbatim|colorReady>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Choices.lean#L137-L178>,
  <hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>.
  <em|(the part of the proof of <verbatim|ceilings> that bounds
  <math|\<alpha\>> read; <verbatim|colorReady> statement only)>

  <strong|Lemma 4.4 (the bundle and the joint offers).> Let <math|G> be
  simple, <math|K> kernel choices for which every patch branches, <math|v>
  satisfying the stage conditions of Lemma 4.2 and having support exponents
  <math|\<geqslant\>100>, and <math|Q,Q<rsub|2>:\<bbb-N\>\<to\>\<bbb-N\>>
  monotone with values <math|\<geqslant\>1>. There are:

  <\itemize-minus>
    <item>a sheet with kernel <math|K> and stage data <math|v>;

    <item>prices, a budget sequence and a bound <math|K<rprime|'>>;

    <item>a floor <math|\<tau\>\<geqslant\><math-up|floor><rsub|L>>;
  </itemize-minus>

  such that for every block-size sequence <math|k\<geqslant\>\<tau\>> rolls
  exist, and the following holds through the quantifier chain of Lemma 4.1.
  In that chain the waits receive one more raise <math|Z>, of readiness,
  minimal length and window. Every level system paid by this raised wait and
  satisfying the divisor property then carries:

  <\itemize-minus>
    <item>a directed history and a factor;

    <item>a shooting structure <math|\<cal-S\>> with an arc;

    <item>a label-transfer bundle over <math|\<cal-S\>>;
  </itemize-minus>

  and the family <math|C<rsup|\<b-0\>>> built from the bundle has the
  following properties:

  <\itemize-minus>
    <item>the calibration package for both <math|Q> and <math|Q<rsub|2>>;

    <item>slow growth of the cover sizes;

    <item>the priced sup bounds (three variants);

    <item>the bundle conditions of III.13.7.3;

    <item>calibrated label steps;

    <item>the leases, and target rates <math|\<leqslant\>-7/16>.
  </itemize-minus>

  In addition:

  <\itemize-minus>
    <item>there is a radius <math|r\<gtr\>0> such that the disc of radius
    <math|r> lies in the analytic domain and the transfer data extend
    holomorphically to it for all <math|d,N,p> with
    <math|<math-up|ref><around|(|d|)>\<leqslant\>N>;

    <item>complete weak comparison systems exist for every extraction order.
  </itemize-minus>

  <em|Sketch:> Lemma 4.2 supplies the schedule. Increase the block-size floor
  to ensure <math|<math-up|rate><around|(|L|)>*<around|(|1+2<space|0.17em><math-up|columns>|)><space|0.17em><math-up|orbitCost>\<leqslant\><math-up|barunit><around|(|L|)>>,
  then construct the bundle. The relay supply and a further wait increase
  give weak comparison systems. The leases and target rates give the common
  disc for holomorphic transfer.

  <em|Lean:> <hlink|<verbatim|havens_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/SameFactory.lean#L60-L137>,
  <hlink|<verbatim|jointOffers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L36-L66>,
  <hlink|<verbatim|Gale.sheaf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Gale/Flange.lean#L57-L67>.
  <em|(proof of <verbatim|jointOffers> read; statement and opening of
  <verbatim|havens_log> read)>

  <strong|Lemma 4.5 (instantiation).> Proposition III.13.1 follows from Lemma
  4.4 with the following choices.

  <\itemize-minus>
    <item><strong|Kernel.> The kernel choices have penalty <math|b> (III.1).
    The stage data are <math|<around|(|4,<space|0.17em>6+i,<space|0.17em>2+i,<space|0.17em>100|)>>,
    and the allowances are <math|Q\<equiv\>1>,
    <math|Q<rsub|2><around|(|j|)>=j+1>.

    <item><strong|Block sizes.> Take the maximum of the floor of Lemma 4.4
    and the relay floor.

    <item><strong|Post-<math|L> data.> The menu is canonical, the auxiliary
    data are <math|<around|(|40,1,1|)>>, the wage is the threshold itself,
    and <math|\<theta\><rsub|0>\<equiv\>1>.

    <item><strong|Delays.> Zero delays are raised by the geometric delay
    bound and the logarithmic delay bound; the latter gives <math|L<rsub|m>>,
    columns <math|\<leqslant\><wide|\<beta\>|^><rsub|m>>.

    <item><strong|Bar and wait.> A bar above the delays with parameter
    <math|2> is chosen. A wait with slim window is thickened by the
    slim-window theorem so that it carries a certified station port, then
    joined with the wait of Lemma 4.4. The schedule existence theorem gives a
    paid level system.
  </itemize-minus>

  Then:

  <\itemize-minus>
    <item>coverage follows from the certified station port;

    <item>floral from Lemma 4.18;

    <item>the OPE entrance conditions from the shell estimate, the slow
    growth of cover sizes and the radius asymptotics;

    <item>the logarithmic package is assembled from the label-transfer and
    remainder bounds, the priced bounds, the calibrated steps, the budget,
    <math|r\<to\>\<infty\>> (from the depth of the fits) and support exponent
    <math|100>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|uv_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Assembly/Flowers.lean#L75-L130>,
  <hlink|<verbatim|Axial.viable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Branch/Pick.lean#L137-L142>.

  <subsection|4.2 Shooting, and the limit at a fixed
  level><label|42-shooting-and-the-limit-at-a-fixed-level>

  <strong|Lemma 4.6 (shooting).> Let <math|r<rsub|\<ast\>>\<gtr\>0> be the
  radius of the arc; it depends only on the schedule. For all <math|N,p> and
  real <math|<around|\||s|\|>\<less\>r<rsub|\<ast\>>>:

  <\itemize-minus>
    <item>there is exactly one <math|\<beta\>\<in\>\<bbb-R\>> for which the
    fixed startup and step recursion has a trajectory staying in all
    prescribed scalar bands and satisfying <math|\<beta\><rsub|N>=\<beta\>>,
    <math|\<beta\><rsub|0>=<wide|\<beta\>|\<bar\>>+s>;

    <item>the realized trajectory satisfies the band and step conditions at
    every level, and its level-<math|0> coupling is
    <math|<wide|\<beta\>|\<bar\>>+s>;

    <item><math|\<beta\>> is the value at <math|s> of the holomorphic
    function <math|\<beta\><rsub|N><around|(|N,p;\<cdot\>|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Arc.exists_trial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L71-L75>,
  <hlink|<verbatim|Oasis.spring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L51-L53>,
  <hlink|<verbatim|Spire.Uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Spire/Spark.lean#L37-L41>.
  <em|(the wrappers read; existence and uniqueness come from the fitted
  structure, statement only)>

  <strong|Lemma 4.7 (kinematic convergence at each level).> Fix a paid level
  system, the horizon and chart data, a colour direction, the small positive
  pulse parameter, the one-step kinematic estimates and the limiting
  covariance data supplied by Lemma 4.2. There are background paths and
  coupling shifts <math|\<alpha\><rsub|N><around|(|m|)>> satisfying all
  kinematic step estimates such that, for every level <math|m>:

  <\itemize-minus>
    <item><math|\<alpha\><rsub|N><around|(|m|)>> converges as
    <math|N\<to\>\<infty\>>;

    <item>there are a limiting background path and <math|w<rsub|m>> strictly
    larger than the level-<math|m> width such that, for every
    <math|u\<less\>w<rsub|m>>, the path coefficients converge in the
    exponentially weighted sum norm of width <math|u>. Their path supports
    agree with those of the limit for all sufficiently large <math|N>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Reward.work
  item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Lights.lean#L74-L78>,
  <hlink|<verbatim|Reward.turning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward/Tides.lean#L103-L116>.
  <em|(proof of <verbatim|work item> read; <verbatim|turning> statement
  only)>

  <strong|Lemma 4.8 (ultraviolet convergence at a fixed level, real shifts).>
  Fix the shooting structure and assume its one-step continuity property and
  the kinematic convergence of Lemma 4.7; both are supplied by the arc. For
  every real <math|s> in the analytic domain, every level <math|m> and every
  period <math|p>, two quantities converge as <math|N\<to\>\<infty\>> along
  the whole sequence: the effective activities at level <math|m>, and the
  level-<math|m> coupling data of the trajectory ending at
  <math|<wide|\<beta\>|\<bar\>>+s>.

  <em|Sketch:>

  <\enumerate>
    <item><strong|Contraction.> The trajectory with cutoff <math|N> is the
    fixed point of a map on coupling sequences. Its <math|k>-th iterate from
    <math|0> lies within <math|<math-up|rad>\<cdot\>2<rsup|1-k>> of the fixed
    point, uniformly in <math|N>.

    <item><strong|Stability.> If the level-<math|<around|(|m+1|)>> data
    converge as <math|N\<to\>\<infty\>>, so do the level-<math|m> data and
    the claimed coupling shift of the step. By induction on <math|k>, every
    iterate therefore converges level by level. The coupling shifts converge
    by Lemma 4.7.

    <item><strong|Decay of far-ultraviolet influence.> The level-<math|m>
    activities depend on the levels above <math|m+v> only up to
    <math|<math-up|soft><rsup|v>> with <math|<math-up|soft>\<less\>1>,
    uniformly in <math|N>.

    <item><strong|Conclusion.> An <math|\<varepsilon\>/4> argument closes
    each step: in a complete space, a sequence that can be approximated
    uniformly by convergent sequences converges.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Camp.artistry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L70-L71>,
  <hlink|<verbatim|Camp.climb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L62-L68>,
  <hlink|<verbatim|Camp.income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Pear.lean#L31-L35>,
  <hlink|<verbatim|Camp.Sign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L40-L41>,
  <hlink|<verbatim|Camp.trim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Buckles.lean#L43-L49>.
  <em|(proof read; the contraction rate and the <math|<math-up|soft><rsup|v>>
  decay are taken from statements)>

  <strong|Lemma 4.9 (Vitali, and analyticity uniform in the cutoff).> Let
  <math|r\<gtr\>0> and let <math|F<rsub|N>> be holomorphic on
  <math|<around|\||z|\|>\<less\>r> with values in a complex Banach space,
  uniformly bounded, and convergent at every real
  <math|z\<in\><around|(|-r,r|)>>. Then there is a holomorphic <math|f> on
  the disc such that every iterated derivative of <math|F<rsub|N>> converges
  to that of <math|f>, locally uniformly. The lemma applies to
  <math|\<beta\><rsub|m><around|(|N,p;\<cdot\>|)>> (bounded by
  <math|3*<wide|\<beta\>|^><rsub|m>>) and to the normalized level-<math|m>
  activity readings (bounded by <math|<math-up|soft>>). With Lemma 4.8 this
  gives III.13.7.2.

  <em|Lean:> <hlink|<verbatim|Camp.viva>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L64-L69>,
  <hlink|<verbatim|Camp.SummitUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Camp/Veto.lean#L62>,
  <hlink|<verbatim|Arc.uv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Upland/Plinth.lean#L62-L70>.

  <subsection|4.3 Renormalized observables><label|43-renormalized-observables>

  <strong|Lemma 4.10 (label transfer).> Fix the shooting structure,
  coefficient bundle and reference levels of Lemma 4.4.

  <\itemize-minus>
    <item><strong|Coefficient data.> For each degree <math|d>, period
    <math|p>, level <math|i>, cutoff <math|N> and shift <math|s>, the bundle
    provides the coefficient data of the degree-<math|d> renormalized
    observables at level <math|i>.

    <item><strong|Bounds.> For every assignment of shifts, degree <math|d>
    and level <math|m\<geqslant\><math-up|ref><around|(|d|)>>, the
    coefficient histories satisfy the supplied transfer and remainder bounds.
    Also <math|d+3\<leqslant\>J<around|(|<math-up|ref><around|(|d|)>|)>>.

    <item><strong|Continuity in the shift.> If the shifts at period <math|p>
    converge to <math|s>, the level-<math|i> data converge for
    <math|i\<geqslant\><math-up|ref><around|(|d|)>>.

    <item><strong|Transfer data.> The transfer data of
    <math|C<rsup|\<b-up-s\>>> are read from these coefficient data and are
    calibrated from <math|<math-up|ref><around|(|d|)>> on.

    <item><strong|Composition.> In a selected history with sound local
    sections, bounds on the coefficient maps and their inverses, and
    compatible one-step transfer estimates at every
    <math|r\<leqslant\>m\<less\>N>, a valid top coefficient at level <math|N>
    extends to a multiscale history down to <math|r>. It retains that top
    coefficient and satisfies the one-step transfer, remainder and matching
    identities. The one-step construction transports a prescribed
    coefficient; downward induction composes it across the required levels.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Mast.Cellar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L29-L37>,
  <hlink|<verbatim|Cellar.gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Mast/Rig.lean#L59>,
  <hlink|<verbatim|Lacing.compose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Circles.lean#L13-L47>,
  <hlink|<verbatim|repriseQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Reprise.lean#L45-L258>,
  <hlink|<verbatim|acclaim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Chunk.lean#L34-L138>,
  <hlink|<verbatim|antilles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lacing/Couplet.lean#L57-L89>.
  <em|(<verbatim|Cellar> definition read; the Lacing lemmas statement only)>

  <subsection|4.4 Correlations at fixed volume><label|44-correlations-at-fixed-volume>

  <strong|Lemma 4.11 (the RG identity).> Let the history be selected,
  <math|m\<leqslant\>N>, and <math|F> a bounded measurable function of the
  level-<math|m> configuration. Let <math|B<rsub|N\<to\>m>*F> be its
  conditional average obtained by iterating the block-spin kernels from level
  <math|m> to level <math|N>. Then

  <\equation*>
    <around*|\<langle\>|B<rsub|N\<to\>m>*F|\<rangle\>><rsub|N,p>=<frac|<big|int>\<rho\><rsub|m,N,p><around|(|U|)>*F<around|(|U|)>*<space|0.17em>d<math-up|Haar><around|(|U|)>|<big|int>\<rho\><rsub|m,N,p><around|(|U|)>*<space|0.17em>d<math-up|Haar><around|(|U|)>>,
  </equation*>

  where <math|\<rho\><rsub|m,N,p>> is the effective density with its
  field-independent scalar factor removed.

  <em|Sketch:> Iterating the one-step density identity gives the effective
  measure at level <math|m>. Duality with the conditional averaging kernels
  and equality of partition functions give the formula; the removed scalar
  factor cancels in the ratio.

  <em|Lean:> <hlink|<verbatim|Hearth.scaledK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L42-L52>,
  <hlink|<verbatim|Hearth.tasting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L40>,
  <hlink|<verbatim|GridApprox.back>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/KernelBasic.lean#L21-L22>,
  <hlink|<verbatim|GridApprox.backTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25>.

  <strong|Lemma 4.12 (convergence of the effective measure at a fixed
  level).> Fix the arc and its coefficient bundle. At a fixed period
  <math|p>, let the shifts satisfy <math|s<rsub|N,p>\<to\>s> with <math|s>
  real in the disc. If <math|F<rsub|N>> are bounded measurable functions of
  the level-<math|m> configuration and form a uniformly Cauchy sequence, then
  the level-<math|m> effective expectations of <math|F<rsub|N>> converge as
  <math|N\<to\>\<infty\>>.

  <em|Sketch:> The effective densities with their scalar factors removed
  converge uniformly, by stability of the trajectory family. Their integrals
  have a uniform positive lower bound. The effective expectations are ratios
  of convergent integrals.

  <em|Lean:> <hlink|<verbatim|Hearth.arrival>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L65-L72>,
  <hlink|<verbatim|Hearth.seating>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Dine.lean#L58-L62>,
  <hlink|<verbatim|strippedOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L82-L84>,
  <hlink|<verbatim|zPositive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Trail.lean#L85-L97>,
  <hlink|<verbatim|Mast.signs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Coda.lean#L47-L52>.
  <em|(proof of <verbatim|arrival> read; the three inputs statement only)>

  <strong|Lemma 4.13 (coarse approximation of renormalized observables).> Fix
  the arc and coefficient bundle. At period <math|p>, assume the shifts
  converge to a real shift in the shooting disc, and assume the transfer and
  remainder estimates and slow-growth bounds of III.13.6. Let
  <math|J\<leqslant\>m\<leqslant\>k>, with
  <math|<math-up|cs><rsub|m><rsup|2>\<leqslant\>a<rsub|J>/a<rsub|m>>. Require
  enough separation for the supports of the degree-<math|d> coarse
  observables: <math|2*<around|(|a<rsub|k>*r<rsub|d>+<math-up|tail><rsub|k>|)>\<less\>a<rsub|J>>,
  where <math|r<rsub|d>> is their fixed support radius and
  <math|<math-up|tail><rsub|k>=30*a<rsub|k>*<around|(|J<around|(|k|)>+5|)>>
  bounds the reach of the later kernels. Let <math|u> be a degree-<math|d>
  label with <math|<math-up|ref><around|(|d|)>\<leqslant\>m>, and let
  <math|w\<gtr\>0> satisfy

  <\equation*>
    w*<space|0.17em>a<rsub|m><rsup|-d>\<cdot\>4*<around|(|1+<math-up|columns><rsub|k>|)>*<space|0.17em>e<rsup|-<around|(|\<sigma\><rsub|k>-\<sigma\><rsub|m>|)>/8>\<leqslant\><tfrac|1|2><space|0.17em><math-up|fly><rsub|d,m>.
  </equation*>

  Then there are level-<math|k> observables
  <math|g<rsub|N>=<big|sum><rsub|j>c<rsub|j><around|(|N|)>*<space|0.17em>\<Lambda\><rsub|j>>
  with the following properties:

  <\itemize-minus>
    <item>the <math|\<Lambda\><rsub|j>> are fixed level-<math|k> observables,
    and the coefficients <math|c<rsub|j><around|(|N|)>> converge as
    <math|N\<to\>\<infty\>>;

    <item>for large <math|N>, the chessboard root, at level <math|J>, of
    <math|B<rsub|N\<to\>k>*g<rsub|N>-O<rsup|N,p><rsub|u><around|(|0|)>> is at
    most <math|<math-up|stock><rsub|k><around|(|u|)>\<cdot\><math-up|stakes><around|(|J,m|)>/w>.
  </itemize-minus>

  For fixed <math|d,m,J,u> and every <math|\<zeta\>,\<varepsilon\>\<gtr\>0>,
  all sufficiently large <math|k> admit <math|w\<gtr\>0> with
  <math|w*a<rsub|m><rsup|-d>*4*<around|(|1+<math-up|columns><rsub|k>|)>*e<rsup|-<around|(|\<sigma\><rsub|k>-\<sigma\><rsub|m>|)>/8>\<leqslant\>\<zeta\>/2>
  and <math|<math-up|stock><rsub|k><around|(|u|)><math-up|stakes><around|(|J,m|)>/w\<leqslant\>\<varepsilon\>>.
  Apply this with <math|\<zeta\>=<math-up|fly><rsub|d,m>>. The product of the
  two requirements tends to <math|0>, because columns and stock grow
  subexponentially in <math|\<sigma\><rsub|k>> while
  <math|e<rsup|<around|(|\<sigma\><rsub|k>-\<sigma\><rsub|m>|)>/8>> grows
  exponentially.

  <em|Lean:> <hlink|<verbatim|Hearth.peeling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Spices.lean#L64-L68>,
  <hlink|<verbatim|Hearth.seatingM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L37-L59>.
  <em|(proofs read; the level-<math|k> representation itself is statement
  only)>

  <strong|Lemma 4.14 (chessboard product estimate).> Assume the Wilson
  measure satisfies the reflection-positivity and translation properties for
  the level-<math|h> tiling. Let <math|O<rsub|i>,Z<rsub|i>> be bounded
  measurable observables supported in its reference cell, with chessboard
  roots <math|<around|\<\|\|\>|O<rsub|i>|\<\|\|\>>\<leqslant\>c<rsub|i>> and
  <math|<around|\<\|\|\>|Z<rsub|i>-O<rsub|i>|\<\|\|\>>\<leqslant\>e<rsub|i>>,
  and let <math|a<rsub|i>> be distinct sites of the level-<math|h> lattice.
  Then

  <\equation*>
    <around*|\<nobracket\>|<around*|\<nobracket\>|<mid|\|><around*|\<langle\>|<big|prod><rsub|i>Z<rsub|i>|(>\<cdot\>+a<rsub|i>)|\<rangle\>>-<around*|\<langle\>|<big|prod><rsub|i>O<rsub|i>|(>\<cdot\>+a<rsub|i>)|\<rangle\>><mid|\|>\<leqslant\><big|prod><rsub|i><around|(|e<rsub|i>+c<rsub|i>|)>-<big|prod><rsub|i>c<rsub|i>.
  </equation*>

  <em|Sketch:> Expand <math|Z<rsub|i>=O<rsub|i>+<around|(|Z<rsub|i>-O<rsub|i>|)>>
  and subtract the term containing only the <math|O<rsub|i>>. Apply the
  chessboard inequality to each remaining product on distinct cells; summing
  gives the displayed bound.

  <em|Lean:> <hlink|<verbatim|GridApprox.tariff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Telescope.lean#L34-L78>,
  applied in <hlink|<verbatim|Hearth.banquet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L63-L80>.
  <em|(<verbatim|tariff> statement only; <verbatim|banquet> proof read)>

  <em|Proof of Proposition III.13.6.>

  <\enumerate>
    <item>The chessboard bound in the schedule gives, for each <math|i>, a
    bound <math|t<rsub|i>> on the chessboard root of <math|O<rsub|u<rsub|i>>>
    at level <math|J>.

    <item>Fix <math|q\<gtr\>0>. Choose <math|k> large and weights
    <math|w<rsub|i>> by Lemma 4.13, so that each error is
    <math|\<leqslant\>q>. The support separation makes conditional averaging
    commute with the product of translated coarse observables. The RG
    identity (Lemma 4.11) and the chessboard product estimate (Lemma 4.14)
    then give a sequence <math|F<rsub|N>> such that, for large <math|N>,
    <math|<around|\||F<rsub|N>-\<Psi\><rsub|N>|\|>\<leqslant\>\<Phi\><around|(|q|)>\<assign\><big|prod><around|(|q+t<rsub|i>|)>-<big|prod>t<rsub|i>>.
    Here <math|F<rsub|N>> is the level-<math|k> effective expectation of the
    product of the translated <math|g<rsup|<around|(|i|)>><rsub|N>>, and it
    converges by Lemma 4.12.

    <item>Since <math|\<Phi\>> is continuous with
    <math|\<Phi\><around|(|0|)>=0>, one can choose <math|q> with
    <math|\<Phi\><around|(|q|)>\<less\>\<varepsilon\>/4>. The triangle
    inequality through two terms of the convergent approximating sequence
    shows that <math|<around|(|\<Psi\><rsub|N>|)>> is Cauchy.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Hearth.food>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L87-L112>,
  <hlink|<verbatim|Hearth.closet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Hearth/Table.lean#L82-L84>.

  <strong|Lemma 4.15 (slicing for large periods).>

  <em|Definition.> <em|Slicing><math|<around|(|d,p|)>> holds if there are:

  <\itemize-minus>
    <item>finitely many test shots, admissible at period <math|p>;

    <item>a constant <math|a\<gtr\>0>;

    <item>a subspace <math|U\<subset\>\<cal-L\><rsub|d>> of codimension
    <math|<math-up|charge><around|(|G,d|)>>, the dimension of the
    degree-<math|d> Maxwell equation ideal;
  </itemize-minus>

  such that, for large <math|N>, <math|a<around|\<\|\|\>|x|\<\|\|\>>\<leqslant\><big|sum><rsub|i><around|\<\|\|\>|<math-up|snapshot><rsub|i><around|(|N,p|)>*x|\<\|\|\>>>
  for <math|x\<in\>U>.

  <em|Statement.> Assume a fixed presentation identifying the finite-cutoff
  kernels of the label projections with the transported Maxwell equation
  ideals. Suppose every admissible snapshot at every fixed period converges,
  and every extraction order has a refinement with base data whose
  projections agree with this presentation. Then
  Slicing<math|<around|(|d,p|)>> holds for all large <math|p>. For the bundle
  of III.13.7 the conclusion takes this form: for each <math|d> and all large
  <math|p> there is <math|\<delta\>\<gtr\>0> such that Slicing holds for
  every assignment of shifts with <math|<around|\||s<rsub|N,p>|\|>\<leqslant\>\<delta\>>
  eventually.

  <em|Sketch:> By contradiction. A sequence of bad periods defines an
  extraction order. Along a refinement, finite detection on the range of the
  limiting projection gives Slicing at all large indices.

  <em|Lean:> <hlink|<verbatim|Harvest.rootwards>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L59-L61>,
  <hlink|<verbatim|Harvest.Slicing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Oats.lean#L34-L36>,
  <hlink|<verbatim|Barn.ripe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Harvest/Barn.lean#L27-L30>.

  <strong|Lemma 4.16 (proof of Proposition III.13.5).> Fix <math|d,k> and
  <math|p> beyond the slicing threshold for the degrees up to <math|d+k+1>.
  Use the arc and bundle hypotheses of Lemma 4.4, zero shifts, and labels of
  degree <math|\<leqslant\>d>. Then:

  <\enumerate>
    <item><strong|Dense set.> On the points of
    <math|\<Omega\><rsup|n><rsub|p>> whose coordinates lie on the
    level-<math|m> grid for some <math|m\<geqslant\>max <math-up|ref>> (a
    dense set), the lattice correlations converge by III.13.6.

    <item><strong|Uniform difference bounds.> Slicing and the label-transfer
    bounds give bounds on lattice differences of order
    <math|\<leqslant\>k+1>, uniform in <math|N> on compact subsets of
    <math|\<Omega\><rsup|n><rsub|p>>. Hence the correlations and their
    differences of order <math|\<leqslant\>k> are asymptotically
    equicontinuous there.

    <item><strong|Arzelà\UAscoli.> It gives locally uniform convergence to a
    continuous <math|g>, and to continuous limits of the difference
    quotients. These limits are the iterated derivatives of <math|g>.

    <item><strong|Smeared limits.> For admissible tests, the smeared
    correlations converge by dominated convergence, with domination by the
    uniform period-<math|p> bound.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Poppy.blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L96-L108>,
  <hlink|<verbatim|Poppy.coveringR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Fountain.lean#L40-L69>,
  <hlink|<verbatim|Extraction.growFrom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97>,
  <hlink|<verbatim|Poppy.nourishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L42-L48>,
  <hlink|<verbatim|Poppy.mature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Poppy/Sparrow.lean#L61-L62>;
  difference bounds: <hlink|<verbatim|Fallow.reaped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Fallow/Plow.lean#L66-L70>.
  <em|(proofs read through the stated transfer estimates)>

  <strong|Lemma 4.17 (analytic dependence of the correlations on the shift).>
  Assume the arc, bundle bounds, paid schedule, analytic transfer disc,
  leases and target rate bound of Lemma 4.18. Fix <math|d,m>, a period
  <math|p> with slicing stable for all degrees through <math|d+m+1> for
  sufficiently small shifts, and finitely many labels of degree
  <math|\<leqslant\>d>. There is <math|b<rprime|'>\<gtr\>0> such that, for
  all sufficiently large <math|N>, the lattice correlations extend
  holomorphically to <math|<around|\||z|\|>\<less\>b<rprime|'>>. On every
  compact subset of <math|\<Omega\><rsup|n><rsub|p>>, their lattice
  differences through order <math|m> have bounds uniform in <math|N> and
  <math|z> throughout this disc. At arbitrary lattice configurations the
  bound supplied at each cutoff may depend on <math|N>.

  <em|Sketch:> Slicing gives uniform real difference bounds through one
  higher order. The analytic transfer estimates and complex correlation
  bounds permit the Banach-valued Vitali argument on each separated compact
  set. The resulting limits have the spatial derivatives and smeared limits
  of III.13.7.5. Shrinking the disc once more incorporates every cutoff at
  which all reference levels fit. At each fixed level and period, the
  normalized effective densities have bounded holomorphic extensions; after
  shrinking the disc, the moduli of their partition integrals are bounded
  away from zero uniformly over the allowed cutoffs.

  <em|Lean:> <hlink|<verbatim|Beach.inlet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Rolls.lean#L37-L54>,
  <hlink|<verbatim|Beach.sparksP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Beach/Under.lean#L43-L63>,
  <hlink|<verbatim|Beach.keep_prefix>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Prefixes.lean#L78-L112>,
  <hlink|<verbatim|Pier.roomR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Plates.lean#L68-L87>,
  <hlink|<verbatim|Pier.mounted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Pier/Heath.lean#L28-L50>.
  <em|(proofs of <verbatim|sparksP> and <verbatim|keep_prefix> read;
  <verbatim|inlet>, <verbatim|roomR> and <verbatim|mounted> statement only)>

  <subsection|4.5 Reports><label|45-reports>

  <strong|Lemma 4.18 (the centre is floral).> Assume:

  <\itemize-minus>
    <item>an arc and the bundle conditions;

    <item>a paid family;

    <item>a disc in the analytic domain, with holomorphic transfer data for
    all <math|d,N,p> with <math|<math-up|ref><around|(|d|)>\<leqslant\>N>;

    <item>the leases and target rates <math|\<leqslant\>-7/16>;

    <item>the calibration package with <math|Q\<equiv\>1>, and the priced sup
    bounds.
  </itemize-minus>

  Then the member <math|s=0> is floral.

  <em|Sketch:> The shooting and analyticity properties come from the arc
  (Lemmas 4.6, 4.9). For large <math|p>, the analytic correlation data come
  from Lemma 4.17.

  <em|Lean:> <hlink|<verbatim|Oasis.survives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Flora.lean#L81-L87>.

  <strong|Lemma 4.19 (mesh limits along the full sequence).> For a floral
  family <math|C>, an extraction order <math|f> and a table <math|T> with a
  construction record for <math|<around|(|C,f,T|)>>, the order (full mesh
  sequence, periods of <math|f>) is ordered for <math|T>.

  <em|Sketch:> At each fixed period there are tables whose smeared limits are
  taken along the full mesh sequence; they come from Proposition III.13.6
  with shift <math|0>, through the fixed-period smearing theorem. The record
  supplies the limit along the mesh subsequence of <math|f>, and uniqueness
  of limits identifies the two.

  <em|Lean:> <hlink|<verbatim|Reports.full_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58>,
  <hlink|<verbatim|Reports.useFull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69>.

  <strong|Lemma 4.20 (assembly of the reports).>

  <\itemize-minus>
    <item><strong|III.13.2.> For each extraction order <math|F>:

    <\itemize-minus>
      <item>item 10 of III.13.1 gives <math|g>, the base data and a seed;

      <item>the seed gives the cell hypotheses, hence grid approximants and
      weak comparison systems;

      <item>the OPE entrance theorem gives Maxwell data, infrared data with
      non-zero <math|J>, and the UV package;

      <item>the reconstruction assembly theorem gives a construction record;

      <item>Lemma 4.19 gives the full-mesh ordering;

      <item>the OPE services are assembled from the seed, the logarithmic
      package and the base data.
    </itemize-minus>

    Proposition III.13.5 supplies the fixed-volume limits.

    <item><strong|III.13.3.> Apply the every-phase reconstruction theorem to
    the record, and the coherent-prescription theorem to the derivative
    sector.

    <item><strong|III.13.4.>

    <\itemize-minus>
      <item>Coverage gives portfolios along any finer ultrafilter: take the
      levels <math|g<around|(|k|)>> of item 8 of III.13.1, and the limits
      along <math|\<cal-U\>>.

      <item>The OPE services give the bases <math|Y<rsub|k>> and the
      convergence of the Gram forms (the Gram comparison theorem, through the
      grading theorem and the Gram limit theorem).
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|coordination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L16-L37>,
  <hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Common.lean#L41-L60>,
  <hlink|<verbatim|habitat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Measured.lean#L11-L36>,
  <hlink|<verbatim|fromCoverage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L66-L67>,
  <hlink|<verbatim|attains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/InContext.lean#L65-L71>.
  <em|(proofs of the three reports and of <verbatim|fromCoverage> read;
  <verbatim|attains> read to the level of its two inputs)>

  <strong|Lemma 4.21 (further estimates used in choosing the step
  constants).>

  <\itemize-minus>
    <item><strong|Connected-activity targets.> Take a target with an expense
    bound. There is <math|M> such that for every side <math|L\<geqslant\>M>,
    <math|W,\<mu\>\<gtr\>0>, <math|a\<geqslant\>0>, indices <math|j,k,N>,
    <math|0\<leqslant\>\<xi\>\<less\><math-up|exp>> and <math|e\<gtr\>0> with
    <math|<math-up|rate>+e\<less\>\<eta\>\<less\>0>, the prescribed
    connected-activity estimate holds for all sufficiently large <math|x>,
    with weight <math|\<beta\><rsub|F><around|(|x,L|)><rsup|e>> and every
    target order with parameter <math|W>. This bound supplies the steepness
    requirement in Lemma 4.1.

    <item><strong|Ursell sum.> Assume the support compatibility tests,
    nonnegative weights, a nonnegative support exponent, the
    cluster-expansion readiness bound with <math|0\<leqslant\>q\<less\>1>,
    and a rooted input budget <math|B<rsub|0>>. The averaged marked Ursell
    sum over clusters, weighted by the cost of the union of their supports,
    has budget <math|B<rsub|0>/<around|(|1-q|)>> (III.5 in the form of
    III.8).

    <item><strong|Uniform rate.> For a connected-activity target there is a
    side threshold such that, after fixing a larger side, a branching patch,
    cutoff function, positive <math|W,\<mu\>>, arity and order bounds,
    <math|0\<less\>c\<less\><math-up|exp>> and <math|e\<gtr\>0> with
    <math|<math-up|rate>+e\<less\>\<gamma\>\<less\>0>, there is a rate
    function <math|\<vartheta\><around|(|x|)>> with
    <math|<around|\||\<vartheta\><around|(|x|)>|\|>\<leqslant\>\<beta\><rsub|F><around|(|x,L|)><rsup|\<gamma\>+\<varepsilon\>>>
    eventually for every <math|\<varepsilon\>\<gtr\>0>. Eventually in
    <math|x>, it bounds the prescribed analytic costs uniformly over
    admissible tubes, representatives and budget points with exponent at most
    <math|c> and the specified order, power, threshold and radius bounds.

    <item><strong|Jet realization.> Let the real variable space be finite
    dimensional, and fix a point <math|x> and jet order <math|j>. Suppose a
    determining parameter set carries <math|C<rsup|j>> germs at <math|x>, and
    the prescribed jet coefficients extend holomorphically along every
    holomorphic curve in the parameter domain, agreeing with those germs on
    the determining set. There is a family of <math|C<rsup|j>> germs at
    <math|x> realizing these coefficients throughout that domain, holomorphic
    along such curves together with its jets through order <math|j>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Linden.lives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Linden/Seasons.lean#L38-L85>,
  <hlink|<verbatim|Copse.tangled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Copse/Spring.lean#L106-L114>,
  <hlink|<verbatim|Concert.basisE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Concert/Vines.lean#L22-L50>,
  <hlink|<verbatim|Lamppost.forge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Lamppost/Blossom.lean#L20-L70>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Fixed-level convergence requires control of arbitrarily many ultraviolet
  levels. The contraction estimate and the <math|<math-up|soft><rsup|v>>
  bound give two uniform approximations by convergent sequences. For
  correlations, Lemma 4.13 balances exponentially improving coarse
  approximation against subexponential coefficient costs; the chessboard
  inequality then controls products.

  The derivative limit holds only for sufficiently large periods, with
  threshold depending on the degree and derivative order. Slicing gives a
  lower bound on a subspace of the required dimension. The plain smeared
  limit, used in Lemma 4.19, holds at every fixed period.

  The coupling and activity analyticity holds in one disc for all cutoffs and
  periods. The analytic correlation disc may depend on the finite label
  family and the period. The construction fixes support exponent <math|100>
  and target rate <math|-7/16>; no alternative rate is asserted here.

  The family in III.13.2 is chosen before the extraction order. III.13.3 and
  III.13.4 state a weaker quantifier order, but their proofs use that same
  choice. The main theorem follows the separate construction route of III.14;
  equality of the families produced by the two routes is not asserted.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|C>>|<cell|<hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>>|<cell|Wilson
  family: history, holonomy data, label frames, local sections, reference
  levels, transfer data>>|<row|<cell|<math|\<beta\><rsub|N,p>>>|<cell|<verbatim|Family.beta>>|<cell|Wilson
  coupling at cutoff <math|N>, period <math|p>>>|<row|<cell|consistent>|<cell|<hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>>|<cell|selected
  trajectory, sound sections, stage and stencil conditions, priced bounds,
  calibrated transfer>>|<row|<cell|calibrated>|<cell|<hlink|<verbatim|Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58-L61>>|<cell|history
  generated by a full schedule with per-step
  estimates>>|<row|<cell|<math|<math-up|ref><around|(|d|)>>>|<cell|<verbatim|Family.ref>>|<cell|reference
  level of degree <math|d>>>|<row|<cell|penalty
  <math|b>>|<cell|<verbatim|KernelChoices.penalty>>|<cell|coefficient of the
  Gaussian block-spin term>>|<row|<cell|sheet, rolls, wages,
  <math|\<theta\>>, delays, bar, wait, paid>|<cell|<verbatim|Sheet>,
  <verbatim|Rolls>, <verbatim|Return.Wages>, <verbatim|Protection>,
  <verbatim|Delays>, <verbatim|Bar>, <verbatim|Wait>,
  <verbatim|Paid>>|<cell|constants in the order of choice>>|<row|<cell|alloy,
  factor, directed history>|<cell|<verbatim|Alloy>, <verbatim|Roost.Factor>,
  <verbatim|Directed>>|<cell|a schedule of RG steps with their
  bounds>>|<row|<cell|shooting structure, arc,
  <math|r<rsub|\<ast\>>>>|<cell|<verbatim|Spire.Uses>, <verbatim|Upland.Arc>,
  <verbatim|Arc.radius>>|<cell|trajectories ending at
  <math|<wide|\<beta\>|\<bar\>>+s>; disc of analyticity>>|<row|<cell|shift
  <math|s>, assignment <math|\<b-up-s\>>>|<cell|<verbatim|Orchard.Rose>,
  <verbatim|Orchard.Keys>, <verbatim|Mast.roseA>
  (<math|\<b-up-s\>=0>)>|<cell|real shift of the terminal
  coupling>>|<row|<cell|label-transfer bundle,
  <math|C<rsup|\<b-up-s\>>>>|<cell|<verbatim|Mast.Cellar>,
  <verbatim|Cellar.yard>>|<cell|coefficient and transfer data for every shift
  assignment; the associated family>>|<row|<cell|floral>|<cell|<verbatim|Oasis.Floral>,
  <verbatim|Oasis.Spring>>|<cell|III.13.7>>|<row|<cell|bundle
  conditions>|<cell|<verbatim|Harvest.Barn>>|<cell|Scrim bounds and scheduled
  chessboard bound for all shifts; base data at the
  centre>>|<row|<cell|chessboard bound in the
  schedule>|<cell|<verbatim|Extraction.Wcmain>>|<cell|Ÿ1
  definition>>|<row|<cell|fixed-volume limit with <math|k>
  derivatives>|<cell|<verbatim|Poppy.Margins>>|<cell|III.13.5>>|<row|<cell|slicing>|<cell|<verbatim|Harvest.Slicing>>|<cell|Lemma
  4.15>>|<row|<cell|logarithmic OPE package>|<cell|<verbatim|OPE.Log.LogPackage>>|<cell|III.13.1.7>>|<row|<cell|calibrated
  label steps>|<cell|<verbatim|SharpGram.TrueSteps>>|<cell|III.13.1.7>>|<row|<cell|coverage>|<cell|<verbatim|Dense.Coverage>>|<cell|III.13.1.8>>|<row|<cell|OPE
  entrance conditions>|<cell|<verbatim|Acme.Aroma>>|<cell|III.13.1.6>>|<row|<cell|grid
  approximants, weak comparison systems>|<cell|<verbatim|Org.Grill>,
  <verbatim|East.CompleteWeak>>|<cell|III.13.1.9>>|<row|<cell|OPE
  services>|<cell|<verbatim|OPE.Facilities>>|<cell|services of VII.4 with a
  log package>>|<row|<cell|construction record, reconstruction for every
  phase>|<cell|<verbatim|Spec.Final>, <verbatim|EveryPhase.Almanac>,
  <verbatim|EveryPhase.Completed>>|<cell|II.2,
  V.3>>|<row|<cell|portfolio>|<cell|<verbatim|Weak.Portfolio>>|<cell|moving-frame
  probe data along an ultrafilter>>|<row|<cell|effective
  expectation>|<cell|<verbatim|Hearth.tasting>>|<cell|normalized expectation
  against the effective density with its scalar factor
  removed>>|<row|<cell|<math|B<rsub|N\<to\>m>>>|<cell|<hlink|<verbatim|GridApprox.backTo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/GRID_APPROXIMATION/Iterate.lean#L24-L25>>|<cell|iterated
  conditional averaging through the block-spin
  kernels>>|<row|<cell|<math|V<rsub|L>>>|<cell|<hlink|<verbatim|Bid.vowel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L63>>|<cell|engineering
  rescaling by <math|L<rsup|d-e>> on grade
  <math|e>>>|<row|<cell|<math|<math-up|stock><rsub|k><around|(|u|)>>>|<cell|<hlink|<verbatim|stockK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/South/Dine.lean#L27>>|<cell|coefficient
  bound with subexponential growth in <math|\<sigma\><rsub|k>>>>|<row|<cell|<math|<math-up|stakes><around|(|J,m|)>>>|<cell|<hlink|<verbatim|stakes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Strudel.lean#L21>>|<cell|fixed-scale
  chessboard comparison cost>>|<row|<cell|<math|<math-up|fly><rsub|d,m>>>|<cell|<hlink|<verbatim|Bandage.fly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Stove.lean#L37>>|<cell|positive
  allowance in the label-transfer estimate>>|<row|<cell|<math|<math-up|soft>>,
  <math|<math-up|rad>>, gain>|<cell|<verbatim|Camp.soft>,
  <verbatim|Camp.rad>, <verbatim|Bid.gainChart>>|<cell|<math|<math-up|rim>/8>,
  <math|<math-up|rim>/4>, <math|e<rsup|<around|(|\<sigma\><rsub|k>-\<sigma\><rsub|m>|)>/8>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Quantitative packages.> The shell estimates in the OPE
    entrance condition, the full transfer, remainder, sup and weak comparison
    bounds, and the one-step comparison assumptions in Lemma 4.3 retain their
    contracts from III.7, III.11 and VII.4. Their complete expansion into
    conventional notation remains to be written there. The summaries here do
    not replace those contracts.

    <item><strong|Proofs not fully checked.> The detailed constant issuers
    underlying Lemmas 4.1\U4.4, the fitted recursion behind Lemma 4.6, the
    contraction and far-level decay estimates in Lemma 4.8, the one-step
    label estimates behind Lemma 4.10, and the auxiliary estimates in Lemma
    4.21 are used as stated. Their internal proofs have not all been checked.
    The difference estimate in Lemma 4.16 is traced through slicing and the
    transfer bounds; its preceding one-step estimates remain inputs.

    <item><strong|Two construction routes.> No identification of the families
    from III.13 and III.14, or transfer of III.13.5 to the III.14 family, is
    established here. A common witness satisfying both lists would require a
    separate argument.

    <item><strong|Moving-frame estimates.> The basis construction and its
    comparison with the free Gram form belong to VII.1/VII.3. Lemma 4.20 uses
    those estimates; their proofs are not reproduced here.

    <item><strong|The penalty.> Its role as the Gaussian block-spin
    coefficient is fixed by the kernel choices. Its precise normalization
    relative to Balaban's parameter <math|a> has not been verified.

    <item><strong|Other reports.> <hlink|<verbatim|Reports.ultraviolet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L101-L112>,
    <hlink|<verbatim|Oasis.fruition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Oasis/Fruition.lean#L33-L41>
    give additional reports. They are not needed for the assembly of
    III.13.1\UIII.13.4. The same applies to the offset and analytic-tuning
    test wrappers and the separate fixed-volume existence theorem.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.12 Bounds uniform in the volume and
  convergence as the spacing tends to zero (notes)|III-12.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-13.tm>|<hlink|III.14 The construction run: flat
  representations and the ultraviolet rate (notes) \<rightarrow\>|III-14.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.13. Extension to all labels: one common Wilson
    family \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|8>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|11>>
    <associate|41-choosing-the-constants-once|<tuple|4.1|11>>
    <associate|42-shooting-and-the-limit-at-a-fixed-level|<tuple|4.2|15>>
    <associate|43-renormalized-observables|<tuple|4.3|16>>
    <associate|44-correlations-at-fixed-volume|<tuple|4.4|17>>
    <associate|45-reports|<tuple|4.5|19>>
    <associate|5-where-the-difficulty-lies|<tuple|5|21>>
    <associate|6-notation|<tuple|6|22>>
    <associate|7-what-remains-unexplained|<tuple|7|23>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5|21>>
    <associate|auto-11|<tuple|6|22>>
    <associate|auto-12|<tuple|7|23>>
    <associate|auto-2|<tuple|2|8>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|4.1|11>>
    <associate|auto-6|<tuple|4.2|15>>
    <associate|auto-7|<tuple|4.3|16>>
    <associate|auto-8|<tuple|4.4|17>>
    <associate|auto-9|<tuple|4.5|19>>
    <associate|iii13-extension-to-all-labels-one-common-wilson-family--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Choosing the constants once
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Shooting, and the limit at a fixed
      level <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Renormalized observables
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Correlations at fixed volume
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Reports
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>