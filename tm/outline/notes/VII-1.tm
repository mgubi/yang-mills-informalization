<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.2 The free Maxwell stress tensor and
  the local Ward charge (notes)|VI-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-1.tm>|<hlink|VII.2 The trace of the stress tensor and
  the trace anomaly (notes) \<rightarrow\>|VII-2.tm>>

  <ym-title|VII.1. Short distances: convergence to free Maxwell fields \V
  detailed notes><label|vii1-short-distances-convergence-to-free-maxwell-fields--detailed-notes>

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

    <with|par-left|1tab|4.1 The free lattice covariance
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Order zero as a Gaussian recursion
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Tested sums <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Detection on the free side
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 Corrected charts and bookkeeping
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
    The full account of unit VII.1: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/VII-1.tm>.
  </quotation>

  <hlink|Unit page|../units/VII-1.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> VII, identification as Yang\UMills. <strong|Lean:> the chain
  of <hlink|<verbatim|YM/Pert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert>
  (folders <verbatim|Fourier>, <verbatim|Align>, <verbatim|Warp>,
  <verbatim|Rig>, the jet stencils of <verbatim|Lattice>, the statement
  <verbatim|Position/Crest.finite_leading>, and <verbatim|Dense>),
  <hlink|<verbatim|YM/Push/FINITE_DETECTION>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION>,
  <hlink|<verbatim|YM/SharpGram/Weak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak>,
  <hlink|<verbatim|YM/SharpGram/Dense>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense>,
  <hlink|<verbatim|YM/RG08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08>
  (about thirty small sub-folders), <hlink|<verbatim|YM/PertExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PertExtension>,
  <hlink|<verbatim|YM/OPE/Levy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy>.
  <strong|Size:> 8,117 lines. They divide as follows:

  <\itemize-minus>
    <item>3,275 lines in the chain ending in <verbatim|finite_leading>;

    <item>1,006 in <verbatim|FINITE_DETECTION>;

    <item>616 in <verbatim|SharpGram/Weak>;

    <item>about 2,250 in <verbatim|RG08> (<verbatim|Dart> 538,
    <verbatim|Ballast> 338, <verbatim|Vale> 315, the rest under 160 each);

    <item>316 in <verbatim|SharpGram/Dense>, 310 in <verbatim|PertExtension>,
    108 in <verbatim|SharpGram/Matrix>, 95 in <verbatim|Pert/Fourier> and 63
    in <verbatim|OPE/Levy>;

    <item>the remainder in packages of fewer than 40 lines.
  </itemize-minus>

  The main result identifies the order-zero lattice correlations with the
  free Maxwell hierarchy. The short-distance limit of the interacting
  correlations is stated in <hlink|<verbatim|FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39>
  (VI.2), established by <hlink|<verbatim|firstTarget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81>
  in VIII.1. The results are:

  <\itemize-minus>
    <item>the order-zero term of lattice perturbation theory converges, as
    the spacing tends to zero, to the Wick-ordered free Maxwell hierarchy
    evaluated on the on-shell images of the labels (VII.1.1\UVII.1.3);

    <item>the free hierarchy detects every label outside the Maxwell equation
    ideal through a single two-point function at a fixed pair of points
    (VII.1.4\UVII.1.5);

    <item>using this detection, the measuring charts of the construction can
    be corrected to charts that are exactly compatible with the filtration,
    the symmetries and the unit (VII.1.6);

    <item>estimates on backward windows and local expansions used in the rank
    comparison (VII.1.7).
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.>

  <em|Gauge group and continuum objects.>

  <\itemize-minus>
    <item><math|G> is a compact matrix gauge group whose Lie algebra
    <math|\<frak-g\>> is real simple and nonabelian, with an invariant inner
    product and an orthonormal basis of colours.

    <item>A <em|key> <math|a=<around|(|j,\<alpha\>|)>> is a coordinate of the
    real radial-gauge potential space <math|T<rsub|j>>: homogeneous
    <math|\<frak-g\>>-valued 1-forms of polynomial degree <math|j+1> with
    <math|x\<cdot\>A<around|(|x|)>=0>. Curl identifies <math|T<rsub|j>> with
    the closed homogeneous curvature jets of degree <math|j>. Each key has
    engineering weight <math|j+2>.

    <item><math|<math-up|Pol>> is the complex polynomial algebra in the keys.
    <math|V<rsub|d>> consists of its <math|<math-up|Ad><around|(|G|)>>-invariant
    polynomials of total engineering weight at most <math|d>. The free field
    space <math|F<rsub|d>> is the quotient of <math|V<rsub|d>> by the free
    null space (VI.2).

    <item><math|<math-up|Sh><rsub|j>> is the space of curvature tensors,
    symmetric in the <math|j> Taylor slots and antisymmetric in the two form
    indices, whose homogeneous fields solve <math|d*F=d\<ast\>F=0>. Taylor
    coefficients are normalized by <math|1/j!>. Write
    <math|\<kappa\>:<math-up|Sh><rsub|j>\<to\>T<rsub|j>> for the inverse
    radial-gauge curl map (<hlink|<verbatim|gaugeJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L46-L47>).

    <item><math|\<rho\>:<math-up|Pol>\<to\><math-up|WickPol>=\<bbb-C\><around|[|<text|shell
    coordinates>|]>> restricts a polynomial to on-shell jets
    (<hlink|<verbatim|reduceEq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50>).

    <item>The <em|equation ideal> <math|\<cal-I\><rsub|d>=V<rsub|d>\<cap\>ker
    \<rho\>> consists of labels that vanish on every on-shell Taylor tower
    (<hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>).

    <item><math|\<omega\><rsub|d>=\<rho\>\<circ\><math-up|sec><rsub|d>:F<rsub|d>\<to\><math-up|WickPol>>
    is the on-shell image of a label. Here <math|<math-up|sec><rsub|d>> is
    the representative polynomial of VII.3, obtained by projecting radial
    curvature coordinates onto the Maxwell shell
    (<hlink|<verbatim|sections>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L35>,
    <hlink|<verbatim|fixedPolynomial>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L55-L60>).
  </itemize-minus>

  <em|The free Maxwell hierarchy (III.16).>

  <\itemize-minus>
    <item><math|\<Gamma\><around|(|x|)>=1/<around|(|4*\<pi\><rsup|2><around|\||x|\|><rsup|2>|)>>
    (<hlink|<verbatim|Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22>).

    <item>The kernel <hlink|<verbatim|bareCurl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L20>
    is <math|\<delta\><rsub|b*k>*\<partial\><rsub|a>*\<partial\><rsub|m>*\<Gamma\>-\<delta\><rsub|b*m>*\<partial\><rsub|a>*\<partial\><rsub|k>*\<Gamma\>-\<delta\><rsub|a*k>*\<partial\><rsub|b>*\<partial\><rsub|m>*\<Gamma\>+\<delta\><rsub|a*m>*\<partial\><rsub|b>*\<partial\><rsub|k>*\<Gamma\>>.
    This is <math|<around|\<langle\>|F<rsub|a*b><around|(|x|)>*F<rsub|k*m><around|(|y|)>|\<rangle\>>>
    at <math|x-y> for <math|F=d*A>, where <math|A> is the Feynman-gauge free
    field with <math|<around|\<langle\>|A<rsup|c><rsub|\<mu\>><around|(|x|)>*A<rsup|c<rprime|'>><rsub|\<nu\>><around|(|y|)>|\<rangle\>>=\<delta\><rsup|c*c<rprime|'>>*\<delta\><rsub|\<mu\>*\<nu\>>*\<Gamma\>*<around|(|x-y|)>>.

    <item>For linear forms <math|P> on <math|<math-up|Sh><rsub|j>> and
    <math|Q> on <math|<math-up|Sh><rsub|l>>,
    <math|K<around|(|P,Q|)>*<around|(|x-y|)>> is <math|P> applied to the
    <math|j>-jet in <math|x> and <math|Q> to the <math|l>-jet in <math|y> of
    this kernel, colour-diagonal (<hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>).
    The value is independent of extensions of <math|P,Q> to full curvature
    tensors, because the kernel solves the free equations in each variable.

    <item>For a key <math|a>, write <math|x<rsub|a>> for its real coordinate
    functional on <math|T<rsub|j>> and <math|\<kappa\><rsub|a>=x<rsub|a>\<circ\>\<kappa\>>,
    and write <math|K<rsub|a*b>=K<around|(|\<kappa\><rsub|a>,\<kappa\><rsub|b>|)>>.
    The Taylor coefficients in both legs include their factorial
    denominators; differentiation at the second endpoint contributes
    <math|<around|(|-1|)><rsup|l>>.

    <item>The <em|Wick moment> <math|\<cal-W\><rsub|x><around|(|q<rsub|1>,\<ldots\>,q<rsub|r>|)>>,
    for <math|x\<in\><math-up|Conf><rsub|r>> and
    <math|q<rsub|i>\<in\><math-up|WickPol>>, is multilinear
    (<hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>).
    On monomials it is the sum, over perfect matchings of the variable
    occurrences that never pair two occurrences at the same point, of the
    product of the entries <math|K<around|(|\<cdummy\>,\<cdummy\>|)>*<around|(|x<rsub|i>-x<rsub|j>|)>>.
    It is the correlation of the Wick-ordered products
    <math|:<space|-0.17em>q<rsub|i><space|-0.17em>:<around|(|x<rsub|i>|)>> of
    the Gaussian jet field with covariance <math|K>.

    <item>The free hierarchy of the labels is
    <math|x\<mapsto\>\<cal-W\><rsub|x><around|(|\<omega\><rsub|d>*p<rsub|1>,\<ldots\>,\<omega\><rsub|d>*p<rsub|r>|)>>
    (<hlink|<verbatim|Ward.disc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23>
    of the free table).
  </itemize-minus>

  <em|The lattice prescription at order zero (definitions from VII.3).>

  <\itemize-minus>
    <item><math|\<Lambda\><rsub|N>=<around|(|\<bbb-Z\>/N|)><rsup|4>> with
    <math|N> even, <math|N\<geqslant\>4>.

    <item>The field space <math|\<cal-A\><rsub|N>> consists of
    <math|\<frak-g\>>-valued link variables that are odd under the point
    reflection: <math|A<around|(|-x-e<rsub|i>,i|)>=-A<around|(|x,i|)>>, i.e.
    <math|A> is invariant under <math|x\<mapsto\>-x> as a 1-form
    (<hlink|<verbatim|LinkP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111>).

    <item>The quadratic form <math|<math-ss|Q><rsub|N><around|(|A|)>=<tfrac|1|2><around*|(|<big|sum><rsub|x,i\<less\>j><around|\||<math-up|curl><rsub|i*j>A<around|(|x|)>*<around|\||<rsup|2>+<big|sum><rsub|x>|\|><math-up|div>A<around|(|x|)>|\|><rsup|2>|)>>
    is the Hessian at the identity of the Wilson action plus the Feynman
    gauge-fixing term <math|<tfrac|1|4><big|sum><around|\||<math-up|div>A|\|><rsup|2>>
    (<hlink|<verbatim|form>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78>,
    <hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46>).

    <item><math|<math-ss|Q><rsub|N>> is positive definite on
    <math|\<cal-A\><rsub|N>>: a closed and divergence-free field is constant,
    and a reflection-odd constant field is zero. <math|\<mu\><rsub|N>> is the
    centred Gaussian with density proportional to <math|exp
    <around|(|-<math-ss|Q><rsub|N><around|(|A|)>/2|)>>
    (<hlink|<verbatim|data>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31>).

    <item>Expectations are formal power series in the coupling. The
    interaction exponent has order-<math|n> coefficient equal to minus the
    order-<math|<around|(|n+2|)>> action coefficient for
    <math|n\<geqslant\>1>, and zero constant coefficient. Its exponential is
    multiplied by the Taylor series of the Haar Jacobian and Faddeev\UPopov
    density. Each jet-coordinate series uses its
    order-<math|<around|(|n+1|)>> Taylor coefficient at order <math|n>
    (<hlink|<verbatim|weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61>,
    <hlink|<verbatim|seriesLex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Readers.lean#L32>).
    Order zero is therefore a <math|\<mu\><rsub|N>>-expectation;
    <math|<around|\<langle\>|\<cdummy\>|\<rangle\>><rsup|<around|(|0|)>>>
    denotes the order-zero coefficient.

    <item><math|\<ell\><rsup|h><rsub|x>:\<cal-A\><rsub|N>\<to\>T<rsub|j>> is
    the radial-gauge image of the linear lattice curvature jet at site
    <math|x> (<hlink|<verbatim|slope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38>).
    It is obtained from the <math|j>-fold forward difference of the plaquette
    curl divided by <math|j!> by symmetrization and the radial-gauge map,
    scaled by <math|h<rsup|-<around|(|j+2|)>>> and averaged over the
    hyperoctahedral group <math|W<rsub|4>> of signed axis permutations.
    <math|\<ell\><rsup|h><rsub|x,a>> is its <math|a>-th coordinate.

    <item>The order-zero lattice representative of a polynomial
    <math|p\<in\><math-up|Pol>> using only keys of rank at most <math|d>, at
    <math|o> is
  </itemize-minus>

  <\equation*>
    R<rsub|h><around|(|p,o|)><around|(|A|)>=\<bbb-E\><rsub|\<xi\>>*<space|0.17em>p*<around*|(|\<ell\><rsup|h><rsub|o><around|(|A|)>+i*\<xi\>|)>,
  </equation*>

  where <math|\<xi\>> is an independent centred Gaussian on the keys of rank
  <math|\<leqslant\>d> with covariance

  <\equation*>
    S<rsub|h><around|(|a,b|)>=<around|(|2*\<pi\>|)><rsup|-4>*<big|int><rsub|<around|[|-\<pi\>,\<pi\>|]><rsup|4>><wide|\<Delta\>|^><around|(|k|)><rsup|-1>*<big|sum><rsub|c>\<lambda\><rsub|a><around|(|c,k|)>*\<lambda\><rsub|b><around|(|c,k|)>*<space|0.17em>d*k.
  </equation*>

  Here <math|<wide|\<Delta\>|^><around|(|k|)>=<big|sum><rsub|i>4*sin<rsup|2><around|(|k<rsub|i>/2|)>>,
  <math|c> runs over cosine/sine, axis and colour channels, and
  <math|\<lambda\><rsub|a><around|(|c,\<cdot\>|)>> is
  <math|\<ell\><rsup|h><rsub|0,a>> applied to the corresponding plane wave on
  <math|\<bbb-Z\><rsup|4>>. So <math|S<rsub|h>> is the covariance of the jet
  stencils at one site for the Feynman-gauge Gaussian on the infinite lattice
  <math|\<bbb-Z\><rsup|4>>, and <math|R<rsub|h><around|(|p,o|)>=<space|0.17em>:<space|-0.17em>p<around|(|\<ell\><rsup|h><rsub|o>|)><space|-0.17em>:<rsub|S<rsub|h>>>
  is Wick-ordered with respect to the infinite-lattice self-contraction
  (<hlink|<verbatim|column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41>,
  <hlink|<verbatim|link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50>).

  <\itemize-minus>
    <item><strong|Regulators.> For an integer <math|L\<geqslant\>2> set
    <math|h<rsub|m>=L<rsup|-m>> and <math|N<rsub|m>=4*L<rsup|m<rsup|2>+m+1>>.
    Lattice points are reported relative to the centre
    <math|c<rsub|m>=<around|(|N<rsub|m>/4,\<ldots\>,N<rsub|m>/4|)>>, through
    <math|o\<mapsto\>h<rsub|m>*<around|(|o-c<rsub|m>|)>> with representatives
    in <math|<around|(|-N<rsub|m>/2,N<rsub|m>/2|]><rsup|4>>.

    <item><strong|Profile.> For <math|f:<around|(|\<bbb-R\><rsup|4>|)><rsup|r>\<to\>\<bbb-C\>>
    and <math|p\<in\>F<rsub|d><rsup|<space|0.17em>r>>,
  </itemize-minus>

  <\equation*>
    \<Pi\><rsub|m><around|(|f;p|)>=h<rsub|m><rsup|4*r>*<big|sum><rsub|o\<in\>\<Lambda\><rsub|N<rsub|m>><rsup|r>>f*<around*|(|h<rsub|m>*<around|(|o-c<rsub|m>|)>|)><space|0.17em><around*|\<langle\>|<big|prod><rsub|j>R<rsub|h<rsub|m>><around|(|<math-up|sec><rsub|d><space|0.17em>p<rsub|j>,o<rsub|j>|)>|\<rangle\>><rsup|<around|(|0|)>><rsub|N<rsub|m>>
  </equation*>

  (<hlink|<verbatim|profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56>,
  <hlink|<verbatim|row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L41-L42>).

  <\itemize-minus>
    <item><strong|Itinerary.> An itinerary is a sequence
    <math|<around|(|N<rsub|i>,h<rsub|i>|)>> with <math|N<rsub|i>> even,
    <math|h<rsub|i>\<gtr\>0>, <math|N<rsub|i>*h<rsub|i>> a positive integer
    tending to <math|\<infty\>>, <math|h<rsub|i>\<to\>0>, and
    <math|N<rsub|i>*h<rsub|i><rsup|k>\<to\>\<infty\>> for every
    <math|k\<in\>\<bbb-N\>> (<hlink|<verbatim|Itinerary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59>).
    Sites <math|o<rsub|i>\<in\>\<Lambda\><rsub|N<rsub|i>>> are <em|homing> to
    <math|z> if <math|h<rsub|i>*<around|(|o<rsub|i>-c<rsub|N<rsub|i>>|)>\<to\>z>
    (<hlink|<verbatim|Home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53>).
  </itemize-minus>

  <strong|Proposition VII.1.1 (regulator removal at order zero).> Fix an
  integer <math|L\<geqslant\>2>, <math|d,r\<in\>\<bbb-N\>>, label frames, and
  <math|p<rsub|1>,\<ldots\>,p<rsub|r>\<in\>F<rsub|d>>. Let <math|f> be
  continuous with compact support and <math|<math-up|supp><space|0.17em>f\<subset\><math-up|Conf><rsub|r>>,
  where support is closed. Then

  <\equation*>
    lim<rsub|m\<to\>\<infty\>> \<Pi\><rsub|m><around|(|f;p|)>=<big|int>f<around|(|x|)>*<space|0.17em>\<cal-W\><rsub|x><around|(|\<omega\><rsub|d>*p<rsub|1>,\<ldots\>,\<omega\><rsub|d>*p<rsub|r>|)>*<space|0.17em>d*x.
  </equation*>

  In board form: let <math|Q> be a position board whose profiles are smooth
  test functions compactly supported in <math|<math-up|Conf>> ("clean
  profiles"). Then the order-zero board readings converge to the free
  readings, slot by slot and for every tuple of basis labels. <em|Status:>
  theorem. There is no hypothesis on the construction; it concerns lattice
  Gaussian integrals and the continuum kernel only. <em|Lean:>
  <hlink|<verbatim|Rig.zerothProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69>.
  Board form: <hlink|<verbatim|Position.finite_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16>,
  using the definitions <hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98>,
  <hlink|<verbatim|white>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104>
  and <hlink|<verbatim|CleanProfiles>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L13>
  (all VII.3).

  <strong|Proposition VII.1.2 (pointwise convergence of order-zero
  correlations).> Let <math|<around|(|N<rsub|i>,h<rsub|i>|)>> be an itinerary
  with <math|4\<mid\>N<rsub|i>>. Let <math|z\<in\><math-up|Conf><rsub|r>>,
  and let <math|o<rsub|i,j>\<in\>\<Lambda\><rsub|N<rsub|i>>> be homing to
  <math|z<rsub|j>> for each <math|j>. Then for all
  <math|p<rsub|1>,\<ldots\>,p<rsub|r>\<in\>F<rsub|d>>,

  <\equation*>
    <around*|\<langle\>|<big|prod><rsub|j>R<rsub|h<rsub|i>><around|(|<math-up|sec><rsub|d>p<rsub|j>,o<rsub|i,j>|)>|\<rangle\>><rsup|<around|(|0|)>><rsub|N<rsub|i>>\<longrightarrow\>\<cal-W\><rsub|z><around|(|\<omega\><rsub|d>*p<rsub|1>,\<ldots\>,\<omega\><rsub|d>*p<rsub|r>|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Warp.row_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68>,
  through <hlink|<verbatim|poly_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63>
  and <hlink|<verbatim|earth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32>.

  <strong|Proposition VII.1.3 (corrected two-leg covariance).> Let
  <math|<around|(|N<rsub|i>,h<rsub|i>|)>> be an itinerary with
  <math|4\<mid\>N<rsub|i>>. Let <math|\<iota\>> be any index set, let
  <math|z:\<iota\>\<to\>\<bbb-R\><rsup|4>> be injective, and for every
  <math|j\<in\>\<iota\>> let <math|o<rsub|i,j>> be sites homing to
  <math|z<rsub|j>>. For indices <math|j,l\<in\>\<iota\>> and arbitrary keys
  <math|a,b>, define

  <\equation*>
    \<kappa\><rsub|h><around|(|j,a;l,b|)>=<math-up|Cov><rsub|\<mu\><rsub|N>><around*|(|\<ell\><rsup|h><rsub|o<rsub|j>,a>,\<ell\><rsup|h><rsub|o<rsub|l>,b>|)>-\<delta\><rsub|j*l>*<space|0.17em>S<rsub|h><around|(|a,b|)>.
  </equation*>

  Then

  <\equation*>
    \<kappa\><rsub|h<rsub|i>><around|(|j,a;l,b|)>\<to\><choice|<tformat|<table|<row|<cell|K<rsub|a*b>*<around|(|z<rsub|j>-z<rsub|l>|)>,>|<cell|j\<ne\>l,>>|<row|<cell|0,>|<cell|j=l.>>>>>
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Align.corrected_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44>,
  from <hlink|<verbatim|orbit_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88>,
  <hlink|<verbatim|orbit_contact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95>
  and <hlink|<verbatim|shell_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113>.

  <strong|Proposition VII.1.4 (two-point detection).> Let
  <math|e<rsub|<math-up|t>>> be the unit vector of the time axis,
  <math|\<sigma\>> the time reflection <math|x<rsub|<math-up|t>>\<mapsto\>-x<rsub|<math-up|t>>>
  acting on labels, and <math|<wide|v|\<bar\>>> the complex conjugate label.
  If <math|v\<in\>V<rsub|d>\<setminus\>\<cal-I\><rsub|d>>, then

  <\equation*>
    <math-up|Re><space|0.27em>\<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around*|(|\<rho\>*v,\<rho\><around|(|\<sigma\><wide|v|\<bar\>>|)>|)>\<gtr\>0.
  </equation*>

  More generally, let <math|\<Phi\>> and <math|\<Psi\>> be the algebra maps
  sending shell coordinates to the diagonalizing and reflected probe
  variables of Lemma VII.1.m. For every nonzero
  <math|q\<in\><math-up|WickPol>>, <math|<math-up|Re><space|0.17em>\<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around|(|\<Phi\>*q,\<Psi\><wide|q|\<bar\>>|)>\<gtr\>0>.
  Here <math|\<Phi\>> is surjective, and <math|\<rho\><around|(|\<sigma\><wide|v|\<bar\>>|)>=\<Psi\><around|(|<wide|q|\<bar\>>|)>>
  whenever <math|\<rho\>*v=\<Phi\>*q>. <em|Status:> theorem, about the free
  kernel only. No Wilson family and no reflection positivity of a measure is
  involved. <em|Lean:> <hlink|<verbatim|Free.two_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155>,
  <hlink|<verbatim|Free.positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149>,
  <hlink|<verbatim|detectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26>.

  <strong|Proposition VII.1.5 (Kelvin formulas for the free kernel).>

  (a) Let <math|A> be a real symmetric <math|j>-tensor on
  <math|\<bbb-R\><rsup|4>> whose diagonal
  <math|x\<mapsto\>A<around|(|x,\<ldots\>,x|)>> is harmonic. Then for
  <math|x\<ne\>0>

  <\equation*>
    <frac|1|j!>*A<around|(|\<partial\>,\<ldots\>,\<partial\>|)>*<space|0.17em>\<Gamma\><around|(|x|)>=<frac|<around|(|-2|)><rsup|j>|4*\<pi\><rsup|2>><space|0.17em><around|\||x|\|><rsup|-2*<around|(|j+1|)>>*A<around|(|x,\<ldots\>,x|)>.
  </equation*>

  (b) Let <math|Y\<in\><math-up|Sh><rsub|j>> be <math|\<frak-g\>>-valued,
  with homogeneous Maxwell solution <math|Y<rsup|\<natural\>><around|(|x|)>=Y<around|(|x,\<ldots\>,x|)>>.
  Contract the first leg of the curvature kernel at <math|x> with <math|Y>,
  using its rank-<math|j> Taylor coefficient and summing over colours,
  ordered form indices and jet indices, without a factor <math|1/2>. For
  <math|x\<ne\>0> the result equals

  <\equation*>
    \<gamma\><rsub|j>*<space|0.17em><around|(|\<iota\><rsup|\<ast\>>*Y<rsup|\<natural\>>|)><around|(|x|)>,<space|2em>\<gamma\><rsub|j>=<frac|2<rsup|j>*<around|(|j+1|)>*<around|(|j+2|)>|\<pi\><rsup|2>>.
  </equation*>

  Here <math|\<iota\><around|(|x|)>=-x/<around|\||x|\|><rsup|2>> and
  <math|\<iota\><rsup|\<ast\>>> is the pullback of 2-forms:

  <\equation*>
    <around|(|\<iota\><rsup|\<ast\>>*F|)><rsub|k*m><around|(|x|)>=<around|\||x|\|><rsup|-4>*<around*|[|B<rsub|k*m>-2<around|\||x|\|><rsup|-2>*<around*|(|x<rsub|k>*<big|sum><rsub|a>x<rsub|a>*B<rsub|a*m>-x<rsub|m>*<big|sum><rsub|a>x<rsub|a>*B<rsub|a*k>|)>|]>,<space|2em>B<rsub|a*b>=F<rsub|a*b>*<around|(|\<iota\>*x|)>.
  </equation*>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Kelvin.harmonic_Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180>
  (with <hlink|<verbatim|R>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L83>
  <math|=<around|\||x|\|><rsup|-2>>), and
  <hlink|<verbatim|Kelvin.response_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176>
  (with <hlink|<verbatim|inverted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65>
  and <hlink|<verbatim|gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92>).

  <strong|Proposition VII.1.6 (corrected measuring charts).> Fix a Wilson
  family <math|C> with a realization of its defining conditions, a
  construction record <math|U> with limit table <math|S> and extraction order
  <math|f>, and OPE table data as in VII.4. Let <math|D\<in\>\<bbb-N\>>, and
  let <math|u> be a nontrivial filter on <math|\<bbb-N\>\<times\>\<bbb-N\>>
  finer than the extraction filter of <math|f>.

  Assume a weak measuring portfolio <math|X> through degree <math|D>. Its
  data include the observable bounds, Haar bounds, a Haar chart ratio, three
  price panels, and a constant dominating the label costs through <math|D>.
  It supplies an index <math|g<around|(|k|)>\<to\>\<infty\>>,
  finite-regulator linear label maps, and limiting maps
  <math|\<Phi\><rsub|k,d>> on the reference label-coordinate spaces.
  Eventually in <math|k>:

  <\itemize-minus>
    <item><math|g<around|(|k|)>\<leqslant\>k> and
    <math|<math-up|scale><around|(|k|)>\<leqslant\><math-up|scale><around|(|g<around|(|k|)>|)>+log
    <wide|\<beta\>|^><rsub|k>>;

    <item>the finite-regulator maps satisfy the simultaneous rank-comparison
    conditions through <math|D>: every degree is available at step
    <math|g<around|(|k|)>>, the block ratio is below the monitor bound, the
    maps are tested and equivariant, and all three panels supply the required
    observable and remainder estimates;

    <item>their rescaled read-out maps converge to <math|\<Phi\><rsub|k,d>>
    along the same filter <math|u>, for every <math|d\<leqslant\>D> and every
    reference label.
  </itemize-minus>

  Let <math|\<lambda\><rsub|d>> be the fixed equivariant representative of
  the free quotient in reference label coordinates, and let
  <math|\<pi\><rsup|S><rsub|d>> be projection to <math|S<rsub|d>>. Set
  <math|D<rsub|k,d>=\<pi\><rsup|S><rsub|d>*\<Phi\><rsub|k,d>*\<lambda\><rsub|d>>.
  Define <math|\<chi\><rsub|k><around|(|d|)>=D<rsub|k,d>> when this map is
  bijective, and choose a fixed isomorphism <math|F<rsub|d>\<to\>S<rsub|d>>
  otherwise. Then there are complex linear isomorphisms
  <math|p<rsub|k><around|(|d|)>:F<rsub|d>\<to\>S<rsub|d>>, for every
  <math|k,d\<in\>\<bbb-N\>>, such that:

  <\enumerate>
    <item>For all sufficiently large <math|k>, simultaneously for
    <math|d\<leqslant\>D>, <math|p<rsub|k><around|(|d|)>> commutes with
    signed permutations and conjugation and preserves the unit. For all
    <math|d\<leqslant\>e\<leqslant\>D>,

    <\equation*>
      p<rsub|k><around|(|e|)>\<circ\>\<iota\><rsup|F><rsub|d,e>=\<iota\><rsup|S><rsub|d,e>\<circ\>p<rsub|k><around|(|d|)>.
    </equation*>

    <item>For every <math|d\<leqslant\>D> and <math|v\<in\>F<rsub|d>>,

    <\equation*>
      \<chi\><rsub|k><around|(|d|)><rsup|-1>*p<rsub|k><around|(|d|)>*v\<longrightarrow\>v.
    </equation*>
  </enumerate>

  The simultaneous finite-regulator conditions are
  <hlink|<verbatim|Poised>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/East/Plume.lean#L23-L27>,
  and the representative is <hlink|<verbatim|ladder>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Basis.lean#L115-L117>.

  <em|Status:> theorem under the stated construction and portfolio
  hypotheses. Lemma VII.1.q supplies the required two-point convergence.
  <em|Lean:> <hlink|<verbatim|Weak.Portfolio.tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>,
  with <hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49>
  and <hlink|<verbatim|chart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79>.

  <strong|Proposition VII.1.7 (backward windows and local expansions).>

  (a) Fix the RG constants of III.2, Haar bounds, a Haar chart ratio
  satisfying the local ratio bounds, and a relay of admissible price panels
  with activation bounds <math|u<rsub|j>\<leqslant\>L<rsub|j>>. Each degree
  is eventually active; its three panels satisfy the comparison inequalities
  and the analytic bounds required for the rank estimates. Let <math|U> be a
  wait with window

  <\equation*>
    w<rsub|j><around|(|t|)>=<around*|\<lfloor\>|<frac|log
    <around|(|<wide|\<beta\>|\<bar\>>+c<rsub|G>*t|)>|log
    L<rsub|j>>|\<rfloor\>>,
  </equation*>

  where <math|c<rsub|G>\<gtr\>0> is the coupling slope. There is a wait
  <math|W> with no smaller minimum stage length or entry thresholds and with
  the same window, together with panels and cost bounds for every degree,
  having the following property. For every realized Wilson family satisfying
  <math|W>, the prescribed observable bounds and the
  polynomial-representative conditions, and every <math|D>, all sufficiently
  late steps <math|k> whose scale exceeds the stage entry threshold and whose
  backward window has length at most <math|k> and lies in one stage admit
  simultaneous finite-regulator rank-comparison data through <math|D>, as in
  VII.1.6. The returned panels satisfy the three comparison inequalities at
  every degree, and each cost bound dominates the label costs through that
  degree.

  (b) Let <math|U> have the window in (a), and let <math|V> have no smaller
  stage-length bounds, entry thresholds or windows. Assume, for every stage
  <math|j>, that the entry threshold of <math|V> at <math|j> is at least that
  of <math|U> at <math|j+1>, and that <math|<wide|\<beta\>|\<bar\>>+c<rsub|G>*t\<geqslant\>c<rsub|G>>
  above the <math|V> threshold at <math|j>. Every RG trajectory satisfying
  <math|V> admits <math|g<around|(|k|)>\<to\>\<infty\>> such that eventually
  <math|g<around|(|k|)>\<leqslant\>k>, the step <math|g<around|(|k|)>> is
  above its <math|U> entry threshold, its backward <math|U> window has length
  at most <math|g<around|(|k|)>> and lies in one stage, and

  <\equation*>
    <math-up|scale><around|(|k|)>\<leqslant\><math-up|scale><around|(|g<around|(|k|)>|)>+log
    <wide|\<beta\>|^><rsub|k>.
  </equation*>

  These threshold conditions are <hlink|<verbatim|LateEnough>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L27-L28>.

  (c) Fix a finite index set <math|I>, a marker subset <math|T\<subset\>I>,
  an anchor <math|p\<in\>T>, <math|D,k,E,q\<in\>\<bbb-N\>>, a support
  parameter <math|R\<in\>\<bbb-R\>>, and <math|v\<gtr\>0>, with
  <math|q\<leqslant\>k+E>. There are <math|0\<less\>w\<leqslant\>v> and
  <math|C<rsub|0>\<geqslant\>0>, independent of the layout and its bound
  <math|B>, with the following property. Suppose a layout has marker weights
  <math|a<rsub|i>\<in\>\<bbb-N\>> with <math|<big|sum><rsub|i\<in\>T>a<rsub|i>=k>,
  depends only on the occupied markers, vanishes on the empty marker set, and
  satisfies the prescribed tensor symmetry, rank and analytic realization
  conditions (<hlink|<verbatim|Sense>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Creek/Step.lean#L16-L20>).
  Suppose also that every coefficient of expansion order
  <math|i\<leqslant\>E>, at every leg rank, has the anchored
  <math|v>-weighted absolute-sum bound <math|B>. Translate the root to
  <math|x<rsub|p>> and shift the order by <math|q>, setting coefficients with
  <math|q+n\<less\>k> to zero. Through leg rank <math|k+E-q>, the resulting
  coefficients are exactly the Taylor coefficients of a finite sum of
  curvature expressions of ranks

  <\equation*>
    k<math-plus|<wide|-|\<dot\>>>q,\<ldots\>,k+E-q,
  </equation*>

  where <math|k<math-plus|<wide|-|\<dot\>>>q=max <around|(|k-q,0|)>>. Each
  expression depends only on <math|T>, retains the required symmetries and
  analytic realization, and has the anchored absolute-sum bound
  <math|B*C<rsub|0>> with weight <math|exp
  <around|(|w<space|0.17em><math-up|girth>|)>>, including the exponential
  weight on relative marker positions.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|Dense.slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>,
  <hlink|<verbatim|Dense.nearby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165>,
  <hlink|<verbatim|Dart.coin_pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><em|VII.3 (the lattice prescription and position boards):>

    <\itemize-minus>
      <item>the reflection-odd field space, the Feynman-gauge form, the
      Gaussian <math|\<mu\><rsub|N>> and the coupling series;

      <item>the jet stencils (<hlink|<verbatim|wideLinear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L33-L35>),
      the Wick-subtraction covariance <math|S<rsub|h>>
      (<hlink|<verbatim|shellCov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59>)
      and the on-shell representatives <hlink|<verbatim|physicalLabel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Lifts.lean#L78>;

      <item>rows, profiles and the board objects
      <hlink|<verbatim|Conditions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59>,
      <hlink|<verbatim|finite>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98>
      and <hlink|<verbatim|white>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104>.
    </itemize-minus>

    <item><em|III.16 (free Maxwell analysis):> the shells,
    <hlink|<verbatim|reduceEq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50>,
    <hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>,
    <math|\<Gamma\>>, the curvature kernel
    <hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>
    and the Wick moment <hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>.

    <item><em|VI.2 and VI.1:> the free table and its label spaces
    <math|F<rsub|d>> (VI.2); the hierarchy as a function of positions,
    <hlink|<verbatim|Ward.disc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23>
    (VI.1).

    <item><em|II.1 and I.1:> labels, keys and Taylor jets (II.1); the lattice
    and the signed permutations <math|W<rsub|4>> (I.1).

    <item><em|For VII.1.6:>

    <\itemize-minus>
      <item>the construction record (VIII.1) and the limit table <math|S>;

      <item>the OPE table work items, of which only the system part is used
      (VII.4);

      <item>the chart-correction machinery
      <hlink|<verbatim|retraction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55>,
      <hlink|<verbatim|adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66>,
      <hlink|<verbatim|rotateChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140>
      and <hlink|<verbatim|Graded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172>
      (VII.5);

      <item>the rank-comparison error bound and its decay
      <hlink|<verbatim|Ship.diminishes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Allowance.lean#L34-L37>
      (III.11), and the chessboard-to-moment estimate for observables
      <hlink|<verbatim|Read.full_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250>
      (III.11);

      <item>the lemma <hlink|<verbatim|tendsto_of_fitted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L34-L57>
      (VI.1): if <math|f<rsub|k>,g:E\<to\>F> are linear maps between
      finite-dimensional complex normed spaces, <math|f<rsub|k>\<to\>g>
      pointwise, <math|g> is injective and
      <math|f<rsub|k><around|(|w<rsub|k>|)>\<to\>g<around|(|z|)>>, then
      <math|w<rsub|k>\<to\>z>.
    </itemize-minus>

    <item><em|For VII.1.7:> stage-length bounds, entry thresholds, backward
    windows, and the RG scale sequence (III.2); price panels and the linear
    checks on their exponents (II.2).
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Gaussian moments and Wick's theorem in recursive form; Wick
    ordering as <math|:<space|-0.17em>p<around|(|\<varphi\>|)><space|-0.17em>:<space|0.17em>=\<bbb-E\><rsub|\<xi\>>*<space|0.17em>p*<around|(|\<varphi\>+i*\<xi\>|)>>.
    References: Glimm\UJaffe, <em|Quantum Physics>, Ÿ6.3 and Ÿ8.6; B. Simon,
    <em|The <math|P<around|(|\<varphi\>|)><rsub|2>> Euclidean (Quantum) Field
    Theory>, Ch. I.

    <item>Fourier analysis on <math|<around|(|\<bbb-Z\>/N|)><rsup|4>>;
    asymptotics of the lattice Green function and its finite differences
    (Lawler\ULimic, <em|Random Walk: A Modern Introduction>, Ch. 4); power
    counting for lattice Feynman integrals (T. Reisz, <em|Commun. Math.
    Phys.> 116 (1988) 81).

    <item>Riemann sums for continuous compactly supported functions;
    dominated convergence.

    <item>Derivatives of <math|<around|\||x|\|><rsup|2-n>> against harmonic
    polynomials (Hobson's formula; E. W. Hobson, <em|The Theory of Spherical
    and Ellipsoidal Harmonics>, 1931); the Kelvin transform
    (Axler\UBourdon\URamey, <em|Harmonic Function Theory>, Ch. 4); invariance
    of the source-free Maxwell equations under inversion (Bateman,
    Cunningham, 1910).
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>VII.1.1\UVII.1.5 use the stated gauge, label and regulator data and
    no assumptions on an interacting construction.

    <item>VII.1.6 imports the construction record, the portfolio estimates at
    step <math|g<around|(|k|)>>, the error bound of III.11, which tends to
    <math|0>, and the OPE work items.

    <item>VII.1.7 imports the RG scale sequence (stage lengths
    <math|L<rsub|j>>, the scale and <math|<wide|\<beta\>|^><rsub|k>>) from
    III.2.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  At order zero, the normalized perturbative expectation is Gaussian. Wick
  ordering introduces an independent imaginary Gaussian for each insertion,
  so the pair contraction is the torus stencil covariance minus the
  infinite-lattice self-covariance at a common insertion. Fourier analysis
  identifies the contractions at separated points with the Maxwell kernel. At
  one insertion, the remaining finite-volume error tends to zero because the
  period grows faster than every inverse power of the spacing. The lattice
  moments and the continuum Wick moments satisfy the same deletion recursion;
  induction on the number of distinguishable legs gives VII.1.2. Compactness
  and dominated convergence then give the tested limit VII.1.1.

  For detection, inversion and translation turn a homogeneous Maxwell
  solution of degree <math|j> into a field whose Taylor expansion at the
  detector begins at order <math|j>. Adding the corresponding lower-rank
  probes gives a triangular change of variables. In an orthogonal shell
  basis, the reflected one-leg pairing becomes diagonal with positive
  entries. Wick's rule then makes distinct monomials orthogonal and gives
  every monomial a positive squared norm, proving VII.1.4.

  The interacting comparison uses the rank estimates of III.11. They imply
  convergence of all mixed two-point readings in one portfolio. Free
  detection makes the raw charts eventually invertible and forces their
  filtration defects to tend to zero. Fixed equivariant retractions of the
  free inclusions remove these defects recursively, giving the exactly
  compatible charts of VII.1.6. Proposition VII.1.7 supplies the
  backward-window and local-expansion estimates used in this construction.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 The free lattice covariance><label|41-the-free-lattice-covariance>

  <strong|Lemma VII.1.a (covariance of link forms).> For links
  <math|a=<around|(|x,i|)>>, <math|b=<around|(|y,j|)>> and colours
  <math|u,t>,

  <\equation*>
    <math-up|Cov><rsub|\<mu\><rsub|N>><around*|(|<around|\<langle\>|A<around|(|a|)>,u|\<rangle\>>,<around|\<langle\>|A<around|(|b|)>,t|\<rangle\>>|)>=<around|\<langle\>|u,t|\<rangle\>>*<space|0.17em>\<b-1\><rsub|i=j>*<space|0.17em><around*|[|g<rsub|N>*<around|(|y-x|)>-g<rsub|N>*<around|(|y+x+e<rsub|i>|)>|]>.
  </equation*>

  Here <math|g<rsub|N>> is the mean-zero torus Green function,
  <math|-\<Delta\>*g<rsub|N>=\<delta\><rsub|0>-N<rsup|-4>> and
  <math|<big|sum><rsub|x>g<rsub|N>=0>, written as a Fourier sum over
  <math|<around|(|\<bbb-Z\>/N|)><rsup|4>> with the zero mode omitted
  (<hlink|<verbatim|toroid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19>,
  <hlink|<verbatim|lap_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L46-L52>).
  <em|Proof sketch.> Summation by parts gives
  <math|<math-ss|Q><rsub|N><around|(|A,B|)>=-<tfrac|1|2><big|sum><around|\<langle\>|A<around|(|x,i|)>,\<Delta\>*B<rsub|i><around|(|x|)>|\<rangle\>>>,
  the Feynman-gauge identity curl\<twosuperior\> + div\<twosuperior\> =
  <math|-A\<cdot\>\<Delta\>*A> (<hlink|<verbatim|total>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Adjoint.lean#L62-L71>).
  The response to a unit forcing at <math|a> is
  <math|g<rsub|N>*<around|(|\<cdummy\>-x|)>*e<rsub|i>> minus the same
  function at the image link. The constants <math|N<rsup|-4>> cancel between
  the two images, and oddness of the test field doubles the pairing
  (<hlink|<verbatim|inverse_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L40-L54>).
  <em|Lean:> <hlink|<verbatim|Orb.covar_link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Source.lean#L55-L59>.

  <strong|Lemma VII.1.b (separated legs).> Let
  <math|<around|(|N<rsub|i>,h<rsub|i>|)>> be an itinerary. For a torus site
  <math|x>, write <math|<around|[|x|]><rsub|N>> for its centred lift in
  <math|<around|(|-N/2,N/2|]><rsup|4>>. Let <math|x<rsub|i>,y<rsub|i>>
  satisfy <math|h<rsub|i>*<around|[|x<rsub|i>-y<rsub|i>+p|]><rsub|N<rsub|i>>\<to\>z\<ne\>0>
  and <math|<around|\<\|\|\>|h<rsub|i>*<around|[|x<rsub|i>+y<rsub|i>+p|]><rsub|N<rsub|i>>|\<\|\|\>>\<to\>\<infty\>>
  for every fixed <math|p\<in\>\<bbb-Z\><rsup|4>>. Then for real linear forms
  <math|P> on <math|T<rsub|j>> and <math|Q> on <math|T<rsub|k>>,

  <\equation*>
    <math-up|Cov><rsub|\<mu\><rsub|N<rsub|i>>><around*|(|P\<circ\>\<ell\><rsup|h<rsub|i>><rsub|x<rsub|i>>,Q\<circ\>\<ell\><rsup|h<rsub|i>><rsub|y<rsub|i>>|)>\<to\>K<around|(|P\<circ\>\<kappa\>,Q\<circ\>\<kappa\>|)><around|(|z|)>.
  </equation*>

  The image condition holds automatically when both families are homing and
  <math|4\<mid\>N<rsub|i>>, since then each coordinate of
  <math|x<rsub|i>+y<rsub|i>> is <math|N<rsub|i>/2+O<around|(|h<rsub|i><rsup|-1>|)>>
  modulo <math|N<rsub|i>> (<hlink|<verbatim|finale_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103>).
  <em|Proof sketch.>

  <\enumerate>
    <item>Average over <math|W<rsub|4>> and expand the forms in component
    functionals. By Lemma VII.1.a each component pairing becomes
    <math|h<rsup|-<around|(|<around|\||D|\|>+2|)>>> times a forward
    difference <math|\<nabla\><rsup|+><rsub|D>> of <math|g<rsub|N>>,
    evaluated at <math|x-y> (direct term) and at <math|x+y+e> (image term).
    The Fourier symbol of <math|\<nabla\><rsup|+><rsub|D>> is
    <math|<big|prod><rsub|k\<in\>D><around|(|e<rsup|i*p<rsub|k>>-1|)>>.

    <item><em|Direct term> (<hlink|<verbatim|joint_casual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L95-L101>).
    At physical momentum scale <math|s>, set <math|t=h*s> and write lattice
    momentum as <math|t*k>. The unscaled Fourier multiplier becomes
    <math|N<rsup|-4>*t<rsup|<around|\||D|\|>-2>> times a rescaled symbol;
    after multiplication by <math|h<rsup|-<around|(|<around|\||D|\|>+2|)>>>,
    the prefactor is <math|<around|(|N*h|)><rsup|-4>*s<rsup|<around|\||D|\|>-2>>.
    The rescaled symbol is jointly smooth near <math|<around|(|0,k|)>> for
    <math|k\<ne\>0> and equals <math|<big|prod><rsub|l\<in\>D><around|(|i*k<rsub|l>|)>/<around|\||k|\|><rsup|2>>
    at <math|t=0>. Split momentum space with a smooth bump into a
    low-momentum piece, dyadic annuli and a tail.

    <\itemize-minus>
      <item>Each annulus is a Riemann sum of a compactly supported rescaled
      integrand and converges to its continuum integral.

      <item>For separations bounded below by <math|R\<gtr\>0>, the tail is
      bounded by <math|C<around|(|D,R|)>/s> uniformly in <math|N> once the
      mesh is fine enough relative to <math|h*s>
      (<hlink|<verbatim|upper_tail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Power.lean#L63-L70>).
      The proof uses <math|<around|\||D|\|>+3> summations by parts in
      momentum and the lower bound <math|<around|\||e<rsup|2*\<pi\>*i<around|[|x|]><rsub|f>/N>-1|\|>\<gtrsim\><around|\<\|\|\>|h<around|[|x|]><rsub|N>|\<\|\|\>>/<around|(|N*h|)>>
      for a suitable coordinate <math|f>.

      <item>The low piece is <math|O<around|(|s<rsup|<around|\||D|\|>+2>|)>>.

      <item>The same bounds hold for the continuum integral after heat
      regularization. A <math|3*\<varepsilon\>> argument concludes
      (<hlink|<verbatim|wrap_tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Return.lean#L56-L81>).

      <item>Besides <math|h\<to\>0>, this part requires only
      <math|N*h\<to\>\<infty\>>, rather than faster volume growth.
    </itemize-minus>

    <item><em|Image term.> The same decomposition gives <math|0> when the
    norm of the centred image displacement tends to infinity in physical
    units (<hlink|<verbatim|joint_far>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Image.lean#L22-L31>).

    <item>The limit is identified with <math|K> on rotated on-shell jets, and
    <math|W<rsub|4>>-averaging returns <math|K<around|(|P\<circ\>\<kappa\>,Q\<circ\>\<kappa\>|)>>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|Align.chart_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L75-L83>,
  <hlink|<verbatim|Align.orbit_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L80-L88>.
  <em|(proof read through the Fourier bounds; remaining analytic inputs in
  Ÿ7)>

  <strong|Lemma VII.1.c (coincident legs).> Let
  <math|<around|(|N<rsub|i>,h<rsub|i>|)>> be an itinerary and let
  <math|x<rsub|i>\<in\>\<Lambda\><rsub|N<rsub|i>>> satisfy
  <math|<around|\<\|\|\>|h<rsub|i>*<around|[|2*x<rsub|i>+p|]><rsub|N<rsub|i>>|\<\|\|\>>\<to\>\<infty\>>
  for every fixed <math|p\<in\>\<bbb-Z\><rsup|4>>. For real linear forms
  <math|P> on <math|T<rsub|j>> and <math|Q> on <math|T<rsub|k>>,

  <\equation*>
    <math-up|Cov><rsub|\<mu\><rsub|N<rsub|i>>><around*|(|P\<circ\>\<ell\><rsup|h<rsub|i>><rsub|x<rsub|i>>,Q\<circ\>\<ell\><rsup|h<rsub|i>><rsub|x<rsub|i>>|)>-\<cal-S\><rsub|h<rsub|i>><around|(|P,Q|)>\<to\>0,
  </equation*>

  where <math|\<cal-S\><rsub|h>> is the <math|\<bbb-Z\><rsup|4>> covariance
  of the same stencils. In particular <math|S<rsub|h><around|(|a,b|)>=\<cal-S\><rsub|h><around|(|x<rsub|a>,x<rsub|b>|)>>
  (<hlink|<verbatim|shell_exact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L108-L113>).
  <em|Proof sketch.> The image term vanishes as in Lemma VII.1.b. The direct
  term is a finite combination of values <math|g<rsub|N><around|(|a|)>> at
  fixed lattice offsets <math|a>, compared with the <math|\<bbb-Z\><rsup|4>>
  Green function <math|G<rsub|\<bbb-Z\><rsup|4>><around|(|a|)>> and
  multiplied by <math|h<rsup|-<around|(|j+k+4|)>>>. The estimate for each
  fixed offset <math|a> (<hlink|<verbatim|toroid_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Fee.lean#L84-L112>)
  gives constants <math|C,A\<geqslant\>0>, independent of <math|N> and
  <math|r>, such that for <math|N> even and <math|0\<less\>r\<leqslant\>1>,
  <math|8/N\<leqslant\>r>,

  <\equation*>
    <around|\||g<rsub|N><around|(|a|)>-G<rsub|\<bbb-Z\><rsup|4>><around|(|a|)>|\|>\<leqslant\>C*<space|0.17em>r<rsup|2>+A/<around|(|N*r<rsup|4>|)>.
  </equation*>

  It is proved by viewing <math|g<rsub|N><around|(|a|)>> as a Riemann sum of
  <math|cos <around|(|2*\<pi\>*a\<cdot\>q|)>/<wide|\<Delta\>|^><around|(|2*\<pi\>*q|)>>:

  <\itemize-minus>
    <item>near <math|q=0> both terms are <math|O<around|(|<around|\||q|\|><rsup|-2>|)>>,
    whose integral over <math|<around|{|<around|\||q|\|>\<leqslant\>r|}>> is
    <math|O<around|(|r<rsup|2>|)>>;

    <item>elsewhere the integrand is <math|O<around|(|r<rsup|-4>|)>>-Lipschitz
    and the grid points move by <math|O<around|(|1/N|)>>.
  </itemize-minus>

  With <math|r=h<rsup|n+1>>, where <math|n=j+k+4> is the power of
  <math|h<rsup|-1>> to be beaten, the error times <math|h<rsup|-n>> is at
  most <math|C*h<rsup|n+2>+A/<around|(|N*h<rsup|5*n+4>|)>\<to\>0>. This
  comparison uses the condition <math|N<rsub|i>*h<rsub|i><rsup|k>\<to\>\<infty\>>
  for every <math|k> (<hlink|<verbatim|strike_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Visits.lean#L29-L46>).
  <em|Lean:> <hlink|<verbatim|Align.chart_return>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Bilateral.lean#L85-L89>,
  <hlink|<verbatim|Align.orbit_contact>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Cancel.lean#L89-L95>.

  <strong|Lemma VII.1.d (VII.1.3).> This is Lemma VII.1.b for <math|j\<ne\>l>
  (with <hlink|<verbatim|scene_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L71-L77>
  and <hlink|<verbatim|finale_home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L90-L103>)
  and Lemma VII.1.c for <math|j=l>. The covariance matrix
  <math|<math-ss|Q><rsub|N><rsup|-1>> evaluated on the stencil vectors equals
  the orbital pairing (<hlink|<verbatim|key_orb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L31>).
  <em|Lean:> <hlink|<verbatim|corrected_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L39-L44>.

  <subsection|4.2 Order zero as a Gaussian
  recursion><label|42-order-zero-as-a-gaussian-recursion>

  <strong|Lemma VII.1.e (order zero is a joint Gaussian expectation).> Fix
  <math|h\<gtr\>0>, an even period <math|N\<geqslant\>4>, insertion sites
  <math|o<rsub|1>,\<ldots\>,o<rsub|r>>, and <math|d\<in\>\<bbb-N\>>. Let
  <math|s> be a finite set of distinguishable occurrences, with insertion map
  <math|\<tau\>:s\<to\><around|{|1,\<ldots\>,r|}>> and key map
  <math|a:s\<to\><around|{|<text|keys of rank at most >d|}>>. Repeated keys
  are allowed. Set <math|<math-up|root><around|(|s|)><rsub|j>=<big|prod><rsub|\<nu\>:\<tau\><around|(|\<nu\>|)>=j>x<rsub|a<around|(|\<nu\>|)>>>.
  Then

  <\equation*>
    <around*|\<langle\>|<big|prod><rsub|j>R<rsub|h><around|(|<math-up|root><around|(|s|)><rsub|j>,o<rsub|j>|)>|\<rangle\>><rsup|<around|(|0|)>>=E<rsub|h><around|(|s|)>\<assign\>\<bbb-E\><around*|[|<big|prod><rsub|\<nu\>\<in\>s><around*|(|\<ell\><rsup|h><rsub|o<rsub|\<tau\><around|(|\<nu\>|)>>,a<around|(|\<nu\>|)>>+i*<space|0.17em>\<xi\><rsup|<around|(|\<tau\><around|(|\<nu\>|)>|)>><rsub|a<around|(|\<nu\>|)>>|)>|]>,
  </equation*>

  under <math|\<mu\><rsub|N>\<otimes\><big|otimes><rsub|j=1><rsup|r>\<cal-N\><around|(|0,S<rsub|h>|)>>.
  <em|Proof sketch.> The weight and the vacuum both have constant coefficient
  <math|1>, so the order-zero coefficient of the normalized expectation is a
  <math|\<mu\><rsub|N>>-integral. The constant coefficient of each lattice
  jet is its linear part <math|\<ell\><rsup|h>>. Fubini over the independent
  auxiliary copies finishes the proof. <em|Lean:>
  <hlink|<verbatim|Warp.amplitude_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Initial.lean#L39-L56>.
  The pair covariance of two legs is <math|\<kappa\><rsub|h>>
  (<hlink|<verbatim|node_wage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Engine.lean#L59-L63>):
  the auxiliary copies contribute <math|i<rsup|2>*S<rsub|h>=-S<rsub|h>> for
  legs assigned to the same insertion and <math|0> otherwise, even if two
  insertion sites happen to coincide.

  <strong|Lemma VII.1.f (symmetric deletion identity).> Let <math|\<mu\>> be
  a centred Gaussian on a finite-dimensional real space (possibly degenerate)
  and <math|P<rsub|a>>, <math|a\<in\>s>, real linear functionals with values
  in <math|\<bbb-C\>>. Then

  <\equation*>
    <around|\||s|\|>*<space|0.17em>\<bbb-E\>*<big|prod><rsub|a\<in\>s>P<rsub|a>=<big|sum><rsub|a\<in\>s><big|sum><rsub|b\<in\>s\<setminus\><around|{|a|}>>\<bbb-E\>*<around|[|P<rsub|a>*P<rsub|b>|]>*<space|0.27em>\<bbb-E\>*<big|prod><rsub|c\<in\>s\<setminus\><around|{|a,b|}>>P<rsub|c>.
  </equation*>

  The products are bilinear, without complex conjugation. For the legs of
  Lemma VII.1.e, write <math|\<kappa\><rsub|h><around|(|\<nu\>,\<mu\>|)>=\<kappa\><rsub|h><around|(|\<tau\><around|(|\<nu\>|)>,a<around|(|\<nu\>|)>;\<tau\><around|(|\<mu\>|)>,a<around|(|\<mu\>|)>|)>>;
  then <math|<around|\||s|\|>*E<rsub|h><around|(|s|)>=<big|sum><rsub|\<nu\>\<ne\>\<mu\>>\<kappa\><rsub|h><around|(|\<nu\>,\<mu\>|)>*E<rsub|h>*<around|(|s\<setminus\><around|{|\<nu\>,\<mu\>|}>|)>>.
  <em|Proof sketch.> For powers of a single real functional <math|L> of
  variance <math|v>, <math|\<bbb-E\>*L<rsup|n+1>=n*v*<space|0.17em>\<bbb-E\>*L<rsup|n-1>>
  for <math|n\<geqslant\>1>, with <math|\<bbb-E\>*L=0>, read off from the
  moment generating function (<hlink|<verbatim|ev_next>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Diagonal.lean#L15-L19>).
  The multilinear case follows by polarization
  (<hlink|<verbatim|packet_cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Symmetric.lean#L73-L77>).
  The complex case follows by splitting into real and imaginary parts.
  <em|Lean:> <hlink|<verbatim|exchange_s>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Exchange.lean#L68-L91>,
  <hlink|<verbatim|Warp.eq_cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L12-L18>.

  <strong|Lemma VII.1.g (the continuum recursion).> For
  <math|z\<in\><math-up|Conf><rsub|r>> set
  <math|c<rsub|z><around|(|s|)>=\<cal-W\><rsub|z>*<around|(|\<rho\>\<circ\><math-up|root><around|(|s|)>|)>>.
  Then for every <math|\<nu\>\<in\>s>,

  <\equation*>
    c<rsub|z><around|(|s|)>=<big|sum><rsub|\<mu\>\<in\>s\<setminus\><around|{|\<nu\>|}>>\<b-1\><rsub|\<tau\><around|(|\<mu\>|)>\<ne\>\<tau\><around|(|\<nu\>|)>>*<space|0.17em>K<rsub|a<around|(|\<nu\>|)>,a<around|(|\<mu\>|)>>*<around*|(|z<rsub|\<tau\><around|(|\<nu\>|)>>-z<rsub|\<tau\><around|(|\<mu\>|)>>|)>*<space|0.17em>c<rsub|z>*<around|(|s\<setminus\><around|{|\<nu\>,\<mu\>|}>|)>,
  </equation*>

  and summing over <math|\<nu\>\<in\>s> gives the analogue of Lemma VII.1.f.
  <em|Proof sketch.> Removing one on-shell variable
  <math|\<rho\><around|(|x<rsub|a<around|(|\<nu\>|)>>|)>> at the point
  <math|z<rsub|\<tau\><around|(|\<nu\>|)>>> from a Wick moment amounts to
  applying, at every other point, the derivation that replaces one variable
  by its pairing with <math|a<around|(|\<nu\>|)>>
  (<hlink|<verbatim|take_line>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L45-L49>).
  On a monomial the derivation produces the sum over its variables
  (<hlink|<verbatim|D_kill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Rowdy.lean#L59-L61>).
  There are no same-point pairings. <em|Lean:>
  <hlink|<verbatim|cut_one>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L26-L48>,
  <hlink|<verbatim|cut_cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Shards.lean#L49>.

  <strong|Lemma VII.1.h (convergence of leg products).> In the setting of
  VII.1.2, <math|E<rsub|h<rsub|i>><around|(|s|)>\<to\>c<rsub|z><around|(|s|)>>
  for every finite set of legs. <em|Proof sketch.> The proof is by strong
  induction on <math|<around|\||s|\|>>.

  <\itemize-minus>
    <item>For <math|s=\<emptyset\>> both sides equal <math|1> (probability
    measures).

    <item>Otherwise divide the identities of Lemmas VII.1.f and VII.1.g by
    <math|<around|\||s|\|>>. Use VII.1.3 for the coefficients and the
    induction hypothesis for the shorter products.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Warp.earth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Approach.lean#L19-L32>.

  <strong|Lemma VII.1.i (monomials, polynomials, labels; VII.1.2).>

  <\itemize-minus>
    <item>Every tuple of monomials involving only keys of rank at most
    <math|d> is <math|<math-up|root><around|(|s|)>> for a suitable set of
    distinguishable occurrences, so Lemma VII.1.h applies.

    <item>Multilinearity extends the limit to arbitrary polynomials involving
    only keys of rank at most <math|d>; no bound on their number of factors
    is needed.

    <item>The representatives <math|<math-up|sec><rsub|d>> have engineering
    weight at most <math|d>, hence use only keys of rank at most <math|d>.
    Composing gives the label limit, with
    <math|\<rho\>\<circ\><math-up|sec><rsub|d>=\<omega\><rsub|d>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|mono_single>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L31-L40>,
  <hlink|<verbatim|mono_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L41-L47>,
  <hlink|<verbatim|poly_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L50-L63>,
  <hlink|<verbatim|row_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Warp/Horizons.lean#L65-L68>.

  <subsection|4.3 Tested sums><label|43-tested-sums>

  <strong|Lemma VII.1.j (Riemann sums with continuous convergence).>
  Hypotheses:

  <\itemize-minus>
    <item>centred torus grids of positive integer side <math|N<rsub|m>> and
    spacing <math|t<rsub|m>=1/n<rsub|m>>,
    <math|n<rsub|m>\<in\>\<bbb-N\><rsub|\<gtr\>0>>, with
    <math|t<rsub|m>\<to\>0> and <math|t<rsub|m>*N<rsub|m>\<to\>\<infty\>>;

    <item>kernels <math|\<cal-K\><rsub|m>> on <math|r>-tuples of grid points;

    <item><math|f> continuous with compact support in an open set
    <math|\<omega\>>;

    <item>along every cofinal reindexing <math|\<sigma\>:\<bbb-N\>\<to\>\<bbb-N\>>,
    and every sequence of tuples on the reindexed grids whose embeddings
    converge to <math|z\<in\>\<omega\>>, the corresponding kernels converge
    to <math|\<cal-G\><around|(|z|)>>.
  </itemize-minus>

  Writing <math|\<jmath\><rsub|m><around|(|o|)>=t<rsub|m>*<around|[|o-c<rsub|N<rsub|m>>|]><rsub|N<rsub|m>>>
  for the embedding, one has <math|t<rsub|m><rsup|4*r>*<big|sum><rsub|o>f<around|(|\<jmath\><rsub|m><around|(|o|)>|)>*\<cal-K\><rsub|m><around|(|o|)>\<to\><big|int>f*\<cal-G\>>.
  <em|Proof sketch.>

  <\itemize-minus>
    <item>The kernels are eventually bounded uniformly on
    <math|<math-up|supp><space|0.17em>f> (<hlink|<verbatim|bounded_fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L68-L86>).
    Otherwise there are points of <math|<math-up|supp><space|0.17em>f> along
    which they blow up, and a convergent subsequence of these points
    contradicts the hypothesis.

    <item>Write the sum as the integral of a step function supported in a
    fixed ball. Apply dominated convergence; the box eventually contains the
    support.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Rig.grid_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Tested.lean#L23-L52>,
  with <hlink|<verbatim|Arrives>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Moving.lean#L50-L51>.

  <strong|Lemma VII.1.k (VII.1.1).> Apply Lemma VII.1.j with
  <math|\<omega\>=<math-up|Conf><rsub|r>>, <math|\<cal-K\><rsub|m>> the
  order-zero correlations and <math|\<cal-G\>=\<cal-W\>*<around|(|\<omega\><rsub|d>*p|)>>,
  along the regulator sequence <math|h<rsub|m>=L<rsup|-m>>,
  <math|N<rsub|m>=4*L<rsup|m<rsup|2>+m+1>>
  (<hlink|<verbatim|routine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L14-L21>).

  <\itemize-minus>
    <item>The arrival property is VII.1.2, applied to each cofinal reindexing
    of the regulator sequence, which is again an itinerary with
    <math|4\<mid\>N>.

    <item>The tested sum is the order-zero coefficient of the profile.

    <item>The identity <math|\<rho\>\<circ\><math-up|sec><rsub|d>=\<omega\><rsub|d>>
    identifies the continuum moment with the free hierarchy.

    <item>The board form applies this slot by slot to basis labels; clean
    profiles are smooth test functions with compact support in
    <math|<math-up|Conf>> (<hlink|<verbatim|Test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Test.lean#L18>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Rig.zerothProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69>,
  <hlink|<verbatim|Position.finite_leading>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L13-L16>.

  <strong|Downstream use (not part of this unit).> The assembly in VIII.1
  uses the tested order-zero limit in two ways:

  <\itemize-minus>
    <item><hlink|<verbatim|credible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52>
    subtracts it from <hlink|<verbatim|measured_tends>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19>
    (which assumes the interacting short-distance comparison of VI.2). This
    shows that measured scaled means minus order-zero lattice readings tend
    to <math|0>.

    <item><hlink|<verbatim|calibrate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43>
    solves the finite position equations when the leading Jacobian is
    invertible.
  </itemize-minus>

  The position-comparison data are described in VII.3.

  <subsection|4.4 Detection on the free side><label|44-detection-on-the-free-side>

  <strong|Lemma VII.1.l (Wick rule under linear substitution).> Fix
  <math|x\<in\><math-up|Conf><rsub|r>> and a finite list of variable
  occurrences assigned to its insertions. Replace each occurrence <math|a> by
  a finite complex linear combination <math|u<rsub|a>> of shell coordinates,
  allowing different Taylor ranks. Extend <math|K> to these combinations by
  complex bilinearity. The Wick moment of the resulting products equals

  <\equation*>
    <big|sum><rsub|matchings><big|prod><rsub|pairs>K<around*|(|u<rsub|a>,u<rsub|a<rprime|'>>|)>*<around|(|x<rsub|i<around|(|a|)>>-x<rsub|i<around|(|a<rprime|'>|)>>|)>.
  </equation*>

  Only matchings between distinct insertions are included. <em|Proof sketch.>
  Expand the linear forms in the coordinate basis. Multilinearity reduces the
  formula to the defining Wick sum on coordinate monomials. <em|Lean:>
  <hlink|<verbatim|Free.linear_substitution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Polarize.lean#L108-L119>.

  <strong|Lemma VII.1.m (diagonal one-leg kernel).> With the bilinear
  extension of <math|K> from Lemma VII.1.l, choose in each
  <math|<math-up|Sh><rsub|j>> a basis <math|<around|(|Y<rsub|a>|)>>
  orthogonal for full component contraction, and set
  <math|\<lambda\><rsub|a>=\<gamma\><rsub|j><around|\<langle\>|Y<rsub|a>,Y<rsub|a>|\<rangle\>>\<gtr\>0>.
  For <math|Y\<in\><math-up|Sh><rsub|j>>, let <math|Y<rsub|i>> be the
  order-<math|i> Taylor coefficient of <math|Y<rsup|\<natural\>>> at
  <math|e<rsub|<math-up|t>>> and let <math|<around|\<langle\>|Y<rsub|i>,\<cdot\>|\<rangle\>>>
  denote the full-contraction probe. Define

  <\equation*>
    \<epsilon\><rsub|a>=<big|sum><rsub|i=0><rsup|j><frac|\<gamma\><rsub|j>|\<gamma\><rsub|i>>*<around|\<langle\>|<around|(|Y<rsub|a>|)><rsub|i>,\<cdot\>|\<rangle\>>,<space|2em>\<epsilon\><rsup|\<sigma\>><rsub|a>=\<epsilon\><rsub|a>\<circ\>\<sigma\>.
  </equation*>

  Then

  <\equation*>
    K<around|(|\<epsilon\><rsub|a>,\<epsilon\><rsup|\<sigma\>><rsub|b>|)><around|(|e<rsub|<math-up|t>>|)>=\<delta\><rsub|a*b>*\<lambda\><rsub|a>.
  </equation*>

  <em|Proof sketch.> Expand the translated field
  <math|x\<mapsto\>Y<rsup|\<natural\>>*<around|(|e<rsub|<math-up|t>>+x|)>>
  into its homogeneous Taylor pieces and apply the Kelvin formula to each
  piece. Since <math|e<rsub|<math-up|t>>+\<iota\><around|(|e<rsub|<math-up|t>>|)>=0>,
  its inverted field has no Taylor coefficient at <math|e<rsub|<math-up|t>>>
  below order <math|j>; its order-<math|j> coefficient is
  <math|<around|(|-1|)><rsup|j>> times the time-reflected tensor <math|Y>.
  The weighted sum defining <math|\<epsilon\><rsub|a>> produces exactly
  <math|\<gamma\><rsub|j>> times this inverted translated field. The
  second-endpoint sign cancels <math|<around|(|-1|)><rsup|j>> on the
  diagonal. Thus pairings with lower ranks vanish and equal-rank pairings are
  <math|\<gamma\><rsub|j>> times full contraction. Symmetry gives vanishing
  for the opposite rank ordering, and the chosen orthogonal bases give the
  displayed matrix.

  <em|Lean:> <hlink|<verbatim|Free.pairing_var>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L114-L118>,
  with <hlink|<verbatim|center_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L70-L73>
  and <hlink|<verbatim|center_diag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Centered.lean#L80-L101>.

  <strong|Lemma VII.1.n (orthogonality and positivity; VII.1.4).> For
  finitely supported exponent vectors <math|\<alpha\>,\<beta\>> in the probe
  variables,

  <\equation*>
    \<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around|(|\<Phi\>*x<rsup|\<alpha\>>,\<Psi\>*x<rsup|\<beta\>>|)>=\<delta\><rsub|\<alpha\>*\<beta\>>*s<rsub|\<alpha\>>,<space|2em>s<rsub|\<alpha\>>=<big|prod><rsub|a>\<alpha\><rsub|a>!\<lambda\><rsub|a><rsup|\<alpha\><rsub|a>>\<gtr\>0.
  </equation*>

  The empty monomial has <math|s<rsub|0>=1>. <em|Proof sketch.>

  <\itemize-minus>
    <item>By Lemmas VII.1.l and VII.1.m only matchings that pair each
    variable at <math|e<rsub|<math-up|t>>> with the same variable at <math|0>
    survive.

    <item>For equal exponent vectors, there are
    <math|<big|prod><rsub|a>\<alpha\><rsub|a>!> surviving matchings, each of
    amplitude <math|<big|prod><rsub|a>\<lambda\><rsub|a><rsup|\<alpha\><rsub|a>>>.

    <item>For <math|q\<ne\>0>, expanding <math|q=<big|sum>c<rsub|\<alpha\>>*x<rsup|\<alpha\>>>
    gives <math|<math-up|Re>=<big|sum><rsub|\<alpha\>><around|\||c<rsub|\<alpha\>>|\|><rsup|2>*s<rsub|\<alpha\>>\<gtr\>0>.

    <item>For a label <math|v>:

    <\itemize-minus>
      <item><math|\<Phi\>> is onto (<hlink|<verbatim|forward_full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L137-L142>),
      so <math|\<rho\>*v=\<Phi\>*q> for some <math|q>;

      <item><math|\<rho\><around|(|\<sigma\><wide|v|\<bar\>>|)>=\<Psi\><wide|q|\<bar\>>>
      (<hlink|<verbatim|reversed_observable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Variables.lean#L165-L173>);

      <item><math|q\<ne\>0> because <math|v\<nin\>\<cal-I\><rsub|d>=V<rsub|d>\<cap\>ker
      \<rho\>>.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pair_test>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L57-L79>,
  <hlink|<verbatim|wick_orth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L109-L115>,
  <hlink|<verbatim|positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L132-L149>,
  <hlink|<verbatim|two_detect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L151-L155>.

  <strong|Lemma VII.1.o (Kelvin formulas; VII.1.5).> <em|Proof sketch for
  (a).> The case <math|j=0> is the definition of <math|\<Gamma\>>. For
  <math|j\<geqslant\>1>, use

  <\equation*>
    <tfrac|1|j!>A<around|(|\<partial\>|)>=<tfrac|1|j><big|sum><rsub|i>\<partial\><rsub|i><space|0.17em><tfrac|1|<around|(|j-1|)>!>A<around|(|e<rsub|i>,\<cdummy\>|)><around|(|\<partial\>|)>.
  </equation*>

  Each contraction <math|A<around|(|e<rsub|i>,\<cdot\>|)>> is again symmetric
  with harmonic diagonal. Then use <math|\<partial\><rsub|i><around|\||x|\|><rsup|-2*j>=-2*j*<space|0.17em>x<rsub|i><around|\||x|\|><rsup|-2*<around|(|j+1|)>>>
  and the vanishing of <math|<big|sum><rsub|i>\<partial\><rsub|i>*A<around|(|e<rsub|i>,x,\<ldots\>,x|)>>
  (harmonicity). The contraction identity
  <math|<big|sum><rsub|i>x<rsub|i>*A<around|(|e<rsub|i>,x,\<ldots\>|)>=A<around|(|x,\<ldots\>,x|)>>
  closes the step. <em|Proof sketch for (b).> Work colour by colour. Each
  component <math|Y<rsub|a*b><rsup|\<natural\>>> is harmonic (closed and
  coclosed), so (a) applies to every term of the curvature kernel. The terms
  are recombined using the divergence equation and
  <math|\<partial\><rsub|k>*<around|(|x*\<lrcorner\>*Y<rsup|\<natural\>>|)><rsub|m>-\<partial\><rsub|m>*<around|(|x*\<lrcorner\>*Y<rsup|\<natural\>>|)><rsub|k>=<around|(|j+2|)>*Y<rsup|\<natural\>><rsub|k*m>>
  (Bianchi plus Euler). <em|Lean:> <hlink|<verbatim|harmonic_Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Harmonic.lean#L157-L180>,
  <hlink|<verbatim|response_eq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L172-L176>.

  <strong|Lemma VII.1.p (finite detection).> Let <math|\<beta\>> be a basis
  of <math|F<rsub|d>>. The map <math|v\<mapsto\><around*|(|\<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around|(|\<omega\><rsub|d>*v,\<omega\><rsub|d>*\<beta\><rsub|i>|)>|)><rsub|i>>
  is injective on <math|F<rsub|d>>. A label whose two-point functions with
  all labels vanish at the detector pair is null in the free table. <em|Proof
  sketch.> If all basis probes vanish, linearity gives vanishing against
  every second label. For a representative of <math|v>, take its
  time-reflected conjugate as the second label and apply VII.1.4. Conversely,
  <math|\<rho\>*v=0> makes every free correlation containing that label
  vanish. Thus the free null space in <math|V<rsub|d>> is
  <math|\<cal-I\><rsub|d>>. <em|Lean:> <hlink|<verbatim|free_criterion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L21-L32>,
  <hlink|<verbatim|free_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L34-L42>,
  <hlink|<verbatim|free_injective>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Test.lean#L77-L85>.
  In the same spirit, <hlink|<verbatim|OPE.Levy.free_positive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Levy/Panel.lean#L39-L51>
  shows that the reflected free two-point form at the detector pair is
  positive on <math|F<rsub|d>\<setminus\>0>.

  For bounded complex linear maps <math|P:E\<to\>E>, <math|X:V\<to\>E>,
  <math|A:E\<to\>Z> and <math|H:V\<to\>Z> between complex normed spaces, the
  perturbation lemma <hlink|<verbatim|test_projected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Matrix.lean#L38-L46>
  is not used by the main theorem. It states that a lower bound
  <math|a<around|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around|\<\|\|\>|H*x|\<\|\|\>>>
  for every <math|x\<in\>V> and <math|<around|\<\|\|\>|H-A*X|\<\|\|\>>+<around|\<\|\|\>|<around|(|A-A*P|)>*X|\<\|\|\>>\<leqslant\>\<delta\>>
  imply <math|<around|(|a-\<delta\>|)><around|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around|\<\|\|\>|A*P*X*x|\<\|\|\>>>.

  <subsection|4.5 Corrected charts and bookkeeping><label|45-corrected-charts-and-bookkeeping>

  <strong|Lemma VII.1.q (two-point convergence at moving detectors).> Under
  the hypotheses of VII.1.6, let <math|\<delta\><rsub|k>=r<rsub|k>*y<rsub|k>>
  be the portfolio detector pair, where <math|r<rsub|k>\<gtr\>0>,
  <math|r<rsub|k>\<to\>0>, and <math|y<rsub|k>\<to\><around|(|e<rsub|<math-up|t>>,0|)>>.
  For fixed reference labels <math|v<rsub|0>,v<rsub|1>> of respective weights
  at most <math|d<rsub|0>,d<rsub|1>\<leqslant\>D>, put
  <math|<wide|v|^><rsub|k,j>=\<pi\><rsup|S><rsub|d<rsub|j>>*\<Phi\><rsub|k,d<rsub|j>>*v<rsub|j>>.
  Then

  <\equation*>
    S<rsub|d<rsub|0>,d<rsub|1>><around|(|\<delta\><rsub|k>;<wide|v|^><rsub|k,0>,<wide|v|^><rsub|k,1>|)>\<longrightarrow\>\<cal-W\><rsub|<around|(|e<rsub|<math-up|t>>,0|)>><around|(|\<rho\>*v<rsub|0>,\<rho\>*v<rsub|1>|)>,
  </equation*>

  where <math|\<rho\>*v<rsub|j>> means the on-shell image of the label
  polynomial represented by <math|v<rsub|j>>. <em|Proof sketch.> The
  finite-regulator estimate <hlink|<verbatim|Read.full_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Finite.lean#L242-L250>
  converts bounds on all nonempty marker components into a moment bound. The
  portfolio supplies these component bounds, and passage to the common
  extraction subfilter gives <hlink|<verbatim|actualRead>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Inspect.lean#L80-L99>.
  The resulting comparison <hlink|<verbatim|compareC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L94-L105>
  bounds the difference between the interacting moment at
  <math|\<delta\><rsub|k>> and the free moment at <math|y<rsub|k>> by
  <math|C*\<varepsilon\><rsub|g<around|(|k|)>>>, with
  <math|\<varepsilon\><rsub|g<around|(|k|)>>\<to\>0> by III.11. Continuity of
  the free kernel at the detector pair gives the limit. <em|Lean:>
  <hlink|<verbatim|Portfolio.twoC>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L107-L124>.
  <em|(proof read through the rank-comparison input)>

  <strong|Lemma VII.1.r (raw charts are eventually bijective and nearly
  compatible).> Under the hypotheses of VII.1.6:

  <\enumerate>
    <item>The read-out maps <math|D<rsub|k,d>> are eventually bijective for
    every <math|d\<leqslant\>D>, so <math|\<chi\><rsub|k><around|(|d|)>=D<rsub|k,d>>.
    The real part of the reflected measured form converges in operator norm
    to a free form bounded below by <math|\<delta\><around|\<\|\|\>|v|\<\|\|\>><rsup|2>>
    for some <math|\<delta\>\<gtr\>0>. It is therefore bounded below by
    <math|<around|(|\<delta\>/2|)><around|\<\|\|\>|v|\<\|\|\>><rsup|2>>
    eventually. This proves injectivity; the comparator isomorphism in the
    construction record gives equality of dimensions and hence surjectivity
    (<hlink|<verbatim|freely>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L75-L76>,
    <hlink|<verbatim|certified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Pairing.lean#L110-L128>,
    <hlink|<verbatim|chartDraw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L84-L87>).

    <item>For every <math|d\<less\>D> and <math|v\<in\>F<rsub|d>>,
    <math|\<chi\><rsub|k>*<around|(|d+1|)><rsup|-1>*\<iota\><rsup|S>*\<chi\><rsub|k><around|(|d|)>*v\<to\>\<iota\><rsup|F>*v>
    (<hlink|<verbatim|stepFits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L98-L121>).
    Both sides are probed by two-point functions against
    <math|\<chi\><rsub|k>*<around|(|d+1|)>*\<beta\><rsub|i>>, where
    <math|<around|(|\<beta\><rsub|i>|)>> is a basis of <math|F<rsub|d+1>>;
    Lemma VII.1.q gives convergence of the probes, and injectivity of the
    free probe (Lemma VII.1.p), through the finite-dimensional fitting lemma
    of Ÿ2, gives convergence of the arguments.

    <item>Eventually each <math|\<chi\><rsub|k><around|(|d|)>> commutes with
    conjugation and signed permutations (<hlink|<verbatim|symmetrical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L124-L136>),
    and it preserves the unit.
  </enumerate>

  <strong|Lemma VII.1.s (VII.1.6).> Under the hypotheses of VII.1.6:

  <\enumerate>
    <item>Take a retraction <math|P<rsub|d>:F<rsub|d+1>\<to\>F<rsub|d>> of
    the free inclusion that is equivariant and commutes with conjugation
    (averaging over <math|W<rsub|4>> and symmetrizing with the conjugation).

    <item>For fixed <math|k>, define recursively
    <math|A<rsub|0>=\<chi\><rsub|k><around|(|0|)>> and
  </enumerate>

  <\equation*>
    A<rsub|d+1>=\<iota\><rsup|S>*A<rsub|d>*P<rsub|d>+\<chi\><rsub|k>*<around|(|d+1|)>*<around|(|1-\<iota\><rsup|F>*P<rsub|d>|)>.
  </equation*>

  <\enumerate>
    <assign|item-nr|2><item>For each <math|d\<leqslant\>D>, the operators
    <math|\<chi\><rsub|k><around|(|d|)><rsup|-1>*A<rsub|d>> tend to the
    identity by induction using Lemma VII.1.r(2). They are eventually
    invertible. Set <math|p<rsub|k><around|(|d|)>=A<rsub|d>> when it is
    bijective and <math|p<rsub|k><around|(|d|)>=\<chi\><rsub|k><around|(|d|)>>
    otherwise.

    <item>Exact compatibility follows from the construction together with
    VII.1.r(3), and <math|\<chi\><rsub|k><rsup|-1>*p<rsub|k>\<to\>1> from
    VII.1.r(2).
  </enumerate>

  <em|Lean:> <hlink|<verbatim|tune_grades>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159>.

  <strong|Lemma VII.1.t (VII.1.7).>

  <\itemize-minus>
    <item>(a) <hlink|<verbatim|slim_wait_for>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Slender.lean#L127-L143>.
    The required minimum window is <math|o<around|(|log <wide|\<beta\>|^>|)>>
    at each fixed stage, while the prescribed window is
    <math|<around|\<lfloor\>|log <wide|\<beta\>|^>/log
    L<rsub|j>|\<rfloor\>>>. Raise entry thresholds to fit the finitely many
    active estimates inside it. Repeat for the three panels and raise the
    thresholds further to ensure that the block ratio is below the monitor
    bound. The station estimates then give the simultaneous data in
    VII.1.7(a).

    <item>(b) <hlink|<verbatim|nearby>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Dense/Cover.lean#L155-L165>.
    If the backward window at <math|k> stays in its stage, take
    <math|g<around|(|k|)>=k>. Otherwise take the last step of the preceding
    stage. Within one stage the logarithmic window grows by at most one per
    level. The threshold conditions ensure that this last step is usable; the
    number of intervening levels times <math|log L<rsub|j>> is at most
    <math|log <wide|\<beta\>|^><rsub|k>>. The selected stage tends to
    infinity, so <math|g<around|(|k|)>\<to\>\<infty\>>.

    <item>(c) <hlink|<verbatim|coin_pre>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Seams.lean#L34-L45>.
    Put <math|z=k+E-q> and first reduce the weight to
    <math|\<sigma\>=v/<around|(|z+2|)>> to pay for re-rooting. Apply
    <hlink|<verbatim|arose>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Dart/Verge.lean#L62-L86>
    from rank <math|max <around|(|k-q,0|)>> through <math|z>. Inductively
    lift the lowest remaining coefficient to a curvature expression, subtract
    its Taylor expansion, and continue. At each of these finitely many steps,
    reduce the exponential weight and enlarge the constant to control the
    subtraction. The analytic realization hypothesis permits the lift at
    every step.
  </itemize-minus>

  Parts (a) and (b) supply the common portfolio used in VII.1.6; the assembly
  is in III.13. Part (c) supplies local curvature expansions for the RG
  estimates.

  <em|(proof read through the stated station and curvature-lifting inputs)>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The main analytic work is the control of finite differences of the torus
  Green function, uniformly as the spacing shrinks and the volume grows. The
  Fourier argument must retain oscillatory cancellation; an absolute bound on
  the full momentum integral would not give the required derivative limits.

  Wick ordering uses the infinite-lattice covariance. Consequently the
  same-insertion contraction is not exactly zero at finite volume. For each
  fixed stencil offset, the available estimate is
  <math|C*r<rsup|2>+A/<around|(|N*r<rsup|4>|)>>, multiplied by
  <math|h<rsup|-n>>. Taking <math|r=h<rsup|n+1>> gives
  <math|C*h<rsup|n+2>+A/<around|(|N*h<rsup|5*n+4>|)>>. The chosen period
  handles every fixed <math|n> at once. This is a sufficient growth
  condition; no optimal volume rate is asserted.

  The reflection-odd field space removes constant zero modes but introduces
  an image term. Reporting around the quarter period sends that image to
  infinite physical distance. Detection requires a separate algebraic
  argument: the translated inversion formula and the triangular probe
  substitution establish strict positivity on every nonzero on-shell
  polynomial, including constants. The chart correction then uses
  finite-dimensional perturbation theory and the interacting estimates of
  III.11.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|object>>|<cell|<strong|code
  name>>|<cell|<strong|proposed notation>>>|<row|<cell|reflection-odd link
  fields, Feynman-gauge form, Gaussian>|<cell|<hlink|<verbatim|LinkP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Geometry.lean#L107-L111>,
  <hlink|<verbatim|form>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Precision.lean#L76-L78>,
  <hlink|<verbatim|data>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31>>|<cell|<math|\<cal-A\><rsub|N>>,
  <math|<math-ss|Q><rsub|N>>, <math|\<mu\><rsub|N>>>>|<row|<cell|torus Green
  function (mean zero)>|<cell|<hlink|<verbatim|toroid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Fourier/Inversion.lean#L19>>|<cell|<math|g<rsub|N>>>>|<row|<cell|linear
  lattice curvature jet>|<cell|<hlink|<verbatim|slope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/TopLinear.lean#L38>>|<cell|<math|\<ell\><rsup|h><rsub|x>>>>|<row|<cell|<math|\<bbb-Z\><rsup|4>>
  self-covariance of the jets (Wick subtraction)>|<cell|<hlink|<verbatim|link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L50>,
  <hlink|<verbatim|shellCov>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Symbol.lean#L58-L59>>|<cell|<math|S<rsub|h>>>>|<row|<cell|Wick-ordered
  representative>|<cell|<hlink|<verbatim|column>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41>>|<cell|<math|R<rsub|h><around|(|p,o|)>>>>|<row|<cell|corrected
  and limit two-leg covariances>|<cell|<hlink|<verbatim|corrected>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L34-L35>,
  <hlink|<verbatim|indirect>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Drivers.lean#L36>>|<cell|<math|\<kappa\><rsub|h>>,
  <math|K<rsub|a*b>>>>|<row|<cell|itinerary; homing
  sites>|<cell|<hlink|<verbatim|Itinerary>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Burst.lean#L50-L59>,
  <hlink|<verbatim|Home>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Align/Schedule.lean#L53>>|<cell|<math|<around|(|N<rsub|i>,h<rsub|i>|)>>;
  <math|h<rsub|i>*<around|(|o<rsub|i>-c<rsub|N<rsub|i>>|)>\<to\>z>>>|<row|<cell|regulator
  sequence, centre, profile>|<cell|<hlink|<verbatim|topSpacing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L46>,
  <hlink|<verbatim|period>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L49>,
  <hlink|<verbatim|center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L52>,
  <hlink|<verbatim|profile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56>>|<cell|<math|h<rsub|m>>,
  <math|N<rsub|m>>, <math|c<rsub|m>>, <math|\<Pi\><rsub|m><around|(|f;p|)>>>>|<row|<cell|shell,
  on-shell reduction, equation ideal>|<cell|<verbatim|Shell>,
  <hlink|<verbatim|reduceEq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L47-L50>,
  <hlink|<verbatim|equationIdeal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72>>|<cell|<math|<math-up|Sh><rsub|j>>,
  <math|\<rho\>>, <math|\<cal-I\><rsub|d>>>>|<row|<cell|Green function,
  curvature jet kernel>|<cell|<hlink|<verbatim|Green>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L22>,
  <hlink|<verbatim|legKernel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162>>|<cell|<math|\<Gamma\>>,
  <math|K<around|(|P,Q|)>>>>|<row|<cell|Wick
  moment>|<cell|<hlink|<verbatim|Wick.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127>>|<cell|<math|\<cal-W\><rsub|x>>>>|<row|<cell|detector
  pair, time reflection>|<cell|<hlink|<verbatim|detectors>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/TwoPoint.lean#L26>,
  <verbatim|Kelvin.\<sigma\>>>|<cell|<math|<around|(|e<rsub|<math-up|t>>,0|)>>,
  <math|\<sigma\>>>>|<row|<cell|inversion pullback,
  gain>|<cell|<hlink|<verbatim|inverted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L64-L65>,
  <hlink|<verbatim|gain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/FINITE_DETECTION/Response.lean#L92>>|<cell|<math|\<iota\><rsup|\<ast\>>>,
  <math|\<gamma\><rsub|j>>>>|<row|<cell|weak measuring portfolio, raw chart,
  corrected chart>|<cell|<hlink|<verbatim|Portfolio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Reading.lean#L35-L49>,
  <hlink|<verbatim|chart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L76-L79>,
  <verbatim|tune_grades>>|<cell|<math|X>,
  <math|\<chi\><rsub|k><around|(|d|)>>, <math|p<rsub|k><around|(|d|)>>>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Analytic inputs below the Fourier limits.> The symbol
    smoothness, higher-difference estimate, continuum annular decay, tail
    estimate and fixed-offset quadrature estimate support Lemmas VII.1.b\Uc.
    The remaining lower-level estimates for periodic annular sums, the
    low-momentum bound and the annular Riemann-sum comparison have not been
    checked line by line. Their uniformity in the period and spacing remains
    an input to the sketches. (probable)

    <item><strong|Imported interacting estimates.> The two-point limit
    follows from the simultaneous portfolio conditions and the
    rank-comparison error bound. The full analytic proofs supplying those
    conditions, including the station estimates and curvature-lifting
    estimates used in VII.1.7, are outside this verification. (probable)

    <item><strong|Other assigned packages.> The remaining RG local-expansion
    packages and the perturbative-extension packages are not described here;
    no proof outline for their internal estimates is supplied. Their
    placement relative to III.13, III.15 and VII.6 remains to be settled.
    (tentative)

    <item><strong|Scope of the comparison.> The Gaussian
    <math|\<mu\><rsub|N>> is defined independently of the RG Gaussian
    measures. Proposition VII.1.1 requires no identification with them. The
    interacting short-distance theorem and its combination with the tested
    order-zero limit are the linked results in VIII.1; no all-orders
    perturbative comparison follows from this unit.

    <item><strong|References and size estimates.> The literature citations
    and attributed source-line counts have not been independently verified.
    (tentative)
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> VI.2 The free Maxwell stress tensor and
  the local Ward charge (notes)|VI-2.tm>|<hlink|Part
  VII|../units.tm#part-vii-identification-as-yangmills><ym-nav-sep><hlink|Unit
  outline|../units/VII-1.tm>|<hlink|VII.2 The trace of the stress tensor and
  the trace anomaly (notes) \<rightarrow\>|VII-2.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|VII.1. Short distances: convergence to free Maxwell
    fields \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|7>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|9>>
    <associate|41-the-free-lattice-covariance|<tuple|4.1|9>>
    <associate|42-order-zero-as-a-gaussian-recursion|<tuple|4.2|11>>
    <associate|43-tested-sums|<tuple|4.3|12>>
    <associate|44-detection-on-the-free-side|<tuple|4.4|13>>
    <associate|45-corrected-charts-and-bookkeeping|<tuple|4.5|15>>
    <associate|5-where-the-difficulty-lies|<tuple|5|16>>
    <associate|6-notation|<tuple|6|17>>
    <associate|7-what-remains-unexplained|<tuple|7|17>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|5|16>>
    <associate|auto-11|<tuple|6|17>>
    <associate|auto-12|<tuple|7|17>>
    <associate|auto-2|<tuple|2|7>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|9>>
    <associate|auto-5|<tuple|4.1|9>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|13>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|vii1-short-distances-convergence-to-free-maxwell-fields--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The free lattice covariance
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Order zero as a Gaussian recursion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Tested sums
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Detection on the free side
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 Corrected charts and bookkeeping
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