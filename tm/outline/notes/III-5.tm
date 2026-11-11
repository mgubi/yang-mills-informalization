<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law (notes)|III-4.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-5.tm>|<hlink|III.6 The stationary branch: background
  field of the effective action (notes) \<rightarrow\>|III-6.tm>>

  <ym-title|III.5. Cluster expansion of the polymer gas \V detailed
  notes><label|iii5-cluster-expansion-of-the-polymer-gas--detailed-notes>

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

    <with|par-left|1tab|4.1 Algebra of the finite gas
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Tree-graph bound
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Sums over trees
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Cluster sums and the logarithm
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Deleted regions and forced polymers
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Packets and the large-coupling numerics
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 The logarithm by deletion
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 The sector decomposition
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 Matrices <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
    The full account of unit III.5: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-5.tm>.
  </quotation>

  <hlink|Unit page|../units/III-5.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> work packages <hlink|<verbatim|YM/Push/ABSOLUTE_SUMS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS>
  (3,624 lines), <hlink|<verbatim|YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS>
  (3,589), <hlink|<verbatim|YM/Push/SECTOR_MEASURE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE>
  (1,153), <hlink|<verbatim|YM/SectorNext/VACUUM_NORMALIZATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION>
  (935), <hlink|<verbatim|YM/Progress/STATIONARY_SCENES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES>
  (445). <strong|Size:> 9,746 lines in 1,097 declarations used by the main
  theorem.

  <strong|Conventions.>

  <\itemize-minus>
    <item><math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>>,
    with <math|n\<geqslant\>1>, is the periodic lattice with the maximum
    distance <math|d>. A <em|support> is a subset of
    <math|\<Lambda\><rsub|n>>.

    <item><math|<math-up|cov><rsub|B><around|(|X|)>> is the least number of
    <math|d>-balls of radius <math|B> whose union is connected and covers
    <math|X> (<hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>).
    Two properties are used throughout (I.1):

    <\itemize-minus>
      <item><math|<around|\||X|\|>\<leqslant\><math-up|ball><rsub|B><space|0.17em><math-up|cov><rsub|B><around|(|X|)>>,
      with <math|<math-up|ball><rsub|B>=<around|(|2*B+1|)><rsup|4>>;

      <item><math|<math-up|cov><rsub|B>> is subadditive on unions of
      overlapping sets.
    </itemize-minus>

    <item>A family of supports is <em|connected> if it is nonempty and its
    overlap graph is connected.

    <item>For <math|f\<geqslant\>0> on an arbitrary index set,
    <math|<math-up|SB><around|(|f;C|)>> means: <math|f> is summable and
    <math|<big|sum>f\<leqslant\>C> (<hlink|<verbatim|SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>).

    <item>For polymers <math|<around|(|X<rsub|i>,w<rsub|i>|)><rsub|i\<in\>\<iota\>>>
    with <math|w\<geqslant\>0>, the <em|site-sum condition>
    <math|<math-up|Hit><rsub|B><around|(|w;a,\<gamma\>|)>> means
    <math|<math-up|SB><around*|(|i\<mapsto\>\<b-1\>*<around|[|x\<in\>X<rsub|i>|]>*<space|0.17em>w<rsub|i>*<space|0.17em>e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|X<rsub|i>|)>>;\<gamma\>|)>>
    for every site <math|x> (<hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>,
    II.2).

    <item>All weights are real. An upper bound on an infinite sum of
    nonnegative terms includes summability, as in <math|<math-up|SB>>.

    <item>For a relation <math|R> that is not symmetric, the graph used below
    has an edge between distinct occurrences <math|a,b> exactly when both
    <math|R<around|(|z<rsub|a>,z<rsub|b>|)>> and
    <math|R<around|(|z<rsub|b>,z<rsub|a>|)>> hold. The coefficient of a
    one-vertex tuple is <math|1>.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The unit consists of five packages.

  <\itemize-minus>
    <item><strong|(A) Mayer expansion.>

    <\itemize-minus>
      <item>The Mayer expansion of a hard-core polymer gas, with absolute
      bounds, and its re-exponentiation after forced polymers
      (III.5.1\UIII.5.6).

      <item>The verification of the smallness condition for gases of
      large-field seeds of a block-spin step (III.5.7\UIII.5.8).
    </itemize-minus>

    <item><strong|(B) Vacuum normalization.> A second, graph-free
    construction of the logarithm by deletion identities (III.5.9), and a
    trace-log formula (III.5.10).

    <item><strong|(C) Sector decomposition.> The decomposition of one
    block-spin integral into sectors labelled by packets of seeds, with a
    Gaussian gain per seed (III.5.11).

    <item><strong|(D) Inverse decay.> A Combes\UThomas bound (III.5.12).

    <item><strong|(E) Gaussian bounds.> Windowed inverses (III.5.13), and a
    uniform spectral gap and uniform decay for the precision matrix of the
    small-field Gaussian of a step (III.5.14).
  </itemize-minus>

  III.5.1\UIII.5.7, III.5.9, III.5.10, III.5.12 and III.5.13 are general
  implications. III.5.8(c), III.5.11 and III.5.14 concern the block-spin step
  under the funding hypotheses of III.1; III.5.14 also fixes a patch
  satisfying its branch conditions.

  <strong|Proposition III.5.1 (Mayer identity for a finite gas).>

  <\itemize-minus>
    <item><em|Data.> Let <math|\<iota\>> be finite, <math|R> a reflexive
    symmetric relation on <math|\<iota\>> ("incompatible"), and
    <math|w:\<iota\>\<to\>\<bbb-R\>>. Let
    <math|\<Xi\><around|(|w|)>=<big|sum><rsub|s><big|prod><rsub|i\<in\>s>w<rsub|i>>,
    the sum over subsets <math|s\<subseteq\>\<iota\>> of pairwise compatible
    labels.

    <item><em|Ursell coefficient.> For <math|z=<around|(|z<rsub|0>,\<ldots\>,z<rsub|m>|)>\<in\>\<iota\><rsup|m+1>>,
    let <math|G<rsub|R><around|(|z|)>> be the graph on
    <math|<around|{|0,\<ldots\>,m|}>> with an edge <math|<around|{|a,b|}>>,
    <math|a\<neq\>b>, whenever <math|R<around|(|z<rsub|a>,z<rsub|b>|)>>. Put
    <math|\<phi\><rsup|T><rsub|R><around|(|z|)>=<big|sum><rsub|G><around|(|-1|)><rsup|<around|\||G|\|>>>,
    the sum over connected spanning subgraphs
    <math|G\<subseteq\>G<rsub|R><around|(|z|)>>.

    <item><em|Claim.> Let <math|\<ell\><rsub|m>=<frac|1|<around|(|m+1|)>!>*<big|sum><rsub|z\<in\>\<iota\><rsup|m+1>>\<phi\><rsup|T><rsub|R><around|(|z|)>*<big|prod><rsub|a>w<rsub|z<rsub|a>>>.
    If <math|<around|\||\<ell\><rsub|m>|\|>\<leqslant\>C*q<rsup|m>> for all
    <math|m>, with <math|C\<geqslant\>0> and <math|0\<less\>q\<less\>1>, then
    <math|exp <around*|(|<big|sum><rsub|m\<geqslant\>0>\<ell\><rsub|m>|)>=\<Xi\><around|(|w|)>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Gas.exact_polynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145>;
  coefficient identities <hlink|<verbatim|Coef.recurrence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138>,
  <hlink|<verbatim|Partition.partition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237>.

  <strong|Proposition III.5.2 (tree-graph bound).> Let <math|T> be a graph on
  a finite vertex set with a distinguished vertex. Then
  <math|<mid|\|><big|sum><rsub|G><around|(|-1|)><rsup|<around|\||G|\|>><mid|\|>>,
  summed over the connected spanning subgraphs <math|G\<subseteq\>T>, is at
  most the number of spanning trees of <math|T>. In particular
  <math|<around|\||\<phi\><rsup|T><rsub|R><around|(|z|)>|\|>> is at most the
  number of spanning trees of <math|G<rsub|R><around|(|z|)>>. <em|Status:>
  theorem. Spanning trees are counted as acyclic parent maps towards the
  distinguished vertex. <em|Lean:> <hlink|<verbatim|Graph.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148>.

  <strong|Proposition III.5.3 (pinned cluster bounds).>

  <\itemize-minus>
    <item><em|Data.> <math|\<iota\>> is any set; <math|X:\<iota\>\<to\>>
    supports of <math|\<Lambda\><rsub|n>>; <math|B\<in\>\<bbb-N\>>;
    <math|w:\<iota\>\<to\><around|[|0,\<infty\>|)>>; <math|a\<geqslant\>0>;
    <math|R> is a relation on <math|\<iota\>> with
    <math|R<around|(|i,j|)>\<Rightarrow\>X<rsub|i>\<cap\>X<rsub|j>\<neq\>\<emptyset\>>.
    <math|R> need not be symmetric.

    <item><em|Smallness condition.>
  </itemize-minus>

  <\equation*>
    <math-up|Ready><around|(|w;a,\<gamma\>,\<delta\>,q|)>:<space|2em>\<gamma\>\<gtr\>0,<space|1em>\<delta\>\<gtr\>0,<space|1em>4<space|0.17em><math-up|ball><rsub|B><space|0.17em>\<gamma\>/\<delta\>\<leqslant\>q\<less\>1,<space|1em><math-up|Hit><rsub|B><around|(|w;<space|0.17em>a+\<delta\>,<space|0.17em>\<gamma\>|)>.
  </equation*>

  <\itemize-minus>
    <item><em|Notation.> <math|X<around|(|z|)>=<big|cup><rsub|a>X<rsub|z<rsub|a>>>
    for a tuple <math|z>.
  </itemize-minus>

  Then, for every site <math|x> and every integer <math|m\<geqslant\>0>:

  <\itemize-minus>
    <item>(a) <math|<with|math-display|true|<big|sum><rsub|m<rprime|'>\<geqslant\>m><big|sum><rsub|z\<in\>\<iota\><rsup|m<rprime|'>+1>:x\<in\>X<around|(|z|)>><frac|<around|\||\<phi\><rsup|T><rsub|R><around|(|z|)>|\|>|<around|(|m<rprime|'>+1|)>!>*<big|prod><rsub|a>w<rsub|z<rsub|a>>*e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|X<around|(|z|)>|)>>\<leqslant\><frac|\<gamma\>*<space|0.17em>q<rsup|m>|1-q>>>.

    <item>(b) The same bound holds for <math|<big|sum><rsub|s><big|prod><rsub|i\<in\>s><around*|(|w<rsub|i>*e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|X<rsub|i>|)>>|)>>.
    The sum runs over finite sets <math|s\<subseteq\>\<iota\>> with
    <math|<around|\||s|\|>\<geqslant\>m+1> whose supports form a connected
    family containing <math|x>.

    <item>(c) (Marked form.) Suppose <math|Q\<subseteq\>\<iota\>> and
    <math|<math-up|SB><around*|(|i\<mapsto\>\<b-1\>*<around|[|i\<in\>Q|]>*w<rsub|i>*e<rsup|<around|(|a+\<delta\>|)><math-up|cov><rsub|B><around|(|X<rsub|i>|)>>;b|)>>.
    Then the sum over <math|z\<in\>\<iota\><rsup|m+1>> with some
    <math|z<rsub|a>\<in\>Q> of <math|<around|\||\<phi\><rsup|T><rsub|R><around|(|z|)>|\|>*<big|prod><rsub|j=0><rsup|m><around*|(|w<rsub|z<rsub|j>>*e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|X<rsub|z<rsub|j>>|)>>|)>/<around|(|m+1|)>!>
    is at most <math|b*q<rsup|m>>.
  </itemize-minus>

  Each displayed bound is a summability statement of the form
  <math|<math-up|SB>>. <em|Status:> theorem. Form (a) is used in III.2,
  III.10, III.11, III.12, III.13 and III.15. <em|Lean:>
  <hlink|<verbatim|Ursell.log_hit_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243>,
  <hlink|<verbatim|Trees.touch_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276>,
  <hlink|<verbatim|Ursell.cluster_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183>,
  <hlink|<verbatim|Ursell.cluster_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L185-L192>;
  hypothesis <hlink|<verbatim|Trees.Ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32>.

  <strong|Proposition III.5.4 (convergence and logarithm of the gas).> Let
  <math|X,B> be as in III.5.3, <math|R> reflexive and symmetric with
  <math|R<around|(|i,j|)>\<Rightarrow\>X<rsub|i>\<cap\>X<rsub|j>\<neq\>\<emptyset\>>,
  <math|w:\<iota\>\<to\>\<bbb-R\>> and <math|a\<geqslant\>0>. Assume
  <math|<math-up|Ready><around|(|<around|\||w|\|>;a,\<gamma\>,\<delta\>,q|)>>.
  Then:

  <\itemize-minus>
    <item><math|\<Xi\><around|(|w|)>=<big|sum><rsub|s><big|prod><rsub|i\<in\>s>w<rsub|i>>,
    over finite pairwise compatible <math|s\<subseteq\>\<iota\>>, converges
    absolutely, with <math|<big|sum><rsub|s><big|prod><rsub|i\<in\>s><around|\||w<rsub|i>|\|>\<leqslant\>e<rsup|n<rsup|4>*\<gamma\>>>.

    <item>The cluster series <math|<big|sum><rsub|m\<geqslant\>0><big|sum><rsub|z\<in\>\<iota\><rsup|m+1>>\<phi\><rsup|T><rsub|R><around|(|z|)>*<big|prod><rsub|a>w<rsub|z<rsub|a>>/<around|(|m+1|)>!>
    converges absolutely. Its absolute sum is at most
    <math|n<rsup|4>*\<gamma\>/<around|(|1-q|)>>, and at most
    <math|n<rsup|4>*\<gamma\>*q<rsup|m>> over the clusters of <math|m+1>
    labels.

    <item><math|\<Xi\><around|(|w|)>\<gtr\>0>, and <math|log
    \<Xi\><around|(|w|)>> equals the cluster series.
  </itemize-minus>

  <em|Status:> theorem. Used in III.10. <em|Lean:>
  <hlink|<verbatim|Gas.price_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149>,
  <hlink|<verbatim|Gas.absolute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L53-L57>,
  <hlink|<verbatim|Gas.absolute_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L35-L51>.

  <strong|Proposition III.5.5 (removing the polymers that meet a region).> In
  III.5.4, take for <math|R> the overlap relation (<math|R<around|(|i,j|)>>
  iff <math|i=j> or <math|X<rsub|i>\<cap\>X<rsub|j>\<neq\>\<emptyset\>>),
  with nonempty supports. For <math|Y\<subseteq\>\<Lambda\><rsub|n>> let
  <math|w<rsup|Y><rsub|i>=w<rsub|i>*<space|0.17em>\<b-1\>*<around|[|X<rsub|i>\<cap\>Y=\<emptyset\>|]>>.
  Then

  <\equation*>
    \<Xi\><around|(|w<rsup|Y>|)>=\<Xi\><around|(|w|)>*<space|0.17em>e<rsup|-p>,<space|2em><around|\||p|\|>\<leqslant\><frac|<around|\||Y|\|>*<space|0.17em>\<gamma\>|1-q>,
  </equation*>

  where <math|p> is the sum of the cluster terms with
  <math|X<around|(|z|)>\<cap\>Y\<neq\>\<emptyset\>>.

  <\itemize-minus>
    <item>Hence <math|e<rsup|-C<around|\||Y|\|>>*\<Xi\><around|(|w|)>\<leqslant\>\<Xi\><around|(|w<rsup|Y>|)>\<leqslant\>e<rsup|C<around|\||Y|\|>>*\<Xi\><around|(|w|)>>
    with <math|C=\<gamma\>/<around|(|1-q|)>>, uniformly in <math|n>.

    <item>The clusters of at least <math|m+1> labels that meet <math|Y>
    contribute at most <math|<around|\||Y|\|>*\<gamma\>*q<rsup|m>/<around|(|1-q|)>>
    in absolute value.
  </itemize-minus>

  <em|Status:> theorem. Used in III.10. <em|Lean:>
  <hlink|<verbatim|Gas.restores_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95>,
  <hlink|<verbatim|Gas.missing_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63>.

  <strong|Proposition III.5.6 (re-exponentiation with forced polymers).> Fix
  <math|B\<in\>\<bbb-N\>> and a common lattice <math|\<Lambda\><rsub|n>>.

  <\itemize-minus>
    <item><em|Data.> "Unforced" polymers <math|<around|(|X<rsub|i>,u<rsub|i>|)><rsub|i\<in\>\<iota\>>>
    and "forced" polymers <math|<around|(|Y<rsub|k>,d<rsub|k>|)><rsub|k\<in\>\<kappa\>>>,
    all with nonempty supports, <math|u,d\<geqslant\>0>; <math|R> a relation
    on <math|\<iota\>> contained in the overlap relation.

    <item><em|Atoms.> The atoms are of two kinds:

    <\itemize-minus>
      <item>the forced labels <math|k>, with support <math|Y<rsub|k>> and
      weight <math|d<rsub|k>>;

      <item>the tuples <math|z\<in\>\<iota\><rsup|m+1>>, with support
      <math|X<around|(|z|)>> and weight <math|<around|\||\<phi\><rsup|T><rsub|R><around|(|z|)>|\|>*<big|prod><rsub|a>u<rsub|z<rsub|a>>/<around|(|m+1|)>!>.
    </itemize-minus>

    <item><em|Constants.> <math|A\<geqslant\>0>,
    <math|\<delta\><rprime|'>\<gtr\>0>, <math|t\<geqslant\>1>,
    <math|0\<leqslant\>\<sigma\>\<less\>1>, <math|\<mu\>\<geqslant\>0>,
    <math|\<eta\>\<gtr\>0>, <math|q<rprime|'>\<less\>1>.

    <item><em|Hypotheses.> <math|<math-up|Ready><around|(|u;A+\<delta\><rprime|'>,\<gamma\>,\<delta\>,q|)>>,
    <math|<math-up|Hit><rsub|B><around|(|d;A+\<delta\><rprime|'>,c|)>>, and
  </itemize-minus>

  <\equation*>
    <frac|t*<space|0.17em>e<rsup|\<mu\>>*c|1-\<sigma\>>+<frac|t*<space|0.17em>\<gamma\>|<around|(|1-\<sigma\>|)>*<around|(|1-q|)>>\<leqslant\>\<eta\>\<leqslant\>\<sigma\>,<space|2em>4<space|0.17em><math-up|ball><rsub|B><space|0.17em>\<eta\>/\<delta\><rprime|'>\<leqslant\>q<rprime|'>.
  </equation*>

  Fix a site <math|x> and <math|m\<geqslant\>0>. Consider finite sets
  <math|s> of atoms with multiplicities <math|n<rsub|\<alpha\>>\<geqslant\>1>
  such that:

  <\itemize-minus>
    <item><math|s> contains at least one forced label;

    <item><math|<big|sum><rsub|\<alpha\>>n<rsub|\<alpha\>>\<geqslant\>m>;

    <item>the supports of the atoms in <math|s> form a connected family
    containing <math|x>.
  </itemize-minus>

  Summed over all such pairs <math|<around|(|s,<around|(|n<rsub|\<alpha\>>|)><rsub|\<alpha\>\<in\>s>|)>>,
  the quantity

  <\equation*>
    e<rsup|A<space|0.17em><math-up|cov><rsub|B><around|(|<big|cup><rsub|\<alpha\>\<in\>s><math-up|supp><space|0.17em>\<alpha\>|)>>*<big|prod><rsub|\<alpha\>\<in\>s><frac|<math-up|wt><around|(|\<alpha\>|)><rsup|n<rsub|\<alpha\>>>|n<rsub|\<alpha\>>!>
  </equation*>

  is at most <math|t<rsup|-m>*e<rsup|-\<mu\>>*<space|0.17em>\<eta\>/<around|(|1-q<rprime|'>|)>>.

  <em|Status:> theorem. The general form, with an arbitrary selection
  predicate, is <hlink|<verbatim|Multiple.estimates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169>.
  Used in III.2, III.10, III.11 and III.13. <em|Lean:>
  <hlink|<verbatim|OmitClusters.restore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100>.

  <strong|Proposition III.5.7 (gases of seed packets).>

  <em|Setting.> Let <math|S> be a block-spin step (III.1) from
  <math|\<Lambda\><rsub|f>> to <math|\<Lambda\><rsub|c>> with block side
  <math|L>, and let <math|l,B\<in\>\<bbb-N\>>.

  <\itemize-minus>
    <item>A <em|seed> is a fine cell, a coarse bond or a coarse site. Its
    location is the projection of the cell\<#2019\>s vertices, the
    bond\<#2019\>s two endpoints, or the site itself. Each location lies
    within distance <math|1> of its anchor.

    <item>A <em|packet> <math|A> (<hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>)
    is a finite set of seeds; <math|<around|\||A|\|>> is its number of seeds.

    <item>Let <math|D<rsub|0><around|(|A|)>> be the union of its seed
    locations and <math|D<rsub|r><around|(|A|)>> its radius-<math|r>
    neighbourhood. The <em|skins> are the radius-<math|l*B> neighbourhoods of
    the individual seed locations; their union is the <em|dome>
    <math|D<around|(|A|)>=D<rsub|l*B><around|(|A|)>>. The packet is
    <em|connected> if its skins form a connected family. The sector and
    matrix estimates below use <math|D<rsub|r><around|(|A|)>> directly,
    rather than neighbourhoods of <math|D<around|(|A|)>>.

    <item>Put
  </itemize-minus>

  <\equation*>
    \<tau\><rsub|L>=L<rsup|4><space|0.17em><math-up|card><around|{|<text|plaquette
    orientations>|}>+5,<space|2em>K<rsub|<math-up|hit>>=<around|(|2*l*B+3|)><rsup|4>*<space|0.17em>\<tau\><rsub|L>,<space|2em>K<rsub|<math-up|step>>=<around|(|4*l*B+5|)><rsup|4>*<space|0.17em>\<tau\><rsub|L>.
  </equation*>

  <strong|(a) Packet sums.> Assume <math|a,C\<geqslant\>0>,
  <math|0\<leqslant\>p<rsub|A>\<leqslant\>C*<space|0.17em>e<rsup|<around|(|s-g|)><around|\||A|\|>>>
  for every connected <math|A>, and <math|\<rho\>\<assign\>K<rsub|<math-up|step>><rsup|2>*<space|0.17em>e<rsup|<space|0.17em>s-g+a*<around|(|2*l+3|)><rsup|4>>\<leqslant\>q\<less\>1>.
  Then for every coarse site <math|x> and every <math|m\<geqslant\>0>,

  <\equation*>
    <big|sum><rsub|A<math-up|connected>,x\<in\>D<around|(|A|)>,<around|\||A|\|>\<geqslant\>m>p<rsub|A>*<space|0.17em>e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|D<around|(|A|)>|)>>\<leqslant\>K<rsub|<math-up|hit>>*<space|0.17em>C<space|0.17em><frac|q<rsup|max
    <around|(|1,m|)>>|1-q>.
  </equation*>

  The same bound holds for an arbitrary family of variants with nonnegative
  weights, each nonzero variant assigned to a connected packet and supported
  in its dome, provided the sum of the variant weights of each packet is at
  most <math|C*e<rsup|<around|(|s-g|)><around|\||A|\|>>>. For variants, the
  sum is pinned by the actual support and uses its covering number.

  <strong|(b) Mixed words.>

  <\itemize-minus>
    <item><em|Alphabet.> Add optional polymers
    <math|<around|(|X<rsub|i>,w<rsub|i>|)><rsub|i\<in\>\<iota\>>> on
    <math|\<Lambda\><rsub|c>> with <math|w\<geqslant\>0> and lengths
    <math|\<lambda\><rsub|i>\<geqslant\>0>. A packet has footprint
    <math|D<around|(|A|)>> and length <math|e<rsub|s><around|\||A|\|>>.

    <item><em|Hypotheses> (with <math|\<varepsilon\>,\<delta\>,\<gamma\><rsub|<math-up|root>>\<gtr\>0>
    and <math|a,C,e<rsub|s>,\<mu\><rsub|s>\<geqslant\>0>):

    <\itemize-minus>
      <item><math|0\<leqslant\>p<rsub|A>\<leqslant\>C*e<rsup|<around|(|s-g|)><around|\||A|\|>>>
      on connected packets;

      <item>(a) holds with <math|a+2*\<varepsilon\>+\<delta\>> in place of
      <math|a>, <math|s+2*\<varepsilon\>*e<rsub|s>+\<mu\><rsub|s>> in place
      of <math|s>, and some <math|q<rsub|p>\<less\>1>;

      <item><math|<math-up|Hit><rsub|B><around|(|w*<space|0.17em>e<rsup|2*\<varepsilon\>*\<lambda\>>;<space|0.17em>a+2*\<varepsilon\>+\<delta\>,<space|0.17em>\<gamma\><rsub|<math-up|opt>>|)>>;

      <item><math|K<rsub|<math-up|hit>>*C*q<rsub|p>/<around|(|1-q<rsub|p>|)>+\<gamma\><rsub|<math-up|opt>>\<leqslant\>\<gamma\><rsub|<math-up|root>>>;

      <item><math|4<space|0.17em><math-up|ball><rsub|B><space|0.17em>\<gamma\><rsub|<math-up|root>>/\<delta\>\<leqslant\>q\<less\>1>.
    </itemize-minus>

    <item><em|Notation.> For a finite set <math|s> of packets and optional
    labels, <math|D<around|(|s|)>> is the union of the footprints, and
    <math|<math-up|ch><around|(|s|)>=<big|sum><rsub|\<alpha\>\<in\>s><around*|(|<math-up|cov><rsub|B><around|(|<text|footprint
    of >\<alpha\>|)>+<text|length of >\<alpha\>|)>>.

    <item><em|Claim.> For all <math|m,k,r\<in\>\<bbb-N\>>,
    <math|T\<in\>\<bbb-R\>> and every site <math|x>,
  </itemize-minus>

  <\equation*>
    <big|sum><rsub|s><around*|(|<big|prod><rsub|\<alpha\>\<in\>s><math-up|wt><around|(|\<alpha\>|)>|)>*<around*|(|1+<math-up|ch><around|(|s|)>|)><rsup|k>*<space|0.17em>e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|D<around|(|s|)>|)>>\<leqslant\><frac|k!<space|0.17em>e<rsup|\<varepsilon\>>|\<varepsilon\><rsup|k>>*<space|0.27em>e<rsup|-\<varepsilon\>*T-\<mu\><rsub|s>*r>*<space|0.27em><frac|\<gamma\><rsub|<math-up|root>>*<space|0.17em>q<rsup|m>|1-q>,
  </equation*>

  the sum over connected <math|s> with <math|x\<in\>D<around|(|s|)>>,
  <math|<around|\||s|\|>\<geqslant\>m+1>, at least <math|r> seeds in total,
  and <math|<math-up|ch><around|(|s|)>\<geqslant\>T>. Packets that are not
  connected have weight <math|0>.

  <em|Status:> theorem. The hypotheses of (b) are the records
  <hlink|<verbatim|Mixed.Costs.Buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58>
  and <hlink|<verbatim|Mixed.Accounts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89>.
  (b) is used in III.2 and III.10\UIII.13. <em|Lean:>
  <hlink|<verbatim|Packets.packet_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105>,
  <hlink|<verbatim|Packets.packet_variants_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L124-L175>,
  <hlink|<verbatim|Mixed.mixed_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189>,
  <hlink|<verbatim|Mixed.ready_vertices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122>.

  <strong|Proposition III.5.8 (the numerical conditions hold at large
  coupling).>

  <em|Notation.> Fix the gauge group. In (a) and (b), also fix the block side
  <math|L> and <math|l\<in\>\<bbb-N\>>. For the coarse coupling <math|x> put:

  <\itemize-minus>
    <item><math|\<beta\><rsub|F>=x+b*log L>, with <math|b> a constant of the
    group;

    <item><math|B=<around|\<lceil\>|<around|(|log x|)><rsup|2>|\<rceil\>>>;

    <item><math|P<around|(|s|)>=e<rsup|<around|(|log log s|)><rsup|2>>>;

    <item><math|t=\<beta\><rsub|F><rsup|-1/2>*P<around|(|\<beta\><rsub|F>|)>>,
    the small-field threshold;

    <item><math|<math-up|bill><around|(|x|)>=1+B+<around|(|log
    \<beta\><rsub|F>|)><rsup|2>>;

    <item>for <math|\<mu\>,u\<gtr\>0>, <math|M=\<mu\>*u*<space|0.17em>P<around|(|\<beta\><rsub|F>|)><rsup|2>>.
  </itemize-minus>

  <strong|(a)> Let <math|a,D\<geqslant\>0>, <math|d\<in\>\<bbb-N\>> and
  <math|z\<less\>2>. For all sufficiently large <math|x> the following holds.
  Whenever <math|s\<leqslant\>D<space|0.17em><math-up|bill><rsup|d>P<around|(|\<beta\><rsub|F>|)><rsup|z>>,
  <math|g\<geqslant\>M> and <math|0\<leqslant\>C\<leqslant\>exp
  <around|(|D<space|0.17em><math-up|bill><rsup|d>P<around|(|\<beta\><rsub|F>|)><rsup|z>|)>>:

  <\itemize-minus>
    <item>the numerical condition <math|\<rho\>\<leqslant\>q\<less\>1> of
    III.5.7(a) holds with <math|q=e<rsup|-M/2>>;

    <item><math|K<rsub|<math-up|hit>>*C*q<rsup|max
    <around|(|1,m|)>>/<around|(|1-q|)>\<leqslant\>e<rsup|-M*max
    <around|(|1,m|)>/4>> for every <math|m>.
  </itemize-minus>

  If <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>>, then
  <math|\<beta\>*\<mu\>*t<rsup|2>\<geqslant\>M>.

  <strong|(b)> Let in addition <math|\<varepsilon\>,\<delta\>\<gtr\>0>. For
  all large <math|x>, all <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>>, and
  all <math|C,e<rsub|s>\<geqslant\>0>, <math|s\<in\>\<bbb-R\>>, and
  <math|\<gamma\><rsub|<math-up|opt>>> with

  <\equation*>
    C\<leqslant\>e<rsup|<math-up|fee>>,<space|2em>s+2*\<varepsilon\>*e<rsub|s>\<leqslant\><math-up|fee>\<assign\>D<space|0.17em><math-up|bill><rsup|d>P<around|(|\<beta\><rsub|F>|)><rsup|z>,<space|2em>0\<leqslant\>\<gamma\><rsub|<math-up|opt>>\<leqslant\>\<delta\>/<around|(|16<space|0.17em><math-up|ball><rsub|B>|)>,
  </equation*>

  the numerical inequalities of III.5.7(b) hold with:

  <\itemize-minus>
    <item>gain <math|g=\<beta\>*\<mu\>*t<rsup|2>>;

    <item>mark <math|\<mu\><rsub|s>=\<mu\>*u*P<around|(|\<beta\><rsub|F>|)><rsup|2>/2>
    (half of the guaranteed gain is extracted per seed);

    <item><math|q=1/2>;

    <item><math|\<gamma\><rsub|<math-up|root>>=e<rsup|-\<mu\>*u*P<around|(|\<beta\><rsub|F>|)><rsup|2>/8>+\<gamma\><rsub|<math-up|opt>>>.
  </itemize-minus>

  The packet envelope and optional site-sum estimate in III.5.7(b) remain
  hypotheses on the actual weights.

  <strong|(c)> For a step-estimator <math|\<cal-T\>> (III.1), there is
  <math|n> such that for every <math|L\<geqslant\>n> and all sufficiently
  large <math|W> there is <math|\<mu\>\<gtr\>0>, chosen before
  <math|l,d,u,a,D,z>, with the following property for every choice of
  <math|l,d,u,a,D,z> satisfying (a). For all sufficiently large <math|x>,
  every funded step with block side <math|L> and coarse side
  <math|\<geqslant\>100*<around|(|1+B|)>> satisfies the point charge of
  III.5.11 with constant <math|\<mu\>>. For every
  <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>>, the numerical conclusions of
  (a) hold with <math|g=\<beta\>*\<mu\>*t<rsup|2>>. The threshold in <math|x>
  may depend on the fixed numerical parameters but not on the volume.

  <em|Status:> theorem. (c) takes the energy grant per seed from III.10. Used
  in III.10. <em|Lean:> <hlink|<verbatim|Delay.fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214>,
  <hlink|<verbatim|Delay.comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L43-L52>,
  <hlink|<verbatim|Buy.quoted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103>,
  <hlink|<verbatim|Grant.order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71>.

  <strong|Proposition III.5.9 (logarithm by deletion).>

  <strong|(a) Abstract form.>

  <\itemize-minus>
    <item><em|Data.> <math|J> finite; <math|X:\<iota\>\<to\>> nonempty
    subsets of <math|J> (<math|\<iota\>> any set);
    <math|v:\<iota\>\<to\><around|[|0,\<infty\>|)>>; a weight <math|w> on
    subsets of <math|J> with <math|w\<geqslant\>1> and
    <math|w*<around|(|P\<cup\>P<rprime|'>|)>\<leqslant\>w<around|(|P|)>*w<around|(|P<rprime|'>|)>>
    whenever <math|P\<cap\>P<rprime|'>\<neq\>\<emptyset\>>;
    <math|a\<geqslant\>0>; <math|0\<leqslant\>\<delta\>\<leqslant\>1-e<rsup|-a>>.

    <item><em|Site condition.> For every <math|x\<in\>J>,
  </itemize-minus>

  <\equation*>
    <big|sum><rsub|i:<space|0.17em>x\<in\>X<rsub|i>>w<around|(|X<rsub|i>|)>*<space|0.17em>v<rsub|i>*<space|0.17em>e<rsup|a<around|\||X<rsub|i>|\|>>\<leqslant\>\<delta\>.
  </equation*>

  <\itemize-minus>
    <item><em|Gas and its pieces.> For <math|u:\<iota\>\<to\>\<bbb-R\>> with
    <math|<around|\||u<rsub|i>|\|>\<leqslant\>v<rsub|i>>, let
    <math|Z<rsub|u><around|(|B|)>=<big|sum><rsub|Q><big|prod><rsub|i\<in\>Q>u<rsub|i>>
    (<math|B\<subseteq\>J>), the sum over finite families <math|Q> of labels
    with pairwise disjoint supports contained in <math|B>. Let
    <math|\<lambda\><rsub|u>> be the Möbius pieces of <math|-log Z<rsub|u>>.

    <item><em|Claim.>

    <\itemize-minus>
      <item><math|Z<rsub|u><around|(|B|)>\<gtr\>0> and
      <math|Z<rsub|u><around|(|B|)>=exp <around*|(|-<big|sum><rsub|A\<subseteq\>B>\<lambda\><rsub|u><around|(|A|)>|)>>
      for every <math|B>.

      <item><math|<around|\||\<lambda\><rsub|u><around|(|A|)>|\|>\<leqslant\>\<lambda\><rsub|-v><around|(|A|)>>,
      and <math|<big|sum><rsub|A\<ni\>x>w<around|(|A|)>*<space|0.17em>\<lambda\><rsub|-v><around|(|A|)>\<leqslant\>a>
      for every <math|x>.

      <item>For every <math|Q\<subseteq\>J>,
      <math|Z<rsub|u>*<around|(|J\<setminus\>Q|)>=Z<rsub|u><around|(|J|)>*<space|0.17em>e<rsup|l>>,
      with <math|l=<big|sum><rsub|A\<cap\>Q\<neq\>\<emptyset\>>\<lambda\><rsub|u><around|(|A|)>>
      and <math|<around|\||l|\|>\<leqslant\>a<around|\||Q|\|>>.
    </itemize-minus>
  </itemize-minus>

  <strong|(b) At a coarse field.>

  <\itemize-minus>
    <item><em|Data.> Let <math|\<iota\>> be countable, with nonempty supports
    <math|X<rsub|i>>. Let <math|E<rsub|i><around|(|V|)>>
    (<math|i\<in\>\<iota\>>) be functions of the gauge field on
    <math|\<Lambda\><rsub|n>>. Each is local in <math|X<rsub|i>>, gauge
    invariant and Borel, with <math|<around|\||E<rsub|i><around|(|V|)>|\|>\<leqslant\>v<rsub|i>>
    whenever no site of <math|X<rsub|i>> is flagged. Let
    <math|<wide|E|~><rsub|i>> be <math|E<rsub|i>> set to <math|0> when
    <math|X<rsub|i>> contains a flagged site.

    <item><em|Hypotheses.> <math|M\<in\>\<bbb-N\>>, <math|A,a\<geqslant\>0>,
    <math|v<rsub|i>\<geqslant\>0>, <math|a*<around|(|2*M+1|)><rsup|4>\<leqslant\>1>,
    <math|\<delta\>\<leqslant\>1-e<rsup|-a>>, and
    <math|<big|sum><rsub|i:<space|0.17em>x\<in\>X<rsub|i>>e<rsup|<around|(|A+1|)><math-up|cov><rsub|M><around|(|X<rsub|i>|)>>*v<rsub|i>\<leqslant\>\<delta\>>
    for every <math|x>.

    <item><em|Claim.> The gas <math|Z<rsub|V>> of
    <math|<wide|E|~><around|(|V|)>> satisfies, for every <math|V> and every
    <math|Q>:

    <\itemize-minus>
      <item><math|Z<rsub|V><around|(|Q|)>\<gtr\>0> and
      <math|Z<rsub|V><around|(|Q|)>=exp <around*|(|-<big|sum><rsub|P\<subseteq\>Q>\<lambda\><rsub|P><around|(|V|)>|)>>;

      <item><math|<around|\||\<lambda\><rsub|P><around|(|V|)>|\|>\<leqslant\>g<around|(|P|)>>,
      with <math|g> independent of <math|V>, and
      <math|<big|sum><rsub|P\<ni\>x>e<rsup|A<space|0.17em><math-up|cov><rsub|M><around|(|P|)>>*g<around|(|P|)>\<leqslant\>a>;

      <item><math|Z<rsub|V>*<around|(|\<Lambda\><rsub|n>\<setminus\>Q|)>=Z<rsub|V><around|(|\<Lambda\><rsub|n>|)>*e<rsup|l>>
      with <math|l=<big|sum><rsub|P\<cap\>Q\<ne\>\<emptyset\>>\<lambda\><rsub|P><around|(|V|)>>
      and <math|<around|\||l|\|>\<leqslant\>a<around|\||Q|\|>>;

      <item>there are gauge-invariant Borel functions
      <math|\<lambda\><rsub|P><rsup|<math-up|raw>>>, local in the links with
      both endpoints in <math|P>, such that
      <math|\<lambda\><rsub|P><around|(|V|)>=\<b-1\><around|[|P<text|
      contains no flagged site>|]>*\<lambda\><rsub|P><rsup|<math-up|raw>><around|(|V|)>>.
      Thus the masked coefficients also use the flag tests on <math|P>.
    </itemize-minus>
  </itemize-minus>

  <em|Status:> theorem. (b) is used in III.11. <em|Lean:>
  <hlink|<verbatim|ReLog.catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228>,
  <hlink|<verbatim|ReLog.omitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271>,
  <hlink|<verbatim|ReLog.swept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233>,
  <hlink|<verbatim|ReLog.intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183>,
  <hlink|<verbatim|ReLog.retest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L99-L101>,
  <hlink|<verbatim|ReLog.retain_mask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143>.

  <strong|Proposition III.5.10 (trace-log of a near-identity product).> Let
  <math|A> be positive definite and <math|C> symmetric (real matrices), and
  <math|S=A*C-1> with <math|0\<leqslant\>q\<less\>1> and
  <math|<big|sum><rsub|j><around|\||S<rsub|i*j>|\|>\<leqslant\>q> for every
  <math|i>. Then:

  <\itemize-minus>
    <item><math|det C\<gtr\>0> and <math|det <around|(|1+S|)>\<gtr\>0>;

    <item><math|<big|sum><rsub|n\<geqslant\>1><frac|<around|(|-1|)><rsup|n+1>|n><space|0.17em><math-up|tr><space|0.17em>S<rsup|n>>
    converges absolutely, and its sum is <math|log det <around|(|1+S|)>>.
  </itemize-minus>

  <em|Status:> theorem. Used in III.4. <em|Lean:>
  <hlink|<verbatim|Round.exact_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L149-L155>,
  <hlink|<verbatim|Round.twin_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144>.

  <strong|Proposition III.5.11 (sector decomposition of a block-spin step;
  gain per seed).>

  <em|Setting.> Fix a step <math|S> with block side <math|L>, a
  step-estimator <math|\<cal-T\>>, a tube <math|T> with
  <math|<math-up|Funds><around|(|S,T|)>> (III.1), a coarse coupling <math|x>
  with threshold <math|t>, and constants <math|W,\<kappa\>\<gtr\>0>.

  <em|Sector of a packet.> Say <math|<around|(|U,k,V|)>> satisfies the sector
  prerequisites of <math|A> when:

  <\itemize-minus>
    <item>each fine cell whose projected vertices meet
    <math|D<rsub|5*B><around|(|A|)>> has plaquette chord
    <math|\<geqslant\>t/4> if listed in <math|A>, and <math|\<leqslant\>t/2>
    otherwise;

    <item>each coarse bond with an endpoint in
    <math|D<rsub|5*B><around|(|A|)>> has predicted wire chord
    <math|\<geqslant\>W*t> if listed in <math|A>, and
    <math|\<leqslant\>2*W*t> otherwise;

    <item>on <math|D<rsub|5*B><around|(|A|)>>, the sites listed in <math|A>
    are exactly the sites flagged by <math|V> at the coarse threshold
    <math|t<rsub|C>=x<rsup|-1/2>*e<rsup|<around|(|log log x|)><rsup|2>>>;

    <item>the frame tag has positive frame mass at each site of
    <math|D<rsub|5*B><around|(|A|)>>.
  </itemize-minus>

  <em|Point charge.> For every tree-gauge forest <math|F>, every fine field
  <math|U> equal to <math|1> on the trunks of <math|F>, every frame tag
  <math|k>, every coarse field <math|V> and every packet <math|A> such that
  <math|<around|(|U,k,V|)>> satisfies these prerequisites:

  <\equation*>
    \<cal-E\><rsub|A><around|(|U,V|)>\<geqslant\>\<kappa\>*<space|0.17em>t<rsup|2><space|0.17em><around|\||A|\|>.
  </equation*>

  Here <math|\<cal-E\><rsub|A>> is the <em|assessed energy> of <math|A>: the
  sum of the fine, block-constraint, coarse and cross terms of III.1 with
  anchors in <math|D<rsub|2*B><around|(|A|)>>, using walks truncated at
  <math|<around|\<lfloor\>|B/100000|\<rfloor\>>>.

  <em|Claim.> Let <math|R> be a lawful representation of the fine density
  (III.1) adapted to <math|T>: its path data and clip are those of the upper
  stage of <math|T>, and its threshold is <math|t>. Let its coupling satisfy
  <math|\<beta\>\<geqslant\>0>. Let <math|F> be any tree-gauge forest and
  <math|D=<around|(|D<rsub|A>|)><rsub|A>> any allocation:
  <math|D<rsub|A><around|(|k,U,V|)>\<geqslant\>0> is Borel,
  <math|<big|sum><rsub|A>D<rsub|A>=1>, and <math|D<rsub|A>\<ne\>0> implies
  the two seed tests above for every fine cell and coarse bond, together with
  equality of the flag sets on the whole coarse lattice. Positive likelihood
  then implies the local sector prerequisites. This global support condition
  is needed to apply the point charge in every lattice orientation. Then for
  every coarse field <math|V>

  <\equation*>
    <around|(|<math-up|push><rsub|\<beta\>><space|0.17em>\<rho\><rsub|R>|)><around|(|V|)>=<big|sum><rsub|A>c<rsub|A><around|(|V|)>,<space|2em><around|\||c<rsub|A><around|(|V|)>|\|>\<leqslant\>\<pi\><rsub|\<beta\>>*<space|0.27em>e<rsup|-\<beta\>*\<kappa\>*t<rsup|2><around|\||A|\|>>*<space|0.27em>\<ell\><rsub|A><around|(|V|)>,
  </equation*>

  where:

  <\itemize-minus>
    <item><math|c<rsub|A>> is the <math|A>-th sector output;

    <item><math|\<pi\><rsub|\<beta\>>=Z<rsub|<math-up|bond>><around|(|\<beta\>|)><rsup|-<around|\||<math-up|Bond><around|(|\<Lambda\><rsub|c>|)>|\|>>>,
    where <math|Z<rsub|<math-up|bond>><around|(|\<beta\>|)>> is the
    single-bond penalty integrated against probability Haar measure;

    <item><math|\<ell\><rsub|A><around|(|V|)>> is the remaining sector
    integral, including the coarse factor
    <math|<math-up|sieve><around|(|V|)>>, with the orientation-averaged
    assessed energy removed and absolute values on the exposed density;

    <item><math|c<rsub|A>> and <math|\<ell\><rsub|A>> are bounded Borel
    functions.
  </itemize-minus>

  <em|Uniformity.>

  <\itemize-minus>
    <item>At a committed pair of scales of the run, a single
    <math|\<kappa\>\<gtr\>0> serves all volumes, all steps of that pair, and
    all lawful representations produced by the run whose coupling lies in the
    admissible band.

    <item>For a fixed step-estimator, choose <math|L> sufficiently large,
    then <math|W> sufficiently large, then <math|\<kappa\>\<gtr\>0>. The
    point charge holds for all sufficiently large <math|x> and all funded
    steps of coarse side <math|\<geqslant\>100*<around|(|1+B|)>>, uniformly
    in their volumes.
  </itemize-minus>

  <em|Status:> theorem, conditional on <math|<math-up|Funds>> and the point
  charge. The point charge is discharged in two ways:

  <\itemize-minus>
    <item>in general, from the Teller's energy grant (III.10);

    <item>at committed scales, from the committed-scale energy hypothesis of
    the run, through <hlink|<verbatim|notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>
    (III.1).
  </itemize-minus>

  Used in III.4 and III.10. <em|Lean:> <hlink|<verbatim|Presented.portionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210>
  (conclusion <hlink|<verbatim|PortionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L151-L155>),
  <hlink|<verbatim|Consumer.bought>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65>,
  <hlink|<verbatim|points_grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51>;
  definitions <hlink|<verbatim|Seeded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L51-L59>,
  <hlink|<verbatim|Alive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Cells.lean#L62>,
  <hlink|<verbatim|PointCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32>,
  <hlink|<verbatim|earn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29>,
  <hlink|<verbatim|Allocation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36>.

  <strong|Proposition III.5.12 (Combes\UThomas bound).> Let <math|M> be a
  real symmetric matrix on a finite index set, with positions
  <math|a<rsub|i>\<in\>\<Lambda\><rsub|n>>. Assume
  <math|M\<geqslant\>r\<gtr\>0>, <math|\<eta\>\<geqslant\>0>, and

  <\equation*>
    sup<rsub|i> <big|sum><rsub|j>e<rsup|\<eta\>*d<around|(|a<rsub|i>,a<rsub|j>|)>><around|\||M<rsub|i*j>|\|>\<leqslant\>C,<space|2em>sup<rsub|j>
    <big|sum><rsub|i>e<rsup|\<eta\>*d<around|(|a<rsub|i>,a<rsub|j>|)>><around|\||M<rsub|i*j>|\|>\<leqslant\>C.
  </equation*>

  If <math|0\<leqslant\>\<theta\>\<leqslant\>1> and
  <math|\<theta\>*C\<leqslant\>r/2>, then for every <math|u\<geqslant\>0> the
  matrix <math|M+u*I> is invertible and

  <\equation*>
    e<rsup|\<theta\>*\<eta\>*<space|0.17em>d<around|(|a<rsub|i>,a<rsub|j>|)>><space|0.17em><mid|\|><around|(|M+u*I|)><rsup|-1><rsub|i*j><mid|\|>\<leqslant\><around*|(|min
    <around|(|1,r/2|)>*<space|0.17em><around|(|1+u|)>|)><rsup|-1><space|1em><text|for
    all >i,j.
  </equation*>

  The hypotheses pass to principal submatrices. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Green.inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251>,
  <hlink|<verbatim|Green.Bottom.restrict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L93-L113>,
  <hlink|<verbatim|Green.Rows.restrict>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L78-L88>.

  <strong|Proposition III.5.13 (windowed inverses).>

  <em|Setting.>

  <\itemize-minus>
    <item>A finite index set, positions <math|d<rsub|j>\<in\>\<Lambda\><rsub|n>>,
    and <math|U\<geqslant\>0> such that <math|<math-up|card><around|{|j:d<around|(|y,d<rsub|j>|)>\<leqslant\>\<rho\>|}>\<leqslant\>U*<around|(|1+\<rho\>|)><rsup|4>>
    for every <math|y> and every <math|\<rho\>\<in\>\<bbb-N\>>.

    <item><math|A,r,C,\<eta\>,\<theta\>> as in III.5.12, with
    <math|C\<geqslant\>0> and <math|\<eta\>,\<theta\>\<gtr\>0>; and
    <math|0\<leqslant\>\<mu\>\<less\>\<nu\>\<less\>\<theta\>*\<eta\>>.

    <item>A radius <math|R\<in\>\<bbb-N\>> and windows
    <math|P<around|(|j|)>\<ni\>j> such that
    <math|d<around|(|d<rsub|i>,d<rsub|j>|)>\<leqslant\>R\<Rightarrow\>i\<in\>P<around|(|j|)>>.
  </itemize-minus>

  <em|Objects.>

  <\itemize-minus>
    <item><math|<math-up|within><around|(|A|)><rsub|i*j>=<around*|(|<around|(|A\|<rsub|P<around|(|j|)>>|)><rsup|-1>|)><rsub|i*j>>
    for <math|i\<in\>P<around|(|j|)>>, and <math|0> otherwise.

    <item><math|E=A<space|0.17em><math-up|within><around|(|A|)>-1> and
    <math|<math-up|cov>=<tfrac|1|2><around|(|<math-up|within>+<math-up|within><rsup|T>|)>>.

    <item><math|\<Pi\><rsub|U><around|(|\<eta\>|)>=U*<space|0.17em>4!<space|0.17em><around|(|2/\<eta\>|)><rsup|4>*<space|0.17em>e<rsup|\<eta\>/2>/<around|(|1-e<rsup|-\<eta\>/2>|)>>,
    <math|Y=\<Pi\><rsub|U>*<around|(|\<theta\>*\<eta\>-\<nu\>|)>/min
    <around|(|1,r/2|)>>, and <math|s=e<rsup|-<around|(|\<nu\>-\<mu\>|)>*R>*<around|(|C*Y+1|)>>.
  </itemize-minus>

  <strong|(a)> Weighted row and column sums at rate <math|\<mu\>> satisfy:

  <\itemize-minus>
    <item><math|A<rsup|-1>> and <math|<math-up|within><around|(|A|)>>: at
    most <math|Y>;

    <item><math|E>: at most <math|s>;

    <item><math|<math-up|within><around|(|A|)>-A<rsup|-1>>: at most
    <math|Y*s>.
  </itemize-minus>

  At any rate <math|0\<leqslant\>\<xi\>\<leqslant\>\<eta\>>, if
  <math|<math-up|within>-A<rsup|-1>> has row and column bounds
  <math|s<rprime|'>\<geqslant\>0> and <math|<math-up|within>> has bounds
  <math|Y<rprime|'>\<geqslant\>0>, then <math|<math-up|cov>>,
  <math|<math-up|cov>-A<rsup|-1>> and <math|A<space|0.17em><math-up|cov>-1>
  have bounds <math|Y<rprime|'>>, <math|s<rprime|'>> and
  <math|C*s<rprime|'>>, respectively. If also <math|C,Y<rprime|'>\<gtr\>0>
  and <math|s<rprime|'>\<leqslant\>1/<around|(|2*C|)>>, then
  <math|<math-up|cov>\<geqslant\>1/<around|(|2*C|)>> and
  <math|<math-up|cov><rsup|-1>\<geqslant\><around|(|Y<rprime|'>|)><rsup|-1>>.

  <strong|(b)> Fix positive bounds on the weighted row and column sums,
  spectral gap, rate <math|\<alpha\>>, and counting constant. There are
  <math|0\<less\>e\<leqslant\>\<alpha\>> and
  <math|K,c,c<rsub|1>,c<rsub|2>\<gtr\>0>, depending only on these data, such
  that for all sufficiently large integer <math|R> the following holds
  uniformly for all such matrices and windows with room <math|R>. At rate
  <math|e>, the full and windowed inverses of <math|t*A+<around|(|1-t|)>*I>
  have bounds <math|K>, and their residual and inverse difference have bounds
  <math|K*e<rsup|-c*R>\<less\>1>, for every <math|t\<in\><around|[|0,1|]>>.
  At <math|t=1>, the covariance has bound <math|K>, its difference from
  <math|A<rsup|-1>> and the residual <math|A<space|0.17em><math-up|cov>-I>
  have bounds <math|K*e<rsup|-c*R>>, and <math|<math-up|cov>\<geqslant\>c<rsub|1>>,
  <math|<math-up|cov><rsup|-1>\<geqslant\>c<rsub|2>>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Win.Windows.window_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169>,
  <hlink|<verbatim|covariance_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L171-L188>,
  <hlink|<verbatim|covariance_floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L191-L202>,
  <hlink|<verbatim|Win.Promise.receive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L106-L178>.

  <strong|Proposition III.5.14 (precision matrix of the small-field Gaussian
  of a step).>

  <em|Setting.> Fix a step-estimator <math|\<cal-T\>> and a patch
  <math|\<cal-D\>> (block side <math|L>, order <math|J>) satisfying the
  branch conditions for its kernel and gauge group. For a step with patch
  <math|\<cal-D\>>, tube <math|T>, coupling <math|x>, tree-gauge forest
  <math|F>, packet <math|A> and coarse field <math|V>, define <math|D> as
  follows:

  <\itemize-minus>
    <item><em|Rows.> Use the flat plaquette-curl and upper path-sum rows,
    with walks truncated at <math|<around|\<lfloor\>|B/100000|\<rfloor\>>>,
    and the flat linearized block-constraint rows.

    <item><em|Transport.> Transport the input Lie-algebra field by the
    replica of <math|V> and a fixed path gauge centred at each row, in every
    lattice orientation.

    <item><em|Restriction.> Keep rows whose oriented centres lie outside
    <math|D<rsub|8*B><around|(|A|)>>, and columns on <em|active> fine bonds:
    bonds outside the trunks of <math|F> whose projected endpoints lie
    outside <math|D<rsub|10*B><around|(|A|)>>. Set all other entries to zero.

    <item><em|Normalization.> Write Lie-algebra coordinates and multiply each
    row by the inverse square root of the number of lattice orientations.
  </itemize-minus>

  This is a transported flat linearization. Its equality to the derivative of
  the nonlinear cut rows at <math|V> is not asserted.

  Let <math|<math-up|gram>=D<rsup|T>*D+<math-up|diag><around|(|\<b-1\><rsub|<math-up|inactive>>|)>>,
  with positions the coarse parents of the bonds.

  <em|Claim.> There are constants <math|r,K,U,\<alpha\>\<gtr\>0>, with
  <math|\<alpha\>> half the decay rate of the upper path data, such that the
  following holds for all large <math|x>. For every step with patch
  <math|\<cal-D\>> and <math|<math-up|Funds>>, coarse side
  <math|\<geqslant\>100*<around|(|1+B|)>>, every <math|F>, and every
  <math|A,V> for which the flags of <math|A> are the flagged sites of
  <math|V>:

  <\itemize-minus>
    <item><math|<math-up|gram>> is symmetric and
    <math|<math-up|gram>\<geqslant\>r>;

    <item>at most <math|U*<around|(|1+\<rho\>|)><rsup|4>> indices lie within
    distance <math|\<rho\>> of any site;

    <item>its weighted row and column sums at rate <math|\<alpha\>> are at
    most <math|K>;

    <item><math|D<rsub|i*j>=0> when the row centre and column position are
    separated by more than <math|<around|\<lfloor\>|B/100000|\<rfloor\>>+R<rsub|<math-up|pred>><around|(|\<cal-D\>|)>+2>,
    where <math|R<rsub|<math-up|pred>>> is the patch\<#2019\>s predictor
    range. The range grows with <math|B>; the weighted bounds are uniform in
    <math|x>.
  </itemize-minus>

  Consequently, for large <math|x>, III.5.13(b) applies to the following
  windows: a fine bond belongs to the window of an addressed bond exactly
  when at least one of its projected endpoints is within distance
  <math|<around|\<lfloor\>|B/4|\<rfloor\>>> of at least one projected
  endpoint of the addressed bond. Include every color coordinate of each such
  bond. Their room is <math|<around|\<lfloor\>|B/4|\<rfloor\>>>, and the
  error is <math|K<rsub|<math-up|win>>*e<rsup|-c<rsub|<math-up|win>>*<around|\<lfloor\>|B/4|\<rfloor\>>>\<less\>1>.

  <em|Status:> theorem, conditional on <math|<math-up|Funds>> and
  <math|<math-up|Branches>>. Used in III.4 and III.11 through the window
  estimates below. <em|Lean:> <hlink|<verbatim|Aff.bedrock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158>,
  <hlink|<verbatim|Aff.surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113>,
  <hlink|<verbatim|Aff.gram_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181>,
  <hlink|<verbatim|Aff.install_promises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42>;
  definitions <hlink|<verbatim|Aff.Dmat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127>,
  <hlink|<verbatim|Aff.gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147>,
  <hlink|<verbatim|Promise.Served>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L36-L37>.

  <strong|Further outputs.>

  <\itemize-minus>
    <item>A calculus of budgets <math|<math-up|SB>>
    (<hlink|<verbatim|Basic.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean>):
    monotonicity, scaling, pull-back, sums over fibres, geometric tails,
    <hlink|<verbatim|budget_count_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163>.
    It is used by about 125 modules elsewhere.

    <item>Site-sum bounds for bundles of walks on the fine lattice, with a
    tail in the true length of the walks (<hlink|<verbatim|Paths.bundle_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Path.lean#L182-L201>).

    <item>A weighted row bound for the tree-gauge response kernel
    (<hlink|<verbatim|Response.response_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Response.lean#L242-L259>).

    <item>Auxiliary Gaussian estimates, listed in Lemma 4.36.
  </itemize-minus>

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><strong|I.1:> the torus <math|\<Lambda\><rsub|n>>; the distance
    <math|d> (<hlink|<verbatim|separation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81>);
    <math|<around|\||X|\|>\<leqslant\><math-up|ball><rsub|M><math-up|cov><rsub|M><around|(|X|)>>
    (<hlink|<verbatim|Corona.pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Fill.lean#L129-L131>);
    subadditivity of <math|<math-up|cov><rsub|M>> on overlapping unions
    (<hlink|<verbatim|Corona.meets_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Corona/Halo.lean#L14-L30>).

    <item><strong|II.2:> the site-sum condition
    <hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>;
    connected families <hlink|<verbatim|Ac.Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49>;
    <math|<math-up|cov><rsub|M>> of a connected union is at most the sum
    (<hlink|<verbatim|Ac.cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L59-L82>).

    <item><strong|III.1:>

    <\itemize-minus>
      <item><math|<math-up|SB>>;

      <item>the step data: patch, kernel, frame choices, the pushforward
      <hlink|<verbatim|StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77-L79>,
      <hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>;

      <item>lawful representations <hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>;

      <item>packets, domes, sectors and the assessed energy
      (<hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>,
      <hlink|<verbatim|Plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L51-L58>,
      <hlink|<verbatim|assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>);

      <item>the step-estimator interface <hlink|<verbatim|Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89-L96>
      and <hlink|<verbatim|Teller.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101-L109>,
      with <math|<math-up|Funds>> supplied for the run by
      <hlink|<verbatim|Testing.proceeds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L147-L152>;

      <item>tubes, tree-gauge forests (<hlink|<verbatim|Tree.Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>)
      and flags;

      <item>the constants <math|B>, <math|t>, <math|\<beta\><rsub|F>>
      (<hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>,
      <hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>,
      <hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>);

      <item>the point charge at committed scales
      (<hlink|<verbatim|notation_ticket>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L166-L181>).
    </itemize-minus>

    <item><strong|III.10:>

    <\itemize-minus>
      <item>the step-estimator\<#2019\>s energy grant per seed
      (<hlink|<verbatim|Next.Fluctuations.grants>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Grants.lean#L24>),
      used for III.5.8(c) and III.5.11;

      <item>the sector integrals and their reduction
      (<hlink|<verbatim|Sector.peel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L229-L259>,
      <hlink|<verbatim|Sector.prefactor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Sector.lean#L71-L72>);

      <item>the linearized block constraint
      <hlink|<verbatim|zLin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FLUCTUATIONS/Defs.lean#L53-L55>;

      <item>the growth of <math|\<beta\><rsub|F>> and the uniform predictor
      bound used in the spectral gap estimate.
    </itemize-minus>

    <item><strong|III.6:> a gauge-fixed Poincaré-type inequality
    (<hlink|<verbatim|Work.F01.link_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108>).
    A field vanishing on the trunks is bounded on each fine bond by its
    plaquette curls in a box of fixed radius around the block, plus its block
    average. This is the source of the spectral gap <math|r> in III.5.14.

    <item><strong|III.2:> committed pairs of scales, the construction run and
    its energy hypothesis entering the uniform sector estimate.
  </itemize-minus>

  <strong|Standard mathematics.> The formal proofs establish the estimates
  directly. References for the methods are:

  <\itemize-minus>
    <item>Mayer expansion, Ursell functions and the Penrose tree partition:
    R. Fernández and A. Procacci, <hlink|\PCluster expansion for abstract
    polymer models. New bounds from an old
    approach\Q|https://link.springer.com/article/10.1007/s00220-007-0279-2>,
    <em|Commun. Math. Phys.> <strong|274> (2007), 123\U140.

    <item>Polymer convergence criteria: R. Kotecký and D. Preiss,
    <hlink|\PCluster expansion for abstract polymer
    models\Q|https://doi.org/10.1007/BF01211762>, <em|Commun. Math. Phys.>
    <strong|103> (1986), 491\U498; C. Gruber and H. Kunz, <hlink|\PGeneral
    properties of polymer systems\Q|https://link.springer.com/article/10.1007/BF01651334>,
    <em|Commun. Math. Phys.> <strong|22> (1971), 133\U161.

    <item>Lattice-animal counting by spanning walks; the Schur test for
    matrix norms; Möbius inversion on subsets.

    <item>Exponential conjugation for inverse decay: J.-M. Combes and L.
    Thomas, <hlink|\PAsymptotic behaviour of eigenfunctions for multiparticle
    Schrödinger operators\Q|https://link.springer.com/article/10.1007/BF01646473>,
    <em|Commun. Math. Phys.> <strong|34> (1973), 251\U270.

    <item>Large-field sectors and localized propagators belong to
    Baªaban\<#2019\>s block-spin method. Here they are implemented through
    the explicit seed allocations and principal inverses stated above.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The constants <math|B=<around|\<lceil\>|<around|(|log
    x|)><rsup|2>|\<rceil\>>>, <math|t=\<beta\><rsub|F><rsup|-1/2>*e<rsup|<around|(|log
    log \<beta\><rsub|F>|)><rsup|2>>> and <math|\<beta\><rsub|F>=x+b*log L>
    (III.1).

    <item>The halo factor <math|l> is arbitrary in the packet estimates; a
    particular choice belongs to their application.

    <item>The block side <math|L\<geqslant\>n> and the constant <math|W>,
    chosen large (III.2).

    <item>Assumed hypotheses:

    <\itemize-minus>
      <item><math|<math-up|Funds>> and <math|<math-up|Branches>> (III.1);

      <item>lawful representations (III.1);

      <item>the point charge (discharged as in III.5.11);

      <item>in the auxiliary Gaussian estimates, the coarse-side bound and
      flag equality, together with the compatible quadratic forms specified
      in Lemma 4.36.
    </itemize-minus>
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  For a finite gas, inclusion\Uexclusion writes the partition function as a
  sum over tuples. Splitting off the connected component of a distinguished
  occurrence gives the coefficient recurrence
  <math|<around|(|m+1|)>*g<rsub|m+1>=<big|sum><rsub|k=0><rsup|m><around|(|k+1|)>*\<ell\><rsub|k>*g<rsub|m-k>>.
  For the gas polynomial <math|P<around|(|t|)>=<big|sum><rsub|n>g<rsub|n>*t<rsup|n>>
  and cluster series <math|L<around|(|t|)>=<big|sum><rsub|m>\<ell\><rsub|m>*t<rsup|m+1>>,
  this becomes <math|P<rprime|'>=L<rprime|'>*P>. A geometric bound on the
  cluster coefficients justifies differentiation on an interval containing
  <math|<around|[|0,1|]>>; then <math|P*e<rsup|-L>=1>. Absolute bounds allow
  passage to arbitrary label sets through the directed family of finite
  subsets.

  The bounds combine the tree-graph inequality with a sum over trees. A
  parent support <math|Y> meets labels of total inflated weight at most
  <math|<around|\||Y|\|>*\<gamma\>\<leqslant\><math-up|ball><rsub|B>\<gamma\><space|0.17em><math-up|cov><rsub|B><around|(|Y|)>>.
  The reserve exponent <math|\<delta\>> absorbs each parent\<#2019\>s number
  of children through <math|x<rsup|k>\<leqslant\>k!e<rsup|x>>. Substochastic
  kernels sum the labels; the sum of the resulting child factorials over
  parent maps is at most <math|4<rsup|m>*m!>. After cancellation of the
  occurrence factorial, the ratio per added vertex is
  <math|4<space|0.17em><math-up|ball><rsub|B>\<gamma\>/\<delta\>>.
  Subadditivity of the covering number transfers these bounds to cluster
  unions. The resulting estimates retain site pins, tails, deleted regions
  and repeated forced polymers.

  For seed packets, a spanning-walk count gives an entropy factor
  <math|K<rsub|<math-up|step>><rsup|2>> per seed. The point charge supplies
  an energy gain <math|\<beta\>*\<kappa\>*t<rsup|2>> per seed. Since
  <math|t=\<beta\><rsub|F><rsup|-1/2>*P<around|(|\<beta\><rsub|F>|)>> and
  <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>>, the guaranteed gain is
  <math|\<kappa\>*u*P<around|(|\<beta\><rsub|F>|)><rsup|2>>. At fixed
  <math|L>, this dominates every cost <math|<math-up|bill><rsup|d>P<around|(|\<beta\><rsub|F>|)><rsup|z>>
  with <math|z\<less\>2>. Half the gain can be retained as a mark for later
  estimates. The partition of unity over global seed records then splits the
  block-spin pushforward while preserving a common field, tag array and
  tree-gauge slice.

  The deletion construction obtains another logarithm from the region
  recurrence. Its negative-logarithm pieces form a union-convolution series
  pinned at a chosen site. A weighted <math|\<ell\><rsup|1>> bound closes
  induction on the region and compares signed activities with the gas of
  negative envelope activities. The final matrix estimates use a transported
  flat linearization: a gauge-fixed Poincaré inequality and a
  small-background comparison give a uniform spectral gap, while path bounds
  give weighted row and column estimates. Exponential conjugation yields
  inverse decay, and principal window inverses approximate the full inverse
  with error <math|O<around|(|e<rsup|-c*B>|)>>.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Algebra of the finite gas><label|41-algebra-of-the-finite-gas>

  In Lemmas 4.1\U4.4 the label set <math|\<iota\>> is finite, the weights are
  real, and <math|R> is reflexive and symmetric. All vertex sets are finite.

  <strong|Lemma 4.1 (gas as a sum over tuples).> Let <math|R> be reflexive
  and symmetric, and <math|g<rsub|n>=<frac|1|n!>*<big|sum><rsub|z\<in\>\<iota\><rsup|n>><math-up|all><around|(|z|)>*<big|prod><rsub|a>w<rsub|z<rsub|a>>>,
  where <math|<math-up|all><around|(|z|)>=<big|sum><rsub|G\<subseteq\>G<rsub|R><around|(|z|)>><around|(|-1|)><rsup|<around|\||G|\|>>>.
  Then <math|g<rsub|n>=<big|sum><rsub|<around|\||s|\|>=n,s<math-up|compatible>><big|prod><rsub|i\<in\>s>w<rsub|i>>,
  and <math|<big|sum><rsub|n>g<rsub|n>=\<Xi\><around|(|w|)>>. <em|Sketch:>

  <\itemize-minus>
    <item><math|<math-up|all><around|(|z|)>=\<b-1\>*<around|[|G<rsub|R><around|(|z|)>=\<emptyset\>|]>>,
    by the binomial identity.

    <item>Since <math|R> is reflexive, an edgeless tuple has distinct
    entries, and so orders a compatible set; each set arises <math|n!> times.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Partition.allMass_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L23-L28>,
  <hlink|<verbatim|Gas.row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L69-L120>,
  <hlink|<verbatim|Gas.sums>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Gas.lean#L128-L137>.

  <strong|Lemma 4.2 (splitting off a component).> For any relation <math|R>,
  any tuple <math|z> on a finite vertex set <math|\<alpha\>>, and
  <math|o\<in\>\<alpha\>>:

  <\equation*>
    <math-up|all><around|(|z|)>=<big|sum><rsub|s\<ni\>o>\<phi\><rsup|T><rsub|R><around|(|z\|<rsub|s>|)><space|0.17em><math-up|all><around|(|z\|<rsub|\<alpha\>\<setminus\>s>|)>.
  </equation*>

  <em|Sketch:> a subgraph is the same thing as three pieces of data:

  <\itemize-minus>
    <item>the vertex set <math|s> of the component of <math|o>;

    <item>a connected spanning graph on <math|s>;

    <item>an arbitrary subgraph on the complement, with no edges between
    <math|s> and its complement.
  </itemize-minus>

  The signs multiply. <em|Lean:> <hlink|<verbatim|Partition.partition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Partition.lean#L219-L237>.
  <em|(proof read; the bijection lemmas statement only)>

  <strong|Lemma 4.3 (coefficient recurrence).>
  <math|<around|(|m+1|)>*<space|0.17em>g<rsub|m+1>=<big|sum><rsub|k=0><rsup|m><around|(|k+1|)>*<space|0.17em>\<ell\><rsub|k>*<space|0.17em>g<rsub|m-k>>.
  <em|Sketch:>

  <\itemize-minus>
    <item>Sum Lemma 4.2 over all tuples on
    <math|<around|{|o|}>\<sqcup\><around|{|1,\<ldots\>,m|}>>; the tuple sums
    over <math|s> and over its complement factor.

    <item>There are <math|<binom|m|k>> sets <math|s> of size <math|k+1>
    containing <math|o>.

    <item>Relabelling invariance of <math|\<phi\><rsup|T>> finishes the
    count.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Coef.unbased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L71-L76>,
  <hlink|<verbatim|Coef.discrete>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L79-L125>,
  <hlink|<verbatim|Coef.recurrence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L129-L138>.

  <strong|Lemma 4.4 (III.5.1).> Under the geometric coefficient bound of
  III.5.1, <math|exp <around|(|<big|sum><rsub|m>\<ell\><rsub|m>|)>=\<Xi\><around|(|w|)>>.
  <em|Sketch:>

  <\itemize-minus>
    <item>Let <math|u=<around|(|1+q<rsup|-1>|)>/2\<gtr\>1>. On
    <math|<around|(|-u,u|)>>, the series <math|L<around|(|t|)>=<big|sum>\<ell\><rsub|m>*t<rsup|m+1>>
    can be differentiated term by term, because
    <math|<around|\||<around|(|m+1|)>*\<ell\><rsub|m>*t<rsup|m>|\|>\<leqslant\>C*<around|(|m+1|)>*<around|(|q*u|)><rsup|m>>
    is summable.

    <item><math|P<around|(|t|)>=<big|sum>g<rsub|n>*t<rsup|n>> is a
    polynomial, since <math|g<rsub|n>=0> for
    <math|n\<gtr\><around|\||\<iota\>|\|>>.

    <item>Lemma 4.3 and the Cauchy product give
    <math|P<rprime|'>=L<rprime|'>*P>. Hence <math|H=P*e<rsup|-L>> has
    <math|H<rprime|'>=0> and <math|H<around|(|0|)>=g<rsub|0>=1>.

    <item>Evaluate at <math|t=1>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Gas.exact_polynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L66-L145>.

  <subsection|4.2 Tree-graph bound><label|42-tree-graph-bound>

  <strong|Lemma 4.5 (Penrose partition; III.5.2).> The absolute
  connected-graph sum is bounded by the number of spanning trees.
  <em|Sketch:>

  <\itemize-minus>
    <item>To each connected spanning <math|G> attach its breadth-first tree
    from the distinguished vertex, breaking ties by a fixed enumeration.

    <item>For a fixed tree <math|p>, the graphs with tree <math|p> form a
    Boolean interval <math|<around|[|E<around|(|p|)>,E<around|(|p|)>\<cup\>F<around|(|p|)>|]>>.
    Here <math|E<around|(|p|)>> is the edge set of <math|p>, and
    <math|F<around|(|p|)>> consists of the edges of <math|T> that neither
    change the breadth-first layers nor offer an earlier parent.

    <item>The alternating sum over an interval vanishes unless the interval
    is a point: flip one free edge.

    <item>Each fibre therefore contributes at most <math|1>, and only trees
    of <math|T> contribute.
  </itemize-minus>

  The bound follows without identifying which trees have nonzero fibres.
  <em|Lean:> <hlink|<verbatim|Graph.pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Graph.lean#L113-L148>;
  breadth-first construction in <hlink|<verbatim|Breadth.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Breadth.lean>.
  <em|(proof read; breadth-first construction statement only)>

  <subsection|4.3 Sums over trees><label|43-sums-over-trees>

  <strong|Lemma 4.6 (substochastic sums along a forest).> Let
  <math|\<alpha\>,\<beta\>> be finite, <math|p:\<alpha\>\<to\>\<alpha\>\<sqcup\><around|{|o|}>>
  an acyclic parent map, <math|Y> a fixed root state, and <math|X<rsub|j>>
  the state associated with <math|j\<in\>\<beta\>>. If
  <math|K<around|(|Y<rprime|'>,j|)>\<geqslant\>0> and
  <math|<big|sum><rsub|j>K<around|(|Y<rprime|'>,j|)>\<leqslant\>1> for every
  state <math|Y<rprime|'>>, then <math|<big|sum><rsub|z:\<alpha\>\<to\>\<beta\>><big|prod><rsub|i>K<around|(|X<rsub|z<rsub|p<around|(|i|)>>>,z<rsub|i>|)>\<leqslant\>1>,
  with the first argument interpreted as <math|Y> when
  <math|p<around|(|i|)>=o>. <em|Sketch:> induction on the set of summed
  vertices. Sum out a vertex of maximal rank first: it is a leaf, and its row
  sum is <math|\<leqslant\>1>. <em|Lean:>
  <hlink|<verbatim|Trees.substochastic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L44-L126>.

  <strong|Lemma 4.7 (fan-out factorials).>
  <math|<big|sum><rsub|p:<around|[|m|]>\<to\><around|[|m|]>\<sqcup\><around|{|o|}>><big|prod><rsub|v><around|(|<math-up|card><around|{|i:p<around|(|i|)>=v|}>|)>!=<binom|2*m|m>m!\<leqslant\>4<rsup|m>*m!>.
  <em|Sketch:> with <math|m+1> possible parents fixed, extending a map on
  <math|n> vertices multiplies the total factorial weight by <math|n+m+1>.
  Iterating from <math|n=0> to <math|m> gives <math|<around|(|2*m|)>!/m!>,
  and <math|<binom|2*m|m>\<leqslant\>4<rsup|m>>. <em|Lean:>
  <hlink|<verbatim|Trees.parent_fanout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L191-L193>,
  <hlink|<verbatim|fanout_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Parent.lean#L184-L189>.

  <strong|Lemma 4.8 (trees rooted at a support).> Assume
  <math|w\<geqslant\>0>, <math|\<gamma\>,\<delta\>\<gtr\>0>,
  <math|a\<in\>\<bbb-R\>>, and <math|<math-up|Hit><rsub|B><around|(|w;a+\<delta\>,\<gamma\>|)>>.
  For any support <math|Y> and any finite <math|D\<subseteq\>\<iota\>>,

  <\equation*>
    <big|sum><rsub|p><big|sum><rsub|z\<in\>D<rsup|m>>\<b-1\>*<around*|[|X<rsub|z<rsub|i>>\<cap\>X<rsub|<math-up|parent><around|(|i|)>>\<neq\>\<emptyset\>\<forall\>i|]><frac|1|m!>*<big|prod><rsub|i><around*|(|w<rsub|z<rsub|i>>*e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|X<rsub|z<rsub|i>>|)>>|)>\<leqslant\>e<rsup|\<delta\><space|0.17em><math-up|cov><rsub|B><around|(|Y|)>>*<space|0.17em><around*|(|4<space|0.17em><math-up|ball><rsub|B>\<gamma\>/\<delta\>|)><rsup|m>,
  </equation*>

  where <math|p> runs over acyclic parent maps on the <math|m> labelled
  vertices with external root of support <math|Y>. <em|Sketch:>

  <\itemize-minus>
    <item>Define <math|K<around|(|Y<rprime|'>,i|)>=\<b-1\>*<around|[|X<rsub|i>\<cap\>Y<rprime|'>\<neq\>\<emptyset\>|]>*<space|0.17em>w<rsub|i>*e<rsup|<around|(|a+\<delta\>|)><math-up|cov><rsub|B><around|(|X<rsub|i>|)>><mid|/><around*|(|\<tau\>*max
    <around|(|\<delta\><space|0.17em><math-up|cov><rsub|B><around|(|Y<rprime|'>|)>,1|)>|)>>
    with <math|\<tau\>=<math-up|ball><rsub|B>\<gamma\>/\<delta\>>. The
    numerator summed over <math|i> is at most
    <math|<around|\||Y<rprime|'>|\|>*\<gamma\>\<leqslant\>\<tau\>*\<delta\><space|0.17em><math-up|cov><rsub|B><around|(|Y<rprime|'>|)>\<leqslant\>\<tau\>*max
    <around|(|\<delta\><space|0.17em><math-up|cov><rsub|B><around|(|Y<rprime|'>|)>,1|)>>,
    so <math|<big|sum><rsub|i>K<around|(|Y<rprime|'>,i|)>\<leqslant\>1>, also
    for <math|Y<rprime|'>=\<emptyset\>>.

    <item>Rewrite each weight <math|w<rsub|i>*e<rsup|a<space|0.17em><math-up|cov>>>
    as <math|\<tau\>*max <around|(|\<delta\><space|0.17em><math-up|cov><around|(|<math-up|parent>|)>,1|)>*<space|0.17em>K*<space|0.17em>e<rsup|-\<delta\><space|0.17em><math-up|cov><around|(|X<rsub|i>|)>>>.

    <item>A parent with <math|k> children contributes <math|max
    <around|(|\<delta\><space|0.17em><math-up|cov>,1|)><rsup|k>\<leqslant\>k!<space|0.17em>e<rsup|\<delta\><space|0.17em><math-up|cov>>>.
    The exponential at each internal vertex cancels its own
    <math|e<rsup|-\<delta\><space|0.17em><math-up|cov>>>, leaving
    <math|e<rsup|\<delta\><space|0.17em><math-up|cov><rsub|B><around|(|Y|)>>>
    at the root.

    <item>Conclude with Lemmas 4.6 and 4.7.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Trees.trees_afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L192-L228>,
  <hlink|<verbatim|Trees.forest_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L46-L56>.

  <subsection|4.4 Cluster sums and the logarithm><label|44-cluster-sums-and-the-logarithm>

  <strong|Lemma 4.9 (rooted and marked cluster sums; III.5.3(c)).> Under
  III.5.3\<#2019\>s hypotheses, the marked sum at order <math|m> is at most
  <math|b*q<rsup|m>>. <em|Sketch:>

  <\itemize-minus>
    <item><math|<frac|1|<around|(|m+1|)>!>=<frac|1|m+1>\<cdot\><frac|1|m!>>:
    write the tuple sum as the average over the choice of root vertex. A
    transposition moves the root to position <math|0>, and
    <math|\<phi\><rsup|T>> is invariant under relabelling.

    <item>At root <math|0>, Lemma 4.5 bounds
    <math|<around|\||\<phi\><rsup|T><around|(|z|)>|\|>> by the trees of
    <math|G<rsub|R><around|(|z|)>>. Since <math|R> is contained in the
    overlap relation, these are trees of supports rooted at
    <math|X<rsub|z<rsub|0>>> in the sense of Lemma 4.8.

    <item>The root label is summed against its own weight
    <math|w<rsub|i>*e<rsup|<around|(|a+\<delta\>|)><math-up|cov><around|(|X<rsub|i>|)>>>,
    which absorbs the factor <math|e<rsup|\<delta\><space|0.17em><math-up|cov>>>.
    This gives <math|b*q<rsup|m>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ursell.cluster_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L148-L183>.

  <strong|Lemma 4.10 (pinned bounds; III.5.3(a),(b)).> Under
  III.5.3\<#2019\>s hypotheses, both pinned tails are at most
  <math|\<gamma\>*q<rsup|m>/<around|(|1-q|)>>. <em|Sketch:>

  <\itemize-minus>
    <item>If <math|\<phi\><rsup|T><rsub|R><around|(|z|)>\<neq\>0>, then
    <math|G<rsub|R><around|(|z|)>> is connected, so
    <math|<math-up|cov><rsub|B><around|(|X<around|(|z|)>|)>\<leqslant\><big|sum><rsub|a><math-up|cov><rsub|B><around|(|X<rsub|z<rsub|a>>|)>>.

    <item>Apply Lemma 4.9 with <math|Q=<around|{|i:x\<in\>X<rsub|i>|}>>,
    where <math|b=\<gamma\>> by the site condition at <math|x>, and sum the
    geometric tail.

    <item>The set version (b) follows in the same way from a count of
    distinct-label forests.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Ursell.connected_pay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L194-L211>,
  <hlink|<verbatim|Ursell.log_hit_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L224-L243>,
  <hlink|<verbatim|Trees.touch_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Distinct.lean#L245-L276>.
  <em|(proof read; distinct-label forest count statement only)>

  <strong|Lemma 4.11 (from finite to arbitrary label sets; III.5.4).> Under
  III.5.4\<#2019\>s hypotheses, the gas and cluster series converge
  absolutely, and <math|\<Xi\>=exp <around|(|<text|cluster
  series>|)>\<gtr\>0>. <em|Sketch:>

  <\itemize-minus>
    <item>Every support is nonempty, so <math|<big|sum><rsub|i><around|\||w<rsub|i>|\|>*e<rsup|<around|(|a+\<delta\>|)><math-up|cov>>\<leqslant\>n<rsup|4>*\<gamma\>>.
    Hence <math|<big|sum><rsub|s><big|prod><rsub|i\<in\>s><around|\||w<rsub|i>|\|>\<leqslant\>e<rsup|n<rsup|4>*\<gamma\>>>,
    and the cluster series has absolute sum
    <math|\<leqslant\>n<rsup|4>*\<gamma\>/<around|(|1-q|)>>.

    <item>On a finite <math|D\<subseteq\>\<iota\>> the hypotheses restrict,
    and III.5.1 applies with <math|C=n<rsup|4>*\<gamma\>>.

    <item>Let the finite subsets <math|D\<subseteq\>\<iota\>> increase by
    inclusion and use dominated convergence for both series; the dominating
    budgets do not depend on <math|D>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Gas.finite_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L29-L41>,
  <hlink|<verbatim|Gas.price_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Log.lean#L114-L149>,
  <hlink|<verbatim|Product.everyone_ne>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L43-L51>,
  <hlink|<verbatim|Product.set_products>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Product.lean#L53-L64>.

  <subsection|4.5 Deleted regions and forced
  polymers><label|45-deleted-regions-and-forced-polymers>

  <strong|Lemma 4.12 (III.5.5).> Under III.5.5\<#2019\>s hypotheses, deleting
  polymers meeting <math|Y> multiplies the gas by <math|e<rsup|-p>>, with
  <math|<around|\||p|\|>\<leqslant\><around|\||Y|\|>*\<gamma\>/<around|(|1-q|)>>
  and the stated cluster tails. <em|Sketch:>

  <\itemize-minus>
    <item>The cluster terms of <math|w<rsup|Y>> are those of <math|w> minus
    the terms whose union meets <math|Y>.

    <item>The removed terms are bounded by Lemma 4.10 with <math|m=0>, summed
    over <math|x\<in\>Y>.

    <item>Apply III.5.4 to both gases; <math|<around|\||w<rsup|Y>|\|>\<leqslant\><around|\||w|\|>>,
    so <math|w<rsup|Y>> satisfies the same hypotheses.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Gas.restores_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L69-L95>,
  <hlink|<verbatim|Gas.missing_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L40-L63>.

  <strong|Lemma 4.13 (multiplicities on a fixed set).> For a finite set
  <math|s>, if <math|0\<leqslant\>\<sigma\>\<less\>1> and
  <math|0\<leqslant\>w<rsub|i>\<leqslant\>\<sigma\>> for <math|i\<in\>s>,
  then <math|<big|sum><rsub|<around|(|n<rsub|i>|)>\<in\>\<bbb-N\><rsub|\<geqslant\>1><rsup|s>><big|prod><rsub|i\<in\>s>w<rsub|i><rsup|n<rsub|i>>/n<rsub|i>!\<leqslant\><big|prod><rsub|i\<in\>s><around*|(|w<rsub|i>/<around|(|1-\<sigma\>|)>|)>>.
  <em|Sketch:> bound <math|w<rsub|i><rsup|n<rsub|i>>/n<rsub|i>!> by
  <math|w<rsub|i>*\<sigma\><rsup|n<rsub|i>-1>> and multiply the geometric
  sums. <em|Lean:> <hlink|<verbatim|Multiple.buy_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L60-L72>.

  <strong|Lemma 4.14 (multiset sums).> Let <math|X<rsub|i>> be nonempty,
  <math|w<rsub|i>\<geqslant\>0>, <math|a\<geqslant\>0>,
  <math|t\<geqslant\>1>, <math|0\<leqslant\>\<sigma\>\<less\>1>, and
  <math|e<rsub|i>\<in\>\<bbb-R\>>. Suppose
  <math|<math-up|Ready><around*|(|t*<space|0.17em>w*<space|0.17em>e<rsup|e>/<around|(|1-\<sigma\>|)>;a,\<gamma\>,\<delta\>,q|)>>
  and <math|\<gamma\>\<leqslant\>\<sigma\>>. Then the sum over multisets with
  connected support through <math|x>, satisfying a predicate <math|Q> on
  which <math|<big|sum>n<rsub|i>*e<rsub|i>\<geqslant\>v>, with total
  multiplicity <math|\<geqslant\>m>, of <math|e<rsup|a<space|0.17em><math-up|cov><rsub|B>(\<cup\>)>*<big|prod>w<rsub|i><rsup|n<rsub|i>>/n<rsub|i>!>,
  is at most <math|t<rsup|-m>*e<rsup|-v>*\<gamma\>/<around|(|1-q|)>>.
  <em|Sketch:>

  <\itemize-minus>
    <item>Each weight <math|t*w<rsub|i>*e<rsup|e<rsub|i>>*e<rsup|a<space|0.17em><math-up|cov><rsub|B><around|(|X<rsub|i>|)>>>
    is at most <math|\<sigma\>>, by the site condition at a point of its
    nonempty support.

    <item>Connectedness bounds the union cover by the sum of the individual
    covers; multiplicities are at least one. Lemma 4.13 then sums the
    multiplicities at cost <math|1/<around|(|1-\<sigma\>|)>> per label, and
    III.5.3(b) sums the connected sets.

    <item>The factor <math|t<rsup|<big|sum>n>*e<rsup|<big|sum>n*e>\<geqslant\>t<rsup|m>*e<rsup|v>>
    is extracted on the selected multisets.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Multiple.estimates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L135-L169>.

  <strong|Lemma 4.15 (III.5.6).> Under III.5.6\<#2019\>s hypotheses, the
  pinned multiset sum containing a forced label is at most
  <math|t<rsup|-m>*e<rsup|-\<mu\>>*\<eta\>/<around|(|1-q<rprime|'>|)>>.
  <em|Sketch:>

  <\itemize-minus>
    <item>The first-level clusters satisfy a site condition with constant
    <math|\<gamma\>/<around|(|1-q|)>> at exponent
    <math|A+\<delta\><rprime|'>>, by III.5.3(a) with <math|m=0>; the forced
    polymers satisfy one with constant <math|c>.

    <item>Join the two alphabets, scaling the weights by
    <math|t*e<rsup|\<mu\>>/<around|(|1-\<sigma\>|)>> and
    <math|t/<around|(|1-\<sigma\>|)>> respectively; the resulting constant is
    at most <math|\<eta\>>.

    <item>Apply Lemma 4.14 with <math|e=\<mu\>> on forced labels; the
    presence of a forced label gives <math|v=\<mu\>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|OmitClusters.restore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Omissions.lean#L48-L100>,
  <hlink|<verbatim|Labels.together>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Labels.lean#L83-L96>.

  <subsection|4.6 Packets and the large-coupling
  numerics><label|46-packets-and-the-large-coupling-numerics>

  <strong|Lemma 4.16 (animals and covers).> In the setting of III.5.7:

  <\itemize-minus>
    <item>For every <math|k\<in\>\<bbb-N\>>, the number of connected packets
    with <math|k> seeds whose dome contains <math|x> is at most
    <math|K<rsub|<math-up|hit>><around|(|K<rsub|<math-up|step>><rsup|2>|)><rsup|k>>.

    <item><math|<math-up|cov><rsub|B><around|(|D<around|(|A|)>|)>\<leqslant\><around|\||A|\|>*<space|0.17em><around|(|2*l+3|)><rsup|4>>
    for connected <math|A>.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item>A connected packet is the vertex set of a walk of length
    <math|2*<around|(|k-1|)>>. The walk runs in the graph of seeds whose
    skins can meet, which has degree <math|\<leqslant\>K<rsub|<math-up|step>>>.
    It starts at one of at most <math|K<rsub|<math-up|hit>>> seeds whose skin
    contains <math|x>.

    <item>For <math|B\<geqslant\>1>, a skin lies in a ball of radius
    <math|l*B+1\<leqslant\><around|(|l+1|)>*B>, covered by
    <math|<around|(|2*l+3|)><rsup|4>> balls of radius <math|B>. For
    <math|B=0>, its connected location set lies in the radius-<math|1> ball
    and costs at most <math|3<rsup|4>\<leqslant\><around|(|2*l+3|)><rsup|4>>
    singleton balls. A connected union costs at most the sum.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Packets.stores_count>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L260-L269>,
  <hlink|<verbatim|Animals.animals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L122-L137>,
  <hlink|<verbatim|Packets.cover_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L171-L176>.
  <em|(statement only for the animal count; covering proof read)>

  <strong|Lemma 4.17 (III.5.7(a)).> Under III.5.7(a)\<#2019\>s hypotheses,
  the packet tail is at most <math|K<rsub|<math-up|hit>>*C*q<rsup|max
  <around|(|1,m|)>>/<around|(|1-q|)>>. <em|Sketch:>

  <\itemize-minus>
    <item>On a connected packet, <math|p<rsub|A>*e<rsup|a<space|0.17em><math-up|cov>>\<leqslant\>C<around*|(|e<rsup|s-g+a*<around|(|2*l+3|)><rsup|4>>|)><rsup|<around|\||A|\|>>>.

    <item>With the count of Lemma 4.16, sum the geometric series
    (<hlink|<verbatim|budget_count_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Basic.lean#L143-L163>).

    <item>Connected packets have at least one seed; hence <math|max
    <around|(|1,m|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Packets.packet_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L66-L105>,
  <hlink|<verbatim|Packets.cover_income>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L42-L53>.

  <strong|Lemma 4.18 (III.5.7(b)).> Under III.5.7(b)\<#2019\>s hypotheses,
  the mixed-word sum has the bound stated there. <em|Sketch:>

  <\itemize-minus>
    <item><em|Ready.> Inflate the weights to
    <math|p<rsub|A>*e<rsup|2*\<varepsilon\>*e<rsub|s>\|A\|+\<mu\><rsub|s><around|\||A|\|>>>
    and <math|w<rsub|i>*e<rsup|2*\<varepsilon\>*\<lambda\><rsub|i>>>. The
    joint alphabet then satisfies Ready at exponent
    <math|a+2*\<varepsilon\>>: packets by Lemma 4.17, optional labels by
    hypothesis, and the constants add up to
    <math|\<gamma\><rsub|<math-up|root>>>.

    <item><em|Connected sets.> III.5.3(b) sums the connected sets.

    <item><em|Extractions.>

    <\itemize-minus>
      <item><math|<around|(|1+<math-up|ch>|)><rsup|k>\<leqslant\>\<varepsilon\><rsup|-k>*k!<space|0.17em>e<rsup|\<varepsilon\>>*e<rsup|\<varepsilon\><space|0.17em><math-up|ch>>>;

      <item>one of the two factors <math|e<rsup|\<varepsilon\><space|0.17em><math-up|ch>>>
      of the inflation gives <math|e<rsup|\<varepsilon\>*T>>;

      <item>the marks give <math|e<rsup|\<mu\><rsub|s>*r>>.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Mixed.ready_vertices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L95-L122>,
  <hlink|<verbatim|Mixed.mixed_hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L153-L189>,
  <hlink|<verbatim|Reserves.sets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L97-L135>,
  <hlink|<verbatim|Reserves.reserve_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Reserves.lean#L34-L56>.

  <strong|Lemma 4.19 (III.5.8).> For fixed numerical parameters satisfying
  III.5.8, all its packet and tree conditions hold for sufficiently large
  <math|x>, uniformly in volume. <em|Sketch:>

  <\itemize-minus>
    <item><em|Domination.> <math|D<space|0.17em><math-up|bill><rsup|d>\<leqslant\>P<around|(|\<beta\><rsub|F>|)><rsup|e>>
    eventually, for every <math|e\<gtr\>0>, since <math|<around|(|log
    \<beta\>|)><rsup|2*d>=e<rsup|2*d*log log \<beta\>>> is eventually below
    <math|e<rsup|e<around|(|log log \<beta\>|)><rsup|2>>>. Also
    <math|K<rsub|<math-up|hit>>,K<rsub|<math-up|step>><rsup|2>\<leqslant\>e<rsup|M/16>>,
    because <math|K<rsub|<math-up|step>>\<leqslant\><math-up|const>\<cdot\><math-up|bill><rsup|4>>.

    <item><em|Ratio.> <math|\<rho\>\<leqslant\>e<rsup|M/16>*e<rsup|M/16-M+M/16>\<leqslant\>e<rsup|-M/2>>.

    <item><em|Gain.> <math|\<beta\>\<geqslant\>u*\<beta\><rsub|F>> gives
    <math|\<beta\>*\<mu\>*t<rsup|2>\<geqslant\>\<mu\>*u*P<around|(|\<beta\><rsub|F>|)><rsup|2>>,
    because <math|\<beta\><rsub|F>*t<rsup|2>=P<around|(|\<beta\><rsub|F>|)><rsup|2>>.

    <item><em|Assembly.> For (b), subtract the mark <math|M/2> from the gain
    and apply (a) with <math|\<mu\>/2>; the remaining gain is at least
    <math|M/2>. For (c), use the step-estimator\<#2019\>s grant before
    applying the numerical estimates.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Delay.monitor_pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L74-L101>,
  <hlink|<verbatim|Delay.step_delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L128-L156>,
  <hlink|<verbatim|Delay.fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Delay.lean#L165-L214>,
  <hlink|<verbatim|Buy.quoted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Buy.lean#L67-L103>,
  <hlink|<verbatim|Grant.order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L52-L71>.
  <em|(proof read; the grant of III.10 statement only)>

  <subsection|4.7 The logarithm by deletion><label|47-the-logarithm-by-deletion>

  <strong|Lemma 4.20 (deletion identity).> For the gas <math|Z<rsub|u>> of
  III.5.9(a) and <math|x\<in\>B>:

  <\equation*>
    Z<rsub|u><around|(|B|)>=Z<rsub|u>*<around|(|B\<setminus\><around|{|x|}>|)>+<big|sum><rsub|P\<subseteq\>B,P\<ni\>x>\<varphi\><rsub|u><around|(|P|)>*<space|0.17em>Z<rsub|u>*<around|(|B\<setminus\>P|)>,<space|2em>\<varphi\><rsub|u><around|(|P|)>=<big|sum><rsub|i:<space|0.17em>X<rsub|i>=P>u<rsub|i>,
  </equation*>

  and <math|Z<rsub|u><around|(|\<emptyset\>|)>=1>. <em|Sketch:>

  <\itemize-minus>
    <item>At most one member of a disjoint family contains <math|x>; removing
    it removes its support.

    <item>The identity holds exactly for finite truncations of
    <math|\<iota\>> and passes to the absolutely convergent limit.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|ReLog.stock_deletion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L68-L114>,
  <hlink|<verbatim|ReLog.shelf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L144-L163>.

  <strong|Lemma 4.21 (the incidence algebra).> Let <math|J> be finite and let
  <math|w> satisfy the weight assumptions of III.5.9(a). For set functions on
  <math|J> define:

  <\itemize-minus>
    <item><math|<around|(|f\<ast\>g|)><around|(|T|)>=<big|sum><rsub|P\<cup\>Q=T>f<around|(|P|)>*g<around|(|Q|)>>;

    <item><math|<wide|f|^><around|(|B|)>=<big|sum><rsub|A\<subseteq\>B>f<around|(|A|)>>,
    so that <math|<wide|f\<ast\>g|^>=<wide|f|^><wide|g|^>>;

    <item><math|<around|\<\|\|\>|f|\<\|\|\>><rsub|w>=<big|sum><rsub|A>w<around|(|A|)><around|\||f<around|(|A|)>|\|>>.
  </itemize-minus>

  Then:

  <\itemize-minus>
    <item><math|<around|\<\|\|\>|\<cdummy\>|\<\|\|\>><rsub|w>> is
    submultiplicative on functions supported on sets containing a common
    point <math|x>.

    <item>For such <math|f> with <math|<around|\<\|\|\>|f|\<\|\|\>><rsub|w>\<less\>1>,
    <math|\<lambda\><around|(|f|)>=<big|sum><rsub|n\<geqslant\>0>f<rsup|\<ast\><around|(|n+1|)>>/<around|(|n+1|)>>
    satisfies <math|<wide|\<lambda\><around|(|f|)>|^>=-log
    <around|(|1-<wide|f|^>|)>> and <math|<around|\<\|\|\>|\<lambda\><around|(|f|)>|\<\|\|\>><rsub|w>\<leqslant\>-log
    <around|(|1-<around|\<\|\|\>|f|\<\|\|\>><rsub|w>|)>>.

    <item>If <math|f> and <math|F> are supported on sets containing <math|x>,
    <math|<around|\||f|\|>\<leqslant\>F> pointwise and
    <math|<around|\<\|\|\>|F|\<\|\|\>><rsub|w>\<less\>1>, then
    <math|<around|\||\<lambda\><around|(|f|)>|\|>\<leqslant\>\<lambda\><around|(|F|)>>.
  </itemize-minus>

  <em|Sketch:> cumulative sums turn union convolution into multiplication.
  Two nonzero factors pinned at <math|x> have intersecting supports, so the
  weight inequality gives submultiplicativity. Apply it to convolution powers
  and sum <math|<big|sum><rsub|n\<geqslant\>1>q<rsup|n>/n=-log
  <around|(|1-q|)>> for <math|q\<less\>1>; termwise absolute domination gives
  the last assertion.

  <em|Lean:> <hlink|<verbatim|ReLog.crop_glue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L118-L134>,
  <hlink|<verbatim|ReLog.lamp_shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L169-L176>,
  <hlink|<verbatim|ReLog.lamp_cropped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L178-L196>,
  <hlink|<verbatim|ReLog.lamp_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L197-L209>.

  <strong|Lemma 4.22 (the induction).> Let <math|J> be finite, <math|w>
  satisfy III.5.9(a)\<#2019\>s weight assumptions, and <math|a\<geqslant\>0>.
  Let <math|U,z> be functions of supports with <math|U\<geqslant\>0>,
  <math|<around|\||z|\|>\<leqslant\>U>, and
  <math|<big|sum><rsub|P\<ni\>x>w<around|(|P|)>*U<around|(|P|)>*e<rsup|a<around|\||P|\|>>\<leqslant\>1-e<rsup|-a>>
  for every <math|x>. Suppose <math|Z,Y> satisfy the deletion identities with
  activities <math|-U,-z>, respectively, and
  <math|Z<around|(|\<emptyset\>|)>=Y<around|(|\<emptyset\>|)>=1>. Then for
  every <math|B>:

  <\itemize-minus>
    <item><math|Z<around|(|B|)>\<gtr\>0> and <math|Y<around|(|B|)>\<gtr\>0>;

    <item><math|<around|\||\<lambda\><rsub|Y><around|(|B|)>|\|>\<leqslant\>\<lambda\><rsub|Z><around|(|B|)>>;

    <item><math|<big|sum><rsub|A\<subseteq\>B,A\<ni\>x>w<around|(|A|)>*\<lambda\><rsub|Z><around|(|A|)>\<leqslant\>a>
    for <math|x\<in\>B>.
  </itemize-minus>

  <em|Sketch:> strong induction on <math|B>. The empty region is immediate.
  For nonempty <math|B>, pick <math|x\<in\>B>.

  <\itemize-minus>
    <item>Define <math|f<rsub|x>> on subsets of <math|B>, extended by zero on
    other supports, by Möbius inversion from
  </itemize-minus>

  <\equation*>
    <wide|f|^><rsub|x><around|(|A|)>=<big|sum><rsub|P\<subseteq\>A,P\<ni\>x>U<around|(|P|)>*exp
    <space|-0.17em><around*|(|<big|sum><rsub|T\<subseteq\>A\<setminus\><around|{|x|}>,T\<cap\>P\<neq\>\<emptyset\>>\<lambda\><rsub|Z><around|(|T|)>|)>,<space|2em>A\<subseteq\>B.
  </equation*>

  The conditions <math|x\<in\>P\<subseteq\>A> make <math|f<rsub|x>> supported
  on sets containing <math|x>. The deletion identity gives
  <math|Z<around|(|A|)>=Z*<around|(|A\<setminus\><around|{|x|}>|)>*<around|(|1-<wide|f|^><rsub|x><around|(|A|)>|)>>.

  <\itemize-minus>
    <item>By submultiplicativity of <math|w> and the induction hypothesis at
    the points of <math|P>, <math|<around|\<\|\|\>|f<rsub|x>|\<\|\|\>><rsub|w>\<leqslant\><big|sum><rsub|P\<ni\>x>w<around|(|P|)>*U<around|(|P|)>*e<rsup|a<around|\||P|\|>>\<leqslant\>1-e<rsup|-a>>.
    Hence <math|Z<around|(|B|)>\<gtr\>0>.

    <item>The pieces of <math|-log Z> on sets containing <math|x> are
    <math|\<lambda\><around|(|f<rsub|x>|)>>, with
    <math|<around|\<\|\|\>|\<lambda\><around|(|f<rsub|x>|)>|\<\|\|\>><rsub|w>\<leqslant\>-log
    e<rsup|-a>=a>.

    <item>The same computation for <math|Y>, with
    <math|<around|\||f<rsup|Y><rsub|x>|\|>\<leqslant\>f<rsub|x>>, gives the
    domination.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|ReLog.leash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L180-L211>,
  <hlink|<verbatim|ReLog.matures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L75-L106>,
  <hlink|<verbatim|ReLog.swept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L224-L233>,
  <hlink|<verbatim|ReLog.catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L217-L228>.

  <strong|Lemma 4.23 (deleting sites).> Under III.5.9(a)\<#2019\>s
  hypotheses, with <math|Z=Z<rsub|u>> and
  <math|\<lambda\>=\<lambda\><rsub|u>>, <math|-log
  Z*<around|(|J\<setminus\>Q|)>=<big|sum><rsub|A\<cap\>Q=\<emptyset\>>\<lambda\><around|(|A|)>>,
  hence <math|l=<big|sum><rsub|A\<cap\>Q\<neq\>\<emptyset\>>\<lambda\><around|(|A|)>>,
  and <math|<around|\||l|\|>\<leqslant\><big|sum><rsub|x\<in\>Q><big|sum><rsub|A\<ni\>x>w<around|(|A|)>*\<lambda\><rsub|-v><around|(|A|)>\<leqslant\>a<around|\||Q|\|>>
  because <math|w\<geqslant\>1>. <em|Lean:>
  <hlink|<verbatim|ReLog.omitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L235-L271>.

  <strong|Lemma 4.24 (at a coarse field; III.5.9(b)).> Under
  III.5.9(b)\<#2019\>s hypotheses, its masked logarithm coefficients satisfy
  the common envelope and deletion-ratio bounds. <em|Sketch:>

  <\itemize-minus>
    <item><math|e<rsup|A<space|0.17em><math-up|cov><rsub|M>>> is an
    admissible weight, since <math|<math-up|cov><rsub|M>> is subadditive on
    overlapping unions.

    <item><math|a*<around|(|2*M+1|)><rsup|4>\<leqslant\>1> gives
    <math|a<around|\||X|\|>\<leqslant\><math-up|cov><rsub|M><around|(|X|)>>,
    which converts the condition into III.5.9(a).

    <item><em|Masking.> If <math|P> contains a flagged site <math|y>, the
    masked gas does not see <math|y>, so its Möbius piece at <math|P>
    vanishes.

    <item>The raw pieces depend only on labels supported in <math|P>, so they
    are local in <math|P> and gauge invariant. Countability makes the gas
    sums Borel; finite Möbius inversion preserves this. Multiplying by the
    healthy-region indicator gives the masked coefficients, including the
    external flag tests.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|ReLog.intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L157-L183>,
  <hlink|<verbatim|ReLog.native_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L26-L32>,
  <hlink|<verbatim|ReLog.permits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L51-L65>,
  <hlink|<verbatim|ReLog.retain_mask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L118-L143>,
  <hlink|<verbatim|ReLog.retest_meas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L104-L114>.

  <strong|Lemma 4.25 (trace-log; III.5.10).> Under III.5.10\<#2019\>s
  hypotheses, the trace-log series converges absolutely to <math|log det
  <around|(|I+S|)>>, and both determinants are positive. <em|Sketch:>

  <\itemize-minus>
    <item><math|A*C=A<rsup|1/2>*<around|(|A<rsup|1/2>*C*A<rsup|1/2>|)>*A<rsup|-1/2>>
    is similar to a symmetric matrix.

    <item>Its eigenvalues <math|\<lambda\>> are those of <math|1+S>, and
    <math|<around|\||\<lambda\>-1|\|>\<leqslant\><around|\<\|\|\>|S|\<\|\|\>><rsub|\<infty\>\<to\>\<infty\>>\<leqslant\>q>.

    <item>Hence <math|log det <around|(|1+S|)>=<big|sum>log
    \<lambda\>=<big|sum><rsub|n><around|(|-1|)><rsup|n+1><math-up|tr><space|0.17em>S<rsup|n>/n>,
    and <math|det C=det <around|(|1+S|)>/det A\<gtr\>0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Round.twins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L74-L93>,
  <hlink|<verbatim|Round.twin_log>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Round.lean#L95-L144>.

  <subsection|4.8 The sector decomposition><label|48-the-sector-decomposition>

  <strong|Lemma 4.26 (allocations and columns).> An allocation is the
  partition of unity with global seed tests specified in III.5.11. It
  satisfies <math|0\<leqslant\>D<rsub|A>\<leqslant\>1>; where the likelihood
  is positive, <math|D<rsub|A>\<ne\>0> implies the local sector
  prerequisites.

  <\itemize-minus>
    <item>The hard allocation, the indicator of the actual booking, is one
    example.

    <item>A smooth decreasing cutoff <math|\<chi\>:\<bbb-R\>\<to\><around|[|0,1|]>>,
    equal to <math|1> on <math|<around|(|-\<infty\>,1|]>> and <math|0> on
    <math|<around|[|4,\<infty\>|)>>, gives another allocation when
    <math|W,t\<gtr\>0>.

    <item>For every coarse <math|V> and <math|\<beta\>\<in\>\<bbb-R\>>, if
    the step satisfies its branch conditions and <math|g> is integrable and
    gauge invariant, then <math|<big|sum><rsub|A><math-up|out><rsub|A><around|(|V|)>=<math-up|push><rsub|\<beta\>>g<around|(|V|)>>.
  </itemize-minus>

  <em|Sketch:> sum the allocation before integrating, then apply the
  tree-gauge integration identity for <math|g> and the gauge-covariant block
  kernel.

  <em|Lean:> <hlink|<verbatim|Allocation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36>,
  <hlink|<verbatim|Allocation.hard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L68-L78>,
  <hlink|<verbatim|Chi.canonical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L95-L101>,
  <hlink|<verbatim|push_columns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Output.lean#L102-L114>.

  <strong|Lemma 4.27 (cut-out identity).> For a representation adapted to the
  tube as in III.5.11, let <math|\<Delta\><rsub|<math-up|cut>><around|(|U,V|)>>
  be the orientation-averaged fine cut-row action minus its coarse
  counterpart. Then

  <\equation*>
    <text|kernel>\<times\>\<rho\><rsub|R>=<math-up|sieve><around|(|V|)>\<cdot\><math-up|exposed><around|(|U|)>\<cdot\><math-up|kernel>\<cdot\>e<rsup|-\<beta\>*<space|0.17em>\<Delta\><rsub|<math-up|cut>><around|(|U,V|)>>.
  </equation*>

  <\itemize-minus>
    <item>In the input action, split the cut rows of the upper stage,
    averaged over the lattice symmetries, into two parts:

    <\itemize-minus>
      <item>their coarse counterpart at <math|V>, which gives the factor
      <math|<math-up|sieve><around|(|V|)>>, taken out of the integral;

      <item>the difference <math|\<Delta\><rsub|<math-up|cut>><around|(|U,V|)>>,
      which is kept with the block kernel.
    </itemize-minus>

    <item>The rest of the action and the polymer gas form
    <math|<math-up|exposed><around|(|U|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Presented.expel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L40-L56>,
  <hlink|<verbatim|Presented.use_gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L66-L78>.

  <strong|Lemma 4.28 (energy factorization).> For a step satisfying its
  branch conditions,

  <\equation*>
    <math-up|kernel>\<cdot\>e<rsup|-\<beta\>*<space|0.17em>\<Delta\><rsub|<math-up|cut>>>=\<pi\><rsub|\<beta\>>*<space|0.17em>e<rsup|-\<beta\>*<space|0.17em><wide|\<cal-E\>|\<bar\>><rsub|A>>\<cdot\><around|(|<text|likelihood>|)>*<space|0.17em>e<rsup|-\<beta\>*<space|0.17em><wide|\<cal-E\>|\<bar\>><rsup|<math-up|rest>><rsub|A>>,
  </equation*>

  where bars denote averages over the lattice symmetries, applied to the
  rotated packet. On the tree-gauge slice, the global seed tests and positive
  likelihood imply the local prerequisites in every orientation. The point
  charge therefore gives <math|<wide|\<cal-E\>|\<bar\>><rsub|A>\<geqslant\>\<kappa\>*t<rsup|2><around|\||A|\|>>
  wherever <math|D<rsub|A>\<ne\>0> and the likelihood is positive;
  zero-likelihood terms vanish. <em|Lean:>
  <hlink|<verbatim|Oriented.enters_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L185-L208>,
  <hlink|<verbatim|Oriented.mean_pays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L210-L219>.

  <strong|Lemma 4.29 (III.5.11).> Under III.5.11\<#2019\>s funding,
  adaptation and point-charge assumptions, the sector outputs sum to the
  pushforward and satisfy its per-seed bound. <em|Sketch:>

  <\itemize-minus>
    <item>Express each signed sector output using Lemma 4.27; its sum is the
    pushforward by Lemma 4.26.

    <item>Bound its absolute value by the integral of the absolute exposed
    density. Apply Lemma 4.28 with <math|\<beta\>\<geqslant\>0> to extract
    <math|\<pi\><rsub|\<beta\>>*e<rsup|-\<beta\>*\<kappa\>*t<rsup|2><around|\||A|\|>>>.

    <item>Bounded Borel factors give bounded Borel sector integrals at each
    fixed volume.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Oriented.turn_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L267-L297>,
  <hlink|<verbatim|Presented.portionCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L157-L210>.

  <strong|Lemma 4.30 (one <math|\<kappa\>>).> The uniform point-charge
  conclusions of III.5.11 hold. <em|Sketch:> the general conclusion uses the
  step-estimator\<#2019\>s energy grant (III.10). At a committed pair of
  scales, use the run\<#2019\>s energy hypothesis (III.1); its compatibility
  conditions identify the representation\<#2019\>s paths, clip and threshold
  with those of the tube. The constant is chosen before the volume, step and
  representation.

  <em|Lean:> <hlink|<verbatim|points_grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L37-L51>,
  <hlink|<verbatim|Consumer.bought>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Consumer.lean#L42-L65>,
  <hlink|<verbatim|charged_at>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L61-L66>.
  <em|(proof read; the inputs from III.1 and III.10 statement only)>

  <subsection|4.9 Matrices><label|49-matrices>

  <strong|Lemma 4.31 (III.5.12).> Under III.5.12\<#2019\>s hypotheses, the
  shifted inverse has the stated pointwise exponential bound. <em|Sketch:>
  fix <math|j> and put <math|s<rsub|k>=e<rsup|\<theta\>*\<eta\>*d<around|(|a<rsub|k>,a<rsub|j>|)>>>
  and <math|w=s\<cdot\><around|(|M+u*I|)><rsup|-1>*e<rsub|j>>.

  <\itemize-minus>
    <item>Then <math|<around|(|M+u*I+F|)>*w=e<rsub|j>>, with
    <math|F<rsub|k*l>=M<rsub|k*l>*<around|(|s<rsub|k>/s<rsub|l>-1|)>>.

    <item>By convexity of <math|exp>, <math|<around|\||s<rsub|k>/s<rsub|l>-1|\|>\<leqslant\>\<theta\>*e<rsup|\<eta\>*d<around|(|a<rsub|k>,a<rsub|l>|)>>>.
    The Schur test then gives <math|<around|\||<around|\<langle\>|w,F*w|\<rangle\>>|\|>\<leqslant\>\<theta\>*C<around|\||w|\|><rsup|2>\<leqslant\><frac|r|2><around|\||w|\|><rsup|2>>.

    <item>Hence <math|min <around|(|1,r/2|)>*<around|(|1+u|)><around|\||w|\|><rsup|2>\<leqslant\>w<rsub|j>\<leqslant\><around|\||w|\|>>,
    and <math|<around|\||w<rsub|i>|\|>\<leqslant\><around|\||w|\|>> gives the
    claim.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Green.inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L188-L251>,
  <hlink|<verbatim|Green.diminishing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L135-L147>,
  <hlink|<verbatim|Green.schur>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L149-L168>.

  <strong|Lemma 4.32 (III.5.13).> Under III.5.13\<#2019\>s hypotheses, the
  window residual, inverse difference and covariance satisfy its weighted
  bounds. <em|Sketch:>

  <\itemize-minus>
    <item><math|E<rsub|i*j>=0> for <math|i\<in\>P<around|(|j|)>>, because
    column <math|j> of <math|<math-up|within><around|(|A|)>> solves the
    system on the window. So <math|E> lives at distances <math|\<gtr\>R>.

    <item>Pointwise decay at rate <math|\<theta\>*\<eta\>>, from III.5.12
    applied to <math|A> and to its principal submatrices, becomes row-sum
    decay at rate <math|\<nu\>> by the counting bound. This costs
    <math|\<Pi\><rsub|U>*<around|(|\<theta\>*\<eta\>-\<nu\>|)>>.

    <item>The far entries of <math|E> at the slower rate <math|\<mu\>> pay
    <math|e<rsup|-<around|(|\<nu\>-\<mu\>|)>*R>>.

    <item>Finally <math|<math-up|within>-A<rsup|-1>=A<rsup|-1>*E>, and the
    weighted Schur classes are closed under products.

    <item>Part (b) applies (a) uniformly along <math|t*A+<around|(|1-t|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Windows.stitched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L51-L69>,
  <hlink|<verbatim|Windows.inverse_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L124-L141>,
  <hlink|<verbatim|Windows.window_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L146-L169>,
  <hlink|<verbatim|Win.planePrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70>.

  <strong|Lemma 4.33 (spectral gap).> Fix <math|\<cal-T\>,\<cal-D\>> as in
  III.5.14. There is <math|0\<less\>r\<leqslant\>1> such that, for all
  sufficiently large <math|x>, all funded steps with this patch, coarse side
  <math|\<geqslant\>100*<around|(|1+B|)>> and the stated flag equality
  satisfy <math|r<around|\||v|\|><rsup|2>\<leqslant\><around|\||D*v|\|><rsup|2>>
  for every <math|v> supported on active coordinates. <em|Sketch:>

  <\itemize-minus>
    <item>Take an active bond. Its projected endpoints lie outside
    <math|D<rsub|10*B><around|(|A|)>>, so in an axial gauge the background
    <math|V> is within <math|\<delta\><around|(|x|)>\<to\>0> of <math|1> near
    the bond.

    <item>The Poincaré-type inequality of III.6 bounds the bond variable by
    flat curls and block averages near the block. These are the flat rows.

    <item>In this gauge, the transported flat rows differ from the
    untransported flat rows by <math|O<around|(|\<delta\>|)><around|\||v|\|><rsub|<math-up|loc>>>.

    <item>Square and sum with bounded overlap:
    <math|<around|\||v|\|><rsup|2>\<leqslant\>\<cal-V\>\|D*v\|<rsup|2>+o<around|(|1|)><around|\||v|\|><rsup|2>>,
    which gives <math|r=<around|(|2*<around|(|1+\<cal-V\>|)>|)><rsup|-1>>.

    <item>Then <math|<around|\<langle\>|v,<math-up|gram><space|0.17em>v|\<rangle\>>=<around|\||D*v|\|><rsup|2>+<around|\||v<rsub|<math-up|inactive>>|\|><rsup|2>\<geqslant\>r<around|\||v|\|><rsup|2>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Aff.inflow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L27-L69>,
  <hlink|<verbatim|Aff.surplus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L72-L113>,
  <hlink|<verbatim|Aff.decomposes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L134-L139>.
  <em|(proof read; per-bond comparison and III.6 inequality statement only)>

  <strong|Lemma 4.34 (decay).> Fix <math|\<cal-T\>,\<cal-D\>> as in III.5.14.
  There is <math|K\<gtr\>0>, uniform over all funded steps with that patch,
  all <math|V,A,F> and every real <math|x>, such that <math|D> and its
  unmasked version have weighted row and column bounds <math|K> at rate
  <math|\<alpha\>> equal to half the upper path-decay rate, and
  <math|<math-up|gram>> has bounds <math|K<rsup|2>+1>. Moreover
  <math|<math-up|gram><rsub|i*j>=0> at distances greater than
  <math|2*<around|(|<around|\<lfloor\>|B/100000|\<rfloor\>>+R<rsub|<math-up|pred>><around|(|\<cal-D\>|)>+2|)>>.
  <em|Sketch:>

  <\itemize-minus>
    <item>Pointwise exponential decay of the row coefficients comes from the
    path-sum bounds of the upper stage and from the block-constraint rows.

    <item>The counting bound converts it into row sums.

    <item>Products and sums give <math|<math-up|gram>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Aff.gram_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L165-L181>,
  <hlink|<verbatim|Aff.stencil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/IndexCost.lean#L120-L159>,
  <hlink|<verbatim|Aff.received>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Speed.lean#L138-L155>.

  <strong|Lemma 4.35 (III.5.14).> The uniform matrix and window conclusions
  of III.5.14 hold. <em|Sketch:> combine Lemmas 4.33 and 4.34 with the
  index-counting bound, then apply III.5.13(b). The windows have room
  <math|<around|\<lfloor\>|B/4|\<rfloor\>>\<to\>\<infty\>> as
  <math|x\<to\>\<infty\>>.

  <em|Lean:> <hlink|<verbatim|Aff.bedrock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Bedrock.lean#L142-L158>,
  <hlink|<verbatim|Aff.install_promises>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Warsaw.lean#L25-L42>.

  <strong|Lemma 4.36 (auxiliary Gaussian estimates).> Fix the step-estimator
  and patch of III.5.14. The auxiliary Gaussian
  (<hlink|<verbatim|Mint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Mint.lean#L22-L28>)
  uses the completed precision <math|G=D<rsup|T>*D+I<rsub|<math-up|inactive>>>,
  the affine constant <math|h> (including the clipped frozen coordinates),
  source <math|D<rsup|T>*h>, and selected mean
  <math|\<mu\>=-<math-up|within><around|(|G|)><rsup|T>*D<rsup|T>*h>.

  For the field estimates below, assume a funded step with this patch, coarse
  side <math|\<geqslant\>100*<around|(|1+B|)>>, and the flag equality of
  III.5.14. Write <math|H<rsub|n,p>=B<rsup|p>*t<rsup|n>>. A <em|reserve>
  <math|C<rsub|<math-up|res>>\<gtr\>0> supplies uniform bounds on the upper
  and lower row sums and the coarse predicted fields. A <em|compatible pair
  of quadratic forms> means upper and lower forms attached to the tube,
  satisfying its diagonal and renormalization identities, the two quadratic
  bounds and orientation covariance. The shift and plateau estimates assume
  such a pair and the window bounds of III.5.13(b). Each large-<math|x>
  threshold is uniform in the remaining volume and field data.

  <\itemize-minus>
    <item><hlink|<verbatim|Aff.escape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L222-L241>:
    With a compatible pair, for every coarse Lie-algebra field <math|b> and
    every tree-gauge forest, the stationary linear extension solves the
    untruncated flat fine-row and block-constraint equations with the
    predicted coarse linear rows as right-hand sides, in every orientation.
    This is an identity for those linear operators; it does not assert that
    <math|D*\<mu\>+h=0>.

    <item><hlink|<verbatim|Aff.velocity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L44-L97>,
    <hlink|<verbatim|Aff.shifted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Stint.lean#L100-L121>:
    Assume a reserve. Let <math|o\<nin\>D<rsub|20*B><around|(|A|)>> and let a
    gauge transform of <math|V> agree, on bonds anchored within <math|6*B> of
    <math|o>, with <math|exp b>, where <math|<around|\<\|\|\>|b|\<\|\|\>><rsub|\<infty\>>\<leqslant\>H<rsub|1,7>>.
    Let <math|v> be the inverse-gauge transport of the stationary extension
    minus the replica extension, restricted to active coordinates. Then
    <math|<around|\||\<mu\><rsub|i>-v<rsub|i>|\|>\<leqslant\>H<rsub|2,27>>
    whenever the column position is within <math|2*B> of <math|o>. At every
    row centred outside <math|D<rsub|20*B><around|(|A|)>>,
    <math|<around|\||<around|(|D*\<mu\>+h|)><rsub|i>|\|>\<leqslant\>H<rsub|2,29>>.

    <item><hlink|<verbatim|Jewels.night>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Hour.lean#L55-L116>:
    Assume a reserve <math|C<rsub|<math-up|res>>>, <math|W\<gtr\>0>, and the
    two numerical margins <math|C<rsub|<math-up|res>>/L<rsup|2>\<leqslant\>s<rsub|0>>
    and <math|C<rsub|<math-up|res>>+s<rsub|0>\<leqslant\><around|(|W/4|)><sqrt|p<rsub|0>>>,
    where <math|s<rsub|0>=<sqrt|c<rsub|<math-up|direct>>>/64>,
    <math|c<rsub|<math-up|direct>>> is the upper direct quadratic
    coefficient, and <math|p<rsub|0>\<gtr\>0> is the kernel penalty. There is
    <math|\<varepsilon\>\<gtr\>0> such that, for all sufficiently large
    <math|x>, the following holds when the frozen cutoff scale equals
    <math|B*t>. Reconstruct the fine field by inserting <math|exp
    <around|(|\<mu\>+z|)>> relative to the replica of <math|V> on active
    bonds and keeping the fixed tree-gauge slice field on the other bonds.
    For any fluctuation <math|z>, a fine cell whose projected anchor lies
    outside <math|D<rsub|20*B><around|(|A|)>> has plaquette chord
    <math|\<less\>t/4> if <math|<around|\||z<rsub|i>|\|>\<leqslant\>\<varepsilon\>*t>
    on coordinates anchored within <math|B> of that anchor. The same test at
    the anchor of a coarse bond outside <math|D<rsub|20*B><around|(|A|)>>
    gives wire chord <math|\<less\>W*t> and makes both likelihood cutoffs
    equal to <math|1>.

    <item><hlink|<verbatim|Aff.tap_open>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Draught.lean#L92-L114>:
    Fix an order <math|p\<in\>\<bbb-N\>> and <math|\<delta\>\<gtr\>0>. For
    all sufficiently large <math|x>, if every fine bond anchored within
    <math|B/2> of a given coarse-bond anchor has chord at most
    <math|H<rsub|1,p>>, then the frame and connector use their minimizing
    branches and the predicted coarse-bond chord is <math|\<less\>\<delta\>>,
    for every tag. The uniqueness of those minimizers is part of the branch
    hypotheses.

    <item><hlink|<verbatim|Aff.perturb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/DCompare.lean#L190-L207>:
    There is <math|K\<gtr\>0>, depending only on the step-estimator and
    patch, such that for every truncation radius <math|R> and every unmasked
    transported row <math|L<rsub|R,V>>, with
    <math|s<rsub|R>=R+R<rsub|<math-up|pred>><around|(|\<cal-D\>|)>+2>,
    <math|<around|\<\|\|\>|<around|(|L<rsub|R,V>-L<rsub|R,1>|)>*u|\<\|\|\>>\<leqslant\>K*<around|(|4*s<rsub|R>+1|)>*\<delta\>*C<rsub|u>>
    if <math|C<rsub|u>,\<delta\>\<geqslant\>0>,
    <math|<around|\<\|\|\>|u<rsub|j>|\<\|\|\>>\<leqslant\>C<rsub|u>> on fine
    bonds anchored within <math|s<rsub|R>+1> of that row, and all coarse-bond
    chords anchored within <math|4*s<rsub|R>+1> are at most <math|\<delta\>>.
    This compares with the flat background; it is not a Lipschitz estimate
    between arbitrary backgrounds.

    <item><hlink|<verbatim|Aff.arc_bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Ground.lean#L51-L130>:
    Assume a reserve and fix <math|p\<geqslant\>7>. For all sufficiently
    large <math|x>, take a row centred outside
    <math|D<rsub|2*B><around|(|A|)>> and a fine Lie-algebra field <math|u>
    bounded by <math|H<rsub|1,p>> on bonds anchored within <math|B>. If
    <math|U> agrees there with <math|exp <around|(|u|)><space|0.17em><math-up|replica><around|(|V|)>>,
    its nonlinear row value <math|F<around|(|U,V|)>> satisfies
    <math|<around|\<\|\|\>|F<around|(|U,V|)>|\<\|\|\>>\<leqslant\>H<rsub|1,p+4>>
    and <math|<around|\<\|\|\>|F<around|(|U,V|)>-F<around|(|<math-up|replica><around|(|V|)>,V|)>-L<rsub|V>*u|\<\|\|\>>\<leqslant\>H<rsub|2,2*p+6>>,
    where <math|L<rsub|V>> is the transported flat row at the prescribed
    truncation. This is the error estimate used in place of identifying
    <math|L<rsub|V>> with a derivative at <math|V>.

    <item><hlink|<verbatim|Aff.reserves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L41-L49>:
    For every step-estimator there exists a reserve
    <math|C<rsub|<math-up|res>>>. It is chosen before <math|L>; for each
    fixed <math|L>, its row and coarse-field bounds hold for all sufficiently
    large <math|x> and all funded steps of coarse side
    <math|\<geqslant\>100*<around|(|1+B|)>>.
  </itemize-minus>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The tree-graph argument is standard. The estimates must also retain
  arbitrary label sets, repeated occurrences, site pins and covering weights
  at the growing scale <math|B=<around|\<lceil\>|<around|(|log
  x|)><rsup|2>|\<rceil\>>>. The entropy factor
  <math|4*<around|(|2*B+1|)><rsup|4>> is sufficient because it grows only
  polynomially in <math|log x>.

  The gain scale is <math|P<around|(|\<beta\><rsub|F>|)><rsup|2>=e<rsup|2<around|(|log
  log \<beta\><rsub|F>|)><rsup|2>>>. It absorbs
  <math|<math-up|bill><rsup|d>P<around|(|\<beta\><rsub|F>|)><rsup|z>> for
  fixed <math|d> and <math|z\<less\>2>, but grows more slowly than every
  positive power of <math|\<beta\><rsub|F>>. The deletion route gives
  support-indexed logarithm coefficients and a common field-independent
  envelope; the graph route also gives occurrence tails and multiset bounds.
  Both give deletion ratios uniform in volume, although the full logarithm is
  extensive.

  The sector estimate needs global seed records to preserve the local
  point-charge prerequisites under lattice orientations. Its remainder
  <math|\<ell\><rsub|A>> has no volume-uniform bound here. For the Gaussian
  estimates, the substantive inputs are the gauge-fixed Poincaré inequality
  and control of the transported flat rows away from the flagged region.
  Finite range grows with <math|B>; uniform exponential row bounds provide
  the useful control.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|<math-up|SB><around|(|f;C|)>>>|<cell|<hlink|<verbatim|SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59-L60>>|<cell|<math|f\<geqslant\>0>
  summable, <math|<big|sum>f\<leqslant\>C>>>|<row|<cell|<math|<math-up|Hit><rsub|B><around|(|w;a,\<gamma\>|)>>>|<cell|<hlink|<verbatim|Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12-L13>>|<cell|site-sum
  condition>>|<row|<cell|<math|<math-up|cov><rsub|B>>,
  <math|<math-up|ball><rsub|B>>>|<cell|<hlink|<verbatim|coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69-L71>,
  <hlink|<verbatim|ballCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Animals.lean#L148>>|<cell|connected
  covering number; <math|<around|(|2*B+1|)><rsup|4>>>>|<row|<cell|<math|<math-up|Ready><around|(|w;a,\<gamma\>,\<delta\>,q|)>>>|<cell|<hlink|<verbatim|Trees.Ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Forest.lean#L31-L32>,
  <hlink|<verbatim|degreePrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Weigh.lean#L52>>|<cell|smallness
  of the cluster expansion>>|<row|<cell|<math|R\<subseteq\>>
  overlap>|<cell|<hlink|<verbatim|Ursell.Tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Clusters.lean#L59>,
  <hlink|<verbatim|blocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L22>>|<cell|incompatibility
  implies overlap; the overlap relation>>|<row|<cell|<math|G<rsub|R><around|(|z|)>>,
  <math|\<phi\><rsup|T><rsub|R><around|(|z|)>>>|<cell|<hlink|<verbatim|Ursell.pot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L32-L33>,
  <hlink|<verbatim|Ursell.coefficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Ursell.lean#L35>>|<cell|incompatibility
  graph of a tuple; Ursell coefficient>>|<row|<cell|<math|\<Xi\><around|(|w|)>>;
  cluster term; log series>|<cell|<hlink|<verbatim|Gas.total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L22>,
  <hlink|<verbatim|Gas.term>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L24>,
  <hlink|<verbatim|Gas.logSum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/FiniteLog.lean#L26>>|<cell|gas,
  its cluster terms and their sum>>|<row|<cell|<math|g<rsub|n>>,
  <math|\<ell\><rsub|m>>>|<cell|<hlink|<verbatim|Coef.gasRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L19>,
  <hlink|<verbatim|Coef.logRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Coef.lean#L20>>|<cell|coefficients
  of <math|\<Xi\>> and of the log series>>|<row|<cell|<math|w<rsup|Y>>,
  <math|p>>|<cell|<hlink|<verbatim|Gas.cut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L24>,
  <hlink|<verbatim|Gas.missing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Absence.lean#L25>>|<cell|weights
  off <math|Y>; clusters meeting <math|Y>>>|<row|<cell|multisets,
  <math|<big|prod>w<rsup|n>/n!>>|<cell|<hlink|<verbatim|Multiple.Reps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L26>,
  <hlink|<verbatim|manyW>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Copies.lean#L28-L29>>|<cell|labels
  with multiplicities>>|<row|<cell|packet <math|A>, number of seeds,
  <math|D<rsub|r><around|(|A|)>>>|<cell|<hlink|<verbatim|Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34-L37>,
  <hlink|<verbatim|shares>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L46>,
  <hlink|<verbatim|dome>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L44>>|<cell|finite
  set of typed seeds; radius-<math|r> neighbourhood of their
  locations>>|<row|<cell|connected packet, <math|K<rsub|<math-up|hit>>>,
  <math|K<rsub|<math-up|step>>>, <math|\<tau\><rsub|L>>>|<cell|<hlink|<verbatim|Packets.connected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L77>,
  <hlink|<verbatim|hitCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L215>,
  <hlink|<verbatim|stepCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L216>,
  <hlink|<verbatim|typesAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Packet.lean#L181>>|<cell|animal-counting
  constants>>|<row|<cell|<math|\<rho\>>, packet
  tail>|<cell|<hlink|<verbatim|ratioCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L28-L29>,
  <hlink|<verbatim|fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L34-L35>,
  <hlink|<verbatim|totalCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Charge.lean#L37-L38>>|<cell|per-seed
  ratio; tail of packet sums>>|<row|<cell|hypotheses of
  III.5.7(b)>|<cell|<hlink|<verbatim|Mixed.Costs.Buy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L47-L58>,
  <hlink|<verbatim|Mixed.Accounts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Mixed.lean#L84-L89>>|<cell|numerical
  list; weight bounds>>|<row|<cell|<math|B>, <math|\<beta\><rsub|F>>,
  <math|t>, <math|P>>|<cell|<hlink|<verbatim|radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>,
  <hlink|<verbatim|betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>,
  <hlink|<verbatim|fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>,
  <hlink|<verbatim|Vac.Numbers.P>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Vac/Treasury.lean#L72>>|<cell|<math|<around|\<lceil\>|<around|(|log
  x|)><rsup|2>|\<rceil\>>>; <math|x+b*log L>;
  <math|\<beta\><rsub|F><rsup|-1/2>*P<around|(|\<beta\><rsub|F>|)>>;
  <math|e<rsup|<around|(|log log s|)><rsup|2>>>>>|<row|<cell|<math|M>, gain
  <math|\<beta\>*\<mu\>*t<rsup|2>>>|<cell|<verbatim|hatWin>,
  <hlink|<verbatim|Grant.credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/ABSOLUTE_SUMS/Grants.lean#L48>>|<cell|guaranteed
  and actual gain per seed>>|<row|<cell|<math|Z<around|(|B|)>>,
  <math|\<lambda\><around|(|A|)>>>|<cell|<hlink|<verbatim|fumes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L122>,
  <hlink|<verbatim|locker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L46>,
  <hlink|<verbatim|pieces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Sprig.lean#L23-L28>>|<cell|disjoint-family
  gas; Möbius pieces of <math|-log Z>>>|<row|<cell|<math|f\<ast\>g>,
  <math|<wide|f|^>>, <math|<around|\<\|\|\>|f|\<\|\|\>><rsub|w>>,
  <math|\<lambda\><around|(|f|)>>>|<cell|<hlink|<verbatim|glue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L36>,
  <hlink|<verbatim|shed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L38>,
  <hlink|<verbatim|crop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L40>,
  <hlink|<verbatim|lamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L161>>|<cell|union
  convolution, cumulative sum, weighted norm, log
  series>>|<row|<cell|hypotheses of III.5.9>|<cell|<hlink|<verbatim|Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Leaves.lean#L45-L47>,
  <hlink|<verbatim|Deletion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L31-L34>,
  <hlink|<verbatim|Receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Deletion.lean#L39-L43>,
  <hlink|<verbatim|Sufficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Gas.lean#L168-L173>,
  <hlink|<verbatim|Fund>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L43-L49>,
  <hlink|<verbatim|Tags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/VACUUM_NORMALIZATION/Bulk.lean#L72-L77>>|<cell|weight,
  deletion identity, site conditions, coefficient
  properties>>|<row|<cell|allocation <math|D>; point
  charge>|<cell|<hlink|<verbatim|Allocation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L30-L36>,
  <hlink|<verbatim|PointCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Oriented.lean#L29-L32>>|<cell|partition
  of unity over packets; <math|\<cal-E\><rsub|A>\<geqslant\>\<kappa\>*t<rsup|2>>
  per seed>>|<row|<cell|<math|\<cal-E\><rsub|A>>; <math|c<rsub|A>>;
  <math|\<ell\><rsub|A>>; <math|\<pi\><rsub|\<beta\>>*e<rsup|-\<beta\>*\<kappa\>*t<rsup|2>*k>>>|<cell|<hlink|<verbatim|assessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L85>,
  <hlink|<verbatim|cutEntry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L145-L148>,
  <hlink|<verbatim|leftOver>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Presented.lean#L140-L143>,
  <hlink|<verbatim|earn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Grant.lean#L28-L29>>|<cell|sector
  energy; sector output; remainder; gain>>|<row|<cell|weighted Schur classes;
  <math|M\<geqslant\>r>>|<cell|<hlink|<verbatim|Green.Rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L26-L27>,
  <hlink|<verbatim|Green.Both>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L29-L30>,
  <hlink|<verbatim|Green.Bottom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Progress/STATIONARY_SCENES/Green.lean#L32-L33>>|<cell|row/column
  sums at rate <math|\<eta\>>; lower bound>>|<row|<cell|windows,
  <math|<math-up|within>>, <math|E>, <math|<math-up|cov>>,
  <math|\<Pi\><rsub|U>>>|<cell|<hlink|<verbatim|Win.Windows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L28-L30>,
  <hlink|<verbatim|within>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L36-L37>,
  <hlink|<verbatim|error>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L39>,
  <hlink|<verbatim|cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Windows.lean#L73>,
  <hlink|<verbatim|planePrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Schur.lean#L69-L70>>|<cell|localized
  inverse and covariance>>|<row|<cell|uniform matrix data; window
  constants>|<cell|<hlink|<verbatim|Win.Promise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L22-L30>,
  <hlink|<verbatim|Turns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L71-L83>,
  <hlink|<verbatim|Turns.Takes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Birthday.lean#L91-L101>>|<cell|(mass,
  bottom, rate, counting); bounds of III.5.13(b)>>|<row|<cell|<math|D>,
  <math|<math-up|gram>>>|<cell|<hlink|<verbatim|Aff.Dmat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L125-L127>,
  <hlink|<verbatim|Aff.gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L145-L147>>|<cell|transported
  flat row matrix; completed precision matrix>>|<row|<cell|transported flat
  derivative>|<cell|<hlink|<verbatim|Aff.derivative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Affine.lean#L116-L118>>|<cell|row
  operator used to define <math|D>>>|<row|<cell|auxiliary Gaussian
  assumptions>|<cell|<hlink|<verbatim|Aff.Reserve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Veil.lean#L34-L39>,
  <hlink|<verbatim|Aff.Alongside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Station.lean#L71-L78>,
  <hlink|<verbatim|Aff.cert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Odometer.lean#L23-L24>>|<cell|reserve
  bounds; compatible quadratic forms; volume and flag
  tests>>|<row|<cell|<math|H<rsub|n,p>>; comparison field
  <math|v>>|<cell|<hlink|<verbatim|Rates.allowance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Rate.lean#L27>,
  <hlink|<verbatim|Aff.unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_BOUNDS/Through.lean#L29-L30>>|<cell|<math|B<rsup|p>*t<rsup|n>>;
  active stationary extension minus replica extension, transported back by
  the local gauge>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Imported analytic inputs.> The step-estimator\<#2019\>s
    energy grant in III.10 and the Poincaré inequality in III.6 are used as
    stated. Their proofs, the full per-bond spectral comparison and the
    origin of the run\<#2019\>s committed-scale energy hypothesis have not
    been audited here.

    <item><strong|Later applications.> The dependency database identifies
    consumers in the units listed above. Their verification of the site-sum,
    per-packet and multiset hypotheses remains outside this unit\<#2019\>s
    audit. In particular, the bounds here do not construct renormalization
    outputs or bound the sector remainders uniformly in volume.

    <item><strong|Unread supporting proofs.> The breadth-first construction,
    the distinct-label forest count, the spanning-walk construction for
    animals and the integration of allocations restricted to sectors were
    used through their statements. In the auxiliary Gaussian chain, the
    statements and the displayed estimates of Lemma 4.36 were checked; its
    supporting local chart and quadratic-form comparison lemmas were not
    audited throughout. These remain proof inputs, rather than additional
    conclusions of the present sketches.

    <item><strong|Flag locality.> In III.5.9(b), locality on <math|P> applies
    to the raw coefficients. Their masked versions also inspect flags on
    <math|P>; those flags can depend on plaquettes extending outside
    <math|P>. A written proof must retain this flag dependence or enlarge the
    physical support before claiming ordinary link locality for the masked
    coefficients.

    <item><strong|Verification scope.> This is a source correspondence check.
    No Lean build, axiom computation or rendered-page check was run.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law (notes)|III-4.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-5.tm>|<hlink|III.6 The stationary branch: background
  field of the effective action (notes) \<rightarrow\>|III-6.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.5. Cluster expansion of the polymer gas \V
    detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|11>>
    <associate|3-strategy|<tuple|3|13>>
    <associate|4-steps|<tuple|4|14>>
    <associate|41-algebra-of-the-finite-gas|<tuple|4.1|14>>
    <associate|42-tree-graph-bound|<tuple|4.2|15>>
    <associate|43-sums-over-trees|<tuple|4.3|15>>
    <associate|44-cluster-sums-and-the-logarithm|<tuple|4.4|16>>
    <associate|45-deleted-regions-and-forced-polymers|<tuple|4.5|16>>
    <associate|46-packets-and-the-large-coupling-numerics|<tuple|4.6|17>>
    <associate|47-the-logarithm-by-deletion|<tuple|4.7|19>>
    <associate|48-the-sector-decomposition|<tuple|4.8|21>>
    <associate|49-matrices|<tuple|4.9|22>>
    <associate|5-where-the-difficulty-lies|<tuple|5|24>>
    <associate|6-notation|<tuple|6|25>>
    <associate|7-what-remains-unexplained|<tuple|7|26>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|4.7|19>>
    <associate|auto-12|<tuple|4.8|21>>
    <associate|auto-13|<tuple|4.9|22>>
    <associate|auto-14|<tuple|5|24>>
    <associate|auto-15|<tuple|6|25>>
    <associate|auto-16|<tuple|7|26>>
    <associate|auto-2|<tuple|2|11>>
    <associate|auto-3|<tuple|3|13>>
    <associate|auto-4|<tuple|4|14>>
    <associate|auto-5|<tuple|4.1|14>>
    <associate|auto-6|<tuple|4.2|15>>
    <associate|auto-7|<tuple|4.3|15>>
    <associate|auto-8|<tuple|4.4|16>>
    <associate|auto-9|<tuple|4.5|16>>
    <associate|iii5-cluster-expansion-of-the-polymer-gas--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Algebra of the finite gas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Tree-graph bound
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Sums over trees
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Cluster sums and the logarithm
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Deleted regions and forced polymers
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Packets and the large-coupling numerics
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 The logarithm by deletion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 The sector decomposition
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 Matrices
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