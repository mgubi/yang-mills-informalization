<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.6 The stationary branch: background
  field of the effective action (notes)|III-6.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-7.tm>|<hlink|III.8 Connected activities and backward
  dependence cones (notes) \<rightarrow\>|III-8.tm>>

  <ym-title|III.7. Matching the Wilson energy to fourth order \V detailed
  notes><label|iii7-matching-the-wilson-energy-to-fourth-order--detailed-notes>

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

    <with|par-left|1tab|4.1 Fourier kernels of local functionals
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The lattice Poincaré lemma in momentum space
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Classical emission and the Wilson jet
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Two-leg kernels: the
    <with|mode|math|F<rsup|2>>-coefficient and irrelevance
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The one-loop term in covariant form
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Uniform invertibility of the fluctuation
    operators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 The slope of the regulated determinant
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 From the regulated determinant to the blocked
    determinant <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 The step and the iteration
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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
    The full account of unit III.7: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-7.tm>.
  </quotation>

  <hlink|Unit page|../units/III-7.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/Next/STATIONARY/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY>,
  <hlink|<verbatim|YM/WilsonBulk/Spectral/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral>,
  <hlink|<verbatim|YM/UVExtension/Projection/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection>,
  and a few lines of <hlink|<verbatim|YM/UVExtension/Reward/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Reward>.
  <strong|Size:> 19,945 lines in the main-theorem closure: 19,391 in
  <verbatim|Next/STATIONARY>, 286 in <verbatim|UVExtension/Projection>, 215
  in <verbatim|WilsonBulk/Spectral>, and about 50 elsewhere.

  <em|Conventions.> Levels <math|m=0,\<ldots\>,N> run from the coarsest level
  (<math|m=0>) to the Wilson lattice (<math|m=N>). Blocking from fine level
  <math|m+1> to coarse level <math|m> uses an odd factor <math|L<rsub|m>>.
  The stage <math|J<rsub|m>> is the index of the constants used at level
  <math|m>; it satisfies <math|J<rsub|m+1>\<in\><around|{|J<rsub|m>,J<rsub|m>+1|}>>.
  In one step the fine torus <math|\<Lambda\><rsub|f>> has side <math|f=L*c>
  and the coarse torus <math|\<Lambda\><rsub|c>> has side <math|c>; in
  general <math|<around|\||\<Lambda\><rsub|n>|\|>=n<rsup|4>>. Fields are
  Lie-algebra link variables <math|x>, and configurations are
  <math|U=e<rsup|x>>. <math|E<rsub|W><around|(|U|)>=<big|sum><rsub|p><around*|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><space|0.17em>U<rsub|p>|)>>
  is the Wilson energy in the fixed matrix representation of dimension
  <math|d<rsub|<math-up|rep>>>, <math|C<rsub|G>> is the adjoint Casimir
  constant of I.1, and <math|\<kappa\>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>.

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  At level <math|m> the effective action has the form
  <math|\<beta\><space|0.17em><math-up|main><rsub|\<b-up-c\>,R><around|(|U|)>+<math-up|loop><rsub|R><around|(|U|)>>,
  plus polymer activities (III.10). Here <math|R> is a <em|path datum>: an
  exponentially weighted, explicit sum of gauge-covariant curvature monomials
  along lattice paths. This unit constructs the path data and the coupling
  shifts.

  <\itemize-minus>
    <item><strong|(A)> At the finest level there is a path datum whose
    leading part has the same Taylor jet as <math|E<rsub|W>> through order
    four (III.7.2).

    <item><strong|(B)> For one block-spin step, the coarse leading part can
    be chosen as the classical (tree-level) transform of the fine one through
    order four. The second-order Taylor coefficient of the one-loop term
    equals <math|\<alpha\>> times the coarse quadratic form plus coarse
    two-leg atoms, up to an error exponentially small in the side of the
    torus. Moreover <math|<around|\||\<alpha\>+\<kappa\>*log L|\|>> is
    bounded independently of <math|L> (III.7.4).

    <item><strong|(C)> The value <math|\<kappa\>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>
    is computed, not assumed. The one-loop determinant of the
    background-field operator in Feynman gauge, regularized in the infrared
    at scale <math|1/L>, has <math|F<rsup|2>>-coefficient
    <math|-\<kappa\>*log L+O<around|(|1|)>> (III.7.3). Two results connect
    this determinant to the blocked one: an exact Faddeev\UPopov identity
    (III.7.6) and uniform invertibility of the completed fluctuation
    operators (III.7.5, Ÿ4.6).
  </itemize-minus>

  Iterated over all levels, (A)\U(C) give the kinetic data satisfying the
  conditions required in III.9. The slope <math|\<kappa\>>, a defined
  constant in I.1 and III.9.1, is identified here with the one-loop
  coefficient of the blocked action.

  <strong|Proposition III.7.1 (path data, beds, Fourier kernels).>

  <\itemize-minus>
    <item><em|Legs and atoms.> A leg is a lattice walk <math|\<gamma\>> from
    the origin of <math|\<bbb-Z\><rsup|4>> together with a plaquette
    orientation <math|P>. At base point <math|x> it evaluates <math|U> to
    <math|<math-up|Ad><around|(|U<rsub|\<gamma\>>|)>*<space|0.17em>\<cal-F\><around|(|U<rsub|\<partial\>*p>|)>\<in\>\<frak-g\>>.
    Here <math|p> is the plaquette of orientation <math|P> at the end of
    <math|\<gamma\>>, <math|U<rsub|\<gamma\>>> is the transport along
    <math|\<gamma\>>, and <math|\<cal-F\><around|(|u|)>> is the
    <math|\<frak-g\>>-component of <math|<around|(|u-u<rsup|-1>|)>/2>. The
    length of a leg is <math|<around|\||\<gamma\>|\|>+4>.

    <item>A <math|k>-atom is a <math|k>-tuple of legs with a coefficient
    tensor <math|a:<around|{|1,\<ldots\>,dim
    \<frak-g\>|}><rsup|k>\<to\>\<bbb-R\>>. It evaluates to
    <math|<big|sum><rsub|b>a<around|(|b|)>*<big|prod><rsub|i><around|(|<math-up|leg><rsub|i>|)><rsub|b<rsub|i>>>.
    It is <em|invariant> if this polynomial is <math|<math-up|Ad>>-invariant.
    Its exponential weight at width <math|\<sigma\>> is
    <math|<around|\<\|\|\>|a|\<\|\|\>><rsub|1>*e<rsup|\<sigma\>\<cdot\><math-up|length>>>.

    <item><em|Path datum> <math|R>. For each of the six plaquette
    orientations <math|P>, a sequence of rows
    <math|<around|(|\<lambda\><rsub|P,k>,<math-up|leg><rsub|P,k>|)>>; and
    sequences of 2-atoms (<em|loop atoms>), 3-atoms and 4-atoms. The rows
    define <math|\<ell\><rsub|R><around|(|U|)><rsub|<around|(|x,P|)>>=<big|sum><rsub|k>\<lambda\><rsub|P,k><space|0.17em><math-up|leg><rsub|P,k><around|(|U,x|)>>.

    <item><em|Main term.> For a clip <math|\<b-up-c\>> (only
    <math|c<rsub|<math-up|dir>>\<gtr\>0> enters here), whenever the row and
    atom series converge absolutely:
  </itemize-minus>

  <\equation*>
    <math-up|main><rsub|\<b-up-c\>,R><around|(|U|)>=<frac|1|384>*<big|sum><rsub|s><around*|[|<big|sum><rsub|p><around*|(|c<rsub|<math-up|dir>>*<around*|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><space|0.17em>U<rsub|p>|)>+<tfrac|1|2><around|\||\<ell\><rsub|R><around|(|U|)><rsub|p>|\|><rsup|2>|)>+<big|sum><rsub|x><big|sum><rsub|k><around*|(|\<cal-A\><rsup|<around|(|3|)>><rsub|k>+\<cal-A\><rsup|<around|(|4|)>><rsub|k>|)>*<around|(|U,x|)>|]><rsub|U\<to\>s*U>.
  </equation*>

  This is an average over the 384 signed permutations <math|s> of the axes.
  <math|<math-up|loop><rsub|R>> is the same average of the sum of all loop
  atoms. These are the unclipped analytic germs; the small-field clipping of
  the full action does not enter them.

  <\itemize-minus>
    <item><em|Weight clauses> <math|R\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<sigma\>,C,\<Lambda\>|)>>:

    <\itemize-minus>
      <item><math|\<sigma\>\<gtr\>0>, and
      <math|<big|sum><rsub|k><around|\||\<lambda\><rsub|P,k>|\|>*e<rsup|\<sigma\><space|0.17em><math-up|len>>\<leqslant\>C>
      for each <math|P>;

      <item>the sums of exponential weights are <math|\<leqslant\>C> for the
      cubic and quartic atoms and <math|\<leqslant\>\<Lambda\>> for the loop
      atoms;

      <item>all atoms are invariant;

      <item>normalization at zero momentum:
      <math|c<rsub|<math-up|dir>>*\<delta\><rsub|P*Q>+<big|sum><rsub|P<rprime|'>><wide|\<ell\>|^><rsub|P<rprime|'>*P><around|(|0|)>*<wide|\<ell\>|^><rsub|P<rprime|'>*Q><around|(|0|)>=\<delta\><rsub|P*Q>>;

      <item>the <em|moment conditions>: for each pair of leg orientations and
      colours, the loop coefficients have total weight <math|0> and first
      moment <math|0> in the displacement between the two legs (with the
      required summability).
    </itemize-minus>

    <item><em|Bed> <math|B=<around|(|D,<wide|D|~>,H,<wide|H|~>,\<rho\>|)>>:
    five translation-invariant kernels on plaquette fields (diagonal, its
    inverse, metric, its inverse, roots).

    <\itemize-minus>
      <item><math|R> is <em|attached> to <math|B> if its rows, summed by end
      plaquette and displacement, give <math|\<rho\>>.

      <item><math|<math-up|Floor><around|(|B,\<b-up-c\>,n;\<varepsilon\>,C|)>>
      on <math|\<Lambda\><rsub|n>> means: <math|D<wide|D|~>=1>;
      <math|H<wide|H|~>=1>; <math|\<Phi\><rsup|<math-ss|T>>*\<Phi\>=H> with
      <math|\<Phi\>=<around|(|<sqrt|c<rsub|<math-up|dir>>>*<space|0.17em>\<b-1\>;\<rho\>|)>>;
      <math|<wide|H|^><around|(|0|)>=1>; <math|H*<space|0.17em>d<rsub|1>=D*<space|0.17em>d<rsub|1>>
      on link fields; <math|H,D> symmetric with
      <math|\<varepsilon\>*I\<leqslant\>H,D\<leqslant\>C*I> as quadratic
      forms.

      <item>A kernel is in <math|<math-up|strip><around|(|\<sigma\>,C|)>> if
      <math|<big|sum><rsub|y>e<rsup|\<sigma\><around|\||y|\|><rsub|1>><around|\||K<around|(|y|)>|\|>\<leqslant\>C>
      entrywise.
    </itemize-minus>

    <item><em|Fourier kernels.> A <math|<around|(|t+1|)>>-leg kernel assigns
    a number <math|<wide|K|^><rsub|b,a><around|(|p<rsub|1>,\<ldots\>,p<rsub|t>|)>>
    to colours <math|b>, directions <math|a> and momenta, with
    <math|p<rsub|0>=-<big|sum>p<rsub|j>>.

    <\itemize-minus>
      <item><math|<wide|K|^>> is <em|strip-analytic of width <math|\<sigma\>>
      and size <math|K>> if it is holomorphic, <math|2*\<pi\>>-periodic in
      each scalar momentum coordinate, and bounded by <math|K> on
      <math|<around|\||<math-up|Im><space|0.17em>p<rsub|j,a>|\|>\<less\>\<sigma\>>.

      <item>A function <math|F> on link fields on <math|\<Lambda\><rsub|n>>
      is <em|recorded> by <math|<wide|K|^>> with error <math|\<epsilon\>> if
      its complexified Taylor coefficient
      <math|D<rsup|t+1>*F<around|(|0|)>/<around|(|t+1|)>!>, evaluated on
      canonical unit plane waves, differs from
      <math|<around|\||\<Lambda\><rsub|n>|\|>*<wide|K|^><rsub|b,a><around|(|p|)>>
      when the momenta sum to zero, and from <math|0> otherwise, by at most
      <math|\<epsilon\>>. All tuples of lattice momenta are tested.

      <item><math|F> <em|vanishes to order <math|s> along rays> if
      <math|F*<around|(|t*v|)>=O<around|(|t<rsup|s>|)>> as <math|t\<to\>0>
      for every <math|v>, with the constant allowed to depend on <math|v>.
    </itemize-minus>

    <item><em|<math|F<rsup|2>>-coefficient.> For a two-leg kernel,
    <math|\<alpha\><rsub|b><around|(|<wide|K|^>|)>> is twice the real part of
    the coefficient of <math|s<rsup|2>> in
    <math|<wide|K|^><rsub|<around|(|b,b|)>,<around|(|1,1|)>>*<around|(|s*<space|0.17em>e<rsub|0>|)>>.
    For the quadratic kernel of a bed whose metric has positive strip width
    and <math|<wide|H|^><around|(|0|)>=1>, it equals <math|1>, so
    <math|\<alpha\>> is measured in units of the classical <math|F<rsup|2>>
    term.
  </itemize-minus>

  <em|Status:> definitions. Path data, weight clauses, main term, beds and
  Floor are specifications of III.1; the Fourier notions are defined in this
  unit. <em|Lean:> <hlink|<verbatim|RG.PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>,
  <hlink|<verbatim|RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>,
  <hlink|<verbatim|RG.Atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86>,
  <hlink|<verbatim|PathData.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>,
  <hlink|<verbatim|metric_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L161-L162>,
  <hlink|<verbatim|loop_jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L167-L169>,
  <hlink|<verbatim|RG.Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>,
  <hlink|<verbatim|Precision.mainTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28>,
  <hlink|<verbatim|Precision.Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>,
  <hlink|<verbatim|Attached>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46>,
  <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>,
  <hlink|<verbatim|Firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199>,
  <hlink|<verbatim|Rays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29>,
  <hlink|<verbatim|Recorded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492>,
  <hlink|<verbatim|alphaPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699>,
  <hlink|<verbatim|tip_fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L700-L708>.

  <strong|Proposition III.7.2 (the Wilson jet at the finest level).> Let
  <math|G> be a gauge group, <math|\<sigma\><rsub|0>\<gtr\>0> and
  <math|A,Z\<geqslant\>0>. There are <math|\<sigma\>\<in\><around|(|0,\<sigma\><rsub|0>|]>>
  and <math|C\<geqslant\>0> with the following property.

  <em|Hypotheses:> sides <math|n<rsub|i>\<to\>\<infty\>>; a clip with
  <math|c<rsub|<math-up|dir>>\<leqslant\>Z>; a bed <math|B> such that

  <\itemize-minus>
    <item><math|\<rho\>\<in\><math-up|strip><around|(|\<sigma\><rsub|0>,A|)>>;

    <item><math|<math-up|Floor><around|(|B,\<b-up-c\>,n;a,b|)>> holds for
    every side <math|n> and some <math|a,b>;

    <item>the quadratic gauge form of <math|B> is invariant under signed
    permutations on each <math|\<Lambda\><rsub|n<rsub|i>>>;

    <item><math|D=1> on each <math|\<Lambda\><rsub|n<rsub|i>>>.
  </itemize-minus>

  <em|Conclusion:> there is a path datum <math|Q> such that:

  <\enumerate>
    <item>the rows of <math|Q> are the entries of <math|\<rho\>> placed on
    straight lattice routes, <math|Q> is attached to <math|B>, and all loop
    coefficients vanish;

    <item><math|Q\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<tau\>,k,\<Lambda\>|)>>
    for all <math|0\<less\>\<tau\>\<leqslant\>\<sigma\>>, all
    <math|k\<geqslant\>max <around|(|C,6*A*e<rsup|4*\<sigma\><rsub|0>>|)>>
    and all <math|\<Lambda\>\<geqslant\>0>;

    <item>for every <math|i> and every <math|j\<leqslant\>4>, the functions
    <math|x\<mapsto\><math-up|main><rsub|\<b-up-c\>,Q><around|(|e<rsup|x>|)>>
    and <math|x\<mapsto\>E<rsub|W><around|(|e<rsup|x>|)>> on
    <math|\<Lambda\><rsub|n<rsub|i>>> are real-analytic at <math|0> and have
    equal <math|j>-th derivatives there.
  </enumerate>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Stationary.launch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305>,
  <hlink|<verbatim|rowPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171>,
  <hlink|<verbatim|rowPrice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L176>,
  <hlink|<verbatim|SameJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106>.

  <em|All stages and all volumes.>

  <\itemize-minus>
    <item>With stage widths and amplitude bounds given, the statement holds
    at every stage with stage constants <math|<around|(|\<sigma\><rsub|j>,A<rsub|j>|)>>
    (<hlink|<verbatim|beckon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105>,
    <hlink|<verbatim|BasesFine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L93-L99>).

    <item>Take a compatible history satisfying the thresholds of III.2 and a
    horizon satisfying the free-field conditions of Ÿ2, and apply the
    statement to the sequence of periodic sides at level <math|N>. The result
    is a top datum (<hlink|<verbatim|budding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225>,
    <hlink|<verbatim|BranchRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166>)
    that:

    <\itemize-minus>
      <item>satisfies the level-<math|N> weight clauses with loop amplitude
      <math|<math-up|loopCap><rsub|N>>;

      <item>matches <math|E<rsub|W>> through order four on every volume;

      <item>has vanishing loop coefficients.
    </itemize-minus>

    This is the top condition used in III.9.
  </itemize-minus>

  <strong|Proposition III.7.3 (the one-loop slope).> Let <math|G> be simple.
  For <math|\<sigma\>,\<varepsilon\>\<gtr\>0>, <math|C,Z\<geqslant\>0>,
  <math|\<tau\>\<gtr\>0> and <math|A\<geqslant\>0> there is
  <math|D\<geqslant\>0> with the following property.

  <em|Hypotheses:>

  <\itemize-minus>
    <item><math|L\<geqslant\>1> is odd, <math|\<mu\>=1/L>, and
    <math|n<rsub|i>\<to\>\<infty\>>;

    <item><math|\<b-up-c\>> is a clip with
    <math|c<rsub|<math-up|dir>>\<leqslant\>Z>;

    <item><math|B> is a bed with <math|H\<in\><math-up|strip><around|(|\<sigma\>,C|)>>,
    <math|<math-up|Floor><around|(|B,\<b-up-c\>,n;\<varepsilon\>,C|)>> for
    every <math|n>, and gauge form invariant under signed permutations on
    each <math|\<Lambda\><rsub|n<rsub|i>>>;

    <item>for any <math|\<Lambda\>\<in\>\<bbb-R\>>, a datum
    <math|R\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<tau\>,A,\<Lambda\>|)>>
    is attached to <math|B>.
  </itemize-minus>

  For a link field <math|x> on <math|\<Lambda\><rsub|n<rsub|i>>> and
  <math|U=e<rsup|x>> put

  <\equation*>
    \<Pi\><rsub|\<mu\>><around|(|x|)>=<tfrac|1|2>log det
    <around*|(|\<cal-H\><rsub|\<b-up-c\>,R><around|(|U|)>+d<rsub|U>*d<rsub|U><rsup|\<ast\>>+\<cal-M\><rsub|\<mu\>><around|(|U|)>|)>-log
    det <around*|(|d<rsub|U><rsup|\<ast\>>*d<rsub|U>+\<frak-m\><rsub|\<mu\>><around|(|U|)>|)>.
  </equation*>

  Here:

  <\itemize-minus>
    <item><math|\<cal-H\><rsub|\<b-up-c\>,R><around|(|U|)>> is the Hessian at
    <math|y=0> of <math|y\<mapsto\><math-up|main><rsub|\<b-up-c\>,R><around|(|e<rsup|y>*U|)>>;

    <item><math|d<rsub|U>> is the covariant difference
    <math|<around|(|d<rsub|U>*\<phi\>|)><rsub|e>=\<phi\><around|(|e<rsub|->|)>-<math-up|Ad><around|(|U<rsub|e>|)>*\<phi\><around|(|e<rsub|+>|)>>
    from adjoint site fields to link fields;

    <item><math|\<frak-m\><rsub|\<mu\>><around|(|U|)>=\<mu\><rsup|2>*<around*|(|\<mu\><rsup|2>*<around|(|d<rsub|U><rsup|\<ast\>>*d<rsub|U>+\<mu\><rsup|2>|)><rsup|-1>|)><rsup|9>>;

    <item><math|\<cal-M\><rsub|\<mu\>>> applies
    <math|\<frak-m\><rsub|\<mu\>>> separately to the four link components,
    each regarded as a site field at the initial endpoint.
  </itemize-minus>

  <em|Conclusion:> there are a strip-analytic two-leg kernel
  <math|<wide|Y|^>> and numbers <math|e<rsub|i>\<to\>0> such that:

  <\itemize-minus>
    <item>(a) <math|<wide|Y|^>> records the second-order Taylor coefficient
    of <math|\<Pi\><rsub|\<mu\>>> at <math|0> on
    <math|\<Lambda\><rsub|n<rsub|i>>> with error
    <math|<around|\||\<Lambda\><rsub|n<rsub|i>>|\|>*<space|0.17em>e<rsub|i>>,
    for every <math|i>;

    <item>(b) <math|<around|\||\<alpha\><rsub|b><around|(|<wide|Y|^>|)>+\<kappa\>*log
    L|\|>\<leqslant\>D> for every colour <math|b>.
  </itemize-minus>

  <math|\<Pi\><rsub|\<mu\>>> is the one-loop effective action of the fine
  leading part in the background <math|U>, in Feynman background gauge:
  <math|d<rsub|U>*d<rsub|U><rsup|\<ast\>>> is the gauge-fixing term and
  <math|d<rsub|U><rsup|\<ast\>>*d<rsub|U>> the ghost operator. The infrared
  regulator of mass <math|\<mu\>=1/L> stands in for the block-spin
  constraint. <math|D> does not depend on <math|L>. The error
  <math|e<rsub|i>> decays exponentially in <math|n<rsub|i>>, at an
  <math|L>-dependent rate.

  <em|Status:> theorem, for all odd <math|L\<geqslant\>1>: the minimal block
  factor produced is <math|1>. <em|Lean:>
  <hlink|<verbatim|pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>
  (proves <hlink|<verbatim|Fluent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115>,
  i.e. <hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>
  for all parameters), <hlink|<verbatim|PoleTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138>,
  <hlink|<verbatim|fineMag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46>,
  <hlink|<verbatim|rankAux>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L45>,
  <hlink|<verbatim|grenade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338>,
  <hlink|<verbatim|Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>.

  <strong|Proposition III.7.4 (one renormalization step of the leading
  part).> Fix a simple <math|G>, kernel parameters <math|K> (penalty
  <math|a\<gtr\>0>), a stage <math|J>, and constants
  <math|\<varepsilon\>,w,\<delta\>\<gtr\>0> and
  <math|D,Z,C,Z<rprime|'>\<geqslant\>0> for the fine and coarse beds and
  clips. There are <math|A<rsub|\<ast\>>\<geqslant\>0> and <math|s\<gtr\>0>
  (output amplitude and width) such that, for every input width
  <math|\<tau\>\<gtr\>0> and amplitude <math|A\<geqslant\>0>, there are:

  <\itemize-minus>
    <item><math|d\<geqslant\>0> (the drift) and <math|\<gamma\>\<gtr\>0> (a
    rate);

    <item>a minimal block factor <math|u>;

    <item>functions <math|\<Theta\><rsub|0><around|(|L|)>> and
    <math|\<Lambda\><rsub|0><around|(|L|)>>,
  </itemize-minus>

  with the following property.

  <em|Hypotheses.>

  <\itemize-minus>
    <item><em|Steps.> Coarse sides <math|m<rsub|i>\<to\>\<infty\>>;
    block-spin steps <math|\<Lambda\><rsub|L*m<rsub|i>>\<to\>\<Lambda\><rsub|m<rsub|i>>>
    with one admissible patch of stage <math|J> and block factor
    <math|L\<geqslant\>u>, and kernel <math|K>; each coarse side is greater
    than <math|1>, and each fine side is at least <math|100> times the patch
    extent.

    <item><em|Clips and beds.>

    <\itemize-minus>
      <item>A fine clip <math|\<b-up-p\>> with
      <math|p<rsub|<math-up|dir>>\<leqslant\>Z> and a coarse clip
      <math|\<b-up-q\>> with <math|q<rsub|<math-up|dir>>\<leqslant\>Z<rprime|'>>.

      <item>A fine bed <math|B> with <math|H,\<rho\>\<in\><math-up|strip><around|(|w,D|)>>,
      <math|<math-up|Floor><around|(|B,\<b-up-p\>,n;\<varepsilon\>,D|)>> for
      every <math|n>, and signed-permutation-invariant gauge form on the fine
      tori.

      <item>A coarse bed <math|T> with <math|H<rsub|T>,\<rho\><rsub|T>\<in\><math-up|strip><around|(|\<delta\>,C|)>>,
      <math|<math-up|Floor><around|(|T,\<b-up-q\>,n;\<varepsilon\><rprime|'>,C|)>>
      for every <math|n> and some <math|\<varepsilon\><rprime|'>\<in\>\<bbb-R\>>,
      and signed-permutation-invariant gauge form on the coarse tori.

      <item>A tower with interpolation kernel <math|A<rsub|0>>, satisfying
      the quadratic-form interpolation, curl-transport and diagonal-transport
      identities of III.1 on each step. For every list <math|\<nu\>> of at
      most two fine-coordinate differences,
      <math|\<nabla\><rsup|\<nu\>>*A<rsub|0>> has strip width <math|w> and
      entrywise weighted sum at most <math|D/L<rsup|1+<around|\||\<nu\>|\|>>>.
    </itemize-minus>

    <item><em|Fine datum.> <math|R\<in\><math-up|Bounds><around|(|\<b-up-p\>;\<tau\>,A,\<Lambda\>|)>>
    attached to <math|B>, with <math|\<Lambda\>\<geqslant\>1>.

    <item><em|Stationary branches.> A common <math|\<eta\>\<gtr\>0> and, for
    each <math|i>, an axial forest <math|F<rsub|i>> and a branch
    <math|g<rsub|i>> (coarse fields <math|\<to\>> free fine variables) such
    that:

    <\itemize-minus>
      <item>for every choice of block-kernel data, the second variation in
      the free variables at <math|<around|(|0,0|)>> is at least
      <math|\<eta\>*<big|sum><rsub|e><around|\||v<rsub|e>|\|><rsup|2>>;

      <item><math|g<rsub|i><around|(|0|)>=0>, <math|g<rsub|i>> and the fine
      action are real-analytic at <math|0>, and <math|g<rsub|i>> is
      stationary for every choice of block-kernel data;

      <item>on every free edge, <math|D*g<rsub|i><around|(|0|)>*v> is the
      free interpolant in the chosen axial gauge minus the derivative of the
      copied coarse configuration;

      <item>the second jet of the tree-level coarse action is the quadratic
      form of <math|T>.
    </itemize-minus>

    <item><em|Chart.> A local Haar chart ratio <math|<math-ss|J>>.
  </itemize-minus>

  <em|Conclusion.> There are a coarse path datum <math|Y> and
  <math|\<alpha\>\<in\>\<bbb-R\>> such that:

  <\enumerate>
    <item>the rows of <math|Y> are the straight-route rows of <math|T>, and
    <math|Y> is attached to <math|T>;

    <item><math|Y\<in\><math-up|Bounds><around|(|\<b-up-q\>;\<eta\><rprime|'>,A<rprime|'>,\<Lambda\><rprime|'>|)>>
    whenever <math|0\<less\>\<eta\><rprime|'>\<leqslant\>s>,
    <math|A<rprime|'>\<geqslant\>A<rsub|\<ast\>>> and
    <math|\<Lambda\><rprime|'>\<geqslant\>max
    <around|(|\<Lambda\><rsub|0><around|(|L|)>,\<Lambda\>/2|)>>;

    <item><math|<around|\||\<alpha\>+\<kappa\>*log L|\|>+1\<leqslant\>d>;

    <item><em|classical match:> for every <math|i>, every choice <math|t> of
    block-kernel data and every <math|j\<leqslant\>4>, the <math|j>-th jets
    at <math|0> of
  </enumerate>

  <\equation*>
    x\<mapsto\>S<rsub|t><around|(|x,g<rsub|i><around|(|x|)>|)><space|1em><text|and><space|1em>x\<mapsto\><math-up|main><rsub|\<b-up-q\>,Y><around|(|e<rsup|x>|)>
  </equation*>

  coincide. Here <math|S<rsub|t><around|(|x,z|)>=<math-up|main><rsub|\<b-up-p\>,R><around|(|U<rsub|x,z>|)>+a*<big|sum><rsub|e><around*|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><around|(|V<rsub|e>*<space|0.17em>\<Pi\><rsub|t><around|(|U<rsub|x,z>|)><rsub|e><rsup|-1>|)>|)>>
  is the fine leading part plus the block-spin penalty. <math|U<rsub|x,z>> is
  the fine configuration lifted from <math|V=e<rsup|x>> through the forest
  with free variables <math|z>, and <math|\<Pi\><rsub|t>> is the block
  predictor;

  <\enumerate>
    <assign|item-nr|4><item><em|finite bound:> for every <math|i>, every
    <math|\<Theta\>\<geqslant\>\<Theta\><rsub|0><around|(|L|)>> and every
    <math|c<rprime|'>\<leqslant\>\<gamma\>>, consider the one-loop function
  </enumerate>

  <\equation*>
    <math-up|th><rsub|i,t><around|(|x|)>=<math-up|loop><rsub|R><around|(|U<rsub|x,g<rsub|i><around|(|x|)>>|)>+<tfrac|1|2>log
    det <math-up|Hess><rsub|z>S<rsub|t><around|(|x,g<rsub|i><around|(|x|)>|)>-log
    <with|math-display|false|<big|prod><rsub|e><math-ss|J><around|(|g<rsub|i><around|(|x|)><rsub|e>|)>.>
  </equation*>

  It is analytic at <math|0>, the Hessian determinant is positive near
  <math|0>, and for all coarse lattice momenta <math|p,p<rprime|'>> and real
  plane waves <math|w<rsub|p,\<xi\>><around|(|x|)>=<math-up|Re><around|(|e<rsup|i*p\<cdot\>x>*\<xi\>|)>>
  and <math|w<rsub|p<rprime|'>,\<zeta\>>>, with every direction-colour
  component of <math|\<xi\>,\<zeta\>> of modulus at most <math|1>,

  <\equation*>
    <mid|\|>D<rsup|2><math-up|th><rsub|i,t><around|(|0|)><around|[|w<rsub|p,\<xi\>>,w<rsub|p<rprime|'>,\<zeta\>>|]>-D<rsup|2>*<around*|(|\<alpha\><space|0.17em><math-up|quad><rsub|\<b-up-q\>,Y>+<math-up|loop><rsub|Y>|)><around|(|0|)><around|[|w<rsub|p,\<xi\>>,w<rsub|p<rprime|'>,\<zeta\>>|]><mid|\|>\<leqslant\><around|\||\<Lambda\><rsub|m<rsub|i>>|\|>*<space|0.17em>\<Theta\>*<space|0.17em>e<rsup|-c<rprime|'>*m<rsub|i>>.
  </equation*>

  Here <math|<math-up|quad><rsub|\<b-up-q\>,Y>> is the signed-permutation
  average of the Wilson-plaquette and row-square terms in
  <math|<math-up|main><rsub|\<b-up-q\>,Y>>, with the cubic and quartic atoms
  omitted. Its Hessian is the coarse quadratic form. The comparison function
  is also analytic at <math|0>. The estimate holds for every <math|t>.

  <em|On the constants.> <math|A<rsub|\<ast\>>> and <math|s> are fixed before
  <math|<around|(|\<tau\>,A|)>>. The drift is
  <math|d=d<rsub|<math-up|cmp>>+D<rsub|<math-up|slope>>+1>, where
  <math|d<rsub|<math-up|cmp>>> is the comparison constant of Ÿ4.8 and
  <math|D<rsub|<math-up|slope>>> is the constant of III.7.3. Both may depend
  on <math|<around|(|\<tau\>,A|)>> but are independent of <math|L>. The
  construction gives <math|\<Lambda\><rsub|0><around|(|L|)>=a<rsub|0>*L<rsup|4>+b<rsub|0>*log
  L+c<rsub|0>> and <math|\<Theta\><rsub|0><around|(|L|)>=b<rsub|1>*L<rsup|4>>,
  with nonnegative constants depending on the fixed input parameters; both
  are <math|O<around|(|L<rsup|4>|)>>.

  <em|Iteration.> Fix positive stage widths and lower bounds for the free
  quadratic forms, stage amplitude bounds, kernel parameters <math|K> and
  clip bounds. The constants are then chosen in the following order:

  <\enumerate>
    <item>maximal path widths <math|\<sigma\><rsub|j>> and minimal path
    amplitudes <math|A<rsub|j>>;

    <item>for each positive sequence <math|\<tau\><rsub|j>\<leqslant\>\<sigma\><rsub|j>>
    and sequence <math|A<rprime|'><rsub|j>\<geqslant\>A<rsub|j>>: drifts
    <math|d<rsub|j>\<geqslant\>0>, rates <math|\<gamma\><rsub|j>\<gtr\>0> and
    minimal block factors <math|u<rsub|j>>;

    <item>for every compatible choice of stage parameters, with direct clip
    coefficients below their prescribed bounds, drifts at least
    <math|d<rsub|j>> and block-factor lower bounds at least <math|u<rsub|j>>,
    and then every admissible choice of block factors: volume thresholds and
    positive Hessian lower bounds <math|\<eta\><rsub|j>>;

    <item>for every admissible protection sequence <math|\<theta\>>: entry
    thresholds <math|\<Delta\><rsub|j>> for the reference coupling.
  </enumerate>

  For each such choice, take post-step constants
  <math|\<Gamma\><rsub|j>\<geqslant\>1> and
  <math|0\<less\>c<rsub|j>\<leqslant\>\<gamma\><rsub|j>> and the Hessian
  lower bounds <math|\<eta\><rsub|j>> just chosen. The conclusion holds for
  every history satisfying the compatibility, size and coupling thresholds of
  III.2; every free-field horizon satisfying the strip, Floor, symmetry,
  top-identity, interpolation and three-form coercivity conditions of III.10;
  every second horizon with the same beds and the same interpolation and
  curl-transport kernels; and every local Haar chart ratio. For such data
  there are kinetic data <math|<around|(|\<alpha\><rsub|N,m>,P<rsub|N,m>,g<rsub|N,m>|)>>
  satisfying all the following conditions:

  <\itemize-minus>
    <item>every <math|P<rsub|N,m>> is attached to its bed and satisfies the
    level-<math|m> clauses with loop amplitude
    <math|<math-up|loopCap><rsub|m>>;

    <item><math|P<rsub|N,N>> is the Wilson top datum of III.7.2;

    <item>for every <math|m\<less\>N>, every volume index and every axial
    forest: the second-variation lower bound
    <math|\<eta\><rsub|J<rsub|m+1>>>, stationarity, the derivative condition
    and the classical match; also <math|<around|\||\<alpha\><rsub|N,m>+\<kappa\>*log
    L<rsub|m>|\|>+1\<leqslant\><math-up|drift><rsub|m+1>>, and the finite
    bound with constants <math|<around|(|\<Gamma\><rsub|J<rsub|m+1>>,c<rsub|J<rsub|m+1>>|)>>
    at loop amplitude <math|<math-up|loopCap><rsub|m+1>> and also at
    amplitude <math|1>.
  </itemize-minus>

  <em|Status:>

  <\itemize-minus>
    <item>The step and iteration are theorems; their output conditions are
    the definitions used in III.9.

    <item><hlink|<verbatim|transition_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182>
    proves the step property at every stage using III.7.3 for the input
    constants. <hlink|<verbatim|claiming>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143>,
    <hlink|<verbatim|under_contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391>
    and <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>
    iterate it.

    <item>The iteration supplies the one-loop slope internally; its remaining
    hypotheses are the free-field, history and Haar-chart conditions just
    listed.

    <item>The coarse-datum construction and induction are also expressed by
    <hlink|<verbatim|color_pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435>,
    <hlink|<verbatim|energized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285>
    and <hlink|<verbatim|plowed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335>,
    together with the preceding step theorem.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Transition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90>,
  <hlink|<verbatim|Scud>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L26-L38>,
  <hlink|<verbatim|Hull>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L25>,
  <hlink|<verbatim|Bubble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177>,
  <hlink|<verbatim|FullPaths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305>,
  <hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>,
  <hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>,
  <hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84>,
  <hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>,
  <hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>,
  <hlink|<verbatim|draft>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L51>.

  <strong|Proposition III.7.5 (uniform inverse of the completed free
  operator).> Let <math|j> be a stage, <math|K> kernel parameters,
  <math|\<sigma\>,\<varepsilon\>\<gtr\>0> and <math|\<Omega\>\<geqslant\>0>.
  There is <math|\<eta\>\<gtr\>0>, and for every block factor <math|L> a
  constant <math|A<rsub|L>\<geqslant\>0>, with the following property.

  For every admissible patch of stage <math|j> and block factor <math|L>, and
  every bed <math|B> with <math|H\<in\><math-up|strip><around|(|\<sigma\>/L,\<Omega\>|)>>
  and <math|<math-up|Floor><around|(|B,\<b-up-c\>,n;\<varepsilon\>,D|)>> for
  all <math|n>:

  <\itemize-minus>
    <item>the inverse <math|\<cal-G\><rsub|B>> of the block-Bloch symbol of
    the completed free operator lies in <math|<math-up|strip><around|(|\<eta\>,A<rsub|L>|)>>
    on the coarse lattice;

    <item>for every step with this patch (any coarse side <math|c>, fine side
    <math|c*L>, any choice of block-kernel data),
    <math|\<cal-C\><rsub|B>*<space|0.17em>\<cal-G\><rsub|B>=1>.
  </itemize-minus>

  In the rooted coordinates, the joint variables are a fine link field
  <math|v> and a coarse site field <math|h>. Before gauge completion, the
  quadratic form is

  <\equation*>
    <around|\<langle\>|d*v,H*<space|0.17em>d*v|\<rangle\>>+a*<around|\<\|\|\>|-Q*v+d<rsub|c>*h|\<\|\|\>><rsup|2>,
  </equation*>

  where <math|Q> is the linear block average and <math|d<rsub|c>> the coarse
  gradient. The completed operator adds <math|F<rsub|1/L><rsup|<math-ss|T>>*F<rsub|1/L>>,
  where <math|F<rsub|\<mu\>>=d<rsub|<space|-0.17em>1><rsup|\<ast\>>*P<rsub|f>+\<frak-m\><rsub|\<mu\>>*X>,
  <math|P<rsub|f>> projects onto fine links, and <math|X> is minus the
  derivative of the logarithm of the fine rooted frame. Here
  <math|d<rsub|<space|-0.17em>1>> is <math|d<rsub|U>> at <math|U=1>. All
  matrices use physical counting bases. The decay rate <math|\<eta\>> is
  uniform in <math|L>; only the amplitude depends on <math|L>.

  <em|Status:> theorem; used in III.4. <em|Lean:>
  <hlink|<verbatim|WilsonBulk.uniform_backing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66>,
  <hlink|<verbatim|completedM>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L18-L20>,
  <hlink|<verbatim|jointInverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L22-L23>.

  <strong|Proposition III.7.6 (Faddeev\UPopov identity for the one-loop
  term).> Fix an admissible step, a clip <math|\<b-up-p\>> and a datum
  <math|R\<in\><math-up|Bounds><around|(|\<b-up-p\>;\<sigma\>,A,\<Lambda\>|)>>
  for some <math|\<sigma\>\<gtr\>0> and <math|A,\<Lambda\>\<in\>\<bbb-R\>>.
  Let <math|g<around|(|0|)>=0> be a real-analytic stationary branch for an
  axial forest, stationary for every choice of block-kernel data, with second
  variation <math|\<geqslant\>\<eta\>*<big|sum><rsub|e><around|\||v<rsub|e>|\|><rsup|2>>
  (<math|\<eta\>\<gtr\>0>). Let <math|\<mu\>\<gtr\>0>, let <math|t> be a
  choice of block-kernel data, and let <math|<math-ss|J>> be a local Haar
  chart ratio. Then for coarse fields <math|x> near <math|0>:

  <\itemize-minus>
    <item>the completed Hessian <math|\<cal-P\><rsub|\<mu\>><around|(|x|)>>
    has positive determinant;

    <item><math|<math-up|th><around|(|x|)>=<math-up|loop><rsub|R><around|(|U<rsub|x,g<around|(|x|)>>|)>+<tfrac|1|2>log
    det \<cal-P\><rsub|\<mu\>><around|(|x|)>-log det
    \<cal-G\><rsub|\<mu\>><around|(|x|)>>.
  </itemize-minus>

  <math|\<cal-P\><rsub|\<mu\>><around|(|x|)>> acts on all fine-link and
  coarse-frame directions. It is the Hessian in left exponential coordinates
  of the joint action

  <\equation*>
    <with|math-font|cal*|S><rsub|t><around|(|V;U,h|)>=<math-up|main><rsub|\<b-up-p\>,R><around|(|U|)>+a*<big|sum><rsub|e><around*|(|1-d<rsub|<math-up|rep>><rsup|-1><math-up|Re><space|0.17em><math-up|tr><around*|(|V<rsub|e><around|[|<math-up|gauge><rsub|h>\<Pi\><rsub|t><around|(|U|)>|]><rsub|e><rsup|-1>|)>|)>,
  </equation*>

  at <math|V=e<rsup|x>> and the lifted joint stationary configuration, plus
  <math|F<rsub|\<mu\>><rsup|<math-ss|T>>*F<rsub|\<mu\>>>. Here
  <math|F<rsub|\<mu\>>=d<rsub|U><rsup|\<ast\>>*P<rsub|f>+\<frak-m\><rsub|\<mu\>><around|(|U|)>*X>,
  with the rooted-frame derivative <math|X> as in III.7.5. The joint
  stationary configuration combines the lifted fine field
  <math|U<rsub|x,g<around|(|x|)>>> with its coarse frame.
  <math|\<cal-G\><rsub|\<mu\>>=d<rsub|U><rsup|\<ast\>>*d<rsub|U>+\<frak-m\><rsub|\<mu\>><around|(|U|)>>
  is the ghost operator at the lifted configuration. The underlying algebraic
  identity is

  <\equation*>
    T<rsup|2>*det \<cal-P\><rsub|\<mu\>>=det M<space|0.17em><around|(|det
    \<cal-G\><rsub|\<mu\>>|)><rsup|2>,
  </equation*>

  with <math|M> the axial Hessian and <math|T> the Haar Jacobian of the
  chart.

  <em|Status:> theorem; used in the renormalization and remainder comparisons
  of III.4, III.2 and VII.2. <em|Lean:> <hlink|<verbatim|tribute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202>,
  <hlink|<verbatim|bounty>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L166-L167>,
  <hlink|<verbatim|medals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60>.

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|I.1 (gauge groups, Wilson action).> <math|E<rsub|W>>, the
    exponential chart, <math|<math-up|Ad>>, the Casimir <math|C<rsub|G>>, and
    <math|\<kappa\>> with <math|\<kappa\>\<gtr\>0>
    (<hlink|<verbatim|slopeConstant_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176>,
    <hlink|<verbatim|casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182>).
    Simplicity enters as <math|<math-up|tr><around|(|<math-up|ad><rsub|b><math-up|ad><rsub|b>|)>=-C<rsub|G>>
    for every unit vector <math|b>, and through Schur's lemma.

    <item><strong|III.1 (block-spin step).> The specifications of III.7.1.
    Also: steps, patches (block factor <math|L>, stage <math|J>), axial
    forests (tree gauge), the fine action plus block penalty, and the
    stationarity notions (stationarity, second-variation lower bound,
    derivative condition, equality of jets, classical match). Further: the
    one-loop function, the finite bound, the kinetic data and the iteration
    conditions, towers, horizons, and local Haar chart ratios.

    <item><strong|III.6 (stationary branch).> For every admissible step there
    is a Hessian lower bound <math|\<eta\><rsub|j>\<gtr\>0> (chosen after
    <math|L>) such that every admissible fine datum has a stationary branch
    with:

    <\itemize-minus>
      <item>second variation <math|\<geqslant\>\<eta\><rsub|j>>;

      <item>derivative given by the free interpolation in the chosen axial
      gauge, after subtracting the copied coarse field;

      <item>quadratic part equal to the coarse bed.
    </itemize-minus>

    This is <hlink|<verbatim|Integrated.stationary_scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232>,
    packaged here by <hlink|<verbatim|scene_gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L58-L61>.
    Also from III.6: positivity of the Hessian near <math|0>
    (<hlink|<verbatim|hessian_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79>)
    and independence of the one-loop function from the forest
    (<hlink|<verbatim|same_thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57>).

    <item><strong|III.10 (conditions on beds and steps).>

    <\itemize-minus>
      <item><hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>:
      signed-permutation invariance of the bed's gauge form.

      <item><hlink|<verbatim|Bid.HeatG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84>:
      quadratic jet of the tree-level action.

      <item><hlink|<verbatim|Bid.Larger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64>:
      size of the torus.

      <item><hlink|<verbatim|Craft.Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>
      and <hlink|<verbatim|Bid.Retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105>:
      uniform strip and Floor bounds, symmetry and three-form coercivity for
      the free-field horizon; and equality of the beds and the two
      interpolation kernels for the second horizon.

      <item><hlink|<verbatim|Bid.one_for_all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Scope.lean#L35-L43>:
      the classical match does not depend on the forest.
    </itemize-minus>

    <item><strong|III.2 (order of constants).> The admissible stage
    parameters, block factors, protection exponents, entry and volume
    thresholds, and the history compatibility conditions
    <hlink|<verbatim|Supply.Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>,
    free-field bounds and constants chosen after the block factors. Also the
    reference coupling <hlink|<verbatim|\<beta\>\<#302\>_m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>
    <math|=<wide|\<beta\>|\<bar\>>+\<kappa\>*s<rsub|m>> and the loop cap
    <hlink|<verbatim|loopCap_m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86>
    <math|=2*exp <around*|(|\<theta\><rsub|J<rsub|m>><around|(|log log
    <wide|\<beta\>|^><rsub|m>|)><rsup|2>|)>>.

    <item><strong|II.1.> The local Haar chart ratio of the exponential chart
    (<hlink|<verbatim|chart_ok>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FOUNDATIONS/Primary.lean#L84>),
    used in the iteration.

    <item><strong|III.16, III.3.> Laurent/Bloch calculus on strips (products,
    inverses, Cauchy estimates, Riemann sums versus integrals); the
    block-Bloch ("slab") representation of fine translation-invariant
    operators on the coarse lattice.

    <item><strong|Standard mathematics.>

    <\itemize-minus>
      <item>Taylor expansion of the plaquette action; polarization (a jet is
      determined by its restrictions to lines).

      <item>The Koszul complex of the regular sequence
      <math|q<rsub|j><around|(|p|)>=e<rsup|i*p<rsub|j>>-1> with Hadamard
      division in a strip, i.e. the lattice Poincaré lemma in momentum space.

      <item>Schur's lemma for invariant forms on a simple Lie algebra.

      <item>The Faddeev\UPopov procedure.

      <item>The background-field method ('t Hooft and Abbott;
      Peskin\USchroeder, Ÿ16.6).

      <item>The one-loop <math|\<beta\>>-function (Gross\UWilczek and
      Politzer) and its orbital/spin split
      <math|-<tfrac|11|3>=<tfrac|1|3>-4>.

      <item>Balaban's propagator bounds and background-field renormalization
      group; see also Dimock, <em|The renormalization group according to
      Balaban>.

      <item>Rotation-invariant integrals over shells in
      <math|\<bbb-R\><rsup|4>>.
    </itemize-minus>

    <item><strong|Imported constants and assumptions.> No one-loop
    coefficient is assumed. <math|\<kappa\>> is defined in I.1, and III.7.3
    proves that it is the one-loop slope. The hypotheses carried are those
    displayed in the propositions; the free-field and history assumptions are
    supplied by III.4.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  <strong|Classical part.> At every level the quadratic part of the leading
  action is fixed by the free-field bed of that level. The cubic and quartic
  parts are curvature atoms, determined by Taylor agreement through order
  four with a given gauge-invariant function <math|E>. At the top, <math|E>
  is the Wilson energy. At each step, <math|E> is the tree-level coarse
  action <math|x\<mapsto\>S<rsub|t><around|(|x,g<around|(|x|)>|)>>. The
  atom-emission lemma (Ÿ4.3, Lemma 4.4) serves both cases. Its mechanism has
  four parts:

  <\enumerate>
    <item>The Taylor coefficients of a translation sum of local analytic
    functionals have Fourier kernels on <math|\<bbb-Z\><rsup|4>> that are
    strip-analytic. Finite-volume coefficients agree with
    <math|<around|\||\<Lambda\><rsub|n>|\|>> times these kernels up to
    <math|o<around|(|<around|\||\<Lambda\><rsub|n>|\|>|)>> along any sequence
    of sides; this is how volume-uniformity enters.

    <item>Gauge invariance makes the kernels transversal in each leg
    (linearized Ward identity).

    <item>Transversal kernels with at least three legs factor through the
    curvature. This is the lattice Poincaré lemma, proved by contracting the
    Koszul complex of the differences <math|e<rsup|i*p<rsub|j>>-1>, one axis
    at a time, with Hadamard division. A one-leg solve reduces the width from
    <math|\<sigma\>> to <math|\<sigma\>/4> once, regardless of the four
    coordinate divisions within it. Successive leg solves cause further width
    losses, depending only on the fixed number of legs.

    <item>The real, colour-invariant Laurent coefficients of the factored
    kernels are the coefficients of atoms, and exponential decay is the strip
    bound.
  </enumerate>

  <strong|One-loop part.>

  <\enumerate>
    <item>In the axial chart the one-loop term is
    <math|<math-up|loop>+<tfrac|1|2>log det-log <around|(|<text|Haar
    Jacobian>|)>>. An exact Faddeev\UPopov identity turns it into
    <math|<tfrac|1|2>log det> of a covariantly completed Hessian minus
    <math|log det> of a ghost operator.

    <item>Its second-order Taylor coefficient is a two-leg kernel. Its
    <math|F<rsup|2>>-coefficient <math|\<alpha\>> is compared, with an
    <math|L>-independent error, to that of the regulated Feynman-gauge
    background-field determinant on the fine lattice.

    <item>The latter is computed. The lattice integrand is the continuum
    bubble integrand <math|h<around|(|k|)>> of the vector loop (weight
    <math|<tfrac|1|2>>) and the ghost loop (weight <math|-1>), up to errors
    <math|O<around|(|<around|\||k*<around|\||<rsup|-3>+\<mu\><rsup|2>|\|>*k|\|><rsup|-6>|)>>;
    its angular average is <math|-<tfrac|11|3>C<rsub|G><around|\||k|\|><rsup|-4>>.
    Integration over the shell <math|1/L\<less\><around|\||k|\|>\<leqslant\>1>
    gives <math|-\<kappa\>*log L>, and the rest is bounded by absolute
    values.

    <item>After subtracting <math|\<alpha\>> times the bed's quadratic
    kernel, the remaining kernel vanishes to fourth order at zero momentum.
    It is therefore represented by loop atoms satisfying the two moment
    conditions, i.e. by irrelevant terms. Inherited fine loop atoms
    contribute with a factor <math|L<rsup|-2>>.
  </enumerate>

  <strong|Constants.> The output width and cubic/quartic amplitude of a step
  are fixed before the input amplitude. The input enters the output only with
  factors <math|L<rsup|-1>> or <math|L<rsup|-2>>, which a large <math|L>
  makes small. The strip widths and inverse bounds for the completed
  operators are uniform in <math|L> in block-scaled norms. The newly
  generated loop-atom amplitude is <math|O<around|(|L<rsup|4>|)>>. It is
  absorbed by <math|<math-up|loopCap><rsub|m>>, which grows with
  <math|<wide|\<beta\>|^><rsub|m>>.

  <strong|Relation to Balaban.> The construction uses background-field
  renormalization with block-spin constraints. Here:

  <\itemize-minus>
    <item>the effective action is carried by explicit, exponentially weighted
    path data;

    <item>the <math|F<rsup|2>>-coefficient is obtained by comparison with a
    regulated covariant determinant plus a Fourier computation, with
    <math|O<around|(|1|)>> error, for an arbitrary simple compact gauge
    group.
  </itemize-minus>

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Fourier kernels of local
  functionals><label|41-fourier-kernels-of-local-functionals>

  <strong|Lemma 4.1 (translation sums of local functionals; limits of
  kernels).> (a) Let <math|F<rsub|k>> be functions of configurations on
  <math|\<bbb-Z\><rsup|4>>. Suppose <math|F<rsub|k>> depends only on links in
  a box of size <math|d<rsub|k>>, has a holomorphic extension with bound
  <math|w<rsub|k>> on a polydisc of radius <math|r> around the identity,
  uniformly after translation and periodic restriction, and
  <math|<big|sum><rsub|k>w<rsub|k>*exp <around|(|4*<around|(|t+1|)><rsup|2>*\<sigma\>*d<rsub|k>|)>\<leqslant\>A>,
  with <math|r,\<sigma\>\<gtr\>0> and <math|w<rsub|k>\<geqslant\>0>. Then for
  every side <math|n> the translation sum on <math|\<Lambda\><rsub|n>> is
  analytic at <math|1>. Its <math|<around|(|t+1|)>>-th Taylor coefficient is
  recorded <em|exactly> by a kernel that is strip-analytic of width
  <math|\<sigma\>> and size <math|A*<space|0.17em>c<around|(|t,r|)>>,
  independent of <math|n>. For the Wilson energy, kernels of every order
  exist with width <math|1>. (b) Suppose a strip-analytic kernel records
  <math|F<rsub|i>> on <math|\<Lambda\><rsub|n<rsub|i>>> with error
  <math|<around|\||\<Lambda\><rsub|n<rsub|i>>|\|>*\<epsilon\><rsub|i>>, where
  <math|n<rsub|i>\<to\>\<infty\>> and <math|\<epsilon\><rsub|i>\<to\>0>. If
  the <math|F<rsub|i>> are analytic, invariant near <math|0> under global
  colour rotations and lattice gauge transformations, and their Taylor
  coefficients of positive orders <math|1,\<ldots\>,t> vanish, then the
  kernel is transversal in each leg, real and colour invariant. <em|Sketch:>
  (a) Cauchy estimates on the polydisc bound each local Taylor coefficient;
  its Fourier support has size at most <math|4*<around|(|t+1|)><rsup|2>*d<rsub|k>>,
  which gives the stated exponential factor. (b) Each property holds exactly
  for the finite-volume coefficients; divide by
  <math|<around|\||\<Lambda\><rsub|n<rsub|i>>|\|>> and pass to the limit
  along lattice momenta approaching any prescribed real momenta. Strip
  analyticity gives the required continuity. <em|Lean:>
  <hlink|<verbatim|gathered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/LocalOracle.lean#L312-L348>,
  <hlink|<verbatim|Wilson_stream>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L312-L326>,
  <hlink|<verbatim|withdrew>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L647-L697>,
  <hlink|<verbatim|wedlock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Vertex.lean#L371-L379>.
  <em|(proof read at top level; Ward identity input statement only)>

  <subsection|4.2 The lattice Poincaré lemma in momentum
  space><label|42-the-lattice-poincarÃ©-lemma-in-momentum-space>

  <strong|Lemma 4.2 (one-leg solve).> Let the momentum space have <math|d>
  scalar coordinates, including four selected coordinates, and let
  <math|\<delta\>> contract differential forms with
  <math|q<rsub|j><around|(|p|)>=e<rsup|i*p<rsub|j>>-1> in those four
  coordinates. Let <math|\<sigma\>\<gtr\>0>, <math|A\<geqslant\>0>, and let
  <math|f> be a form of degree <math|r\<geqslant\>0> with the following
  properties:

  <\itemize-minus>
    <item>each component is strip-analytic of width <math|\<sigma\>> and size
    <math|A>;

    <item><math|\<delta\>*f=0>;

    <item><math|f> vanishes to order <math|s> along rays;

    <item>on real momenta, <math|f> takes values in subspaces unchanged when
    any of the four selected momentum coordinates varies;

    <item>if <math|r=0>, <math|f> vanishes where the projected momentum is
    <math|0>.
  </itemize-minus>

  Then <math|f=\<delta\>*B>, where <math|B> has degree <math|r+1>, is
  strip-analytic of width <math|\<sigma\>/4> and size
  <math|4*A*<space|0.17em>\<pi\><rsub|d><around|(|\<sigma\>|)>> with
  <math|\<pi\><rsub|d><around|(|\<sigma\>|)>=<around|(|4/\<sigma\>|)>*<around*|(|2*<around|(|1+\<sigma\>/4|)>/<around|(|\<sigma\>/4|)>|)><rsup|d>>,
  vanishes to order <math|max <around|(|s-1,0|)>>, and takes values in the
  same subspaces on real momenta. <em|Sketch:> Comb one axis at a time.
  <math|f<around|(|p|)>-f<around|(|p|)>\|<rsub|p<rsub|j>=0>=q<rsub|j><around|(|p|)>*D<rsub|j><around|(|p|)>>
  by Hadamard division (<hlink|<verbatim|div_var>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L88-L128>).
  <math|D<rsub|j>> has width <math|\<sigma\>/4> and size
  <math|A*\<pi\><rsub|d><around|(|\<sigma\>|)>> by Cauchy estimates, while
  the restriction <math|f\|<rsub|p<rsub|j>=0>> keeps width <math|\<sigma\>>.
  After all four axes, no positive-degree component remains. In degree zero
  the remainder is <math|f> with all selected momenta set to zero, which
  vanishes by hypothesis. The factor <math|4> counts the axes; the width loss
  is a single one. For positive vanishing order, division by
  <math|q<rsub|j>\<sim\>i*p<rsub|j>> lowers it by one; order zero remains
  order zero. <em|Lean:> <hlink|<verbatim|wall_lift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L571-L587>.

  <strong|Lemma 4.3 (transversal kernels are curvature kernels; atoms).> For
  every <math|t\<geqslant\>2> and <math|\<sigma\>\<gtr\>0>, there are
  <math|\<eta\>\<in\><around|(|0,\<sigma\>|]>> and <math|K\<geqslant\>0> such
  that every <math|<around|(|t+1|)>>-leg kernel <math|f>, strip-analytic of
  width <math|\<sigma\>> and size <math|A\<geqslant\>0> and transversal in
  each leg, admits the factorization

  <\equation*>
    f<around|(|p|)>=<big|sum><rsub|b><big|prod><rsub|i><wide|s|^><around|(|p<rsub|i>|)><rsub|b<rsub|i>*a<rsub|i>>*<space|0.17em>g<rsub|b><around|(|p|)>,
  </equation*>

  for real momenta, where <math|<wide|s|^>> is the symbol of the lattice curl
  and <math|g> is a plaquette kernel, strip-analytic of width <math|\<eta\>>
  and size <math|A*K>, with <math|\<eta\>,K> depending on <math|t,\<sigma\>>.
  If <math|f> is also real and colour invariant, the Laurent coefficients of
  <math|g> can be taken real, colour invariant and exponentially decaying.
  Placed on straight routes, they define atoms. If <math|f> records an
  analytic functional invariant under signed permutations, the
  signed-permutation average of their translation sum reproduces that Taylor
  coefficient up to the recording error. <em|Sketch:> Solve the
  dependent-momentum leg first, then the independent legs by Lemma 4.2,
  preserving the subspace constraints from the earlier solves. Symmetrize by
  conjugate reflection to obtain real Laurent coefficients and project the
  colour tensors onto the invariant subspace. <em|Lean:>
  <hlink|<verbatim|allleg>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/ManyLegs.lean#L533-L549>,
  <hlink|<verbatim|strokes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L193-L201>,
  <hlink|<verbatim|colors_align>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Ward.lean#L192-L216>.
  <em|(proof read at top level)>

  <subsection|4.3 Classical emission and the Wilson
  jet><label|43-classical-emission-and-the-wilson-jet>

  <strong|Lemma 4.4 (emission of cubic and quartic atoms).> Let
  <math|\<sigma\>,\<sigma\><rsub|0>\<gtr\>0> and <math|A,Z\<geqslant\>0>.
  There are <math|\<tau\>\<in\><around|(|0,\<sigma\>|]>> and
  <math|C\<geqslant\>0> with the following property.

  <em|Hypotheses:>

  <\itemize-minus>
    <item>sides <math|n<rsub|i>\<to\>\<infty\>>;

    <item>a bed <math|B> with <math|\<rho\>\<in\><math-up|strip><around|(|\<sigma\><rsub|0>,A|)>>
    and Floor on the one-site torus, and a clip with
    <math|c<rsub|<math-up|dir>>\<leqslant\>Z>;

    <item>real-analytic functions <math|E<rsub|i>> of link fields on
    <math|\<Lambda\><rsub|n<rsub|i>>>, invariant near <math|0> under lattice
    gauge transformations, global colour rotations and signed permutations,
    such that <math|E<rsub|i>> minus the bare row action of <math|B> vanishes
    to order <math|3> along rays; the bare row action has the straight-route
    rows of <math|\<rho\>> and no atoms;

    <item><math|M\<geqslant\>1> such that the Taylor coefficients of orders
    <math|3> and <math|4> of <math|E<rsub|i>> are recorded exactly by kernels
    strip-analytic of width <math|\<sigma\>> and size <math|M>.
  </itemize-minus>

  <em|Conclusion:> there are invariant cubic atoms <math|X> and quartic atoms
  <math|V> with sums of exponential weights at most <math|M*C> at width
  <math|\<tau\>> such that, for every choice <math|f> of loop atoms and every
  <math|i>, <math|x\<mapsto\>E<rsub|i><around|(|x|)>-<math-up|main><rsub|\<b-up-c\>,<around|(|\<rho\><text|-rows>,f,X,V|)>><around|(|e<rsup|x>|)>>
  vanishes to order <math|5> along rays. <em|Sketch:> At order <math|3>,
  subtract the full bare row action, whose quadratic jet agrees with that of
  <math|E>. The residual kernel is transversal (Lemma 4.1(b)) and is matched
  by cubic atoms (Lemma 4.3). At order <math|4>, subtract the same bare row
  action and the cubic atoms; the remainder is transversal and is matched by
  quartic atoms. <em|Lean:> <hlink|<verbatim|assembly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L561-L595>.

  <strong|Lemma 4.5 (proof of III.7.2).>

  <\enumerate>
    <item>Take <math|E<rsub|i>=E<rsub|W>> on
    <math|\<Lambda\><rsub|n<rsub|i>>>. The kernels of orders <math|3> and
    <math|4> come from Lemma 4.1(a).

    <item>Under <math|D=1>, Floor and invariance, <math|H> agrees with the
    identity on exact 2-forms. Hence <math|E<rsub|W>> minus the quadratic
    term of the bare datum (rows of <math|\<rho\>>, no atoms) vanishes to
    order <math|3> (<hlink|<verbatim|top_Wilson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L441-L471>).

    <item>Lemma 4.4 gives <math|X,V>, and <math|Q> is formed from the rows of
    <math|\<rho\>>, zero loop atoms, <math|X> and <math|V>.

    <item>Order-<math|5> vanishing along every ray of the difference of two
    analytic functions gives equality of all derivatives of order
    <math|\<leqslant\>4> (<hlink|<verbatim|matched>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L254-L260>).

    <item>The weight clauses come from the row prices
    <math|6*A*e<rsup|4*\<sigma\><rsub|0>>>, the zero-momentum normalization
    (Floor on the one-site torus, <hlink|<verbatim|symbol_match>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L214-L258>),
    and the common atom bound <math|<around|(|1+C<rsub|3>+C<rsub|4>|)>*C>,
    where <math|C<rsub|3>,C<rsub|4>> bound the Wilson Taylor kernels and
    <math|C> is the emission constant.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|launch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L270-L305>,
  <hlink|<verbatim|beckon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L101-L105>,
  <hlink|<verbatim|budding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L220-L225>.

  <strong|Lemma 4.6 (every admissible leading part is Wilson up to irrelevant
  terms).> Fix <math|\<sigma\>,\<tau\>\<gtr\>0>,
  <math|\<varepsilon\>\<in\>\<bbb-R\>> and <math|C,Z,A\<geqslant\>0>. Let
  <math|n<rsub|i>\<to\>\<infty\>>, <math|c<rsub|<math-up|dir>>\<leqslant\>Z>,
  and let <math|R\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<tau\>,A,\<Lambda\>|)>>
  be attached to a bed with <math|<math-up|Floor><around|(|B,\<b-up-c\>,n;\<varepsilon\>,C|)>>
  for every <math|n>, invariant gauge form on each
  <math|\<Lambda\><rsub|n<rsub|i>>> and <math|H\<in\><math-up|strip><around|(|\<sigma\>,C|)>>.
  Then the Taylor kernels of orders <math|2>, <math|3> and <math|4> of
  <math|<math-up|main><rsub|\<b-up-c\>,R>-E<rsub|W>> vanish at zero momentum
  to orders <math|3>, <math|2> and <math|1> respectively. Their strip bounds
  depend only on <math|<around|(|\<sigma\>,\<varepsilon\>,C,Z,\<tau\>,A|)>>.
  In words: all admissible leading parts share the marginal (dimension-four)
  part of <math|E<rsub|W>>. <em|Sketch:> <math|<wide|H|^><around|(|0|)>=1>
  makes the quadratic difference vanish to order <math|3>. Ward identities
  then force the cubic and quartic differences to vanish to orders <math|2>
  and <math|1>. Apply the same Ward argument to the invariant cubic and
  quartic atom sums, whose quadratic jets vanish. These statements concern
  their full nonlinear Taylor coefficients, including transport and curvature
  expansions. <em|Lean:> <hlink|<verbatim|greyson>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L363-L403>,
  <hlink|<verbatim|veneer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L349-L358>,
  <hlink|<verbatim|extra_curves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/SoftTransfers.lean#L59-L103>,
  <hlink|<verbatim|saunter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L528-L535>,
  <hlink|<verbatim|tideMark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L41-L54>.
  <em|(proof read at top level)>

  <subsection|4.4 Two-leg kernels: the <math|F<rsup|2>>-coefficient and
  irrelevance><label|44-two-leg-kernels-the-f2-coefficient-and-irrelevance>

  <strong|Lemma 4.7 (a two-leg kernel without <math|F<rsup|2>>-term vanishes
  to fourth order).> Let <math|G> be simple. Let <math|f> be a two-leg kernel
  that is strip-analytic, transversal, real, colour invariant, symmetric
  under exchange of the legs, and invariant under signed permutations. If the
  <math|p<rsub|q><rsup|2>>-coefficient of
  <math|f<rsub|<around|(|b,b|)>,<around|(|w,w|)>><around|(|p|)>>, for
  <math|p> along an axis <math|q\<neq\>w>, vanishes for one colour <math|b>,
  then <math|f> vanishes to order <math|4> at zero momentum. Consequently,
  for every bed with positive metric strip width,
  <math|<wide|H|^><around|(|0|)>=1> and signed-permutation-invariant
  quadratic form, <math|f-\<alpha\><rsub|b><around|(|f|)>*<space|0.17em><wide|K|^><rsub|B>>
  vanishes to order <math|4>, where <math|<wide|K|^><rsub|B>> is the bed's
  quadratic kernel. <em|Sketch:>

  <\itemize-minus>
    <item>Transversality gives vanishing to order <math|2>.

    <item>The third-order coefficient is odd under <math|p\<mapsto\>-p>,
    hence <math|0> by reflection symmetry.

    <item>By transversality, hypercubic symmetry and Schur's lemma, the
    second-order coefficient is a multiple of
    <math|<around|(|p<rsup|2>*\<delta\><rsub|a*a<rprime|'>>-p<rsub|a>*p<rsub|a<rprime|'>>|)>*\<delta\><rsub|b*b<rprime|'>>>,
    and the multiple is the given coefficient. <em|Lean:>
    <hlink|<verbatim|TributeColor.vanish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L611-L625>,
    <hlink|<verbatim|subtract_fee>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L710-L727>.
    <em|(proof read at top level)>
  </itemize-minus>

  <strong|Lemma 4.8 (loop atoms are irrelevant).> Let
  <math|R\<in\><math-up|Bounds><around|(|\<b-up-c\>;\<sigma\>,C,\<Lambda\>|)>>.
  The two-leg kernel of the loop atoms, symmetrized over legs and lattice
  symmetries:

  <\itemize-minus>
    <item>records <math|<math-up|loop><rsub|R>> exactly on every torus;

    <item>is strip-analytic of width <math|\<sigma\>> and size
    <math|\<Lambda\>*<space|0.17em>r<around|(|\<sigma\>|)>>;

    <item>vanishes to order <math|4> at zero momentum.
  </itemize-minus>

  <em|Sketch:> The kernel is <math|<wide|s|^><around|(|-p|)><rsup|<math-ss|T>><wide|K|^><around|(|p|)><wide|s|^><around|(|p|)>>
  with <math|<wide|K|^><around|(|p|)>=<big|sum><math-up|coeff><space|0.17em>e<rsup|i*p\<cdot\>y>>.
  Here <math|<wide|s|^>=O<around|(|p|)>>, and the two moment conditions give
  <math|<wide|K|^><around|(|0|)>=0> and <math|\<nabla\><wide|K|^><around|(|0|)>=0>.
  <em|Lean:> <hlink|<verbatim|filing_ready>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Scaled.lean#L231-L234>.

  <subsection|4.5 The one-loop term in covariant
  form><label|45-the-one-loop-term-in-covariant-form>

  <strong|Lemma 4.9 (proof of III.7.6).> Let <math|H<rsub|<math-up|joint>>>
  be the Hessian of the joint action before gauge completion, and let
  <math|<math-ss|R>> select its axial directions. Three determinant
  identities combine:

  <\itemize-minus>
    <item>the completed Hessian factors as <math|det
    \<cal-P\><rsub|\<mu\>>=<around|(|det \<cal-G\><rsub|\<mu\>>|)><rsup|2>*det
    <around|(|<math-ss|R><rsup|<math-ss|T>>H<rsub|<math-up|joint>><math-ss|R>|)>>
    (<hlink|<verbatim|root_determines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L491-L502>);

    <item>the axial Hessian satisfies <math|det M=<around|(|det
    \<partial\>*s|)><rsup|2>*det <around|(|<math-ss|R><rsup|<math-ss|T>>H<rsub|<math-up|joint>><math-ss|R>|)>>,
    where <math|s> is the left-trivializing chart change
    (<hlink|<verbatim|certified>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L140-L161>);

    <item>the Haar Jacobian is <math|T=<around|\||det \<partial\>*s|\|>>
    (<hlink|<verbatim|treasury>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L63-L114>,
    by comparison of densities on compact sets).
  </itemize-minus>

  Together they give <math|T<rsup|2>*det \<cal-P\><rsub|\<mu\>>=det
  M<around|(|det \<cal-G\><rsub|\<mu\>>|)><rsup|2>>. <math|det M\<gtr\>0> by
  the second-variation lower bound and <math|det
  \<cal-G\><rsub|\<mu\>>\<gtr\>0> since <math|\<cal-G\><rsub|\<mu\>>\<geqslant\>\<frak-m\><rsub|\<mu\>>\<gtr\>0>;
  take logarithms.

  In addition, the one-loop function is analytic at <math|0>
  (<hlink|<verbatim|born>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L76-L103>),
  and a finite bound proved for one forest transfers to any other
  (<hlink|<verbatim|transfer_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L105-L113>).
  <em|Lean:> <hlink|<verbatim|tribute>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/HaarJac.lean#L177-L202>.
  <em|(proof read; determinant factorization inputs statement only)>

  <subsection|4.6 Uniform invertibility of the fluctuation
  operators><label|46-uniform-invertibility-of-the-fluctuation-operators>

  <strong|Lemma 4.10 (real stability and complex invertibility).> Fix a stage
  <math|j>, a penalty <math|a\<gtr\>0>, a lower bound
  <math|\<varepsilon\>\<gtr\>0> and a bound <math|A<rsub|F>\<geqslant\>0> for
  the gauge-completing map <math|F>. Let

  <\equation*>
    \<cal-C\><rsub|F><around|(|p|)>=\<cal-Q\><rsub|B><around|(|p|)>+F*<around|(|-p|)><rsup|<math-ss|T>>*F<around|(|p|)>,
  </equation*>

  where <math|\<cal-Q\><rsub|B>> is the block-Bloch symbol of the joint
  quadratic form in III.7.5. Suppose <math|B> has metric strip bound
  <math|<around|(|\<sigma\>/L,\<Omega\>|)>> and Floor lower bound
  <math|\<varepsilon\>> on every torus, and <math|F> is holomorphic and
  periodic in width <math|\<sigma\>\<gtr\>0>, with block-scaled norm at most
  <math|A<rsub|F>>. On real momenta require

  <\equation*>
    F<around|(|p|)>*R<rsub|<math-up|gauge>><around|(|p|)>=\<cal-G\><rsub|1/L><around|(|p|)>,<space|2em>F*<around|(|-p|)><rsup|<math-ss|T>>=F<around|(|p|)><rsup|\<ast\>>,
  </equation*>

  where <math|R<rsub|<math-up|gauge>>> inserts a fine gauge direction into
  the joint variables and <math|\<cal-G\><rsub|1/L>> is the free regulated
  ghost symbol.

  (a) There is <math|y\<gtr\>0>, depending only on
  <math|<around|(|G,j,a,A<rsub|F>,\<varepsilon\>|)>>, such that
  <math|<around|\<\|\|\>|\<cal-C\><rsub|F><around|(|p|)>*v|\<\|\|\>>\<geqslant\>y<around|\<\|\|\>|v|\<\|\|\>>>
  in the block-scaled coordinates for every real <math|p>, every <math|L> and
  every patch of stage <math|j>.

  (b) If <math|0\<less\>\<sigma\>\<leqslant\>1>,
  <math|\<Omega\>\<geqslant\>0>, the patch is admissible, and <math|F>
  represents the rooted gauge-completing map on a sequence of tori with
  coarse sides tending to infinity, then there are
  <math|\<eta\>\<in\><around|(|0,\<sigma\>|]>> and <math|C\<geqslant\>0>,
  depending only on <math|<around|(|G,j,K,\<varepsilon\>,\<sigma\>,\<Omega\>,A<rsub|F>|)>>,
  such that <math|\<cal-C\><rsub|F><rsup|-1>> is holomorphic in width
  <math|\<eta\>> and has block-scaled norm at most <math|C>, uniformly in
  <math|L>.

  <em|Sketch:> The real estimate controls the quotient by gauge directions
  using the quadratic form and block penalty; the displayed identity controls
  the remaining gauge directions. Strip bounds give a uniform perturbation
  estimate from real to nearby complex momenta. Choose the width so that this
  perturbation is smaller than the real lower bound.

  <em|Lean:> <hlink|<verbatim|stadium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/RealGap.lean#L647-L664>,
  <hlink|<verbatim|post_cert>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/ComplexGap.lean#L330-L353>.
  <em|(proof read at top level; real quotient and strip perturbation
  estimates not expanded)>

  <strong|Lemma 4.11 (all five operators).> Fix the numerical parameters of
  III.7.4. There are <math|0\<less\>\<eta\>\<leqslant\>w<rsub|0>\<leqslant\>min
  <around|(|w,\<delta\>,1/128|)>> and <math|C\<geqslant\>0>, depending only
  on the free-field bounds, <math|G,K> and <math|J>, with the following
  property. Under the geometric, fine-bed, fine-datum and interpolation
  hypotheses of III.7.4, form the actual fluctuation symbols using the free
  interpolation <math|A<rsub|0>> and the block predictor. At zero background,
  the following five operators are invertible in width <math|\<eta\>>, with
  inverse norm at most <math|C> in their respective block-scaled coordinates,
  uniformly in <math|L> and in the input path width, cubic/quartic amplitude
  and loop amplitude:

  <\itemize-minus>
    <item>the auxiliary operator;

    <item>its block-aliased copy;

    <item>the completed Hessian;

    <item>the completed Hessian without the contact term;

    <item>the ghost operator.
  </itemize-minus>

  The unaliased free auxiliary operator and the free regulated ghost operator
  satisfy corresponding inverse bounds. <em|Sketch:> Bound the fine auxiliary
  and ghost inverses directly in Fourier space and transfer the auxiliary
  bound to its aliased copy. Apply Lemma 4.10 to the joint completion, then
  use finite-volume compatibility for the completed and contact-removed
  symbols. Take minima of widths and maxima of constants. <em|Lean:>
  <hlink|<verbatim|honored>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L25-L68>,
  <hlink|<verbatim|GrantF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22>,
  <hlink|<verbatim|completion_choice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Joint.lean#L44-L69>.
  <em|(proof read at top level)>

  <strong|Lemma 4.12 (proof of III.7.5).>

  <\enumerate>
    <item>Choose <math|<around|(|\<eta\>,C|)>> by Lemma 4.10(b) for the
    regulator family of the completed operator.

    <item>For each <math|L>, a constant <math|W<around|(|L|)>> converts
    block-scaled norms into the plain strip norm.

    <item>The bound on the inverse gives the strip bound
    <math|<around|(|\<eta\>/2,<math-up|cost><around|(|\<eta\>,C*W<around|(|L|)>|)>|)>>.

    <item>The inverse Fourier coefficients are real by finite-volume
    compatibility. On every torus their Fourier multiplier is the inverse
    symbol, which gives the matrix identity.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|uniform_backing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/WilsonBulk/Spectral/Backing.lean#L54-L66>.

  <subsection|4.7 The slope of the regulated
  determinant><label|47-the-slope-of-the-regulated-determinant>

  <strong|Lemma 4.13 (the continuum bubble).> Assume <math|G> is simple. Take
  an external field of colour <math|b>, polarization <math|e<rsub|1>> and
  momentum <math|t*<space|0.17em>e<rsub|0>>, and loop momentum
  <math|k\<neq\>0>.

  <\itemize-minus>
    <item>The vector bubble has orbital vertex <math|-2*i*k<rsub|1>> and spin
    vertex <math|\<pm\>2*i*t> in the <math|<around|(|0,1|)>> plane.

    <item>Both bubbles carry the colour trace
    <math|<math-up|tr><around|(|<math-up|ad><rsub|b><rsup|2>|)>=-C<rsub|G>>,
    which uses simplicity.

    <item>The propagators are <math|<around|\||k|\|><rsup|-2>> and
    <math|<around|\||k+t*e<rsub|0>|\|><rsup|-2>>.
  </itemize-minus>

  Writing <math|c<rsub|<math-up|gh>><around|(|t|)>> for the ghost bubble and
  <math|c<rsub|<math-up|vec>><around|(|t|)>> for the vector bubble,

  <\equation*>
    \<partial\><rsub|t><rsup|2>*c<rsub|<math-up|gh>><around|(|0|)>-<tfrac|1|2><space|0.17em>\<partial\><rsub|t><rsup|2>*c<rsub|<math-up|vec>><around|(|0|)>=2*h<around|(|k|)>,<space|2em>h<around|(|k|)>=4*C<rsub|G>*<around*|(|<frac|k<rsub|1><rsup|2>|<around|\||k|\|><rsup|6>>-<frac|4*k<rsub|1><rsup|2>*k<rsub|0><rsup|2>|<around|\||k|\|><rsup|8>>-<frac|1|<around|\||k|\|><rsup|4>>|)>.
  </equation*>

  The terms in <math|k<rsub|1><rsup|2>> come from the orbital coupling: one
  adjoint scalar's worth, <math|<tfrac|1|2>\<cdot\>4> vector components minus
  one ghost. The term <math|-<around|\||k|\|><rsup|-4>> comes from the spin
  coupling of the vector field. <em|Lean:>
  <hlink|<verbatim|haloRate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L127-L141>,
  <hlink|<verbatim|poleVec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125>.

  <strong|Lemma 4.14 (the shell integral).> For
  <math|0\<less\>\<mu\>\<leqslant\>1>,

  <\equation*>
    <frac|1|<around|(|2*\<pi\>|)><rsup|4>>*<big|int><rsub|\<mu\>\<less\><around|\||k|\|>\<leqslant\>1>h<around|(|k|)>*<space|0.17em>d<rsup|4>*k=-\<kappa\>*log
    \<mu\><rsup|-1>.
  </equation*>

  <em|Sketch:> By rotation invariance <math|<big|int>k<rsub|1><rsup|2><around|\||k|\|><rsup|-6>=<tfrac|1|4><big|int><around|\||k|\|><rsup|-4>>,
  and <math|<big|int>k<rsub|1><rsup|2>*k<rsub|0><rsup|2><around|\||k|\|><rsup|-8>=<tfrac|1|24><big|int><around|\||k|\|><rsup|-4>>,
  the latter from averaging over <math|e<rsub|i>\<pm\>e<rsub|j>>. Also
  <math|<big|int><rsub|\<mu\>\<less\><around|\||k|\|>\<leqslant\>1><around|\||k|\|><rsup|-4>=2*\<pi\><rsup|2>*log
  \<mu\><rsup|-1>>. So <math|h> averages to
  <math|4*C<rsub|G>*<around|(|<tfrac|1|4>-<tfrac|1|6>-1|)><around|\||k|\|><rsup|-4>=-<tfrac|11|3>C<rsub|G><around|\||k|\|><rsup|-4>>:
  orbital <math|+<tfrac|1|3>C<rsub|G>>, spin <math|-4*C<rsub|G>>. Finally
  <math|<tfrac|11|3>C<rsub|G>\<cdot\>2*\<pi\><rsup|2>/<around|(|2*\<pi\>|)><rsup|4>=\<kappa\>>.
  <em|Lean:> <hlink|<verbatim|poleSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L326-L338>,
  <hlink|<verbatim|joy_two>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L270-L275>,
  <hlink|<verbatim|joy_heights>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L292-L304>,
  <hlink|<verbatim|polar_m>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L200-L202>.

  <strong|Lemma 4.15 (the lattice integrand is close to <math|h>).> Under the
  hypotheses of III.7.3, let <math|\<Phi\><rsub|\<mu\>>> be the unintegrated
  second-derivative kernel of <math|\<Pi\><rsub|\<mu\>>>, built from the
  vertex kernels of Lemma 4.6:

  <\equation*>
    \<Phi\><rsub|\<mu\>>=<tfrac|1|2><space|0.17em><around|(|<text|vector
    film>|)>-<around|(|<text|ghost film>|)>.
  </equation*>

  Let <math|k<rsub|b><around|(|k|)>=<tfrac|1|2>\<partial\><rsub|s><rsup|2>*\<Phi\><rsub|\<mu\>,<around|(|1,b|)>,<around|(|1,b|)>><around|(|s*<space|0.17em>e<rsub|0>;k|)>\|<rsub|s=0>>
  be its integrand at loop momentum <math|k>. The recorded quadratic Taylor
  kernel is

  <\equation*>
    <wide|Y|^><rsub|\<mu\>>=<frac|1|2*<around|(|2*\<pi\>|)><rsup|4>>*<big|int><rsub|<around|[|-\<pi\>,\<pi\>|]><rsup|4>>\<Phi\><rsub|\<mu\>><around|(|<space|0.17em>\<cdummy\><space|0.17em>;k|)>*<space|0.17em>d<rsup|4>*k,
  </equation*>

  and <math|\<alpha\><rsub|b><around|(|<wide|Y|^><rsub|\<mu\>>|)>=<around|(|2*\<pi\>|)><rsup|-4>*<big|int><rsub|<around|[|-\<pi\>,\<pi\>|]><rsup|4>><math-up|Re><space|0.17em>k<rsub|b><around|(|k|)>*<space|0.17em>d<rsup|4>*k>.
  There are <math|a,b<rprime|'>\<geqslant\>0>, uniform over all data of
  III.7.3 and all <math|\<mu\>\<in\><around|(|0,1|]>>, such that:

  <\equation*>
    <around|\||k<rsub|b><around|(|k|)>|\|>\<leqslant\><frac|a|<around|(|<around|\||k|\|>+\<mu\>|)><rsup|4>><text|on
    the Brillouin cube>,<space|2em><around|\||k<rsub|b><around|(|k|)>-h<around|(|k|)>|\|>\<leqslant\>b<rprime|'><around*|(|<around|\||k*<around|\||<rsup|-3>+\<mu\><rsup|2>|\|>*k|\|><rsup|-6>|)><text|for
    ><around|\||k|\|>\<geqslant\>\<mu\>.
  </equation*>

  <em|Sketch:> Each film is (tadpole) <math|-> (bubble). The tadpoles are
  <math|O<around|(|<around|\||k*<around|\||<rsup|-2>+\<mu\><rsup|2>|\|>*k|\|><rsup|-6>|)>>.
  The lattice bubbles differ from the continuum ones by
  <math|O<around|(|<around|\||k*<around|\||<rsup|-3>+\<mu\><rsup|2>|\|>*k|\|><rsup|-6>|)>>,
  using the softness of Lemma 4.6. Lemma 4.13 identifies the continuum
  combination. <em|Lean:> <hlink|<verbatim|astronomy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L278-L292>,
  <hlink|<verbatim|Rally.coin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L179-L184>,
  <hlink|<verbatim|Rally.shell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L191-L222>,
  <hlink|<verbatim|polar_clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L136-L159>,
  <hlink|<verbatim|amena>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L333>.
  <em|(proof read at top level; analytic tadpole and bubble estimates not
  expanded)>

  <strong|Lemma 4.16 (from the bounds to the slope).> For
  <math|0\<less\>\<mu\>\<leqslant\>1>, under the strip regularity and two
  bounds of Lemma 4.15 with <math|a,b<rprime|'>\<geqslant\>0>,

  <\equation*>
    <mid|\|>\<alpha\><rsub|b>+\<kappa\>*log
    \<mu\><rsup|-1><mid|\|>\<leqslant\><around|(|2*\<pi\>|)><rsup|-4>*<around*|(|a<tfrac|\<pi\><rsup|2>|2>+a*<around|(|2*\<pi\>|)><rsup|4>+3*\<pi\><rsup|2>*b<rprime|'>|)>.
  </equation*>

  <em|Sketch:> Split the cube into three regions.

  <\itemize-minus>
    <item>On <math|<around|\||k|\|>\<leqslant\>\<mu\>>: the integrand is
    <math|\<leqslant\>a*\<mu\><rsup|-4>> and the volume is
    <math|\<pi\><rsup|2>*\<mu\><rsup|4>/2>.

    <item>On the shell: compare with <math|h> and use Lemma 4.14; the error
    is <math|<big|int>b<rprime|'><around|(|<around|\||k*<around|\||<rsup|-3>+\<mu\><rsup|2>|\|>*k|\|><rsup|-6>|)>\<leqslant\>3*\<pi\><rsup|2>*b<rprime|'>>.

    <item>On <math|<around|\||k|\|>\<gtr\>1>: the integrand is
    <math|\<leqslant\>a>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|absoluteGeode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408>.

  <strong|Lemma 4.17 (proof of III.7.3).>

  <\enumerate>
    <item>Lemma 4.6 and Lemma 4.1 give the vertex kernels of
    <math|<math-up|main><rsub|\<b-up-c\>,R>=E<rsub|W>+<around|(|<math-up|main>-E<rsub|W>|)>>.

    <item>The film <math|\<Phi\><rsub|1/L>> represents
    <math|\<Pi\><rsub|1/L>> (<hlink|<verbatim|gemF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L356-L363>).
    For fixed <math|L> it is strip-analytic, since the vector and ghost
    symbols are invertible at real momenta, by Floor and the regulator, and
    hence in a strip (<hlink|<verbatim|HouseWord.done>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Lattice.lean#L451-L456>).

    <item>One half of the normalized loop-momentum integral of the
    second-derivative film is the Taylor kernel <math|<wide|Y|^>>. Comparing
    the torus Riemann sum with the integral gives an error
    <math|<around|\||\<Lambda\><rsub|n<rsub|i>>|\|>*K<rsub|L>*e<rsup|-z<rsub|L>*n<rsub|i>/4>>
    (<hlink|<verbatim|profit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Fourier.lean#L454-L482>).

    <item>Lemmas 4.15\U4.16 with <math|\<mu\>=1/L> give (b), with
    <math|D=<around|(|2*\<pi\>|)><rsup|-4><around|(|\<ldots\>|)>> independent
    of <math|L>.
  </enumerate>

  <em|Lean:> <hlink|<verbatim|pouring>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L17-L52>.

  <subsection|4.8 From the regulated determinant to the blocked
  determinant><label|48-from-the-regulated-determinant-to-the-blocked-determinant>

  <strong|Lemma 4.18 (comparison of <math|F<rsup|2>>-coefficients).> Assume
  <math|G> is simple and the hypotheses of III.7.4, together with the
  interpolation, vertex and inverse bounds of Lemma 4.11. Consider the
  two-leg films of:

  <\itemize-minus>
    <item>the medal film: <math|<tfrac|1|2>log det> of the completed Hessian
    minus <math|log det> of the ghost operator, with regulator <math|1/L>;

    <item>the core film: the same with the contact term removed;

    <item>the auxiliary film: built from the block-aliased auxiliary
    operator.
  </itemize-minus>

  Then:

  <\itemize-minus>
    <item>the medal film is strip-analytic of width <math|\<eta\>/2> and size
    <math|L<rsup|4>*a>;

    <item>one half of its normalized loop-momentum integral records the
    determinant part of the one-loop function along the branch on
    <math|\<Lambda\><rsub|m<rsub|j>>>, with error
    <math|<around|\||\<Lambda\><rsub|m<rsub|j>>|\|>*<space|0.17em>c<rsub|L>*e<rsup|-\<eta\>*m<rsub|j>/8>>;

    <item><math|<around|\||\<alpha\><rsub|b><around|(|<text|medal>|)>-\<alpha\><rsub|b><around|(|<text|auxiliary>|)>|\|>\<leqslant\>d<rsub|<math-up|cmp>>>,
    with <math|d<rsub|<math-up|cmp>>> depending on the stage and vertex
    bounds, including the input width and amplitude, but not on <math|L>.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item>For the contact contribution, the tested diagonal entry of the
    integrated kernel vanishes to order <math|3> along the external momentum
    ray. Hence <math|\<alpha\><around|(|<text|medal>|)>=\<alpha\><around|(|<text|core>|)>>
    (<hlink|<verbatim|drift_tip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L789-L818>).

    <item>The difference core <math|-> auxiliary is strip-analytic with an
    <math|L>-independent bound. Cauchy estimates bound its
    <math|F<rsup|2>>-coefficient (<hlink|<verbatim|boundedTip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L24-L41>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|quoting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L67-L96>,
  <hlink|<verbatim|medalCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84>,
  <hlink|<verbatim|coreCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86>,
  <hlink|<verbatim|rankCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85>.
  <em|(proof read at top level; contact identities not expanded)>

  <strong|Lemma 4.19 (aliasing preserves <math|\<alpha\>>).> Under the
  hypotheses of Lemma 4.18, the <math|F<rsup|2>>-coefficient of the auxiliary
  film on the coarse lattice equals <math|\<alpha\><rsub|b><around|(|<wide|Y|^>|)>>,
  where <math|<wide|Y|^>> is the kernel of III.7.3 for
  <math|\<Pi\><rsub|1/L>> on the fine tori
  <math|\<Lambda\><rsub|L*m<rsub|i>>>. <em|Sketch:> The coarse symbol at
  momentum <math|p> is the sum over the <math|L<rsup|4>> aliases of the fine
  symbol. The nonzero aliases vanish to order <math|4>. The zero alias agrees
  through order two with <math|L<rsup|4>*L<rsup|-2>> times the fine kernel at
  <math|p/L>. The additional <math|L<rsup|-2>> from momentum rescaling gives
  <math|L<rsup|4>*L<rsup|-2>*L<rsup|-2>=1>, so the <math|F<rsup|2>>
  coefficient is unchanged. <em|Lean:> <hlink|<verbatim|pole_reduced>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L719-L741>,
  <hlink|<verbatim|carry_plan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L255-L278>,
  <hlink|<verbatim|fine_alpha>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/HessianMatch.lean#L670-L705>.
  <em|(proof read at top level; high-alias and zero-alias estimates statement
  only)>

  <subsection|4.9 The step and the iteration><label|49-the-step-and-the-iteration>

  <strong|Lemma 4.20 (construction of the coarse datum).> Assume the
  geometric, bed, Haar-chart and stationary-branch hypotheses of III.7.4. Fix
  a common Fourier width <math|\<sigma\>\<gtr\>0>, coarse-bed width
  <math|w\<gtr\>0>, coarse metric and root bound <math|M\<geqslant\>0>, and a
  bound on the coarse direct clip coefficient. Require
  <math|H<rsub|T>,\<rho\><rsub|T>\<in\><math-up|strip><around|(|w,M|)>>.
  There are <math|s\<in\><around|(|0,min <around|(|\<sigma\>,w|)>|]>> and
  <math|K,D\<geqslant\>0>, independent of the following kernel amplitudes,
  with this property.

  Suppose the tree-level action has exact Taylor kernels of orders <math|3>
  and <math|4>, of width <math|\<sigma\>> and size <math|X\<geqslant\>1>.
  Suppose a two-leg kernel <math|<wide|A|^>> of width <math|\<sigma\>> and
  size <math|\<Phi\>> records the determinant part with errors
  <math|<around|\||\<Lambda\><rsub|m<rsub|i>>|\|>*e<rsub|i>>, where
  <math|e<rsub|i>\<geqslant\>0> and <math|e<rsub|i>\<to\>0>. Suppose a
  two-leg kernel <math|<wide|L|^>> of the same width and size
  <math|R<rsub|0>> records the inherited loop functional exactly and vanishes
  to order <math|4> at zero momentum. Set
  <math|\<alpha\>=\<alpha\><rsub|b><around|(|<wide|A|^>|)>> for one fixed
  colour <math|b>.

  There is a coarse datum <math|Y>, with the straight-route rows of <math|T>
  and attached to <math|T>, whose classical jets agree through order four. It
  satisfies the weight clauses at every <math|0\<less\>s<rprime|'>\<leqslant\>s>,
  every row/cubic/quartic bound

  <\equation*>
    A<rprime|'>\<geqslant\>max <around|{|6*M*e<rsup|4*w>,X*K|}>,
  </equation*>

  and every loop bound

  <\equation*>
    \<Lambda\><rprime|'>\<geqslant\><around*|(|\<Phi\>+<around|\||\<alpha\>|\|>*C<rsub|T>+R<rsub|0>|)>*D,
  </equation*>

  where <math|C<rsub|T>> is the uniform strip bound for the quadratic kernel
  of <math|T> at width <math|min <around|(|\<sigma\>,w|)>>.

  For every <math|i,\<Theta\>,c<rprime|'>,\<Omega\>>, the finite bound of
  III.7.4 holds with right-hand side <math|<around|\||\<Lambda\><rsub|m<rsub|i>>|\|>*\<Theta\>*\<Omega\>*e<rsup|-c<rprime|'>*m<rsub|i>>>
  whenever <math|B<rsub|G>*e<rsub|i>\<leqslant\>\<Theta\>*\<Omega\>*e<rsup|-c<rprime|'>*m<rsub|i>>>,
  where <math|B<rsub|G>=2*<around|(|4*dim \<frak-g\>|)><rsup|2>>.

  <em|Sketch:>

  <\itemize-minus>
    <item>Apply Lemma 4.4 to the tree-level action. Its quadratic jet agrees
    with the bare row action by the stationary-branch hypotheses.

    <item>The determinant and inherited-loop functionals are analytic and
    invariant under gauge, colour and signed-permutation symmetries. Their
    recorded kernels inherit these properties. Thus
    <math|<wide|A|^>-\<alpha\>*<wide|K|^><rsub|T>+<wide|L|^>> vanishes to
    order <math|4> by Lemma 4.7 and the hypothesis on <math|<wide|L|^>>.

    <item>Represent this residual kernel by two-leg curvature atoms with zero
    zeroth and first displacement moments
    (<hlink|<verbatim|reach_symbol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L122-L159>).
    The weighted Laurent bound gives the stated loop amplitude.

    <item>The Faddeev\UPopov identity converts the determinant recording
    error to the error for the one-loop function. Expanding real waves into
    complex basis waves gives the factor <math|B<rsub|G>>
    (<hlink|<verbatim|draft_pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L281-L324>).
    Classical jet equality follows from order-<math|5> ray vanishing
    (<hlink|<verbatim|achieved>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L377-L386>,
    <hlink|<verbatim|violet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L343-L376>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|color_pipe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L394-L435>.
  <em|(proof read at top level)>

  <strong|Lemma 4.21 (proof of III.7.4).>

  <\itemize-minus>
    <item><em|Coercivity.> Lemma 4.11 at widths <math|min
    <around|(|w,\<delta\>|)>>.

    <item><em|Tree-level vertices.> Cubic and quartic vertex bounds have the
    form <math|a+L<rsup|-1>*\<ell\>> and <math|c+L<rsup|-1>*r>
    (<hlink|<verbatim|setWest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/VertexWeights.lean#L357-L382>).
    By <hlink|<verbatim|exchangeYield>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/Exchange.lean#L407-L415>,
    the order-<math|3> and order-<math|4> kernels of the tree-level action,
    the latter including the one-propagator exchange of two cubic vertices,
    are bounded by
  </itemize-minus>

  <\equation*>
    M=1+<tfrac|a+1|6>+<tfrac|<around|(|c+1|)>+3*<around|(|a+1|)><rsup|2>*E|24>.
  </equation*>

  Here <math|E> bounds the completed free inverse. The term
  <math|3*<around|(|a+1|)><rsup|2>*E> bounds the three pairings of two cubic
  vertices joined by one propagator.

  <\itemize-minus>
    <item><em|Inherited loops.> The inherited loop kernel has size
    <math|L<rsup|-2>*\<Lambda\>*C<rsub|0>>
    (<hlink|<verbatim|bequest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/Curvature.lean#L66-L92>).

    <item><em|The slope.> Lemma 4.18 and Lemma 4.19 give
    <math|\<alpha\>=\<alpha\><rsub|b><around|(|<text|medal film>|)>> with
    <math|<around|\||\<alpha\>+\<kappa\>*log
    L|\|>\<leqslant\>d<rsub|<math-up|cmp>>+D<rsub|<math-up|slope>>>.

    <item><em|Assembly.> Lemma 4.20 builds <math|Y>.

    <item><em|Choice of <math|L>.> <math|L\<geqslant\>u> is chosen so that
    <math|L<rsup|-1>> times the input-dependent constants lies below the
    output thresholds, and <math|L<rsup|-2>*C<rsub|0>*D<rsub|<math-up|lift>>\<leqslant\><tfrac|1|4>>,
    where <math|D<rsub|<math-up|lift>>> is the loop-representation constant
    of Lemma 4.20 (<hlink|<verbatim|age_control>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L42-L49>).
    The loop amplitude is the sum of a newly generated term and an inherited
    term. Their bounds are <math|\<leqslant\>\<Lambda\><rprime|'>/2> and
    <math|\<leqslant\>\<Lambda\><rprime|'>/2>, respectively, when
    <math|\<Lambda\><rprime|'>\<geqslant\>\<Lambda\><rsub|0><around|(|L|)>>
    and <math|\<Lambda\><rprime|'>\<geqslant\>\<Lambda\>/2>
    (<hlink|<verbatim|cap_invoice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L74-L80>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|transition_cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L92-L182>.
  <em|(proof read at top level)>

  <strong|Lemma 4.22 (loop caps and the iteration).>

  <\itemize-minus>
    <item><em|Loop caps.> For every <math|W<rsub|j>> there are thresholds
    <math|\<Delta\><rsub|j>> such that, once <math|<wide|\<beta\>|^>> at the
    entry exceeds them, <math|W<rsub|J<rsub|m+1>>\<leqslant\><math-up|loopCap><rsub|m>>,
    <math|<math-up|loopCap><rsub|m+1>\<leqslant\>2<space|0.17em><math-up|loopCap><rsub|m>>
    and <math|<math-up|loopCap><rsub|m>\<geqslant\>1>. The history must
    satisfy the stage, block-factor and entry conditions of III.2, with
    positive protection exponents nonincreasing with stage. Use
    <math|<wide|\<beta\>|^><rsub|m+1>=<wide|\<beta\>|^><rsub|m>+\<kappa\>*log
    L<rsub|m>>, and <math|<around|(|log log
    <around|(|s+k|)>|)><rsup|2>-<around|(|log log
    s|)><rsup|2>\<leqslant\>3*k/s> for each fixed <math|k\<geqslant\>0> and
    all sufficiently large <math|s> (<hlink|<verbatim|bump>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L18-L49>).

    <item><em|Iteration.>

    <\itemize-minus>
      <item><hlink|<verbatim|claiming>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L122-L143>
      applies Lemma 4.21 to the stage pairs <math|<around|(|j,j|)>> and
      <math|<around|(|j+1,j|)>> and takes minima and maxima of the constants.

      <item><hlink|<verbatim|energized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L254-L285>
      produces one step's record at level <math|m>.

      <item><hlink|<verbatim|plowed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L307-L335>
      assembles the kinetic data by downward induction from <math|m=N>,
      starting from the top datum.

      <item><hlink|<verbatim|under_contract>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L366-L391>
      chooses the volume thresholds so that
      <math|F<around|(|L|)>*e<rsup|-\<gamma\>*n>\<leqslant\>\<Gamma\>*e<rsup|-<around|(|\<gamma\>/2|)>*n>>
      (<hlink|<verbatim|waits_up>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L353-L358>).

      <item>The final iteration uses III.7.3.
    </itemize-minus>
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|clocks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L51-L74>,
  <hlink|<verbatim|geared>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/FullPlanned.lean#L59-L66>.

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <\itemize-minus>
    <item><strong|The coefficient and its identification.> The continuum
    bubble yields the factor <math|11/3> from the orbital and spin vertices
    and <math|<math-up|tr><around|(|<math-up|ad><rsub|b><rsup|2>|)>=-C<rsub|G>>.
    Relating this calculation to the blocked determinant also requires the
    exact Faddeev\UPopov identity, cancellation of the contact contribution
    to <math|\<alpha\>>, a comparison uniform in <math|L>, and control of
    every Fourier alias.

    <item><strong|Quantitative curvature factorization.> The lattice Poincaré
    lemma must preserve exponential decay, colour invariance and the
    constraints already imposed on other legs. Each one-leg solve loses a
    factor four in strip width; the number of legs is fixed.

    <item><strong|Uniformity in the volume.> A single infinite-volume kernel
    or path datum works on every torus in the chosen sequence. Limits along
    increasingly fine momentum meshes transfer Ward identities and colour
    symmetries to that kernel. In the iteration, the sequence consists of the
    sides at one fixed level as the volume index varies.

    <item><strong|Order of constants.> The output width and cubic/quartic
    amplitude precede the input path amplitude. Contributions depending on
    the latter carry a factor <math|L<rsup|-1>>; inherited loop atoms carry
    <math|L<rsup|-2>>. The new loop amplitude is
    <math|O<around|(|L<rsup|4>|)>>, and the reference-coupling thresholds
    make the allowed loop amplitude large enough to absorb it.

    <item><strong|Strength of the conclusion.> The slope estimate has an
    <math|O<around|(|1|)>> error uniform in <math|L>. This suffices for III.9
    when <math|log L> dominates that error. Polymer activities are absent
    from the argument.

    <item><strong|The regulator.> The scalar regulator is
    <math|\<mu\><rsup|20>*<around|(|\<Delta\><rsub|U>+\<mu\><rsup|2>|)><rsup|-9>>.
    Its componentwise extension to link fields respects gauge transformations
    and unsigned axis permutations; full signed-permutation symmetry is not
    asserted for this auxiliary determinant. The blocked action has the full
    lattice symmetry.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  A determinant film records the second derivative before loop-momentum
  integration. Its quadratic Taylor kernel is one half of its normalized
  loop-momentum integral.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|R=<around|(|\<ell\>,\<cal-A\><rsup|<around|(|2|)>>,\<cal-A\><rsup|<around|(|3|)>>,\<cal-A\><rsup|<around|(|4|)>>|)>>>|<cell|<hlink|<verbatim|RG.PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>>|<cell|path
  datum (rows, loop/cubic/quartic atoms)>>|<row|<cell|leg,
  atom>|<cell|<hlink|<verbatim|RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38-L40>,
  <hlink|<verbatim|RG.Atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84-L86>>|<cell|transported
  curvature; curvature monomial>>|<row|<cell|<math|<math-up|Bounds><around|(|\<b-up-c\>;\<sigma\>,C,\<Lambda\>|)>>>|<cell|<hlink|<verbatim|PathData.Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>>|<cell|exponential
  summability, invariance and moment clauses>>|<row|<cell|<math|<math-up|main><rsub|\<b-up-c\>,R>>,
  <math|<math-up|loop><rsub|R>>>|<cell|<hlink|<verbatim|mainTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28>,
  <verbatim|loop>>|<cell|leading part; loop functional>>|<row|<cell|clip
  <math|\<b-up-c\>>, <math|c<rsub|<math-up|dir>>>>|<cell|<hlink|<verbatim|RG.Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>>|<cell|clipping
  parameters; <verbatim|direct>>>|<row|<cell|bed <math|B>, Floor,
  attached>|<cell|<hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>,
  <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>,
  <hlink|<verbatim|Attached>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46>>|<cell|free
  quadratic-form data of a level>>|<row|<cell|straight-route rows of
  <math|\<rho\>>>|<cell|<hlink|<verbatim|rowPath>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L169-L171>,
  <hlink|<verbatim|emitBase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/SliceGate.lean#L173-L174>>|<cell|rows
  realizing the bed roots on straight lattice
  routes>>|<row|<cell|strip-analytic <math|<around|(|\<sigma\>,K|)>>>|<cell|<hlink|<verbatim|Firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L199>>|<cell|bounded
  holomorphic periodic kernel>>|<row|<cell|vanishing to order <math|s> along
  rays>|<cell|<hlink|<verbatim|Rays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L28-L29>>|<cell|raywise
  <math|O<around|(|t<rsup|s>|)>> at <math|t=0>>>|<row|<cell|<math|<around|(|t+1|)>>-leg
  kernel; records>|<cell|<verbatim|Picture>,
  <hlink|<verbatim|Recorded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L491-L492>>|<cell|Fourier
  kernel of a Taylor coefficient>>|<row|<cell|<math|\<alpha\><rsub|b><around|(|<wide|K|^>|)>>>|<cell|<hlink|<verbatim|alphaPay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/LeadingRay.lean#L699>>|<cell|<math|F<rsup|2>>-coefficient,
  normalized by the bed>>|<row|<cell|<math|\<Pi\><rsub|\<mu\>>>>|<cell|<hlink|<verbatim|PoleTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L138>,
  <hlink|<verbatim|fineMag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/AuxReferences.lean#L46>>|<cell|regulated
  background-field one-loop action>>|<row|<cell|<math|\<cal-G\><rsub|\<mu\>>>,
  <math|\<cal-P\><rsub|\<mu\>>>>|<cell|<hlink|<verbatim|grenade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L338>,
  <hlink|<verbatim|medals>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Completion.lean#L59-L60>>|<cell|ghost
  operator; completed Hessian>>|<row|<cell|<math|\<mu\>=1/L>>|<cell|<hlink|<verbatim|inch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Spectral/Slabs.lean#L189>>|<cell|regulator
  mass>>|<row|<cell|<math|h<around|(|k|)>>;
  <math|k<rsub|b><around|(|k|)>>>|<cell|<hlink|<verbatim|poleVec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L125>;
  <hlink|<verbatim|keelRay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L155>>|<cell|continuum
  bubble integrand; lattice integrand>>|<row|<cell|bounds of Lemma
  4.15>|<cell|<hlink|<verbatim|Waves1>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L276>,
  <hlink|<verbatim|Waves2>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/Bubbles.lean#L277>>|<cell|global
  infrared bound and shell comparison bound>>|<row|<cell|<math|<around|(|2*\<pi\>|)><rsup|-4>>>|<cell|<hlink|<verbatim|cartWeight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L28>>|<cell|normalization
  of the momentum integral>>|<row|<cell|<math|S<rsub|t><around|(|x,z|)>>;
  <math|<math-up|th>>>|<cell|<hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84>;
  <hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>>|<cell|fine
  action plus penalty; one-loop function>>|<row|<cell|classical match; finite
  bound>|<cell|<hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>;
  <hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>>|<cell|items
  4 and 5 of III.7.4>>|<row|<cell|slope statement>|<cell|<hlink|<verbatim|HorizCalc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L20-L23>,
  <hlink|<verbatim|Fluent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L115>>|<cell|III.7.3
  for given / all parameters>>|<row|<cell|step property; step
  record>|<cell|<hlink|<verbatim|Transition>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Transition.lean#L86-L90>;
  <hlink|<verbatim|Bubble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L170-L177>>|<cell|III.7.4>>|<row|<cell|top
  datum>|<cell|<hlink|<verbatim|BranchRow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L166>>|<cell|III.7.2
  at level <math|N>>>|<row|<cell|kinetic data, planned
  conditions>|<cell|<hlink|<verbatim|Kin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L74-L77>,
  <hlink|<verbatim|Kin.Planned>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115>,
  <hlink|<verbatim|FullPaths>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Level/Recurse.lean#L301-L305>>|<cell|output
  to III.9>>|<row|<cell|invertibility bounds>|<cell|<hlink|<verbatim|GrantF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L15-L22>,
  <hlink|<verbatim|Freezer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Loops/UniformMatrix.lean#L270-L272>>|<cell|strip
  invertibility with inverse bound>>|<row|<cell|medal, core, auxiliary
  films>|<cell|<hlink|<verbatim|medalCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L84>,
  <hlink|<verbatim|coreCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L86>,
  <hlink|<verbatim|rankCue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Films/RankColor.lean#L85>>|<cell|Ÿ4.8>>|<row|<cell|<math|<wide|\<beta\>|^><rsub|m>>,
  <math|<math-up|loopCap><rsub|m>>>|<cell|<hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>,
  <hlink|<verbatim|loopCap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L86>>|<cell|reference
  coupling; loop-amplitude cap>>|<row|<cell|<math|\<kappa\>>>|<cell|<hlink|<verbatim|Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>>|<cell|<math|11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>>>|<row|<cell|<math|D<rsup|r>*F<around|(|0|)>/r!>>|<cell|<hlink|<verbatim|noteAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Infrastructure/Jets.lean#L341>>|<cell|complexified
  Taylor coefficient>>|<row|<cell|analytic gauge and lattice
  symmetry>|<cell|<hlink|<verbatim|Pointwise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Shape/ClassicalMatch.lean#L373-L377>>|<cell|hypotheses
  of atom emission>>|<row|<cell|<math|\<pi\><rsub|d><around|(|\<sigma\>|)>>>|<cell|<hlink|<verbatim|priceDivision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Koszul.lean#L84>>|<cell|one-coordinate
  division constant in <math|d> momentum coordinates>>|<row|<cell|joint free
  form; gauge completion>|<cell|<hlink|<verbatim|frontR>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Block/Static.lean#L20>,
  <hlink|<verbatim|postroom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/FourPoint.lean#L221>,
  <hlink|<verbatim|cannonade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Regulator.lean#L499>>|<cell|fine-link
  and coarse-frame operators>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Analytic estimates below the stated lemmas.> The real
    quotient estimate and complex-strip perturbation estimate used in Lemma
    4.10, and the analytic tadpole and bubble bounds used in Lemma 4.15, have
    not been checked through every subsidiary proof. Their statements support
    the estimates given here. The determinant-factorization and Haar-density
    lemmas of Lemma 4.9 remain inputs at statement level. The contact
    identities used in Lemma 4.18 and the high-alias and zero-alias estimates
    used in Lemma 4.19 likewise remain inputs at statement level.

    <item><strong|Choice of regulator power.> The ninth power is part of the
    explicit definition, and the cited estimates use it. A minimal power, or
    a conceptual reason for choosing exactly nine, has not been established.

    <item><strong|Supply of the global hypotheses.> III.4 supplies the
    free-field horizons and history conditions. The
    <hlink|<verbatim|free/stationary connection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/B70FreeStationaryConnection.lean#L17-L56>
    explicitly constructs the two horizons with identical beds and
    interpolation kernels before applying the iteration. The discharge of
    these conditions in every downstream application has not been checked.

    <item><strong|Limits of path data.> The projection results support the
    compactness argument in III.13: exponential weights give Hilbert-space
    parameters for curvature coefficients
    (<hlink|<verbatim|fitting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Ink.lean#L79-L99>);
    coefficientwise convergence with uniform row bounds gives convergence of
    row-action jets (<hlink|<verbatim|insideLine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Lines.lean#L89-L109>);
    compatible source jets and a common positive Hessian lower bound give
    continuity of stationary, tree-level and one-loop jets
    (<hlink|<verbatim|interview>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVExtension/Projection/Fumes.lean#L56-L87>).
    The complete compactness construction and passage through all its
    quantifiers belong to III.13 and remain outside this unit.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.6 The stationary branch: background
  field of the effective action (notes)|III-6.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-7.tm>|<hlink|III.8 Connected activities and backward
  dependence cones (notes) \<rightarrow\>|III-8.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.7. Matching the Wilson energy to fourth order
    \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|9>>
    <associate|3-strategy|<tuple|3|10>>
    <associate|4-steps|<tuple|4|12>>
    <associate|41-fourier-kernels-of-local-functionals|<tuple|4.1|12>>
    <associate|42-the-lattice-poincarÃ©-lemma-in-momentum-space|<tuple|4.2|12>>
    <associate|43-classical-emission-and-the-wilson-jet|<tuple|4.3|13>>
    <associate|44-two-leg-kernels-the-f2-coefficient-and-irrelevance|<tuple|4.4|14>>
    <associate|45-the-one-loop-term-in-covariant-form|<tuple|4.5|15>>
    <associate|46-uniform-invertibility-of-the-fluctuation-operators|<tuple|4.6|15>>
    <associate|47-the-slope-of-the-regulated-determinant|<tuple|4.7|16>>
    <associate|48-from-the-regulated-determinant-to-the-blocked-determinant|<tuple|4.8|18>>
    <associate|49-the-step-and-the-iteration|<tuple|4.9|19>>
    <associate|5-where-the-difficulty-lies|<tuple|5|21>>
    <associate|6-notation|<tuple|6|21>>
    <associate|7-what-remains-unexplained|<tuple|7|23>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|15>>
    <associate|auto-11|<tuple|4.7|16>>
    <associate|auto-12|<tuple|4.8|18>>
    <associate|auto-13|<tuple|4.9|19>>
    <associate|auto-14|<tuple|5|21>>
    <associate|auto-15|<tuple|6|21>>
    <associate|auto-16|<tuple|7|23>>
    <associate|auto-2|<tuple|2|9>>
    <associate|auto-3|<tuple|3|10>>
    <associate|auto-4|<tuple|4|12>>
    <associate|auto-5|<tuple|4.1|12>>
    <associate|auto-6|<tuple|4.2|12>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|iii7-matching-the-wilson-energy-to-fourth-order--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Fourier kernels of local functionals
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The lattice Poincaré lemma in momentum
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Classical emission and the Wilson jet
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Two-leg kernels: the
      <with|mode|<quote|math>|F<rsup|2>>-coefficient and irrelevance
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The one-loop term in covariant form
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Uniform invertibility of the
      fluctuation operators <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 The slope of the regulated determinant
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 From the regulated determinant to the
      blocked determinant <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 The step and the iteration
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