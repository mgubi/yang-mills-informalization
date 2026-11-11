<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.3 Free Wick polynomials and reflected
  Gram positivity|VII-3.tm>|<hlink|Part VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-4.tm>|<hlink|VII.5 Asymptotic freedom of the running
  coupling \<rightarrow\>|VII-5.tm>>

  <ym-title|VII.4. Operator product expansion and contact
  extensions><label|vii4-operator-product-expansion-and-contact-extensions>

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

  <em|Part VII \V Identification as Yang\UMills.>

  Describes the finite-order operator product expansion and extensions of
  correlations across coincident points.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VII-4.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VII.3|VII-3.tm> <ym-middot> <hlink|Next:
  VII.5 \<rightarrow\>|VII-5.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
    <hlink|<verbatim|YM/OPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE>,
    <hlink|<verbatim|YM/Contacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts>.
    <strong|Size:> about 10,200 lines, 2,035 declarations.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  For VII.4.1\U4 assume (RG): grid approximants, simple gauge Lie algebra,
  per-step and cluster RG estimates, and the continuum extraction record. Fix
  any coherent prescription and its real covariant Reader on the final
  record; VIII.1 supplies these data. Its strata
  <math|E<rsub|j>\<subset\>F<rsub|j>> have bases <math|O<rsub|j,\<kappa\>>>
  fixed by conjugation, with coefficients <math|c<rsub|j,\<kappa\>>>.

  An <math|<around|(|r,M,\<eta\>|)>>-cluster satisfies
  <math|<around|\||x<rsub|i>-o|\|>\<leqslant\>M*r>,
  <math|<around|\||x<rsub|i>-x<rsub|i<rprime|'>>|\|>\<geqslant\>\<eta\>*r>
  for <math|i\<ne\>i<rprime|'>>. Spectators are <math|c>-clear if
  <math|<around|\||y<rsub|j>-o|\|>\<geqslant\>c>,
  <math|<around|\||y<rsub|j>-y<rsub|j<rprime|'>>|\|>\<geqslant\>c> for
  <math|j\<ne\>j<rprime|'>>. Small-radius thresholds are uniform in
  configurations and states.

  <strong|Proposition VII.4.1 (separated OPE).> Fix finite label lists
  <math|a,b>, <math|M\<geqslant\>0>, <math|\<eta\>,c,\<varepsilon\>\<gtr\>0>,
  and <math|D\<in\>\<bbb-N\>>. For all sufficiently small <math|r>, every
  such cluster and clear spectator configuration gives separated
  <math|<around|(|x,y|)>> and <math|<around|(|o,y|)>> and

  <\equation*>
    <around|\<\|\|\>|\<cal-E\><rsub|D>|\<\|\|\>><rsub|\<cal-A\>>\<leqslant\>r<rsup|D+1-w<around|(|a|)>-\<varepsilon\>>,<space|2em>\<cal-E\><rsub|D>=M<around|(|a,x;b,y|)>-<big|sum><rsub|j\<leqslant\>D,\<kappa\>>c<rsub|j,\<kappa\>><around|(|a;x,o|)>*M<around|(|<around|(|j,O<rsub|j,\<kappa\>>|)>,o;b,y|)>.
  </equation*>

  The same bound holds in every phase and the mixed state. For each fixed
  channel <math|<around|(|j,\<kappa\>|)>>,
  <math|<around|\||c<rsub|j,\<kappa\>>|\|>\<leqslant\>r<rsup|j-w<around|(|a|)>-\<varepsilon\>>>
  uniformly on clusters for sufficiently small <math|r>. Coefficients are
  independent of spectators, state and <math|D>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Orbits.Foundation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L62-L64>.

  <strong|Proposition VII.4.2 (integrated remainder).> With VII.4.1's fixed
  data, let <math|K> be a measurable space, <math|\<mu\>> a positive measure,
  <math|q\<in\>L<rsup|1><around|(|\<mu\>;\<bbb-C\>|)>>,
  <math|<big|int><around|\||q|\|>*<space|0.17em>d*\<mu\>\<leqslant\>B>,
  <math|B\<geqslant\>0>. Let configurations be a.e.-measurable and satisfy
  the geometry a.e. on <math|<around|{|q\<ne\>0|}>>. For all sufficiently
  small <math|r>, for the mixed state or any a.e.-measurable phase map, the
  weighted correlation, truncation and remainder are integrable, and
  <math|<around|\||<big|int>q*<space|0.17em>s<around|(|\<cal-E\><rsub|D>|)>*<space|0.17em>d*\<mu\>|\|>\<leqslant\>B*r<rsup|D+1-w<around|(|a|)>-\<varepsilon\>>>.
  The pointwise threshold works for every <math|K,B>; every probability
  mixture of phases satisfies the remainder bound of VII.4.1. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|estimates_weighted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L98-L108>.

  <strong|Proposition VII.4.3 (nested OPE).> Fix a finite rooted tree with
  inner root, leaf labels <math|v>, output <math|<around|(|m,\<kappa\>|)>>,
  inner truncations <math|D<rsub|p>>, <math|M\<geqslant\>0>,
  <math|\<eta\>,\<varepsilon\>\<gtr\>0>. A plot assigns leaf points and inner
  anchors <math|z<rsub|p>>; positive radii satisfy
  <math|s<rsub|<math-up|root>>=r>, <math|s<rsub|p>\<leqslant\>s<rsub|<math-up|parent><around|(|p|)>>>.
  Every subtree lies within <math|M*s<rsub|p>> of <math|z<rsub|p>>; positions
  in different children are separated by <math|\<eta\>*s<rsub|p>>. Put
  <math|\<rho\><rsub|p>=s<rsub|p>/s<rsub|<math-up|parent><around|(|p|)>>>,
  and let <math|w<rsub|p>> be the degree below <math|p>. Over non-root inner
  nodes define

  <\equation*>
    <math-up|toll><rsub|m>=r<rsup|m-w<around|(|v|)>-\<varepsilon\>>*<big|prod><rsub|p>\<rho\><rsub|p><rsup|-w<rsub|p>-\<varepsilon\>>,<space|2em><math-up|nest><rsub|D>=<big|sum><rsub|p>\<rho\><rsub|p><rsup|D<rsub|p>+1>.
  </equation*>

  Writing <math|c<rsub|m,\<kappa\>>=c<rsub|m,\<kappa\>><around|(|v;z<rsub|<math-up|leaves>>,z<rsub|<math-up|root>>|)>>,
  for all sufficiently small <math|r>, <math|<around|\||c<rsub|m,\<kappa\>>|\|>\<leqslant\><math-up|toll><rsub|m>>
  and <math|<around|\||c<rsub|m,\<kappa\>>-c<rsup|<around|(|D|)>><rsub|m,\<kappa\>>|\|>\<leqslant\><math-up|toll><rsub|m><math-up|nest><rsub|D>>.
  Here <math|c<rsup|<around|(|D|)>>> recursively multiplies node coefficients
  and sums inner-child channels through <math|D<rsub|p>>, leaving leaves
  unchanged; the root output is fixed and <math|D<rsub|<math-up|root>>> is
  unused. For fixed spectators <math|b> and <math|\<delta\>\<gtr\>0>,
  separated mutually and from every plot point by <math|\<delta\>>, the
  degree-<math|m> remainder has norm, and absolute value in every state, at
  most <math|<math-up|toll><rsub|m+1>>.

  For a.e.-measurable plots and spectators satisfying this geometry a.e. on
  <math|<around|{|q\<ne\>0|}>>, VII.4.2's integration conclusion holds:
  direct and composed coefficients are integrable after weighting, with
  <math|<around|\||<big|int>q*c*<space|0.17em>d*\<mu\>|\|>\<leqslant\>B<math-up|toll><rsub|m>>
  and <math|<around|\||<big|int>q*<around|(|c-c<rsup|<around|(|D|)>>|)>*<space|0.17em>d*\<mu\>|\|>\<leqslant\>B<math-up|toll><rsub|m><math-up|nest><rsub|D>>.
  Weighted tested correlations, truncations and remainders are integrable,
  with remainder bound <math|B<math-up|toll><rsub|m+1>> for the mixed state
  or any a.e.-measurable phase map. Radii remain fixed during integration;
  thresholds are uniform in radii, measures, weights, <math|B> and
  configuration maps. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Nesting.Uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L17-L27>.

  <strong|Proposition VII.4.4 (contacts).> Fix contact devices sharing the
  Reader's prescription and the final record's rotations. For <math|k> labels
  <math|a<rsub|i>\<in\>F<rsub|d<rsub|i>>>, any state <math|s>, and
  <math|0\<less\>s<rsub|0>\<leqslant\>B<rsub|0>/2>, <math|B<rsub|0>=min
  <around|(|1,<math-up|cl><around|(|w<around|(|a|)>|)>|)>>, the forest kernel
  defines a distribution <math|\<cal-D\><rsub|a><rsup|s>> of order at most
  <math|<around|(|2+w<around|(|a|)>|)>*k>: on each compact <math|K>, its
  absolute integral is bounded by <math|C<rsub|K><around|\<\|\|\>|f|\<\|\|\>><rsub|C<rsup|<around|(|2+w<around|(|a|)>|)>*k>>>.
  It equals <math|<big|int>f*S<rsup|s><around|(|a;x|)>*<space|0.17em>d*x> for
  tests supported on distinct configurations. Distributions also exist on
  slices <math|o+P<around|(|E|)>>, with <math|P> a linear isometry whose
  range contains a group diagonal's normal space, and <math|o> on that
  diagonal.

  Shell and iterated forest sums give the pairing, with integrable kernels
  and summable <math|L<rsup|1>> norms, under these stage-family hypotheses: a
  partition <math|Q> of <math|g>; affine isometric placements based on block
  diagonals and containing their normals; positive subtraction lengths
  <math|s>; <math|R<rsub|i>\<in\><around|(|0,1|]>>; common ceiling
  <math|2*s\<leqslant\>B\<leqslant\>min <around|(|1,<math-up|cl><around|(|<big|sum><rsub|i>d<rsub|i>|)>|)>>.
  A common frame scales each block normal by <math|R<rsub|i>> and preserves
  its orthogonal complement. Closed stages are bounded in frame coordinates
  and within normal distance <math|B>; nonsingleton blocks satisfy
  <math|R<rsub|i>\<leqslant\>C<rsub|1>*s>. Original and spectator labels have
  uniform norm bounds; spectator positions and labels are continuous on
  stages and constant in block normal directions. All nonempty subgroup
  centroids of different blocks and all spectators are uniformly separated.
  Constants may depend on the fixed family.

  For <math|Q=<around|{|g|}>>, <math|g\<ne\>\<emptyset\>>, pure normal
  dilation <math|R\<in\><around|(|0,1|]>>, and
  <math|f<rsub|R><around|(|x|)>=R<rsup|-4*<around|(|<around|\||g|\|>-1|)>>*f*<around|(|R<rsup|-1>*x<rsub|K<rsub|g>>+x<rsub|K<rsub|g><rsup|\<perp\>>>|)>>,
  assume rescaled-stage support and <math|<around|\<\|\|\>|f|\<\|\|\>><rsub|C<rsup|N>>\<leqslant\>H>,
  <math|N=<around|(|2+<big|sum><rsub|i>d<rsub|i>|)>*<around|(|<around|\||g|\|>-1|)>>.
  For every <math|\<varepsilon\>\<gtr\>0>, the absolute kernel integral is
  <math|\<leqslant\>C*H*R<rsup|u-w<around|(|a<rsub|g>|)>-\<varepsilon\>>>:
  <math|u=0,n,n+1> for full, weight-<math|n>, and degree-<math|n> remainder.
  The latter two require stages within normal distance
  <math|<math-up|cl><around|(|n|)>> of the <math|g>-diagonal. For
  <math|<around|\||g|\|>\<gtr\>1>, tests away from its diagonal agree with
  the expression retaining proper-subcluster subtractions.

  Device strata have bases fixed by conjugation, containing the unit in
  degree zero. Every positive sequence <math|f<rsub|n>> admits
  <math|0\<less\>t<rsub|n>\<leqslant\>f<rsub|n>>,
  <math|4*t<rsub|n+1>\<less\>t<rsub|n>>, <math|t<rsub|n>\<to\>0>,
  <math|2*<around|(|n+1|)>*t<rsub|n>\<leqslant\><math-up|cl><around|(|n|)>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|provided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69>.

  <strong|Proposition VII.4.5 (slab bound).> Assume construction properties,
  ordered generic point extraction, Euclidean hierarchy, IV.1's corrected
  field estimates, and the cell hypothesis: reflection positivity and
  chessboard inequalities at every cutoff, with centred one-field bounds
  <math|\<leqslant\>A*a<rsub|m><rsup|-d-\<varepsilon\>>+\<eta\>> late in the
  extraction, as in IV.1. For every <math|D\<in\>\<bbb-N\>>,
  <math|R\<gtr\>0>, there is <math|C<rsub|0>\<gtr\>0>, with
  <math|P=4*<around|(|D+1|)>>, such that every nonempty word <math|w>,
  degrees <math|\<leqslant\>D>, coefficient norms <math|\<leqslant\>R>,
  <math|r>-buffered in <math|<around|(|0,d|)>>, <math|d\<gtr\>0>,
  <math|0\<less\>r\<leqslant\>1>, admits a level <math|b> and width
  <math|0\<less\>s\<leqslant\>d>, <math|s\<in\>a<rsub|b>*\<bbb-N\>>,
  containing <math|w> in <math|<around|(|0,s|)>>. Every positive-time
  exterior word <math|v> then has <math|B<rsub|v>> with

  <\equation*>
    <around|\||S*<around|(|\<Theta\>*v<rsub|n>\<cdot\>v<rsub|n>|)>|\|>\<leqslant\>B<rsub|v>*\<rho\><rsup|4*n>*<space|1em><around|(|n\<in\>\<bbb-N\>|)>,<space|2em>\<rho\>=C<rsub|0><rsup|<around|\||w|\|>>*<around|(|<around|\||w|\|>/r|)><rsup|P<around|\||w|\|>>,
  </equation*>

  where <math|v<rsub|n>> precedes <math|v> by <math|2*n> consecutive
  width-<math|s> slabs holding alternately <math|w> and its reflection.
  Iterated Schwarz gives <math|<around|\<\|\|\>|T<rsub|s><around|(|w|)>|\<\|\|\>>\<leqslant\>\<rho\>>
  in V.1. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>.

  <strong|Proposition VII.4.6 (prescription).> A probe is a finite separated
  token configuration, anchored at its first point. The correlation maps
  <math|<math-up|sp><rsub|n>> of anchored fields against probes are injective
  and inclusion-compatible. For modes indexing bases of
  <math|F<rsub|n>/\<iota\><around|(|F<rsub|n-1>|)>>, <math|F<rsub|-1>=0>,
  there exist vectors <math|u<rsub|i>\<in\>F<rsub|deg i>> and finitely
  supported complex probe weights <math|\<lambda\><rsub|i>>, such that for
  every <math|n>, <math|\<lambda\><rsub|i><rsup|<around|(|n|)>>*<around|(|\<iota\>*u<rsub|j>|)>=\<delta\><rsub|i*j>>
  for degrees <math|\<leqslant\>n>, and <math|\<phi\>=<big|sum><rsub|deg
  i\<leqslant\>n>\<lambda\><rsub|i><rsup|<around|(|n|)>><around|(|\<phi\>|)>*\<iota\>*u<rsub|i>>
  for every <math|\<phi\>\<in\>F<rsub|n>>. Here
  <math|\<lambda\><rsub|i><rsup|<around|(|n|)>>=<big|sum><rsub|p>\<lambda\><rsub|i><around|(|p|)><math-up|sp><rsub|n><around|(|\<cdummy\>|)><around|(|p|)>>.
  Higher-degree tests vanish on <math|F<rsub|n>>; one prescription serves
  every truncation. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Prescription.chosen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L20-L31>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>II.2, III.13: cutoff construction; III.11 and Part III: RG
    estimates, assembled in VIII.1 (<hlink|<verbatim|Services>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L56-L60>).

    <item>IV.1: corrected fields, extraction, centred chessboard bounds;
    V.1\UV.3: ground algebra and phases; VI.1: derivatives, rotations,
    reality.

    <item>Gelfand isometry, reflection positivity, iterated Schwarz, Haar
    averaging, Taylor subtraction and Zimmermann forests.
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Probes reconstruct finite-degree fields. RG replaces clusters by fields
  plus controlled remainders; translated chessboard moments give
  ground-algebra norm bounds, hence estimates in every phase. Exact
  reconstruction of replacement fields gives the grid OPE. Derivative
  induction extends it to arbitrary configurations, and bringing auxiliary
  scale heights together gives arbitrary <math|\<varepsilon\>>-loss.
  Recursive replacements yield trees; weight-dependent normal Taylor
  subtraction makes contact kernels integrable, with partial collisions
  treated by finer partitions.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Extend biorthogonal probes degree by degree; average rotations and
    conjugations and remove lower degrees.
    <hlink|<verbatim|Reader>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17-L23>.

    <item>Fuse nearby RG groups, retaining separated groups; obtain a
    degree-<math|t> replacement with remainder gain
    <math|<around|(|a<rsub|m>/a<rsub|k>|)><rsup|t+1/16>>.
    <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L64-L87>.

    <item>Bound translated moments by chessboard roots; full phase support
    and Gelfand give norm control. <hlink|<verbatim|Cards.carrying>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L98-L104>.

    <item>Descend in degree from crude high-degree bounds; grid distance
    compensates the derivative degree increase.
    <hlink|<verbatim|interpolated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Corridor.lean#L34-L47>.

    <item>Telescope replacements over trees, merging children at the parent's
    rate and expanding others to sufficiently high auxiliary degree. This
    controls each node's truncation. <hlink|<verbatim|Fusion.tariff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Fusion.lean#L97-L104>.

    <item>Subtract weight-dependent normal Taylor jets; finer-partition
    induction handles partial collisions and sums dyadic shells. With
    <math|d<rsub|h>=<big|sum><rsub|i\<in\>h>d<rsub|i>>,
    <math|q<rsub|h>=4*<around|(|<around|\||h|\|>-1|)>>, and
    <math|L<rsub|h>=max <around|(|0,d<rsub|h>+1-q<rsub|h>|)>>, subtraction
    leaves shell exponent <math|q<rsub|h>+L<rsub|h>-d<rsub|h>\<geqslant\>1>.
    <hlink|<verbatim|glues_total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Skies.lean#L59-L79>.

    <item>Apply two-scale chessboard bounds to reflection-positive slab
    trains; choose levels with <math|a<rsub|k>\<geqslant\>c*<around|(|r/<around|\||w|\|>|)><rsup|4>>
    to obtain <math|P=4*<around|(|D+1|)>>. Iterated Schwarz removes the
    exterior cost. <hlink|<verbatim|replicas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L119-L151>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The <math|1/16> gain margin comes from RG transport. Norm control ensures
  spectator and state uniformity; partial collisions require more than radial
  integrability. Estimates allow arbitrary <math|\<varepsilon\>>-loss,
  without identifying logarithmic corrections.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|w<around|(|a|)>=<big|sum><rsub|i>d<rsub|i>>; <math|F<rsub|d>>:
  degree-<math|d> fields; <math|\<cal-A\>>: ground algebra; <math|M>:
  compressed word; <math|S<rsup|s>>: correlation for
  <math|s\<in\>X\<sqcup\><around|{|<math-up|mix>|}>>, with <math|X> the phase
  spectrum; <math|a<rsub|k>>: lattice spacing;
  <math|<math-up|cl><around|(|n|)>>: device clearance; <math|K<rsub|g>>:
  normal space of the <math|g>-diagonal.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The internal polymer estimates and their constants, rotated comparisons,
  high-horizon tree replacement and partial-collision sector induction need
  fuller accounts. Device projections are not identified with Reader
  coefficients. Uniqueness, extraction independence, infinite-order
  convergence, contact positivity, contact Ward identities and perturbative
  agreement are not asserted.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VII-4.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|III.11|III-11.tm>, <hlink|III.1|III-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|II.2|II-2.tm>, <hlink|VIII.1|VIII-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.10|III-10.tm>, <hlink|V.1|V-1.tm>, <hlink|V.2|V-2.tm>,
  <hlink|III.9|III-9.tm>, <hlink|III.2|III-2.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>, <hlink|III.2|III-2.tm>,
  <hlink|III.13|III-13.tm>, <hlink|VII.1|VII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 10,243 attributed lines; 2,035 line-counted
  declarations; 2,808 assigned declaration names. Of the assigned names,
  2,686 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/OPE/Grouping/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping>,
    with <hlink|<verbatim|YM/OPE/Replicas/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas>,
    <hlink|<verbatim|YM/OPE/Columns/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Columns>,
    <hlink|<verbatim|YM/OPE/Trees/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Trees>,
    <hlink|<verbatim|YM/OPE/Sweep/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep>,
    <hlink|<verbatim|YM/OPE/Eye/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye>,
    <hlink|<verbatim|YM/OPE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE>,
    <hlink|<verbatim|YM/OPE/Splitting/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting>,
    <hlink|<verbatim|YM/OPE/Prices/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices>,
    <hlink|<verbatim|YM/OPE/Schemes/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes>,
    <hlink|<verbatim|YM/OPE/Interpolate/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate>,
    <hlink|<verbatim|YM/OPE/Exchange/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange>,
    <hlink|<verbatim|YM/OPE/Rough/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough>,
    <hlink|<verbatim|YM/OPE/Log/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Log>
    \V 4,584 lines.

    <item>work package <hlink|<verbatim|YM/Next/PHASE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE>
    \V 838 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/Harvest/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest>
    \V 687 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts>
    \V 676 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/Normal/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal>
    \V 658 lines.

    <item>work package <hlink|<verbatim|YM/OPE/Orbits/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits>
    \V 579 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/Score/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score>
    \V 568 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/Layers/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Layers>
    \V 459 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/Solstice/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice>
    \V 356 lines.

    <item>work package <hlink|<verbatim|YM/OPE/Cards/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards>
    \V 274 lines.

    <item>proof of <hlink|<verbatim|outletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124>
    \V 145 lines.

    <item>work package <hlink|<verbatim|YM/MultipleContact/Panel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Panel>
    \V 138 lines.

    <item>work package <hlink|<verbatim|YM/MultipleContact/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact>
    \V 109 lines.

    <item>work package <hlink|<verbatim|YM/SharpGram/Prices/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Prices>
    \V 103 lines.

    <item>work package <hlink|<verbatim|YM/MultipleContact/Multi/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Multi>
    \V 38 lines.

    <item>work package <hlink|<verbatim|YM/Contacts/Transport/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport>
    \V 31 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Hierarchy.OperatorProductExpansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70-L80>

    <item><hlink|<verbatim|constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15-L40>

    <item><hlink|<verbatim|contactDistribution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactBridge.lean#L14-L49>

    <item><hlink|<verbatim|Hierarchy.Contacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L12-L14>

    <item><hlink|<verbatim|publicOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L68-L77>

    <item><hlink|<verbatim|Bid.Bench>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L21-L24>

    <item><hlink|<verbatim|Bid.Seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Phase.lean#L27>

    <item><hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>

    <item><hlink|<verbatim|Devices.clearance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Coherent.lean#L137-L139>

    <item><hlink|<verbatim|stairs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Aperture.lean#L25>

    <item><hlink|<verbatim|Route.Authority>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Reader.lean#L57>

    <item><hlink|<verbatim|Route>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Harvest/Route.lean#L24-L45>

    <item><hlink|<verbatim|Normal.taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/Subtractions.lean#L68>

    <item><hlink|<verbatim|Score/Formula.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score/Formula.lean>

    <item><hlink|<verbatim|takeRight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Score/Tape.lean#L56-L60>

    <item><hlink|<verbatim|Thresholds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23-L28>

    <item><hlink|<verbatim|installs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L30-L36>

    <item><hlink|<verbatim|sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Projection.lean#L28>

    <item><hlink|<verbatim|Annulus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Puncture.lean#L53>

    <item><hlink|<verbatim|Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L23-L31>

    <item><hlink|<verbatim|Sunshine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L33-L40>

    <item><hlink|<verbatim|commissions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L44-L45>

    <item><hlink|<verbatim|MultipleLight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52-L63>

    <item><hlink|<verbatim|celestial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L78-L79>

    <item><hlink|<verbatim|Claim>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Scaling.lean#L61>

    <item><hlink|<verbatim|totalTestOrder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Skies.lean#L48>

    <item><hlink|<verbatim|Backdrop.Eligible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Strict.lean#L48-L52>

    <item><hlink|<verbatim|Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30-L31>

    <item><hlink|<verbatim|majorKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L59>

    <item><hlink|<verbatim|global_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L62-L63>

    <item><hlink|<verbatim|Devices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17-L26>

    <item><hlink|<verbatim|Transport.harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Blend.lean#L70-L71>

    <item><hlink|<verbatim|SystemBasis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L47-L51>

    <item><hlink|<verbatim|real_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L52-L61>

    <item><hlink|<verbatim|Independent.Core.point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L49-L63>

    <item><hlink|<verbatim|detector_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultipleContact/Detector.lean#L28-L35>

    <item><hlink|<verbatim|Next/EXTRACTION/Base.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Base.lean>

    <item><hlink|<verbatim|Next.Phase.vacuum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Assembly.lean#L69-L73>

    <item><hlink|<verbatim|Gapped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L84-L87>

    <item><hlink|<verbatim|Next.Phase.Single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L25-L26>

    <item><hlink|<verbatim|rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L55-L77>

    <item><hlink|<verbatim|contacts_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L14-L24>

    <item><hlink|<verbatim|NestedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128-L138>

    <item><hlink|<verbatim|WilsonExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L143-L155>

    <item><hlink|<verbatim|SeparatedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24-L48>

    <item><hlink|<verbatim|Cards.plant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Literal.lean#L107-L127>

    <item><hlink|<verbatim|Cards.PaidAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Literal.lean#L28-L31>

    <item><hlink|<verbatim|Cards.Hall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Mix.lean#L45-L51>

    <item><hlink|<verbatim|Cards.mixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Mix.lean#L57-L94>

    <item><hlink|<verbatim|Cards.pressure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L89-L92>

    <item><hlink|<verbatim|groundError>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L26-L27>

    <item><hlink|<verbatim|ground_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L49-L52>

    <item><hlink|<verbatim|arrangement_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Arrangement.lean#L68-L71>

    <item><hlink|<verbatim|refine_geometry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L17-L22>

    <item><hlink|<verbatim|WithinRoom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L24-L26>

    <item><hlink|<verbatim|ClearOf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L28-L30>

    <item><hlink|<verbatim|loglife>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L35-L37>

    <item><hlink|<verbatim|room_regime>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L38-L42>

    <item><hlink|<verbatim|free_clear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Exchange/Regime.lean#L43-L47>

    <item><hlink|<verbatim|mirrorMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Admire.lean#L47-L62>

    <item><hlink|<verbatim|civic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Civic.lean#L32-L46>

    <item><hlink|<verbatim|viewing_admits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Civic.lean#L63-L87>

    <item><hlink|<verbatim|see_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L64-L66>

    <item><hlink|<verbatim|admitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L22-L31>

    <item><hlink|<verbatim|phase_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L49-L54>

    <item><hlink|<verbatim|viewer_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Fast.lean#L55-L57>

    <item><hlink|<verbatim|Survival>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L42-L44>

    <item><hlink|<verbatim|price_plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Remit.lean#L47-L65>

    <item><hlink|<verbatim|glance_contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Views.lean#L67-L68>

    <item><hlink|<verbatim|Height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L18-L20>

    <item><hlink|<verbatim|found>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Height.lean#L58-L64>

    <item><hlink|<verbatim|leap_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Leap.lean#L20-L27>

    <item><hlink|<verbatim|cloud_jump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Interpolate/Leap.lean#L39-L49>

    <item><hlink|<verbatim|Tree.toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Actual.lean#L18-L19>

    <item><hlink|<verbatim|Composite.stacked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L115>

    <item><hlink|<verbatim|Composite.token>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L33-L35>

    <item><hlink|<verbatim|Composite.nShot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Composite.lean#L93-L95>

    <item><hlink|<verbatim|Nesting.uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Endpoint.lean#L31-L36>

    <item><hlink|<verbatim|Tree.Tapered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Geometry.lean#L21-L23>

    <item><hlink|<verbatim|Tree.Relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Grove.lean#L99-L103>

    <item><hlink|<verbatim|CoefIntegral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Integration.lean#L66-L71>

    <item><hlink|<verbatim|Quantified.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean>

    <item><hlink|<verbatim|Accept>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L15-L18>

    <item><hlink|<verbatim|Limits.coe_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L43-L51>

    <item><hlink|<verbatim|Limits.tested_power>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Quantified.lean#L54-L71>

    <item><hlink|<verbatim|Tree.nestPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Nesting/Weights.lean#L102-L103>

    <item><hlink|<verbatim|averageV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Average.lean#L22>

    <item><hlink|<verbatim|knife>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L49>

    <item><hlink|<verbatim|cutTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L51>

    <item><hlink|<verbatim|reconstruct>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L66-L68>

    <item><hlink|<verbatim|kills_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L70-L79>

    <item><hlink|<verbatim|stratum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L83>

    <item><hlink|<verbatim|fresh_bridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Fee.lean#L45-L50>

    <item><hlink|<verbatim|fresh>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Fresh.lean#L15>

    <item><hlink|<verbatim|fresh_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Gain.lean#L21-L30>

    <item><hlink|<verbatim|balance_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Gain.lean#L57-L72>

    <item><hlink|<verbatim|probability_mixtures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L52-L58>

    <item><hlink|<verbatim|Orbits.produce>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L67-L68>

    <item><hlink|<verbatim|Orbits.foundation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Kernel.lean#L70-L77>

    <item><hlink|<verbatim|FitsOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L17>

    <item><hlink|<verbatim|JointEstimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Profile.lean#L53-L57>

    <item><hlink|<verbatim|checkReal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L37-L39>

    <item><hlink|<verbatim|checkValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L43-L44>

    <item><hlink|<verbatim|checkReal_fixed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Real.lean#L81-L84>

    <item><hlink|<verbatim|coefficient_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L17-L22>

    <item><hlink|<verbatim|algebra_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L30-L35>

    <item><hlink|<verbatim|coefficient_separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L64-L69>

    <item><hlink|<verbatim|quantitative_separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Separated.lean#L71-L85>

    <item><hlink|<verbatim|Reader.basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Stars.lean#L81>

    <item><hlink|<verbatim|coef>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L18-L19>

    <item><hlink|<verbatim|algebraError>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/System.lean#L61-L63>

    <item><hlink|<verbatim|PriceAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L52-L59>

    <item><hlink|<verbatim|RateLE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rate.lean#L23-L24>

    <item><hlink|<verbatim|Package>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Budget.lean#L13-L16>

    <item><hlink|<verbatim|TableTickets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Rough/Factory.lean#L18-L27>

    <item><hlink|<verbatim|coefficient_rough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L22-L25>

    <item><hlink|<verbatim|common_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L37-L41>

    <item><hlink|<verbatim|grid_coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Ladder.lean#L34-L42>

    <item><hlink|<verbatim|grid_remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Ladder.lean#L53-L73>

    <item><hlink|<verbatim|at_grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Read.lean#L37-L52>

    <item><hlink|<verbatim|det_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Read.lean#L68-L80>

    <item><hlink|<verbatim|group_coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Travel.lean#L24-L30>

    <item><hlink|<verbatim|group_remainder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Travel.lean#L31-L41>

    <item><hlink|<verbatim|through_final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L32-L37>

    <item><hlink|<verbatim|SingleSubpower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Single.lean#L40-L51>

    <item><hlink|<verbatim|reachReads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L37-L42>

    <item><hlink|<verbatim|Prescription>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L44-L46>

    <item><hlink|<verbatim|SignedOff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L59-L61>

    <item><hlink|<verbatim|Coherent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L63>

    <item><hlink|<verbatim|Prescription.ope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Detector.lean#L80>

    <item><hlink|<verbatim|highVan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Legacy.lean#L32-L35>

    <item><hlink|<verbatim|startRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L44-L53>

    <item><hlink|<verbatim|sumAll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Observe.lean#L27-L31>

    <item><hlink|<verbatim|AllShapes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L39-L45>

    <item><hlink|<verbatim|Spread.radius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L109>

    <item><hlink|<verbatim|producer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L116-L123>

    <item><hlink|<verbatim|Drive.against>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L20-L60>

    <item><hlink|<verbatim|OS.QRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Train.lean#L70-L71>

    <item><hlink|<verbatim|Org.Grill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L121-L123>

    <item><hlink|<verbatim|Retain.bit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Detect.lean#L22-L58>

    <item><hlink|<verbatim|R2IGoals.fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>

    <item><hlink|<verbatim|Run.extractible17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L60-L90>

    <item><hlink|<verbatim|Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20-L26>

    <item><hlink|<verbatim|B17.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/B17.lean#L71-L90>

    <item><hlink|<verbatim|YM/SharpGram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vii-4-1>

  <\itemize-minus>
    <item><strong|K-VII.4.1> <hlink|<verbatim|compact_deviation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Normal/ShellTest.lean#L43-L72>
    <em|(numbered result)> \V Uniform jet bound for the projection deviation
    of a rescaled test function on a compact set in terms of the original jet
    budget.
  </itemize-minus>

  <label|k-vii-4-2>

  <\itemize-minus>
    <item><strong|K-VII.4.2> <hlink|<verbatim|nextRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Needle.lean#L57-L92>
    <em|(numbered result)> \V Any prescription signed off at level n extends
    to one signed off at level n+1 by adding a ring of tests.
  </itemize-minus>

  <label|k-vii-4-3>

  <\itemize-minus>
    <item><strong|K-VII.4.3> <hlink|<verbatim|cutoff_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Roots.lean#L125-L179>
    <em|(key result)> \V On coextensive coarse and fine link tilings, the
    lattice moment of products of main and exterior factors in separated
    cells is bounded by A^{#main} B^{#exterior}.
  </itemize-minus>

  <label|k-vii-4-4>

  <\itemize-minus>
    <item><strong|K-VII.4.4> <hlink|<verbatim|point_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Passage.lean#L187-L229>
    <em|(key result)> \V For gapped configurations, the continuum correlation
    of a point word is bounded by A to the number of main insertions times B
    to the number of exterior insertions.
  </itemize-minus>

  <label|k-vii-4-5>

  <\itemize-minus>
    <item><strong|K-VII.4.5> <hlink|<verbatim|travel_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Trains.lean#L273-L304>
    <em|(key result)> \V The Gram pairing of a reflected train of a main word
    repeated 4q times with an exterior word is bounded by B^{2\|v\|}
    A^{4q\|w\|}, independent of q in exterior cost.
  </itemize-minus>

  <label|k-vii-4-6>

  <\itemize-minus>
    <item><strong|K-VII.4.6> <hlink|<verbatim|hitB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Grouping/Shift.lean#L54-L93>
    <em|(numbered result)> \V Hit-budget bounds persist under replacing
    contents by enlarged sets, at a multiplied cost factor.
  </itemize-minus>

  <label|k-vii-4-7>

  <\itemize-minus>
    <item><strong|K-VII.4.7> <hlink|<verbatim|outletFirst>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L120-L124>
    <em|(major result)> \V A functional killing the sector derivatives to the
    given order releases estimates for outputs of weight at most three.
  </itemize-minus>

  <label|k-vii-4-8>

  <\itemize-minus>
    <item><strong|K-VII.4.8> <hlink|<verbatim|seats>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/PHASE/Seats.lean#L154-L160>
    <em|(key result)> \V The quantum read estimate holds on covered positive
    sub-widths chosen before the exterior, establishing the Seats property.
  </itemize-minus>

  <label|k-vii-4-9>

  <\itemize-minus>
    <item><strong|K-VII.4.9> <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Prices/Circuit.lean#L64-L87>
    <em|(numbered result)> \V At ordered heights there exist rate functions
    such that the subpower price estimate holds eventually.
  </itemize-minus>

  <label|k-vii-4-10>

  <\itemize-minus>
    <item><strong|K-VII.4.10> <hlink|<verbatim|joins>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Camp.lean#L54-L94>
    <em|(numbered result)> \V Under suitable smallness and spacing
    hypotheses, a product of several observables at scales on a multiscale
    path has a label at which the combined configuration function lies in the
    interior of the chamber.
  </itemize-minus>

  <label|k-vii-4-11>

  <\itemize-minus>
    <item><strong|K-VII.4.11> <hlink|<verbatim|Ballet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Ballet.lean#L35-L76>
    <em|(key result)> \V Across a compact window of scales, there is a
    coefficient with format and remainder bounds serving the product of
    replicated pieces, giving the main estimate.
  </itemize-minus>

  <label|k-vii-4-12>

  <\itemize-minus>
    <item><strong|K-VII.4.12> <hlink|<verbatim|for_plot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Eye/Extract.lean#L25-L32>
    <em|(numbered result)> \V At suitable heights and separated grid points,
    there exist rates and labels such that survival of a configuration holds
    eventually with controlled exponential decay.
  </itemize-minus>

  <label|k-vii-4-13>

  <\itemize-minus>
    <item><strong|K-VII.4.13> <hlink|<verbatim|early_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Schemes/Corridor.lean#L68-L74>
    <em|(numbered result)> \V The difference between the actual observable
    and its truncated expansion to order N has a rate bound given by a linear
    exponent in N.
  </itemize-minus>

  <label|k-vii-4-14>

  <\itemize-minus>
    <item><strong|K-VII.4.14> <hlink|<verbatim|provided>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L65-L69>
    <em|(key result)> \V If the rotation matches the sector turns and
    services hold, the multiple-collision light (distributional) property
    holds.
  </itemize-minus>

  <label|k-vii-4-15>

  <\itemize-minus>
    <item><strong|K-VII.4.15> <hlink|<verbatim|carrying>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Cards/Pressure.lean#L98-L104>
    <em|(numbered result)> \V If the deck norms are bounded by c^{2m} for all
    m eventually, then the cluster norm is at most c.
  </itemize-minus>

  <label|k-vii-4-16>

  <\itemize-minus>
    <item><strong|K-VII.4.16> <hlink|<verbatim|everything>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Subpower.lean#L47-L48>
    <em|(key result)> \V Services together with a coherent prescription imply
    all fixed-horizon shape demands.
  </itemize-minus>

  <label|k-vii-4-17>

  <\itemize-minus>
    <item><strong|K-VII.4.17> <hlink|<verbatim|ranch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Replicas/Antique.lean#L33-L46>
    <em|(key result)> \V Under many hypotheses on slots and cells, an arc
    structure holds for the pushed-forward system with replicated slots.
  </itemize-minus>

  <label|k-vii-4-18>

  <\itemize-minus>
    <item><strong|K-VII.4.18> <hlink|<verbatim|inductionLive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Sweep/Induct.lean#L93-L117>
    <em|(key result)> \V Across intermediate scales one can regroup indices
    so a live structure persists with compensated progress bounded by the
    product of weights.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.3 Free Wick polynomials and reflected
  Gram positivity|VII-3.tm>|<hlink|Part VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-4.tm>|<hlink|VII.5 Asymptotic freedom of the running
  coupling \<rightarrow\>|VII-5.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.4. Operator product expansion and contact
    extensions \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|4>>
    <associate|5-where-the-difficulty-lies|<tuple|5|4>>
    <associate|6-notation|<tuple|6|5>>
    <associate|7-what-remains-unexplained|<tuple|7|5>>
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|11>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|4>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|5>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|k-vii-4-1|<tuple|10|11>>
    <associate|k-vii-4-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-13|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-4-14|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-4-15|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-4-16|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-4-17|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-4-18|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-vii-4-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vii-4-3|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-4|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-5|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-6|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-4-9|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|5>>
    <associate|unit-difficulty|<tuple|7|4>>
    <associate|unit-inputs|<tuple|1|3>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|4>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|vii4-operator-product-expansion-and-contact-extensions|<tuple|?|1>>
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