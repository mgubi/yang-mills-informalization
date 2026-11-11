<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.2 The free Maxwell stress tensor and
  the local Ward charge|VI-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-1.tm>|<hlink|VII.2 The trace of the stress tensor and
  the trace anomaly \<rightarrow\>|VII-2.tm>>

  <ym-title|VII.1. Free Maxwell fields for the short-distance
  comparison><label|vii1-free-maxwell-fields-for-the-short-distance-comparison>

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

  Builds the free Maxwell correlation functions and detection estimates
  needed for the short-distance comparison.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VII-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VI.2|VI-2.tm> <ym-middot> <hlink|Next: VII.2
  \<rightarrow\>|VII-2.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <strong|Reading scope.> This unit supplies the free side of the comparison.
  The interacting comparison is explained in <hlink|VI.2|VI-2.tm> and
  assembled in <hlink|VIII.1|VIII-1.tm>.

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:> the
    chain of <hlink|<verbatim|YM/Pert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert>
    (folders <verbatim|Fourier>, <verbatim|Align>, <verbatim|Warp>,
    <verbatim|Rig>, the jet stencils of <verbatim|Lattice>, the statement
    <verbatim|Position/Crest.finite_leading>, and <verbatim|Dense>),
    <hlink|<verbatim|YM/Push/FINITE_DETECTION>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION>,
    <hlink|<verbatim|YM/SharpGram/Weak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak>,
    <hlink|<verbatim|YM/SharpGram/Dense>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense>,
    <hlink|<verbatim|YM/RG08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08>
    (about thirty small sub-folders), <hlink|<verbatim|YM/PertExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension>,
    <hlink|<verbatim|YM/OPE/Levy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy>.
    <strong|Size:> 8,117 lines.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Fix a compact matrix gauge group <math|G> with real simple nonabelian Lie
  algebra <math|\<frak-g\>>, invariant inner product and orthonormal colour
  basis. Let <math|V<rsub|d>> be complex <math|<math-up|Ad><around|(|G|)>>-invariant
  radial-jet polynomials of engineering weight at most <math|d>,
  <math|F<rsub|d>> their free-null quotient, <math|\<rho\>> restriction to
  Maxwell jets, <math|\<cal-I\><rsub|d>=V<rsub|d>\<cap\>ker \<rho\>>, and
  <math|\<omega\><rsub|d>=\<rho\>\<circ\><math-up|sec><rsub|d>> for the VII.3
  representatives.

  <strong|Proposition VII.1.1 (regulator removal).> For every integer
  <math|L\<geqslant\>2>, <math|d,r\<in\>\<bbb-N\>>, label frames,
  <math|p\<in\>F<rsub|d><rsup|r>> and continuous <math|f> with compact closed
  support in <math|<math-up|Conf><rsub|r>>, set <math|h<rsub|m>=L<rsup|-m>>,
  <math|N<rsub|m>=4*L<rsup|m<rsup|2>+m+1>>. Then

  <\equation*>
    \<Pi\><rsub|m><around|(|f;p|)>\<longrightarrow\><big|int>f<around|(|x|)>*\<cal-W\><rsub|x><around|(|\<omega\><rsub|d>*p<rsub|1>,\<ldots\>,\<omega\><rsub|d>*p<rsub|r>|)>*<space|0.17em>d*x.
  </equation*>

  For any position board with smooth compactly supported profiles in
  <math|<math-up|Conf>>, order-zero readings converge slotwise for every
  basis-label tuple to free readings. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|Rig.zerothProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69>,
  <hlink|<verbatim|Position.finite_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16>.

  <strong|Proposition VII.1.2 (pointwise limit).> For every itinerary
  <math|<around|(|N<rsub|i>,h<rsub|i>|)>> with <math|4\<mid\>N<rsub|i>>,
  <math|d,r\<in\>\<bbb-N\>>, <math|z\<in\><math-up|Conf><rsub|r>>, sites
  <math|o<rsub|i,j>> homing to <math|z<rsub|j>>, and
  <math|p\<in\>F<rsub|d><rsup|r>>,

  <\equation*>
    <around*|\<langle\>|<big|prod><rsub|j>R<rsub|h<rsub|i>><around|(|<math-up|sec><rsub|d>p<rsub|j>,o<rsub|i,j>|)>|\<rangle\>><rsup|<around|(|0|)>><rsub|N<rsub|i>>\<longrightarrow\>\<cal-W\><rsub|z><around|(|\<omega\><rsub|d>*p<rsub|1>,\<ldots\>,\<omega\><rsub|d>*p<rsub|r>|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Warp.row_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68>.

  <strong|Proposition VII.1.3 (corrected covariance).> For every such
  itinerary, any index set <math|\<iota\>>, injective
  <math|z:\<iota\>\<to\>\<bbb-R\><rsup|4>>, homing sites <math|o<rsub|i,j>>,
  indices <math|j,l> and keys <math|a,b>,

  <\equation*>
    <math-up|Cov><rsub|\<mu\><rsub|N<rsub|i>>><around|(|\<ell\><rsup|h<rsub|i>><rsub|o<rsub|i,j>,a>,\<ell\><rsup|h<rsub|i>><rsub|o<rsub|i,l>,b>|)>-\<delta\><rsub|j*l>*S<rsub|h<rsub|i>><around|(|a,b|)>\<longrightarrow\><choice|<tformat|<table|<row|<cell|K<rsub|a*b>*<around|(|z<rsub|j>-z<rsub|l>|)>,>|<cell|j\<ne\>l,>>|<row|<cell|0,>|<cell|j=l.>>>>>
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Align.corrected_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44>.

  <strong|Proposition VII.1.4 (detection).> For every
  <math|v\<in\>V<rsub|d>\<setminus\>\<cal-I\><rsub|d>>,

  <\equation*>
    <math-up|Re><space|0.17em>\<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around|(|\<rho\>*v,\<rho\><around|(|\<sigma\><wide|v|\<bar\>>|)>|)>\<gtr\>0.
  </equation*>

  More generally, for the diagonalizing and reflected probe substitutions
  <math|\<Phi\>,\<Psi\>>, every nonzero shell polynomial <math|q> satisfies
  <math|<math-up|Re><space|0.17em>\<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around|(|\<Phi\>*q,\<Psi\><wide|q|\<bar\>>|)>\<gtr\>0>.
  Here <math|\<Phi\>> is onto and <math|\<rho\>*v=\<Phi\>*q> implies
  <math|\<rho\><around|(|\<sigma\><wide|v|\<bar\>>|)>=\<Psi\><wide|q|\<bar\>>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Free.two_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155>,
  <hlink|<verbatim|Free.positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149>.

  <strong|Proposition VII.1.5 (Kelvin formulas).> For every real symmetric
  <math|j>-tensor <math|A> with harmonic diagonal, and <math|x\<ne\>0>,

  <\equation*>
    <frac|A<around|(|\<partial\>,\<ldots\>,\<partial\>|)>*\<Gamma\><around|(|x|)>|j!>=<frac|<around|(|-2|)><rsup|j>|4*\<pi\><rsup|2>><around|\||x|\|><rsup|-2*<around|(|j+1|)>>*A<around|(|x,\<ldots\>,x|)>.
  </equation*>

  For every <math|\<frak-g\>>-valued Maxwell shell tensor
  <math|Y\<in\><math-up|Sh><rsub|j>>, contracting the curvature kernel's
  first rank-<math|j> Taylor leg with <math|Y>, summing colours, ordered form
  indices and jet indices without <math|1/2>, gives
  <math|\<gamma\><rsub|j>*\<iota\><rsup|\<ast\>>*Y<rsup|\<natural\>><around|(|x|)>>
  for <math|x\<ne\>0>, where <math|\<iota\><around|(|x|)>=-x/<around|\||x|\|><rsup|2>>,
  <math|Y<rsup|\<natural\>><around|(|x|)>=Y<around|(|x,\<ldots\>,x|)>> and
  <math|\<gamma\><rsub|j>=2<rsup|j>*<around|(|j+1|)>*<around|(|j+2|)>/\<pi\><rsup|2>>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Kelvin.harmonic_Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180>,
  <hlink|<verbatim|Kelvin.response_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176>.

  <strong|Proposition VII.1.6 (corrected charts).> Fix a realized Wilson
  family, construction record with limit table <math|S> and extraction order
  <math|f>, VII.4 OPE data, <math|D\<in\>\<bbb-N\>>, and a nontrivial filter
  <math|u> on <math|\<bbb-N\><rsup|2>> finer than <math|f>'s extraction
  filter. Assume a weak measuring <hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49>
  through <math|D>: observable/Haar bounds, Haar chart ratio, three price
  panels and a dominating label-cost constant;
  <math|g<around|(|k|)>\<to\>\<infty\>> with eventually
  <math|g<around|(|k|)>\<leqslant\>k> and

  <\equation*>
    <math-up|scale><around|(|k|)>\<leqslant\><math-up|scale><around|(|g<around|(|k|)>|)>+log
    <wide|\<beta\>|^><rsub|k>;
  </equation*>

  finite-regulator complex linear label maps eventually satisfying
  <hlink|<verbatim|Poised>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27>
  simultaneously through <math|D> at step <math|g<around|(|k|)>> (degree
  availability, monitor bound, tested equivariant maps and all panel
  estimates); and rescaled read-outs converging along <math|u> to
  <math|\<Phi\><rsub|k,d>> for every <math|d\<leqslant\>D> and reference
  label. Set <math|D<rsub|k,d>=\<pi\><rsub|d><rsup|S>*\<Phi\><rsub|k,d>*\<lambda\><rsub|d>>,
  where <math|\<pi\><rsub|d><rsup|S>> projects to <math|S<rsub|d>> and
  <math|\<lambda\><rsub|d>> is the fixed equivariant representative of the
  free quotient in reference label coordinates, and let
  <math|\<chi\><rsub|k><around|(|d|)>=D<rsub|k,d>> when bijective, a fixed
  isomorphism otherwise. There exist complex linear isomorphisms
  <math|p<rsub|k><around|(|d|)>:F<rsub|d>\<to\>S<rsub|d>> for all <math|k,d>,
  eventually in <math|k>, simultaneously for <math|d\<leqslant\>D>,
  unit-preserving, commuting with signed permutations and conjugation, and
  satisfying

  <\equation*>
    p<rsub|k><around|(|e|)>*\<iota\><rsup|F><rsub|d,e>=\<iota\><rsup|S><rsub|d,e>*p<rsub|k><around|(|d|)>*<space|1em><around|(|d\<leqslant\>e\<leqslant\>D|)>;
  </equation*>

  and <math|\<chi\><rsub|k><around|(|d|)><rsup|-1>*p<rsub|k><around|(|d|)>*v\<to\>v>
  for <math|d\<leqslant\>D>, <math|v\<in\>F<rsub|d>>. <em|Status:>
  conditional theorem. <em|Lean:> <hlink|<verbatim|Weak.Portfolio.tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>.

  <strong|Proposition VII.1.7 (windows and expansions).>

  (a) Fix III.2 RG constants, Haar bounds, a Haar chart ratio satisfying the
  local ratio bounds, and admissible price-panel relay with activation bounds
  <math|u<rsub|j>\<leqslant\>L<rsub|j>>, eventual activation of every degree,
  and all comparison/analytic rank bounds. For any wait <math|U> with
  <math|w<rsub|j><around|(|t|)>=<around|\<lfloor\>|log
  <around|(|<wide|\<beta\>|\<bar\>>+c<rsub|G>*t|)>/log
  L<rsub|j>|\<rfloor\>>>, <math|c<rsub|G>\<gtr\>0>, there is a wait <math|W>
  with no smaller stage-length/entry bounds and the same window, and panels
  and dominating costs at every degree. Every realized Wilson family
  satisfying <math|W>, prescribed observable bounds and
  polynomial-representative conditions then, for every <math|D>, has
  simultaneous finite-regulator comparison data through <math|D> at all
  sufficiently late steps <math|k> whose scale exceeds the stage entry
  threshold and whose backward window has length at most <math|k> and lies in
  one stage; returned panels satisfy all three comparison inequalities.
  <em|Lean:> <hlink|<verbatim|Dense.slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>.

  (b) If <math|U> has this window and <math|V> has no smaller
  stage-length/entry/window bounds, each <math|V> entry at stage <math|j>
  exceeds or equals <math|U>'s entry at <math|j+1>, and
  <math|<wide|\<beta\>|\<bar\>>+c<rsub|G>*t\<geqslant\>c<rsub|G>> above that
  <math|V> entry, every trajectory satisfying <math|V> admits
  <math|g<around|(|k|)>\<to\>\<infty\>> eventually satisfying the scale
  inequality in VII.1.6, <math|g<around|(|k|)>\<leqslant\>k>, and
  <math|g<around|(|k|)>> above its <math|U> entry threshold with backward
  <math|U> window of length at most <math|g<around|(|k|)>> contained in one
  stage. <em|Lean:> <hlink|<verbatim|Dense.nearby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165>.

  (c) Fix finite <math|I>, <math|T\<subset\>I>, <math|p\<in\>T>,
  <math|D,k,E,q\<in\>\<bbb-N\>>, <math|R\<in\>\<bbb-R\>>, <math|v\<gtr\>0>,
  <math|q\<leqslant\>k+E>. There exist <math|0\<less\>w\<leqslant\>v>,
  <math|C<rsub|0>\<geqslant\>0>, independent of layout and bound <math|B>,
  such that every layout satisfying the prescribed tensor symmetry, rank and
  analytic realization conditions (<hlink|<verbatim|Sense>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek/Step.lean#L16-L20>),
  depending only on occupied markers, zero on the empty set, with weights
  <math|a<rsub|i>\<in\>\<bbb-N\>> summing to <math|k> on <math|T> and
  anchored <math|v>-weighted absolute-sum coefficient bounds <math|B> through
  order <math|E> at every leg rank, has this expansion: re-root at
  <math|x<rsub|p>>, shift order by <math|q>, zero terms <math|q+n\<less\>k>;
  through leg rank <math|k+E-q> the coefficients are Taylor coefficients of a
  finite sum of curvature expressions of ranks <math|max
  <around|(|k-q,0|)>,\<ldots\>,k+E-q>. These depend only on <math|T>, retain
  symmetry and analytic realization, and have anchored absolute-sum bound
  <math|B*C<rsub|0>> with weight <math|exp
  <around|(|w<space|0.17em><math-up|girth>|)>>, including relative marker
  positions. <em|Lean:> <hlink|<verbatim|Dart.coin_pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45>.
  <em|Status (a\Uc):> theorems, modulo imported station and curvature-lifting
  estimates whose full proofs are outside this verification (probable; see
  Ÿ7).

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1/II.1: lattice, symmetries, labels and jets; III.16: Maxwell
    shells and kernel; VI.1/VI.2: hierarchies and free quotient; VII.3:
    lattice prescription.

    <item>III.2/II.2: RG scales and price panels; III.11: rank-comparison
    estimates; VII.4/VII.5/VIII.1: OPE data, chart correction, construction
    record.

    <item>Wick's theorem, Fourier analysis, Riemann sums, dominated
    convergence, Hobson's formula and Kelvin inversion; finite-dimensional
    fitting (VI.1).
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  At order zero the normalized expectation is Gaussian. Independent imaginary
  Gaussians subtract the infinite-lattice self-contractions at each
  insertion. Fourier analysis gives Maxwell pairings between distinct
  insertions and zero limits for corrected self-pairings. The common Wick
  deletion recursion then gives polynomial moments; compactness and dominated
  convergence give tested limits.

  Translated inversion produces a triangular change of probe variables with
  diagonal positive reflected pairings. Wick matchings give strict positivity
  on nonzero shell polynomials. Interacting rank estimates transfer detection
  to raw charts; fixed equivariant retractions remove their filtration
  defects recursively.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Invert the gauge-fixed form: covariance is direct torus Green
    function minus its reflected image. <hlink|<verbatim|Orb.covar_link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59>.

    <item>Fourier annuli give separated limits; fixed-offset quadrature
    controls self-contractions. <hlink|<verbatim|Align.chart_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L75-L83>,
    <hlink|<verbatim|Align.chart_return>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L85-L89>.

    <item>Induct on distinguishable legs using the shared deletion recursion;
    compactness and dominated convergence give profiles.
    <hlink|<verbatim|Warp.earth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32>,
    <hlink|<verbatim|Rig.grid_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Tested.lean#L23-L52>.

    <item>Kelvin translation makes probes triangular; diagonal positive
    pairings give positive Wick monomial norms and finite detection.
    <hlink|<verbatim|Free.pairing_var>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118>,
    <hlink|<verbatim|free_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L77-L85>.

    <item>Rank estimates give moving-detector convergence; free detection and
    recursive retractions yield compatible charts.
    <hlink|<verbatim|Portfolio.twoC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L107-L124>,
    <hlink|<verbatim|tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>.

    <item>Raise entry thresholds so all active estimates fit the logarithmic
    window; near a stage boundary choose the preceding stage's last usable
    step. <hlink|<verbatim|slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>,
    <hlink|<verbatim|nearby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165>.

    <item>Re-root and reduce exponential weights, then lift and subtract
    successive lowest coefficients to obtain local curvature expressions with
    controlled bounds. <hlink|<verbatim|coin_pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Oscillatory Fourier cancellation must survive differentiation. The chosen
  volume growth controls the amplified same-insertion errors; quarter-period
  centring removes reflected images. Detection needs strict positivity,
  including constants. No optimal volume growth rate is asserted.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|<math-up|Conf><rsub|r>>: distinct <math|r>-tuples in
  <math|\<bbb-R\><rsup|4>>; <math|\<Gamma\><around|(|x|)>=<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)><rsup|-1>>;
  <math|K>: Maxwell jet kernel; <math|\<cal-W\>>: Wick moments without
  same-insertion pairings. <math|\<mu\><rsub|N>>: Gaussian on reflection-odd
  link fields; <math|\<ell\><rsup|h>>: linear radial jet; <math|S<rsub|h>>:
  infinite-lattice self-covariance; <math|R<rsub|h><around|(|p,o|)>=\<bbb-E\><rsub|\<xi\>>*p*<around|(|\<ell\><rsub|o><rsup|h>+i*\<xi\>|)>>
  with independent <math|\<xi\>\<sim\>\<cal-N\><around|(|0,S<rsub|h>|)>>
  (<hlink|<verbatim|column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41>);
  <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsup|<around|(|0|)>>>:
  coupling-series constant coefficient. <math|\<Pi\><rsub|m>>: centred
  <math|h<rsub|m><rsup|4*r>>-weighted sum of <math|f> times the order-zero
  product correlation. An itinerary has even <math|N<rsub|i>>,
  <math|h<rsub|i>\<gtr\>0>, positive integer
  <math|N<rsub|i>*h<rsub|i>\<to\>\<infty\>>, <math|h<rsub|i>\<to\>0>,
  <math|N<rsub|i>*h<rsub|i><rsup|n>\<to\>\<infty\>> for every
  <math|n\<in\>\<bbb-N\>>; homing means <math|h<rsub|i>*<around|(|o<rsub|i>-c<rsub|N<rsub|i>>|)>\<to\>z>,
  <math|c<rsub|N>=<around|(|N/4,\<ldots\>,N/4|)>>, using centred lifts.
  <math|\<sigma\>>: time reflection; <math|e<rsub|<math-up|t>>>: time unit
  vector; <math|<math-up|Sh><rsub|j>>: symmetric Taylor/antisymmetric form
  tensors with homogeneous fields solving <math|d*F=d\<ast\>F=0>; Taylor
  coefficients include <math|1/j!>. A key <math|a=<around|(|j,\<alpha\>|)>>
  is a coordinate on <math|\<frak-g\>>-valued radial-gauge homogeneous
  potentials of degree <math|j+1>, with engineering weight <math|j+2>;
  <math|K<rsub|a*b>> uses these coordinates after inverse curl from the
  shell. A bar denotes complex conjugation; <math|\<iota\><rsup|\<ast\>>>:
  2-form pullback; <math|\<iota\><rsup|F,S>>: filtration inclusions.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Lower Fourier uniformity estimates remain unchecked (probable). Station and
  curvature-lifting estimates are imported (probable); remaining
  RG/perturbative-extension packages are unexplained (tentative). The
  interacting short-distance theorem belongs to VIII.1; this unit gives no
  all-orders comparison.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VII-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|VII.3|VII-3.tm>, <hlink|III.7|III-7.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|III.1|III-1.tm>, <hlink|III.11|III-11.tm>, <hlink|II.1|II-1.tm>,
  <hlink|III.2|III-2.tm>, <hlink|II.2|II-2.tm>, <hlink|III.6|III-6.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|III.5|III-5.tm>, <hlink|VI.2|VI-2.tm>,
  <hlink|III.4|III-4.tm>, <hlink|III.3|III-3.tm>, <hlink|III.10|III-10.tm>,
  <hlink|VII.4|VII-4.tm>, <hlink|VI.1|VI-1.tm>.

  <strong|Referenced by:> <hlink|III.2|III-2.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|VII.2|VII-2.tm>, <hlink|III.13|III-13.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 8,117 attributed lines; 1,626 line-counted
  declarations; 2,077 assigned declaration names. Of the assigned names,
  1,917 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|finite_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16>
    and the results it chains to \V 3,275 lines.

    <item>work package <hlink|<verbatim|YM/Push/FINITE_DETECTION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION>
    \V 1,006 lines.

    <item>work package <hlink|<verbatim|YM/SharpGram/Weak/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak>
    \V 616 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Dart/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart>
    \V 538 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Ballast/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ballast>
    \V 338 lines.

    <item>work package <hlink|<verbatim|YM/SharpGram/Dense/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense>
    \V 316 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Vale/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Vale>
    \V 315 lines.

    <item>work package <hlink|<verbatim|YM/PertExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension>
    \V 310 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Quire/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Quire>
    \V 160 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Scores/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Scores>
    \V 119 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Loom/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Loom>
    \V 118 lines.

    <item>work package <hlink|<verbatim|YM/SharpGram/Matrix/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Matrix>
    \V 108 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Curl/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Curl>
    \V 97 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Fourier/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier>
    \V 95 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Arc/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Arc>
    \V 71 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Extra/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Extra>
    \V 71 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Germ/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Germ>
    \V 67 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Action/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Action>
    \V 66 lines.

    <item>work package <hlink|<verbatim|YM/OPE/Levy/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy>
    \V 63 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Ward/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ward>
    \V 49 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Wax/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wax>
    \V 45 lines.

    <item>work package <hlink|<verbatim|YM/SharpGram/Lenses/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Lenses>
    \V 39 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Fields/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Fields>
    \V 38 lines.

    <item>work package <hlink|<verbatim|YM/Pert/Dense/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Dense>
    \V 30 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Pace/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Pace>
    \V 30 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Town/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Town>
    \V 29 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Shade/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Shade>
    \V 26 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Door/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Door>
    \V 16 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Creek/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek>
    \V 15 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Peals/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Peals>
    \V 11 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Wallet/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wallet>
    \V 9 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Needle/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Needle>
    \V 9 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Run/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Run>
    \V 8 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Canon/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Canon>
    \V 7 lines.

    <item>work package <hlink|<verbatim|YM/UVExt/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExt>
    \V 5 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Ratio/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Ratio>
    \V 1 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Origin/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Origin>
    \V 1 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18>

    <item><hlink|<verbatim|rotateChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140>

    <item><hlink|<verbatim|Graded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172>

    <item><hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>

    <item><hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66>

    <item><hlink|<verbatim|ladder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117>

    <item><hlink|<verbatim|bareCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20>

    <item><hlink|<verbatim|reduceEq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50>

    <item><hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>

    <item><hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>

    <item><hlink|<verbatim|Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22>

    <item><hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>

    <item><hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>

    <item><hlink|<verbatim|Ship.diminishes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L34-L37>

    <item><hlink|<verbatim|Read.full_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250>

    <item><hlink|<verbatim|OPE.Levy.free_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy/Panel.lean#L39-L51>

    <item><hlink|<verbatim|Itinerary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59>

    <item><hlink|<verbatim|shell_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113>

    <item><hlink|<verbatim|orbit_contact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95>

    <item><hlink|<verbatim|key_orb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L31>

    <item><hlink|<verbatim|corrected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L34-L35>

    <item><hlink|<verbatim|indirect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L36>

    <item><hlink|<verbatim|Home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53>

    <item><hlink|<verbatim|scene_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L71-L77>

    <item><hlink|<verbatim|finale_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103>

    <item><hlink|<verbatim|FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39>

    <item><hlink|<verbatim|firstTarget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81>

    <item><hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Adjoint.lean#L62-L71>

    <item><hlink|<verbatim|toroid_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Fee.lean#L84-L112>

    <item><hlink|<verbatim|joint_far>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Image.lean#L22-L31>

    <item><hlink|<verbatim|toroid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19>

    <item><hlink|<verbatim|lap_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L46-L52>

    <item><hlink|<verbatim|upper_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Power.lean#L63-L70>

    <item><hlink|<verbatim|wrap_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L56-L81>

    <item><hlink|<verbatim|joint_casual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L95-L101>

    <item><hlink|<verbatim|inverse_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L40-L54>

    <item><hlink|<verbatim|strike_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Visits.lean#L29-L46>

    <item><hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46>

    <item><hlink|<verbatim|sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L35>

    <item><hlink|<verbatim|row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42>

    <item><hlink|<verbatim|topSpacing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L46>

    <item><hlink|<verbatim|period>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L49>

    <item><hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L52>

    <item><hlink|<verbatim|profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56>

    <item><hlink|<verbatim|LinkP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111>

    <item><hlink|<verbatim|fixedPolynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L55-L60>

    <item><hlink|<verbatim|physicalLabel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L78>

    <item><hlink|<verbatim|data>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31>

    <item><hlink|<verbatim|form>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78>

    <item><hlink|<verbatim|seriesLex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Readers.lean#L32>

    <item><hlink|<verbatim|weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61>

    <item><hlink|<verbatim|link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50>

    <item><hlink|<verbatim|shellCov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59>

    <item><hlink|<verbatim|wideLinear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L33-L35>

    <item><hlink|<verbatim|slope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38>

    <item><hlink|<verbatim|CleanProfiles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13>

    <item><hlink|<verbatim|measured_tends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19>

    <item><hlink|<verbatim|white>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104>

    <item><hlink|<verbatim|Conditions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59>

    <item><hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98>

    <item><hlink|<verbatim|calibrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43>

    <item><hlink|<verbatim|credible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52>

    <item><hlink|<verbatim|routine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L14-L21>

    <item><hlink|<verbatim|Arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L50-L51>

    <item><hlink|<verbatim|bounded_fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L68-L86>

    <item><hlink|<verbatim|Warp.eq_cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L12-L18>

    <item><hlink|<verbatim|ev_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Diagonal.lean#L15-L19>

    <item><hlink|<verbatim|node_wage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Engine.lean#L59-L63>

    <item><hlink|<verbatim|exchange_s>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Exchange.lean#L68-L91>

    <item><hlink|<verbatim|mono_single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40>

    <item><hlink|<verbatim|mono_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L41-L47>

    <item><hlink|<verbatim|poly_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63>

    <item><hlink|<verbatim|Warp.amplitude_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Initial.lean#L39-L56>

    <item><hlink|<verbatim|take_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L45-L49>

    <item><hlink|<verbatim|D_kill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L59-L61>

    <item><hlink|<verbatim|cut_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L26-L48>

    <item><hlink|<verbatim|cut_cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L49>

    <item><hlink|<verbatim|packet_cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Symmetric.lean#L73-L77>

    <item><hlink|<verbatim|center_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L70-L73>

    <item><hlink|<verbatim|center_diag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L80-L101>

    <item><hlink|<verbatim|R>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L83>

    <item><hlink|<verbatim|test_projected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean#L38-L46>

    <item><hlink|<verbatim|inverted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65>

    <item><hlink|<verbatim|gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92>

    <item><hlink|<verbatim|free_criterion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L21-L32>

    <item><hlink|<verbatim|free_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L34-L42>

    <item><hlink|<verbatim|wick_orth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L109-L115>

    <item><hlink|<verbatim|detectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26>

    <item><hlink|<verbatim|pair_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L57-L79>

    <item><hlink|<verbatim|forward_full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L137-L142>

    <item><hlink|<verbatim|reversed_observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L165-L173>

    <item><hlink|<verbatim|arose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Verge.lean#L62-L86>

    <item><hlink|<verbatim|LateEnough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L27-L28>

    <item><hlink|<verbatim|symmetrical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L124-L136>

    <item><hlink|<verbatim|chart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79>

    <item><hlink|<verbatim|chartDraw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L84-L87>

    <item><hlink|<verbatim|stepFits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L98-L121>

    <item><hlink|<verbatim|actualRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Inspect.lean#L80-L99>

    <item><hlink|<verbatim|certified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L110-L128>

    <item><hlink|<verbatim|freely>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L75-L76>

    <item><hlink|<verbatim|compareC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L94-L105>

    <item><hlink|<verbatim|Ward.disc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23>

    <item><hlink|<verbatim|tendsto_of_fitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L34-L57>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vii-1-1>

  <\itemize-minus>
    <item><strong|K-VII.1.1> <hlink|<verbatim|covar_link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59>
    <em|(key result)> \V The free orbital covariance of two link form
    elements is the color inner product times a difference of toroidal kernel
    values if the directions agree, else zero.
  </itemize-minus>

  <label|k-vii-1-2>

  <\itemize-minus>
    <item><strong|K-VII.1.2> <hlink|<verbatim|harmonic_Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180>
    <em|(key result)> \V Differentiating the 4D Green kernel j times against
    a symmetric harmonic tensor gives a constant times R^{-(j+1)}... times
    the diagonal harmonic polynomial, a Kelvin-type formula.
  </itemize-minus>

  <label|k-vii-1-3>

  <\itemize-minus>
    <item><strong|K-VII.1.3> <hlink|<verbatim|response_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176>
    <em|(key result)> \V The colored response of a shell element equals gain
    times the inverted actual field, extending the scalar computation to
    Lie-algebra colors.
  </itemize-minus>

  <label|k-vii-1-4>

  <\itemize-minus>
    <item><strong|K-VII.1.4> <hlink|<verbatim|pairing_var>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118>
    <em|(key result)> \V The bilinear pairing between eigen variables and
    reflected variables is diagonal with squared-length entries.
  </itemize-minus>

  <label|k-vii-1-5>

  <\itemize-minus>
    <item><strong|K-VII.1.5> <hlink|<verbatim|nearby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165>
    <em|(numbered result)> \V There is an unbounded predecessor-marking map g
    with g(k)\<leqslant\>k, g(k) interior, and S(k)\<leqslant\>S(g(k))+log
    P(k) eventually.
  </itemize-minus>

  <label|k-vii-1-6>

  <\itemize-minus>
    <item><strong|K-VII.1.6> <hlink|<verbatim|orbit_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88>
    <em|(key result)> \V For separated endpoints, the averaged orbital
    pairing of dual Taylor test slots converges to the Taylor-form continuum
    pairing.
  </itemize-minus>

  <label|k-vii-1-7>

  <\itemize-minus>
    <item><strong|K-VII.1.7> <hlink|<verbatim|finite_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16>
    <em|(key result)> \V For clean profiles, the finite-regulator Wilson
    reading at order zero converges to the continuum white-noise reading as
    the lattice is refined.
  </itemize-minus>

  <label|k-vii-1-8>

  <\itemize-minus>
    <item><strong|K-VII.1.8> <hlink|<verbatim|tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>
    <em|(key result)> \V There exist corrections of the measuring charts that
    are eventually graded-exact through level D and converge to the identity
    on every field.
  </itemize-minus>

  <label|k-vii-1-9>

  <\itemize-minus>
    <item><strong|K-VII.1.9> <hlink|<verbatim|row_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68>
    <em|(key result)> \V The order-zero lattice rows of any tuple of fields
    converge to the Gaussian moment of their reduced sections.
  </itemize-minus>

  <label|k-vii-1-10>

  <\itemize-minus>
    <item><strong|K-VII.1.10> <hlink|<verbatim|earth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32>
    <em|(key result)> \V After deleting bare-linear legs, the equation price
    converges to the cut value at a separated configuration.
  </itemize-minus>

  <label|k-vii-1-11>

  <\itemize-minus>
    <item><strong|K-VII.1.11> <hlink|<verbatim|zerothProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69>
    <em|(main result)> \V For compactly supported continuous test functions
    away from coincident points, the order-zero coefficient of the lattice
    profile converges to the integral against the free discrete correlation.
  </itemize-minus>

  <label|k-vii-1-12>

  <\itemize-minus>
    <item><strong|K-VII.1.12> <hlink|<verbatim|linear_substitution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119>
    <em|(numbered result)> \V The Wick moment of products of linear
    combinations of variables equals the sum over matchings of products of
    pairwise Wick tensor entries.
  </itemize-minus>

  <label|k-vii-1-13>

  <\itemize-minus>
    <item><strong|K-VII.1.13> <hlink|<verbatim|corrected_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44>
    <em|(key result)> \V The corrected (subtracted) covariance of lattice
    sites at separated points converges to the indirect continuum covariance
    for all key labels.
  </itemize-minus>

  <label|k-vii-1-14>

  <\itemize-minus>
    <item><strong|K-VII.1.14> <hlink|<verbatim|coin_pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45>
    <em|(numbered result)> \V Finite demands on layouts admit an exact tally
    with constants such that suitable bounds on inputs yield an ample armor
    bound for a given order.
  </itemize-minus>

  <label|k-vii-1-15>

  <\itemize-minus>
    <item><strong|K-VII.1.15> <hlink|<verbatim|two_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155>
    <em|(main result)> \V For a label outside the equation ideal, the
    two-point moment of the observable with its reflected conjugate has
    strictly positive real part.
  </itemize-minus>

  <label|k-vii-1-16>

  <\itemize-minus>
    <item><strong|K-VII.1.16> <hlink|<verbatim|slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>
    <em|(key result)> \V For a simple gauge group and a relay with a slim
    window, there is a thicker wait with the same window admitting a
    certified station port.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.2 The free Maxwell stress tensor and
  the local Ward charge|VI-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-1.tm>|<hlink|VII.2 The trace of the stress tensor and
  the trace anomaly \<rightarrow\>|VII-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.1. Free Maxwell fields for the short-distance
    comparison \U Yang\UMills informalization>
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
    <associate|k-vii-1-1|<tuple|10|11>>
    <associate|k-vii-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vii-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vii-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vii-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vii-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|11>>
    <associate|k-vii-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|k-vii-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|12>>
    <associate|key-statements|<tuple|10|11>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|7|5>>
    <associate|unit-inputs|<tuple|1|4>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|4>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|vii1-free-maxwell-fields-for-the-short-distance-comparison|<tuple|?|1>>
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