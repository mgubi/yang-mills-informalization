<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.1 Free Maxwell fields for the
  short-distance comparison|VII-1.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-2.tm>|<hlink|VII.3 Free Wick polynomials and reflected
  Gram positivity \<rightarrow\>|VII-3.tm>>

  <ym-title|VII.2. The trace of the stress tensor and the trace
  anomaly><label|vii2-the-trace-of-the-stress-tensor-and-the-trace-anomaly>

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

  Explains the centered trace two-point asymptotic and the resulting
  exclusions under the stated comparison hypotheses.

  <strong|Status: edited.> Condensed from the unit's detailed notes, which
  were checked against the linked Lean in two rounds and edited; the local
  limitations still apply. <hlink|Status meanings|../../data/index.tm#outline-status>.

  <hlink|Overview|../index.tm> <ym-middot> <hlink|All units|../units.tm>
  <ym-middot> <hlink|Detailed notes|../notes/VII-2.tm> <ym-middot>
  <hlink|\<leftarrow\> Previous: VII.1|VII-1.tm> <ym-middot> <hlink|Next:
  VII.3 \<rightarrow\>|VII-3.tm>

  <hlink|Results|#unit-results> <ym-middot> <hlink|Inputs|#unit-inputs>
  <ym-middot> <hlink|Strategy|#unit-strategy> <ym-middot> <hlink|Proof
  steps|#unit-steps> <ym-middot> <hlink|Notation|#unit-notation> <ym-middot>
  <hlink|What remains unexplained|#unit-limitations> <ym-middot> <hlink|Code
  dependencies|#code-dependencies> <ym-middot> <hlink|Lean
  source|#lean-source> <ym-middot> <hlink|Key statements|#key-statements>

  <\ym-details|Source inventory and conventions>
    <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
    <hlink|<verbatim|YM/TraceExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension>.
    <strong|Size:> 20,681 lines.
  </ym-details>

  <label|unit-results>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  Unless stated otherwise, fix a final record over a Wilson family <math|C>,
  extraction order <math|f> and limit table <math|S> (VIII.1), with selected
  phase <math|\<xi\><rsub|\<ast\>>> and Ward-normalized stress tensor
  <math|T> (VI.1). The compact matrix group <math|G> has simple nonabelian
  Lie algebra <math|\<frak-g\>>. Set

  <\equation*>
    \<kappa\><rsub|G>=<frac|11*C<rsub|A>|24*\<pi\><rsup|2>>,<space|2em>d<rsub|2>=-<frac|\<kappa\><rsub|G>|4>,<space|2em>A<rsub|G>=<frac|3*dim
    \<frak-g\>|\<pi\><rsup|4>>.
  </equation*>

  Here <math|\<cal-O\>=<tfrac|1|4><big|sum><rsub|a,\<mu\>,\<nu\>>:F<rsup|a><rsub|\<mu\>*\<nu\>>*F<rsup|a><rsub|\<mu\>*\<nu\>>:>
  belongs to the free Maxwell table <math|<math-ss|F>> with <math|dim
  \<frak-g\>> species and propagator <math|1/<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)>>.

  <strong|Proposition VII.2.1 (centered trace).> Define
  <math|\<Theta\>=<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>-<around|\<langle\>|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>>*\<b-1\>\<in\>F<rsub|4>>.
  It has zero expectation, is real, <math|O<around|(|4|)>>-invariant and
  fixed by the time-reflection adjoint; these conclusions also hold when
  centering in any phase table respecting <math|S>. Its reconstructed label
  <math|\<iota\><around|(|\<Theta\>|)>> is fixed by conjugation <math|J> and
  every Lorentz transformation. For every Schwartz test <math|h>, its vacuum
  expectation vanishes and, on the common invariant field domain,

  <\equation*>
    \<Phi\><rsub|\<Theta\>><around|(|h|)>=\<Phi\><rsub|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>><around|(|h|)>-<around*|\<langle\>|<big|sum><rsub|\<mu\>>T<rsub|\<mu\>*\<mu\>>|\<rangle\>><rsub|\<xi\><rsub|\<ast\>>><around*|(|<big|int>h|)><math-up|id>.
  </equation*>

  If <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A\<gtr\>0>,
  then <math|\<iota\><around|(|\<Theta\>|)>\<ne\>0>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|pinned_scalar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L61-L63>,
  <hlink|<verbatim|center_field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link/Identity.lean#L158-L161>,
  <hlink|<verbatim|nonzero_strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Grand.lean#L23-L27>.

  <strong|Proposition VII.2.2 (spectral representation).> There is a unique
  positive Lorentz-invariant measure <math|\<mu\><rsub|\<Theta\>>> supported
  in <math|<wide|V|\<bar\>><rsub|+>> such that:

  <\itemize-minus>
    <item>Some <math|C<rsub|\<mu\>>\<geqslant\>0>,
    <math|k\<in\>\<bbb-N\><rsub|0>> satisfy
    <math|\<mu\><rsub|\<Theta\>>*<around|{|p<rsub|0>\<leqslant\>R|}>\<leqslant\>C<rsub|\<mu\>>*R<rsup|k>>
    for every <math|R\<geqslant\>1>.

    <item>For every <math|s\<gtr\>0>, <math|e<rsup|-s*p<rsub|0>>*\<mu\><rsub|\<Theta\>>>
    is finite and <math|G<rsub|\<Theta\>><around|(|s|)>=<big|int>e<rsup|-s*p<rsub|0>>*d*\<mu\><rsub|\<Theta\>>>.

    <item>For every Schwartz <math|\<varphi\>>, the translation spectral
    measure of <math|\<Phi\><rsub|\<Theta\>><around|(|\<varphi\>|)>*\<Omega\>>
    is <math|<around|\||<wide|\<varphi\>|^>|\|><rsup|2>*\<mu\><rsub|\<Theta\>>>;
    for every Schwartz <math|\<phi\>> on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|2>>,
    <math|W<rsub|2><around|(|\<Theta\>,\<Theta\>|)><around|(|\<phi\>|)>=<big|int><wide|\<phi\>|^><rsup|<math-up|wave>>*d*\<mu\><rsub|\<Theta\>>>.
  </itemize-minus>

  Thus <math|G<rsub|\<Theta\>>> is real, nonnegative and nonincreasing on
  <math|<around|(|0,\<infty\>|)>>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>.

  <strong|Proposition VII.2.3 (one-loop certificates).> Let <math|C> issue
  from run data satisfying the RG construction hypotheses in Ÿ2, including a
  chosen bounded block-spin run. For every filter <math|\<cal-L\>> on
  <math|\<bbb-N\><rsup|2>> along which both spacing and volume indices
  <math|N,p\<to\>\<infty\>>, there are level-5 lattice work items
  <math|t<rsub|k,N,p>> satisfying the lattice certificate for all large
  <math|k>, <math|\<cal-L\>>-eventually in <math|<around|(|N,p|)>>. In
  particular, their Ward darts satisfy, for every color <math|q>,

  <\equation*>
    <around|\||<math-up|midPay><rsub|q><around|(|J|)>+12*\<kappa\><rsub|G>|\|>\<leqslant\><wide|\<beta\>|^><rsub|k><rsup|-100>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|agenda>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35>,
  certificate <hlink|<verbatim|WorthB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L30-L40>.

  <strong|Proposition VII.2.4 (field anomaly; gallery property).> Assume II.1
  Wilson consistency, the quantitative RG and VII.6 scaling hypotheses in Ÿ2,
  auxiliary depths <math|n<rsub|k>\<geqslant\>2> eventually, and degree
  bounds <math|z<rsub|d>> covering every generator budget of degree at most
  <math|d> and satisfying the degree-<math|d> scaling estimates. Let
  <math|\<cal-L\>> be an ultrafilter finer than the fuse filter of <math|f>,
  with work items satisfying VII.2.3's certificate.

  For every limit table <math|S> along <math|f> with ordered Wilson
  convergence, Euclidean hierarchy, point limits, cell hypothesis and
  corrected rank estimates, and every field algebra on <math|S> satisfying
  derivative, rotation, conservation and Ward laws, there exist coupling and
  label-transfer limits <math|Z> along <math|\<cal-L\>> and a free Maxwell
  hierarchy <math|<math-ss|a>>, with <math|Z.*\<beta\><around|(|k|)>=lim<rsub|\<cal-L\>>
  \<beta\><rsub|N,p><around|(|k|)>> and <math|<wide|\<beta\>|^><rsub|k>/2\<leqslant\>Z.*\<beta\><around|(|k|)>\<leqslant\>2*<wide|\<beta\>|^><rsub|k>>
  for every level <math|k>.

  (i) For every scaling sequence <math|<around|(|r<rsub|i>,U<rsub|i>|)>>
  approaching <math|<math-ss|a>> with VII.6 RG lifts and pointwise lattice
  limits, base levels <math|k<rsub|i>\<to\>\<infty\>> and selected readout
  levels <math|\<ell\><rsub|i>>, put <math|w<rsub|i>=Z.*\<beta\><around|(|\<ell\><rsub|i>|)>>.
  Here <math|r<rsub|i>*\<downarrow\>*0>; the complex-linear identifications
  <math|U<rsub|i>:<math-ss|F><rsub|d>\<to\>F<rsub|d>> eventually preserve the
  unit, reality and signed coordinate actions degreewise, with rescaled
  correlations converging to <math|<math-ss|a>>. Then

  <\equation*>
    w<rsub|i>\<to\>\<infty\>,<space|2em><frac|log
    <around|(|1/r<rsub|i>|)>|w<rsub|i>>\<to\>\<kappa\><rsub|G><rsup|-1>,<space|2em>r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*<wide|T|\<abovering\>><rsub|\<mu\>*\<nu\>>\<to\>T<rsup|<math-up|free>><rsub|\<mu\>*\<nu\>>.
  </equation*>

  For every phase hierarchy <math|T<rprime|'>> respecting <math|S>, real
  sequences <math|e<rsub|i>,d<rsub|i>> satisfy, eventually,

  <\equation*>
    r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*\<Theta\><rsub|T<rprime|'>>=e<rsub|i>*\<b-1\>+4*d<rsub|i>*\<cal-O\>,<space|2em>w<rsub|i>*e<rsub|i>\<to\>0,<space|1em>w<rsub|i>*d<rsub|i>\<to\>d<rsub|2>.
  </equation*>

  Thus <math|w<rsub|i>*r<rsub|i><rsup|4>*U<rsub|i><rsup|-1>*\<Theta\><rsub|T<rprime|'>>\<to\>-\<kappa\><rsub|G>*\<cal-O\>>.

  (ii) Every sequence <math|s<rsub|j>\<gtr\>0> tending to zero has a
  subsequence that is the scale sequence of a scaling sequence satisfying
  (i). <em|Status:> theorem; hypotheses discharged in III.2 for the
  constructed family, recorded in VIII.1. <em|Lean:>
  <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>,
  <hlink|<verbatim|Store_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68>.

  <strong|Proposition VII.2.5 (short-distance and spectral laws).> If the
  gallery property holds for <math|<around|(|C,f|)>>, then

  <\equation*>
    lim<rsub|r*\<downarrow\>*0> r<rsup|8>*log<rsup|2><around|(|1/r|)>*G<rsub|\<Theta\>><around|(|r|)>=A<rsub|G>\<gtr\>0
  </equation*>

  in <math|\<bbb-C\>>. For every continuous compactly supported or Schwartz
  <math|\<varphi\>>, as <math|\<rho\>\<to\>\<infty\>>,

  <\equation*>
    \<rho\><rsup|-8>*log<rsup|2> \<rho\>*<big|int>\<varphi\>*<around|(|p/\<rho\>|)>*d*\<mu\><rsub|\<Theta\>><around|(|p|)>\<to\><frac|A<rsub|G>|1536*\<pi\>>*<big|int><rsub|V<rsub|+>><around|(|p<rsup|2>|)><rsup|2>*\<varphi\><around|(|p|)>*d<rsup|4>*p.
  </equation*>

  The limiting measure has Laplace transform <math|A<rsub|G>*s<rsup|-8>>. For
  every Schwartz <math|\<phi\>> on <math|<around|(|\<bbb-R\><rsup|4>|)><rsup|2>>,
  setting <math|\<phi\><rsub|\<rho\>><around|(|x,y|)>=\<rho\><rsup|8>*\<phi\><around|(|\<rho\>*x,\<rho\>*y|)>>,
  the same cone integral with <math|\<varphi\>=<wide|\<phi\>|^><rsup|<math-up|wave>>>
  is the limit of <math|\<rho\><rsup|-8>*log<rsup|2>
  \<rho\>*<space|0.17em>W<rsub|2><around|(|\<Theta\>,\<Theta\>|)><around|(|\<phi\><rsub|\<rho\>>|)>>.
  <em|Status:> theorem under the gallery property. <em|Lean:>
  <hlink|<verbatim|outside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88>,
  <hlink|<verbatim|joint_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222>.

  <strong|Proposition VII.2.6 (uniqueness of stress).> Let
  <math|\<cal-K\><around|(|S|)>> consist of real, symmetric,
  <math|S>-centered degree-4 tensors covariant under signed coordinate
  permutations; let <math|\<cal-V\><around|(|S|)>> consist of real degree-5
  vectors with that covariance. Fix a derivative plan satisfying derivative
  laws and the orientation condition. The free Maxwell divergence
  <math|\<cal-K\><around|(|<math-ss|F>|)>\<to\>\<cal-V\><around|(|<math-ss|F>|)>>
  is onto with one-dimensional kernel. In VII.2.4(i)'s setting, <math|dim
  \<cal-K\><around|(|S|)>=3>, <math|dim \<cal-V\><around|(|S|)>=2>, and
  <math|dim ker <math-up|div>=1>. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|free_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165>,
  <hlink|<verbatim|ranking>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L41-L51>.

  <strong|Proposition VII.2.7 (no finite Wick profile).> Suppose
  <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*G<rsub|\<Theta\>><around|(|r|)>\<to\>A\<gtr\>0>.
  For every finite <math|W<around|(|r|)>=<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>>*<big|prod><rsub|\<beta\>>K<rsub|m<rsub|\<alpha\>*\<beta\>>,q<rsub|\<alpha\>*\<beta\>>,h<rsub|\<alpha\>*\<beta\>>><around|(|r|)>>,
  with complex coefficients and

  <\equation*>
    K<rsub|m,q,h><around|(|r|)>=<big|int><rsub|\<bbb-R\><rsup|3>><frac|E<rsub|m><around|(|p|)><rsup|q>*h<around|(|p|)>|2*E<rsub|m><around|(|p|)>>*e<rsup|-r*E<rsub|m><around|(|p|)>>*d*p,<space|2em>E<rsub|m><around|(|p|)>=<sqrt|m<rsup|2>+<around|\||p|\|><rsup|2>>,
  </equation*>

  where <math|m\<geqslant\>0>, <math|q\<in\>\<bbb-N\><rsub|0>> and continuous
  <math|h:\<bbb-R\><rsup|3>\<to\>\<bbb-R\>> is positively homogeneous of
  nonnegative integer degree, every <math|\<delta\>\<gtr\>0> admits
  <math|r\<in\><around|(|0,\<delta\>|)>> with
  <math|G<rsub|\<Theta\>><around|(|r|)>\<ne\>W<around|(|r|)>>. No such
  collection reproduces the Wightman function by its mass-shell expression on
  all Schwartz product tests <math|\<varphi\>\<otimes\>\<psi\>> with
  compactly supported wave transform. This also excludes Wick contractions of
  two finite polynomial fields from any free-mode palette. <em|Status:>
  theorem. <em|Lean:> <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.

  <strong|Proposition VII.2.8 (free-photon Fock exclusion).> Under VII.2.7's
  positive law, for every <math|m\<in\>\<bbb-N\><rsub|0>>, let
  <math|\<cal-F\><rsub|m>> be the Fock space of <math|m> free-photon species.
  For every complex-linear isometry <math|U:\<cal-H\>\<to\>\<cal-F\><rsub|m>>
  preserving the vacuum, taking values in physical transverse waves and
  intertwining translations with <math|e<rsup|i*b\<cdot\>p<rsub|<math-up|tot>>>>,
  there exist a compactly supported smooth scalar test <math|\<varphi\>> and
  compactly supported smooth real three-vector tests <math|h<rsub|c>>,
  <math|1\<leqslant\>c\<leqslant\>m>, each causally separated from
  <math|\<varphi\>>, such that

  <\equation*>
    <around|\<langle\>|W*<around|(|-h|)>*\<Omega\><rsub|\<cal-F\>>,U*\<Phi\><rsub|\<Theta\>><around|(|\<varphi\>|)>*\<Omega\>|\<rangle\>>\<ne\><around|\<langle\>|U*\<Phi\><rsub|\<Theta\>><around|(|<wide|\<varphi\>|\<bar\>>|)>*\<Omega\>,W<around|(|h|)>*\<Omega\><rsub|\<cal-F\>>|\<rangle\>>.
  </equation*>

  Equality for all such tests would follow from relative locality with the
  free Weyl operators. The conclusion persists after applying any bounded
  self-adjoint operator fixing <math|U*\<cal-H\>> to both coherent vectors,
  or averaging over any probability family of inner-product-preserving maps
  on physical waves fixing <math|U*\<cal-H\>>. In the averaged version, for
  every <math|r\<gtr\>0>, tests can be supported in open <math|Q,W> with
  <math|<wide|Q|\<bar\>>\<subset\>B<around|(|0,r|)>> and
  <math|<wide|Q|\<bar\>>-<wide|W|\<bar\>>> spacelike, with <math|\<varphi\>>
  supported in <math|Q> and every component of <math|h> in <math|W>.
  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L46-L49>,
  <hlink|<verbatim|regions_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Regions.lean#L36-L38>.

  <strong|Proposition VII.2.9 (position-space coefficient).> For every simple
  <math|G>, kernel parameter <math|b\<gtr\>0> and extraction order <math|p>,
  there exist a consistent Wilson family <math|C> with parameter <math|b> and
  refinement <math|f> of <math|p>, admitting final records. For every such
  final record, there exist a free hierarchy, coupling limits <math|Z> and an
  ultrafilter admitting degree-4 position-space frames. For every admissible
  pair <math|P<around|(|s|)>,P<rprime|'><around|(|s|)>:<math-ss|F><rsub|4>\<to\>F<rsub|4>>
  with window cutoff <math|\<chi\>>, real <math|\<kappa\>,d,e> satisfy, for
  sufficiently small <math|s\<gtr\>0>,

  <\equation*>
    P<rprime|'><around|(|s|)><rsup|-1>*<around|(|s<rsup|4>*T<rsub|\<mu\>*\<nu\>>|)>=\<kappa\><around|(|s|)>*T<rsup|<math-up|free>><rsub|\<mu\>*\<nu\>>+d<around|(|s|)>*\<delta\><rsub|\<mu\>*\<nu\>>*\<cal-O\>+e<around|(|s|)>*\<delta\><rsub|\<mu\>*\<nu\>>*\<b-1\>,<space|2em>\<kappa\><around|(|s|)>\<to\>1.
  </equation*>

  Admissibility requires position-space Gram normalization, branch/angular
  alignment and convergence of prescribed finite off-diagonal jets for
  <math|P>; <math|P<rprime|'>> positively rescales its centered scalar sector
  and complement, fixes the unit, and normalizes two shell tests to free
  values. For every eventually positive <math|g> with <math|log
  <around|(|1/s|)>*g<around|(|s|)><rsup|2>\<to\>\<kappa\><rsub|G><rsup|-1>>,
  <math|d<around|(|s|)>/g<around|(|s|)><rsup|2>\<to\>d<rsub|2>>. The
  test-defined coupling satisfies <math|g<rsub|X>/g<rsub|W>\<to\>1> and
  <math|d-d<rsub|2>*g<rsub|X><rsup|2>=O<around|(|g<rsub|X><rsup|4>|)>>, where
  <math|g<rsub|W>> is the Wilson coupling from <math|Z>. Eventually
  <math|s<rsup|4>*\<Theta\>=4*d<around|(|s|)><math-up|center><rsub|\<xi\><rsub|\<ast\>>><around|(|P<rprime|'><around|(|s|)>*\<cal-O\>|)>>
  exactly. <em|Status:> theorem for the supplementary construction's family
  and refinement. <em|Lean:> <hlink|<verbatim|meterQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Noon.lean#L50-L83>,
  <hlink|<verbatim|FieldComparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L37-L64>.

  <label|unit-inputs>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item>I.1: positive <hlink|adjoint Casimir|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>;
    II.2, III.9: schedule <math|<wide|\<beta\>|^><rsub|k>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*log
    <around|(|1/a<rsub|k>|)>>.

    <item>III.4\UIII.15: bounded block-spin run, eventual-level estimates,
    stationary criticality, fourth-order classical matching, determinant
    budgets, cluster/polymer, support and small/large-field bounds; III.7:
    <hlink|logarithmic one-loop momentum integral|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>.
    III.2 supplies these run hypotheses.

    <item>IV.1: extraction, point limits, cell hypothesis and chessboard
    tests; V.1\UV.3: <hlink|phases and reconstruction|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73>;
    VI.1: field, rotation, derivative, orientation and Ward laws.

    <item>VI.2, VII.1, VII.3: free Maxwell calculus; VII.6: <hlink|scaling
    sequences|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31>,
    RG lifts and pointwise limits along subsequences of every positive null
    sequence.

    <item>Spectral theorem, Källén\ULehmann representation, holomorphic
    identity theorem, Laplace continuity/Tauberian results, coherent states
    and point-supported distributions (Reed\USimon II; Glimm\UJaffe, ch. 19;
    Feller II, ŸXIII.1\U5; Widder).
  </itemize-minus>

  <label|unit-strategy>

  <section|3. Strategy><label|3-strategy>

  The classical stress tensor is traceless; the anomaly comes from the
  running coupling. In Balaban's RG framework, transport a lattice Ward
  identity through block-spin steps and extract its coefficient from the
  background-field one-loop logarithmic pole. The canonical tensor has a
  divergence diagnostic tending to <math|-\<kappa\><rsub|G>>. Conservation
  forces the pure-trace improvement coefficient to <math|d<rsub|2>>; rank-one
  uniqueness and Ward normalization identify the conserved candidate with
  <math|T>.

  Free-field convergence then gives the two-point law. The factor
  <math|<around|(|log <around|(|1/r<rsub|i>|)>/w<rsub|i>|)><rsup|2>\<to\>\<kappa\><rsub|G><rsup|-2>>
  cancels the squared anomaly coefficient, leaving <math|A<rsub|G>>.
  Monotonicity removes lattice rounding; subsequences give the full limit.
  Laplace convergence gives the spectral law. Finite Wick expansions and
  relatively local photon Fock realizations each force incompatible
  short-distance growth.

  <label|unit-steps>

  <section|4. Steps><label|4-steps>

  <\enumerate>
    <item>A sound Ward dart represents the action variation along a
    displacement field through fourth order. Under the criticality, branch,
    bound, positive price-gap and classical-matching hypotheses, block-spin
    transport preserves soundness; repeated transport contracts precision
    errors by <math|1/2> per step. <hlink|Soundness|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L110-L141>.

    <item>Under uniform covariance, resolvent and action bounds, the one-loop
    action regulated at infrared mass <math|\<mu\>\<gtr\>0> has logarithmic
    coefficient <math|-12*\<kappa\><rsub|G>>. A mean-value argument in
    <math|log \<mu\>>, followed by regulated Ward comparison, gives the
    payoff limit. <hlink|<verbatim|awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53>.

    <item>Under VII.2.4's hypotheses, lattice-to-continuum transfer preserves
    the divergence diagnostic. Solving the two-dimensional improvement
    equation forces its scalar coefficient to <math|d<rsub|2>>.
    <hlink|<verbatim|quill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L68-L80>.

    <item>Rank-one conservation identifies the candidate up to a multiple;
    comparison of Ward fluxes makes that multiple tend to one.
    <hlink|<verbatim|year_spec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/North.lean#L28-L65>.

    <item>Free Wick normalization gives <math|A<rsub|G>> along scaling
    sequences; monotonicity removes lattice rounding and the subsequence
    principle gives the full limit. <hlink|<verbatim|outside>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88>.

    <item>Lorentz invariance converts the law to cone Laplace convergence;
    uniform energy bounds extend compact-test convergence to Schwartz tests.
    <hlink|<verbatim|joint_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222>.

    <item>Under the positive trace law, finite Wick power\Ulog expansions
    cannot produce an inverse logarithm squared. Relative locality in photon
    Fock space forces point-supported Cauchy data and then momentum-doubling
    eigencomponents, yielding energy growth at most <math|R<rsup|7>>,
    incompatible with the spectral law. <hlink|<verbatim|no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>,
    <hlink|<verbatim|saturate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44>.

    <item>For the supplementary position-space frames, shell normalization
    gives <math|d=d<rsub|2>*g<rsub|X><rsup|2>*\<kappa\>> and
    <math|\<kappa\>-1=-d*Q/B<rsub|0>>, where <math|B<rsub|0>\<ne\>0> and
    <math|Q> has a finite limit. Hence <math|\<kappa\>-1=O<around|(|g<rsub|X><rsup|2>|)>>
    and <math|d-d<rsub|2>*g<rsub|X><rsup|2>=O<around|(|g<rsub|X><rsup|4>|)>>.
    <hlink|<verbatim|meterQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Noon.lean#L50-L83>.
  </enumerate>

  <label|unit-difficulty>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The Ward transport, exact one-loop coefficient and remainders
  <math|o<around|(|<wide|\<beta\>|^><rsup|-p>|)>> for every
  <math|p\<in\>\<bbb-N\><rsub|0>> carry the anomaly proof. Slower coefficient
  errors must also defeat growing improvement coefficients. The amplitude
  uses equality of the independently entering schedule and one-loop slopes.
  The Wick exclusion concerns finite profiles; continuous-mass generalized
  free fields are outside its scope. Fock exclusion additionally needs
  point-supported Cauchy data to force dilation identities.

  <label|unit-notation>

  <section|6. Notation><label|6-notation>

  <math|F<rsub|d>>: degree-<math|d> labels; <math|<wide|T|\<abovering\>>>:
  <math|S>-centered stress; <math|G<rsub|\<Theta\>><around|(|r|)>=S<rsup|\<xi\><rsub|\<ast\>>>*<around|(|\<Theta\>*<around|(|-r*e<rsub|0>/2|)>*\<Theta\>*<around|(|r*e<rsub|0>/2|)>|)>>.
  <math|p<rsup|2>=p<rsub|0><rsup|2>-<around|\||<wide|p|\<vect\>>|\|><rsup|2>>;
  <math|V<rsub|+>> is the open forward cone;
  <math|<wide|\<phi\>|^><rsup|<math-up|wave>><around|(|p|)>=<big|int>e<rsup|i*p\<cdot\><around|(|y-x|)>>*\<phi\><around|(|x,y|)>*d<rsup|4>*x*<space|0.17em>d<rsup|4>*y>.
  <math|T<rsup|<math-up|free>>> is the traceless Maxwell stress tensor;
  <math|g<rsub|W>,g<rsub|X>> are the Wilson and position-space couplings.
  <math|<math-up|midPay><rsub|q>> is the real coefficient selector on the
  Haar divergence of the origin-rooted displacement field
  (<hlink|definition|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L38>).

  For <math|h=<around|(|h<rsub|c><rsup|a>|)>>, the coherent vector
  <math|W<around|(|h|)>*\<Omega\><rsub|\<cal-F\>>> has <math|n>-particle
  component <math|e<rsup|-<around|\<\|\|\>|\<eta\>|\<\|\|\>><rsup|2>/2><math-up|i><rsup|n>\<eta\><rsup|\<otimes\>n>/<sqrt|n!>>,
  where

  <\equation*>
    \<eta\><rsub|c><rsup|a><around|(|k|)>=<around|\||k|\|>*<big|sum><rsub|b><around*|(|\<delta\><rsub|a*b>-<frac|k<rsub|a>*k<rsub|b>|<around|\||k|\|><rsup|2>>|)>*<wide|h|^><rsub|c><rsup|b><around|(|<around|\||k|\|>,k|)>,<space|2em>d*\<nu\><around|(|k|)>=<frac|d<rsup|3>*k|2<around|\||k|\|>>.
  </equation*>

  The exact run predicates for VII.2.3 are <verbatim|Bolt>,
  <verbatim|Bandage>, <verbatim|Nest>, <verbatim|Vigil>, <verbatim|Acclaim>,
  <verbatim|supportQ>; for VII.2.4 they are <verbatim|PostT>,
  <verbatim|Stock.Tabs>, <verbatim|Scrim>, <verbatim|Sceptre>,
  <verbatim|supportQ>, <verbatim|Moonlit>, <verbatim|auraQ>, together with
  <verbatim|Binding>, <verbatim|HaarBudget>, <verbatim|ChartRatio>, generator
  bounds and <verbatim|FiresSky>.

  <label|unit-limitations>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  Full proofs of RG contraction, covariance/resolvent bounds and fast
  lattice-to-continuum remainders remain inputs. So do the single
  massive-mode expansion, point-support and analytic uniqueness theorems for
  Fock exclusion, and existence and shell-observable formulas for
  position-space frames.

  Detailed notes: the full account of this unit, with proof sketches for
  every step, is on the <hlink|detailed notes page|../notes/VII-2.tm>.

  <section|Code dependencies><label|code-dependencies>

  <strong|Code dependencies (from the compiled Lean).> These lists follow
  references between declarations allocated to units; they can include shared
  definitions, record fields and alternative constructions. They are not a
  mathematical reading order. Only unit pairs with at least 25 references are
  shown; see the <hlink|counting rules|../../data/index.tm#code-dependencies>.

  <strong|References to:> <hlink|I.1|I-1.tm>, <hlink|III.1|III-1.tm>,
  <hlink|III.7|III-7.tm>, <hlink|III.16|III-16.tm>, <hlink|IV.1|IV-1.tm>,
  <hlink|II.1|II-1.tm>, <hlink|VI.1|VI-1.tm>, <hlink|III.6|III-6.tm>,
  <hlink|III.11|III-11.tm>, <hlink|V.2|V-2.tm>, <hlink|VI.2|VI-2.tm>,
  <hlink|VIII.1|VIII-1.tm>, <hlink|II.2|II-2.tm>, <hlink|III.9|III-9.tm>,
  <hlink|III.10|III-10.tm>, <hlink|III.8|III-8.tm>, <hlink|VII.6|VII-6.tm>,
  <hlink|VII.1|VII-1.tm>, <hlink|VII.5|VII-5.tm>, <hlink|III.3|III-3.tm>,
  <hlink|V.1|V-1.tm>, <hlink|III.2|III-2.tm>, <hlink|III.4|III-4.tm>.

  <strong|Referenced by:> <hlink|III.2|III-2.tm>, <hlink|VIII.1|VIII-1.tm>.

  <section|Lean source><label|lean-source>

  <strong|Source allocation:> 20,681 attributed lines; 3,833 line-counted
  declarations; 5,055 assigned declaration names. Of the assigned names,
  4,879 are in the compiled closure of the seventeen headline results. These
  quantities have <hlink|different scopes|../../data/index.tm#counting-scopes>.

  The folders and result chains below are source inventories. Their line
  counts cover each whole group, including any share allocated to another
  unit; percentages use attributed lines plus one per assigned name. They
  need not sum to the unit total.

  <\itemize-minus>
    <item>proof of <hlink|<verbatim|Store_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68>
    and the results it chains to \V 6,437 lines.

    <item>proof of <hlink|<verbatim|agenda>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35>
    and the results it chains to \V 6,036 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Fock/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock>,
    with <hlink|<verbatim|YM/TraceExtension/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension>,
    <hlink|<verbatim|YM/TraceExtension/Wick/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick>,
    <hlink|<verbatim|YM/TraceExtension/Atlas/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas>,
    <hlink|<verbatim|YM/TraceExtension/Chart/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart>,
    <hlink|<verbatim|YM/TraceExtension/Pith/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith>,
    <hlink|<verbatim|YM/TraceExtension/Sundial/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial>,
    <hlink|<verbatim|YM/TraceExtension/Verse/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse>,
    <hlink|<verbatim|YM/TraceExtension/Link/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link>
    \V 3,581 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Perfect/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect>
    \V 1,298 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Filch/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Filch>
    \V 536 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Det/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det>
    \V 438 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Shepherd/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd>
    \V 366 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Lamp/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp>
    \V 284 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Pi/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pi>
    \V 216 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Terrace/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace>
    \V 196 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Turret/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Turret>
    \V 162 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Zn/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn>
    \V 155 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Weir/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir>
    \V 100 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Fen/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fen>
    \V 98 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Quince/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince>
    \V 93 lines.

    <item>work package <hlink|<verbatim|YM/Integration/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration>
    \V 80 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Xo/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Xo>
    \V 79 lines.

    <item>work package <hlink|<verbatim|YM/RG08/Calendar/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar>
    \V 74 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Cask/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask>
    \V 73 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Wicket/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wicket>
    \V 69 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Swift/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Swift>
    \V 65 lines.

    <item>work package <hlink|<verbatim|YM/Nonperturbative/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative>
    \V 64 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Margin/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin>
    \V 51 lines.

    <item>proof of <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>
    \V 40 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Shunt/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shunt>
    \V 32 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Pills/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pills>
    \V 29 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Loft/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft>
    \V 21 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Anchor/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor>
    \V 4 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Slate/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate>
    \V 3 lines.

    <item>work package <hlink|<verbatim|YM/TraceExtension/Shelves/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves>
    \V 1 lines.
  </itemize-minus>

  <subsection|Additional source locations><label|additional-source-locations>

  Further pinned locations for the definitions and comparisons discussed in
  this unit.

  <\itemize-minus>
    <item><hlink|<verbatim|profile_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L19-L23>

    <item><hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>

    <item><hlink|<verbatim|Cells.standard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22>

    <item><hlink|<verbatim|CellHyp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79>

    <item><hlink|<verbatim|Climb.Bel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20>

    <item><hlink|<verbatim|Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31>

    <item><hlink|<verbatim|FreeRanks.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean>

    <item><hlink|<verbatim|free_closure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L83-L113>

    <item><hlink|<verbatim|ManuscriptTraceTests.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean>

    <item><hlink|<verbatim|Tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L62-L75>

    <item><hlink|<verbatim|plentifulWithPrediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean>

    <item><hlink|<verbatim|encamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Gauge.lean#L219-L220>

    <item><hlink|<verbatim|HeadlineSpec.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean>

    <item><hlink|<verbatim|TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>

    <item><hlink|<verbatim|Funded.gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95>

    <item><hlink|<verbatim|Locals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43>

    <item><hlink|<verbatim|odd_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas/Crash.lean#L33-L36>

    <item><hlink|<verbatim|Crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L16-L30>

    <item><hlink|<verbatim|crest_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37>

    <item><hlink|<verbatim|stressTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17>

    <item><hlink|<verbatim|euclideanVEV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L34>

    <item><hlink|<verbatim|centerIn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L63>

    <item><hlink|<verbatim|theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64>

    <item><hlink|<verbatim|centerIn_vac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L66-L67>

    <item><hlink|<verbatim|trace_real>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L69-L71>

    <item><hlink|<verbatim|trace_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L73-L74>

    <item><hlink|<verbatim|trace_adj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L76-L78>

    <item><hlink|<verbatim|scalar_rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L80-L106>

    <item><hlink|<verbatim|Litpay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Auth.lean#L30-L34>

    <item><hlink|<verbatim|BQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L42>

    <item><hlink|<verbatim|pairingD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L45-L55>

    <item><hlink|<verbatim|sizeQ'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L57-L61>

    <item><hlink|<verbatim|transferX>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L63-L77>

    <item><hlink|<verbatim|pollen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L48>

    <item><hlink|<verbatim|wend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L45-L58>

    <item><hlink|<verbatim|Gallery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44>

    <item><hlink|<verbatim|ChoiceK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L53-L55>

    <item><hlink|<verbatim|b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L60>

    <item><hlink|<verbatim|beta_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L61>

    <item><hlink|<verbatim|d2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L62>

    <item><hlink|<verbatim|force_b>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L63>

    <item><hlink|<verbatim|ZoomValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L64>

    <item><hlink|<verbatim|shift_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L69-L72>

    <item><hlink|<verbatim|july>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L79-L84>

    <item><hlink|<verbatim|zoom_BQ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L42-L62>

    <item><hlink|<verbatim|band_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L73-L76>

    <item><hlink|<verbatim|payload>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Scalar.lean#L72-L81>

    <item><hlink|<verbatim|OScale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L50>

    <item><hlink|<verbatim|sum_delta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L51-L53>

    <item><hlink|<verbatim|Year>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L55>

    <item><hlink|<verbatim|Cloak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L61>

    <item><hlink|<verbatim|serene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L64-L65>

    <item><hlink|<verbatim|yields>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L69-L80>

    <item><hlink|<verbatim|blossoms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L82-L95>

    <item><hlink|<verbatim|leaderB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L41-L51>

    <item><hlink|<verbatim|Scribe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L52-L59>

    <item><hlink|<verbatim|tub>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L59>

    <item><hlink|<verbatim|beater>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L61-L68>

    <item><hlink|<verbatim|mere>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88>

    <item><hlink|<verbatim|cone_laplace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L137-L150>

    <item><hlink|<verbatim|coneMeasure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L57>

    <item><hlink|<verbatim|marke>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L62>

    <item><hlink|<verbatim|lush>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L69>

    <item><hlink|<verbatim|log_high>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L23-L38>

    <item><hlink|<verbatim|does_not_fit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L65-L82>

    <item><hlink|<verbatim|main>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L155-L161>

    <item><hlink|<verbatim|XScheme>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L29-L34>

    <item><hlink|<verbatim|HighEnergy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L67-L82>

    <item><hlink|<verbatim|Result>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120>

    <item><hlink|<verbatim|burn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L15-L20>

    <item><hlink|<verbatim|consumes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L22-L27>

    <item><hlink|<verbatim|finite_particles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L29-L32>

    <item><hlink|<verbatim|excludes_projected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L51-L70>

    <item><hlink|<verbatim|form_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Form.lean#L27-L39>

    <item><hlink|<verbatim|Comparison>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L23-L27>

    <item><hlink|<verbatim|Nfl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L32-L35>

    <item><hlink|<verbatim|smell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Occult.lean#L12-L21>

    <item><hlink|<verbatim|Ambient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Space.lean#L111>

    <item><hlink|<verbatim|parts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weight.lean#L76-L78>

    <item><hlink|<verbatim|coherent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weyl.lean#L119>

    <item><hlink|<verbatim|wick_norm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Constant.lean#L38-L52>

    <item><hlink|<verbatim|square4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66>

    <item><hlink|<verbatim|mechanical_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69>

    <item><hlink|<verbatim|rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80>

    <item><hlink|<verbatim|rho_vector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L81-L84>

    <item><hlink|<verbatim|molt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Cake.lean#L63>

    <item><hlink|<verbatim|neap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Keg.lean#L11>

    <item><hlink|<verbatim|pia>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L20>

    <item><hlink|<verbatim|cob>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L21>

    <item><hlink|<verbatim|Deb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Taps.lean#L31-L34>

    <item><hlink|<verbatim|laplace_schwartz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LaplaceSchwartz.lean#L89-L99>

    <item><hlink|<verbatim|seaD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L10>

    <item><hlink|<verbatim|coastMark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L13-L30>

    <item><hlink|<verbatim|landPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L9>

    <item><hlink|<verbatim|banana>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Drifts.lean#L32-L35>

    <item><hlink|<verbatim|ridge_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L47-L60>

    <item><hlink|<verbatim|ridge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L9>

    <item><hlink|<verbatim|jury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Gondola.lean#L31-L35>

    <item><hlink|<verbatim|Holt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L37>

    <item><hlink|<verbatim|crest_v>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Peak.lean#L15-L29>

    <item><hlink|<verbatim|wire_mid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L13-L28>

    <item><hlink|<verbatim|effect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Skis.lean#L12-L24>

    <item><hlink|<verbatim|yard>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L12>

    <item><hlink|<verbatim|payday>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L32-L47>

    <item><hlink|<verbatim|rescaled_energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L120-L141>

    <item><hlink|<verbatim|compact_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L151-L157>

    <item><hlink|<verbatim|spectral_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L163-L167>

    <item><hlink|<verbatim|Zlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L20>

    <item><hlink|<verbatim|relative_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L203-L213>

    <item><hlink|<verbatim|EuclideanAsymptotic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75>

    <item><hlink|<verbatim|transform_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L93-L106>

    <item><hlink|<verbatim|brass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Beans.lean#L16-L42>

    <item><hlink|<verbatim|Work items>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L15>

    <item><hlink|<verbatim|Grant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L16>

    <item><hlink|<verbatim|Dart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L22-L27>

    <item><hlink|<verbatim|Dart.down>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L75-L80>

    <item><hlink|<verbatim|Dart.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L82-L90>

    <item><hlink|<verbatim|Viz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L15-L23>

    <item><hlink|<verbatim|cash_viz>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L38-L40>

    <item><hlink|<verbatim|Measures>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith/Wall.lean#L13-L14>

    <item><hlink|<verbatim|StarPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23>

    <item><hlink|<verbatim|Optics>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L40-L44>

    <item><hlink|<verbatim|aprilA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L51-L55>

    <item><hlink|<verbatim|gapC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L57-L59>

    <item><hlink|<verbatim|materialB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L50>

    <item><hlink|<verbatim|nearing_h>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L65-L71>

    <item><hlink|<verbatim|muteP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L73-L77>

    <item><hlink|<verbatim|BornZ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L27>

    <item><hlink|<verbatim|tiara>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L33-L53>

    <item><hlink|<verbatim|diadem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L54-L62>

    <item><hlink|<verbatim|Shine5>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L49>

    <item><hlink|<verbatim|ShellNorm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Shade.lean#L20-L22>

    <item><hlink|<verbatim|Barry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Bang.lean#L23-L37>

    <item><hlink|<verbatim|Arch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L65-L67>

    <item><hlink|<verbatim|styling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L72-L75>

    <item><hlink|<verbatim|gamut>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L89-L95>

    <item><hlink|<verbatim|Gondola>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L18-L21>

    <item><hlink|<verbatim|gravity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L22-L28>

    <item><hlink|<verbatim|Lease>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22>

    <item><hlink|<verbatim|Prosper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L27-L30>

    <item><hlink|<verbatim|AgeK>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Look.lean#L10>

    <item><hlink|<verbatim|hrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lyre.lean#L8>

    <item><hlink|<verbatim|monotone_axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L13-L21>

    <item><hlink|<verbatim|award_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L23-L27>

    <item><hlink|<verbatim|border>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L52-L76>

    <item><hlink|<verbatim|axis_shape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L18-L37>

    <item><hlink|<verbatim|clue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L39>

    <item><hlink|<verbatim|award>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41>

    <item><hlink|<verbatim|tagline>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69>

    <item><hlink|<verbatim|rounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L16-L23>

    <item><hlink|<verbatim|rainbow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L51-L63>

    <item><hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47>

    <item><hlink|<verbatim|wick_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Palette.lean#L130-L133>

    <item><hlink|<verbatim|moments_expand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125>

    <item><hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L23-L29>

    <item><hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L90-L92>

    <item><hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>

    <item><hlink|<verbatim|identifies_euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73>

    <item><hlink|<verbatim|vev_boundary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L16-L41>

    <item><hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48>

    <item><hlink|<verbatim|pinned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L49>

    <item><hlink|<verbatim|euclidean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53>

    <item><hlink|<verbatim|self_adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L58-L59>

    <item><hlink|<verbatim|pinned_centered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L65-L67>

    <item><hlink|<verbatim|continuation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L69-L78>

    <item><hlink|<verbatim|TraceSpectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94>

    <item><hlink|<verbatim|Wave>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Have.lean#L10>
  </itemize-minus>

  <section|Key statements><label|key-statements>

  In the selected statement order. <strong|K-> identifiers name this
  generated list; proposition and lemma numbers in the outline are separate.
  Each sentence is an automatically drafted summary of a Lean statement;
  follow its link for the exact hypotheses and conclusion. The outline status
  does not certify these summaries. <em|Main result> and <em|key result>
  describe importance, not correctness. Full names are in the
  <hlink|statement table|https://github.com/scottnarmstrong/yang-mills-informalization/blob/main/data/key-statements.tsv>.

  <label|k-vii-2-1>

  <\itemize-minus>
    <item><strong|K-VII.2.1> <hlink|<verbatim|cauchy_point>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/TimeData.lean#L86-L115>
    <em|(numbered result)> \V Under the paired-adjoint identity on remote
    tests, the Cauchy data vanish on test functions compactly supported away
    from the origin.
  </itemize-minus>

  <label|k-vii-2-2>

  <\itemize-minus>
    <item><strong|K-VII.2.2> <hlink|<verbatim|splitParts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Eigen.lean#L44-L83>
    <em|(numbered result)> \V An element of a submodule stable under
    dilations that is killed by the relevant polynomials lies in the span of
    the joint generalized eigen-components.
  </itemize-minus>

  <label|k-vii-2-3>

  <\itemize-minus>
    <item><strong|K-VII.2.3> <hlink|<verbatim|from_center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Book.lean#L33-L76>
    <em|(key result)> \V Coarse observables pulled back along centered
    chambers with funding certificates produce late physical equivalence.
  </itemize-minus>

  <label|k-vii-2-4>

  <\itemize-minus>
    <item><strong|K-VII.2.4> <hlink|<verbatim|axis_advance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Derivative.lean#L80-L115>
    <em|(numbered result)> \V For a fixed stencil width, the
    finite-difference approximation of the derivative along an axis has error
    at most C'\<\|\|\>v\<\|\|\>x^8, uniformly over labels.
  </itemize-minus>

  <label|k-vii-2-5>

  <\itemize-minus>
    <item><strong|K-VII.2.5> <hlink|<verbatim|differentiation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Bleed.lean#L81-L144>
    <em|(key result)> \V If lattice observables converge to fields and their
    finite-difference stencils match, then the continuum derivative of the
    limit equals the limit of the next-order fields, up to a fast-decaying
    error.
  </itemize-minus>

  <label|k-vii-2-6>

  <\itemize-minus>
    <item><strong|K-VII.2.6> <hlink|<verbatim|recoup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Relay.lean#L143-L160>
    <em|(key result)> \V The directional Ward lift is price-matched:
    derivatives of the fine relay and coarse maps agree to fourth order along
    analytic perturbations vanishing at the origin.
  </itemize-minus>

  <label|k-vii-2-7>

  <\itemize-minus>
    <item><strong|K-VII.2.7> <hlink|<verbatim|aroma_transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Wicker.lean#L37-L46>
    <em|(key result)> \V Under criticality, bounds and classical matching,
    the inherited aroma jets of the two descriptions agree to fourth order at
    zero.
  </itemize-minus>

  <label|k-vii-2-8>

  <\itemize-minus>
    <item><strong|K-VII.2.8> <hlink|<verbatim|binds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Branches.lean#L133-L136>
    <em|(key result)> \V A tempered wave with equal paired and adjoint values
    on remote tests is annihilated by a power of the dilation operator in
    every momentum slot.
  </itemize-minus>

  <label|k-vii-2-9>

  <\itemize-minus>
    <item><strong|K-VII.2.9> <hlink|<verbatim|gang>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56>
    <em|(key result)> \V The gallery property holds for the cell hypothesis
    data.
  </itemize-minus>

  <label|k-vii-2-10>

  <\itemize-minus>
    <item><strong|K-VII.2.10> <hlink|<verbatim|free_rank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165>
    <em|(key result)> \V The current divergence map is surjective with
    one-dimensional kernel for a simple gauge group under the derivative
    tests.
  </itemize-minus>

  <label|k-vii-2-11>

  <\itemize-minus>
    <item><strong|K-VII.2.11> <hlink|<verbatim|Store_l>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68>
    <em|(numbered result)> \V Given a transport datum for the cell
    hypothesis, a certain scribe property is obtained.
  </itemize-minus>

  <label|k-vii-2-12>

  <\itemize-minus>
    <item><strong|K-VII.2.12> <hlink|<verbatim|agenda>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35>
    <em|(numbered result)> \V Along a filter on pairs of naturals tending to
    infinity in both coordinates, a certain package of limits holds.
  </itemize-minus>

  <label|k-vii-2-13>

  <\itemize-minus>
    <item><strong|K-VII.2.13> <hlink|<verbatim|dewWt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L31-L44>
    <em|(key result)> \V For large k, along any pair of sequences tending to
    infinity, an eventual estimate holds for the Wilson-type specialization
    of the weighted quantity.
  </itemize-minus>

  <label|k-vii-2-14>

  <\itemize-minus>
    <item><strong|K-VII.2.14> <hlink|<verbatim|reveals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L58-L65>
    <em|(key result)> \V The choice property for the data holds.
  </itemize-minus>

  <label|k-vii-2-15>

  <\itemize-minus>
    <item><strong|K-VII.2.15> <hlink|<verbatim|midAwake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L40-L52>
    <em|(key result)> \V Under the scene, flare and credibility hypotheses,
    the intermediate-scale payoff converges to the limiting payoff constant
    for simple gauge groups.
  </itemize-minus>

  <label|k-vii-2-16>

  <\itemize-minus>
    <item><strong|K-VII.2.16> <hlink|<verbatim|legacy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L59-L61>
    <em|(key result)> \V For every power p, the scaled sequence H^p times s_i
    of the medium tends to zero.
  </itemize-minus>

  <label|k-vii-2-17>

  <\itemize-minus>
    <item><strong|K-VII.2.17> <hlink|<verbatim|hullage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Phantom.lean#L37-L50>
    <em|(key result)> \V There exists a mission (limit object) realizing the
    origin-coordinate sequence of core fields along the sequence of sides.
  </itemize-minus>

  <label|k-vii-2-18>

  <\itemize-minus>
    <item><strong|K-VII.2.18> <hlink|<verbatim|crestship>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Ell.lean#L59-L82>
    <em|(numbered result)> \V For large stage index, a crest estimate holds
    uniformly in parameters p and N.
  </itemize-minus>

  <label|k-vii-2-19>

  <\itemize-minus>
    <item><strong|K-VII.2.19> <hlink|<verbatim|treasury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L46-L64>
    <em|(main result)> \V For all large levels k, along any filter where path
    lengths and sides tend to infinity, eventually there exist darts at level
    k satisfying an \<varepsilon\>-quantitative property.
  </itemize-minus>

  <label|k-vii-2-20>

  <\itemize-minus>
    <item><strong|K-VII.2.20> <hlink|<verbatim|through>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Flo.lean#L41-L46>
    <em|(key result)> \V If nonempty embers exist from level m onward and the
    path lengths exceed m+n+1, there exist sound darts at level m with the
    saving property over n+1 levels.
  </itemize-minus>

  <label|k-vii-2-21>

  <\itemize-minus>
    <item><strong|K-VII.2.21> <hlink|<verbatim|pay_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Native.lean#L81-L88>
    <em|(key result)> \V There exists a family of sound darts at the given
    level achieving a prescribed saving at each step of the construction.
  </itemize-minus>

  <label|k-vii-2-22>

  <\itemize-minus>
    <item><strong|K-VII.2.22> <hlink|<verbatim|touring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Toil.lean#L29-L56>
    <em|(numbered result)> \V Under an aura hypothesis on the terrace levels,
    a stage estimate holds for all large i uniformly.
  </itemize-minus>

  <label|k-vii-2-23>

  <\itemize-minus>
    <item><strong|K-VII.2.23> <hlink|<verbatim|trod>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Heli.lean#L39-L51>
    <em|(numbered result)> \V Under the aura condition at level l, eventually
    in i a statement about the associated index holds.
  </itemize-minus>

  <label|k-vii-2-24>

  <\itemize-minus>
    <item><strong|K-VII.2.24> <hlink|<verbatim|saturate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44>
    <em|(main result)> \V Contradiction: the assumed fixed vacuum situation
    is impossible (False is derived).
  </itemize-minus>

  <label|k-vii-2-25>

  <\itemize-minus>
    <item><strong|K-VII.2.25> <hlink|<verbatim|garnet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Folly.lean#L38-L61>
    <em|(key result)> \V Under expense, separation and weight hypotheses, the
    root test of the back-transported lens function is bounded by an
    exponential over w_m squared.
  </itemize-minus>

  <label|k-vii-2-26>

  <\itemize-minus>
    <item><strong|K-VII.2.26> <hlink|<verbatim|local_eigen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/SpectrumGap.lean#L108-L112>
    <em|(key result)> \V A tempered wave satisfying evaporation and a
    pairing\Uadjoint identity on remote probes vanishes for n\<geqslant\>4
    and has a width property, a spectral-gap-type conclusion.
  </itemize-minus>

  <label|k-vii-2-27>

  <\itemize-minus>
    <item><strong|K-VII.2.27> <hlink|<verbatim|awake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53>
    <em|(key result)> \V Along the limiting sequence, a regularized trace
    quantity built from the field converges to the limiting land payoff
    constant of the gauge group.
  </itemize-minus>

  <label|k-vii-2-28>

  <\itemize-minus>
    <item><strong|K-VII.2.28> <hlink|<verbatim|quaff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Votive.lean#L42-L67>
    <em|(key result)> \V Given a decked bound at scale k and matching tile
    data, the root test of the pulled-back function at level J is bounded by
    an exponential in the ratio-powered treasury over w_m squared.
  </itemize-minus>

  <label|k-vii-2-29>

  <\itemize-minus>
    <item><strong|K-VII.2.29> <hlink|<verbatim|saga>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pious.lean#L97-L127>
    <em|(key result)> \V Under scene and flare hypotheses, the trace
    functional has an asymptotic expansion given by the leading mu-squared
    term plus corrections.
  </itemize-minus>

  <label|k-vii-2-30>

  <\itemize-minus>
    <item><strong|K-VII.2.30> <hlink|<verbatim|formulate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L53-L78>
    <em|(key result)> \V There exist coefficient sequences with bounded norm,
    bijective composite and a balance relation, whose first component
    converges to the force constant of G.
  </itemize-minus>

  <label|k-vii-2-31>

  <\itemize-minus>
    <item><strong|K-VII.2.31> <hlink|<verbatim|small_means>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Terrain.lean#L26-L51>
    <em|(key result)> \V For rescaled vectors approximating the swale, the
    polynomially weighted sequence tends to zero.
  </itemize-minus>

  <label|k-vii-2-32>

  <\itemize-minus>
    <item><strong|K-VII.2.32> <hlink|<verbatim|local_position>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/VacuumLocal.lean#L95-L139>
    <em|(key result)> \V Vacuum locality: for remote probes, the paired and
    adjoint evaluations of the vacuum wave functions agree in relative
    position variables.
  </itemize-minus>

  <label|k-vii-2-33>

  <\itemize-minus>
    <item><strong|K-VII.2.33> <hlink|<verbatim|article>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L32-L46>
    <em|(key result)> \V For each index and epsilon, eventually most
    parameter pairs admit a nearby vector whose orbits at both levels
    coincide with prescribed ones and which preserve the rho-value.
  </itemize-minus>

  <label|k-vii-2-34>

  <\itemize-minus>
    <item><strong|K-VII.2.34> <hlink|<verbatim|euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>
    <em|(key result)> \V A Euclidean field with the asymptotic behavior
    cannot agree eventually in the past with any finite polynomial field
    description.
  </itemize-minus>

  <label|k-vii-2-35>

  <\itemize-minus>
    <item><strong|K-VII.2.35> <hlink|<verbatim|welfare>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Spindle.lean#L46-L51>
    <em|(key result)> \V Separated clusters with bounded cover number and
    bounded functions satisfying an expense hypothesis yield the decked
    estimate for the associated configuration.
  </itemize-minus>

  <label|k-vii-2-36>

  <\itemize-minus>
    <item><strong|K-VII.2.36> <hlink|<verbatim|lay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Common.lean#L17-L54>
    <em|(key result)> \V Under separation, cover-number, decay and hit
    hypotheses on a cluster family, the associated expansion satisfies a
    decked (bounded-activity) estimate.
  </itemize-minus>

  <label|k-vii-2-37>

  <\itemize-minus>
    <item><strong|K-VII.2.37> <hlink|<verbatim|slopeL>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Samen.lean#L23-L42>
    <em|(key result)> \V For a simple gauge group, the regulated quantity has
    a logarithmic pole whose coefficient is 12 times the slope constant, up
    to a bounded error uniform in the cutoff scale.
  </itemize-minus>

  <label|k-vii-2-38>

  <\itemize-minus>
    <item><strong|K-VII.2.38> <hlink|<verbatim|penumbra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Pony.lean#L30-L65>
    <em|(key result)> \V The shine sequence is bounded by a constant times a
    controlling rate and its linear functional converges to minus the slope
    constant.
  </itemize-minus>

  <label|k-vii-2-39>

  <\itemize-minus>
    <item><strong|K-VII.2.39> <hlink|<verbatim|fawn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pine.lean#L11-L39>
    <em|(key result)> \V Along a filter, the coboundary-type observable built
    from the lush field of the scene converges (in the Rose sense) to a
    scaled lens observable.
  </itemize-minus>

  <label|k-vii-2-40>

  <\itemize-minus>
    <item><strong|K-VII.2.40> <hlink|<verbatim|rungs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L62-L68>
    <em|(key result)> \V The sequence s satisfies the Prosper property
    relative to the given data.
  </itemize-minus>

  <label|k-vii-2-41>

  <\itemize-minus>
    <item><strong|K-VII.2.41> <hlink|<verbatim|expire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Mortal.lean#L37-L43>
    <em|(key result)> \V For large i, the Wilson moment of a
    backward-transported function is bounded by U plus V times support size
    times exp(-2 prism(hatBeta)).
  </itemize-minus>

  <label|k-vii-2-42>

  <\itemize-minus>
    <item><strong|K-VII.2.42> <hlink|<verbatim|pages>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L65-L71>
    <em|(key result)> \V For large scale and large side length, any
    admissible configuration satisfying the matching conditions has its
    limiting vector within epsilon of a fixed target vector.
  </itemize-minus>

  <hlink|All units|../units.tm> <ym-middot> <hlink|Overview of the
  proof|../index.tm> <ym-middot> <hlink|Repository|../../index.tm>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.1 Free Maxwell fields for the
  short-distance comparison|VII-1.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Detailed
  notes|../notes/VII-2.tm>|<hlink|VII.3 Free Wick polynomials and reflected
  Gram positivity \<rightarrow\>|VII-3.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.2. The trace of the stress tensor and the trace
    anomaly \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|4>>
    <associate|3-strategy|<tuple|3|5>>
    <associate|4-steps|<tuple|4|5>>
    <associate|5-where-the-difficulty-lies|<tuple|5|6>>
    <associate|6-notation|<tuple|6|6>>
    <associate|7-what-remains-unexplained|<tuple|7|6>>
    <associate|additional-source-locations|<tuple|9.1|8>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|9.1|8>>
    <associate|auto-11|<tuple|10|14>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|3|5>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|7|6>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|7>>
    <associate|code-dependencies|<tuple|8|6>>
    <associate|k-vii-2-1|<tuple|10|14>>
    <associate|k-vii-2-10|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-11|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-12|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-13|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-14|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-15|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-16|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-17|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-18|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-19|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-2|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-2-20|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-21|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-22|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-23|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-24|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-25|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-26|<tuple|<with|mode|<quote|math>|<rigid|->>|16>>
    <associate|k-vii-2-27|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-28|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-29|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-3|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-2-30|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-31|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-32|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-33|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-34|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-35|<tuple|<with|mode|<quote|math>|<rigid|->>|17>>
    <associate|k-vii-2-36|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-37|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-38|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-39|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-4|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-2-40|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-41|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-42|<tuple|<with|mode|<quote|math>|<rigid|->>|18>>
    <associate|k-vii-2-5|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-2-6|<tuple|<with|mode|<quote|math>|<rigid|->>|14>>
    <associate|k-vii-2-7|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-8|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|k-vii-2-9|<tuple|<with|mode|<quote|math>|<rigid|->>|15>>
    <associate|key-statements|<tuple|10|14>>
    <associate|lean-source|<tuple|9|7>>
    <associate|unit-difficulty|<tuple|8|6>>
    <associate|unit-inputs|<tuple|<with|mode|<quote|math>|<rigid|->>|4>>
    <associate|unit-limitations|<tuple|6|6>>
    <associate|unit-notation|<tuple|5|6>>
    <associate|unit-results|<tuple|?|1>>
    <associate|unit-steps|<tuple|3|5>>
    <associate|unit-strategy|<tuple|<with|mode|<quote|math>|<rigid|->>|5>>
    <associate|vii2-the-trace-of-the-stress-tensor-and-the-trace-anomaly|<tuple|?|1>>
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