<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.2 The trace of the stress tensor and
  the trace anomaly (notes)|VII-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-3.tm>|<hlink|VII.4 Operator product expansion and
  contact extensions (notes) \<rightarrow\>|VII-4.tm>>

  <ym-title|VII.3. The theory is not free: Gram positivity and exclusion of
  free-field profiles \V detailed notes><label|vii3-the-theory-is-not-free-gram-positivity-and-exclusion-of-free-field-profiles--detailed-notes>

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

    <with|par-left|1tab|4.1 The Wick algebra
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The tower Gram form
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 From towers to all Wick polynomials
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Faithfulness and covariance of the free table
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Degree four: rigidity and the position equations
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Exclusion of Wick profiles (VII.3.7)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 The formal lattice perturbation theory
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
    The full account of unit VII.3: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VII-3.tm>.
  </quotation>

  <hlink|Unit page|../units/VII-3.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:>
  <hlink|<verbatim|YM/Extra/FREE_DETECTOR_ALGEBRA>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA>,
  <hlink|<verbatim|YM/Pert/Position>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position>,
  <hlink|<verbatim|YM/Pert/Rigid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid>,
  <hlink|<verbatim|YM/Pert/Lattice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice>,
  and a few declarations of <hlink|<verbatim|YM/Push/LOOP_COEFFICIENT>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT>.
  Proposition VII.3.7 is in <hlink|<verbatim|YM/TraceExtension/Wick>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick>
  and <hlink|<verbatim|TraceBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean>.
  <strong|Size:> about 3,800 declaration lines on the main dependency path in
  the listed folders, excluding the trace-exclusion files.

  The reflected Gram form of the free Maxwell Wick algebra is strictly
  positive. It identifies the free field spaces with on-shell polynomial
  labels and supplies injective two-point tests (VII.3.1\UVII.3.5). At degree
  four, rigidity gives finite position equations with invertible
  linearization and a leading comparison with lattice perturbation theory
  (VII.3.6). Independently, the trace anomaly excludes every finite Wick
  profile (VII.3.7). The lattice series used in the position comparison are
  defined in Ÿ4.7.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.>

  Write <math|<math-up|Conf><rsub|n>=<around|{|<around|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><around|(|\<bbb-R\><rsup|4>|)><rsup|n>:x<rsub|i>\<ne\>x<rsub|j><text|
  for >i\<ne\>j|}>>.

  <em|Coefficients and jets.>

  <\itemize-minus>
    <item><math|\<frak-g\>> is the Lie algebra of the gauge group, with its
    invariant inner product. <math|\<frak-g\>=0> is allowed in
    VII.3.1\UVII.3.5.

    <item>For <math|j\<geqslant\>0>, <math|<math-up|Sol><rsub|j>> is the real
    space of <math|\<frak-g\>>-valued 2-forms
    <math|S=<around|(|S<rsub|\<mu\>*\<nu\>>|)>> on <math|\<bbb-R\><rsup|4>>
    that satisfy:

    <\itemize-minus>
      <item>the coefficients are homogeneous polynomials of degree <math|j>;

      <item><math|d*S=0> and <math|\<delta\>*S=0>, where <math|\<delta\>> is
      the codifferential (<hlink|<verbatim|Sol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L115>,
      <hlink|<verbatim|onShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42>).
    </itemize-minus>

    <item>Such <math|S> are harmonic (<hlink|<verbatim|Sol.harmonic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L129>).

    <item><math|<math-up|Sol><rsub|j>> is the space of on-shell
    <math|j>-jets: the <math|j>-th Taylor coefficient of a solution of the
    free Maxwell equations lies in <math|<math-up|Sol><rsub|j>>.

    <item><math|S<around|(|x|)>> denotes the polynomial 2-form.

    <item>Write <math|T<rsub|j>*F=<around|(|j!|)><rsup|-1>*D<rsup|j>*F> for a
    Taylor coefficient. The inner product
    <math|<around|\<langle\>|S,T|\<rangle\>>> sums the color inner products
    over both ordered form indices and all ordered derivative indices; there
    is no factor <math|1/2> for the antisymmetric form indices.

    <item><math|<math-up|Tow><rsub|n>\<assign\><big|oplus><rsub|j\<less\>n><math-up|Sol><rsub|j>>
    (<hlink|<verbatim|ProbeTower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L69>).
  </itemize-minus>

  <em|Wick polynomials.>

  <\itemize-minus>
    <item>Fix a basis of each <math|<math-up|Sol><rsub|j>>. Put
    <math|\<cal-W\>=\<bbb-C\><around|[|X<rsub|s>|]><rsub|s\<in\><math-ss|S>>>
    with <math|<math-ss|S>=<around|{|<around|(|j,a|)>|}>>
    (<hlink|<verbatim|WickPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24>,
    <hlink|<verbatim|Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L22>).

    <item><math|X<rsub|<around|(|j,a|)>>> is the <math|a>-th coordinate of
    the <math|j>-th on-shell Taylor coefficient of the free curvature at a
    point.

    <item>For <math|p\<in\><math-up|Tow><rsub|n>>,
    <math|\<ell\><rsub|p>\<in\>\<cal-W\>> is the real linear polynomial
    <math|A\<mapsto\><big|sum><rsub|j\<less\>n><around|\<langle\>|p<rsub|j>,A<rsub|j>|\<rangle\>>>
    (<hlink|<verbatim|digit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L77>,
    <hlink|<verbatim|code>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L16-L23>).
  </itemize-minus>

  <em|Free moments.>

  <\itemize-minus>
    <item><math|C<rsub|s*t>*<around|(|x-y|)>> is the free covariance of jet
    coordinate <math|s> at <math|x> with jet coordinate <math|t> at <math|y>
    (<hlink|<verbatim|Wick.entry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24>,
    <hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>).
    It is smooth off the diagonal and built from derivatives of
    <math|\<Gamma\><around|(|z|)>=<around|(|4*\<pi\><rsup|2><around|\||z|\|><rsup|2>|)><rsup|-1>>.

    <item>For <math|x\<in\><math-up|Conf><rsub|n>>, the free moment
    <math|<around|\<langle\>|P<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*P<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>>
    is multilinear (<hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>).
    On monomials it is the sum, over perfect matchings of the variable
    occurrences with no pair inside one factor, of
    <math|<big|prod><rsub|<math-up|pairs>>C<rsub|s*t>*<around|(|x<rsub|i>-x<rsub|k>|)>>.

    <item>These are the Wick-ordered correlations of <math|dim \<frak-g\>>
    independent free Maxwell curvatures. Multiplication in <math|\<cal-W\>>
    therefore represents Wick multiplication at one insertion.
  </itemize-minus>

  <em|Reflected pairing.>

  <\itemize-minus>
    <item>For <math|z\<ne\>0>, <math|\<cal-R\><rsub|z>*v=v-2*<around|\<langle\>|v,z|\<rangle\>><around|\||z|\|><rsup|-2>*z>
    is the reflection in <math|z<rsup|\<perp\>>>
    (<hlink|<verbatim|face>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Forms.lean#L103>).
    Orthogonal transformations act on all tensor indices of jets and on
    polynomials by <math|<around|(|R\<cdot\>P|)><around|(|A|)>=P*<around|(|R<rsup|-1>\<cdot\>A|)>>
    (<hlink|<verbatim|pullSol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L54-L55>).

    <item><math|<wide|P|\<bar\>>> conjugates the coefficients of <math|P>
    (<hlink|<verbatim|barPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L46>).

    <item>For <math|x\<ne\>y> (<hlink|<verbatim|duplex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L54>,
    <hlink|<verbatim|aligned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L49-L52>):
  </itemize-minus>

  <\equation*>
    <around|\<langle\>|P,Q|\<rangle\>><rsub|x,y>\<assign\><around*|\<langle\>|P<around|(|x|)>*<space|0.17em><around|(|\<cal-R\><rsub|x-y>*<wide|Q|\<bar\>>|)><around|(|y|)>|\<rangle\>><rsub|0>.
  </equation*>

  <\itemize-minus>
    <item>This is the local two-point Osterwalder\USchrader pairing for
    reflection in the perpendicular bisector of <math|<around|[|x,y|]>>, with
    the convention that the first argument is linear and the second
    conjugate-linear.
  </itemize-minus>

  <em|Tower Gram form.>

  <\itemize-minus>
    <item>On <math|<math-up|Tow><rsub|n>> the restriction to linear
    polynomials is <math|B<rsub|x-y><around|(|p,q|)>\<assign\><around|\<langle\>|\<ell\><rsub|p>,\<ell\><rsub|q>|\<rangle\>><rsub|x,y>>.
    It is real and depends only on <math|z=x-y>.

    <item>Explicitly, <math|B<rsub|z><around|(|p,q|)>=<big|sum><rsub|j,k\<less\>n><math-up|scan><rsub|z><around|(|p<rsub|j>,q<rsub|k>|)>>,
    where <math|<math-up|scan><rsub|z><around|(|P,Q|)>> is the free
    covariance of <math|<around|\<langle\>|P,T<rsub|j>*F|\<rangle\>><around|(|z|)>>
    with <math|<around|\<langle\>|\<cal-R\><rsub|z>*Q,T<rsub|k>*F|\<rangle\>><around|(|0|)>>
    (<hlink|<verbatim|towerB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L71-L77>,
    <hlink|<verbatim|scan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L29-L32>).

    <item>The identification of the two descriptions is
    <hlink|<verbatim|crash_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L83-L94>
    together with <hlink|<verbatim|join_crash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L60-L66>.
  </itemize-minus>

  <strong|Proposition VII.3.1 (strict reflected positivity of the free Wick
  algebra).> Let <math|x\<ne\>y> in <math|\<bbb-R\><rsup|4>>. (a) For every
  <math|P\<in\>\<cal-W\>>: <math|<around|\<langle\>|P,P|\<rangle\>><rsub|x,y>\<gtr\>0>
  if and only if <math|P\<ne\>0>. (b) <math|<wide|<around|\<langle\>|P,Q|\<rangle\>><rsub|x,y>|\<bar\>>=<around|\<langle\>|Q,P|\<rangle\>><rsub|x,y>>
  for all <math|P,Q\<in\>\<cal-W\>>. (c) For every finite
  <math|\<bbb-C\>>-linearly independent family <math|<around|(|V<rsub|i>|)>>
  in <math|\<cal-W\>>, the matrix <math|<around|(|<around|\<langle\>|V<rsub|j>,V<rsub|i>|\<rangle\>><rsub|x,y>|)><rsub|i*j>>
  is positive definite. No simplicity or positive-dimension assumption is
  needed, and the polynomial degree is unrestricted. Self-pairings are real,
  so the inequality in (a) is a real inequality. <em|Status:> theorem. Only
  (a) lies on the path to the main theorem; (b) and (c) are proved but not
  used. <em|Lean:> (a) <hlink|<verbatim|reflected_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53>;
  (b) <hlink|<verbatim|reflected_symm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L57-L76>;
  (c) <hlink|<verbatim|reflected_pd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L80-L97>.

  <strong|Proposition VII.3.2 (tower Gram form and Fock structure).> Let
  <math|x\<ne\>y>, <math|z=x-y>, <math|n\<in\>\<bbb-N\>>. (a)
  <math|B<rsub|z>> is symmetric and positive definite on
  <math|<math-up|Tow><rsub|n>>. More precisely, there is a
  block-unitriangular automorphism <math|\<sigma\><rsub|z>> of
  <math|<math-up|Tow><rsub|n>> (Lemma VII.3.f) such that

  <\equation*>
    B<rsub|z><around|(|\<sigma\><rsub|z>*p,\<sigma\><rsub|z>*q|)>=<big|sum><rsub|j\<less\>n>\<pi\><rsub|j><around|(|z|)><space|0.17em><around|\<langle\>|p<rsub|j>,q<rsub|j>|\<rangle\>>,<space|2em>\<pi\><rsub|j><around|(|z|)>=<frac|<around|(|j+1|)>*<around|(|j+2|)>*<space|0.17em>2<rsup|j>|\<pi\><rsup|2><space|0.17em><around|\||z|\|><rsup|2*j+4>>\<gtr\>0.
  </equation*>

  (b) Let <math|b<rsub|1>,\<ldots\>,b<rsub|N>\<in\><math-up|Tow><rsub|n>>
  satisfy <math|B<rsub|z><around|(|b<rsub|i>,b<rsub|k>|)>=d<rsub|i>*\<delta\><rsub|i*k>>,
  with any <math|d<rsub|i>\<in\>\<bbb-R\>>. Let
  <math|\<Phi\><rsub|b>:\<bbb-C\><around|[|Y<rsub|1>,\<ldots\>,Y<rsub|N>|]>\<to\>\<cal-W\>>
  be the algebra homomorphism with <math|Y<rsub|i>\<mapsto\>\<ell\><rsub|b<rsub|i>>>
  (<hlink|<verbatim|encode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L25>).
  Then

  <\equation*>
    <around|\<langle\>|\<Phi\><rsub|b>*p,\<Phi\><rsub|b>*q|\<rangle\>><rsub|x,y>=<big|sum><rsub|\<alpha\>>p<rsub|\<alpha\>><space|0.17em><wide|q<rsub|\<alpha\>>|\<bar\>><space|0.27em>\<alpha\>!<space|0.17em>d<rsup|\<alpha\>>,<space|2em>\<alpha\>!<space|0.17em>d<rsup|\<alpha\>>\<assign\><big|prod><rsub|i>\<alpha\><rsub|i>!<space|0.17em>d<rsub|i><rsup|\<alpha\><rsub|i>>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> (a) <hlink|<verbatim|towerB_sym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L90-L94>,
  <hlink|<verbatim|towerB_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154>,
  <hlink|<verbatim|shiftAll_gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133>,
  <hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L24>,
  <hlink|<verbatim|price_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L25>;
  (b) <hlink|<verbatim|duplex_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116>,
  <hlink|<verbatim|aligned_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L60-L85>.

  <strong|Proposition VII.3.3 (Wick recursion; characterization of the free
  moments).> Let <math|n\<geqslant\>1>, <math|x\<in\><math-up|Conf><rsub|n>>,
  <math|W\<in\>\<cal-W\><rsup|n>>, <math|1\<leqslant\>i\<leqslant\>n> and
  <math|s\<in\><math-ss|S>>. Let <math|\<partial\><rsub|s><rsup|y,y<rprime|'>>>
  be the <math|\<bbb-C\>>-linear derivation of <math|\<cal-W\>> with
  <math|\<partial\><rsub|s><rsup|y,y<rprime|'>>*X<rsub|t>=C<rsub|s*t>*<around|(|y-y<rprime|'>|)>>.
  Then

  <\equation*>
    <around*|\<langle\>|W<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|W<rsub|i>*X<rsub|s>|)><around|(|x<rsub|i>|)>*\<cdots\>*W<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>=<big|sum><rsub|k\<ne\>i><around*|\<langle\>|W<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|\<partial\><rsub|s><rsup|x<rsub|i>,x<rsub|k>>*W<rsub|k>|)><around|(|x<rsub|k>|)>*\<cdots\>*W<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>,
  </equation*>

  where on the right the factor at <math|x<rsub|i>> is <math|W<rsub|i>>.
  Conversely, for any <math|n\<geqslant\>0> and
  <math|x\<in\><math-up|Conf><rsub|n>>, a <math|\<bbb-C\>>-multilinear map
  <math|T:\<cal-W\><rsup|n>\<to\>\<bbb-C\>> with
  <math|T<around|(|1,\<ldots\>,1|)>=1> satisfying this recursion for every
  <math|i,s,W> is the free moment at <math|x>. Consequences:

  <\itemize-minus>
    <item><math|<around|\<langle\>|\<cdots\>|\<rangle\>><rsub|0>> is
    invariant under any simultaneous <math|O<around|(|4|)>> rotation of
    points and polynomials.

    <item><math|<around|\<langle\>|<wide|P|\<bar\>><rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*<wide|P|\<bar\>><rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>=<wide|<around|\<langle\>|P<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*P<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>|\<bar\>>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Pair.remove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108>,
  <hlink|<verbatim|Pair.extractVar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L25-L26>;
  characterization <hlink|<verbatim|byAnnihilators>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L24-L62>;
  consequences <hlink|<verbatim|wick_rotate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L81-L101>,
  <hlink|<verbatim|wick_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L111-L137>.

  <strong|Proposition VII.3.4 (the free table is faithful on on-shell
  labels).>

  Setting:

  <\itemize-minus>
    <item><math|<math-up|Label><rsub|d>> is the space of complex polynomials
    in radial potential jets that are invariant under the adjoint action of
    the gauge group and have engineering weight at most <math|d>; an
    order-<math|j> slot has weight <math|j+2> (II.1, III.16;
    <hlink|<verbatim|Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>).

    <item><math|\<omega\><rsub|d>:<math-up|Label><rsub|d>\<to\>\<cal-W\>>
    evaluates a label on free on-shell jets
    (<hlink|<verbatim|observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>).

    <item><math|<math-up|sh><rsub|d>\<assign\>\<omega\><rsub|d><around|(|<math-up|Label><rsub|d>|)>>
    (<hlink|<verbatim|shellSector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64>).

    <item>The free table (<hlink|<verbatim|freeTable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24>,
    IV.1) has correlations <math|<around|\<langle\>|\<omega\><around|(|a<rsub|1>|)><around|(|x<rsub|1>|)>*\<cdots\>*\<omega\><around|(|a<rsub|n>|)><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>>.

    <item>Its field space <math|E<rsub|d>> (the glossary's <math|F<rsub|d>>,
    for the free table) is the space of degree-<math|d> reference labels
    modulo null labels.
  </itemize-minus>

  Statements: (a) For every <math|d\<geqslant\>0>, let
  <math|P\<in\><math-up|sh><rsub|d>>. Suppose
  <math|<around|\<langle\>|P<around|(|x<rsub|0>|)>*Q<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*Q<rsub|n><around|(|x<rsub|n>|)>|\<rangle\>><rsub|0>=0>
  for every <math|n\<geqslant\>0>, every choice of degrees
  <math|d<rsub|1>,\<ldots\>,d<rsub|n>\<geqslant\>0>, all
  <math|Q<rsub|i>\<in\><math-up|sh><rsub|d<rsub|i>>> and all
  <math|x\<in\><math-up|Conf><rsub|n+1>>. Then <math|P=0>. Hence:

  <\itemize-minus>
    <item>the null labels of the free table at degree <math|d> are exactly
    the labels with <math|\<omega\><rsub|d><around|(|a|)>=0>;

    <item><math|\<omega\><rsub|d>> induces a linear isomorphism
    <math|E<rsub|d>\<cong\><math-up|sh><rsub|d>>. Write
    <math|\<varpi\><rsub|d>:E<rsub|d>\<hookrightarrow\>\<cal-W\>> for the
    resulting injection.
  </itemize-minus>

  (b) For every basis <math|<around|(|b<rsub|i>|)><rsub|i\<in\>I>> of
  <math|E<rsub|d>> and every <math|x\<ne\>y>, the map
  <math|v\<mapsto\><around*|(|<around|\<langle\>|\<varpi\>*v<around|(|x|)>*<space|0.17em>\<varpi\>*b<rsub|i><around|(|y|)>|\<rangle\>><rsub|0>|)><rsub|i\<in\>I>>
  is injective.

  (c) Fix a Wilson family <math|C>, any table <math|S> on its register, and a
  pair satisfying <math|x<rsub|\<mu\>>\<ne\>y<rsub|\<mu\>>> for each
  coordinate <math|\<mu\>>, for example <math|<around|(|x,y|)>=<around|(|0,<around|(|1,1,1,1|)>|)>>.
  For every <math|d\<geqslant\>0> there is a column system (IV.1) for
  <math|E<rsub|d>>. It consists of:

  <\itemize-minus>
    <item>a complex basis fixed by conjugation, with the unit first, whose
    elements are images of frame labels with recorded weight and polynomial
    length;

    <item>the pair readings of (b) against this basis at
    <math|<around|(|x,y|)>>, which are injective.
  </itemize-minus>

  <em|Status:> theorem. Part (a) enters the rank comparisons of III.11 and
  III.12; (c) supplies columns for III.11 and III.2. The embedding
  <math|\<varpi\><rsub|d>> is used in VII.1. <em|Lean:> (a)
  <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>
  (with the definitions <hlink|<verbatim|residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L84-L85>,
  <hlink|<verbatim|ProbeFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L67-L72>),
  <hlink|<verbatim|free_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L58-L59>,
  <hlink|<verbatim|exactField>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L64-L65>,
  <hlink|<verbatim|writes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L70-L71>;
  (b) <hlink|<verbatim|scanner_inj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L103-L115>;
  (c) <hlink|<verbatim|vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L25-L38>,
  <hlink|<verbatim|vane_possible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L41-L42>,
  <hlink|<verbatim|RStage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L18-L27>,
  <hlink|<verbatim|recorded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L41-L49>.

  <strong|Proposition VII.3.5 (covariance of the free table).> For every
  gauge group in the setting above, the free table has the following
  symmetries:

  <\itemize-minus>
    <item>its correlations are invariant under the signed coordinate
    permutations, acting on points and labels;

    <item>conjugating the labels conjugates the correlations.
  </itemize-minus>

  In addition, <math|O<around|(|4|)>> acts on each <math|E<rsub|d>> by
  complex-linear isomorphisms satisfying <math|\<varpi\><rsub|d>*<around|(|R\<cdot\>v|)>=R\<cdot\><around|(|\<varpi\><rsub|d>*v|)>>.
  <em|Status:> theorem. The proof uses the <math|O<around|(|4|)>>-covariance
  of the free kernel, not any reconstruction theorem. <em|Lean:>
  <hlink|<verbatim|table_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91>,
  <hlink|<verbatim|rideO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L106-L110>,
  <hlink|<verbatim|ride>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L99-L101>.

  <strong|Proposition VII.3.6 (rigidity at degree four; position equations).>
  Parts (a) and (c) assume that <math|\<frak-g\>> is simple and nonabelian.
  Part (b) holds for any gauge group in the setting above.

  <em|Buffers.> For a degree <math|d>, a <em|buffer>
  (<hlink|<verbatim|buffers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L31-L40>)
  is a <math|\<bbb-C\>>-linear map <math|B:E<rsub|d>\<to\>E<rsub|d>> such
  that:

  <\itemize-minus>
    <item><math|B> kills the unit;

    <item>for each <math|e\<less\>d>, <math|B> preserves the subspace of
    fields of degree <math|\<leqslant\>e>;

    <item><math|B> commutes with conjugation and with the signed coordinate
    permutations.
  </itemize-minus>

  Buffers form a finite-dimensional real space <math|<math-up|Buf><rsub|d>>.

  <em|Stationarity.> <math|B> is <em|stationary> if

  <\equation*>
    <big|sum><rsub|j=1><rsup|r><around|\<langle\>|v<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|B*v<rsub|j>|)><around|(|x<rsub|j>|)>*\<cdots\>*v<rsub|r><around|(|x<rsub|r>|)>|\<rangle\>><rsub|0>=0<space|1em><text|for
    all >r,v\<in\>E<rsub|d><rsup|r>,x\<in\><math-up|Conf><rsub|r>.
  </equation*>

  Equivalently, the change of identification
  <math|v\<mapsto\><around|(|1+t*B|)>*v> of degree-<math|d> fields leaves all
  free correlations unchanged to first order in <math|t>.

  (a) <em|Rigidity.> Every stationary buffer of degree <math|4> vanishes. In
  fact <math|B\<in\><math-up|Buf><rsub|4>> vanishes as soon as both of the
  following hold, with <math|e> the unit vector of coordinate axis <math|0>:

  <\itemize-minus>
    <item><math|<around|\<langle\>|B*v|\<rangle\>><rsub|0>=0> for all
    <math|v>;

    <item><math|<around|\<langle\>|<around|(|B*v|)><around|(|e|)>*<space|0.17em>w<around|(|0|)>|\<rangle\>><rsub|0>+<around|\<langle\>|v<around|(|e|)>*<space|0.17em><around|(|B*w|)><around|(|0|)>|\<rangle\>><rsub|0>=0>
    for all <math|v,w>.
  </itemize-minus>

  For <math|d\<less\>4>, <math|<math-up|Buf><rsub|d>=0>.

  (b) <em|Square systems.> Suppose every stationary buffer of degree <math|d>
  vanishes. Then there are finitely many <em|sections>
  <math|<around|(|r<rsub|i>,p<rsub|i>,f<rsub|i>|)><rsub|1\<leqslant\>i\<leqslant\>k>>,
  with <math|r<rsub|i>\<geqslant\>0>, <math|p<rsub|i>\<in\>E<rsub|d><rsup|r<rsub|i>>>
  and <math|f<rsub|i>\<in\>C<rsub|c><rsup|\<infty\>><around|(|<math-up|Conf><rsub|r<rsub|i>>;\<bbb-C\>|)>>,
  and a real-linear map <math|g:\<bbb-R\><rsup|k>\<to\>\<bbb-R\><rsup|m>>
  with <math|m=dim<rsub|\<bbb-R\>><math-up|Buf><rsub|d>>, such that the map

  <\equation*>
    B\<longmapsto\>g<around*|(|<math-up|Re><big|int>f<rsub|i><around|(|x|)>*<big|sum><rsub|j><around*|\<langle\>|p<rsub|i*1><around|(|x<rsub|1>|)>*\<cdots\>*<around|(|B*p<rsub|i*j>|)><around|(|x<rsub|j>|)>*\<cdots\>|\<rangle\>><rsub|0>*<space|0.17em>d*x|)><rsub|i\<leqslant\>k>
  </equation*>

  is an isomorphism <math|<math-up|Buf><rsub|d>\<to\>\<bbb-R\><rsup|m>>.

  <\itemize-minus>
    <item>This map is the derivative in the buffer direction, at the free
    data and <math|B=0>, of the <em|position chart>
    <math|<around|(|w,B|)>\<mapsto\>g*<around*|(|<math-up|Re><space|0.17em>w<rsub|i>*<around|(|<around|(|1+B|)>*p<rsub|i>|)>|)><rsub|i>>.
    Here <math|w<rsub|i>> ranges over complex-multilinear forms on
    <math|E<rsub|d><rsup|r<rsub|i>>>.

    <item>The system is called <em|square>, and <em|clean> (all profiles are
    test functions).

    <item>For simple nonabelian <math|\<frak-g\>> and <math|d=4> such a
    system exists.
  </itemize-minus>

  (c) <em|Leading position comparison at degree four.> Hypotheses:

  <\itemize-minus>
    <item><math|b> is a final record over the Wilson family, with limit table
    <math|S>.

    <item><math|X=<around|(|r<rsub|k>,U<rsub|k,d>,\<xi\><rsub|k>|)>> is a
    scaling sequence: <math|r<rsub|k>\<gtr\>0> decreases strictly to
    <math|0>, <math|\<xi\><rsub|k>\<gtr\>0>, and
    <math|U<rsub|k,d>:E<rsub|d>\<to\>F<rsub|d><around|(|S|)>> is a
    complex-linear isomorphism for every <math|k,d>. Write
    <math|U<rsub|k>=U<rsub|k,4>>.

    <item>Along <math|X>, the leading free-Maxwell comparison of VI.2 holds,
    including eventual compatibility of the frames with the unit,
    conjugation, signed permutations and degree inclusions.

    <item><math|Q> is a clean square degree-four system. The map
    <math|\<varphi\>> satisfies the four conditions in VII.3.r: a local
    analytic implicit solution, convergence of the order-zero lattice data,
    the formal position identities, and an actual leading comparison along
    <math|X>.
  </itemize-minus>

  Put <math|B<rsub|k>\<assign\>\<varphi\><around|(|m<rsub|Q><around|(|k|)>|)>>,
  where <math|m<rsub|Q><around|(|k|)>> are the tested rescaled correlations
  <math|<big|int>f<around|(|x|)>*<around|\<langle\>|U<rsub|k>*v<rsub|1>*<around|(|r<rsub|k>*x<rsub|1>|)>*\<cdots\>|\<rangle\>><rsub|S>*<space|0.17em>d*x>
  on basis fields. Then:

  <\itemize-minus>
    <item><math|B<rsub|k>\<to\>0>;

    <item>eventually <math|1+B<rsub|k>> is invertible, and the corrected
    frames <math|U<rsub|k>*<around|(|1+B<rsub|k>|)>> satisfy the position
    equations of <math|Q> exactly;

    <item>eventually <math|U<rsub|k>*<around|(|1+B<rsub|k>|)>> commutes with
    conjugation and signed permutations, maps the free unit to the unit of
    <math|S>, and is compatible with the frames of degrees
    <math|\<leqslant\>3> under the inclusions
    <math|E<rsub|d>\<subset\>E<rsub|4>>;

    <item>for every clean degree-four system <math|R> and every integer
    <math|L\<geqslant\>2>,
  </itemize-minus>

  <\equation*>
    m<rsub|R><rsup|B<rsub|k>><around|(|k|)>-<math-up|chart><rsub|R><around*|(|\<pi\><rsub|R><rsup|<around|(|0|)>><around|(|L,k|)>,\<varphi\><around|(|\<pi\><rsub|Q><rsup|<around|(|0|)>><around|(|L,k|)>|)>|)>\<longrightarrow\>0.
  </equation*>

  Here <math|m<rsub|R><rsup|B<rsub|k>><around|(|k|)>> is the tested reading
  after replacing each field <math|v> by <math|U<rsub|k>*<around|(|1+B<rsub|k>|)>*v>,
  and <math|\<pi\><rsub|R><rsup|<around|(|0|)>><around|(|L,k|)>> is the array
  of order-zero lattice readings on basis fields at spacing
  <math|L<rsup|-k>>.

  These conclusions, together with the comparisons for all clean systems
  described in VII.3.r, give clause (D15) of the detailed main theorem.

  <em|Status:>

  <\itemize-minus>
    <item>(a) and (b): theorems.

    <item>(c): theorem under the leading comparison hypothesis (VI.2;
    discharged by <hlink|<verbatim|firstTarget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81>)
    and the four conditions on <math|\<varphi\>> (discharged by
    <hlink|<verbatim|calibrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43>,
    VIII.1).

    <item>VIII.1 assembles this with the existence of a clean square system:
    simplicity of <math|\<frak-g\>> and the leading free comparison imply the
    full degree-four position conclusion.
  </itemize-minus>

  <em|Lean:> (a) <hlink|<verbatim|Rigid.frozen_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113>,
  <hlink|<verbatim|Rigid.first_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L114-L117>
  (unused), definition <hlink|<verbatim|Frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L102>;
  (b) <hlink|<verbatim|square_of_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147>,
  <hlink|<verbatim|Conditions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59>,
  <hlink|<verbatim|chart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L69>,
  <hlink|<verbatim|white>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104>,
  <hlink|<verbatim|square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L106>,
  <hlink|<verbatim|square_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15>;
  (c) <hlink|<verbatim|residency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43>,
  <hlink|<verbatim|Resident>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L23-L30>,
  <hlink|<verbatim|FourMeters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47>,
  <hlink|<verbatim|Crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48>,
  <hlink|<verbatim|BoardAttains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34>,
  <hlink|<verbatim|four_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53>,
  <hlink|<verbatim|normalized_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63>.

  <strong|Proposition VII.3.7 (exclusion of finite Wick profiles; assigned to
  VII.2 and VIII.1).>

  Definitions:

  <\itemize-minus>
    <item><math|G<rsub|\<Theta\>><around|(|r|)>> is the two-point function of
    the centered trace <math|\<Theta\>> of the stress tensor in the selected
    phase, at the points <math|\<mp\><frac|r|2>*e<rsub|<math-up|t>>> on the
    time axis (<hlink|<verbatim|traceTwo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149>).

    <item>A <em|mode> is <math|<around|(|<math-ss|m>,j,q,h|)>> with
    <math|<math-ss|m>\<geqslant\>0>, <math|j,q\<in\>\<bbb-N\>>, and
    <math|h:\<bbb-R\><rsup|3>\<to\>\<bbb-R\>> continuous with
    <math|h*<around|(|t*p|)>=t<rsup|j>*h<around|(|p|)>> for every
    <math|t\<gtr\>0> and <math|p\<in\>\<bbb-R\><rsup|3>>.

    <item>For <math|r\<gtr\>0>, its integrated kernel is
    <math|K<rsub|<math-ss|m>,q,h><around|(|r|)>=<big|int><rsub|\<bbb-R\><rsup|3>>E<rsup|q>*<space|0.17em>h<around|(|p|)>*<space|0.17em>e<rsup|-r*E>*<around|(|2*E|)><rsup|-1>*d*p>,
    with <math|E=<sqrt|<math-ss|m><rsup|2>+<around|\||p|\|><rsup|2>>>.

    <item>A <em|Wick profile> is a finite sum
    <math|W=<big|sum><rsub|\<alpha\>>c<rsub|\<alpha\>>*<big|prod><rsub|\<beta\>>K<rsub|\<alpha\>*\<beta\>>>
    with <math|c<rsub|\<alpha\>>\<in\>\<bbb-C\>>; empty products equal
    <math|1> (<hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158>,
    <hlink|<verbatim|Mode.kernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L159-L161>,
    <hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164>,
    <hlink|<verbatim|wickProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166>;
    statement.md, Definition 1.15).
  </itemize-minus>

  (a) Suppose <math|r<rsup|8>*log<rsup|2><around|(|1/r|)>*<space|0.17em>G<rsub|\<Theta\>><around|(|r|)>\<to\>A>
  as <math|r\<to\>0<rsup|+>>, with <math|A\<gtr\>0>. Then for every Wick
  profile <math|W> and every <math|\<delta\>\<gtr\>0> there is
  <math|r\<in\><around|(|0,\<delta\>|)>> with
  <math|G<rsub|\<Theta\>><around|(|r|)>\<ne\>W<around|(|r|)>>. Only this
  asymptotic law of <math|G<rsub|\<Theta\>>> is used. (b) Under the same
  asymptotic hypothesis, in the selected reconstructed theory, no finite sum
  of the corresponding mass-shell contraction integrals reproduces the
  Wightman two-point function of <math|\<Theta\>> on every product
  <math|<wide|f|\<bar\>>\<otimes\>g> of Schwartz tests for which
  <math|\<psi\><rsub|f,g>=<wide|<wide|f|^>|\<bar\>><space|0.17em><wide|g|^>>
  is compactly supported, using the positive-sign Fourier convention. A
  product of mode kernels corresponds to testing <math|\<psi\><rsub|f,g>> at
  the sum of their positive-energy on-shell momenta, with the product of
  their densities <math|E<rsup|q>*h<around|(|p|)>/<around|(|2*E|)>>
  (<hlink|<verbatim|waveTest_product>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35>).
  Thus, for every proposed finite sum, some such pair <math|f,g> gives
  different readings.

  With <math|A=3*dim \<frak-g\>/\<pi\><rsup|4>> from VII.2, (a) is clause
  (T4) of the main theorem. <em|Status:> theorem. (a) is assigned to VII.2
  and (b) to VIII.1. <em|Lean:> (a) <hlink|<verbatim|Wick.euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>,
  <hlink|<verbatim|Wick.no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>;
  public form <hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>
  for <hlink|<verbatim|Hierarchy.TraceTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175>.
  (b) <hlink|<verbatim|Wick.polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>.
  The asymptotic law and related polynomial-field exclusions occur in
  <hlink|<verbatim|Headline.TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120>.

  The Euclidean conclusion concerns the single function
  <math|G<rsub|\<Theta\>>> along one axis. The excluded class allows
  arbitrary complex coefficients and continuous homogeneous numerators, but
  only finitely many modes and products. It does not include general
  continuous-mass generalized free fields or infinite Wick expansions.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|Inputs from other units.>

  <\enumerate>
    <item><strong|III.16 (analytic toolkit).>

    <\itemize-minus>
      <item>The free curvature kernel, Wick moments, on-shell jet spaces,
      label evaluation map and real homogeneous reference frames defined
      above.

      <item>The response identity <hlink|<verbatim|replyTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L28-L31>:
      for <math|P\<in\><math-up|Sol><rsub|j>> and
      <math|Q\<in\><math-up|Sol><rsub|k>>, the covariance of
      <math|<around|\<langle\>|P,T<rsub|j>*F|\<rangle\>><around|(|z|)>> with
      <math|<around|\<langle\>|Q,T<rsub|k>*F|\<rangle\>><around|(|0|)>>
      equals <math|<around|(|-1|)><rsup|k><around|\<langle\>|Q,T<rsub|k><around|[|R<rsub|P>|]><around|(|z|)>|\<rangle\>>>.
      Here <math|R<rsub|P>> is the curvature field produced by <math|P> and
      <math|T<rsub|k>> is the <math|k>-th Taylor coefficient.

      <item>Used in VII.3.1\UVII.3.5.
    </itemize-minus>

    <item><strong|IV.1.> The free table, its on-shell image and spectator
    tests; correlation tables, null and quotient field spaces, real
    conjugation and signed-permutation symmetry, column systems and generic
    configurations.

    <item><strong|VI.2 (free Maxwell stress tensor).> For simple nonabelian
    <math|\<frak-g\>>:

    <\itemize-minus>
      <item><math|E<rsub|d>=\<bbb-C\>\<cdot\>1> for <math|d\<less\>4>
      (<hlink|<verbatim|below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49>,
      <hlink|<verbatim|dim_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54>).

      <item><math|E<rsub|4>> has the basis consisting of the unit and the 21
      invariant quadratics <math|<around|\<langle\>|F<rsub|P>,F<rsub|Q>|\<rangle\>>>,
      one for each unordered pair <math|<around|{|P,Q|}>> of coordinate
      planes. Its dual functionals are built from the one-point function and
      the two-point functions at separation <math|e>
      (<hlink|<verbatim|stand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110>,
      <hlink|<verbatim|separates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L82-L94>,
      <hlink|<verbatim|portLine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L78-L80>,
      <hlink|<verbatim|up_to>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L69-L75>).

      <item>The free curvature two-point function at <math|e<rsub|t>> is
      diagonal in planes, with entries <math|\<kappa\><rsub|t><around|(|P|)>=-\<pi\><rsup|-2>>
      if <math|t\<in\>P> and <math|+\<pi\><rsup|-2>> otherwise
      (<hlink|<verbatim|bare_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L39-L67>,
      <hlink|<verbatim|coat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L34>).

      <item>Also from VI.2: <hlink|<verbatim|FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39>.
      Along <math|X>:

      <\itemize-minus>
        <item>the rescaled correlations in the frames <math|U<rsub|k>>
        converge in every <math|C<rsup|j>> on compacta of
        <math|<math-up|Conf><rsub|n>> to those of the free table, with the
        stress tensor compared to the Maxwell stress tensor;

        <item>the centered real symmetric degree-four tensors that transform
        tensorially under signed permutations and have zero divergence form a
        one-dimensional real space;

        <item>derivatives and rotation generators converge.
      </itemize-minus>

      <item>This leading comparison is a hypothesis of VII.3.6(c).
    </itemize-minus>

    <item><strong|VI.1.> Scaling sequences of radii, stress normalizations
    and degreewise complex-linear frame changes.

    <item><strong|VII.1.> <hlink|<verbatim|Rig.zerothProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69>:
    the order-zero coefficient of the lattice perturbative profile converges
    to the tested free reading. It supplies the lattice limit in VII.3.r.

    <item><strong|VIII.1.>

    <\itemize-minus>
      <item>The final construction data, including the selected phase and its
      reconstructed theory.

      <item><hlink|<verbatim|calibrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43>
      and <hlink|<verbatim|credible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52>:
      the four implicit-position conditions hold for every clean square
      system, and the leading lattice comparison holds for every clean
      system.

      <item><hlink|<verbatim|Reports.of_square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L34-L35>
      (implicit function theorem).
    </itemize-minus>

    <item><strong|VII.2.> For VII.3.7:

    <\itemize-minus>
      <item>the short-distance law <hlink|<verbatim|EuclideanAsymptotic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75>
      with constant <math|3*dim \<frak-g\>/\<pi\><rsup|4>>;

      <item>the expansion lemmas <hlink|<verbatim|moment_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L122-L131>,
      <hlink|<verbatim|Track.moments_expand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125>,
      <hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>.
    </itemize-minus>

    <item><strong|V.3 and VII.2.> The selected trace field has a
    positive-energy spectral measure <math|\<mu\>>, its two-point function is
    the Laplace transform of <math|\<mu\>>, and its Wightman two-point
    distribution is the corresponding momentum-space integral. Exponential
    damping is integrable for every positive time
    (<hlink|<verbatim|TraceSpectrum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94>,
    <hlink|<verbatim|traceSpectrum_exists>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119>).
    This is used only in VII.3.7(b).

    <item><strong|I.1.> The lattice, the Wilson action and the Haar measure
    (for Ÿ4.7).
  </enumerate>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Wick's theorem, Gaussian integration by parts, and Fock-space
    orthogonality of Wick monomials: Glimm\UJaffe, <em|Quantum Physics>, ch.
    6; B. Simon, <em|The <math|P<around|(|\<phi\>|)><rsub|2>> Euclidean
    (Quantum) Field Theory>, ch. I; S. Janson, <em|Gaussian Hilbert Spaces>,
    ch. 3.

    <item>Reflection positivity of the free field: Osterwalder\USchrader, CMP
    31 (1973) and 42 (1975); Glimm\UJaffe, ch. 6. It is not invoked: strict
    positivity is proved by explicit diagonalization.

    <item>Hobson's formula for <math|h<around|(|\<partial\>|)><around|\||x|\|><rsup|-2>>
    in four dimensions, <math|h> harmonic and homogeneous: Hobson, <em|The
    Theory of Spherical and Ellipsoidal Harmonics>, ch. III; Stein\UWeiss,
    <em|Introduction to Fourier Analysis on Euclidean Spaces>, ch. IV.

    <item>Invariance of the four-dimensional Maxwell equations under
    inversion: Bateman (1910), Cunningham (1910).

    <item>Existence of orthogonal bases for symmetric bilinear forms; the
    real-analytic implicit function theorem; characters of the group
    <math|<around|(|\<bbb-Z\>/2|)><rsup|4>> of axis reflections.

    <item>Small-<math|r> expansions of Laplace integrals with logarithms, as
    for modified Bessel functions: Watson, <em|A Treatise on the Theory of
    Bessel Functions>, ch. III.

    <item>Lattice perturbation theory with Faddeev\UPopov gauge fixing:
    Montvay\UMünster, <em|Quantum Fields on a Lattice>, ch. 3\U4.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>Constants used:

    <\itemize-minus>
      <item><math|\<Gamma\>=1/<around|(|4*\<pi\><rsup|2><around|\||z|\|><rsup|2>|)>>;

      <item><math|s<rsub|j>=<around|(|j+1|)>*<around|(|j+2|)>*<around|(|-2|)><rsup|j>/\<pi\><rsup|2>>,
      the code's <hlink|<verbatim|strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L46>;

      <item><math|\<pi\><rsub|j><around|(|z|)>=<around|(|-1|)><rsup|j>*s<rsub|j><around|\||z|\|><rsup|-2*j-4>>;

      <item><math|\<kappa\><rsub|t><around|(|P|)>=\<mp\>\<pi\><rsup|-2>>
      (VI.2).
    </itemize-minus>

    <item>Hypotheses: the leading free comparison (VI.2) and the four
    implicit-position conditions (VIII.1) for VII.3.6(c); the short-distance
    law with <math|A\<gtr\>0> for VII.3.7 (VII.2).

    <item>Simplicity of <math|\<frak-g\>> enters VII.3.6 through VI.2:
    invariant linear color forms vanish, invariant bilinear color forms are
    multiples of the inner product, and <math|dim \<frak-g\>\<gtr\>0>.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The reflected covariance couples different jet orders. Hobson's formula
  identifies the field of an order-<math|j> multipole with <math|s<rsub|j>>
  times its Kelvin transform. Translating the polynomial multipole by the
  negative inverted separation and rescaling its Taylor components produces a
  triangular change of probes whose response has no Taylor terms below order
  <math|j> at the second point. The reflected covariance becomes diagonal,
  with positive pivots <math|\<pi\><rsub|j>>. Wick recursion extends this to
  polynomial monomials, with factorial norms
  <math|\<alpha\>!d<rsup|\<alpha\>>>.

  Strict positivity detects every nonzero on-shell label. It identifies the
  free quotient and gives injective two-point columns. At degree four, the
  explicit quadratic basis reduces buffer rigidity to a coefficient
  calculation: two-point stationarity gives weighted antisymmetry, while
  signed permutations give symmetry or zero. Compactly supported tests
  convert this rigidity into finitely many equations with invertible
  derivative. The implicit function theorem solves them along the scaling
  sequence.

  Independently, finite Wick profiles have expansions in integer powers of
  distance and nonnegative powers of its logarithm. Their real parts cannot
  have the trace field's leading term <math|A*r<rsup|-8><around|(|log
  <around|(|1/r|)>|)><rsup|-2>>. Comparison along <math|r=2<rsup|-n>> proves
  the contradiction. The spectral representation transfers equality of tested
  Wightman two-point functions to equality of the Euclidean profiles.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 The Wick algebra><label|41-the-wick-algebra>

  <strong|Lemma VII.3.a (Wick recursion).> Proposition VII.3.3. <em|Proof
  sketch.>

  <\itemize-minus>
    <item>By multilinearity it suffices to treat monomials. Occurrences of
    variables are distinguishable copies.

    <item>Adjoin one occurrence of <math|X<rsub|s>> at <math|x<rsub|i>>.
    Matchings of the enlarged system correspond bijectively to pairs (a
    partner occurrence of some <math|X<rsub|t>> at some <math|x<rsub|k>> with
    <math|k\<ne\>i>, a matching of the reduced system). Here the reduced
    system has one copy of <math|X<rsub|t>> removed at <math|x<rsub|k>>.

    <item>The multiplicity of <math|X<rsub|t>> in <math|W<rsub|k>> is the
    coefficient produced by <math|\<partial\><rsub|s>>.

    <item>Uniqueness: induct on the number of non-unit entries and on the
    polynomial structure. The recursion and the normalization
    <math|T<around|(|1,\<ldots\>,1|)>=1> determine <math|T>.

    <item>Rotated and conjugated moments satisfy the same recursion, by
    covariance and reality of the kernel. This gives
    <math|O<around|(|4|)>>-invariance and reality.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Pair.remove>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108>,
  <hlink|<verbatim|Pair.remove_mon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L64-L86>,
  bijections in <hlink|<verbatim|Match.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Match.lean>
  and <hlink|<verbatim|Occurrences.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Occurrences.lean>;
  <hlink|<verbatim|byAnnihilators>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L24-L62>,
  <hlink|<verbatim|wick_rotate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L81-L101>,
  <hlink|<verbatim|wick_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L111-L137>.

  <strong|Lemma VII.3.b (two-point adjoint relation).> For
  <math|p\<in\><math-up|Tow><rsub|n>> and <math|x\<ne\>y>, let
  <math|D<rsup|x,y><rsub|p>> be the derivation of <math|\<cal-W\>> sending
  each variable at <math|y> to its free covariance with
  <math|\<ell\><rsub|p>> at <math|x> (<hlink|<verbatim|crash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L81>).
  For all <math|P,Q\<in\>\<cal-W\>> and <math|q\<in\><math-up|Tow><rsub|n>>:

  <\itemize-minus>
    <item><math|<around|\<langle\>|<around|(|P*\<ell\><rsub|p>|)><around|(|x|)>*<space|0.17em>Q<around|(|y|)>|\<rangle\>><rsub|0>=<around|\<langle\>|P<around|(|x|)>*<space|0.17em><around|(|D<rsup|x,y><rsub|p>*Q|)><around|(|y|)>|\<rangle\>><rsub|0>>;

    <item><math|D<rsup|x,y><rsub|p>*<around|(|\<cal-R\><rsub|x-y>*\<ell\><rsub|q>|)>=B<rsub|x-y><around|(|p,q|)>>,
    a constant.
  </itemize-minus>

  <em|Proof sketch.> Apply VII.3.a with <math|n=2>: the sum over
  <math|k\<ne\>i> has a single term. On linear polynomials, the resulting
  contraction is exactly <math|B<rsub|x-y><around|(|p,q|)>>. <em|Lean:>
  <hlink|<verbatim|join_crash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L60-L66>,
  <hlink|<verbatim|crash_relation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L96-L100>,
  <hlink|<verbatim|crash_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L83-L94>.

  <strong|Lemma VII.3.c (exhaustion by towers).> For every
  <math|P\<in\>\<cal-W\>> there is <math|n<rsub|0>\<geqslant\>0> with the
  following property. For all <math|n\<geqslant\>n<rsub|0>> and every real
  basis <math|<around|(|b<rsub|i>|)><rsub|1\<leqslant\>i\<leqslant\>N>> of
  <math|<math-up|Tow><rsub|n>>, one has <math|P=\<Phi\><rsub|b><around|(|p|)>>
  for some <math|p\<in\>\<bbb-C\><around|[|Y<rsub|1>,\<ldots\>,Y<rsub|N>|]>>.
  <em|Proof sketch.>

  <\itemize-minus>
    <item>Each variable <math|X<rsub|<around|(|j,a|)>>> equals
    <math|\<ell\><rsub|r>>, where <math|r> is the Riesz dual of the
    <math|a>-th coordinate functional, placed in order <math|j>
    (<hlink|<verbatim|digit_coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L95-L96>).

    <item><math|\<ell\><rsub|r>> is a real linear combination of the
    <math|\<ell\><rsub|b<rsub|i>>> once <math|n\<gtr\>j>.

    <item>Induct on the structure of <math|P>: constants, sums, and products
    with one variable.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|from_large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L51-L68>,
  <hlink|<verbatim|from_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L37-L46>.

  <subsection|4.2 The tower Gram form><label|42-the-tower-gram-form>

  <strong|Lemma VII.3.d (Hobson's formula in <math|\<bbb-R\><rsup|4>>).> Let
  <math|S\<in\><math-up|Sol><rsub|j>> and <math|x\<ne\>0>. Let
  <math|S<around|(|\<partial\>|)>> be the differential operator with symbol
  <math|S>, normalized with Taylor coefficients (a factor <math|1/j!>). Then

  <\equation*>
    S<around|(|\<partial\>|)>*\<Gamma\><around|(|x|)>=<around|(|-2|)><rsup|j><space|0.17em><around|\||x|\|><rsup|-2*j>*<space|0.17em>S<around|(|x|)>*<space|0.17em>\<Gamma\><around|(|x|)>.
  </equation*>

  <em|Proof sketch.> Induct on <math|j>. In the step from <math|j> to
  <math|j+1>, take <math|S\<in\><math-up|Sol><rsub|j+1>> and let
  <math|S<rsub|a>\<in\><math-up|Sol><rsub|j>> be its partial contraction with
  <math|e<rsub|a>>. Taylor normalization gives
  <math|S<around|(|\<partial\>|)>=<frac|1|j+1>*<big|sum><rsub|a>\<partial\><rsub|a>*S<rsub|a><around|(|\<partial\>|)>>
  (<hlink|<verbatim|Sol.freeze>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L140-L159>).
  Apply the induction hypothesis and differentiate:

  <\itemize-minus>
    <item>the term with the divergence of the partial contractions vanishes,
    because <math|S> is harmonic (<hlink|<verbatim|Sol.freeze_trace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L164-L172>);

    <item>the radial derivative gives <math|-2*<around|(|j+1|)><around|\||x|\|><rsup|-2*<around|(|j+2|)>>*<big|sum><rsub|a>x<rsub|a>*S<rsub|a><around|(|x|)>>,
    and <math|<big|sum><rsub|a>x<rsub|a>*S<rsub|a><around|(|x|)>=S<around|(|x|)>>
    (<hlink|<verbatim|freeze_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L109-L119>).
    The factor <math|j+1> cancels, leaving the required factor <math|-2>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|shell_green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L122-L152>.

  <strong|Lemma VII.3.e (the field of a multipole is a Kelvin transform).>
  For <math|P\<in\><math-up|Sol><rsub|j>> and <math|z\<ne\>0>, the curvature
  field <math|R<rsub|P>> produced by <math|P> satisfies

  <\equation*>
    R<rsub|P><around|(|z|)>=s<rsub|j><space|0.17em><around|\||z|\|><rsup|-4>*<space|0.17em><around|(|\<cal-R\><rsub|z>\<otimes\>\<cal-R\><rsub|z>|)>*<space|0.17em>P<around|(|<wide|z|\<check\>>|)>=s<rsub|j><space|0.17em><around|\||z|\|><rsup|-2*j-4>*<space|0.17em><around|(|\<cal-R\><rsub|z>\<otimes\>\<cal-R\><rsub|z>|)>*<space|0.17em>P<around|(|z|)>,<space|2em><wide|z|\<check\>>=z/<around|\||z|\|><rsup|2>.
  </equation*>

  That is, <math|R<rsub|P>=s<rsub|j>*<space|0.17em>I<rsup|\<ast\>>*P>, the
  pull-back of the 2-form <math|P> under the inversion <math|I>, whose
  differential is <math|<around|\||z|\|><rsup|-2>*\<cal-R\><rsub|z>>.
  <em|Proof sketch.>

  <\itemize-minus>
    <item>The curvature kernel is a curl-curl of <math|\<Gamma\>>. Its
    contraction with <math|P> is <math|<around|(|R<rsub|P>|)><rsub|i*m>=2*<around|(|\<partial\><rsub|m><around|(|D<rsub|P>|)><rsub|i>-\<partial\><rsub|i><around|(|D<rsub|P>|)><rsub|m>|)>>,
    where <math|<around|(|D<rsub|P>|)><rsub|i>=<big|sum><rsub|a>\<partial\><rsub|a>*<around|(|P<rsub|a*i><around|(|\<partial\>|)>*\<Gamma\>|)>>.
    By VII.3.d,
  </itemize-minus>

  <\equation*>
    D<rsub|P><around|(|x|)>=-2*<around|(|j+1|)>*<around|(|-2|)><rsup|j>*<around|(|4*\<pi\><rsup|2>|)><rsup|-1><around|\||x|\|><rsup|-2*<around|(|j+2|)>>*<space|0.17em>\<iota\><rsub|x>*P<around|(|x|)>
  </equation*>

  (<hlink|<verbatim|divP_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L59-L77>).

  <\itemize-minus>
    <item>Its curl is computed with <math|\<partial\><rsub|i>*<around|(|\<iota\><rsub|x>*P|)><rsub|m>-\<partial\><rsub|m>*<around|(|\<iota\><rsub|x>*P|)><rsub|i>=<around|(|j+2|)>*P<rsub|i*m>>.
    This uses Bianchi and Euler; see <hlink|<verbatim|radial_curl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L28-L44>.

    <item>Collecting terms gives <math|s<rsub|j><around|\||x|\|><rsup|-2*<around|(|j+2|)>>*<around*|(|P<rsub|i*m>-2<around|\||x|\|><rsup|-2>*<around|(|x<rsub|i>*<around|(|\<iota\><rsub|x>*P|)><rsub|m>-x<rsub|m>*<around|(|\<iota\><rsub|x>*P|)><rsub|i>|)>|)>>,
    which is the reflected tensor.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|curl_kelvin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L82-L109>,
  <hlink|<verbatim|reply_kelvin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L111-L113>,
  <hlink|<verbatim|reply_radial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L112-L122>,
  <hlink|<verbatim|strength_sign>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L51-L55>.

  <strong|Lemma VII.3.f (shifted towers).> For <math|x\<ne\>0>,
  <math|j\<less\>n> and <math|P\<in\><math-up|Sol><rsub|j>>, define
  <math|\<sigma\><rsub|x><around|(|P|)>\<assign\><around|(|Q<rsub|0>,\<ldots\>,Q<rsub|j>,0,\<ldots\>|)>\<in\><math-up|Tow><rsub|n>>
  with

  <\equation*>
    Q<rsub|k>\<assign\><around|(|s<rsub|j>/s<rsub|k>|)>*<space|0.17em>T<rsub|k><around|[|P|]>*<around|(|-<wide|x|\<check\>>|)>.
  </equation*>

  Here <math|T<rsub|k><around|[|P|]><around|(|a|)>\<in\><math-up|Sol><rsub|k>>
  is the order-<math|k> Taylor coefficient of <math|P> at <math|a>. In
  particular <math|Q<rsub|j>=P>. For every <math|y\<ne\>0>, the total field
  of the shifted tower is

  <\equation*>
    <with|math-display|false|<big|sum><rsub|k>R<rsub|Q<rsub|k>><around|(|y|)>=s<rsub|j><around|\||y|\|><rsup|-4>*<around|(|\<cal-R\><rsub|y>\<otimes\>\<cal-R\><rsub|y>|)>*P*<around|(|<wide|y|\<check\>>-<wide|x|\<check\>>|)>.>
  </equation*>

  It vanishes to order <math|j> at <math|y=x>:

  <\equation*>
    T<rsub|k><around*|[|<with|math-display|false|<around*|\<nobracket\>|<big|sum>R<rsub|Q<rsub|i>>|]><around|(|x|)>=0*<around|(|k\<less\>j|)>,<space|2em>T<rsub|j><around*|[|<big|sum>R<rsub|Q<rsub|i>>|]><around|(|x|)>=s<rsub|j><around|\||x|\|><rsup|-2*<around|(|j+2|)>>*<space|0.17em>\<cal-R\><rsub|x>*P.>|\<nobracket\>>
  </equation*>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Since <math|<big|sum><rsub|k>T<rsub|k><around|[|P|]><around|(|a|)><around|(|w|)>=P*<around|(|w+a|)>>
    and <math|R> is linear, VII.3.e gives the formula for the total field.

    <item>Along the line <math|y=x+t*v>: <math|<wide|y|\<check\>>-<wide|x|\<check\>>=t*<space|0.17em><around|\||x+t*v|\|><rsup|-2>*<around|(|\<cal-R\><rsub|x>*v-t<around|\||v|\|><rsup|2><wide|x|\<check\>>|)>>,
    which is smooth in <math|t>.

    <item>By homogeneity the field is <math|t<rsup|j>> times a smooth
    function whose value at <math|t=0> is
    <math|s<rsub|j><around|\||x|\|><rsup|-2*<around|(|j+2|)>>*<around|(|\<cal-R\><rsub|x>*P|)><around|(|v|)>>.

    <item>Taylor coefficients of symmetric jets are determined by their
    diagonal values.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|shifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L20-L21>,
  <hlink|<verbatim|towards>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L104-L113>,
  <hlink|<verbatim|field_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L118-L119>,
  <hlink|<verbatim|fields_shift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L27-L32>,
  <hlink|<verbatim|signal_kelvin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L68-L81>,
  <hlink|<verbatim|invert_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L40-L56>,
  <hlink|<verbatim|signal_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L135-L139>,
  <hlink|<verbatim|signal_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L141-L147>,
  <hlink|<verbatim|newLeg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L98-L99>.

  <strong|Lemma VII.3.g (diagonal Gram form in shifted towers).> For
  <math|x\<ne\>0>, <math|i,m\<less\>n>, <math|P\<in\><math-up|Sol><rsub|i>>
  and <math|Q\<in\><math-up|Sol><rsub|m>>:

  <\equation*>
    B<rsub|x><around|(|\<sigma\><rsub|x>*P,\<sigma\><rsub|x>*Q|)>=<choice|<tformat|<table|<row|<cell|\<pi\><rsub|i><around|(|x|)><around|\<langle\>|P,Q|\<rangle\>>>|<cell|i=m,>>|<row|<cell|0>|<cell|i\<ne\>m.>>>>>
  </equation*>

  Hence <math|B<rsub|x><around|(|\<sigma\><rsub|x>*p,\<sigma\><rsub|x>*q|)>=<big|sum><rsub|i>\<pi\><rsub|i><around|(|x|)><around|\<langle\>|p<rsub|i>,q<rsub|i>|\<rangle\>>>,
  where <math|\<sigma\><rsub|x>*p\<assign\><big|sum><rsub|i>\<sigma\><rsub|x><around|(|p<rsub|i>|)>>.
  <em|Proof sketch.>

  <\itemize-minus>
    <item>By the response identity (III.16), for
    <math|q\<in\><math-up|Sol><rsub|k>> placed in order <math|k>:
    <math|B<rsub|x><around|(|\<sigma\><rsub|x>*P,q|)>=<around|(|-1|)><rsup|k><around*|\<langle\>|\<cal-R\><rsub|x>*q,T<rsub|k>[<with|math-display|false|<around*|\<nobracket\>|<big|sum>R<rsub|Q<rsub|i>>]<around|(|x|)>|\<rangle\>>>|\<nobracket\>>>.

    <item>By VII.3.f this is <math|0> for <math|k\<less\>i>, and
    <math|<around|(|-1|)><rsup|i>*s<rsub|i><around|\||x|\|><rsup|-2*<around|(|i+2|)>><around|\<langle\>|\<cal-R\><rsub|x>*q,\<cal-R\><rsub|x>*P|\<rangle\>>=\<pi\><rsub|i><around|(|x|)><around|\<langle\>|P,q|\<rangle\>>>
    for <math|k=i>, since <math|\<cal-R\><rsub|x>> is orthogonal.

    <item>If <math|m\<less\>i>, expand <math|\<sigma\><rsub|x>*Q> into
    components of orders <math|\<leqslant\>m>; each gives zero. The case
    <math|m\<gtr\>i> follows by symmetry.

    <item>If <math|m=i>, only the top component <math|Q> of
    <math|\<sigma\><rsub|x>*Q> contributes.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|slide_sum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L49-L57>,
  <hlink|<verbatim|slide_below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L59-L60>,
  <hlink|<verbatim|slide_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L62-L67>,
  <hlink|<verbatim|newLeg_below>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L105-L111>,
  <hlink|<verbatim|newLeg_diag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L113-L121>,
  <hlink|<verbatim|shiftAll_gram>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133>.

  <strong|Lemma VII.3.h (VII.3.2(a)).> For every <math|z\<ne\>0> and
  <math|n\<geqslant\>0>, <math|B<rsub|z>> is symmetric and positive definite
  on <math|<math-up|Tow><rsub|n>>. <em|Proof sketch.>

  <\itemize-minus>
    <item>Symmetry: the kernel is symmetric under exchanging the two probes
    and replacing <math|z> by <math|-z>. It is also
    <math|O<around|(|4|)>>-covariant (<hlink|<verbatim|leg_cov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L156-L160>).
    Apply this with <math|\<cal-R\><rsub|z>*z=-z> and
    <math|\<cal-R\><rsub|z><rsup|2>=1>.

    <item>Positivity:

    <\itemize-minus>
      <item><math|\<sigma\><rsub|z>> is injective, since
      <math|B<rsub|z><around|(|\<sigma\><rsub|z>*p,\<sigma\><rsub|z>*p|)>\<gtr\>0>
      for <math|p\<ne\>0> by VII.3.g;

      <item>hence it is bijective, by finite dimension (it is also visibly
      block unitriangular);

      <item>so <math|B<rsub|z><around|(|p,p|)>=<big|sum>\<pi\><rsub|j><around|\<lVert\>|p<rprime|'><rsub|j>|\<rVert\>><rsup|2>\<gtr\>0>
      for <math|p=\<sigma\><rsub|z>*p<rprime|'>\<ne\>0>.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|scan_sym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L37-L47>,
  <hlink|<verbatim|towerB_sym>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L90-L94>,
  <hlink|<verbatim|shiftAll_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L135-L141>,
  <hlink|<verbatim|shiftDual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L143-L146>,
  <hlink|<verbatim|towerB_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154>.

  <subsection|4.3 From towers to all Wick
  polynomials><label|43-from-towers-to-all-wick-polynomials>

  <strong|Lemma VII.3.i (Fock orthogonality).> Let <math|b> be as in
  VII.3.2(b), and let <math|\<alpha\>,\<beta\>\<in\>\<bbb-N\><rsup|N>>. Then,
  without conjugation,

  <\equation*>
    <around*|\<langle\>|\<Phi\><rsub|b><around|(|Y<rsup|\<alpha\>>|)><around|(|x|)>*<space|0.17em><around|(|\<cal-R\><rsub|x-y>*\<Phi\><rsub|b><around|(|Y<rsup|\<beta\>>|)>|)><around|(|y|)>|\<rangle\>><rsub|0>=\<delta\><rsub|\<alpha\>*\<beta\>>*<space|0.17em>\<alpha\>!<space|0.17em>d<rsup|\<alpha\>>.
  </equation*>

  <em|Proof sketch.>

  <\itemize-minus>
    <item>Since the <math|b<rsub|k>> are orthogonal, VII.3.b gives
    <math|D<rsup|x,y><rsub|b<rsub|i>>*<space|0.17em>\<cal-R\>*\<Phi\><rsub|b><around|(|q|)>=d<rsub|i>*<space|0.17em>\<cal-R\>*\<Phi\><rsub|b>*<around|(|\<partial\><rsub|Y<rsub|i>>*q|)>>
    (<hlink|<verbatim|crash_basis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L88-L102>).

    <item>Thus transferring one factor <math|Y<rsub|i>> from the first
    insertion differentiates the second polynomial and multiplies by
    <math|d<rsub|i>> (<hlink|<verbatim|aligned_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L104-L109>).

    <item>Induct on <math|\<alpha\>>, one factor at a time
    (<hlink|<verbatim|tally_step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L44-L52>).

    <item>The base cases are the unit-unit reading <math|1> and the zero
    reading of the unit against a nonconstant monomial
    (<hlink|<verbatim|aligned_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L81-L84>,
    <hlink|<verbatim|aligned_one_right>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L76-L79>).
  </itemize-minus>

  This is the factorial orthogonality of Wick monomials. <em|Lean:>
  <hlink|<verbatim|aligned_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L60-L85>.

  <strong|Lemma VII.3.j (VII.3.2(b)).> The monomials
  <math|\<Phi\><rsub|b><around|(|Y<rsup|\<alpha\>>|)>> are real
  (<hlink|<verbatim|bar_mono>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L90-L95>).
  Sesquilinear extension of VII.3.i then gives
  <math|<around|\<langle\>|\<Phi\><rsub|b>*p,\<Phi\><rsub|b>*q|\<rangle\>><rsub|x,y>=<big|sum><rsub|\<alpha\>>p<rsub|\<alpha\>><wide|q<rsub|\<alpha\>>|\<bar\>>\<alpha\>!d<rsup|\<alpha\>>>.
  <em|Lean:> <hlink|<verbatim|duplex_script>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116>.

  <strong|Lemma VII.3.k (VII.3.1).> <em|Proof sketch.>

  <\itemize-minus>
    <item>(a) Given <math|P\<ne\>0>, take <math|n> from VII.3.c. Take a
    <math|B<rsub|x-y>>-orthogonal basis of <math|<math-up|Tow><rsub|n>>; it
    exists for a symmetric form, and <math|d<rsub|i>\<gtr\>0> by VII.3.h
    (<hlink|<verbatim|upright>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L20-L29>).
    Then <math|P=\<Phi\><rsub|b><around|(|p|)>> with <math|p\<ne\>0>, and
    <math|<around|\<langle\>|P,P|\<rangle\>>=<big|sum><around|\||p<rsub|\<alpha\>>|\|><rsup|2>*\<alpha\>!d<rsup|\<alpha\>>\<gtr\>0>.

    <item>(b) Write <math|P> and <math|Q> in a common basis; the formula of
    VII.3.j is Hermitian.

    <item>(c) Apply (a) to <math|<big|sum>a<rsub|i>*V<rsub|i>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|reflected_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53>,
  <hlink|<verbatim|script_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L38-L44>,
  <hlink|<verbatim|reflected_symm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L57-L76>,
  <hlink|<verbatim|reflected_pd>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L80-L97>.

  <subsection|4.4 Faithfulness and covariance of the free
  table><label|44-faithfulness-and-covariance-of-the-free-table>

  <strong|Lemma VII.3.l (VII.3.4(a)).> <em|Proof sketch.>

  <\itemize-minus>
    <item><math|<math-up|sh><rsub|d>> is stable under conjugation and under
    <math|O<around|(|4|)>>, because <math|\<omega\><rsub|d>> intertwines the
    label operations with <math|<wide||\<bar\>>> and with substitution
    (<hlink|<verbatim|sector_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L25-L26>,
    <hlink|<verbatim|sector_rot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L27-L28>,
    <hlink|<verbatim|observe_rot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L56>,
    <hlink|<verbatim|observe_bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L58>).

    <item>So for <math|P\<in\><math-up|sh><rsub|d>> the one-element family
    <math|Q<rsub|1>=\<cal-R\><rsub|x-y>*<wide|P|\<bar\>>> at
    <math|<around|(|x,y|)>=<around|(|0,e<rsub|<math-up|t>>|)>> is admissible.
    Its test value is <math|<around|\<langle\>|P,P|\<rangle\>><rsub|0,e<rsub|<math-up|t>>>>
    (<hlink|<verbatim|point_probe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L31-L36>),
    which is positive by VII.3.1 if <math|P\<ne\>0>.

    <item>The description of the null labels then follows from the identity
    between free-table readings and these tests (IV.1).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|no_residual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54>,
  <hlink|<verbatim|free_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L58-L59>,
  <hlink|<verbatim|exactField>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L64-L65>.

  <strong|Lemma VII.3.m (VII.3.4(b), (c)).> <em|Proof sketch of (b).>

  <\itemize-minus>
    <item>Suppose <math|v\<ne\>w> have the same readings against a basis. By
    bilinearity, <math|u=v-w> has zero reading against every field.

    <item>In particular <math|u> has zero reading against
    <math|\<cal-R\><rsub|x-y>\<cdot\><wide|u|\<bar\>>\<in\>E<rsub|d>>
    (<hlink|<verbatim|faceTest_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L96-L99>).

    <item>That reading is <math|<around|\<langle\>|\<varpi\>*u,\<varpi\>*u|\<rangle\>><rsub|x,y>\<gtr\>0>,
    a contradiction.
  </itemize-minus>

  <em|Proof sketch of (c).>

  <\itemize-minus>
    <item>Extend the unit to a complex basis chosen among the images of frame
    labels. These images are fixed by conjugation
    (<hlink|<verbatim|labeled>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L29-L69>,
    <hlink|<verbatim|frameRows>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L71-L83>).

    <item>Its elements carry their weighted degree, with an order-<math|j>
    jet weighted <math|j+2>, and their length.

    <item>The pair readings are injective by (b).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|scanner_inj>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L103-L115>,
  <hlink|<verbatim|recorded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L41-L49>,
  <hlink|<verbatim|vane>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L25-L38>.

  <strong|Lemma VII.3.n (VII.3.5).> <em|Proof sketch.>

  <\itemize-minus>
    <item><math|\<omega\>> intertwines the label action of
    <math|O<around|(|4|)>> with substitution, via the identity relating
    rotation of curvature jets to rotation of potential jets
    (<hlink|<verbatim|radial_turn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L43-L46>).
    It intertwines label conjugation with <math|<wide||\<bar\>>>.

    <item>The free moments are <math|O<around|(|4|)>>-invariant and real
    (VII.3.3).

    <item>The <math|O<around|(|4|)>> action on <math|E<rsub|d>> is
    transported through <math|E<rsub|d>\<cong\><math-up|sh><rsub|d>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|table_spin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91>,
  <hlink|<verbatim|ride>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L99-L101>.

  <subsection|4.5 Degree four: rigidity and the position
  equations><label|45-degree-four-rigidity-and-the-position-equations>

  <strong|Lemma VII.3.o (coordinates on <math|E<rsub|4>>).> Assume that
  <math|\<frak-g\>> is simple and nonabelian. Let <math|e> be the unit vector
  of coordinate axis <math|0>. The basis and dual functionals below are from
  VI.2.

  <em|Basis.> Quadratic products below are Wick-ordered. The space
  <math|E<rsub|4>> has the basis <math|<around|{|\<star\><rsub|c>|}>>,
  <math|c\<in\><around|{|\<varnothing\>|}>\<cup\><around|{|<text|faces>|}>>,
  where:

  <\itemize-minus>
    <item><math|\<star\><rsub|\<varnothing\>>=1>;

    <item><math|\<star\><rsub|<around|{|P,Q|}>>=<around|\<langle\>|F<rsub|P>,F<rsub|Q>|\<rangle\>>>,
    the invariant contraction of two curvature components, for
    <math|P\<leqslant\>Q> two of the six coordinate planes;

    <item>so <math|dim E<rsub|4>=22>.
  </itemize-minus>

  <em|Dual functionals.> The dual basis is
  <math|\<lambda\><rsub|\<varnothing\>><around|(|v|)>=<around|\<langle\>|v|\<rangle\>><rsub|0>>
  and

  <\equation*>
    \<lambda\><rsub|<around|{|P,Q|}>><around|(|v|)>=<frac|m<around|(|P,Q|)>|dim
    \<frak-g\>*<space|0.27em>\<kappa\><around|(|P|)>*\<kappa\><around|(|Q|)>><space|0.17em><around*|\<langle\>|v<around|(|e|)><space|0.17em><around|\<langle\>|F<rsub|P>,F<rsub|Q>|\<rangle\>><around|(|0|)>|\<rangle\>><rsub|0>,
  </equation*>

  with <math|m<around|(|P,Q|)>=<tfrac|1|2>> if <math|P=Q> and <math|1>
  otherwise, and <math|\<kappa\><around|(|P|)>=\<kappa\><rsub|0><around|(|P|)>=\<mp\>\<pi\><rsup|-2>>.

  <em|Two-point formulas.> For a quadratic index <math|c=<around|{|P,Q|}>>,
  put <math|\<rho\><around|(|c|)>=dim \<frak-g\>*<space|0.17em>\<kappa\><around|(|P|)>*\<kappa\><around|(|Q|)>/m<around|(|P,Q|)>\<ne\>0>.
  For every <math|v\<in\>E<rsub|4>>:

  <\itemize-minus>
    <item><math|<around|\<langle\>|v<around|(|e|)>*\<star\><rsub|c><around|(|0|)>|\<rangle\>><rsub|0>=\<rho\><around|(|c|)>*\<lambda\><rsub|c><around|(|v|)>>;

    <item>if <math|\<lambda\><rsub|\<varnothing\>><around|(|v|)>=0>, then
    also <math|<around|\<langle\>|\<star\><rsub|c><around|(|e|)>*v<around|(|0|)>|\<rangle\>><rsub|0>=\<rho\><around|(|c|)>*\<lambda\><rsub|c><around|(|v|)>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|price_tag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L50-L52>,
  <hlink|<verbatim|backwards>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L59-L69>,
  <hlink|<verbatim|rate_ne>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L39>,
  <hlink|<verbatim|big_weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L30-L36>;
  inputs <hlink|<verbatim|stand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110>,
  <hlink|<verbatim|separates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L82-L94>.

  <strong|Lemma VII.3.p (VII.3.6(a)).> Let
  <math|B\<in\><math-up|Buf><rsub|4>> satisfy the one- and two-point
  conditions of VII.3.6(a). Put <math|<math-up|coeff><around|(|c,c<rprime|'>|)>=\<lambda\><rsub|c>*<around|(|B*\<star\><rsub|c<rprime|'>>|)>>.
  Then every coefficient vanishes, and so <math|B=0>. <em|Proof sketch.>

  <\itemize-minus>
    <item><strong|Unit row and column.>

    <\itemize-minus>
      <item><math|<math-up|coeff><around|(|\<varnothing\>,\<cdot\>|)>=0> by
      the one-point condition (<hlink|<verbatim|alone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L73-L81>).

      <item><math|<math-up|coeff><around|(|\<cdummy\>,\<varnothing\>|)>=0>
      because <math|B*1=0>.
    </itemize-minus>

    <item><strong|Antisymmetry.> The two-point condition with
    <math|v=\<star\><rsub|c>>, <math|w=\<star\><rsub|c<rprime|'>>> gives, by
    VII.3.o,
  </itemize-minus>

  <\equation*>
    \<rho\><around|(|c<rprime|'>|)><space|0.17em><math-up|coeff><around|(|c<rprime|'>,c|)>+\<rho\><around|(|c|)><space|0.17em><math-up|coeff><around|(|c,c<rprime|'>|)>=0
  </equation*>

  (<hlink|<verbatim|cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L82-L89>).

  <\itemize-minus>
    <item><strong|Different reflection characters.> Reflection of axis
    <math|a> multiplies <math|\<star\><rsub|<around|{|P,Q|}>>> by
    <math|<around|(|-1|)><rsup|<around|[|a\<in\>P|]>+<around|[|a\<in\>Q|]>>>
    (<hlink|<verbatim|draw_mask>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L33-L34>).
    If two quadratic indices have different characters of
    <math|<around|(|\<bbb-Z\>/2|)><rsup|4>>, some reflection separates them,
    and equivariance of <math|B> gives <math|<math-up|coeff>=0>
    (<hlink|<verbatim|unpaint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L63-L67>).

    <item><strong|Equal reflection characters.> A finite check over the 21
    faces (<hlink|<verbatim|havePath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Chess.lean#L29-L31>,
    decided by computation) finds an involutive axis permutation exchanging
    <math|\<star\><rsub|c>> and <math|\<star\><rsub|c<rprime|'>>>, up to a
    common sign. It also shows the two faces are both diagonal or both
    off-diagonal.

    <\itemize-minus>
      <item>Equivariance then gives the symmetry
      <math|<math-up|coeff><around|(|c<rprime|'>,c|)>=<math-up|coeff><around|(|c,c<rprime|'>|)>>
      (<hlink|<verbatim|reflect_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L69-L84>).

      <item>It also gives equal rates, <math|\<rho\><around|(|c|)>=\<rho\><around|(|c<rprime|'>|)>>
      (<hlink|<verbatim|common_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L48-L49>).

      <item>Combined with the antisymmetry:
      <math|2*\<rho\><around|(|c|)><space|0.17em><math-up|coeff><around|(|c,c<rprime|'>|)>=0>.
    </itemize-minus>

    <item><strong|Degrees <math|d\<less\>4>:>
    <math|E<rsub|d>=\<bbb-C\>\<cdot\>1>, and buffers kill the unit.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|coeff_barren>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L90-L105>,
  <hlink|<verbatim|frozen_four>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113>,
  <hlink|<verbatim|first_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L114-L117>,
  <hlink|<verbatim|orient_transfer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L60-L62>,
  <hlink|<verbatim|wearer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L74-L80>.

  <strong|Lemma VII.3.q (VII.3.6(b)).> <em|Proof sketch.>

  <\itemize-minus>
    <item>The <em|feedback> of a section <math|<around|(|r,p,f|)>> is the
    <math|B>-derivative at <math|0> of <math|<math-up|Re><big|int>f*<around|\<langle\>|<around|(|1+B|)>*p<rsub|1>*\<cdots\>|\<rangle\>><rsub|0>>
    (<hlink|<verbatim|feedback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L58>).
    It is a linear functional on <math|<math-up|Buf><rsub|d>>.

    <item>If all feedbacks vanish at <math|B>, then <math|B> is stationary
    (<hlink|<verbatim|detected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L103-L112>):

    <\itemize-minus>
      <item>the profiles <math|f> and <math|i*f> give the real and imaginary
      parts (<hlink|<verbatim|feedback_twist>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L97-L100>);

      <item>the integrand is continuous on <math|<math-up|Conf><rsub|r>>
      (<hlink|<verbatim|visible_cont>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L19-L20>),
      so it vanishes pointwise.
    </itemize-minus>

    <item>The span of all feedbacks lies in the finite-dimensional dual of
    <math|<math-up|Buf><rsub|d>>. Pick <math|k> sections whose feedbacks span
    the same subspace; their joint kernel is <math|0>
    (<hlink|<verbatim|finite_detectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L115-L129>).

    <item>Take a left inverse <math|g<rprime|'>> of the resulting injection
    <math|<math-up|Buf><rsub|d>\<to\>\<bbb-R\><rsup|k>>, and put
    <math|g=H\<circ\>g<rprime|'>> with <math|H:<math-up|Buf><rsub|d>\<cong\>\<bbb-R\><rsup|m>>
    a coordinate isomorphism.

    <item>The chart derivative is then <math|H>
    (<hlink|<verbatim|chart_deriv_formula>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L82-L93>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|square_of_frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147>.

  <strong|Lemma VII.3.r (VII.3.6(c)).>

  <em|The data.>

  <\itemize-minus>
    <item><math|m<rsub|Q><around|(|k|)>> is the tested correlation of the
    limit theory at scale <math|r<rsub|k>> in the frames <math|U<rsub|k>>, on
    basis fields (<hlink|<verbatim|measured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L15>,
    <hlink|<verbatim|exactMean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L19>).

    <item>The leading free comparison, with derivative order <math|0> and no
    stress slots, gives <math|m<rsub|Q><around|(|k|)>\<to\>w<rsub|Q>>, the
    free tested readings (<hlink|<verbatim|measured_tends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19>,
    <hlink|<verbatim|exact_tape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L42-L53>).
  </itemize-minus>

  <em|The hypothesis on <math|\<varphi\>>.> It consists of four conditions:

  <\itemize-minus>
    <item><math|\<varphi\>> is a real-analytic implicit solution of
    <math|<math-up|chart><rsub|Q><around|(|w,\<varphi\><around|(|w|)>|)>=<math-up|chart><rsub|Q><around|(|w<rsub|Q>,0|)>>
    near <math|w<rsub|Q>>, with <math|\<varphi\><around|(|w<rsub|Q>|)>=0>.
    Locally the solution set is the graph of <math|\<varphi\>>
    (<hlink|<verbatim|Reports>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L29-L33>).

    <item>For every integer <math|L\<geqslant\>2>,
    <math|\<pi\><rsup|<around|(|0|)>><rsub|Q><around|(|L,m|)>\<to\>w<rsub|Q>>
    as <math|m\<to\>\<infty\>>.

    <item>For every <math|L\<geqslant\>2> and <math|p,j\<geqslant\>0>,
    eventually in <math|m>, all order-<math|j> coupling derivatives at
    <math|0> of the position equations evaluated on the order-<math|p>
    lattice truncation and its image under <math|\<varphi\>> equal those of
    the constant free value. The threshold may depend on <math|L,p,j>.

    <item>Some buffers <math|A<rsub|k>\<to\>0> have <math|1+A<rsub|k>>
    invertible and solve the position equations eventually along <math|X>.
    For every clean degree-four system <math|R> and <math|L\<geqslant\>2>,
    their corrected tested readings differ by <math|o<around|(|1|)>> from
    <math|<math-up|chart><rsub|R><around|(|\<pi\><rsub|R><rsup|<around|(|0|)>><around|(|L,k|)>,\<varphi\><around|(|\<pi\><rsub|Q><rsup|<around|(|0|)>><around|(|L,k|)>|)>|)>>.
  </itemize-minus>

  <em|Proof sketch.>

  <\itemize-minus>
    <item><math|B<rsub|k>=\<varphi\><around|(|m<rsub|Q><around|(|k|)>|)>\<to\>\<varphi\><around|(|w<rsub|Q>|)>=0>.

    <item>By local uniqueness of the implicit solution,
    <math|B<rsub|k>=A<rsub|k>> eventually. This transfers exact solvability
    and the leading comparison from <math|A<rsub|k>> to <math|B<rsub|k>>.

    <item>The required symmetries and unit identity follow from the eventual
    compatibility of <math|U<rsub|k>> in VI.2 and the fact that buffers
    commute with conjugation and signed permutations and kill the unit
    (<hlink|<verbatim|adjusted_own>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L39-L46>,
    <hlink|<verbatim|adjusted_unit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L47-L49>).

    <item>Compatibility with degrees <math|\<leqslant\>3>: <math|1+B> is the
    identity on <math|E<rsub|d>\<subset\>E<rsub|4>> for <math|d\<less\>4>,
    because <math|E<rsub|d>=\<bbb-C\>\<cdot\>1>
    (<hlink|<verbatim|motor_small>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L55-L61>).
  </itemize-minus>

  The full degree-four position conclusion consists of:

  <\itemize-minus>
    <item>for every degree, every clean system and every
    <math|L\<geqslant\>2>, the uncorrected tested data minus the order-zero
    lattice data at spacing <math|L<rsup|-k>> tend to <math|0>; every clean
    square system admits a map <math|\<varphi\>> satisfying the four
    conditions above;

    <item>a clean square degree-four system <math|Q> and such a map
    <math|\<varphi\>> for which VII.3.6(c) holds.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|residency>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43>,
  <hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L29-L30>,
  <hlink|<verbatim|testedMean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L42>,
  <hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98>,
  <hlink|<verbatim|readJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L22>;
  packaged by <hlink|<verbatim|four_on>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53>
  (VIII.1).

  <subsection|4.6 Exclusion of Wick profiles
  (VII.3.7)><label|46-exclusion-of-wick-profiles-vii37>

  <strong|Lemma VII.3.s (expansions; VII.2).> Let <math|\<cal-B\>> be the
  real span of <math|r<rsup|a><around|(|log r|)><rsup|k>> for
  <math|a\<in\>\<bbb-Z\>>, <math|k\<in\>\<bbb-N\>>, on <math|r\<gtr\>0>.
  Every integrated mode kernel, and each of the real and imaginary parts of
  every Wick profile, has an expansion to all orders in <math|\<cal-B\>>: for
  every <math|N\<in\>\<bbb-Z\>> there is <math|u\<in\>\<cal-B\>> with
  <math|f-u=O<around|(|r<rsup|N>|)>> as <math|r\<to\>0<rsup|+>>. <em|Proof
  sketch.>

  <\itemize-minus>
    <item><strong|Reduction to radial moments.> In polar coordinates,
    <math|K<rsub|<math-ss|m>,q,h>=<tfrac|1|2><around*|(|<big|int><rsub|S<rsup|2>>h|)>*M<rsub|j,q>>,
    where
  </itemize-minus>

  <\equation*>
    M<rsub|j,k><around|(|s|)>=<big|int><rsub|0><rsup|\<infty\>>t<rsup|j+2>*E<rsup|k-1>*e<rsup|-s*E>*d*t,<space|2em>E=<sqrt|<math-ss|m><rsup|2>+t<rsup|2>>.
  </equation*>

  <\itemize-minus>
    <item><strong|Relations among the moments.>

    <\itemize-minus>
      <item><math|M<rsub|j,k><rprime|'>=-M<rsub|j,k+1>>;

      <item><math|M<rsub|j,k+2>=<math-ss|m><rsup|2>M<rsub|j,k>+M<rsub|j+2,k>>;

      <item>the Euler identity <math|s*M<rsub|j+2,0>=<around|(|j+3|)>*M<rsub|j,1>>,
      from integration by parts.

      <item>Together they give <math|<around|(|s<rsup|j+3>*M<rsub|j,1>|)><rprime|'>=-<math-ss|m><rsup|2>s<rsup|j+3>*M<rsub|j,0>>.
    </itemize-minus>

    <item><strong|Bootstrap.>

    <\itemize-minus>
      <item>Start from <math|M<rsub|j,0>=O<around|(|s<rsup|-j-2>|)>>.

      <item>If <math|M<rsub|j,0>> has an expansion with remainder
      <math|O<around|(|s<rsup|k>|)>>, <math|k\<geqslant\>-j-2>, integrating
      the weighted equation gives one for <math|M<rsub|j,1>> with remainder
      <math|O<around|(|s<rsup|k+1>|)>>.

      <item>Integrating <math|M<rsub|j,0><rprime|'>=-M<rsub|j,1>> then
      improves the known remainder for <math|M<rsub|j,0>> by at least one
      power. When the remainder to be integrated has order <math|s<rsup|-1>>,
      first weaken it to <math|O<around|(|s<rsup|-2>|)>>; this still suffices
      for the induction.

      <item>The explicit power-log terms have primitives in <math|\<cal-B\>>;
      integrating <math|s<rsup|-1><around|(|log s|)><rsup|k>> raises the
      logarithmic power to <math|k+1>.
    </itemize-minus>

    <item>Products and sums preserve the class.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47>,
  <hlink|<verbatim|euler>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L69-L88>,
  <hlink|<verbatim|derived>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L99-L105>,
  <hlink|<verbatim|basic_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L106-L121>,
  <hlink|<verbatim|moment_expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L122-L131>,
  <hlink|<verbatim|Track.moments_expand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125>,
  <hlink|<verbatim|real_profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22>,
  <hlink|<verbatim|primitives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Gain.lean#L109-L113>.

  <strong|Lemma VII.3.t (no power-log law; VII.2).> Let
  <math|f:<around|(|0,\<infty\>|)>\<to\>\<bbb-R\>> and
  <math|A\<in\>\<bbb-R\>>. Suppose <math|f=u+O<around|(|1|)>> with
  <math|u\<in\>\<cal-B\>> as <math|s\<to\>0<rsup|+>>, and
  <math|s<rsup|8>*log<rsup|2><around|(|1/s|)>*f<around|(|s|)>\<to\>A>. Then
  <math|A=0>. <em|Proof sketch.>

  <\itemize-minus>
    <item>The <math|O<around|(|1|)>> part contributes <math|o<around|(|1|)>>.

    <item>Collect equal power-log terms and discard zero coefficients. Along
    <math|s=2<rsup|-n>>, <math|s<rsup|8>*log<rsup|2><around|(|1/s|)>*u<around|(|s|)>=<big|sum><rsub|t>c<rsub|t>*\<rho\><rsub|t><rsup|n>*n<rsup|k<rsub|t>+2>>,
    with <math|c<rsub|t>\<ne\>0>, <math|\<rho\><rsub|t>=2<rsup|-<around|(|8+a<rsub|t>|)>>>
    and the pairs <math|<around|(|\<rho\><rsub|t>,k<rsub|t>|)>> distinct. The
    empty sum has limit <math|0>.

    <item>Let <math|t<rsup|\<ast\>>> be the lexicographically largest term.

    <\itemize-minus>
      <item>If <math|\<rho\><rsub|t<rsup|\<ast\>>>\<less\>1>, every term
      tends to <math|0>, so <math|A=0>.

      <item>Otherwise its positive growth factor
      <math|\<rho\><rsub|t<rsup|\<ast\>>><rsup|n>*n<rsup|k<rsub|t<rsup|\<ast\>>>+2>>
      diverges and dominates those of all remaining terms. Dividing by this
      factor, the left side tends to <math|0> while the right side tends to
      <math|c<rsub|t<rsup|\<ast\>>>\<ne\>0>, a contradiction.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|no_powerlog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108>.

  <strong|Lemma VII.3.u (VII.3.7).> <em|Proof sketch.>

  <\itemize-minus>
    <item>(a) If <math|G<rsub|\<Theta\>>=W> on
    <math|<around|(|0,\<delta\>|)>>, apply VII.3.t to
    <math|<math-up|Re><space|0.17em>W> and the real part of the hypothesis.
    This gives <math|A=0>, a contradiction.

    <item>(b) Write <math|G<rsub|\<Theta\>><around|(|s|)>=<big|int>e<rsup|-s*p<rsup|0>>*d*\<mu\><around|(|p|)>>,
    using the spectral measure <math|\<mu\>> of <math|\<Theta\>>.

    <\itemize-minus>
      <item>Every compactly supported momentum test <math|\<psi\>> has the
      form <math|<wide|<wide|f|^>|\<bar\>><space|0.17em><wide|g|^>>: choose
      <math|<around|\||<wide|f|^>|\|>=1> on its support and
      <math|<wide|g|^>=<wide|f|^><space|0.17em>\<psi\>>. Thus the
      hypothesized product-test identities give equality on all compactly
      supported momentum tests.

      <item>Approximate <math|e<rsup|-s*p<rsup|0>>> by compactly supported
      Schwartz tests dominated by it (<hlink|<verbatim|approximate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L24-L38>).

      <item>Exponential damping is integrable for the trace spectral measure
      and for every mode product. Dominated convergence on both sides
      identifies <math|G<rsub|\<Theta\>>> with the profile of the description
      on <math|<around|(|0,\<infty\>|)>> (<hlink|<verbatim|reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L40-L54>,
      <hlink|<verbatim|identifies_euclid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73>).

      <item>Then apply (a).
    </itemize-minus>

    <item>The public form uses the same mode kernels and identifies the
    asymptotic constant with <math|3*dim \<frak-g\>/\<pi\><rsup|4>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|euclidean_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80>,
  <hlink|<verbatim|polynomial_excludes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105>,
  <hlink|<verbatim|publicTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44>.

  <subsection|4.7 The formal lattice perturbation
  theory><label|47-the-formal-lattice-perturbation-theory>

  <strong|Definitions VII.3.v.> Fix a finite periodic four-dimensional
  lattice. The perturbation theory uses inversion-odd link potentials,

  <\equation*>
    A<around|(|-x-e<rsub|\<mu\>>,\<mu\>|)>=-A<around|(|x,\<mu\>|)>.
  </equation*>

  Its definitions are:

  <strong|Gauge-fixed linearization and Gaussian measure.>

  The links are <math|U=exp <around|(|A|)>>. The action <math|S> is the
  finite-regulator Wilson term plus the quadratic Feynman gauge-fixing term
  <math|<tfrac|1|4><big|sum><rsub|x><around|\||<math-up|div><space|0.17em>A<around|(|x|)>|\|><rsup|2>>
  (<hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46>).

  The Haar Jacobian <math|J> and the normalized Faddeev\UPopov determinant
  <math|<math-up|FP>> are smooth at <math|0>, with
  <math|J<around|(|0|)>=<math-up|FP><around|(|0|)>=1>. The latter is the
  determinant of the gauge-condition derivative on inversion-even site
  parameters fixed to zero at the root, divided by its flat value
  (<hlink|<verbatim|Orb.FP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/GaugeFix.lean#L94>).
  The matrix determinant, logarithmic determinant and inverse estimates come
  from the matrix calculus listed in the header.

  The centered Gaussian probability has covariance equal to the inverse
  Hessian of this gauge-fixed action at <math|0>
  (<hlink|<verbatim|Orb.data>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31>).

  <strong|Formal series in the coupling.>

  Write <math|S<rsub|j><around|(|A|)>=<around|(|j!|)><rsup|-1>*D<rsup|j>*S<around|(|0|)><around|[|A,\<ldots\>,A|]>>.
  After the rescaling <math|A\<mapsto\>g*A>, the formal weight is

  <\equation*>
    w<around|(|g,A|)>=exp <space|-0.17em><around*|(|-<big|sum><rsub|i\<geqslant\>1>g<rsup|i>*S<rsub|i+2><around|(|A|)>|)><around|(|J<space|0.17em><math-up|FP>|)>*<around|(|g*A|)>,
  </equation*>

  where the last factor denotes its formal Taylor series at <math|g=0>.

  <math|\<bbb-E\><rsub|0>> is the Gaussian expectation, taken
  coefficientwise.

  The normalized expectation is <math|<around|\<langle\>|f|\<rangle\>><rsub|<math-up|pert>>=\<bbb-E\><rsub|0>*<around|(|w*f|)>/\<bbb-E\><rsub|0><around|(|w|)>>
  (<hlink|<verbatim|Orb.weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61>,
  <hlink|<verbatim|Orb.expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L74>,
  <hlink|<verbatim|Orb.normalize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L85>).

  Every coefficient is continuous with at most polynomial growth, hence
  Gaussian-integrable. Since <math|w<around|(|0,A|)>=1>, the denominator has
  constant coefficient <math|1> and is invertible as a formal series.

  <strong|Lattice readers of labels.> Substitute the lattice jet series plus
  <math|i*Z> into each polynomial label, where <math|Z> is an independent
  centered real Gaussian jet with the prescribed covariance, and average in
  <math|Z> separately within each insertion. Multiply these averaged
  insertions and take the normalized formal expectation. The separate
  auxiliary averages implement Wick subtraction without auxiliary
  contractions between different insertions
  (<hlink|<verbatim|Full.column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41>,
  <hlink|<verbatim|Full.amplitude>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L87>).

  <strong|Profiles.> The profile is the lattice Riemann sum

  <\equation*>
    <with|math-display|false|<big|sum><rsub|o>h<rsup|4*r>*f<around|(|\<iota\><rsub|h><around|(|o|)>|)><space|0.17em><math-up|amplitude><around|(|o|)>,<space|2em>h=L<rsup|-m>,<text|side
    >4*L<rsup|m<rsup|2>+m+1>,>
  </equation*>

  where <math|o> ranges over <math|r> lattice sites and
  <math|\<iota\><rsub|h>> takes the chosen integer lifts relative to the
  quarter-side origin and multiplies them by <math|h>
  (<hlink|<verbatim|Full.profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56>).

  The order-zero profiles enter VII.3.r through the convergence theorem of
  VII.1. Their higher coefficients enter the formal position identities and
  the degree-four parity assertion assembled in VIII.1.

  <hlink|<verbatim|Orb.finite_agreement>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Together.lean#L58-L61>
  shows that retaining the interaction series, density series and insertions
  only through coupling order <math|k> preserves every normalized coefficient
  through order <math|k>. The required action Taylor coefficients extend
  through order <math|k+2>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The main calculation is the simultaneous diagonalization of all jet orders
  (VII.3.d\Uh). The Taylor normalization and the sum over ordered form
  indices determine the Kelvin constants and positive pivots; changing either
  convention changes the formulas. Recentring at the inverted separation
  eliminates all lower Taylor coefficients, so positivity follows from a
  triangular change of basis.

  At degree four, the two-point form is indefinite before reflection.
  Rigidity uses its nonzero diagonal rates together with signed-permutation
  symmetry: equal reflection characters force symmetric coefficients and
  equal rates, while the two-point condition forces weighted antisymmetry.
  Full rotational equivariance of the buffer is unnecessary.

  The position comparison is leading-order only. Its formal identities at
  every coupling order follow from the local implicit equation at a finite
  regulator; they give no all-order comparison with the interacting theory.
  The free quotient and its injective columns likewise give no interacting
  rank bound without the comparison estimates of III.11.

  The non-freeness argument is independent of Gram positivity. Its analytic
  input is the power-log expansion of the massive Laplace moments, including
  the remainder estimates needed for integration. It excludes
  inverse-logarithmic leading behavior; logarithms with nonnegative powers
  already occur in free massive kernels.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|notation>>>|<row|<cell|on-shell <math|j>-jets
  (homogeneous Maxwell solutions)>|<cell|<hlink|<verbatim|Sol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L115>>|<cell|<math|<math-up|Sol><rsub|j>>>>|<row|<cell|towers
  of multipoles>|<cell|<hlink|<verbatim|ProbeTower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L69>>|<cell|<math|<math-up|Tow><rsub|n>>>>|<row|<cell|Wick
  polynomials>|<cell|<hlink|<verbatim|WickPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24>,
  <hlink|<verbatim|Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L22>>|<cell|<math|\<cal-W\>=\<bbb-C\><around|[|X<rsub|s>|]>>>>|<row|<cell|linear
  polynomial of a tower>|<cell|<hlink|<verbatim|code>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L16-L23>,
  <hlink|<verbatim|digit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L77>>|<cell|<math|\<ell\><rsub|p>>>>|<row|<cell|encoding
  in a basis of a tower>|<cell|<hlink|<verbatim|encode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L25>>|<cell|<math|\<Phi\><rsub|b>>>>|<row|<cell|free
  moment>|<cell|<hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>,
  <hlink|<verbatim|join>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L28>>|<cell|<math|<around|\<langle\>|P<rsub|1><around|(|x<rsub|1>|)>*\<cdots\>|\<rangle\>><rsub|0>>>>|<row|<cell|reflection
  in <math|z<rsup|\<perp\>>>>|<cell|<hlink|<verbatim|face>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Forms.lean#L103>,
  <hlink|<verbatim|pullSol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L54-L55>,
  <hlink|<verbatim|solO>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Covariance.lean#L159-L163>>|<cell|<math|\<cal-R\><rsub|z>>>>|<row|<cell|reflected
  pairing>|<cell|<hlink|<verbatim|duplex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L54>,
  <hlink|<verbatim|aligned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L49-L52>>|<cell|<math|<around|\<langle\>|P,Q|\<rangle\>><rsub|x,y>>>>|<row|<cell|tower
  Gram form>|<cell|<hlink|<verbatim|towerB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L71-L77>,
  <hlink|<verbatim|scan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L29-L32>>|<cell|<math|B<rsub|z>>>>|<row|<cell|inversion;
  inverted point>|<cell|<hlink|<verbatim|inversePoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L110>,
  <hlink|<verbatim|rr>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L25>>|<cell|<math|I<around|(|z|)>=<wide|z|\<check\>>=z/<around|\<lvert\>|z|\<rvert\>><rsup|2>>>>|<row|<cell|field
  of a multipole>|<cell|<hlink|<verbatim|reply>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L24>>|<cell|<math|R<rsub|P>=s<rsub|j>*I<rsup|\<ast\>>*P>>>|<row|<cell|Kelvin
  constant; pivot>|<cell|<hlink|<verbatim|strength>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L46>,
  <hlink|<verbatim|price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L24>>|<cell|<math|s<rsub|j>>,
  <math|\<pi\><rsub|j><around|(|z|)>>>>|<row|<cell|shifted
  tower>|<cell|<hlink|<verbatim|shifts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L20-L21>,
  <hlink|<verbatim|newLeg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L98-L99>,
  <hlink|<verbatim|shiftAll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L123-L124>>|<cell|<math|\<sigma\><rsub|z>>>>|<row|<cell|two-point
  annihilator>|<cell|<hlink|<verbatim|crash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L81>,
  <hlink|<verbatim|extractVar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L25-L26>>|<cell|<math|D<rsup|x,y><rsub|p>>,
  <math|\<partial\><rsup|y,y<rprime|'>><rsub|s>>>>|<row|<cell|Fock
  weight>|<cell|<hlink|<verbatim|tally>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L41>>|<cell|<math|\<alpha\>!<space|0.17em>d<rsup|\<alpha\>>>>>|<row|<cell|free-field
  map of labels; shell sector>|<cell|<hlink|<verbatim|observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67>,
  <hlink|<verbatim|shellSector>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64>>|<cell|<math|\<omega\><rsub|d>>,
  <math|<math-up|sh><rsub|d>>>>|<row|<cell|field space of the free table;
  embedding>|<cell|<hlink|<verbatim|(freeTable F).Field
  d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>,
  <hlink|<verbatim|Position.E>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L11>,
  <hlink|<verbatim|writes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L70-L71>>|<cell|<math|E<rsub|d>>,
  <math|\<varpi\><rsub|d>>>>|<row|<cell|buffers; corrected
  frame>|<cell|<hlink|<verbatim|buffers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L31-L40>,
  <hlink|<verbatim|motor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L45>,
  <hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L29-L30>>|<cell|<math|<math-up|Buf><rsub|d>>,
  <math|U<rsub|k>*<around|(|1+B|)>>>>|<row|<cell|stationary buffers
  vanish>|<cell|<hlink|<verbatim|Frozen>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L102>,
  <hlink|<verbatim|stationery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L71-L72>>|<cell|rigidity>>|<row|<cell|basis
  and dual basis of <math|E<rsub|4>>>|<cell|<hlink|<verbatim|stand>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110>,
  <hlink|<verbatim|star>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L15>,
  <hlink|<verbatim|portLine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L78-L80>,
  <hlink|<verbatim|coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L59>>|<cell|<math|\<star\><rsub|c>>,
  <math|\<lambda\><rsub|c>>, <math|<math-up|coeff><around|(|c,c<rprime|'>|)>>>>|<row|<cell|rate>|<cell|<hlink|<verbatim|rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L37>>|<cell|<math|\<rho\><around|(|c|)>>>>|<row|<cell|test
  system; free readings; chart>|<cell|<hlink|<verbatim|Conditions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59>,
  <hlink|<verbatim|white>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104>,
  <hlink|<verbatim|chart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L69>,
  <hlink|<verbatim|square>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L106>>|<cell|<math|Q>,
  <math|w<rsub|Q>>, <math|<math-up|chart><rsub|Q>>>>|<row|<cell|measured
  tested readings>|<cell|<hlink|<verbatim|measured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L15>,
  <hlink|<verbatim|exactMean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L19>,
  <hlink|<verbatim|testedMean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L42>>|<cell|<math|m<rsub|Q><around|(|k|)>>>>|<row|<cell|leading
  position comparison>|<cell|<hlink|<verbatim|FourMeters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47>,
  <hlink|<verbatim|Resident>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L23-L30>,
  <hlink|<verbatim|Crest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48>,
  <hlink|<verbatim|BoardAttains>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34>>|<cell|(D15)>>|<row|<cell|mode,
  track, Wick profile>|<cell|<hlink|<verbatim|Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158>,
  <hlink|<verbatim|Track>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164>,
  <hlink|<verbatim|wickProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166>,
  <hlink|<verbatim|atPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L16>>|<cell|<math|K<rsub|<math-ss|m>,q,h>>,
  <math|W>>>|<row|<cell|span of <math|r<rsup|a><around|(|log r|)><rsup|k>>;
  full expansion>|<cell|<hlink|<verbatim|board>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L23>,
  <hlink|<verbatim|Expands>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47>,
  <hlink|<verbatim|AtOrder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L46>>|<cell|<math|\<cal-B\>>>>|<row|<cell|trace
  two-point function>|<cell|<hlink|<verbatim|traceTwo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149>,
  <hlink|<verbatim|euclidean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53>>|<cell|<math|G<rsub|\<Theta\>><around|(|r|)>>>>|<row|<cell|perturbative
  weight, expectation, normalization>|<cell|<hlink|<verbatim|Orb.weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61>,
  <hlink|<verbatim|expect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L74>,
  <hlink|<verbatim|normalize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L85>>|<cell|<math|w>,
  <math|\<bbb-E\><rsub|0>>, <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsub|<math-up|pert>>>>>|<row|<cell|lattice
  perturbative profile>|<cell|<hlink|<verbatim|Full.profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56>,
  <hlink|<verbatim|Position.finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98>>|<cell|<math|\<pi\><rsup|<around|(|n|)>><rsub|Q><around|(|L,m|)>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Image versus intrinsic invariant algebra.> The statements
    use <math|<math-up|sh><rsub|d>=\<omega\><rsub|d><around|(|<math-up|Label><rsub|d>|)>>
    exactly. An intrinsic characterization as all gauge-invariant on-shell
    polynomials of weight at most <math|d> would require a separate
    surjectivity argument; no such characterization is needed here.

    <item><strong|Interacting rank estimates.> The free columns enter the
    construction of determinant trials in III.11, and the free-null
    description enters the upper-rank comparison. The estimates that turn
    these into interacting rank bounds and compatible interacting field
    spaces are inputs from III.11 and III.12; their proofs are outside this
    unit's verification.

    <item><strong|Continuum Wick subtraction.> The auxiliary imaginary
    Gaussian average in VII.3.v is the exact lattice definition. Its
    comparison with continuum Wick-ordered correlations uses VII.1's
    order-zero profile theorem. The underlying regulator-removal and
    Wick-subtraction estimates are accepted as VII.1 inputs; their proofs are
    not checked here.

    <item><strong|Further non-freeness statements.> The larger
    trace-exclusion package also contains exclusions involving embeddings
    into Maxwell Fock spaces and invariant averages. Their proofs are not
    covered by VII.3.7, which treats finite mass-shell contraction profiles
    and their tested two-point identities.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VII.2 The trace of the stress tensor and
  the trace anomaly (notes)|VII-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-3.tm>|<hlink|VII.4 Operator product expansion and
  contact extensions (notes) \<rightarrow\>|VII-4.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.3. The theory is not free: Gram positivity and
    exclusion of free-field profiles \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|1>>
    <associate|2-what-it-uses|<tuple|2|7>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-the-wick-algebra|<tuple|4.1|10>>
    <associate|42-the-tower-gram-form|<tuple|4.2|11>>
    <associate|43-from-towers-to-all-wick-polynomials|<tuple|4.3|13>>
    <associate|44-faithfulness-and-covariance-of-the-free-table|<tuple|4.4|14>>
    <associate|45-degree-four-rigidity-and-the-position-equations|<tuple|4.5|15>>
    <associate|46-exclusion-of-wick-profiles-vii37|<tuple|4.6|17>>
    <associate|47-the-formal-lattice-perturbation-theory|<tuple|4.7|19>>
    <associate|5-where-the-difficulty-lies|<tuple|5|20>>
    <associate|6-notation|<tuple|6|21>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|4.7|19>>
    <associate|auto-12|<tuple|5|20>>
    <associate|auto-13|<tuple|6|21>>
    <associate|auto-14|<tuple|7|21>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|10>>
    <associate|auto-5|<tuple|4.1|10>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|vii3-the-theory-is-not-free-gram-positivity-and-exclusion-of-free-field-profiles--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The Wick algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The tower Gram form
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 From towers to all Wick polynomials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Faithfulness and covariance of the free
      table <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Degree four: rigidity and the position
      equations <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Exclusion of Wick profiles (VII.3.7)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 The formal lattice perturbation theory
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