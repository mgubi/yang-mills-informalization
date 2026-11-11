<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> I.1 Lattice, symmetries, gauge groups and
  the Wilson measure|I-1.tm>|<hlink|Part II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Detailed
  notes|../notes/II-1.tm>|<hlink|II.2 Marker algebra, polymer combinatorics
  and Gaussian estimates \<rightarrow\>|II-2.tm>>

  <ym-title|II.1. Field labels and their lattice
  representatives><label|ii1-field-labels-and-their-lattice-representatives>

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

  <em|Part II \V Data of the construction.>

  Describes local field labels and the lattice observables that represent
  them.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/II-1.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: I.1|I-1.tm> <ym-middot> <hlink|Next: II.2
  \<rightarrow\>|II-2.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> II, Data of the construction. <strong|Lean:> work items
    G01\UG07: <hlink|<verbatim|YM/Labels/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels>,
    <hlink|<verbatim|YM/Source/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source>,
    <hlink|<verbatim|YM/Work/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>
    (G01\UG07), <hlink|<verbatim|YM/Next/FOUNDATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS>,
    <hlink|<verbatim|YM/Push/RELAY_MARK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK>,
    <hlink|<verbatim|YM/Extra/SOURCE_HISTORIES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES>,
    <hlink|<verbatim|YM/Push/LOCAL_SPLITTING/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING>,
    <hlink|<verbatim|YM/Push/RELAY_DIFFERENCE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE>,
    <hlink|<verbatim|YM/Planned/ATOM_GUARDED_LAYOUT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT>,
    <hlink|<verbatim|YM/Further/LOCAL_LOG_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS>,
    <hlink|<verbatim|YM/LocalH/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH>.
    <strong|Size:> 10,805 lines in the source allocation.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Throughout, <math|G\<subset\>U<around|(|n|)>> is compact,
  <math|n\<geqslant\>1>.

  <strong|Proposition II.1.1 (labels and frames).> Let
  <math|<math-up|Tay><rsub|j>> consist of <math|4>-tuples of symmetric
  <math|<around|(|j+1|)>>-linear maps <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|j+1>\<to\>\<frak-g\>>
  satisfying <math|<big|sum><rsub|\<mu\>>z<rsub|\<mu\>>*A<rsub|\<mu\>><around|(|z,\<ldots\>,z|)>=0>.
  A jet is <math|J=<around|(|J<rsub|j>|)><rsub|j\<geqslant\>0>>; coordinates
  of <math|J<rsub|j>> have weight <math|j+2>. For every
  <math|d\<geqslant\>0>, the space <math|V<rsub|d>> of
  <math|<math-up|Ad><around|(|G|)>>-invariant complex jet polynomials of
  weight <math|\<leqslant\>d> is finite-dimensional and determined by
  evaluation on real jets. It splits by weight and factor number
  <math|<around|(|w,f|)>>; conjugation and <math|O<around|(|4|)>> preserve
  grades. Its zero-factor part is <math|\<bbb-C\>*1>. There exist nested real
  pure-grade bases <math|<around|(|b<rsub|i>|)>> of grades
  <math|<around|(|w<rsub|i>,f<rsub|i>|)>> with <math|b<rsub|0>=1>.
  <em|Status:> definitions and theorems. <em|Lean:>
  <hlink|<verbatim|frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111>.

  <strong|Proposition II.1.2 (holonomies and sections).> For every
  <math|d,J,h,x,\<mu\>>, the equation <math|u<rprime|'>=u*<space|0.17em>h*A<rsup|<around|(|d|)>><rsub|\<mu\>>*<around|(|h*<around|(|x+t*e<rsub|\<mu\>>|)>|)>>,
  <math|u<around|(|0|)>=1>, has a unique solution in <math|G>, where
  <math|A<rsup|<around|(|d|)>><rsub|\<mu\>><around|(|z|)>=<big|sum><rsub|j+2\<leqslant\>d>J<rsub|j,\<mu\>><around|(|z,\<ldots\>,z|)>>.
  Its time-one endpoint <math|U<rsup|<around|(|d|)>><rsub|J,h>> satisfies
  <math|U<rsub|J,h>=U<rsub|<math-up|sc><rsub|h>J,1>> and
  <math|U<rsub|J,0>=1>. A section <math|<around|(|S,\<Phi\>|)>> maps
  coordinates linearly to link-entry polynomials on finite <math|S>.
  Soundness requires signed-permutation-invariant <math|S\<ni\>0>, gauge
  invariance, <math|\<Phi\><rsub|e<rsub|0>>=1>,
  <math|\<Phi\><rsub|<wide|c|\<bar\>>>=<wide|\<Phi\><rsub|c>|\<bar\>>>,
  <math|\<Phi\><rsub|c>*<around|(|s<rsup|\<ast\>>*U|)>=\<Phi\><rsub|s\<cdot\>c><around|(|U|)>>,
  and equality of the <math|C<rsup|d>> jets of
  <math|\<Phi\><rsub|c><around|(|U<rsub|J,h>|)>> and
  <math|p<rsub|c><around|(|<math-up|sc><rsub|h>J|)>> at <math|0>, for all
  <math|c,J>. <em|Status:> definitions; ODE theorems. <em|Lean:>
  <hlink|<verbatim|Hol.exists_ode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/ODE.lean#L162-L168>;
  <hlink|<verbatim|SectionData.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147>.

  <strong|Proposition II.1.3 (primary sections).> For every holonomy datum
  and coherent frames there are sound sections <math|\<Sigma\><rsub|d>> whose
  column <math|i> is a polynomial in finitely many transported plaquette
  curvatures, every monomial having at least <math|f<rsub|i>> factors. For
  every <math|k,P\<in\>\<bbb-N\>> there is <math|A\<geqslant\>0> such that,
  for every budget <math|b> of order <math|k>, power <math|P>, side and
  placement, column <math|i> is <math|b>-regular with norm
  <math|\<leqslant\>A*t<rsub|b><rsup|f<rsub|i>>>. For the fixed primary
  sections, nondecreasing <math|\<pi\><around|(|D|)>\<geqslant\>1> bounds
  these costs for <math|d,k,P\<leqslant\>D>, and
  <math|c<rsub|d>\<geqslant\>1> bounds all column values globally.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Integrated.source_sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L216-L219>.

  <strong|Proposition II.1.4 (readout).> Fix holonomies, <math|d> and a
  frame. Every <math|b>-regular <math|f> on
  <math|X\<subset\>\<Lambda\><rsub|\<ell\>>>, with
  <math|k<rsub|b>\<geqslant\>d>, has a unique read label
  <math|p\<in\>V<rsub|d>> at every <math|o>: test jets agree through order
  <math|d> if <math|10<math-up|dist><around|(|x,o|)>\<less\>\<ell\>> for all
  <math|x\<in\>X>; otherwise <math|p=f<around|(|1|)>*1>. If also
  <math|P<rsub|b>\<geqslant\>d> and <math|<around|\<lVert\>|f|\<rVert\>><rsub|b>\<leqslant\>c>,
  then <math|<around|\<lVert\>|S<rsub|t<rsub|b>><math-up|coord><around|(|p|)>|\<rVert\>><rsub|1>\<leqslant\>C*c>,
  with <math|C\<geqslant\>1> depending only on holonomies and frame. A sound
  placed section reads <math|p<rsub|c>> if
  <math|20*<around|(|<around|\<lvert\>|x<rsub|\<mu\>>|\<rvert\>>+1|)>\<leqslant\>\<ell\>>
  throughout its stencil. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|exists_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247>;
  <hlink|<verbatim|price_of_readout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290>.

  <strong|Proposition II.1.5 (equation sections).> Let
  <math|\<cal-E\><rsub|d>> be the labels vanishing on all jets of radial
  potentials whose curvatures satisfy the free Bianchi and divergence
  equations, degree by degree. For every holonomy datum, <math|d> and frame,
  there exist a sound section with the slot structure and cost of II.1.3 and
  an automorphism <math|R> commuting with conjugation and signed
  permutations, such that <math|\<Phi\><rsub|<math-up|coord><around|(|R*p|)>>>
  is micro for every <math|p\<in\>\<cal-E\><rsub|d>>. Micro means continuous
  and, for some <math|r,M>, orthogonal under every Wilson expectation with
  <math|\<ell\>\<geqslant\>M>, every placement, and <math|\<beta\>\<ne\>0>,
  to every bounded measurable spectator using only links with both endpoints
  farther than <math|r> from the placement. The choices exist simultaneously
  along coherent frames. <em|Status:> unconditional theorem. <em|Lean:>
  <hlink|<verbatim|Portfolio.build>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105>.

  <strong|Proposition II.1.6 (observables).> A record carries a history,
  holonomies, frames, sections, reference levels and transfer families.
  Define

  <\equation*>
    O<rsub|N,p><around|(|v,o|)>=a<rsub|N><rsup|-d>*\<Phi\><rsup|<around|(|d|)>><rsub|S<rsub|1/\<theta\><rsub|N>>*\<tau\><rsup|-1>*v><around|(|o|)>.
  </equation*>

  For all records this is linear, continuous, local and literally translation
  covariant; soundness gives gauge invariance. Under <math|<math-up|Makes>>
  and <math|r<around|(|d|)>\<leqslant\>N>, it respects reality and affine
  hypercubic pull-backs, satisfies <math|O<rsub|N,p><around|(|a<rsub|r<around|(|d|)>><rsup|d>*e<rsub|0>,o|)>=1>,
  and has reference-level readout <math|v>. Affine covariance is
  <math|O<around|(|v,A<rsub|s,b>*o;U|)>=O<around|(|s<rsup|-1>\<cdot\>v,o;A<rsub|s,b><rsup|\<ast\>>*U|)>>.
  Here <math|<math-up|Makes>> requires selection, soundness,
  <math|d+3\<leqslant\>J<around|(|r<around|(|d|)>|)>>,
  <math|k<rsub|b<rsub|m>>\<geqslant\>d+1>,
  <math|P<rsub|b<rsub|m>>\<geqslant\>d> for
  <math|m\<geqslant\>r<around|(|d|)>>, <math|20*<around|(|<around|\<lvert\>|x<rsub|\<mu\>>|\<rvert\>>+1|)>\<leqslant\>\<ell\><rsub|N,p>>
  on <math|S<rsub|d>> when <math|r<around|(|d|)>\<leqslant\>N>, column bounds
  <math|\<kappa\><rsub|N>*\<theta\><rsub|N><rsup|f<rsub|i>>> and based
  transfers. <em|Status:> theorems; <math|<math-up|Makes>> holds for VIII.1's
  family. <em|Lean:> <hlink|<verbatim|Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62>;
  <hlink|<verbatim|Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>.

  <strong|Proposition II.1.7 (transfers).> With terminal linear automorphism
  <math|\<tau\>>, a based family for <math|<around|(|\<Sigma\>,r|)>> requires
  <math|r\<leqslant\>N> and, for every <math|v> and
  <math|r\<leqslant\>m\<leqslant\>N>, linear coordinates and remainders on
  fixed supports, regular remainders on <math|X<rsub|i>\<ni\>0> with
  <math|g<rsub|i><around|(|1|)>=0> and vanishing test derivatives through
  <math|d> when nonwrapping, and measurable gauge-invariant forced functions
  local in their supports and flags, vanishing unless eligible and carrying
  <math|0>, and remainder bound <math|<around|(|<sqrt|w<rsub|m>>,\<kappa\><rsub|m><around|\<lVert\>|x<rsub|m><rsup|\<circ\>>|\<rVert\>><rsub|1>|)>>.
  A bound <math|<around|(|\<kappa\>,c|)>> means summable regular and forced
  weighted masses <math|\<leqslant\>a> and <math|\<leqslant\>\<kappa\>*b>,
  respectively, for <math|a,b\<geqslant\>0>, <math|a+b\<leqslant\>c>,
  dominating regular norms and forced absolute values pointwise. It requires
  <math|x<rsub|N>=v>, zero terminal regular remainder,
  <math|\<cal-D\><rsub|N>=\<rho\><rsub|N>*\<Phi\><rsub|S<rsub|1/\<theta\><rsub|N>>*v>>,
  and <math|\<cal-D\><rsub|m>=L<rsub|m><rsup|d>*T<rsup|<around|(|m|)>><rsub|\<beta\><rsub|N,p,m+1>>*\<cal-D\><rsub|m+1>>.
  Also <math|<around|\<lVert\>|x<rsub|m+1>|\<rVert\>><rsub|1>\<leqslant\>\<kappa\><rsub|m+1><around|\<lVert\>|x<rsub|m>|\<rVert\>><rsub|1>>,
  <math|<around|\<lVert\>|x<rsub|m>|\<rVert\>><rsub|1>\<leqslant\>\<kappa\><rsub|m+1>*L<rsub|m><rsup|d><around|\<lVert\>|x<rsub|m+1>|\<rVert\>><rsub|1>>,
  <math|x<rsub|r>=\<tau\>*v>, <math|\<tau\>> respects reality/symmetry, and
  <math|x<rsub|m>*<around|(|a<rsub|N><rsup|d>*e<rsub|0>|)>=a<rsub|m><rsup|d>*e<rsub|0>>.
  For selected histories, <math|<big|int>\<cal-D\><rsub|m>*<around|(|E<rsub|m>*<around|(|\<tau\><rsup|-1>*v|)>|)>=a<rsub|m><rsup|d>*Z<rsub|N,p><around|\<langle\>|O<rsub|N,p><around|(|v,0|)>|\<rangle\>>>.
  <em|Status:> specification, supplied by III.10; integral identity is a
  theorem. <em|Lean:> <hlink|<verbatim|TransferData.Based>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L89-L114>.

  <strong|Proposition II.1.8 (birth).> Let <math|\<rho\>> be lawful on
  <math|\<Lambda\><rsub|\<ell\>>> with <math|w\<gtr\>0>, threshold
  <math|\<theta\>>, <math|o\<in\>\<Lambda\><rsub|\<ell\>>>,
  <math|Y=Y<rsub|o>>, and <math|\<Sigma\>> sound with
  <math|\<lvert\>\<Phi\><rsub|e<rsub|i>>(o;\<cdot\><around|)||\<rvert\>>\<leqslant\>B>,
  <math|B\<geqslant\>1>. Suppose distinct reserved zero-activity forced
  addresses exist for every finite <math|\<varnothing\>\<ne\>I\<subseteq\>X>
  and auxiliary index, with support <math|X>, inventory <math|I> and
  everywhere-satisfied auxiliary test. If

  <\equation*>
    B*\<theta\><rsup|-f<rsub|max>><math-up|mass><around|(|Y,1|)>*<around|(|e<rsup|<around|\<lvert\>|Y|\<rvert\>>*w>-1|)>\<leqslant\><sqrt|w>,
  </equation*>

  then, for every reservation index, there is linear <math|E<around|(|v|)>>
  with fixed supports, <math|x=v>, <math|g=0>, Format and bound
  <math|<around|(|<sqrt|w>,<around|\<lVert\>|v<rsup|\<circ\>>|\<rVert\>><rsub|1>|)>>,
  satisfying <math|\<cal-D\><around|(|E<around|(|v|)>|)>=\<rho\>*\<Phi\><rsub|S<rsub|1/\<theta\>>*v>>
  pointwise. The forced part is precisely the large-field supplement. The
  guarded variant (<verbatim|Guard.summon>, used at level N with w=w_N)
  additionally requires a selected history. It requires the auxiliary tests
  only when the support has exactly the prescribed flagged inventory,
  together with a separate zero-activity assumption. The section bound and
  fee condition are unchanged. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|launched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161>.

  <strong|Proposition II.1.9 (numerical conditions).> Let
  <math|C<rsub|j>\<geqslant\>1>, let <math|<around|(|<math-ss|K><rsub|j>|)>>
  be nondecreasing with <math|<math-ss|K><rsub|j>\<geqslant\>1>, and a stage
  profile satisfy <math|j\<leqslant\>k<rsub|j>,P<rsub|j>>,
  <math|\<pi\><around|(|max <around|(|k<rsub|j>,P<rsub|j>|)>|)>\<leqslant\><wide|\<kappa\>|\<bar\>><rsub|j>>,
  <math|<around|(|C<rsub|j>+1|)>*\<Omega\><rsub|d>\<leqslant\><math-ss|K><rsub|j>>
  for <math|d\<leqslant\>j>, and <math|64<math-ss|K><rsub|j+1><rsup|2>\<leqslant\><wide|\<kappa\>|\<bar\>><rsub|j>>.
  There exist <math|n<rsub|j>,\<beta\><rsub|j><rsup|\<ast\>>> such that every
  admissible level system of this profile with stage block factors
  <math|\<geqslant\>n<rsub|j>> and <math|<wide|\<beta\>|^><rsub|m>\<geqslant\>\<beta\><rsup|\<ast\>><rsub|J*<around|(|m+1|)>>>
  satisfies <math|J<around|(|m|)>\<leqslant\>k<rsub|b<rsub|m>>,P<rsub|b<rsub|m>>>,
  <math|\<pi\><around|(|max <around|(|k<rsub|b<rsub|m>>,P<rsub|b<rsub|m>>|)>|)>\<leqslant\>\<kappa\><rsub|m>>,
  latch for <math|d\<leqslant\>J<around|(|m|)>>, and

  <\equation*>
    64<math-ss|K><rsub|J<around|(|m|)>+1><rsup|2>\<leqslant\>\<kappa\><rsub|m>,<space|2em>10<rsup|5><math-ss|K><rsub|j+1><rsup|6><around|(|1+\<kappa\><rsub|m+1>|)><rsup|2>\<leqslant\>L<rsub|m><rsup|1/8>,
  </equation*>

  <\equation*>
    \<eta\>*<around|(|1+\<kappa\><rsub|m+1>|)>*\<Omega\><rsub|d>\<leqslant\>L<rsub|m><rsup|-3/8>,<space|2em><around|(|C<rsub|j>+\<eta\>*\<kappa\><rsub|m+1>|)>*\<Omega\><rsub|d>\<leqslant\><math-ss|K><rsub|j>,
  </equation*>

  where <math|j=J*<around|(|m+1|)>>, <math|\<eta\>=L<rsub|m><rsup|-2/5>>,
  <math|d\<leqslant\>J<around|(|m|)>>. Latch requires sufficient side length
  and II.1.8's fee bound at every placement, with <math|B=c<rsub|d>>,
  <math|\<theta\>=\<theta\><rsub|m>>, <math|w=w<rsub|m>>. Such plans exist by
  enlarging only stage constants whenever
  <math|j\<leqslant\>k<rsub|j>,P<rsub|j>>. For fixed <math|d> and support
  exponent, latch holds at sufficiently large coupling. These conditions and
  <math|d+3\<leqslant\>J<around|(|r<around|(|d|)>|)>> imply the section
  clauses of <math|<math-up|Makes>>. <em|Status:> theorems. <em|Lean:>
  <hlink|<verbatim|Doors.afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102>;
  <hlink|<verbatim|Issue.refer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Issue.lean#L38-L45>.

  <strong|Proposition II.1.10 (comparison).> Diagonal sign changes,
  translations and conjugation preserve centred root tests of interior
  functions. If <math|F<rsub|0>> is interior to a centred level-<math|k> cell
  with root <math|\<leqslant\>A>, and <math|T> has side divisible by that
  cell side and satisfies the seam inequality, every translate at distance at
  least three cell sides from its boundary has root <math|\<leqslant\>A>.
  Under <math|<math-up|Makes>>, fix <math|\<gamma\>\<gtr\>0> and an
  extraction order. If finitely many eventually literal-translate families
  have centred roots <math|\<leqslant\>e<rsup|-\<gamma\>*s<rsub|N>>>
  eventually at arbitrarily large fixed levels <math|k\<leqslant\>N>, with
  interior central support, then combinations with placement-independent
  coefficients eventually bounded by <math|e<rsup|\<varepsilon\>*s<rsub|N>>>
  for every <math|\<varepsilon\>\<gtr\>0> are close with bound
  <math|y=e<rsup|-\<gamma\>*s<rsub|N>/2>\<to\>0>: for every
  <math|j,m\<in\>\<bbb-N\>> there is <math|k\<geqslant\>m> such that
  eventually <math|k\<leqslant\>N> and, for every level-<math|k> link tiling
  <math|T> and <math|o\<in\>T.<math-up|margin><around|(|0,<around|\<lfloor\>|T.<math-up|side>/<around|(|8*<around|(|j+1|)>|)>|\<rfloor\>>|)>>,
  the combination is interior to cell <math|0> with root
  <math|\<leqslant\>y>. <em|Status:> theorems. <em|Lean:>
  <hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>;
  <hlink|<verbatim|gather_close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: Wilson/Haar measure and lattice symmetries.

    <item>II.2: regularity, norms, lawful polymers, tilings.

    <item>III.1: mass-preserving blocking.

    <item>III.2/III.9: profiles and selected histories.

    <item>III.10\UIII.11: transfer estimates.

    <item>III.16: Taylor calculus.

    <item>IV.1: fused extraction order.
  </itemize-minus>

  Standard inputs: matrix ODEs, finite-group averaging, analytic inverse
  function theorem, polarization, norm equivalence, Haar integration by
  parts, reflection positivity.

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  Invert a finite sampling of transported plaquette curvatures to realize jet
  labels. Readout reverses this construction. Link integration by parts
  realizes equation labels; marking reserved polymers restores the
  large-field complement of the insertion.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>Slots detect truncated jets: shrinking plaquette circulations
    recover curvature, hence radial potentials. <em|Lean:>
    <hlink|<verbatim|Work.G03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L212-L224>.

    <item>Taylor expansion of an equivariant inverse gives sections; each
    slot factor costs one threshold factor. <em|Lean:>
    <hlink|<verbatim|Work.G05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139>;
    <hlink|<verbatim|Work.G07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102>.

    <item>Rescaled test links, polarization and finite-dimensional norm
    equivalence give uniform readout. <em|Lean:>
    <hlink|<verbatim|coeff_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L234-L265>.

    <item>Force lifts avoid the varied link; a unitriangular change absorbs
    higher-grade errors. <em|Lean:> <hlink|<verbatim|weaveBuild>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L60-L97>.

    <item>Splicing the large-field supplement into reserved addresses gives
    exact birth. <em|Lean:> <hlink|<verbatim|Attach.paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78>.

    <item>Seam log-convexity extends centred bounds to offsets. <em|Lean:>
    <hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  Readout constants must avoid volume dependence. Equation lifts must retain
  independence of the varied link. Lawfulness alone supplies no reserved
  addresses. Higher grade orders factor number first, then weight. Stencils
  are finite but nonexplicit.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|<math-up|sc><rsub|h>J=<around|(|h<rsup|j+2>*J<rsub|j>|)><rsub|j>>;
  <math|<around|(|S<rsub|t>*c|)><rsub|i>=t<rsup|f<rsub|i>>*c<rsub|i>>;
  <math|p<rsub|c>=<big|sum><rsub|i>c<rsub|i>*b<rsub|i>>;
  <math|c<rsup|\<circ\>>=c-c<rsub|0>*e<rsub|0>>; <math|Y=o+S>.
  <math|a<rsub|m>,\<theta\><rsub|m>,w<rsub|m>,\<kappa\><rsub|m>,J<around|(|m|)>>
  are history parameters; <math|\<Omega\><rsub|d>=1+2*<big|sum><rsub|s,i><around|\<lVert\>|s\<cdot\>e<rsub|i>|\<rVert\>><rsub|1>>
  sums over signed permutations and frame indices. <math|\<cal-D\>> is the
  first-order inserted density. Budget regularity means locality,
  measurability, gauge invariance and <math|C<rsup|k<rsub|b>>>
  exponential-coordinate regularity on the small-field set. The threshold
  satisfies <math|t<rsub|b>\<in\><around|(|0,1|]>>. Its norm bounds all
  ordered left derivatives, including values, in directions
  <math|<around|\<lvert\>|A<rsub|e>|\<rvert\>>\<leqslant\>t<rsub|b>*<around|(|1+<math-up|dist><around|(|e<rsub|->,o|)>|)><rsup|P<rsub|b>>>.
  Bounds include the small-field boundary. A slot is
  <math|<math-up|Ad><around|(|U<rsub|\<omega\>>|)>*F<rsub|P>>, where
  <math|F<rsub|P>> projects <math|<around|(|U<rsub|P>-U<rsub|P><rsup|-1>|)>/2>
  onto <math|\<frak-g\>>. Eventually means volume first, then mesh.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Identification of the auxiliary equation sections with limit null labels
  remains tentative. Compatibility with all later transfer estimates belongs
  to III.2 and III.10\UIII.15.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/II-1.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.16|III-16.tm>,
  <hlink|III.1|III-1.tm>, <hlink|IV.1|IV-1.tm>, <hlink|III.10|III-10.tm>,
  <hlink|III.2|III-2.tm>.

  <strong|Referenced by:> <hlink|III.11|III-11.tm>, <hlink|III.12|III-12.tm>,
  <hlink|III.13|III-13.tm>, <hlink|VII.2|VII-2.tm>, <hlink|VIII.1|VIII-1.tm>,
  <hlink|III.2|III-2.tm>, <hlink|VII.4|VII-4.tm>, <hlink|VII.6|VII-6.tm>,
  <hlink|III.10|III-10.tm>, <hlink|III.6|III-6.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|VI.2|VI-2.tm>, <hlink|V.1|V-1.tm>,
  <hlink|III.3|III-3.tm>, <hlink|III.9|III-9.tm>, <hlink|III.14|III-14.tm>,
  <hlink|III.4|III-4.tm>, <hlink|III.15|III-15.tm>, <hlink|V.3|V-3.tm>,
  <hlink|III.8|III-8.tm>, <hlink|VII.3|VII-3.tm>, <hlink|VII.5|VII-5.tm>,
  <hlink|V.2|V-2.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 10,805 attributed lines; 1,375 line-counted
  declarations; 1,893 assigned declaration names. Of the assigned names,
  1,808 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>work package <hlink|<verbatim|YM/Push/RELAY_MARK/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK>
    \V 2,336 lines.

    <item>work package <hlink|<verbatim|YM/Extra/SOURCE_HISTORIES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES>
    \V 1,801 lines.

    <item>work package <hlink|<verbatim|YM/Push/LOCAL_SPLITTING/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING>
    \V 1,485 lines.

    <item>work package <hlink|<verbatim|YM/Next/FOUNDATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS>
    \V 1,196 lines.

    <item>work package <hlink|<verbatim|YM/Push/RELAY_DIFFERENCE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE>
    \V 858 lines.

    <item>work package <hlink|<verbatim|YM/Source/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source>
    \V 594 lines.

    <item>work package <hlink|<verbatim|YM/Work/G06/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06>
    \V 385 lines.

    <item>work package <hlink|<verbatim|YM/Planned/ATOM_GUARDED_LAYOUT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT>
    \V 365 lines.

    <item>work package <hlink|<verbatim|YM/Work/G07/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07>
    \V 359 lines.

    <item>work package <hlink|<verbatim|YM/LocalH/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH>
    \V 218 lines.

    <item>work package <hlink|<verbatim|YM/Work/G05/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05>
    \V 190 lines.

    <item>work package <hlink|<verbatim|YM/Further/LOCAL_LOG_JETS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS>
    \V 166 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|Bid.close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Drops.lean#L25>

    <item><hlink|<verbatim|Bid.G08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L101-L103>

    <item><hlink|<verbatim|Bid.RefLi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L141-L145>

    <item><hlink|<verbatim|Bid.Worth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29-L32>

    <item><hlink|<verbatim|Bid.G01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L23>

    <item><hlink|<verbatim|Bid.G03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L30>

    <item><hlink|<verbatim|Bid.G04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L37>

    <item><hlink|<verbatim|Bid.Cumuli>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L48-L50>

    <item><hlink|<verbatim|Bid.pop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L55-L56>

    <item><hlink|<verbatim|Bid.Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L63-L66>

    <item><hlink|<verbatim|Bid.Learns>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L72-L74>

    <item><hlink|<verbatim|Bid.teaching>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Source.lean#L76-L86>

    <item><hlink|<verbatim|born>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L105-L106>

    <item><hlink|<verbatim|fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L108-L109>

    <item><hlink|<verbatim|supplement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L24-L25>

    <item><hlink|<verbatim|healthy_supplement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L34-L39>

    <item><hlink|<verbatim|fullCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L67>

    <item><hlink|<verbatim|supplement_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L69-L101>

    <item><hlink|<verbatim|Latch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L120-L123>

    <item><hlink|<verbatim|latch_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L126-L157>

    <item><hlink|<verbatim|cameras>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L20>

    <item><hlink|<verbatim|orbitCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Motion.lean#L121>

    <item><hlink|<verbatim|Buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L47-L51>

    <item><hlink|<verbatim|Doors.Plans>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L57-L62>

    <item><hlink|<verbatim|Doors.Budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L65-L72>

    <item><hlink|<verbatim|onTop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Song.lean#L48-L90>

    <item><hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>

    <item><hlink|<verbatim|Run.Ties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L65-L71>

    <item><hlink|<verbatim|Hearthside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Fire.lean#L17-L20>

    <item><hlink|<verbatim|realBar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L131-L140>

    <item><hlink|<verbatim|Frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102-L104>

    <item><hlink|<verbatim|pure_real_span>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L16-L33>

    <item><hlink|<verbatim|Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57>

    <item><hlink|<verbatim|extend_subset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L59-L81>

    <item><hlink|<verbatim|frame_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L83-L86>

    <item><hlink|<verbatim|extend_frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L88-L100>

    <item><hlink|<verbatim|Grade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L17-L18>

    <item><hlink|<verbatim|decompose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105>

    <item><hlink|<verbatim|radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L22-L37>

    <item><hlink|<verbatim|Labels.Taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39>

    <item><hlink|<verbatim|invariantSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L103-L107>

    <item><hlink|<verbatim|Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>

    <item><hlink|<verbatim|Jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L28>

    <item><hlink|<verbatim|read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L35>

    <item><hlink|<verbatim|eval_ext>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49>

    <item><hlink|<verbatim|limited>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L60-L61>

    <item><hlink|<verbatim|cap_finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94>

    <item><hlink|<verbatim|Frame.core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L123-L126>

    <item><hlink|<verbatim|Frame.coeffSize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L128>

    <item><hlink|<verbatim|Frame.Coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L18>

    <item><hlink|<verbatim|Frame.scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L58-L61>

    <item><hlink|<verbatim|Frame.act>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L83-L84>

    <item><hlink|<verbatim|LocalH.actual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/LocalH/Haar.lean#L97-L146>

    <item><hlink|<verbatim|Maxwell.equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>

    <item><hlink|<verbatim|ideal_meaning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L74-L79>

    <item><hlink|<verbatim|Maxwell.onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>

    <item><hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>

    <item><hlink|<verbatim|Bandage.squad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Marco.lean#L30-L49>

    <item><hlink|<verbatim|read_frame_scaled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L158-L168>

    <item><hlink|<verbatim|Reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L186-L194>

    <item><hlink|<verbatim|nonwrapping_placement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L240-L251>

    <item><hlink|<verbatim|placed_reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/JetReads.lean#L253-L267>

    <item><hlink|<verbatim|localSection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L101>

    <item><hlink|<verbatim|sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L103-L104>

    <item><hlink|<verbatim|valuation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L106-L107>

    <item><hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L126>

    <item><hlink|<verbatim|priced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L133-L142>

    <item><hlink|<verbatim|full_value_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L147-L163>

    <item><hlink|<verbatim|Foundations.refLi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L182-L193>

    <item><hlink|<verbatim|Foundations.chart_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84>

    <item><hlink|<verbatim|Foundations.hol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L92>

    <item><hlink|<verbatim|testLog_diff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L110-L114>

    <item><hlink|<verbatim|increment_testLog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L119-L125>

    <item><hlink|<verbatim|read_projection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L218-L233>

    <item><hlink|<verbatim|mixed_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L123-L184>

    <item><hlink|<verbatim|test_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L194-L223>

    <item><hlink|<verbatim|budget_probes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L34-L67>

    <item><hlink|<verbatim|Guard.summon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L287-L326>

    <item><hlink|<verbatim|Keeper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L63-L68>

    <item><hlink|<verbatim|Keeper.blank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_GUARDED_LAYOUT/Guards.lean#L89>

    <item><hlink|<verbatim|gasMark_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L29-L31>

    <item><hlink|<verbatim|corner_root>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L192-L226>

    <item><hlink|<verbatim|Memento>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L39-L41>

    <item><hlink|<verbatim|awarded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L57-L67>

    <item><hlink|<verbatim|paid_reel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L100-L102>

    <item><hlink|<verbatim|regrade_tri>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L43-L50>

    <item><hlink|<verbatim|twist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Automorphism.lean#L72-L73>

    <item><hlink|<verbatim|force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L149-L150>

    <item><hlink|<verbatim|micro_force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Avoid.lean#L170-L218>

    <item><hlink|<verbatim|continuum_current>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L208-L251>

    <item><hlink|<verbatim|top_shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L253-L280>

    <item><hlink|<verbatim|averaged>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L110-L143>

    <item><hlink|<verbatim|impression>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/HGroup.lean#L106-L125>

    <item><hlink|<verbatim|multiplied>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L44-L45>

    <item><hlink|<verbatim|erase_shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L58-L68>

    <item><hlink|<verbatim|generation_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Ideal.lean#L93-L112>

    <item><hlink|<verbatim|Offered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L33-L38>

    <item><hlink|<verbatim|Payment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L65-L67>

    <item><hlink|<verbatim|Campaign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L69-L71>

    <item><hlink|<verbatim|shelf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L99-L102>

    <item><hlink|<verbatim|MicroAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L29-L31>

    <item><hlink|<verbatim|Micro>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Micro.lean#L33>

    <item><hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L51-L58>

    <item><hlink|<verbatim|stanza>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L100-L127>

    <item><hlink|<verbatim|coherent_verse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L129-L153>

    <item><hlink|<verbatim|Cone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L78-L83>

    <item><hlink|<verbatim|field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L132>

    <item><hlink|<verbatim|field_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L232-L237>

    <item><hlink|<verbatim|ibp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L321-L340>

    <item><hlink|<verbatim|equation_silent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L342-L348>

    <item><hlink|<verbatim|turn_preserving>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Wilson.lean#L96-L101>

    <item><hlink|<verbatim|Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165-L171>

    <item><hlink|<verbatim|Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181-L183>

    <item><hlink|<verbatim|BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125-L136>

    <item><hlink|<verbatim|Regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154-L161>

    <item><hlink|<verbatim|supBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L164-L166>

    <item><hlink|<verbatim|Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>

    <item><hlink|<verbatim|masked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L70-L72>

    <item><hlink|<verbatim|Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>

    <item><hlink|<verbatim|constant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L100-L102>

    <item><hlink|<verbatim|invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L104-L107>

    <item><hlink|<verbatim|localO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L109-L112>

    <item><hlink|<verbatim|continuousO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L114-L115>

    <item><hlink|<verbatim|linearO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L117-L127>

    <item><hlink|<verbatim|Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24-L30>

    <item><hlink|<verbatim|Family.refUnit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L37>

    <item><hlink|<verbatim|normalized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L65-L68>

    <item><hlink|<verbatim|translation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L71-L72>

    <item><hlink|<verbatim|reality>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L74-L86>

    <item><hlink|<verbatim|rotated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L88-L98>

    <item><hlink|<verbatim|Vision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L104-L105>

    <item><hlink|<verbatim|Drops.insight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L145-L153>

    <item><hlink|<verbatim|Snap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L26>

    <item><hlink|<verbatim|Drops.Peg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L88-L91>

    <item><hlink|<verbatim|bring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Drops.lean#L98>

    <item><hlink|<verbatim|origin_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L121-L130>

    <item><hlink|<verbatim|Coefficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26-L30>

    <item><hlink|<verbatim|exponentialEntry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L37-L39>

    <item><hlink|<verbatim|Coefficient.density>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L48-L50>

    <item><hlink|<verbatim|Format>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61>

    <item><hlink|<verbatim|remBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68>

    <item><hlink|<verbatim|TransferData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73-L75>

    <item><hlink|<verbatim|initial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L77-L79>

    <item><hlink|<verbatim|SectionData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103-L105>

    <item><hlink|<verbatim|places>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L112>

    <item><hlink|<verbatim|partConnection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L34-L35>

    <item><hlink|<verbatim|SolvesLink.unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L42-L52>

    <item><hlink|<verbatim|Source.Hol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55-L57>

    <item><hlink|<verbatim|Hol.links>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L62>

    <item><hlink|<verbatim|scaleJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L82>

    <item><hlink|<verbatim|Projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L85-L89>

    <item><hlink|<verbatim|integral_marked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L100-L118>

    <item><hlink|<verbatim|regular_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L17-L23>

    <item><hlink|<verbatim|marked_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L25-L51>

    <item><hlink|<verbatim|envelope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Preservation.lean#L66-L84>

    <item><hlink|<verbatim|Wilson.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99>

    <item><hlink|<verbatim|links_colored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L138-L146>

    <item><hlink|<verbatim|Work.G01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G01.lean#L157-L164>

    <item><hlink|<verbatim|linkGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L140-L177>

    <item><hlink|<verbatim|walkGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L191-L225>

    <item><hlink|<verbatim|zero_of_zero_partials>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L136-L149>

    <item><hlink|<verbatim|top_term>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G03.lean#L164-L185>

    <item><hlink|<verbatim|Work.G04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G04.lean#L121-L139>

    <item><hlink|<verbatim|recovery_projects>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L47-L100>

    <item><hlink|<verbatim|enclose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L20-L28>

    <item><hlink|<verbatim|realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L30-L41>

    <item><hlink|<verbatim|paid_lumin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L64-L77>

    <item><hlink|<verbatim|raw_slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L154-L163>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/mgubi/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-ii-1-1>

  <\itemize-minus>
    <item><strong|K-II.1.1> <hlink|<verbatim|endpointGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L89-L130>
    <em|(key result)> \V For a right-multiplication ODE with coefficients
    linear in finite-dimensional parameters, the endpoint solution is
    analytic in the parameters with derivative given by the integral of the
    coefficient.
  </itemize-minus>

  <label|k-ii-1-2>

  <\itemize-minus>
    <item><strong|K-II.1.2> <hlink|<verbatim|blockTaylor_jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05/Taylor.lean#L84-L102>
    <em|(key result)> \V The block Taylor polynomial of a C^d function at 0
    has the same Fréchet derivatives as the function at 0 up to order d.
  </itemize-minus>

  <label|k-ii-1-3>

  <\itemize-minus>
    <item><strong|K-II.1.3> <hlink|<verbatim|entryPoly_slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06/Formula.lean#L137-L155>
    <em|(numbered result)> \V The slot readout on cover links is a polynomial
    in the entry variables of the links in its stencil.
  </itemize-minus>

  <label|k-ii-1-4>

  <\itemize-minus>
    <item><strong|K-II.1.4> <hlink|<verbatim|slotGerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G02.lean#L230-L273>
    <em|(key result)> \V The slot readout along a holonomy family is analytic
    at zero and its initial germ equals the explicit linear form, with no
    symmetry hypothesis.
  </itemize-minus>

  <label|k-ii-1-5>

  <\itemize-minus>
    <item><strong|K-II.1.5> <hlink|<verbatim|Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L140-L147>
    <em|(numbered result)> \V A soundness predicate bundling normalization
    properties of a physical lattice section.
  </itemize-minus>

  <label|k-ii-1-6>

  <\itemize-minus>
    <item><strong|K-II.1.6> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G05.lean#L113-L139>
    <em|(key result)> \V Real invariant slot polynomials with lower-degree
    Taylor terms retained, built from real Fréchet jets of block maps.
  </itemize-minus>

  <label|k-ii-1-7>

  <\itemize-minus>
    <item><strong|K-II.1.7> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G06.lean#L43-L60>
    <em|(key result)> \V The jet data are turned into an equivariant
    polynomial section over the labels.
  </itemize-minus>

  <label|k-ii-1-8>

  <\itemize-minus>
    <item><strong|K-II.1.8> <hlink|<verbatim|paid_slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07/Stencil.lean#L180-L199>
    <em|(numbered result)> \V Evaluating a single link slot on a stencil
    within S satisfies the rate bound at order zero with a single threshold.
  </itemize-minus>

  <label|k-ii-1-9>

  <\itemize-minus>
    <item><strong|K-II.1.9> <hlink|<verbatim|answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/G07.lean#L79-L102>
    <em|(key result)> \V The G07 requirement holds: finite source sections
    have derivative-cost bounds on stencils of link variables, invariant and
    local.
  </itemize-minus>

  <label|k-ii-1-10>

  <\itemize-minus>
    <item><strong|K-II.1.10> <hlink|<verbatim|line_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Stock.lean#L120-L160>
    <em|(numbered result)> \V The spliced line terms admit explicit
    coefficient majorants whose total weighted budget is bounded by C times a
    mass-exponential quantity.
  </itemize-minus>

  <label|k-ii-1-11>

  <\itemize-minus>
    <item><strong|K-II.1.11> <hlink|<verbatim|routes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Clusters.lean#L198-L211>
    <em|(numbered result)> \V A bijection between old cluster terms and
    issued terms is constructed before summation.
  </itemize-minus>

  <label|k-ii-1-12>

  <\itemize-minus>
    <item><strong|K-II.1.12> <hlink|<verbatim|paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Purchase.lean#L42-L78>
    <em|(key result)> \V Splicing a bad-field multiplier at a marker gives
    exactly f times the old polymer gas, summed over labels, for every
    configuration.
  </itemize-minus>

  <label|k-ii-1-13>

  <\itemize-minus>
    <item><strong|K-II.1.13> <hlink|<verbatim|center_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L134-L160>
    <em|(numbered result)> \V The root test of a translated, oriented
    observable at a centered cell equals the root test of the original at the
    origin cell.
  </itemize-minus>

  <label|k-ii-1-14>

  <\itemize-minus>
    <item><strong|K-II.1.14> <hlink|<verbatim|offset>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Placement.lean#L232-L270>
    <em|(key result)> \V A single finer centered comparison bound for an
    observable implies the interior property and root-test bound at all
    offsets of a coarser tiling.
  </itemize-minus>

  <label|k-ii-1-15>

  <\itemize-minus>
    <item><strong|K-II.1.15> <hlink|<verbatim|smooth_exchange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/LOCAL_LOG_JETS/Series.lean#L232-L255>
    <em|(key result)> \V If summands have jets dominated by absolutely
    summable bounds on an open window, the sum is C^k and ordered left
    derivatives can be taken termwise.
  </itemize-minus>

  <label|k-ii-1-16>

  <\itemize-minus>
    <item><strong|K-II.1.16> <hlink|<verbatim|mix_convert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Mixed.lean#L179-L201>
    <em|(key result)> \V Mixed left/right derivatives on disjoint sets of
    links equal a sum of ordinary ordered left jets at the base point after
    reordering.
  </itemize-minus>

  <label|k-ii-1-17>

  <\itemize-minus>
    <item><strong|K-II.1.17> <hlink|<verbatim|launched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Birth.lean#L116-L161>
    <em|(key result)> \V Birth of a single-source transfer: under a lawful
    gas and bounds, the born history has a ledger, format, remainder bound
    and the exact density formula.
  </itemize-minus>

  <label|k-ii-1-18>

  <\itemize-minus>
    <item><strong|K-II.1.18> <hlink|<verbatim|exists_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Readout.lean#L238-L247>
    <em|(key result)> \V For regular coefficients of sufficient order, there
    exists a unique curvature-jet label read off from the function at the
    given site.
  </itemize-minus>

  <label|k-ii-1-19>

  <\itemize-minus>
    <item><strong|K-II.1.19> <hlink|<verbatim|delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Delay.lean#L56-L68>
    <em|(key result)> \V For any support-exponent ceiling, there is a stage
    threshold beyond which the budget width times the square root of the
    forced allowance is at most 1 and the bare delay condition holds at every
    level below the ceiling.
  </itemize-minus>

  <label|k-ii-1-20>

  <\itemize-minus>
    <item><strong|K-II.1.20> <hlink|<verbatim|recover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOCAL_SPLITTING/Recovery.lean#L184-L191>
    <em|(key result)> \V Packing attaching terms into indicator slots and
    summing the gas marks recovers exactly the sum of the terms times the
    vacuum gas.
  </itemize-minus>

  <label|k-ii-1-21>

  <\itemize-minus>
    <item><strong|K-II.1.21> <hlink|<verbatim|Heard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Replay.lean#L32-L43>
    <em|(numbered result)> \V A proposition bundling several line/read claims
    that all refer to the same history witness.
  </itemize-minus>

  <label|k-ii-1-22>

  <\itemize-minus>
    <item><strong|K-II.1.22> <hlink|<verbatim|roof_of_tabs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/CalendarPrices.lean#L84-L92>
    <em|(numbered result)> \V The roof estimate follows from the tabs
    hypothesis on the path levels.
  </itemize-minus>

  <label|k-ii-1-23>

  <\itemize-minus>
    <item><strong|K-II.1.23> <hlink|<verbatim|gather_close>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_DIFFERENCE/Combination.lean#L65-L93>
    <em|(numbered result)> \V Combining families of trials with slow
    multipliers and centered rent bounds yields a combined closeness estimate
    with exponential decay restored.
  </itemize-minus>

  <label|k-ii-1-24>

  <\itemize-minus>
    <item><strong|K-II.1.24> <hlink|<verbatim|testLog_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/LinkBounds.lean#L229-L273>
    <em|(numbered result)> \V Derivatives of the logarithmic link readout are
    bounded by a constant times theta times a power of torus distance,
    uniformly in side and anchor.
  </itemize-minus>

  <label|k-ii-1-25>

  <\itemize-minus>
    <item><strong|K-II.1.25> <hlink|<verbatim|price_of_readout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/TestBounds.lean#L271-L290>
    <em|(key result)> \V There is one constant such that the scaled
    coefficient size of any read-out label is bounded by that constant times
    the sup bound of the function, uniformly in side and support.
  </itemize-minus>

  <label|k-ii-1-26>

  <\itemize-minus>
    <item><strong|K-II.1.26> <hlink|<verbatim|alone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L108-L133>
    <em|(numbered result)> \V Any sheet can be grown in columns to another
    with the same kernel and floor for which numeric plans exist.
  </itemize-minus>

  <label|k-ii-1-27>

  <\itemize-minus>
    <item><strong|K-II.1.27> <hlink|<verbatim|entrances>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Delays.lean#L162-L177>
    <em|(numbered result)> \V There is an entrance cost function such that
    all levels with the matching profile satisfy the latch condition for all
    degrees up to the stage index.
  </itemize-minus>

  <label|k-ii-1-28>

  <\itemize-minus>
    <item><strong|K-II.1.28> <hlink|<verbatim|afford>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/SOURCE_HISTORIES/Reserve.lean#L76-L102>
    <em|(key result)> \V Given plans for a sheet, there are floors and beta
    thresholds beyond which every level system on the sheet satisfies the
    budget.
  </itemize-minus>

  <label|k-ii-1-29>

  <\itemize-minus>
    <item><strong|K-II.1.29> <hlink|<verbatim|build>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Portfolio.lean#L101-L105>
    <em|(key result)> \V For any holonomy datum and frame, a section datum
    and weave exist satisfying the portfolio conditions unconditionally.
  </itemize-minus>

  <label|k-ii-1-30>

  <\itemize-minus>
    <item><strong|K-II.1.30> <hlink|<verbatim|commissioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Assembly.lean#L30-L33>
    <em|(major result)> \V Portfolio build holds simultaneously for all
    degrees d along a fixed frame list.
  </itemize-minus>

  <label|k-ii-1-31>

  <\itemize-minus>
    <item><strong|K-II.1.31> <hlink|<verbatim|mounted_read>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Rank.lean#L157-L166>
    <em|(key result)> \V Every element of the equation ideal at pure grade
    admits a raw lift satisfying the cone relation.
  </itemize-minus>

  <label|k-ii-1-32>

  <\itemize-minus>
    <item><strong|K-II.1.32> <hlink|<verbatim|positioned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Gauge.lean#L147-L163>
    <em|(key result)> \V Every pure-grade equation-ideal element has a
    gauge-invariant lift satisfying the cone relation.
  </itemize-minus>

  <label|k-ii-1-33>

  <\itemize-minus>
    <item><strong|K-II.1.33> <hlink|<verbatim|force_kernel_last>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Current.lean#L286-L297>
    <em|(key result)> \V If all transported linearized forces vanish on the
    cut, the top Taylor coefficient lies in the range of the gauge jet map,
    i.e. is on-shell pure gauge.
  </itemize-minus>

  <label|k-ii-1-34>

  <\itemize-minus>
    <item><strong|K-II.1.34> <hlink|<verbatim|unsym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Linear.lean#L155-L168>
    <em|(numbered result)> \V For any holonomy datum and degree there is a
    switch realizing a campaign.
  </itemize-minus>

  <label|k-ii-1-35>

  <\itemize-minus>
    <item><strong|K-II.1.35> <hlink|<verbatim|force_span>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/RELAY_MARK/Span.lean#L32-L41>
    <em|(key result)> \V Any linear functional vanishing on pure-gauge jets,
    composed with last-coordinate projection, lies in the span of mounted
    force functionals.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> I.1 Lattice, symmetries, gauge groups and
  the Wilson measure|I-1.tm>|<hlink|Part II|../units.tm#part-ii-data-of-the-construction><ym-nav-sep><hlink|Detailed
  notes|../notes/II-1.tm>|<hlink|II.2 Marker algebra, polymer combinatorics
  and Gaussian estimates \<rightarrow\>|II-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|II.1. Field labels and their lattice
    representatives \U Yang\UMills informalization>
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
    <associate|additional-source-locations|<tuple|9.1|6>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|9.1|6>>
    <associate|auto-11|<tuple|10|12>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|5>>
    <associate|auto-7|<tuple|7|5>>
    <associate|auto-8|<tuple|8|5>>
    <associate|auto-9|<tuple|9|6>>
    <associate|code-dependencies|<tuple|8|5>>
    <associate|ii1-field-labels-and-their-lattice-representatives|<tuple|?|1>>
    <associate|k-ii-1-1|<tuple|10|12>>
    <associate|k-ii-1-10|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-11|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-12|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-13|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-14|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-15|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-16|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-17|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-18|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-19|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-2|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-20|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-21|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-22|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-ii-1-23|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-24|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-25|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-26|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-27|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-28|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-29|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-3|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-30|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-31|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-32|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-ii-1-33|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-ii-1-34|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-ii-1-35|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-ii-1-4|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-5|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-6|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-7|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-8|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|k-ii-1-9|<tuple|<with|mode|<quote|math>|<rigid|->>|13>>
    <associate|key-statements|<tuple|10|12>>
    <associate|lean-source|<tuple|9|6>>
    <associate|unit-difficulty|<tuple|6|5>>
    <associate|unit-inputs|<tuple|1|4>>
    <associate|unit-limitations|<tuple|6|5>>
    <associate|unit-notation|<tuple|5|5>>
    <associate|unit-results|<tuple|?|2>>
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