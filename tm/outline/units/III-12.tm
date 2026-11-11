<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.11 Interacting rank, Gaussian
  comparison and the stress tensor|III-11.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-12.tm>|<hlink|III.13 Alternative construction: one
  Wilson family for all labels \<rightarrow\>|III-13.tm>>

  <ym-title|III.12. Bounds uniform in the volume and convergence as the
  spacing tends to zero><label|iii12-bounds-uniform-in-the-volume-and-convergence-as-the-spacing-tends-to-zero>

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

  Combines bounds uniform in volume with fixed-volume convergence as the
  lattice spacing tends to zero.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/III-12.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: III.11|III-11.tm> <ym-middot> <hlink|Next:
  III.13 \<rightarrow\>|III-13.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> III, Ultraviolet construction (renormalization group).
    <strong|Lean:> unit III.12, <hlink|<verbatim|YM/FullVolume/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume>.
    <strong|Size:> 18,973 lines in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Proposition III.12.1 (kernel bounds uniform in the volume).> Let
  <math|R> be a run for a simple gauge group <math|G>, with Wilson family
  <math|C>. Fix <math|n>, labels <math|v<rsub|i>\<in\><math-up|Lab><rsub|d<rsub|i>>>,
  a finite list <math|\<lambda\>> of pairs (slot, axis), and
  <math|r\<gtr\>0>. There are <math|B\<geqslant\>0,N<rsub|0>> such that, for
  every <math|N\<geqslant\>N<rsub|0>>, every <math|p> and every integer
  configuration <math|x> with <math|a<rsub|N><math-up|dist><around|(|x<rsub|i>,x<rsub|j>|)>\<geqslant\>r>
  for <math|i\<ne\>j>,

  <\equation*>
    <around*|\||\<Delta\><rsub|\<lambda\>>*\<bbb-E\><rsub|N,p>*<big|prod><rsub|i=1><rsup|n>O<rsub|N,p><around|(|v<rsub|i>;x<rsub|i>|)>|\|>\<leqslant\>B.
  </equation*>

  Each difference acts in its indicated slot; distance is periodic
  <math|\<ell\><rsup|\<infty\>>> distance. Constants may depend on
  <math|R,n,<around|(|v<rsub|i>|)>,\<lambda\>,r>, but not <math|p>.
  <em|Status:> theorem for every run. <em|Lean:>
  <hlink|<verbatim|genuine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L62>.

  <strong|Proposition III.12.2 (derivative closure).> For a run with simple
  <math|G>, every sequence <math|w<rsub|N,p>\<in\><math-up|Lab><rsub|d>>
  bounded by some <math|K\<geqslant\>0> eventually in the mesh, and every
  finite axis list <math|l>, the trial <math|\<Delta\><rsub|l>*O<around|(|w|)>>
  is funded. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Run.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L24-L33>.

  <strong|Proposition III.12.3 (closure lemma).> Fix <math|d>. Assume a
  consistent Wilson family <math|C> and:

  <\enumerate>
    <item>the centred budget;

    <item>the scale-selection data;

    <item>sound sections <math|V<rsub|e>> and linear automorphisms
    <math|W<rsub|e>> of abstract labels for every degree <math|e>, satisfying
    the section, symmetry and exact local identities described below, with
    <hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58>;

    <item>a presentation <math|\<pi\>> and the full
    <hlink|<verbatim|section-comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Canopy.lean#L30-L32>
    data, including quantitative comparison with <math|V<rsub|e>>,
    identification of <math|ker \<pi\>> with the dressed equation ideal, and
    <math|sup<rsub|N,p><around|\<\|\|\>|\<pi\><rsub|N,p>|\<\|\|\>>\<less\>\<infty\>>
    in each degree;

    <item>degree-<math|d> detector rows with the placement and bounded-lift
    conditions and short-distance comparison of
    <hlink|<verbatim|VitalRank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L49-L52>.
  </enumerate>

  If <math|F> is funded, every <math|F<rsub|N,p><around|(|o|)>> is continuous
  in the gauge field, <math|l> is an axis list, and <math|x> is a
  degree-<math|d> coin with <math|O<around|(|x|)>-\<Delta\><rsub|l>*F> owed
  at cost <math|u<rsub|N,p>\<to\>0> in the mesh, then
  <math|\<Delta\><rsub|l>*F> is funded. <em|Status:> conditional theorem; a
  run's ties and short-distance estimates supply these hypotheses. <em|Lean:>
  <hlink|<verbatim|improved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78>.

  <strong|Proposition III.12.4 (uniform rank detection).> Under hypotheses
  1\U5 of III.12.3, fix <math|l>. For all large <math|k> and all sufficiently
  small <math|b\<gtr\>0>, there is <math|Z\<geqslant\>0> such that,
  eventually in the mesh,

  <\equation*>
    <around|\<\|\|\>|\<pi\><rsub|N,p>*x|\<\|\|\>>\<leqslant\>Z*<around|\<\|\|\>|\<cal-P\><rsub|k,b,l;N,p>*<around|(|\<pi\><rsub|N,p>*x|)>|\<\|\|\>>*<space|1em><around|(|x\<in\><math-up|Lab><rsub|d>|)>.
  </equation*>

  The detector takes correlations with fixed partners and successively
  averages the first slot in the directions of <math|l> over lengths between
  <math|b> and <math|2*b>; repeated axes give repeated averages. <em|Status:>
  conditional theorem. <em|Lean:> <hlink|<verbatim|trained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91>.

  <strong|Proposition III.12.5 (negligible equation labels).> Assume
  consistency of <math|C> and hypotheses 2\U4 of III.12.3. Every
  degree-<math|d> coin <math|x> with <math|\<pi\><rsub|N,p>*x<rsub|N,p>=0>
  for all <math|<around|(|N,p|)>> has <math|O<around|(|x|)>> owed at cost
  <math|a<rsub|N><rsup|1/32>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|banked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115>.

  <strong|Proposition III.12.6 (coupling power-series bounds).> Let <math|R>
  be a run with a <hlink|<verbatim|Campaign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage/Crests.lean#L20-L27>,
  <hlink|<verbatim|Pillars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>
  and bounds <hlink|<verbatim|Sky>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Oz.lean#L22-L28>.
  Let <math|<wide|\<beta\>|\<bar\>>> be the target level-0 coupling and
  <math|w\<gtr\>0> the fan width. Fix <math|p>, an <math|n>-tuple of labels
  <math|V<rsub|0>> and <math|r\<gtr\>0>. There exist
  <math|b,m\<in\>\<bbb-N\>>, <math|m\<geqslant\>1>, <math|B\<geqslant\>0> and
  <math|c\<in\><around|(|0,1|]>> such that the following holds for every
  <math|m\<leqslant\>j\<less\>N> and <math|a\<in\><around|[|-1,1|]>>.

  Take any family <math|F<around|(|s|)>>, <math|s\<in\><around|[|-1,1|]>>, of
  admissible campaign members with common block sequence, sections and
  labels, whose level-0 inverse coupling at <math|<around|(|N,p|)>> is
  <math|<wide|\<beta\>|\<bar\>>+w*a*s>. For every <math|r>-separated
  configuration <math|o> in <math|\<Lambda\><rsub|j+1,p>> embedded into
  <math|\<Lambda\><rsub|N,p>>,

  <\equation*>
    \<bbb-E\><rsup|F*<around|(|c*s/2|)>><rsub|N,p>*<big|prod><rsub|i>O<around|(|V<rsub|0,i>;o<rsub|i>|)>=<big|sum><rsub|i\<geqslant\>0>P<rsub|i>*s<rsup|i>,<space|2em><big|sum><rsub|i><around|\||P<rsub|i>|\|>\<leqslant\>B*a<rsub|j+1><rsup|-b>*<space|1em><around|(|s\<in\><around|[|-1,1|]>|)>.
  </equation*>

  Expectation and representatives belong to the attached auxiliary transfer
  family; its correlations agree with the successful trajectory at positive
  cutoffs. Constants depend only on campaign data, <math|p,V<rsub|0>,r>.
  <em|Status:> conditional theorem; VIII.1 supplies the campaign records.
  <em|Lean:> <hlink|<verbatim|Face.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51>.

  <strong|Proposition III.12.7 (fixed-volume Cauchy property).> Fix simple
  <math|G>, one RG construction with stationary-path bounds, free
  amplification, observable-transfer bounds and common reference sections,
  and assume its uniform perturbation estimates. Fix <math|p>. Let
  <math|C<rsub|n>> come from histories at cutoffs
  <math|f<around|(|n|)>\<to\>\<infty\>>. Assume:

  <\itemize-minus>
    <item>Each history is a selected branch from level <math|k>, agreeing
    with a fixed kinetic path; stationary kinetic paths converge with strict
    reserve in their admissible bounds. At every fixed <math|i\<geqslant\>k>,
    inverse couplings are Cauchy and activities have Cauchy representatives
    in the common weighted space.

    <item>Each degree used has reference level
    <math|t<around|(|d|)>\<geqslant\>k> with
    <math|d+3\<leqslant\>J<around|(|t<around|(|d|)>|)>>; transfer data are
    based at its reference section and compose branch transfers.

    <item>For every sufficiently large base level <math|r>, multiscale
    remainder bounds hold for all sufficiently large <math|n>. Label
    allowances <math|\<zeta\><around|(|d,r|)>> are eventually positive for
    each degree used; occupancy allowances are at least <math|1> at every
    level.
  </itemize-minus>

  For every finite label list and every configuration <math|x> with
  <math|x<rsub|i>-x<rsub|j>\<nin\>L<rsub|p>*\<bbb-Z\><rsup|4>> for
  <math|i\<ne\>j>, lying exactly on some common lattice <math|x=a<rsub|r>*z>,
  <math|z> integer, the cutoff-<math|f<around|(|n|)>> correlations at
  coordinatewise ceiling addresses of <math|x> are Cauchy. <em|Status:>
  conditional theorem. A run with campaign, pillars, fixed-level convergence
  and uniform perturbation estimates gives <math|C<rsub|n>=C>,
  <math|f<around|(|n|)>=n>. <em|Lean:> <hlink|<verbatim|Rising.cinema>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45>.

  <strong|Proposition III.12.8 (positional ultraviolet limit).> Let <math|C>
  be a Wilson family and <math|e> a strictly increasing mesh sequence. Assume
  the kernel-bound conclusion of III.12.1 and that ceiling-address
  correlations are Cauchy along <math|e> whenever
  <math|x<rsub|i*\<mu\>>-x<rsub|j*\<mu\>>\<nin\>L<rsub|p>*\<bbb-Z\>> for
  every <math|i\<ne\>j> and axis <math|\<mu\>>. For every <math|p,n> and
  label list there is a function <math|f> on
  <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|n>>, smooth on
  <math|<math-up|NoHit><rsub|p>=<around|{|x:x<rsub|i>-x<rsub|j>\<nin\>L<rsub|p>*\<bbb-Z\><rsup|4>*<around|(|i\<ne\>j|)>|}>>,
  with these properties:

  <\itemize-minus>
    <item>For every smooth compactly supported <math|t> supported off
    collisions and strictly inside the centred period cell in every
    coordinate, smeared lattice sums converge along <math|e> to
    <math|<big|int>t*f>.

    <item>Fix any finite list of coordinate directions (slot, axis), with
    integers <math|q<rsub|->,q<rsub|+>\<geqslant\>0>,
    <math|q<rsub|->+q<rsub|+>\<gtr\>0> in each direction, using the stencil
    <math|<around|[|F*<around|(|x+q<rsub|+>*e<rsub|\<mu\>>|)>-F*<around|(|x-q<rsub|->*e<rsub|\<mu\>>|)>|]>/<around|[|<around|(|q<rsub|->+q<rsub|+>|)>*a<rsub|N>|]>>.
    Write <math|g> for the corresponding iterated derivative of <math|f>.
    Along <math|e<around|(|s<rsub|i>|)>> for every
    <math|s<rsub|i>\<to\>\<infty\>>, these differences at lattice
    configurations whose physical positions converge to
    <math|x\<in\><math-up|NoHit><rsub|p>> converge to <math|g<around|(|x|)>>.
    Their multilinear interpolations converge locally uniformly there. For
    every test <math|t> above, <math|t*g> is integrable and smeared
    differences converge to <math|<big|int>t*g>.
  </itemize-minus>

  <em|Status:> conditional theorem; the run hypotheses following III.12.7
  give the full sequence <math|e<around|(|s|)>=s>. <em|Lean:>
  <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47>;
  full-sequence instance <hlink|<verbatim|Campaign.realUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L45>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|II.1\UII.2, III.14:> labels, representatives, consistency
    and the <hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>
    record, whose ties supply the inputs of III.12.3.

    <item><strong|III.2, III.11:> numerical parameters, scale selection,
    section comparisons, regularity, local matching and short-distance
    estimates; the centred budget <hlink|<verbatim|Wcmain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L38-L40>
    states: for every degree <math|d>, <math|R\<gtr\>0> and
    <math|\<varepsilon\>\<gtr\>0>, there is <math|A\<geqslant\>0> such that
    for every <math|m\<geqslant\>t<around|(|d|)>>, eventually in the mesh,
    every <math|<around|\<\|\|\>|v|\<\|\|\>>\<leqslant\>R> and site <math|o>
    give an observable localized in the cell centred at <math|o>, with root
    at most <math|A*a<rsub|m><rsup|-d-\<varepsilon\>>>.

    <item><strong|IV.1:> <hlink|<verbatim|Seam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L14-L19>
    gives chessboard and root triangle inequalities; positional Lipschitz
    bounds and dense-set convergence. (The offset comparison comes from
    II.1.)

    <item><strong|III.6, III.8\UIII.10:> histories, selected branches,
    stationary paths and transfer estimates. <strong|VIII.1:>
    <hlink|<verbatim|Winter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L31-L63>
    supplies fixed-level convergence, kinetic reserve and free amplification;
    assembly supplies uniform perturbation inputs.

    <item><strong|Standard results:> Wilson reflection positivity
    (Osterwalder\USeiler); chessboard estimates and seminorm
    (Fröhlich\UIsrael\ULieb\USimon, Fröhlich\ULieb, Shlosman, Biskup);
    summation by parts, finite-dimensional injectivity stability,
    Arzelà\UAscoli, Taylor's theorem, absolutely convergent power series and
    dominated convergence. Volume-uniform control of effective actions:
    Balaban (1984\U1989).
  </itemize-minus>

  The section hypotheses require the prescribed polynomial realization and
  finite regularity bounds; dressings commute with signed lattice symmetries
  and conjugation. Dressed equation labels have zero Wilson expectation
  against every bounded measurable spectator depending only on links beyond a
  fixed lattice distance, for every nonzero inverse coupling and sufficiently
  large torus; spectators need not be gauge invariant.

  Full section-comparison data include terminal-coordinate automorphisms
  <math|A<rsub|d;N,p>>, auxiliary columns and sub-power
  <math|E<rsub|d><around|(|N|)>>. Eventually, uniformly in <math|p>,
  <math|A<rsub|d;N,p>> is the symmetry-averaged column map and its inverse
  increases coefficient size by at most <math|2>. For each column and its
  signed or conjugated versions, the centred root of the
  auxiliary-minus-chosen section evaluation is at most
  <math|C<rsub|d><around|(|m,k|)>*E<rsub|d><around|(|N|)>*a<rsub|N><rsup|1/8>>
  for every admissible <math|k\<less\>N> and <math|m\<leqslant\>N>; scale
  selection chooses <math|k> for each large <math|m>. The kernel is the image
  of the Maxwell equation ideal under dressing, threshold rescaling, terminal
  map and <math|A<rsub|d;N,p>>. Projection symmetries and finite-cutoff
  equation and difference comparisons are also required.

  Detector rows use test configurations with distinct projections on every
  axis in a box of side <math|a<rsub|<math-up|width><around|(|k|)>>>, and
  lifted partner labels bounded uniformly in <math|N,p> and finite indices
  for fixed <math|k>. Their short-distance cumulant comparisons approach the
  prescribed free Maxwell tests.

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Normalized differences introduce <math|a<rsub|N><rsup|-1>>, beyond the
  centred budget for bounded labels. Local matching replaces each differenced
  observable by a primary with sub-power inverse terminal coordinates and
  vanishing root error. Averaged partner correlations bound its projected
  physical label through an injective free Maxwell detector; equation labels
  contribute a vanishing root. This funds differences, and chessboard
  estimates bound their separated products.

  At fixed volume, compare full correlations with scalar-normalized
  correlations at an intermediate level. Fixed-level convergence makes the
  latter Cauchy, while an exponentially small tail in the budget radius tends
  to zero. Positional bounds extend convergence from common-lattice
  configurations; Taylor estimates identify derivatives. For coupling
  dependence, polynomial coefficient bounds and smaller parameter intervals
  turn level differences into summable coefficient errors.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item><strong|Match differences.> For a run with simple <math|G> and an
    eventually bounded degree-<math|d> label sequence <math|w>, normalized
    differences preserve regularity with sub-power bounds after increasing
    degree. Local matching gives a degree-<math|<around|(|d+<around|\||l|\|>|)>>
    coin <math|x> with <math|O<around|(|x|)>-\<Delta\><rsub|l>*O<around|(|w|)>>
    owed at <math|a<rsub|N><rsup|1/16>>. <hlink|<verbatim|prepared_rows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L47-L49>.

    <item><strong|Remove equation labels.> Under III.12.5's hypotheses,
    auxiliary equation sections have zero root: their exact distant-spectator
    identity annihilates the reflected product. Section comparison leaves
    cost <math|a<rsub|N><rsup|1/32>>. <hlink|<verbatim|banked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L105-L115>.

    <item><strong|Detect projected labels.> Under III.12.3's hypotheses,
    averaging differences telescopes and bounds tests by
    <math|<around|(|2/b|)><rsup|<around|\||l|\|>>> times undifferenced
    correlations. Short-distance comparison approaches the injective free
    Maxwell matrix; finite-dimensional stability and the rank bound give
    III.12.4. <hlink|<verbatim|trained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91>.

    <item><strong|Close the budget.> Under III.12.3's hypotheses, set
    <math|X=\<pi\>*x>. Apply negligible-equation control to
    <math|<around|(|x-X|)>/<around|(|1+<around|\<\|\|\>|X|\<\|\|\>>|)>>,
    obtaining <math|<around|\<\|\|\>|X|\<\|\|\>>\<leqslant\>Z*c+<tfrac|1|2><around|(|1+<around|\<\|\|\>|X|\<\|\|\>>|)>>.
    Thus <math|X> is bounded; the centred budget funds
    <math|O<around|(|X|)>>, and vanishing errors fund the desired difference.
    <hlink|<verbatim|cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L23-L63>,
    <hlink|<verbatim|improved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78>.

    <item><strong|Bound kernels.> Once all fixed-label differences are
    funded, place separated insertions in distinct cells with interior
    margins; offset comparison and the chessboard inequality bound products.
    Slot differences act on their insertions, giving III.12.1.
    <hlink|<verbatim|funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Literal.lean#L42-L61>.

    <item><strong|Control coupling series.> Under III.12.6's campaign
    hypotheses, composed transfer bounds give coefficient sums polynomial in
    <math|a<rsub|j+1><rsup|-1>>. With fixed-level convergence and
    perturbation inputs, interval reduction converts real
    <math|O<around|(|a<rsub|j>|)>> level differences to summable
    <math|C<sqrt|a<rsub|j>>> coefficient bounds. For fixed <math|p>, labels,
    compact <math|K\<subset\><math-up|NoHit><rsub|p>> and
    <math|q\<in\>\<bbb-N\>>, this gives a positive parameter width
    independent of cutoff and a neighbourhood of <math|K> with limits
    <math|C<rsup|q>> in position and analytic in the complex parameter;
    kernels with spatial stencils of length at most <math|q>, their
    interpolations and admissible smeared sums have analytic continuations
    whose parameter derivatives of every fixed order converging uniformly on
    compact subdiscs and compact spatial subsets.
    <hlink|<verbatim|Fan.standing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L94-L104>.

    <item><strong|Take the mesh limit.> Under III.12.7's hypotheses,
    fixed-level effective insertions and normalized densities are uniformly
    Cauchy; Haar integration and positive partition-function bounds give
    Cauchy correlations. For large fixed <math|j>, the full correlation
    differs by at most <math|2*F<rsub|0>*e<rsup|-B<rsub|j>/64>>, uniformly in
    sufficiently large cutoffs, with <math|F<rsub|0>> independent of <math|j>
    and cutoff and <math|B<rsub|j>\<to\>\<infty\>>.
    <hlink|<verbatim|Sever.echoes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Peat.lean#L41-L64>,
    <hlink|<verbatim|Rising.arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103>.

    <item><strong|Recover spatial derivatives.> Under III.12.8's hypotheses,
    equicontinuity extends dense-set convergence. Taylor comparison with
    differences over a fixed physical interval identifies successive
    derivative limits; stencil averaging, multilinear interpolation and
    dominated convergence give the remaining conclusions.
    <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L42-L47>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Matching controls inverse terminal coordinates; rank detection must bound
  physical labels while section comparison controls the projection kernel.
  Bounds are volume-uniform, but convergence fixes <math|p> first. Every
  derivative order is fixed before choosing the cutoff threshold; analytic
  widths may depend on volume, compact spatial set and derivative order. The
  additive action scalar need not converge. Collision extension belongs to
  VII.4.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <\itemize-minus>
    <item><math|a<rsub|N>=<around|(|\<ell\><rsub|0>*\<cdots\>*\<ell\><rsub|N-1>|)><rsup|-1>>;
    <math|\<Lambda\><rsub|N,p>> has physical period <math|L<rsub|p>>.
    <math|O<around|(|v;o|)>> represents <math|v\<in\><math-up|Lab><rsub|d>>;
    <math|\<bbb-E\><rsub|N,p>> is Wilson expectation.

    <item>Eventually in the mesh: all <math|N\<geqslant\>N<rsub|0>>, all
    <math|p>; <math|N<rsub|0>> may depend on a fixed coarse level. Sub-power
    growth means <math|<around|\<\|\|\>|w<rsub|N,p>|\<\|\|\>>\<leqslant\>a<rsub|N><rsup|-\<varepsilon\>>>
    eventually for every <math|\<varepsilon\>\<gtr\>0>. A
    <hlink|<verbatim|Coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L146-L147>
    is a label sequence <math|x> with <math|<around|\<\|\|\>|\<tau\><rsub|d;N,p><rsup|-1>*x<rsub|N,p>|\<\|\|\>>>
    of sub-power growth, where <math|\<tau\>> is the terminal coordinate
    isomorphism.

    <item><math|\<Delta\><rsub|\<mu\>>*F<around|(|o|)>=<around|[|F*<around|(|o+e<rsub|\<mu\>>|)>-F<around|(|o|)>|]>/a<rsub|N>>;
    lists indicate iteration. A trial is a site-indexed family of gauge-field
    functions; it is local if eventually translation covariant, gauge
    invariant, measurable, bounded and supported on one fixed finite link
    stencil.

    <item><math|R<rsub|m><around|(|H|)>> is the absolute reflected-product
    expectation to power <math|1/<around|(|L<rsub|p>/a<rsub|m>|)><rsup|4>> on
    centred cells of physical side <math|a<rsub|m>>, conjugating odd
    reflections. A local trial is <strong|funded> if, for all large <math|m>,
    eventually in the mesh, its value at <math|0> is localized in the central
    cell and has root at most <math|u<around|(|m|)>> independent of
    <math|N,p>; <strong|owed> replaces <math|u<around|(|m|)>> by a cost
    <math|v<around|(|N,p|)>> independent of <math|m>.

    <item><math|\<pi\><rsub|N,p>> is an idempotent label map; its
    dressed-equation kernel is an additional hypothesis. Ceiling addresses
    are <math|\<alpha\><rsub|N><around|(|x|)><rsub|i*\<mu\>>=<around|\<lceil\>|x<rsub|i*\<mu\>>/a<rsub|N>|\<rceil\>>>.
    <math|B<rsub|j>=<around|\<lceil\>|<around|(|log
    <wide|\<beta\>|^><rsub|j>|)><rsup|2>|\<rceil\>>> is the budget radius.
  </itemize-minus>

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  The local matching estimate, construction of auxiliary equation sections
  and relation to lattice Schwinger\UDyson identities remain imported or
  unverified here. One-step transfer capacity, intermediate weighted analytic
  estimates, spatial derivative identification for analytic limits, and
  multiscale remainder and omission bounds need their source analyses.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/III-12.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|III.1|III-1.tm>, <hlink|III.10|III-10.tm>,
  <hlink|I.1|I-1.tm>, <hlink|VIII.1|VIII-1.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.2|III-2.tm>, <hlink|III.16|III-16.tm>, <hlink|III.11|III-11.tm>,
  <hlink|III.9|III-9.tm>, <hlink|II.2|II-2.tm>, <hlink|III.5|III-5.tm>,
  <hlink|IV.1|IV-1.tm>, <hlink|III.15|III-15.tm>, <hlink|III.6|III-6.tm>,
  <hlink|III.7|III-7.tm>, <hlink|V.2|V-2.tm>, <hlink|III.4|III-4.tm>.

  <strong|Referenced by:> <hlink|VIII.1|VIII-1.tm>, <hlink|III.2|III-2.tm>,
  <hlink|III.14|III-14.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 18,973 attributed lines; 3,138 line-counted
  declarations; 4,449 assigned declaration names. Of the assigned names,
  4,315 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|pricedB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96>
    and the results it chains to \V 3,547 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Panel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panel>,
    with <hlink|<verbatim|YM/FullVolume/Umbra/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Umbra>,
    <hlink|<verbatim|YM/FullVolume/Rank/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank>
    \V 1,761 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/E6/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/E6>
    \V 1,564 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume>
    \V 1,519 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Spiral/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral>
    \V 1,049 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Mark/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark>
    \V 948 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Florid/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid>
    \V 919 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Luna/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna>
    \V 766 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Sector/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sector>
    \V 743 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Sym/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sym>
    \V 676 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Fields/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields>
    \V 648 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Amp/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp>
    \V 640 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Ray/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray>
    \V 554 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Glitz/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz>
    \V 535 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Table/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Table>
    \V 371 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Shroud/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud>
    \V 369 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Poesy/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Poesy>
    \V 351 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Gain/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain>
    \V 280 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Orbit/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Orbit>
    \V 263 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/C/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/C>
    \V 259 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Renew/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Renew>
    \V 188 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Canvas/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Canvas>
    \V 144 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Gables/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables>
    \V 140 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Auvi/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Auvi>
    \V 117 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Relay/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay>
    \V 110 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Artes/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Artes>
    \V 97 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Rise/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rise>
    \V 96 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Roll/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll>
    \V 76 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Tess/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess>
    \V 52 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Nectar/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar>
    \V 51 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Regent/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Regent>
    \V 42 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Dusk/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Dusk>
    \V 29 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Fares/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares>
    \V 28 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Reel/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Reel>
    \V 16 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Stage/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stage>
    \V 11 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Antenna/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Antenna>
    \V 9 lines.

    <item>work package <hlink|<verbatim|YM/FullVolume/Phases/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Phases>
    \V 5 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|laws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Certificate.lean#L21-L24>

    <item><hlink|<verbatim|Columns.Trials>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L53-L66>

    <item><hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L34-L40>

    <item><hlink|<verbatim|seamless>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L81-L84>

    <item><hlink|<verbatim|rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226-L227>

    <item><hlink|<verbatim|centeredBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Center.lean#L21-L23>

    <item><hlink|<verbatim|stepTotal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Equicontinuity.lean#L66-L103>

    <item><hlink|<verbatim|NoHit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Patch.lean#L25-L26>

    <item><hlink|<verbatim|address>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Round.lean#L18>

    <item><hlink|<verbatim|growFrom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Tame.lean#L35-L97>

    <item><hlink|<verbatim|Amp.give>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L16-L39>

    <item><hlink|<verbatim|cohort>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L39-L66>

    <item><hlink|<verbatim|FullVolume.financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cohort.lean#L68-L71>

    <item><hlink|<verbatim|Run.ramp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L55-L60>

    <item><hlink|<verbatim|Run.Ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71>

    <item><hlink|<verbatim|Run.again>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L73-L75>

    <item><hlink|<verbatim|realized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L83-L95>

    <item><hlink|<verbatim|gKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L15-L16>

    <item><hlink|<verbatim|actuate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L27-L45>

    <item><hlink|<verbatim|FixedBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Discrete.lean#L50-L52>

    <item><hlink|<verbatim|Confluence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Basin.lean#L10-L12>

    <item><hlink|<verbatim|Rising>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L19-L22>

    <item><hlink|<verbatim|Rising.flooded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L31-L35>

    <item><hlink|<verbatim|hail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L57-L61>

    <item><hlink|<verbatim|creditP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L62-L63>

    <item><hlink|lies exactly on a common
    lattice|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Eves.lean#L12>

    <item><hlink|<verbatim|Campaign.sees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L30-L38>

    <item><hlink|<verbatim|Campaign.purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Filled.lean#L40-L44>

    <item><hlink|<verbatim|absolute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L31-L33>

    <item><hlink|<verbatim|brisk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Sever.lean#L16>

    <item><hlink|<verbatim|limitVault>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L29-L33>

    <item><hlink|<verbatim|ships>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L51-L53>

    <item><hlink|<verbatim|Rising.latter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L57-L66>

    <item><hlink|<verbatim|Spending>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Atlas.lean#L85-L91>

    <item><hlink|<verbatim|from_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L117-L126>

    <item><hlink|<verbatim|Final.Jewel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L133-L149>

    <item><hlink|<verbatim|Final.july>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L154-L164>

    <item><hlink|<verbatim|bareTrial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L70-L77>

    <item><hlink|<verbatim|Travel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Program.lean#L84-L99>

    <item><hlink|correlations agree with those of the auxiliary transfer
    families|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Finale/Real.lean#L71-L73>

    <item><hlink|<verbatim|Hearthside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20>

    <item><hlink|<verbatim|dagger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L28-L49>

    <item><hlink|<verbatim|ahead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Forge.lean#L60-L72>

    <item><hlink|<verbatim|Helmet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Honors.lean#L30-L35>

    <item><hlink|<verbatim|Branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L30-L33>

    <item><hlink|<verbatim|ask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gain/Resolve.lean#L72>

    <item><hlink|<verbatim|offers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glide/Vac.lean#L65-L89>

    <item><hlink|<verbatim|farther>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L16-L17>

    <item><hlink|<verbatim|hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L19-L21>

    <item><hlink|<verbatim|Stencil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L29>

    <item><hlink|<verbatim|Tucked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L47-L49>

    <item><hlink|<verbatim|Tucked.up>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L60-L75>

    <item><hlink|<verbatim|Tucked.farther>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L77-L95>

    <item><hlink|<verbatim|Tucked.hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Hits.lean#L97-L101>

    <item><hlink|<verbatim|sweep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L17-L19>

    <item><hlink|<verbatim|weighed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L21-L47>

    <item><hlink|<verbatim|display>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L50>

    <item><hlink|<verbatim|focus>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L21>

    <item><hlink|<verbatim|gaugesFull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L24-L46>

    <item><hlink|<verbatim|siblingsPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L80-L83>

    <item><hlink|<verbatim|warded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L86-L101>

    <item><hlink|<verbatim|fixed_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L65-L67>

    <item><hlink|<verbatim|ocean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ocean.lean#L41-L75>

    <item><hlink|<verbatim|studded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L23-L29>

    <item><hlink|<verbatim|readyCoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Paid.lean#L35-L46>

    <item><hlink|<verbatim|interpolated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Panes.lean#L52-L53>

    <item><hlink|<verbatim|PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25-L36>

    <item><hlink|<verbatim|printed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L52-L57>

    <item><hlink|<verbatim|Ray.sun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Ray/Gain.lean#L22>

    <item><hlink|<verbatim|localLip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L42-L54>

    <item><hlink|<verbatim|taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L58-L77>

    <item><hlink|<verbatim|intervalClock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Budget.lean#L34>

    <item><hlink|<verbatim|aperture>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L62-L68>

    <item><hlink|the same file|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean>

    <item><hlink|<verbatim|Affords.recurses>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L107-L110>

    <item><hlink|<verbatim|Funded.sub>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L116-L118>

    <item><hlink|<verbatim|Funded.primaries>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L119-L128>

    <item><hlink|<verbatim|Affords>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L19-L22>

    <item><hlink|<verbatim|Owed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L24>

    <item><hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L28>

    <item><hlink|<verbatim|Affords.every>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L39-L60>

    <item><hlink|<verbatim|Affords.enlarged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L61-L62>

    <item><hlink|<verbatim|Affords.sub>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L63-L79>

    <item><hlink|<verbatim|Affords.scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rent.lean#L80-L87>

    <item><hlink|<verbatim|hole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Silent.lean#L61-L90>

    <item><hlink|<verbatim|same_delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L40-L45>

    <item><hlink|<verbatim|rounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L77-L87>

    <item><hlink|<verbatim|reserve_abs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Skein.lean#L89-L101>

    <item><hlink|<verbatim|mesh>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L13>

    <item><hlink|<verbatim|Sluggish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Sluggish.lean#L37-L38>

    <item><hlink|<verbatim|slash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L58>

    <item><hlink|<verbatim|verso>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Chrome.lean#L65>

    <item><hlink|<verbatim|PaidBeam>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dome.lean#L31-L32>

    <item><hlink|<verbatim|firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L20-L39>

    <item><hlink|<verbatim|rank_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L42-L56>

    <item><hlink|<verbatim|true_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Stand.lean#L73-L83>

    <item><hlink|<verbatim|Cluster>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L55-L58>

    <item><hlink|<verbatim|reachable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Strings.lean#L90-L92>

    <item><hlink|<verbatim|traceS>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Lease.lean#L88-L96>

    <item><hlink|A polynomial coefficient
    estimate|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Pier.lean#L25-L42>

    <item><hlink|<verbatim|astronomer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Stream.lean#L54-L77>

    <item><hlink|<verbatim|charted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Tan.lean#L104-L109>

    <item><hlink|Cauchy convergence of the real
    values|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/Zoom.lean#L43-L48>

    <item><hlink|<verbatim|returns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L21-L31>

    <item><hlink|<verbatim|circulating>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L38-L54>

    <item><hlink|<verbatim|Purchased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L56-L58>

    <item><hlink|<verbatim|established>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L60-L61>

    <item><hlink|<verbatim|from_previous>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tuned.lean#L71-L125>

    <item><hlink|<verbatim|rampant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Unlatch.lean#L38-L76>

    <item><hlink|<verbatim|monitor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L14>

    <item><hlink|<verbatim|scores_hops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L43-L51>

    <item><hlink|<verbatim|assay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L86>

    <item><hlink|<verbatim|probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Windows.lean#L88>

    <item><hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>

    <item><hlink|<verbatim|scale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115>

    <item><hlink|<verbatim|tent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Balloon.lean#L22-L47>

    <item><hlink|<verbatim|coastwise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Baskets.lean#L36-L67>

    <item><hlink|<verbatim|gardena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Gardens.lean#L19-L40>

    <item><hlink|<verbatim|Presentation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/EXTRACTION/Relay.lean#L39-L41>

    <item><hlink|<verbatim|Purchases>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Bought.lean#L68-L84>

    <item><hlink|scale-selection conditions|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Overlay/Prior.lean#L15-L18>

    <item><hlink|<verbatim|gamma>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Estimate.lean#L68>

    <item><hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>

    <item><hlink|<verbatim|flight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Rates.lean#L40>

    <item><hlink|<verbatim|charged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L121-L126>

    <item><hlink|<verbatim|offmask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L133-L151>

    <item><hlink|<verbatim|unpriced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L25-L26>

    <item><hlink|<verbatim|clothed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L28-L29>

    <item><hlink|<verbatim|section_bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/RawTop.lean#L90-L118>

    <item><hlink|<verbatim|Local>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Stencils.lean#L20-L22>

    <item><hlink|<verbatim|MicroAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31>

    <item><hlink|<verbatim|jewelOf17>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG17/Joint.lean#L102-L111>

    <item><hlink|<verbatim|radiusB_tendsto>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E01.lean#L210-L211>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-iii-12-1>

  <\itemize-minus>
    <item><strong|K-III.12.1> <hlink|<verbatim|stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Amp/Blank.lean#L42-L43>
    \V A function analytic along a dense isometric leg has a multilinear
    power-series expansion with geometric norm bounds converging on a ball.
  </itemize-minus>

  <label|k-iii-12-2>

  <\itemize-minus>
    <item><strong|K-III.12.2> <hlink|<verbatim|stays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Master.lean#L50-L53>
    <em|(numbered result)> \V For m at least r, a certain defined sequence
    stays within the authorized class.
  </itemize-minus>

  <label|k-iii-12-3>

  <\itemize-minus>
    <item><strong|K-III.12.3> <hlink|<verbatim|pricedB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Tess/BarsP.lean#L79-L96>
    <em|(key result)> \V For any list of motions, swell beams are paid-for
    with polynomial bound in the interval clock, eventually in j, uniformly
    on compact tags.
  </itemize-minus>

  <label|k-iii-12-4>

  <\itemize-minus>
    <item><strong|K-III.12.4> <hlink|<verbatim|financed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fares/Scrap.lean#L40-L51>
    <em|(numbered result)> \V \<exists\> b m:\<bbb-N\>, \<exists\> (B
    c:\<bbb-R\>)(hb:c\<in\>Ray.sun),0 \<less\> c \<wedge\> 0\<leqslant\> B
    \<wedge\> \<forall\> j N:\<bbb-N\>,\<forall\> (h:m \<leqslant\>
    j)(ht:j\<less\>N),\<forall\> (a:\<bbb-R\>)(hp:a\<in\>Ray.sun)
    (F:Ray.sun\<rightarrow\> Face T W), (\<forall\> s:Ray.sun, evalV T W (F
    s) p N= Muse.Contest.ask (P) (slash a hp s).val) \<rightarrow\> \<ldots\>
  </itemize-minus>

  <label|k-iii-12-5>

  <\itemize-minus>
    <item><strong|K-III.12.5> <hlink|<verbatim|polynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Income.lean#L67-L72>
    <em|(numbered result)> \V PaidBeam (fun s:Ray.sun=\<gtr\> scoreItem T W N
    p F B d x \<ell\> o k (Muse.slash c hb s)) ((denomination R T p m
    (Fintype.card I))* intervalClock R (j+1)^ (debt b k.val.card))
  </itemize-minus>

  <label|k-iii-12-6>

  <\itemize-minus>
    <item><strong|K-III.12.6> <hlink|<verbatim|storms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Summary.lean#L72-L74>
    <em|(numbered result)> \V PaidBeam (fun s:Ray.sun=\<gtr\> scoreItem T W N
    p F B d x \<ell\> o k (Muse.slash b hb s)) ((2* (FullVolume.Retreat.till
    L! m p)\<#207B\>\<onesuperior\>)* (outCharge R T p m (Fintype.card I)
    v\<#2080\>/Poly.toll w k))
  </itemize-minus>

  <label|k-iii-12-7>

  <\itemize-minus>
    <item><strong|K-III.12.7> <hlink|<verbatim|cruise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Vault.lean#L83-L98>
    <em|(numbered result)> \V \<exists\> \<nu\>, Furl T W N p m F \<Theta\>
    (hp.trans_lt hj) B d x \<ell\> o w (u m) \<nu\> \<wedge\> \<forall\>
    i,PaidBeam (fun s:Ray.sun=\<gtr\>\<nu\> s i) (quoteUnit T j (d i)
    \<\|\|\>x i\<\|\|\>)
  </itemize-minus>

  <label|k-iii-12-8>

  <\itemize-minus>
    <item><strong|K-III.12.8> <hlink|<verbatim|lobby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Pavilion.lean#L185-L202>
    <em|(numbered result)> \V Primary probe evaluations are uniformly
    approximated locally near grid points at all periods, including period
    zero.
  </itemize-minus>

  <label|k-iii-12-9>

  <\itemize-minus>
    <item><strong|K-III.12.9> <hlink|<verbatim|design>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Slate.lean#L29-L104>
    <em|(numbered result)> \V Applying the coupon to packed addresses before
    shrinking yields a bound for the plate with unit amplitude untouched.
  </itemize-minus>

  <label|k-iii-12-10>

  <\itemize-minus>
    <item><strong|K-III.12.10> <hlink|<verbatim|arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Timber.lean#L73-L103>
    <em|(key result)> \V For k \<leqslant\> r, the pilot quantities along the
    sequence of families form a Cauchy sequence.
  </itemize-minus>

  <label|k-iii-12-11>

  <\itemize-minus>
    <item><strong|K-III.12.11> <hlink|<verbatim|dashF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L180-L191>
    <em|(numbered result)> \V A local property of table entries holds for
    each index under entry hypotheses.
  </itemize-minus>

  <label|k-iii-12-12>

  <\itemize-minus>
    <item><strong|K-III.12.12> <hlink|<verbatim|cinema>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Seat.lean#L37-L45>
    <em|(key result)> \V The numeric values of the family sequence at the
    given data form a Cauchy sequence, so the limit exists.
  </itemize-minus>

  <label|k-iii-12-13>

  <\itemize-minus>
    <item><strong|K-III.12.13> <hlink|<verbatim|stencilH>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/YardP.lean#L153-L172>
    <em|(numbered result)> \V Under an entry hypothesis, an Epics estimate
    holds at the next level.
  </itemize-minus>

  <label|k-iii-12-14>

  <\itemize-minus>
    <item><strong|K-III.12.14> <hlink|<verbatim|invites>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L104-L139>
    <em|(key result)> \V For small b, the average detector is bounded on
    funded trials and tends to zero on owed trials with vanishing cutoff.
  </itemize-minus>

  <label|k-iii-12-15>

  <\itemize-minus>
    <item><strong|K-III.12.15> <hlink|<verbatim|tiers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Pole.lean#L50-L59>
    <em|(key result)> \V The matrix T' m hr has the Ritzy property.
  </itemize-minus>

  <label|k-iii-12-16>

  <\itemize-minus>
    <item><strong|K-III.12.16> <hlink|<verbatim|cams>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Tracks.lean#L79>
    <em|(numbered result)> \V Differences of income and spends between two
    sequences of data tend to zero.
  </itemize-minus>

  <label|k-iii-12-17>

  <\itemize-minus>
    <item><strong|K-III.12.17> <hlink|<verbatim|linters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Rank/Stitch.lean#L104-L130>
    <em|(numbered result)> \V For each index, two sequences of shot
    coordinates built from coin uses satisfy a Hue relation relative to
    holonomy data.
  </itemize-minus>

  <label|k-iii-12-18>

  <\itemize-minus>
    <item><strong|K-III.12.18> <hlink|<verbatim|grow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Capital.lean#L55-L56>
    <em|(key result)> \V Level-d coefficients and associated coins along the
    sequence are Cauchy, with coins compatible with the capture of data.
  </itemize-minus>

  <label|k-iii-12-19>

  <\itemize-minus>
    <item><strong|K-III.12.19> <hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>
    <em|(numbered result)> \V A data structure recording one fixed campaign
    of the multi-scale scheme with retained startup and support data.
  </itemize-minus>

  <label|k-iii-12-20>

  <\itemize-minus>
    <item><strong|K-III.12.20> <hlink|<verbatim|program>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Nectar/Laid.lean#L85-L102>
    <em|(key result)> \V There exist data E and K satisfying the pulse
    hypothesis for the given parameters, an existence statement for the
    construction.
  </itemize-minus>

  <label|k-iii-12-21>

  <\itemize-minus>
    <item><strong|K-III.12.21> <hlink|<verbatim|many>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Pulse.lean#L101-L104>
    <em|(key result)> \V Combining many ships indexed by sites, under token
    and attic hypotheses, yields a single consistent extraction of kernel
    data.
  </itemize-minus>

  <label|k-iii-12-22>

  <\itemize-minus>
    <item><strong|K-III.12.22> <hlink|<verbatim|improved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Moneys.lean#L69-L78>
    <em|(main result)> \V If a family of lattice quantities satisfies a
    full-volume bound and a vanishing-mesh condition, then the family of its
    canonical differences also satisfies the full-volume bound.
  </itemize-minus>

  <label|k-iii-12-23>

  <\itemize-minus>
    <item><strong|K-III.12.23> <hlink|<verbatim|destination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Brace.lean#L61-L78>
    <em|(key result)> \V Coefficient maps are paid-beam bounded with linear
    constant, and the beam bound propagates from level m to m+1 with a
    multiplicative factor.
  </itemize-minus>

  <label|k-iii-12-24>

  <\itemize-minus>
    <item><strong|K-III.12.24> <hlink|<verbatim|projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Florid/Gild.lean#L57-L101>
    <em|(key result)> \V For rate at most -7/16, for large side lengths, a
    budget-point estimate (Jam) holds eventually in x for every tuned
    configuration on tubes over a branching patch.
  </itemize-minus>

  <label|k-iii-12-25>

  <\itemize-minus>
    <item><strong|K-III.12.25> <hlink|<verbatim|linked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Spiral/Dais.lean#L64-L80>
    <em|(key result)> \V Assuming beam bounds at the next level, beam bounds
    hold at level m and propagate to level m+1 with the block-size factor.
  </itemize-minus>

  <label|k-iii-12-26>

  <\itemize-minus>
    <item><strong|K-III.12.26> <hlink|<verbatim|primaryJG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Glitz/RockG.lean#L81-L129>
    <em|(key result)> \V A primary-step estimate for the multiscale
    induction, given suitable scale conditions and acceptance.
  </itemize-minus>

  <label|k-iii-12-27>

  <\itemize-minus>
    <item><strong|K-III.12.27> <hlink|<verbatim|trained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Lit.lean#L51-L91>
    <em|(key result)> \V For large k and small b, step sizes are uniformly
    bounded by a constant times the probe norm over the mesh, giving uniform
    rank detection.
  </itemize-minus>

  <label|k-iii-12-28>

  <\itemize-minus>
    <item><strong|K-III.12.28> <hlink|<verbatim|composeT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Vega.lean#L47-L78>
    <em|(key result)> \V Single-step constructions satisfying cost and
    affordability conditions at each scale from k' to N can be composed into
    a full history ending at a given top configuration.
  </itemize-minus>

  <label|k-iii-12-29>

  <\itemize-minus>
    <item><strong|K-III.12.29> <hlink|<verbatim|motor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Mark/Wheels.lean#L38-L247>
    <em|(key result)> \V A single step of the shared linear column-family
    construction produces, from a tool with a capacity bound, a new tool with
    controlled bounds at the next scale.
  </itemize-minus>

  <label|k-iii-12-30>

  <\itemize-minus>
    <item><strong|K-III.12.30> <hlink|<verbatim|composing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Major.lean#L53-L63>
    <em|(key result)> \V There exists transfer data based on the holonomy
    structure that satisfies the required composed property.
  </itemize-minus>

  <label|k-iii-12-31>

  <\itemize-minus>
    <item><strong|K-III.12.31> <hlink|<verbatim|earned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Shroud/Plateau.lean#L53-L67>
    <em|(key result)> \V A small perturbation of a representation by a
    parameter keeps it lawful with slightly weakened constants while leaving
    its evaluation unchanged, uniformly for small perturbation size.
  </itemize-minus>

  <label|k-iii-12-32>

  <\itemize-minus>
    <item><strong|K-III.12.32> <hlink|<verbatim|laven>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fields/Ivy.lean#L37-L39>
    <em|(key result)> \V If a quantity is bounded below eventually and
    functions are measurable, the sequence of mid-values is Cauchy.
  </itemize-minus>

  <label|k-iii-12-33>

  <\itemize-minus>
    <item><strong|K-III.12.33> <hlink|<verbatim|probesUp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Maintain.lean#L57-L78>
    <em|(key result)> \V For small b and fine mesh, the probe at boosted
    inputs is within epsilon of the monitor of the upper extension.
  </itemize-minus>

  <label|k-iii-12-34>

  <\itemize-minus>
    <item><strong|K-III.12.34> <hlink|<verbatim|attic_close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Relay/Attic.lean#L50-L88>
    <em|(key result)> \V Under weighted analytic budget hypotheses on
    multisource arrays, the Attic weighted analytic bound closes with the
    stated constants.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> III.11 Interacting rank, Gaussian
  comparison and the stress tensor|III-11.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Detailed
  notes|../notes/III-12.tm>|<hlink|III.13 Alternative construction: one
  Wilson family for all labels \<rightarrow\>|III-13.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.12. Bounds uniform in the volume and
    convergence as the spacing tends to zero \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|3>>
    <associate|3-strategy|<tuple|3|4>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|6>>
    <associate|6-notation|<tuple|6|6>>
    <associate|7-what-remains-unexplained|<tuple|7|6>>
    <associate|additional-source-locations|<tuple|9.1|8>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|8>>
    <associate|auto-11|<tuple|10|13>>
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|6>>
    <associate|auto-8|<tuple|8|7>>
    <associate|auto-9|<tuple|9|7>>
    <associate|code-dependencies|<tuple|8|7>>
    <associate|iii12-bounds-uniform-in-the-volume-and-convergence-as-the-spacing-tends-to-zero|<tuple|?|1>>
    <associate|k-iii-12-1|<tuple|10|13>>
    <associate|k-iii-12-10|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-11|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-12|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-13|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-14|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-15|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-16|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-17|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-18|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-19|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-iii-12-20|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-21|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-22|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-iii-12-24|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-25|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-26|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-27|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-28|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-29|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-3|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-30|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-31|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-32|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-33|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-iii-12-34|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-iii-12-4|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-5|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-6|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-7|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-8|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-iii-12-9|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|key-statements|<tuple|10|13>>
    <associate|lean-source|<tuple|9|7>>
    <associate|unit-difficulty|<tuple|8|6>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|3>>
    <associate|unit-limitations|<tuple|<with|mode|<quote|math>|<rigid|->>|6>>
    <associate|unit-notation|<tuple|5|6>>
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