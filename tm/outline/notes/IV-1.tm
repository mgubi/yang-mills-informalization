<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.16 Analytic toolkit
  (notes)|III-16.tm>|<hlink|Part IV|../units.tm#part-iv-infinite-volume><ym-nav-sep><hlink|Unit
  outline|../units/IV-1.tm>|<hlink|V.1 Decomposition of the limit into phases
  (notes) \<rightarrow\>|V-1.tm>>

  <ym-title|IV.1. Infinite volume: extraction of a subsequence and the
  Euclidean axioms of the limit \V detailed
  notes><label|iv1-infinite-volume-extraction-of-a-subsequence-and-the-euclidean-axioms-of-the-limit--detailed-notes>

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

    <with|par-left|1tab|4.1 Reflection positivity and chessboard estimates
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Boundedness at separated points
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Equicontinuity
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Compactness and ordered limits
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Label derivatives
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Smoothness <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Euclidean axioms, bounds and assembly
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit IV.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/IV-1.tm>.
  </quotation>

  <hlink|Unit page|../units/IV-1.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> IV, infinite volume (chapter 10). <strong|Lean:>
  <hlink|<verbatim|YM/Extraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction>,
  <hlink|<verbatim|YM/Cells>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells>,
  <hlink|<verbatim|YM/Slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice>,
  <hlink|<verbatim|YM/Euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid>,
  <hlink|<verbatim|YM/Dash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash>,
  <hlink|<verbatim|YM/Next/EXTRACTION>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION>,
  <hlink|<verbatim|YM/Lane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane>,
  and the proofs of the work items <hlink|D01|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean>,
  <hlink|D02|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean>,
  <hlink|D03|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean>,
  <hlink|D04|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean>,
  <hlink|D05|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean>,
  <hlink|D06|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean>.
  Their statements are in <hlink|<verbatim|YM/Bid/Drops.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean>,
  which is filed with III.10. <strong|Size:> 7,444 lines in 1,049
  declarations used by the main theorem. Other material in these folders
  concerns stress tensors, Maxwell comparison and label quotients (Parts
  V\UVII), or corrected fields (III.11\UIII.12).

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting and notation.> Let <math|G> be a compact matrix gauge group
  and <math|C> a Wilson family (II.2, III.13). It has:

  <\itemize-minus>
    <item>lattice spacings <math|a<rsub|N>*\<downarrow\>*0>, with
    <math|a<rsub|0>=1>, <math|a<rsub|N+1>=a<rsub|N>/b<rsub|N>> and
    <math|b<rsub|N>\<geqslant\>3> odd;

    <item>periods <math|L<rsub|p>*\<uparrow\>*\<infty\>>, each divisible by
    <math|4>;

    <item>couplings <math|\<beta\><rsub|N,p>>;

    <item>the periodic lattice <math|\<Lambda\><rsub|N,p>=<around|(|\<bbb-Z\>/<around|(|L<rsub|p>/a<rsub|N>|)>*\<bbb-Z\>|)><rsup|4>>,
    whose sites are placed in the box <math|<around|(|-L<rsub|p>/2,L<rsub|p>/2|]><rsup|4>>;

    <item>the normalized Wilson expectation
    <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsub|N,p>>.
  </itemize-minus>

  <strong|Labels.> Labels at degree <math|d> (polynomial weight at most
  <math|d>) form a finite-dimensional complex space
  <math|<math-up|Label><rsub|d>>, given by coefficients in a real basis, so
  that <math|v\<mapsto\><wide|v|\<bar\>>> is defined. We use the supremum
  norm on coefficient vectors. <math|<math-up|Label><rsub|d>> carries:

  <\itemize-minus>
    <item>a representation <math|\<rho\><rsub|d>> of the group
    <math|H<rsub|4>> of signed coordinate permutations;

    <item>a unit label <math|1<rsub|d>>;

    <item>for each axis <math|a> the reflected label
    <math|\<theta\><rsub|a>*v=\<rho\><rsub|d><around|(|s<rsub|a>|)>*<wide|v|\<bar\>>>,
    where <math|s<rsub|a>> reverses axis <math|a>.
  </itemize-minus>

  <strong|Observables and correlations.> A label
  <math|v\<in\><math-up|Label><rsub|d>> has a renormalized lattice observable
  <math|I<rsub|N,p><around|(|v,r|)>> at each site <math|r>, linear in
  <math|v>. Covariance, reality and the unit identity are required for
  <math|N\<geqslant\><math-up|ref><around|(|d|)>>. Write <math|<wide|r|^>>
  for the physical position of a site in <math|<around|(|-L<rsub|p>/2,L<rsub|p>/2|]><rsup|4>>.
  For a label list <math|v=<around|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>,

  <\equation*>
    \<cal-C\><rsub|N,p><around|(|v;r|)>=<around*|\<langle\>|<big|prod><rsub|i=1><rsup|n>I<rsub|N,p><around|(|v<rsub|i>,r<rsub|i>|)>|\<rangle\>><rsub|N,p>,<space|2em>\<cal-C\><rsub|N,p><around|(|v;t|)>=a<rsub|N><rsup|4*n>*<big|sum><rsub|r\<in\>\<Lambda\><rsub|N,p><rsup|n>>t<around|(|<wide|r|^>|)>*<space|0.17em>\<cal-C\><rsub|N,p><around|(|v;r|)>.
  </equation*>

  For a lifted tuple <math|r\<in\><around|(|\<bbb-Z\><rsup|4>|)><rsup|n>>,
  <math|\<cal-C\><rsub|N,p><around|(|v;r|)>> means evaluation after reduction
  modulo <math|L<rsub|p>/a<rsub|N>>; its lifted physical position is
  <math|a<rsub|N>*r>.

  <strong|Configuration sets.>

  <\itemize-minus>
    <item><math|<math-up|Conf><rsub|n>>: configurations with
    <math|x<rsub|i>\<ne\>x<rsub|j>> for <math|i\<ne\>j>.

    <item><math|<math-up|Gen><rsub|n>>: configurations with
    <math|x<rsub|i><rsup|a>\<neq\>x<rsub|j><rsup|a>> for all <math|i\<ne\>j>
    and all axes <math|a>. This set is open and dense, and its complement is
    Lebesgue-null.

    <item>On the torus: <math|<math-up|Conf><rsup|<around|(|p|)>><rsub|n>>
    requires that for each <math|i\<ne\>j> some
    <math|x<rsub|i><rsup|a>-x<rsub|j><rsup|a>\<nin\>L<rsub|p>*\<bbb-Z\>>;
    <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>> requires all
    <math|x<rsub|i><rsup|a>-x<rsub|j><rsup|a>\<nin\>L<rsub|p>*\<bbb-Z\>>.
  </itemize-minus>

  <strong|Test functions.> <math|\<cal-D\><rsub|n>=C<rsub|c><rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>|)>>.
  A test function <math|t> is <em|admissible at volume <math|p>> if
  <math|<math-up|supp>t\<subset\><around|(|-L<rsub|p>/2,L<rsub|p>/2|)><rsup|4*n>>.

  <strong|Extractions.> An <em|extraction> <math|f> is a pair of strictly
  increasing sequences <math|<around|(|N<rsub|j>|)>> and
  <math|<around|(|p<rsub|k>|)>>; a refinement <math|f\<circ\>g> passes to
  subsequences of both. A property of <math|<around|(|N<rsub|j>,p<rsub|k>|)>>
  holds <em|eventually along ordered tails> if it holds for
  <math|k\<geqslant\>k<rsub|0>> and then <math|j\<geqslant\>j<rsub|0><around|(|k|)>>.
  Convergence along ordered tails means that, for each neighbourhood of the
  limit, membership holds eventually in this sense. The iterated limits in
  IV.1.1 (c) also require an actual spacing limit at every admissible fixed
  volume.

  <strong|Tables.> A <em|table> <math|S> assigns to each arity <math|n>,
  degrees <math|d<rsub|1>,\<ldots\>,d<rsub|n>> and point <math|x> a
  multilinear form <math|S<around|(|\<cdummy\><space|0.17em>;x|)>> on
  <math|<math-up|Label><rsub|d<rsub|1>>\<times\>\<ldots\>\<times\><math-up|Label><rsub|d<rsub|n>>>.
  Its values off <math|<math-up|Conf><rsub|n>> play no role.

  <strong|Standing hypotheses.>

  <\itemize-minus>
    <item><strong|(H1)> The family satisfies its specification (Ÿ2, input 1).

    <item><strong|(H2)> The fixed-volume centered budgets, the power budgets
    along ordered tails, reflection positivity and the chessboard
    inequalities hold along <math|f>, with the quantifiers in Ÿ2, input 2.
  </itemize-minus>

  <strong|Proposition IV.1.1 (subsequential raw limits).> Assume (H1) and
  (H2) for an extraction <math|f>. Then there are a refinement
  <math|f\<circ\>g=<around|(|<around|(|N<rsub|j>|)>,<around|(|p<rsub|k>|)>|)>>,
  a table <math|S> and tables <math|P<rsub|p>> (<math|p\<in\>\<bbb-N\>>) such
  that the following hold for every <math|n> and every list of labels
  <math|v>.

  (a) <em|(Spacing limit at fixed volume.)> For every <math|p>,
  <math|P<rsub|p><around|(|v;\<cdot\>|)>> is continuous on
  <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>>. For every compact
  <math|K\<subset\><math-up|Gen><rsup|<around|(|p|)>><rsub|n>> and
  <math|\<varepsilon\>\<gtr\>0>, for all sufficiently large <math|j> and all
  lifted tuples <math|r\<in\><around|(|\<bbb-Z\><rsup|4>|)><rsup|n>> with
  <math|a<rsub|N<rsub|j>>*r\<in\>K>,

  <\equation*>
    <around|\||\<cal-C\><rsub|N<rsub|j>,p><around|(|v;r|)>-P<rsub|p><around|(|v;a<rsub|N<rsub|j>>*r|)>|\|>\<less\>\<varepsilon\>.
  </equation*>

  (b) <em|(Volume limit.)> <math|S<around|(|v;\<cdot\>|)>> is continuous on
  <math|<math-up|Gen><rsub|n>>, and <math|P<rsub|p<rsub|k>><around|(|v;\<cdot\>|)>\<to\>S<around|(|v;\<cdot\>|)>>
  uniformly on compact subsets of <math|<math-up|Gen><rsub|n>>.

  (c) <em|(Ordered smeared limit.)> For every
  <math|t\<in\>\<cal-D\><rsub|n>>:

  <\itemize-minus>
    <item><math|t> is admissible at <math|p<rsub|k>> for <math|k> large;

    <item>for every admissible <math|p> the limit <math|V<rsub|p>=lim<rsub|j>
    \<cal-C\><rsub|N<rsub|j>,p><around|(|v;t|)>> exists (in the proof,
    <math|V<rsub|p>=<big|int>t*P<rsub|p><around|(|v;\<cdot\>|)>>);

    <item><math|V<rsub|p<rsub|k>>\<to\><big|int>t*<space|0.17em>S<around|(|v;\<cdot\>|)>>.
  </itemize-minus>

  (d) <math|t*<space|0.17em>S<around|(|v;\<cdot\>|)>> is integrable for every
  <math|t\<in\>\<cal-D\><rsub|n>>, i.e. <math|S> is locally integrable on
  <math|<math-up|Conf><rsub|n>>.

  <em|Status:> theorem. (H2) holds for every <math|f> as soon as the
  volume-uniform budget of Ÿ2, input 2, holds
  (<hlink|<verbatim|Wcmain.projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L42-L56>).
  Part (d) uses the uniform bound of Lemma IV.1.d.

  <em|Lean:>

  <\itemize-minus>
    <item>existence: <hlink|<verbatim|Extraction.crops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137>;

    <item>conclusion: <hlink|<verbatim|RawLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160>,
    with fields <hlink|<verbatim|Order.Meshes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L57-L62>,
    <hlink|<verbatim|Order.VolumePoints>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L64-L66>,
    <hlink|<verbatim|Order.Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32-L35>
    and <hlink|<verbatim|Order.limits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L61-L64>;

    <item>part (d): <hlink|<verbatim|Order.ordinary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153>;

    <item>hypothesis (H2): <hlink|<verbatim|CenterPort>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L30-L34>.
  </itemize-minus>

  <strong|Proposition IV.1.2 (limits of label derivatives).> Let <math|S> be
  an ordered limit along <math|f> (IV.1.1 (c)) that is locally integrable
  (IV.1.1 (d)), with (H1) and (H2) along <math|f>. Let
  <math|<math-up|Null><rsub|d><around|(|S|)>> be the space of
  <math|u\<in\><math-up|Label><rsub|d>> with
  <math|<big|int>t*S<around|(|\<ldots\>,u,\<ldots\>|)>=0> for every arity
  <math|n>, slot, spectator label list and <math|t\<in\>\<cal-D\><rsub|n>>.
  Assume the relay data of Ÿ2, input 3:

  <\itemize-minus>
    <item>projections <math|\<pi\><rsub|d><around|(|N,p|)>> on
    <math|<math-up|Label><rsub|d>> converging along ordered tails in operator
    norm to a projection <math|\<pi\><rsub|d>>;

    <item>the relay properties for every <math|d>;

    <item>the dimension count <math|dim <math-up|Null><rsub|d><around|(|S|)>\<leqslant\>dim
    ker \<pi\><rsub|d>>.
  </itemize-minus>

  Then <math|ker \<pi\><rsub|d>=<math-up|Null><rsub|d><around|(|S|)>>.
  Moreover there are linear maps <math|\<kappa\><rsub|d,e>:<math-up|Label><rsub|d>\<to\><math-up|Label><rsub|e>>
  (<math|d\<leqslant\>e>) and <math|\<tau\><rsub|d,a>:<math-up|Label><rsub|d>\<to\><math-up|Label><rsub|d+1>>
  (<math|a> an axis) such that, for all <math|n>, slots <math|i>, labels
  <math|v> and <math|t\<in\>\<cal-D\><rsub|n>>,

  <\equation*>
    <big|int>t*<space|0.17em>S<around|(|v<rsub|i\<to\>\<kappa\>*v<rsub|i>>;\<cdot\>|)>=<big|int>t*<space|0.17em>S<around|(|v;\<cdot\>|)>,<space|2em><big|int>t*<space|0.17em>S<around|(|v<rsub|i\<to\>\<tau\><rsub|a>*v<rsub|i>>;\<cdot\>|)>=-<big|int><around|(|\<partial\><rsub|x<rsub|i><rsup|a>>*t|)>*<space|0.17em>S<around|(|v;\<cdummy\>|)>.
  </equation*>

  Here <math|v<rsub|i\<to\>w>> is <math|v> with the <math|i>-th label
  replaced by <math|w>. In other words, <math|\<partial\><rsub|x<rsub|i><rsup|a>>*S<around|(|v;\<cdot\>|)>=S<around|(|v<rsub|i\<to\>\<tau\><rsub|a>*v<rsub|i>>;\<cdot\>|)>>
  in <math|\<cal-D\><rprime|'><around|(|<math-up|Conf><rsub|n>|)>>.

  <em|Status:> theorem, conditional on the relay data and the dimension
  count. Their suppliers in III.10\UIII.11 are listed in Ÿ2, input 3.

  <em|Lean:> <hlink|<verbatim|Work.D04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240>
  (conclusion <hlink|<verbatim|Spans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L55-L60>),
  <hlink|<verbatim|Bin.exactC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L41-L42>,
  <hlink|<verbatim|lifts_model>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L71-L87>
  (maps <hlink|<verbatim|MonitorOps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L63-L65>,
  identities <hlink|<verbatim|MonitorOps.Wakes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L67-L69>),
  <hlink|<verbatim|Wakes.through_ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L89-L96>.

  <strong|Proposition IV.1.3 (smoothness of the limit).> Let <math|S> be as
  in IV.1.1, along an extraction for which IV.1.2 applies. Then there is a
  table <math|T> with the following properties.

  <\itemize-minus>
    <item><math|T=S> on <math|<math-up|Gen><rsub|n>>, and
    <math|T<around|(|v;\<cdot\>|)>\<in\>C<rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>|)>>
    for every <math|n> and <math|v>.

    <item>IV.1.1 (a)\U(d) hold for <math|T> along the same extraction and
    with the same <math|P<rsub|p>>.

    <item><math|T> satisfies the basic identities (E1) below.

    <item>The maps <math|\<kappa\>> and <math|\<tau\>> descend to linear maps
    <math|<math-up|rise><rsub|d,e>:F<rsub|d>\<to\>F<rsub|e>> and
    <math|\<partial\><rsub|d,a>:F<rsub|d>\<to\>F<rsub|d+1>> on the quotients
    <math|F<rsub|d>=<math-up|Label><rsub|d>/<math-up|Null><rsub|d><around|(|T|)>>.
    They satisfy, pointwise on <math|<math-up|Conf><rsub|n>>,
  </itemize-minus>

  <\equation*>
    T<around|(|\<ldots\>,<math-up|rise><space|0.17em>u,\<ldots\>|)>=T<around|(|\<ldots\>,u,\<ldots\>|)>,<space|2em>T<around|(|\<ldots\>,\<partial\><rsub|a>*u<rsub|i>,\<ldots\>|)>=\<partial\><rsub|x<rsub|i><rsup|a>>*T<around|(|\<ldots\>,u<rsub|i>,\<ldots\>|)>.
  </equation*>

  Such a pair of maps is a <em|derivative plan> with its inclusion and
  derivative identities.

  On <math|<math-up|Conf><rsub|n>>, the smooth ordered limit along a given
  extraction is unique (<hlink|<verbatim|Order.determined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L47-L50>).

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Org.Arrives.serves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L101-L109>
  (filed with VIII.1; hypotheses <hlink|<verbatim|Org.Arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L83-L86>,
  conclusion <hlink|<verbatim|Org.Cleaner>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L90-L96>),
  <hlink|<verbatim|Dash.awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58>,
  <hlink|<verbatim|RawLimits.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L194-L202>,
  <hlink|<verbatim|DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>
  with <hlink|<verbatim|Inclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60>
  and <hlink|<verbatim|Derivatives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64>.

  <strong|Proposition IV.1.4 (the Euclidean hierarchy).> Let <math|T> be a
  table and let <math|f> be an extraction. Assume (H1), IV.1.1 (a)\U(c) hold
  for <math|T> and <math|T<around|(|v;\<cdot\>|)>\<in\>C<rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>|)>>
  for every arity <math|n> and label list <math|v>. Then <math|T> satisfies
  (E1)\U(E5), with all points in <math|<math-up|Conf><rsub|n>>:

  <\itemize-minus>
    <item><strong|(E1) Basic identities.> <math|T> is invariant under
    simultaneous permutation of points and labels; <math|T=1> for <math|n=0>;
    and <math|T<around|(|<around|(|1<rsub|d>,v|)>;x|)>=T<around|(|v;<around|(|x<rsub|2>,\<ldots\>,x<rsub|n+1>|)>|)>>.

    <item><strong|(E2) Real spin.> <math|T<around|(|\<rho\><around|(|s|)>*v;s*x|)>=T<around|(|v;x|)>>
    for <math|s\<in\>H<rsub|4>>, and <math|T<around|(|<wide|v|\<bar\>>;x|)>=<wide|T<around|(|v;x|)>|\<bar\>>>.

    <item><strong|(E3) Homogeneity.> <math|T<around|(|v;x+s|)>=T<around|(|v;x|)>>
    for every <math|s\<in\>\<bbb-R\><rsup|4>>.

    <item><strong|(E4) Reflection positivity at points.> Fix an axis <math|a>
    and words <math|w<rsub|1>,\<ldots\>,w<rsub|m>>, each a finite list of
    (point, label) pairs with distinct points and all
    <math|x<rsup|a>\<gtr\>0>. Let <math|\<Theta\><rsub|a>*w> be the word in
    reverse order with <math|x<rsup|a>\<mapsto\>-x<rsup|a>> and labels
    <math|\<theta\><rsub|a>>. Then for all <math|c\<in\>\<bbb-C\><rsup|m>>
    the following expression is real and nonnegative:
  </itemize-minus>

  <\equation*>
    <big|sum><rsub|i,j><wide|c|\<bar\>><rsub|i>*c<rsub|j>*<space|0.17em>T*<around|(|\<Theta\><rsub|a>*w<rsub|i>*<space|0.17em>w<rsub|j>|)>\<geqslant\>0.
  </equation*>

  <\itemize-minus>
    <item><strong|(E5) Smeared reflection positivity.> The same holds for
    tests: replace <math|w<rsub|i>> by pairs (labels
    <math|v<rsup|<around|(|i|)>>>, test <math|t<rsub|i>\<in\>\<cal-D\><rsub|n<rsub|i>>>
    supported in <math|<around|{|x<rsub|k><rsup|a>\<gtr\>0\<forall\>k|}>>)
    and <math|T*<around|(|\<Theta\><rsub|a>*w<rsub|i>*w<rsub|j>|)>> by
    <math|<big|iint><wide|t<rsub|i><around|(|y|)>|\<bar\>><space|0.17em>t<rsub|j><around|(|z|)>*<space|0.17em>T<around|(|\<Theta\><rsub|a><around|(|v<rsup|<around|(|i|)>>,y|)><space|0.17em><around|(|v<rsup|<around|(|j|)>>,z|)>|)>>.
    These integrals converge absolutely, and the Gram matrix is positive
    semidefinite.
  </itemize-minus>

  If in addition <strong|(E7)> (polynomial bounds on derivatives) holds, then
  <math|T> satisfies the hierarchy (E1)\U(E7), where:

  <\itemize-minus>
    <item><strong|(E6)> is smoothness on <math|<math-up|Conf><rsub|n>>;

    <item><strong|(E7)> says: for every arity <math|n>, degree list, label
    list <math|v> and order <math|j\<geqslant\>0>, there are
    <math|A\<in\>\<bbb-N\>> and <math|C\<geqslant\>0> such that
    <math|<around|\<\|\|\>|D<rsup|j><rsub|x>*T<around|(|v;x|)>|\<\|\|\>>\<leqslant\>C*r<rsup|-A>>
    whenever <math|0\<less\>r\<leqslant\>1> and
    <math|<around|\||x<rsub|i>-x<rsub|\<ell\>>|\|><rsub|\<infty\>>\<geqslant\>r>
    for every <math|i\<ne\>\<ell\>>. Here <math|D<rsup|j>> is the iterated
    real Fréchet derivative with its operator norm on
    <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>. The constants are
    independent of <math|r> and <math|x>.
  </itemize-minus>

  <em|Status:> theorem. (E6) and (E7) are hypotheses of the assembly. (E6) is
  supplied by IV.1.3; (E7) is supplied by IV.1.5 together with the promotion
  lemma B10 of V.1.

  <em|Lean:>

  <\itemize-minus>
    <item>assembly: <hlink|<verbatim|Order.assembles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65>,
    producing <hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>;

    <item>fields: <hlink|<verbatim|Basic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L75-L78>,
    <hlink|<verbatim|RealSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L80-L84>,
    <hlink|<verbatim|Homogeneous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L86>,
    <hlink|<verbatim|RP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L123-L124>,
    <hlink|<verbatim|RPSmear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L136-L138>,
    <hlink|<verbatim|Smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L88-L89>,
    <hlink|<verbatim|Capped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L97-L99>;

    <item>call site: <hlink|<verbatim|Org.Cleaner.stay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L113-L114>.
  </itemize-minus>

  <strong|Proposition IV.1.5 (polynomial bound at short distance; D05).>
  Assume (H1) and (H2) along <math|f>. Let <math|T<around|(|v;\<cdot\>|)>> be
  smooth on <math|<math-up|Conf><rsub|n>> for every arity and label list, and
  suppose <math|T> satisfies IV.1.1 (a)\U(b) along <math|f>. Then for every
  arity <math|n>, degree list <math|<around|(|d<rsub|i>|)>> and label list
  <math|v> there is <math|C\<geqslant\>0>, independent of <math|r> and
  <math|x>, such that

  <\equation*>
    <around|\||T<around|(|v;x|)>|\|>\<leqslant\>C*<space|0.17em>r<rsup|-A><space|1em><text|whenever
    >0\<less\>r\<leqslant\>1<text| and ><around|\||x<rsub|i>-x<rsub|\<ell\>>|\|><rsub|\<infty\>>\<geqslant\>r<text|
    for every >i\<ne\>\<ell\>,<space|2em>A=4*n*<around*|(|1+max<rsub|i>
    d<rsub|i>|)>.
  </equation*>

  The maximum of an empty degree list is taken to be <math|0>. The displayed
  exponent follows by choosing the largest degree in the proof.

  <em|Status:> theorem. Together with the derivative plan of IV.1.3, the
  lemma B10 of V.1 upgrades this to (E7).

  <em|Lean:> <hlink|<verbatim|Work.D05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180>
  (statement <hlink|<verbatim|Bid.D05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L70-L71>,
  conclusion <hlink|<verbatim|Bid.OneCap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98>);
  promotion <hlink|<verbatim|Bid.B10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L101-L102>,
  proved by <hlink|<verbatim|Work.B10.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L95-L105>.

  <strong|Proposition IV.1.6 (the derivative plan respects the symmetries;
  D06).> Let <math|T> be smooth on <math|<math-up|Conf><rsub|n>> for every
  arity and label list, permutation symmetric and with real spin, and let
  <math|<around|(|<math-up|rise>,\<partial\>|)>> be a derivative plan for
  <math|T> satisfying its inclusion and derivative identities. Use
  <math|\<rho\><rsub|d>> also for the induced action on <math|F<rsub|d>>. For
  every <math|d\<leqslant\>e>, axis and <math|s\<in\>H<rsub|4>>:

  <\itemize-minus>
    <item><math|<math-up|rise><rsub|d,e>> and every
    <math|\<partial\><rsub|a>> commute with complex conjugation;

    <item><math|<math-up|rise>> commutes with <math|\<rho\><around|(|s|)>>
    for every <math|s\<in\>H<rsub|4>>;

    <item><math|\<rho\><rsub|d+1><around|(|s|)>*<space|0.17em>\<partial\><rsub|b>=<big|sum><rsub|a>s<rsub|a*b>*<space|0.17em>\<partial\><rsub|a>*<space|0.17em>\<rho\><rsub|d><around|(|s|)>>,
    where <math|<around|(|s<rsub|a*b>|)>> is the signed permutation matrix of
    <math|s>.
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Work.D06.compat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135>,
  <hlink|<verbatim|Work.D06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L137-L139>,
  <hlink|<verbatim|DiffPlan.Orientation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72>.

  <strong|Remarks.>

  <\enumerate>
    <item><strong|The package handed downstream> is the bundle
    <hlink|<verbatim|Next.Extract.Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>.
    It contains (H1), (H2), the relay data, the raw limit <math|S> with local
    integrability and the spanning property, the smooth table <math|T> with
    its plan, the bound of IV.1.5 and the hierarchy of IV.1.4. It also
    records <math|ker \<pi\><rsub|d>=<math-up|Null><rsub|d><around|(|T|)>>
    (<hlink|<verbatim|Base.null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L72-L74>).
    On the main theorem's path it is assembled in III.11
    (<hlink|<verbatim|MergeProof.Accent.rated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L48-L71>)
    as follows:

    <\itemize-minus>
      <item>extract with <hlink|<verbatim|crops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137>;

      <item>refine further so that the projections converge
      (<hlink|<verbatim|include_projections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L86-L93>);

      <item>convert the relay estimates (<hlink|<verbatim|Projected.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L178-L181>).

      <item>include the rank-detector limits along a further common
      refinement and obtain the dimension comparison
      (<hlink|<verbatim|Beam.arriving_seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180>),
      then apply IV.1.2\UIV.1.5. All earlier limits are retained.
    </itemize-minus>

    <item><strong|The extraction is subsequential in both indices.> It gives
    no independence from the volume subsequence. The public form of the
    theorem (<hlink|<verbatim|WilsonFamily.Converges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85-L90>,
    via <hlink|<verbatim|wilsonLimit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56>)
    needs the ordered limit along the <em|full> sequence of spacings. The
    upgrade is proved in III.13 by <hlink|<verbatim|UVExtension.Reports.useFull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L62-L69>,
    using <hlink|<verbatim|full_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reports/Ultraviolet.lean#L50-L58>.
    At each admissible fixed volume, uniqueness identifies the full-sequence
    smeared limit with its subsequential limit; the volume limit and the
    table <math|T> are retained.
  </enumerate>

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\enumerate>
    <item><strong|Specification of the family.> The definition is in
    II.1\UII.2. It is proved for the constructed family in III.13
    (<hlink|<verbatim|UVExtension.Mast.calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Forest/Glue.lean#L35-L36>).
    Its consequences used here are the following; covariance, reality and the
    unit identity require <math|N\<geqslant\><math-up|ref><around|(|d|)>>:

    <\itemize-minus>
      <item><math|\<beta\><rsub|N,p>\<geqslant\>0>;

      <item><math|I<rsub|N,p><around|(|v,x|)>> is continuous, gauge invariant
      and linear in <math|v>;

      <item><math|I<rsub|N,p><around|(|v,x|)>> depends only on links inside a
      fixed finite stencil translated to <math|x>; for each stencil offset
      <math|z> and axis <math|a>, <math|20*<around|(|<around|\||z<rsup|a>|\|>+1|)>\<leqslant\>L<rsub|p>/a<rsub|N>>
      whenever <math|N\<geqslant\><math-up|ref><around|(|d|)>>;

      <item>for <math|N\<geqslant\><math-up|ref><around|(|d|)>>, the terminal
      transfer <math|B<rsub|d,N,p>> from cutoff coordinates to reference
      coordinates is normalized as follows: the coefficient trajectory of
      <math|v> has <math|x<rsub|<math-up|ref><around|(|d|)>>=v>,
      <math|x<rsub|N>=B<rsub|d,N,p><rsup|-1>*v>, and
      <math|<around|\<\|\|\>|x<rsub|m+1>|\<\|\|\>><rsub|1>\<leqslant\><math-up|column><rsub|m+1><around|\<\|\|\>|x<rsub|m>|\<\|\|\>><rsub|1>>
      for <math|<math-up|ref><around|(|d|)>\<leqslant\>m\<less\>N>;

      <item>translation covariance;

      <item><math|H<rsub|4>>-covariance: <math|I<around|(|\<rho\><around|(|s|)>*v,s*x+b|)>>
      is <math|I<around|(|v,x|)>> composed with the pull-back of the lattice
      symmetry;

      <item>reality: <math|I<around|(|<wide|v|\<bar\>>,x|)>=<wide|I<around|(|v,x|)>|\<bar\>>>;

      <item><math|I<around|(|1<rsub|d>,x|)>=1> for
      <math|N\<geqslant\><math-up|ref><around|(|d|)>>. <em|Lean:>
      <hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>,
      <hlink|<verbatim|Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>,
      <hlink|<verbatim|rotated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98>,
      <hlink|<verbatim|reality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86>,
      <hlink|<verbatim|constant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102>.
    </itemize-minus>

    <item><strong|Centered chessboard budgets> (interface item 2). A
    sufficient volume-uniform input is the following: for every degree
    <math|d>, every <math|R\<gtr\>0> and every <math|\<varepsilon\>\<gtr\>0>
    there is <math|A\<geqslant\>0> such that for every
    <math|m\<geqslant\><math-up|ref><around|(|d|)>> there is
    <math|N<rsub|0>\<geqslant\>m> with the following property. For all
    <math|N\<geqslant\>N<rsub|0>>, all <math|p>, all
    <math|v\<in\><math-up|Label><rsub|d>> with
    <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R>, and all sites <math|x>:

    <\itemize-minus>
      <item><math|I<rsub|N,p><around|(|v,x|)>> is an interior function of the
      base cell of the centered tiling <math|\<cal-T\><rsub|m><around|(|x|)>>;

      <item><math|<around|\<\|\|\>|I<rsub|N,p><around|(|v,x|)>|\<\|\|\>><rsub|\<cal-T\><rsub|m><around|(|x|)>>\<leqslant\>A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>>.
    </itemize-minus>

    This stronger volume-uniform input implies <strong|(H2)> along every
    extraction <math|f>. Precisely, (H2) requires:

    <\itemize-minus>
      <item>for every fixed <math|p> and label <math|v>, at every
      sufficiently fine scale <math|m> there is <math|A\<geqslant\>0> such
      that the centered interior condition and root bound
      <math|<around|\<\|\|\>|I<rsub|N<rsub|j>,p><around|(|v,x|)>|\<\|\|\>><rsub|\<cal-T\><rsub|m><around|(|x|)>>\<leqslant\>A>
      hold for all <math|x> and all large <math|j>, with
      <math|N<rsub|j>\<geqslant\>max <around|(|m,<math-up|ref><around|(|d|)>|)>>
      for <math|v\<in\><math-up|Label><rsub|d>>;

      <item>reflection positivity, the chessboard inequality and
      subadditivity of roots at every <math|<around|(|N,p|)>>; and, for every
      <math|d>, <math|R\<gtr\>0> and <math|\<varepsilon\>\<gtr\>0>, numbers
      <math|m<rsub|0>\<geqslant\><math-up|ref><around|(|d|)>> and
      <math|A\<geqslant\>0> such that for every <math|m\<geqslant\>m<rsub|0>>
      and <math|\<eta\>\<gtr\>0>, eventually along ordered tails, the
      centered interior condition and <math|<around|\<\|\|\>|I<rsub|N,p><around|(|v,x|)>|\<\|\|\>><rsub|\<cal-T\><rsub|m><around|(|x|)>>\<leqslant\>A*<space|0.17em>a<rsub|m><rsup|-d-\<varepsilon\>>+\<eta\>>
      hold for all <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R> and all
      sites <math|x>, with <math|N\<geqslant\>m>.
    </itemize-minus>

    On the main theorem's path it is supplied by
    <hlink|<verbatim|MergeProof.Accent.gardena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40>
    (III.11). The variant <hlink|<verbatim|Org.Assembly.wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L75-L76>
    is not on that path. <em|Lean:> <hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>,
    <hlink|<verbatim|centeredBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23>,
    <hlink|<verbatim|Cells.center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40>,
    <hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>,
    <hlink|<verbatim|CenterPort.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L58-L66>,
    <hlink|<verbatim|CenteredBook>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L25-L28>.

    <item><strong|Relay data> (interface item 3, in the form used here;
    III.10\UIII.11). A family <math|Q<rsub|N,p><around|(|x|)>> is
    <em|chessboard-small> if there is a real rate
    <math|y<around|(|N,p|)>\<to\>0> along ordered tails with the following
    property. For every integer <math|q\<geqslant\>0> and lower scale
    <math|m>, there is <math|k\<geqslant\>m> such that, eventually along
    ordered tails with <math|N\<geqslant\>k>, the bound
    <math|<around|\<\|\|\>|Q<rsub|N,p><around|(|x|)>|\<\|\|\>><rsub|\<cal-T\>>\<leqslant\>y<around|(|N,p|)>>
    and the interior condition hold for every translated bond tiling
    <math|\<cal-T\>> of side <math|a<rsub|k>> and every <math|x> in its base
    cell with lattice coordinates <math|z<rsup|a>> relative to the base
    corner satisfying

    <\equation*>
      M\<leqslant\>z<rsup|a>,<space|2em>z<rsup|a>+M+1\<leqslant\>a<rsub|k>/a<rsub|N>,<space|2em>M=<around*|\<lfloor\>|<frac|a<rsub|k>/a<rsub|N>|8*<around|(|q+1|)>>|\<rfloor\>>.
    </equation*>

    Thus the error bound must hold for translated cells with prescribed
    relative interior margins. Centered cells alone do not suffice.

    A label family <math|w<around|(|N,p|)>> has <em|subpolynomial growth> if,
    for every <math|\<varepsilon\>\<gtr\>0>,

    <\equation*>
      <around|\<\|\|\>|B<rsub|d,N,p><rsup|-1>*w<around|(|N,p|)>|\<\|\|\>>\<leqslant\>a<rsub|N><rsup|-\<varepsilon\>>
    </equation*>

    eventually along ordered tails. For each degree <math|d> the relay data
    are:

    <\itemize-minus>
      <item>projections <math|\<pi\><rsub|d><around|(|N,p|)>> on
      <math|<math-up|Label><rsub|d>>, bounded at each fixed <math|p> and
      along ordered tails;

      <item><em|pace>: for <math|v\<in\><math-up|Label><rsub|d>> and each
      axis <math|a> there are degree-<math|<around|(|d+1|)>> labels
      <math|w<around|(|N,p|)>> of subpolynomial growth such that
      <math|I<rsub|N,p><around|(|w<around|(|N,p|)>,\<cdummy\>|)>-a<rsub|N><rsup|-1><around*|[|I<rsub|N,p><around|(|v,\<cdot\>+e<rsub|a>|)>-I<rsub|N,p>(v,\<cdummy\><around*|)||]>|\<nobracket\>>>
      is chessboard-small;
    </itemize-minus>

    Here <math|e<rsub|a>> is one lattice step, of physical length
    <math|a<rsub|N>>.

    <\itemize-minus>
      <item><em|transit>: the same, with a label of degree
      <math|d<rprime|'>\<leqslant\>d> approximated at degree <math|d>;

      <item><em|mark>: if <math|w<around|(|N,p|)>\<in\>ker
      \<pi\><rsub|d><around|(|N,p|)>> has subpolynomial growth, then
      <math|I<rsub|N,p><around|(|w<around|(|N,p|)>,\<cdot\>|)>> is
      chessboard-close to measurable observables, bounded at each cutoff and
      site, whose correlations with arbitrary spectator labels vanish exactly
      at every fixed positive separation, eventually along ordered tails;

      <item>the dimension count <math|dim
      <math-up|Null><rsub|d>\<leqslant\>dim ker \<pi\><rsub|d>>.
    </itemize-minus>

    Supplied in III.11 by <hlink|<verbatim|MergeProof.Scotia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20>,
    <hlink|<verbatim|savings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47>
    and <hlink|<verbatim|Beam.arriving_seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Beam.lean#L153-L180>.
    <em|Lean:> <hlink|<verbatim|Presentation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41>,
    <hlink|<verbatim|Affordable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L46-L48>,
    <hlink|<verbatim|RelayCosts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L115-L119>,
    <hlink|<verbatim|Bid.RelayBin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L46-L52>,
    <hlink|<verbatim|vet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L39>,
    <hlink|<verbatim|close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25>,
    <hlink|<verbatim|dollar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L18-L19>,
    <hlink|<verbatim|heighten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44>,
    <hlink|<verbatim|Bin.shortage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L39>.

    <item><strong|Analytic toolkit (III.16).> The Lipschitz bound for traces
    of products of a positive kernel (Lemma IV.1.e). <em|Lean:>
    <hlink|<verbatim|TimeKernel.passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>,
    <hlink|<verbatim|Holder.finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>,
    <hlink|<verbatim|Holder.estimation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165>,
    <hlink|<verbatim|Holder.convexStrip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132>,
    <hlink|<verbatim|TimeKernel.learns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119>.

    <item><strong|Scale schedule (I.1, III.2, V.1).>

    <\itemize-minus>
      <item>Gentleness, <math|log b<rsub|m>/log a<rsub|m><rsup|-1>\<to\>0>,
      gives <math|a<rsub|m+1>\<geqslant\>c*<space|0.17em>a<rsub|m><rsup|2>>
      (<hlink|<verbatim|Schedule.Gentle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L129-L130>,
      <hlink|<verbatim|mesh_inequality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L133-L162>,
      <hlink|<verbatim|OS.thickness>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Halves.lean#L29-L39>).
      This is used in D05.

      <item>The column constants of the renormalization group have
      <math|<big|sum><rsub|m\<leqslant\>N>log
      <around|(|<text|column><rsub|m>|)>=o<around|(|log
      a<rsub|N><rsup|-1>|)>>. This is used in D01.
    </itemize-minus>

    <item><strong|Promotion of derivative bounds (V.1).> The lemma B10 (see
    IV.1.5).
  </enumerate>

  Interface item 4 (whole-sequence convergence at fixed volume) enters only
  in Remark 2: the extraction itself passes to a spacing subsequence.
  Interface item 5 (corrected fields) is not used either:
  <hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>
  consists only of the chessboard inequality and the budget for
  <math|I<rsub|N,p>>. The corrected-field definitions serve III.11\UIII.12.

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item><em|Reflection positivity of the Wilson action, site and bond
    reflections.> K. Osterwalder, E. Seiler, Ann. Phys. 110 (1978) 440\U471.
    Axioms: Osterwalder\USchrader, CMP 31 (1973), 42 (1975).

    <item><em|Chessboard estimates.>

    <\itemize-minus>
      <item>J. Glimm, A. Jaffe, T. Spencer, CMP 45 (1975) 203\U216;

      <item>J. Fröhlich, R. Israel, E. Lieb, B. Simon, CMP 62 (1978) 1\U34
      and J. Stat. Phys. 22 (1980) 297\U347;

      <item>M. Biskup, <em|Reflection positivity and phase transitions in
      lattice spin models>, LNM 1970 (2009), Ÿ5.
    </itemize-minus>

    <item><em|Transfer matrices of reflection-positive lattice theories.>
    Glimm\UJaffe, <em|Quantum Physics>, 2nd ed.

    <item><em|Hölder's inequality for Schatten norms and complex
    interpolation (Hadamard three lines).> B. Simon, <em|Trace Ideals and
    Their Applications>; Reed\USimon II, ŸIX.4. Cauchy's estimate for
    holomorphic functions.

    <item><em|Compactness and integration.> Arzelà\UAscoli; Tychonoff for
    countable products; dominated convergence.

    <item><em|Regularity.> A distribution whose localizations have rapidly
    decreasing Fourier transforms is <math|C<rsup|\<infty\>>> (Hörmander,
    <em|The Analysis of Linear Partial Differential Operators I>, Ch. 7).
  </itemize-minus>

  <strong|Imported constants and hypotheses.>

  <\itemize-minus>
    <item>Numbers: the budget constants <math|A<around|(|d,R,\<varepsilon\>|)>>
    and thresholds <math|N<rsub|0><around|(|m,d,R,\<varepsilon\>|)>> (input
    2); the reference levels <math|<math-up|ref><around|(|d|)>>; the
    gentleness constant <math|c> of input 5. The exponent
    <math|4*n*<around|(|1+max d<rsub|i>|)>> of IV.1.5 comes from choosing
    <math|\<varepsilon\>=1> and from applying
    <math|a<rsub|m+1>\<geqslant\>c*a<rsub|m><rsup|2>> twice.

    <item>Hypotheses: (H1), (H2), and the relay data and dimension count
    (input 3). The promotion theorem B10 is proved in V.1.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  Chessboard estimates bound correlations at distinct points uniformly in the
  cutoff and volume. To obtain equicontinuity, fix an axis and express a
  correlation as a cyclic trace of transfer kernels and observable kernels
  supported in slabs. Moving one insertion transfers length between two gaps.
  Finite-dimensional complex interpolation bounds the trace for complex gap
  shifts; Cauchy's estimate gives a Lipschitz bound. The required column
  moments are bounded by the same chessboard budgets. This argument needs
  separation in every coordinate. Two applications of Arzelà\UAscoli, with
  countable basis indices, give spacing limits at every fixed volume and then
  a volume limit on <math|<math-up|Gen><rsub|n>>. Bounds on all of
  <math|<math-up|Conf><rsub|n>> supply domination for smeared limits.

  Smoothness uses the label calculus. The relay estimates approximate each
  lattice forward difference quotient by a degree-raised observable.
  Summation by parts computes its weak limit, and chessboard-small errors
  have vanishing smeared limits. The projections and dimension count identify
  the null labels. A finite-dimensional compactness argument then replaces
  the varying approximating labels by fixed linear maps, giving
  distributional derivatives as kernels with raised labels. Iteration yields
  rapid Fourier decay after localization, hence a smooth representative on
  all distinct-point configurations.

  The exact lattice symmetries pass first at generic grid points and then by
  continuity. Reflection positivity passes for joint tests supported in a
  half-space; normalized bump functions give its pointwise form. A two-scale
  choice of cells yields a polynomial bound at short distances, and the
  derivative identities promote it to bounds of every order. These arguments
  assemble the Euclidean hierarchy.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Reflection positivity and chessboard
  estimates><label|41-reflection-positivity-and-chessboard-estimates>

  <strong|Lemma IV.1.a (reflection positivity of the Wilson measure).> Let
  <math|\<Lambda\>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>> with <math|n>
  even. Let <math|a> be an axis, <math|b\<in\>\<bbb-Z\>/n>, and
  <math|\<Theta\>> either the site reflection
  <math|x<rsup|a>\<mapsto\>2*b-x<rsup|a>> or the bond reflection
  <math|x<rsup|a>\<mapsto\>2*b-1-x<rsup|a>> (other coordinates fixed), acting
  on configurations by pull-back. Let <math|\<Lambda\><rsub|+>> be the
  half-torus <math|0\<less\><around|(|x<rsup|a>-b|)><bmod>n\<less\>n/2> (site
  case) or <math|0\<leqslant\><around|(|x<rsup|a>-b|)><bmod>n\<less\>n/2>
  (bond case), with residues in <math|<around|{|0,\<ldots\>,n-1|}>>. For
  every <math|\<beta\>\<geqslant\>0> and every bounded, measurable,
  gauge-invariant <math|F> depending only on links in
  <math|\<Lambda\><rsub|+>>,

  <\equation*>
    <around|\<langle\>|F<space|0.17em><wide|F\<circ\>\<Theta\>|\<bar\>>|\<rangle\>><rsub|\<beta\>>\<geqslant\>0.
  </equation*>

  <em|Proof sketch.> This is the Osterwalder\USeiler argument. Reparametrize
  configurations by the links in the two fixed planes, the links crossing
  them, and the two open halves; this map preserves the measure.

  <\itemize-minus>
    <item><em|Site reflections.> Given the plane links, the halves are
    independent and exchanged by <math|\<Theta\>>, so the expectation is a
    weighted integral of <math|\|\<bbb-E\>(F\<mid\><text|plane
    links><around|)||\|><rsup|2>> with nonnegative weights.

    <item><em|Bond reflections.> Integrating the crossing links gives for
    each plane the one-step kernel <math|K<rsub|\<beta\>><around|(|X,Y|)>>.
    It is positive semidefinite because <math|<math-up|Re><space|0.17em><math-up|tr><around|(|X*Y<rsup|\<ast\>>|)>>
    is a sum of Gram kernels, and exponentials, products and averages of
    positive semidefinite kernels stay positive semidefinite (Schur). The
    product of the two boundary kernels is positive semidefinite, so its
    quadratic integral is nonnegative.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Slice.reflected_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Reflection.lean#L98-L114>,
  <hlink|<verbatim|Cells.Positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L116-L117>,
  <hlink|<verbatim|Cells.Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113>,
  <hlink|<verbatim|Cells.Cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L40-L45>,
  <hlink|<verbatim|Slice.portPos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Gate.lean#L94-L102>,
  <hlink|<verbatim|Slice.step_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91>.

  <strong|Lemma IV.1.b (chessboard estimate).> Let <math|\<cal-T\>> be a
  tiling of <math|\<Lambda\>> into <math|M<rsup|4>> congruent cells (<math|M>
  even), with site or bond seams. For a cell <math|c> let
  <math|\<theta\><rsub|c>> be the composition of seam reflections carrying
  the base cell to <math|c>. Put <math|<math-up|copy><rsub|c>F=F\<circ\>\<theta\><rsub|c>>,
  or its complex conjugate when <math|\<theta\><rsub|c>> reverses an odd
  number of axes. For <math|F> interior to the base cell (bounded,
  measurable, gauge invariant, depending only on links inside it) put
  <math|<around|\<\|\|\>|F|\<\|\|\>><rsub|\<cal-T\>>=<around|\||<around|\<langle\>|<big|prod><rsub|c><math-up|copy><rsub|c>F|\<rangle\>><rsub|\<beta\>>|\|><rsup|1/M<rsup|4>>>.
  If <math|\<beta\>\<geqslant\>0>, then for interior <math|F<rsub|c>>

  <\equation*>
    <mid|\|><around*|\<langle\>|<big|prod><rsub|c><math-up|copy><rsub|c>F<rsub|c>|\<rangle\>><rsub|\<beta\>><mid|\|>\<leqslant\><big|prod><rsub|c><around|\<\|\|\>|F<rsub|c>|\<\|\|\>><rsub|\<cal-T\>>,
  </equation*>

  and <math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|\<cal-T\>>> is
  subadditive. By (H1) this holds for every <math|<around|(|N,p|)>> of the
  family.

  <em|Proof sketch.> This is the Fröhlich\UIsrael\ULieb\USimon argument.

  <\itemize-minus>
    <item><em|Fold.> For an assignment <math|A> of functions to cells, put
    <math|\<Phi\><around|(|A|)>=<around|\||<around|\<langle\>|<big|prod><rsub|c><math-up|copy><rsub|c>A<rsub|c>|\<rangle\>><rsub|\<beta\>>|\|>>.
    Cauchy\USchwarz for a band cut gives <math|\<Phi\><around|(|<math-up|assign><around|(|f,g|)>|)><rsup|2>\<leqslant\>\<Phi\><around|(|<math-up|assign><around|(|f,f|)>|)>*\<Phi\><around|(|<math-up|assign><around|(|g,g|)>|)>>,
    where the two assignments supply the two halves.

    <item><em|Maximization.> Among assignments of finitely many functions to
    cells, the maximum of <math|<around|\||<around|\<langle\>|<big|prod>|\<rangle\>>|\|>>
    is attained by a constant assignment, because a fold-closed property
    satisfied by some assignment is satisfied by a constant one.

    <item><em|Normalization.> Apply this to
    <math|F<rsub|c>/<around|(|<around|\<\|\|\>|F<rsub|c>|\<\|\|\>>+\<epsilon\>|)>>
    and let <math|\<epsilon\>\<to\>0>.

    <item><em|Subadditivity.> Expand <math|<big|prod><rsub|c><around|(|F+F<rprime|'>|)>>
    into <math|2<rsup|M<rsup|4>>> assignments and apply the estimate to each.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Cells.Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>,
  <hlink|<verbatim|Cells.laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24>,
  <hlink|<verbatim|Tiling.tiles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L80-L105>,
  <hlink|<verbatim|Tiling.maximize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L32-L63>,
  <hlink|<verbatim|Tiling.fold_both>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Polar.lean#L94-L102>,
  <hlink|<verbatim|Tiling.existence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Flood.lean#L110-L128>,
  <hlink|<verbatim|Tiling.adds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Chess.lean#L108-L131>,
  <hlink|<verbatim|Tiling.rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>,
  <hlink|<verbatim|Tiling.copy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L221-L224>,
  <hlink|<verbatim|Tiling.planted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Embedded.lean#L25-L38>,
  <hlink|<verbatim|Cells.seamless>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84>.

  <strong|Lemma IV.1.c (roots of uncentered observables).> Assume (H1),
  <math|m\<leqslant\>k\<leqslant\>N> and <math|N\<geqslant\><math-up|ref><around|(|d|)>>.
  Let <math|\<cal-X\>> be a bond tiling of <math|\<Lambda\><rsub|N,p>> with
  cells of side <math|a<rsub|m>>, and let
  <math|u\<in\><math-up|Label><rsub|d>> have all stencil offsets of
  coordinate size <math|\<less\>a<rsub|k>/a<rsub|N>>, and assume that for
  every image <math|g*u>, <math|g\<in\>H<rsub|4>\<times\><around|{|1,<text|conj>|}>>,
  the centered roots satisfy <math|<around|\<\|\|\>|I<around|(|g*u,y|)>|\<\|\|\>><rsub|\<cal-T\><rsub|k><around|(|y|)>>\<leqslant\>A>
  for all <math|y>, with the centered interior conditions. If <math|o> is at
  distance <math|\<geqslant\>3*a<rsub|k>> from the boundary of the base cell
  of <math|\<cal-X\>>, then <math|<around|\<\|\|\>|I<around|(|u,o|)>|\<\|\|\>><rsub|\<cal-X\>>\<leqslant\>A>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Centred case.> If <math|o> is the centre of a fine cell aligned
    with <math|\<cal-X\>>, the <math|\<cal-X\>>-copies of
    <math|I<around|(|u,o|)>> are copies, in the fine centered tiling, of
    observables <math|I<around|(|g*u,y|)>> (by <math|H<rsub|4>>-covariance
    and reality) sitting in distinct fine cells. The chessboard estimate in
    <math|\<cal-T\><rsub|k>>, with <math|1> in the remaining cells, gives
    <math|<around|\<\|\|\>|I<around|(|u,o|)>|\<\|\|\>><rsub|\<cal-X\>><rsup|\<sharp\>*\<cal-X\>>\<leqslant\>A<rsup|\<sharp\>*\<cal-X\>>>.

    <item><em|Log-convexity.> Under unit translations,
    <math|<around|\<\|\|\>|F|\<\|\|\>><rsub|\<cal-X\>><rsup|2>\<leqslant\><around|\<\|\|\>|F\<circ\>\<tau\><rsub|-e>|\<\|\|\>><rsub|\<cal-X\>>*<space|0.17em><around|\<\|\|\>|F\<circ\>\<tau\><rsub|e>|\<\|\|\>><rsub|\<cal-X\>>>.
    This follows from translation invariance and the chessboard estimate with
    alternating translates, since reversed cells see the opposite shift. A
    nonnegative log-convex sequence is bounded by its values at the
    endpoints.

    <item><em|Interpolation.> Move between fine-cell centres one axis at a
    time.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Around.interior_from>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L95-L129>,
  <hlink|<verbatim|Around.swept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L57-L93>,
  <hlink|<verbatim|Tiling.pathway>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L89-L101>,
  <hlink|<verbatim|Tiling.trip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Slide.lean#L60-L86>,
  <hlink|<verbatim|Spin.uses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Around.lean#L42-L50>.

  <subsection|4.2 Boundedness at separated
  points><label|42-boundedness-at-separated-points>

  <strong|Lemma IV.1.d (uniform bound).> Assume (H1). Let
  <math|x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>\<Lambda\><rsub|N,p>> be such that
  every pair has some coordinate at cyclic physical distance
  <math|\<geqslant\>r>. Let <math|m\<leqslant\>k\<leqslant\>N> with
  <math|a<rsub|m>\<less\>r> and <math|6*n*<space|0.17em>a<rsub|k>\<less\>a<rsub|m>>,
  and let <math|A\<geqslant\>0> bound the centered roots at scale <math|k> of
  all images <math|g*v<rsub|i>>, <math|g\<in\>H<rsub|4>\<times\><around|{|1,<text|conj>|}>>,
  with the centered interior conditions. Assume
  <math|N\<geqslant\>max<rsub|i><math-up|ref><around|(|d<rsub|i>|)>> and that
  all stencil offsets of these labels have coordinate size
  <math|\<less\>a<rsub|k>/a<rsub|N>>. Then
  <math|<around|\||\<cal-C\><rsub|N,p><around|(|v;x|)>|\|>\<leqslant\>A<rsup|n>>.
  Under (H1)\U(H2) this yields the bound <strong|(B)>:

  <\itemize-minus>
    <item><strong|(B1)> for each <math|p> and compact
    <math|K\<subset\><math-up|Conf><rsup|<around|(|p|)>><rsub|n>>,
    <math|<around|\||\<cal-C\><rsub|N<rsub|j>,p>|\|>> is bounded at lattice
    points of <math|K> for <math|j> large;

    <item><strong|(B2)> for compact <math|K\<subset\><math-up|Conf><rsub|n>>,
    it is bounded eventually along ordered tails.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>By pigeonhole, some translate of the tiling with cells of side
    <math|a<rsub|m>> puts every <math|x<rsub|i>> at distance
    <math|\<geqslant\>3*a<rsub|k>> from all cell boundaries (possible because
    <math|n\<cdot\>2\<cdot\>3*a<rsub|k>\<less\>a<rsub|m>>).

    <item>Distinct points lie in distinct cells because
    <math|a<rsub|m>\<less\>r>.

    <item>Each <math|I<around|(|v<rsub|i>,x<rsub|i>|)>> is the copy of some
    <math|I<around|(|g<rsub|i>*v<rsub|i>,y<rsub|i>|)>> with <math|y<rsub|i>>
    in the base cell.

    <item>Apply the chessboard estimate with <math|1> elsewhere, then Lemma
    IV.1.c.

    <item>For (B): by compactness a single <math|r\<gtr\>0> works on
    <math|K>, and for large <math|p> there is no wrap-around. Choose
    <math|m>, then <math|k>, then take the budgets from (H2).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Around.fits_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L73-L114>,
  <hlink|<verbatim|Around.size_done>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L120-L132>
  (conclusion <hlink|<verbatim|Bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L25-L30>),
  <hlink|<verbatim|Tiling.fits_together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Proximity.lean#L53-L66>,
  <hlink|<verbatim|Gaps.some>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L63-L80>,
  <hlink|<verbatim|Gaps.someGrows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L129-L137>.

  <subsection|4.3 Equicontinuity><label|43-equicontinuity>

  <strong|Lemma IV.1.e (Lipschitz bound for traces; proved in III.16).> Let
  <math|X> be a compact metric space with a finite Borel measure, <math|K> a
  continuous positive semidefinite kernel, and
  <math|B<rsub|1>,\<ldots\>,B<rsub|n>> continuous kernels, with
  <math|n\<geqslant\>2>. Let <math|q,w\<geqslant\>1> be integers, put
  <math|M=2*q*w>, and assume <math|Z=<math-up|Tr><space|0.17em>K<rsup|M>\<gtr\>0>.
  Take gaps <math|Y,Y<rprime|'>\<in\>\<bbb-N\><rsup|n>> with
  <math|n*w+<big|sum><rsub|k>Y<rsub|k>=M>. Suppose <math|Y<rprime|'>>
  transfers an integer <math|\<ell\>\<geqslant\>0> units from one gap to a
  different gap, <math|Y<rsub|k>\<gtr\>2*r> for every <math|k>, and
  <math|0\<leqslant\>\<ell\>\<leqslant\>r> with <math|r\<gtr\>0>. If

  <\equation*>
    <around|\<\|\|\>|B<rsub|k>|\<\|\|\>><rsub|2*q>\<assign\><around*|(|<math-up|Tr><around|(|B<rsub|k><rsup|\<ast\>>*B<rsub|k>|)><rsup|q>|)><rsup|1/<around|(|2*q|)>>\<leqslant\>c<rsub|k>*Z<rsup|1/<around|(|2*q|)>>,
  </equation*>

  then

  <\equation*>
    <mid|\|><math-up|Tr><big|prod><rsub|k>B<rsub|k>*K<rsup|Y<rprime|'><rsub|k>>-<math-up|Tr><big|prod><rsub|k>B<rsub|k>*K<rsup|Y<rsub|k>><mid|\|>\<leqslant\>Z<around*|(|<big|prod><rsub|k>c<rsub|k>|)><frac|\<ell\>|r>.
  </equation*>

  Here traces of kernel products are their cyclic integrals.

  <em|Proof sketch.> Approximate the cyclic integrals by finite matrices
  <math|<around|(|A,b<rsub|k>|)>> using one quadrature for all kernels and
  their adjoints. For the positive semidefinite matrix <math|A>, use the
  entire spectral family equal to <math|e<rsup|z*log \<lambda\>>> on positive
  eigenvalues and zero on <math|ker A> for every <math|z>. It agrees with
  <math|A<rsup|m>> at positive integers <math|m>. The trace with gap vector
  <math|W<around|(|z|)>=Y+z*<around|(|e<rsub|i>-e<rsub|j>|)>> is entire. On
  <math|<around|\||z|\|>\<leqslant\>2*r>, all real gap parts are nonnegative
  and

  <\equation*>
    <frac|n|2*q>+<big|sum><rsub|k><frac|<math-up|Re><space|0.17em>W<rsub|k><around|(|z|)>|M>=1.
  </equation*>

  Writing <math|Z<rsub|A>=<math-up|Tr><space|0.17em>A<rsup|M>>, complex
  interpolation gives the bound <math|<big|prod><rsub|k><around|\<\|\|\>|b<rsub|k>|\<\|\|\>><rsub|2*q>*<space|0.17em>Z<rsub|A><rsup|1-n/<around|(|2*q|)>>>.
  Cauchy's estimate bounds the derivative on
  <math|<around|\||z|\|>\<leqslant\>r> by this quantity divided by <math|r>.
  Integrate from <math|0> to <math|\<ell\>> and pass to the kernel limit; the
  partition traces and column moments converge under the common quadrature.

  <em|Lean:> <hlink|<verbatim|TimeKernel.passage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106>,
  <hlink|<verbatim|Holder.finite_lip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229>,
  <hlink|<verbatim|Holder.estimation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165>,
  <hlink|<verbatim|Holder.leap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24>.

  <strong|Lemma IV.1.f (the Wilson transfer matrix).> Fix
  <math|\<beta\>\<geqslant\>0>, an axis <math|a> and
  <math|\<Lambda\><rsub|N,p>>. The one-step kernel <math|K<rsub|\<beta\>>> on
  slice configurations, with the links in direction <math|a> integrated out
  and half of each slice action assigned to either side, is continuous and
  positive semidefinite. With <math|M=L<rsub|p>/a<rsub|N>>,
  <math|<math-up|Tr><space|0.17em>K<rsub|\<beta\>><rsup|M>=Z> is the
  partition function. Every continuous observable local to a slab of width
  <math|1\<leqslant\>w\<less\>M> lattice steps has a slab representation,
  whose weighted integration gives a continuous kernel <math|B>. Products of
  such observables, all of width <math|w> and separated by gaps <math|Y>,
  satisfy

  <\equation*>
    <around*|\<langle\>|<big|prod><rsub|k>F<rsub|k>|\<rangle\>><rsub|\<beta\>>=<frac|<math-up|Tr><big|prod><rsub|k>B<rsub|k>*K<rsub|\<beta\>><rsup|Y<rsub|k>>|Z>,<space|2em>n*w+<big|sum><rsub|k>Y<rsub|k>=M.
  </equation*>

  If <math|M=2*q*w> with <math|q\<geqslant\>1>, the normalized column bounds
  <math|<around*|(|<math-up|Tr><around|(|B<rsub|k><rsup|\<ast\>>*B<rsub|k>|)><rsup|q>/Z|)><rsup|1/<around|(|2*q|)>>\<leqslant\>c<rsub|k>>
  therefore give the difference bound <math|<around|(|<big|prod><rsub|k>c<rsub|k>|)>*\<ell\>/r>
  under the gap and shift hypotheses of Lemma IV.1.e.

  <em|Proof sketch.> Fill the complement of the slab with a fixed
  configuration to express the observable as a function of its slab links.
  Integrate the interior links with the Wilson weights. Fubini's theorem
  identifies the product with the cyclic kernel integral. Apply Lemma IV.1.e
  and divide by <math|Z\<gtr\>0>.

  <em|Lean:> <hlink|<verbatim|Slice.step_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Positive.lean#L81-L91>,
  <hlink|<verbatim|Time.partition_seen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L34-L38>,
  <hlink|<verbatim|Time.powering>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Calendar.lean#L72-L102>,
  <hlink|<verbatim|Time.selects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Resident.lean#L74-L87>,
  <hlink|<verbatim|Time.organized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Slice/Ordered.lean#L68-L115>.

  <strong|Lemma IV.1.g (chessboard bound for the column norm).> Assume (H1),
  <math|m\<leqslant\>N> and <math|N\<geqslant\><math-up|ref><around|(|d<rsub|v>|)>>
  for a label <math|v> of degree <math|d<rsub|v>>. Put
  <math|d=a<rsub|m>/a<rsub|N>>. Suppose <math|F=I<rsub|N,p><around|(|v,x|)>>
  and <math|J=I<rsub|N,p><around|(|\<theta\><rsub|a>*v,x|)>> are interior to
  the base cell of <math|\<cal-T\><rsub|m><around|(|x|)>> with roots
  <math|\<leqslant\>c>. Then <math|F> has a slab representation of width
  <math|2*d> lattice steps. Its kernel <math|B> and the kernel of <math|J>
  are adjoints. Writing <math|L<rsub|p>/a<rsub|N>=4*q*d>, with
  <math|q\<geqslant\>1>, and letting <math|Z> be the partition function, one
  has

  <\equation*>
    <around*|(|<frac|<math-up|Tr><around|(|B<rsup|\<ast\>>*B|)><rsup|q>|Z>|)><rsup|1/<around|(|2*q|)>>\<leqslant\>c.
  </equation*>

  <em|Proof sketch.> The observable <math|J> equals
  <math|<wide|F\<circ\>\<Theta\>|\<bar\>>> for the site reflection through
  <math|x<rsup|a>>. Reversing the slab gives the adjoint kernel. The column
  consists of <math|2*q> alternating copies of <math|J> and <math|F>, placed
  in every other cell of the row of <math|\<cal-T\><rsub|m><around|(|x|)>> in
  direction <math|a>. Apply the chessboard estimate with <math|1> in all
  other cells and take the <math|1/<around|(|2*q|)>>-th power.

  <em|Lean:> <hlink|<verbatim|Tiling.enough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Present.lean#L76-L111>,
  <hlink|<verbatim|Difference.reading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L51-L87>,
  <hlink|<verbatim|Difference.stars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L37-L49>.

  <strong|Lemma IV.1.h (Lipschitz bound in one coordinate).> Assume (H1),
  <math|m\<leqslant\>N> and <math|N\<geqslant\>max<rsub|i><math-up|ref><around|(|d<rsub|i>|)>>.
  Let <math|n\<geqslant\>2> lattice points have pairwise cyclic physical
  <math|a>-gaps <math|\<gtr\>2*a<rsub|m>+2*\<rho\>>, with
  <math|\<rho\>\<gtr\>0>. Assume the centered interior conditions and let
  <math|c<rsub|i>> bound the roots of <math|I<around|(|v<rsub|i>,x<rsub|i>|)>>
  and <math|I<around|(|\<theta\><rsub|a>*v<rsub|i>,x<rsub|i>|)>> on
  <math|\<cal-T\><rsub|m><around|(|x<rsub|i>|)>>. Moving one point by
  <math|h\<in\>a<rsub|N>*\<bbb-N\>>, <math|0\<leqslant\>h\<leqslant\>\<rho\>>,
  in direction <math|+e<rsub|a>> changes <math|\<cal-C\><rsub|N,p><around|(|v;x|)>>
  by at most <math|<around|(|<big|prod><rsub|i>c<rsub|i>|)>*<space|0.17em>h/\<rho\>>.

  <em|Proof sketch.> Put <math|d=a<rsub|m>/a<rsub|N>> and reorder the points
  cyclically in the <math|a>-direction (permutation symmetry). Represent each
  observable by a brick of width <math|2*d>; the gaps are then
  <math|\<gtr\>2*\<rho\>/a<rsub|N>> in lattice units. Combine Lemmas IV.1.f
  and IV.1.g.

  <em|Lean:> <hlink|<verbatim|Difference.primitive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L90-L145>,
  <hlink|<verbatim|Difference.chrono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Difference.lean#L24-L35>.

  <strong|Lemma IV.1.i (equicontinuity).> Under (H1)\U(H2), for every arity
  <math|n>:

  <\itemize-minus>
    <item><strong|(Q1)> for every <math|p>, compact
    <math|K\<subset\><math-up|Gen><rsup|<around|(|p|)>><rsub|n>>, label list
    <math|v> and <math|\<epsilon\>\<gtr\>0>, there is
    <math|\<delta\>\<gtr\>0> such that, for all large <math|j>, the lifted
    lattice correlations at any <math|x,y\<in\>K> with
    <math|<around|\||x-y|\|>\<less\>\<delta\>> differ by less than
    <math|\<epsilon\>>;

    <item><strong|(Q2)> for every <math|\<epsilon\>\<gtr\>0>, the same
    assertion holds for every compact <math|K\<subset\><math-up|Gen><rsub|n>>,
    eventually along ordered tails, with one <math|\<delta\>> independent of
    the volume.
  </itemize-minus>

  Quantitatively, let <math|R\<gtr\>0> bound below all cyclic coordinate gaps
  on a closed neighbourhood of <math|K>, and let <math|A> bound the centered
  roots of the <math|v<rsub|i>> and all <math|\<theta\><rsub|a>*v<rsub|i>> at
  a scale <math|a<rsub|m>\<less\>R/4>. Then
  <math|<around|\||\<Delta\>*\<cal-C\>|\|>\<leqslant\>16*n*A<rsup|n>*<around|\||x-y|\|>/R>
  for <math|<around|\||x-y|\|>> sufficiently small.

  <em|Proof sketch.> Telescope through at most <math|4*n> coordinate moves
  inside the neighbourhood and apply Lemma IV.1.h with <math|\<rho\>=R/4>.
  For a negative move, interchange its endpoints. For <math|n=1> use
  translation invariance; <math|n=0> is constant.

  <em|Lean:> <hlink|<verbatim|Difference.completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L181-L214>
  (conclusion <hlink|<verbatim|TransferLip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L26-L30>),
  <hlink|<verbatim|comparable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L115-L163>,
  <hlink|<verbatim|stepTotal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103>,
  <hlink|<verbatim|permits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L51-L64>,
  <hlink|<verbatim|Gaps.all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L82-L93>,
  <hlink|<verbatim|Gaps.allGrows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Gaps.lean#L119-L127>.

  <subsection|4.4 Compactness and ordered
  limits><label|44-compactness-and-ordered-limits>

  <strong|Lemma IV.1.j (Arzelà\UAscoli for countably many families).> Let
  <math|<around|(|Y<rsub|i>|)>> be a countable family of locally compact
  separable metric spaces, <math|U<rsub|i>\<subset\>Y<rsub|i>> open, and
  <math|T<rsup|<around|(|j|)>><rsub|i>:Y<rsub|i>\<to\>\<bbb-C\>>. Assume that
  <math|T<rsup|<around|(|j|)>><rsub|i><around|(|y|)>> is eventually bounded
  for each <math|y\<in\>U<rsub|i>>, and that the family is eventually
  equicontinuous on compact subsets of <math|U<rsub|i>>. Then one strictly
  increasing sequence <math|<around|(|t<rsub|j>|)>> makes every
  <math|T<rsup|<around|(|t<rsub|j>|)>><rsub|i>> converge locally uniformly on
  <math|U<rsub|i>> to a continuous limit.

  <em|Proof sketch.> Take countable dense sets and replace the finitely many
  out-of-bound values at each dense point by a point in its bounding ball. By
  Tychonoff, the countable product of closed balls is sequentially compact,
  which gives a single subsequence converging at all dense points.
  Equicontinuity upgrades this to locally uniform convergence.

  <em|Lean:> <hlink|<verbatim|localAscoli>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L100-L114>,
  <hlink|<verbatim|simultaneous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Simultaneous.lean#L21-L32>,
  <hlink|<verbatim|oscillation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L20-L21>.

  <strong|Lemma IV.1.k (two-stage extraction).> The bound (B) and
  equicontinuity (Q) along <math|f> imply IV.1.1 (a)\U(b) along a refinement.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Indexing.> Index by <math|<around|(|p,n,<text|degrees>,<text|basis
    vectors>|)>>, a countable set. Limits are taken on basis labels and
    extended multilinearly.

    <item><em|Spacing.> Use the step extensions of the lattice correlators on
    <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>>; the extension moves
    points by at most <math|4*n*a<rsub|N>>. Equicontinuity comes from (Q1)
    and the bound from (B1). Lemma IV.1.j gives one subsequence of spacings
    for all <math|p>.

    <item><em|Volume.> Use the functions <math|P<rsub|p<rsub|k>>> on
    <math|<math-up|Gen><rsub|n>>. Equicontinuity and the bound come from (Q2)
    and (B2) passed to <math|j\<to\>\<infty\>>; this uses that a compact
    subset of <math|<math-up|Gen><rsub|n>> lies in
    <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>> for large <math|p>.
    Apply Lemma IV.1.j again.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|first_surface>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L166-L184>,
  <hlink|<verbatim|setMeshes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L78-L105>,
  <hlink|<verbatim|each_oscillates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L51-L68>,
  <hlink|<verbatim|volume_oscillates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L116-L138>,
  <hlink|<verbatim|fitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Stencil.lean#L69-L70>.

  <strong|Lemma IV.1.l (ordered smeared limits and local integrability).> The
  bound (B) together with IV.1.1 (a)\U(b) implies IV.1.1 (c)\U(d).

  <em|Proof sketch.> Dominated convergence, applied twice.

  <\itemize-minus>
    <item><em|Fixed volume.> At an admissible <math|p>, the lattice sum is
    the integral of a step function. It converges almost everywhere (on
    <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>>) to <math|t*P<rsub|p>>
    and is dominated by <math|sup <around|\||t|\|>\<cdot\>D> on the box,
    using (B1) on <math|<math-up|supp>t\<subset\><math-up|Conf><rsup|<around|(|p|)>><rsub|n>>.

    <item><em|Volume limit.> <math|<around|\||P<rsub|p<rsub|k>>|\|>\<leqslant\>D>
    on <math|<math-up|supp>t\<cap\><math-up|Gen><rsub|n>> for large <math|k>,
    by (B2) in the limit <math|j\<to\>\<infty\>>, and
    <math|P<rsub|p<rsub|k>>\<to\>S> on the full-measure set
    <math|<math-up|Gen><rsub|n>>.
  </itemize-minus>

  IV.1.1 is Lemmas IV.1.d, IV.1.i, IV.1.k and IV.1.l combined.

  <em|Lean:> <hlink|<verbatim|Order.poses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L155-L158>,
  <hlink|<verbatim|Order.ordinary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L115-L153>,
  <hlink|<verbatim|Order.intraperiod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L66-L95>,
  <hlink|<verbatim|Order.ring_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L98-L113>,
  <hlink|<verbatim|almostGeneric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Ties.lean#L44-L49>;
  <hlink|<verbatim|crops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Held.lean#L136-L137>.

  <subsection|4.5 Label derivatives><label|45-label-derivatives>

  <strong|Lemma IV.1.m (one-slot difference quotients; D03).> Assume (H1),
  IV.1.1 (c)\U(d) and (B) along <math|f>. For every arity <math|n>, label
  list <math|v>, slot <math|i>, axis <math|a> and
  <math|t\<in\>\<cal-D\><rsub|n>>, put <math|u=v<rsub|i>> and replace
  <math|I<around|(|u,x<rsub|i>|)>> by the forward difference quotient
  <math|a<rsub|N><rsup|-1>*<around|[|I<rsub|N,p><around|(|u,x<rsub|i>+e<rsub|a>|)>-I<rsub|N,p><around|(|u,x<rsub|i>|)>|]>>.
  The resulting smeared lattice correlation converges along ordered tails to
  <math|-<big|int><around|(|\<partial\><rsub|x<rsub|i><rsup|a>>*t|)>*<space|0.17em>S<around|(|v;\<cdot\>|)>>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Summation by parts on the torus, which is exact, moves the
    difference onto the test as a backward difference quotient.

    <item>For <math|p> large and then <math|N> large the shifted test is
    evaluated without wrap-around.

    <item>The backward quotient <math|<around|[|t*<around|(|x-a<rsub|N>*e<rsub|i,a>|)>-t<around|(|x|)>|]>/a<rsub|N>>
    converges uniformly to <math|-\<partial\><rsub|x<rsub|i><rsup|a>>*t>,
    where <math|e<rsub|i,a>> is the coordinate vector for slot <math|i> and
    axis <math|a>. The error is at most <math|L<rsub|p><rsup|4*n>\<cdot\>sup
    <around|\||<text|residual>|\|>\<cdot\>D>, with <math|D> from (B2) on a
    compact neighbourhood of <math|<math-up|supp>t>.

    <item>The main term converges by (c) applied to
    <math|\<partial\><rsub|x<rsub|i><rsup|a>>*t>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.D03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L244-L249>
  (statement <hlink|<verbatim|Bid.D03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L61-L62>),
  <hlink|<verbatim|on_lattice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L71-L77>,
  <hlink|<verbatim|error_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D03.lean#L185-L242>,
  <hlink|<verbatim|heighten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44>.

  <strong|Lemma IV.1.n (chessboard-small observables are invisible; D02).>
  Assume (H1)\U(H2). Let <math|Q<rsub|N,p>> be chessboard-small with rate
  <math|y<around|(|N,p|)>\<to\>0>. For every <math|\<delta\>\<gtr\>0>, arity,
  slot and fixed spectator label list, there is
  <math|A<rsub|\<delta\>>\<geqslant\>0> such that, eventually along ordered
  tails, the correlation with <math|Q> in that slot has modulus at most
  <math|A<rsub|\<delta\>><around|\||y<around|(|N,p|)>|\|>> at every
  configuration separated by <math|\<delta\>> in the periodic physical
  supremum norm. Consequently every smeared lattice correlation with <math|Q>
  in one slot tends to <math|0> along ordered tails.

  <em|Proof sketch.> The first claim is the chessboard argument of Lemma
  IV.1.d with <math|Q> in one cell. For the second, write the smeared sum as
  the integral of a step function supported in a fixed ball and bounded by
  <math|sup <around|\||t|\|>*<space|0.17em>A<rsub|\<delta\>><around|\||y|\|>>.

  <em|Lean:> <hlink|<verbatim|Lease.take>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L57-L124>,
  <hlink|<verbatim|Lease.rents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L20-L22>,
  <hlink|<verbatim|Lease.gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lane/Lease.lean#L54-L55>,
  <hlink|<verbatim|Work.D02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D02.lean#L24-L84>
  (statement <hlink|<verbatim|Bid.D02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L57-L58>).

  <strong|Lemma IV.1.o (bounded labels have subpolynomial cutoff coordinates;
  D01).> Under (H1), every degree-<math|d> label family
  <math|w<around|(|N,p|)>> bounded along ordered tails has subpolynomial
  growth in the sense of Ÿ2, input 3.

  <em|Proof sketch.> The inverse terminal transfer is bounded, up to a fixed
  degree-dependent norm factor, by the product of the column constants up to
  level <math|N>, and their logarithms sum to <math|o<around|(|log
  a<rsub|N><rsup|-1>|)>>.

  <em|Lean:> <hlink|<verbatim|Work.D01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L127-L134>
  (statement <hlink|<verbatim|Bid.D01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L54>),
  <hlink|<verbatim|terminal_ball>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L92-L125>,
  <hlink|<verbatim|columnLogs_le>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D01.lean#L34-L63>.

  <strong|Lemma IV.1.p (spanning; D04).> Assume (H1), (H2), IV.1.1 (c)\U(d),
  and the relay data and dimension count for every <math|d>. Then:

  <\enumerate>
    <item>for each fixed <math|u\<in\><math-up|Label><rsub|d>>, the smeared
    lattice correlations of <math|u-\<pi\><rsub|d><around|(|N,p|)>*u> (in any
    slot, with any spectators and tests) tend to <math|0> along ordered
    tails; together with the dimension count this gives <math|ker
    \<pi\><rsub|d>=<math-up|Null><rsub|d><around|(|S|)>>;

    <item>for <math|d\<leqslant\>e> and <math|u\<in\><math-up|Label><rsub|d>>
    there are degree-<math|e> labels <math|w<around|(|N,p|)>> whose smeared
    correlations converge along ordered tails to those of <math|u> in the
    limit;

    <item>for <math|u\<in\><math-up|Label><rsub|d>> and each axis <math|a>
    there are degree-<math|<around|(|d+1|)>> labels <math|w<around|(|N,p|)>>
    whose smeared correlations converge along ordered tails to
    <math|-<big|int><around|(|\<partial\><rsub|x<rsub|i><rsup|a>>*t|)>*<space|0.17em>S<around|(|v;\<cdot\>|)>>.
  </enumerate>

  In 2 and 3, one family <math|w<around|(|N,p|)>> works for every arity,
  slot, spectator list and test. It may be chosen with subpolynomial growth,
  and the normalized remainders <math|<around|(|w-\<pi\>*w|)>/<around|(|1+<around|\<\|\|\>|\<pi\>*w|\<\|\|\>>|)>>
  also have vanishing smeared limits.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>(1) <math|u-\<pi\><around|(|N,p|)>*u> is bounded and lies in
    <math|ker \<pi\><around|(|N,p|)>>. By Lemma IV.1.o it has subpolynomial
    growth, so <em|mark> applies: it is chessboard-close to an observable
    with exactly vanishing separated correlations. Lemma IV.1.n then shows
    the smeared correlations vanish. The one-slot smear maps converge in
    operator norm, since their domains are finite-dimensional. This allows
    passage to varying labels and gives <math|ker
    \<pi\><rsub|d>\<subset\><math-up|Null><rsub|d><around|(|S|)>>; the
    dimension count gives equality.

    <item>(2)\U(3) <em|Transit>, resp. <em|pace>, gives labels whose
    observables are chessboard-close to the embedded label, resp. to the
    forward difference quotient. Lemma IV.1.n transfers the smeared limits,
    which Lemma IV.1.m computes for the difference quotient.

    <item>For the normalized remainder, dividing <math|w> by
    <math|1+<around|\<\|\|\>|\<pi\>*w|\<\|\|\>>> preserves subpolynomial
    growth, while <math|\<pi\>*w/<around|(|1+<around|\<\|\|\>|\<pi\>*w|\<\|\|\>>|)>>
    is bounded and Lemma IV.1.o applies. Their difference lies in the
    projection kernel, so <em|mark> and Lemma IV.1.n apply.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.D04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D04.lean#L212-L240>
  (statement <hlink|<verbatim|Bid.D04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L65-L67>),
  <hlink|<verbatim|Spans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L55-L60>,
  <hlink|<verbatim|Bin.Upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L24-L26>,
  <hlink|<verbatim|Bin.exactC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L41-L42>.

  <strong|Lemma IV.1.q (fixed derivative labels).> The conclusions of Lemma
  IV.1.p yield the maps <math|\<kappa\>> and <math|\<tau\>> of IV.1.2.

  <em|Proof sketch.> This is a finite-dimensional compactness argument.

  <\itemize-minus>
    <item>Take a cluster point <math|<around|(|c,z|)>> of
    <math|<around*|(|<around|(|1+<around|\<\|\|\>|\<pi\>*w|\<\|\|\>>|)><rsup|-1>,<space|0.17em>\<pi\>*w/<around|(|1+<around|\<\|\|\>|\<pi\>*w|\<\|\|\>>|)>|)>>
    along the ordered-tail filter. Use one refining ultrafilter for this
    finite-dimensional pair; all spectator tests then retain their limits.

    <item>Idempotence and convergence of the projections give
    <math|\<pi\>*z=z>. For every spectator test, the limits give
    <math|<around|\<langle\>|S,z|\<rangle\>>=c\<cdot\><around|(|<text|target>|)>>.

    <item><math|c\<ne\>0>: otherwise <math|z\<in\><math-up|ran>\<pi\>\<cap\>ker
    \<pi\>=<around|{|0|}>> (since <math|ker \<pi\>=<math-up|Null>>),
    contradicting <math|<around|\<\|\|\>|z|\<\|\|\>>+c=1>. So <math|z/c> is a
    fixed label with the target kernels.

    <item>Define <math|\<kappa\>> and <math|\<tau\>> this way on a basis and
    extend linearly.
  </itemize-minus>

  The identity for <math|\<tau\>> is the distributional relation
  <math|\<partial\><rsub|x<rsub|i><rsup|a>>*S<rsub|v>=S<rsub|v<rsub|i\<to\>\<tau\><rsub|a>*v<rsub|i>>>>.

  <em|Lean:> <hlink|<verbatim|lifts_model>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L71-L87>,
  <hlink|<verbatim|Dash.brace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Limits.lean#L69-L111>,
  <hlink|<verbatim|Wakes.through_ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L89-L96>,
  <hlink|<verbatim|Dash.monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L108>.

  <subsection|4.6 Smoothness><label|46-smoothness>

  <strong|Lemma IV.1.r (distributional regularity).> Let <math|K<rsub|w>>,
  with <math|w> ranging over label lists of arity <math|n>, be locally
  integrable on <math|<math-up|Conf><rsub|n>> and continuous on
  <math|<math-up|Gen><rsub|n>>. Assume that for every <math|w>, slot <math|i>
  and axis <math|a> there is <math|w<rprime|'>> with
  <math|\<partial\><rsub|x<rsub|i><rsup|a>>*K<rsub|w>=K<rsub|w<rprime|'>>> in
  <math|\<cal-D\><rprime|'><around|(|<math-up|Conf><rsub|n>|)>>. Then every
  <math|K<rsub|w>> agrees almost everywhere on <math|<math-up|Conf><rsub|n>>,
  and everywhere on <math|<math-up|Gen><rsub|n>>, with a function in
  <math|C<rsup|\<infty\>><around|(|<math-up|Conf><rsub|n>|)>>.

  <em|Proof sketch.>

  <\itemize-minus>
    <item>For <math|\<varphi\>\<in\>\<cal-D\><rsub|n>>:
    <math|\<xi\><rsub|i,a><space|0.17em><wide|\<varphi\>*K<rsub|w>|^><around|(|\<xi\>|)>>
    is a constant times <math|<wide|\<varphi\>*K<rsub|w<rprime|'>>|^>+<wide|<around|(|\<partial\><rsub|i,a>*\<varphi\>|)>*K<rsub|w>|^>>.

    <item>By induction on <math|m>, <math|<around|\||\<xi\><rsub|i,a>|\|><rsup|m><around|\||<wide|\<varphi\>*K<rsub|w>|^>|\|>>
    is bounded for all <math|m> and all coordinates. So
    <math|<wide|\<varphi\>*K<rsub|w>|^>> decays rapidly, and
    <math|\<varphi\>*K<rsub|w>> equals a smooth function almost everywhere.

    <item>Take <math|\<varphi\>=1> near an arbitrary point of
    <math|<math-up|Conf><rsub|n>>, generic or not.

    <item>The local smooth representatives agree on
    <math|<math-up|Gen><rsub|n>>, which has full measure, hence on overlaps;
    glue them. Multilinearity in the labels follows from the same density
    argument.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Dash.awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L26-L58>,
  <hlink|<verbatim|aggregate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L91-L113>,
  <hlink|<verbatim|repair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Regular.lean#L62-L71>,
  <hlink|<verbatim|arises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L98-L115>,
  <hlink|<verbatim|Hidden>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L94-L95>,
  <hlink|<verbatim|currents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Twist.lean#L58-L59>,
  <hlink|<verbatim|closeBy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Slew.lean#L17-L18>.

  <strong|Lemma IV.1.s (the smooth version is a raw limit with a derivative
  plan).> Let <math|T> be given by Lemma IV.1.r applied to <math|S> and the
  maps of IV.1.2. Then <math|T> satisfies the conclusions of IV.1.3.

  <em|Proof sketch.>

  <\itemize-minus>
    <item><math|T> satisfies IV.1.1 (a)\U(d) with the same <math|P<rsub|p>>,
    because the volume limit only sees <math|<math-up|Gen><rsub|n>>, and (c)
    follows from Lemma IV.1.l;

    <item>(E1) holds by Lemma IV.1.t;

    <item>the kernel identities pass from <math|S> to <math|T>, since the
    smeared values are the same;

    <item><math|\<kappa\>> and <math|\<tau\>> preserve null labels: their
    smeared kernels are respectively the original kernel and its
    distributional derivative. Smoothness turns these into pointwise
    identities, so the maps descend to the quotients <math|F<rsub|d>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Org.Arrives.serves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L101-L109>,
  <hlink|<verbatim|RawLimits.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L194-L202>,
  <hlink|<verbatim|Table.Field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>.

  <subsection|4.7 Euclidean axioms, bounds and
  assembly><label|47-euclidean-axioms-bounds-and-assembly>

  <strong|Lemma IV.1.t (symmetries and basic identities).> If <math|T> is
  smooth on <math|<math-up|Conf><rsub|n>> and is a point limit (IV.1.1
  (a)\U(b)) along <math|f>, and (H1) holds, then <math|T> satisfies
  (E1)\U(E3).

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Grid convergence.> For a point <math|x> of the level-<math|k>
    grid <math|a<rsub|k>*\<bbb-Z\><rsup|4*n>> with
    <math|x\<in\><math-up|Gen><rsub|n>>, use its reduction in
    <math|\<Lambda\><rsub|N,p>> for <math|N\<geqslant\>k> and sufficiently
    large <math|p>. The lattice correlations there converge to
    <math|T<around|(|v;x|)>> along ordered tails.

    <item><em|Lattice identities.> Permutation symmetry,
    <math|H<rsub|4>>-covariance about the origin, translations by grid
    vectors, reality and the unit label hold exactly on the lattice, by (H1)
    and the invariance of the Wilson measure.

    <item><em|Extension.> Equality on the dense set of generic grid points
    extends to <math|<math-up|Gen><rsub|n>> by continuity, and then to
    <math|<math-up|Conf><rsub|n>>, since both sides are continuous there and
    <math|<math-up|Gen><rsub|n>> has full measure. Real translations are
    approximated by grid translations.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Order.limits_basic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L151-L193>,
  <hlink|<verbatim|Order.spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L124-L149>,
  <hlink|<verbatim|Order.homogeneous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L83-L112>,
  <hlink|<verbatim|Order.inPatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L39-L44>,
  <hlink|<verbatim|Order.equal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L48-L51>.

  <strong|Lemma IV.1.u (reflection positivity of the limit).> If <math|T> is
  smooth, symmetric and an ordered limit along <math|f>, and (H1) holds, then
  (E5) holds; (E5) implies (E4).

  <em|Proof sketch.>

  <\itemize-minus>
    <item><em|Lattice side.> For a test supported in
    <math|<around|{|x<rsup|a>\<gtr\>0|}>>, take <math|p> large enough that it
    is admissible. The smeared lattice observable
    <math|a<rsub|N><rsup|4*n>*<big|sum><rsub|r>t<around|(|<wide|r|^>|)>*<big|prod>I<around|(|v<rsub|k>,r<rsub|k>|)>>
    is then, for <math|N> large, interior to the half-torus
    <math|0\<less\>x<rsup|a>\<less\>L<rsub|p>/2>. Its reflection through the
    site plane <math|x<rsup|a>=0> carries labels <math|\<theta\><rsub|a>>,
    because <math|I<around|(|\<theta\><rsub|a>*v,\<Theta\>*x|)>=<wide|I<around|(|v,x|)>\<circ\>\<Theta\>|\<bar\>>>.
    The lattice Gram matrix of such observables is the smeared lattice
    correlation of <math|<wide|t<rsub|i>|\<bar\>>\<otimes\>t<rsub|j>> pulled
    back by reflection of the first configuration. Symmetry permits reversal
    of its entries. The resulting joint test has compact support in
    <math|<math-up|Conf><rsub|n<rsub|i>+n<rsub|j>>>, since the two
    configurations lie strictly on opposite sides of the plane. Lemma IV.1.a
    makes the lattice Gram matrix positive semidefinite.

    <item><em|Limit.> Smoothness gives absolute integrability on the compact
    joint supports. Pass to the ordered limit using (c).

    <item><em|(E4) from (E5).> Use bump functions concentrating at the
    points, together with continuity of <math|T>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Order.realPositive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L46-L60>,
  <hlink|<verbatim|Banks.at_cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Pairs.lean#L104-L125>,
  <hlink|<verbatim|Banks.kept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L94-L102>,
  <hlink|<verbatim|Banks.plane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Banks.lean#L19>,
  <hlink|<verbatim|Pairing.at_point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L126-L131>,
  <hlink|<verbatim|Pairing.nearGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/RPPeak.lean#L16-L33>.

  <strong|Lemma IV.1.v (the polynomial bound).> Under the hypotheses of
  IV.1.5, its stated exponent <math|4*n*<around|(|1+max<rsub|i> d<rsub|i>|)>>
  is valid.

  <em|Proof sketch.> Set <math|D=1+max<rsub|i> d<rsub|i>>. The centered power
  budgets for all transformed labels can be bounded by
  <math|B*a<rsub|k><rsup|-D>> for every <math|k\<geqslant\>M>, with fixed
  <math|B\<geqslant\>0> and <math|M>.

  <\itemize-minus>
    <item>Choose the first <math|m\<geqslant\>M> with
    <math|a<rsub|m>\<less\>r/2>, and the first <math|k\<geqslant\>M> with
    <math|a<rsub|k>\<less\>a<rsub|m>/<around|[|6*<around|(|n+1|)>|]>>. The
    scale inequality, including the possible endpoint <math|m=M> or
    <math|k=M>, gives <math|a<rsub|m>\<geqslant\>c*<around|(|r/2|)><rsup|2>>
    and then <math|a<rsub|k>\<geqslant\>c<rprime|'>*r<rsup|4>>.

    <item>Lemma IV.1.d bounds the lattice correlations by
    <math|<around|(|B*a<rsub|k><rsup|-D>|)><rsup|n>>. Pass first to the
    spacing limit and then to the volume limit at generic points with
    separation <math|\<gtr\>r/2>.

    <item>Continuity and density extend the bound to every <math|r>-separated
    configuration. Since <math|a<rsub|k>\<geqslant\>c<rprime|'>*r<rsup|4>>,
    the bound is at most <math|C*r<rsup|-4*D*n>>, with <math|C> independent
    of positions and <math|r>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Work.D05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L160-L180>,
  <hlink|<verbatim|image_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L43-L68>,
  <hlink|<verbatim|scales>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L132-L158>,
  <hlink|<verbatim|separated_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D05.lean#L95-L128>.

  <strong|Lemma IV.1.w (orientation).> Under the hypotheses of IV.1.6, its
  four symmetry identities hold on the quotient spaces <math|F<rsub|d>>.

  <em|Proof sketch.> A class in <math|F<rsub|d>> is determined by its kernels
  against all spectators. Compare the kernels of both sides using (E2) and
  the chain rule for <math|x\<mapsto\>s*x> and for complex conjugation.

  <em|Lean:> <hlink|<verbatim|Work.D06.compat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/D06.lean#L98-L135>.

  <strong|Lemma IV.1.x (assembly).> If <math|T> is an ordered limit and a
  point limit along <math|f>, (H1) holds, <math|T> is smooth and (E7) holds,
  then <math|T> satisfies the hierarchy (E1)\U(E7).

  <em|Proof sketch.> Lemmas IV.1.t and IV.1.u give (E1)\U(E5); (E6)\U(E7) are
  assumed. When (H2) and the derivative plan of IV.1.3 are also available,
  IV.1.5 and B10 supply (E7). B10 inducts on the derivative order: each
  coordinate derivative is a kernel with one raised label, and the operator
  norm is bounded by a finite sum of coordinate norms. The base case is
  IV.1.5. On the main path, compactness of the bounded projection matrices
  gives a common refinement before forming the bundle of Remark 1.

  <em|Lean:> <hlink|<verbatim|Order.assembles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Harvest.lean#L62-L65>,
  <hlink|<verbatim|Org.Cleaner.stay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L113-L114>,
  <hlink|<verbatim|Bid.healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L91-L97>,
  <hlink|<verbatim|Work.B10.capped_tags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B10.lean#L72-L90>,
  <hlink|<verbatim|include_projections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L86-L93>,
  <hlink|<verbatim|Projected.ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L178-L181>,
  <hlink|<verbatim|Next.Extract.Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The main estimates are the transfer-kernel Lipschitz bound and the control
  of uncentered chessboard roots. Complex interpolation and Cauchy's estimate
  turn reflection positivity into equicontinuity without prior derivative
  bounds. Translation log-convexity allows the centered budgets to control
  observables at arbitrary interior positions.

  The regularity argument depends on more than compactness: the relay
  estimates supply degree-raised approximants to differences, and the rank
  comparison identifies precisely which labels vanish. The normalized
  remainder estimate in Lemma IV.1.p is needed to obtain fixed derivative
  labels. Fourier regularity, passage of symmetries by density, and
  positivity of limiting Gram matrices then use standard arguments.

  Three distinctions matter:

  <\itemize-minus>
    <item>Equicontinuity is proved on <math|<math-up|Gen><rsub|n>>, whereas
    bounds and the smooth representative extend to
    <math|<math-up|Conf><rsub|n>>.

    <item>The maps <math|\<tau\><rsub|d,a>> are chosen by compactness. Their
    kernel identities determine them only modulo
    <math|<math-up|Null><rsub|d+1>>; the induced maps on <math|F<rsub|d>> are
    intrinsic.

    <item>The hierarchy here has signed coordinate symmetries and reflection
    positivity at coordinate planes. Translation invariance moves those
    planes. Continuous rotation symmetry is a later result.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|Wilson family;
  spacing, period, coupling>|<cell|<hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>
  (<verbatim|C.S.a>, <verbatim|C.S.period>,
  <verbatim|C.beta>)>|<cell|<math|C>; <math|a<rsub|N>>, <math|L<rsub|p>>,
  <math|\<beta\><rsub|N,p>>>>|<row|<cell|specification of the
  family>|<cell|<hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>>|<cell|(H1)>>|<row|<cell|label,
  register of labels>|<cell|<hlink|<verbatim|Register.Token>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88>,
  <hlink|<verbatim|Family.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L20>>|<cell|<math|v\<in\><math-up|Label><rsub|d>>>>|<row|<cell|unit
  label; reflected label>|<cell|<hlink|<verbatim|Register.one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L90>,
  <hlink|<verbatim|Register.reflectedToken>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L93>>|<cell|<math|1<rsub|d>>;
  <math|\<theta\><rsub|a>*v=\<rho\><rsub|d><around|(|s<rsub|a>|)>*<wide|v|\<bar\>>>>>|<row|<cell|renormalized
  lattice observable>|<cell|<hlink|<verbatim|Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>>|<cell|<math|I<rsub|N,p><around|(|v,x|)>>>>|<row|<cell|lattice
  correlation; smeared>|<cell|<hlink|<verbatim|Family.numeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L68-L69>,
  <hlink|<verbatim|Order.smears>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L26-L27>>|<cell|<math|\<cal-C\><rsub|N,p><around|(|v;x|)>>,
  <math|\<cal-C\><rsub|N,p><around|(|v;t|)>>>>|<row|<cell|configuration
  sets>|<cell|<hlink|<verbatim|conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>,
  <hlink|<verbatim|generic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L66>,
  <hlink|<verbatim|NoHit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26>,
  <hlink|<verbatim|Cyclic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L28-L29>>|<cell|<math|<math-up|Conf><rsub|n>>,
  <math|<math-up|Gen><rsub|n>>, <math|<math-up|Conf><rsup|<around|(|p|)>><rsub|n>>,
  <math|<math-up|Gen><rsup|<around|(|p|)>><rsub|n>>>>|<row|<cell|test
  functions; admissible at <math|p>>|<cell|<hlink|<verbatim|Test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18>,
  <hlink|<verbatim|suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L31>>|<cell|<math|\<cal-D\><rsub|n>>;
  <math|<math-up|supp>t\<subset\><around|(|-L<rsub|p>/2,L<rsub|p>/2|)><rsup|4*n>>>>|<row|<cell|extraction;
  refinement; ordered sense>|<cell|<hlink|<verbatim|Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34-L36>,
  <hlink|<verbatim|refine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40>,
  <hlink|<verbatim|late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L47>,
  <hlink|<verbatim|fuse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L27>>|<cell|<math|f=<around|(|<around|(|N<rsub|j>|)>,<around|(|p<rsub|k>|)>|)>>,
  <math|f\<circ\>g>, "<math|k> large, then <math|j>
  large">>|<row|<cell|table>|<cell|<hlink|<verbatim|Table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L55-L56>>|<cell|<math|S<around|(|v;x|)>>,
  <math|T<around|(|v;x|)>>>>|<row|<cell|raw
  limits>|<cell|<hlink|<verbatim|RawLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L156-L160>,
  <hlink|<verbatim|PointLimits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L68>>|<cell|IV.1.1
  (a)\U(c); <math|P<rsub|p>>>>|<row|<cell|tiling, copy, chessboard
  root>|<cell|<hlink|<verbatim|Tiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L19-L25>,
  <hlink|<verbatim|copy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L221-L224>,
  <hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>>|<cell|<math|\<cal-T\>>,
  <math|<math-up|copy><rsub|c>>, <math|<around|\||F|\|><rsub|\<cal-T\>>>>>|<row|<cell|centered
  tiling at <math|x>, cells of side <math|a<rsub|m>>>|<cell|<hlink|<verbatim|Cells.center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40>>|<cell|<math|\<cal-T\><rsub|m><around|(|x|)>>>>|<row|<cell|interior
  function of a cell>|<cell|<hlink|<verbatim|Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109-L113>>|<cell|<math|F\<in\>\<cal-A\><around|(|<text|cell>|)>>>>|<row|<cell|reflection
  positivity and chessboard inequality>|<cell|<hlink|<verbatim|Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>>|<cell|(RP),
  (CB)>>|<row|<cell|budgets>|<cell|<hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>,
  <hlink|<verbatim|CenterPort>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L30-L34>>|<cell|input
  2; (H2)>>|<row|<cell|uniform bound; equicontinuity>|<cell|<hlink|<verbatim|Bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Integrate.lean#L25-L30>,
  <hlink|<verbatim|TransferLip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Lipschitz.lean#L26-L30>>|<cell|(B1)\U(B2),
  (E1)\U(E2)>>|<row|<cell|forward difference
  quotient>|<cell|<hlink|<verbatim|heighten>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L43-L44>>|<cell|<math|a<rsub|N><rsup|-1>[I<around|(|v,\<cdot\>+e<rsub|a>|)>-I(v,\<cdot\><around|)||]>>>>|<row|<cell|chessboard-small;
  subpolynomial growth>|<cell|<hlink|<verbatim|close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25>,
  <hlink|<verbatim|dollar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L18-L19>>|<cell|\V>>|<row|<cell|projections;
  relay data>|<cell|<hlink|<verbatim|Dash.Bin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L119>,
  <hlink|<verbatim|RelayBin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L46-L52>>|<cell|<math|\<pi\><rsub|d><around|(|N,p|)>\<to\>\<pi\><rsub|d>>;
  pace, transit, mark>>|<row|<cell|null labels; label
  quotient>|<cell|<hlink|<verbatim|Dash.monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Scope.lean#L108>,
  <hlink|<verbatim|Table.null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L34>,
  <hlink|<verbatim|Table.Field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>>|<cell|<math|<math-up|Null><rsub|d>>,
  <math|F<rsub|d>=<math-up|Label><rsub|d>/<math-up|Null><rsub|d>>>>|<row|<cell|derivative
  labels; derivative plan>|<cell|<hlink|<verbatim|MonitorOps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Dash/Inert.lean#L63-L65>,
  <hlink|<verbatim|DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22>>|<cell|<math|\<kappa\><rsub|d,e>>,
  <math|\<tau\><rsub|d,a>>; <math|<math-up|rise><rsub|d,e>>,
  <math|\<partial\><rsub|d,a>>>>|<row|<cell|Euclidean
  hierarchy>|<cell|<hlink|<verbatim|Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148>>|<cell|(E1)\U(E7)>>|<row|<cell|zeroth-order
  polynomial bound>|<cell|<hlink|<verbatim|Bid.OneCap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L97-L98>>|<cell|IV.1.5>>|<row|<cell|bundle
  handed downstream>|<cell|<hlink|<verbatim|Next.Extract.Base>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L42-L51>>|<cell|\V>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Ultraviolet relay and rank estimates.> The interfaces in
    <hlink|<verbatim|MergeProof.Scotia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Eureka.lean#L16-L20>
    and <hlink|<verbatim|savings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Powder.lean#L19-L47>
    were checked, together with their use in the dimension argument. The
    upstream proofs of the matching estimates and interacting rank comparison
    in III.10\UIII.11 were not audited here. In particular, the dimension
    inequality is a separate input; it does not follow from the centered root
    budgets.

    <item><strong|Volume-uniform budget.> The supplier is
    <hlink|<verbatim|gardena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40>
    (III.11). Its proof reduces to earlier estimates on the same family, but
    their relation to the volume-uniform bounds assigned to III.12 was not
    traced in full.

    <item><strong|Fixed-volume ultraviolet limit.> The full-spacing upgrade
    required by <hlink|<verbatim|wilsonLimit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L44-L56>
    is located and explained in Remark 2. The upstream construction of the
    full fixed-volume kernels used by that upgrade was not audited here.

    <item><strong|Alternative assembly.> <hlink|<verbatim|Next.Extract.finish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L79-L92>
    and <hlink|<verbatim|common>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean#L111-L122>
    give another conditional route to the same bundle. They require relay
    costs and detector estimates in addition to the centered budgets. Their
    hypotheses were checked; they are not additional proofs of the
    ultraviolet inputs.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.16 Analytic toolkit
  (notes)|III-16.tm>|<hlink|Part IV|../units.tm#part-iv-infinite-volume><ym-nav-sep><hlink|Unit
  outline|../units/IV-1.tm>|<hlink|V.1 Decomposition of the limit into phases
  (notes) \<rightarrow\>|V-1.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|IV.1. Infinite volume: extraction of a subsequence
    and the Euclidean axioms of the limit \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|6>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|9>>
    <associate|41-reflection-positivity-and-chessboard-estimates|<tuple|4.1|9>>
    <associate|42-boundedness-at-separated-points|<tuple|4.2|11>>
    <associate|43-equicontinuity|<tuple|4.3|11>>
    <associate|44-compactness-and-ordered-limits|<tuple|4.4|13>>
    <associate|45-label-derivatives|<tuple|4.5|14>>
    <associate|46-smoothness|<tuple|4.6|16>>
    <associate|47-euclidean-axioms-bounds-and-assembly|<tuple|4.7|17>>
    <associate|5-where-the-difficulty-lies|<tuple|5|18>>
    <associate|6-notation|<tuple|6|19>>
    <associate|7-what-remains-unexplained|<tuple|7|20>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.6|16>>
    <associate|auto-11|<tuple|4.7|17>>
    <associate|auto-12|<tuple|5|18>>
    <associate|auto-13|<tuple|6|19>>
    <associate|auto-14|<tuple|7|20>>
    <associate|auto-2|<tuple|2|6>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|9>>
    <associate|auto-5|<tuple|4.1|9>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|11>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|14>>
    <associate|iv1-infinite-volume-extraction-of-a-subsequence-and-the-euclidean-axioms-of-the-limit--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Reflection positivity and chessboard
      estimates <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Boundedness at separated points
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Equicontinuity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Compactness and ordered limits
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Label derivatives
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Smoothness
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Euclidean axioms, bounds and assembly
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>