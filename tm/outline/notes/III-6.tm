<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.5 Cluster expansion of the polymer
  gas (notes)|III-5.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-6.tm>|<hlink|III.7 Matching the Wilson energy to
  fourth order (notes) \<rightarrow\>|III-7.tm>>

  <ym-title|III.6. The stationary branch: background field of the effective
  action \V detailed notes><label|iii6-the-stationary-branch-background-field-of-the-effective-action--detailed-notes>

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

    <with|par-left|1tab|4.1 The second-order jet (F02, F03)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 The gap (F01)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 The branch (F04)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Independence of the forest (F05)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The volume-independent branch and its jets
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 One level of the iteration
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 Remaining packages (statements only)
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
    The full account of unit III.6: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-6.tm>.
  </quotation>

  <hlink|Unit page|../units/III-6.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> the work items F01\UF05 are stated in
  <hlink|<verbatim|YM/Bid/Station.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean>
  and F06\UF09 in <hlink|<verbatim|YM/Bid/Craft.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean>.
  Their proofs are in <hlink|<verbatim|YM/Work/F01>\U<verbatim|F09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work>.
  The other packages are: the uniform branch
  <hlink|<verbatim|YM/Push/STATIONARY_UNIFORM/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM>;
  the jet port <hlink|<verbatim|YM/Planned/STATIONARY_JET_PORT/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT>;
  and the iteration step <hlink|<verbatim|YM/Extra/ITERATION_NO_LOSS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS>.
  Also included are <hlink|<verbatim|YM/Planned/PRIMARY_INTEGRAL_295/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295>,
  <hlink|<verbatim|YM/Further/PHYSICAL_PERIOD_LIMIT_F933/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933>,
  <hlink|<verbatim|YM/Planned/ATOM_REGULAR_ESTIMATE/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/ATOM_REGULAR_ESTIMATE>,
  <hlink|<verbatim|YM/Next/ROTATIONS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS>
  and <hlink|<verbatim|YM/Next/WARD_BIN/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/WARD_BIN>.
  <strong|Size:> 21,329 lines in the main-theorem closure. Of these:

  <\itemize-minus>
    <item>the F work items F01\UF09 with their auxiliary files: about 3,800;

    <item>the uniform branch: 3,274;

    <item>the jet port: 1,123;

    <item>the iteration step: 1,700;

    <item>the primary-integral package: 3,662;

    <item>the period-limit comparison: 1,262;

    <item>the atom regularity estimate: 474;

    <item>the rotation and Ward material: about 5,900, including the chain of
    results leading to the rotation theorem.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Setting.> The definitions are those of III.1. All lattice sums use
  counting measure.

  <em|Lattices, group, distance.>

  <\itemize-minus>
    <item>One renormalization step goes from a fine torus
    <math|\<Lambda\><rsub|f>> to a coarse torus <math|\<Lambda\><rsub|c>>,
    with an odd block factor <math|L\<geqslant\>3> and <math|f=L*c>, in
    dimension <math|4>. The patch order satisfies <math|J\<geqslant\>4>.

    <item><math|G> is the gauge group and <math|\<frak-g\>> its Lie algebra,
    normed in physical colour coordinates.

    <item><math|<math-up|chord><around|(|U|)>=<around|\<\|\|\>|U-1|\<\|\|\>>/c<rsub|G>>
    and <math|<math-up|price><around|(|U|)>=<tfrac|1|2><math-up|chord><around|(|U|)><rsup|2>>.
    With this normalization <math|<math-up|price><around|(|e<rsup|t*X>|)>=<tfrac|1|2>t<rsup|2>\|X\|<rsup|2>+o<around|(|t<rsup|2>|)>>;
    the price is the Wilson plaquette function up to a constant.
  </itemize-minus>

  <em|The step datum <math|S>.> It consists of:

  <\itemize-minus>
    <item>a block-spin kernel, with penalty <math|\<kappa\>\<gtr\>0>, from
    the kernel choices <math|K>;

    <item>a patch, with order <math|J> and macro-radius
    <math|R<rsub|S>=<around|(|J+7|)>*L>;

    <item>a finite set of tags (frame and path choices;
    <hlink|<verbatim|StepData.Choices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34>);

    <item>for each tag <math|k>, a predictor
    <math|U\<mapsto\>Q<rsub|k><around|(|U|)>> from fine configurations to
    coarse configurations.
  </itemize-minus>

  <math|P> denotes the derivative of the predictor at the identity. It acts
  on fine <math|\<frak-g\>>-valued <math|1>-forms; it is the linearized block
  average plus a gradient correction at the block roots.
  <math|<wide|Q|\<bar\>>> denotes the linearized block average alone.

  <em|"Larger".> <math|S> is <em|larger> (<hlink|<verbatim|Larger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64>)
  if three conditions hold:

  <\itemize-minus>
    <item>the minimizing frame and predictor are unique whenever their
    minimizing branches are selected, and the fallback set of eligible axial
    frames is nonempty; see <hlink|<verbatim|Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182-L185>;

    <item><math|100*R<rsub|S>\<leqslant\>f>;

    <item><math|c\<gtr\>1>.
  </itemize-minus>

  <em|Forests and the axis chart.>

  <\itemize-minus>
    <item>A <em|forest> <math|H> is a spanning forest of the fine torus, made
    of one tree in each block, rooted at the block centre, with tree height
    at most <math|4*L> (<hlink|<verbatim|Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>).
    Its bonds are the <em|tree bonds>, all internal to blocks; the remaining
    bonds are the <em|free bonds> <math|H<rsup|<math-up|fr>>>.

    <item>The <em|replica> <math|\<cal-R\><around|(|V|)>> of a coarse
    configuration <math|V> puts <math|V<rsub|<around|(|i,\<mu\>|)>>> on every
    fine bond that leaves block <math|i> in direction <math|\<mu\>>, and
    <math|1> on bonds internal to a block. Its linearization is
    <math|\<iota\>>.

    <item>The <em|axis chart> has coordinates
    <math|x\<in\>\<frak-g\><rsup|<text|coarse bonds>>> and
    <math|a\<in\>\<frak-g\><rsup|H<rsup|<math-up|fr>>>>. It describes the
    fine field
  </itemize-minus>

  <\equation*>
    U<rsup|H><around|(|x,a|)><rsub|e>=e<rsup|a<rsub|e>>*<space|0.17em>\<cal-R\><around|(|e<rsup|x>|)><rsub|e>*<space|1em><around|(|e\<in\>H<rsup|<math-up|fr>>|)>,<space|2em>U<rsup|H><around|(|x,a|)><rsub|e>=1<space|1em><around|(|e<text|a
    tree bond>|)>.
  </equation*>

  <em|Clip and path datum.>

  <\itemize-minus>
    <item>A <em|clip> <math|p> carries the Wilson coefficient
    <math|c<rsub|p>\<gtr\>0>.

    <item>A <em|path datum> <math|W> (<hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>)
    consists of:

    <\itemize-minus>
      <item>a series <math|\<ell\><rsub|W><around|(|U|)><rsub|\<pi\>>=<big|sum><rsub|i>w<rsub|i><space|0.17em><math-up|slot><rsub|i><around|(|U|)>>
      of parallel-transported plaquette variables, attached to each plaquette
      <math|\<pi\>>;

      <item>loop atoms, cubic atoms and quartic atoms:
      <math|<math-up|Ad>>-invariant polynomials of degree <math|2,3,4> in
      such slot values.
    </itemize-minus>

    <item><em|Bounds> <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>> for
    <math|W> (<hlink|<verbatim|Bounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L173-L185>)
    mean four things:

    <\itemize-minus>
      <item>the coefficients are summable with weight
      <math|e<rsup|\<sigma\>\<cdot\><math-up|length>>>, with sums at most
      <math|C> (cubic, quartic, <math|\<ell\>>-rows) and <math|\<Lambda\>>
      (loop atoms);

      <item>the atoms are <math|<math-up|Ad>>-invariant;

      <item>if <math|r<rsub|i*j>> is the sum of row-<math|i> coefficients
      whose plaquette type is <math|j>, then
      <math|c<rsub|p>*\<delta\><rsub|i*j>+<big|sum><rsub|k>r<rsub|k*i>*r<rsub|k*j>=\<delta\><rsub|i*j>>;

      <item>for each pair of plaquette types and colour indices, the loop
      coefficients have zero sum and zero first moment in every component of
      the relative slot offset; these moment series are summable.
    </itemize-minus>
  </itemize-minus>

  <em|The tested action.>

  <\itemize-minus>
    <item>The <em|main term> (<hlink|<verbatim|mainTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28>)
    is the average over the finite group <math|\<cal-S\>> of signed
    coordinate permutations, acting by pullback <math|s<rsup|\<ast\>>*U>:
  </itemize-minus>

  <\equation*>
    \<cal-M\><rsub|p><around|(|W;U|)>=<frac|1|<around|\||\<cal-S\>|\|>>*<big|sum><rsub|s\<in\>\<cal-S\>><around*|[|<big|sum><rsub|\<pi\>><around*|(|c<rsub|p><space|0.17em><math-up|price><around|(|<around|(|s<rsup|\<ast\>>*U|)><rsub|\<pi\>>|)>+<tfrac|1|2><around|\||\<ell\><rsub|W>*<around|(|s<rsup|\<ast\>>*U|)><rsub|\<pi\>>|\|><rsup|2>|)>+<big|sum><rsub|x><big|sum><rsub|i><around*|(|<math-up|cub><rsub|i>+<math-up|quart><rsub|i>|)>*<around|(|s<rsup|\<ast\>>*U|)><rsub|x>|]>.
  </equation*>

  <\itemize-minus>
    <item>The <em|tested action> for tag <math|k>
    (<hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84>)
    is
  </itemize-minus>

  <\equation*>
    \<cal-T\><rsup|H><rsub|k><around|(|x,a|)>=\<cal-M\><rsub|p><around*|(|W;U<rsup|H><around|(|x,a|)>|)>+\<kappa\>*<big|sum><rsub|b><math-up|price><around*|(|e<rsup|x<rsub|b>>*<space|0.17em>Q<rsub|k><around|(|U<rsup|H><around|(|x,a|)>|)><rsub|b><rsup|-1>|)>,
  </equation*>

  where <math|b> runs over the coarse bonds. The second term is the
  block-spin penalty.

  <em|Beds, towers and the quadratic identities.>

  <\itemize-minus>
    <item>A <em|bed> <math|B> (<hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>)
    is a family of translation-invariant kernels on plaquette <math|2>-forms:
    a metric <math|M<rsub|B>>, an inverse kernel, a diagonal kernel
    <math|D<rsub|B>>, a dual diagonal kernel, and roots <math|R<rsub|B>>. Set
    <math|K<rsub|B>=d<rsup|\<top\>>*M<rsub|B>*d>, which acts on
    <math|1>-forms.

    <item>A <em|floor> <math|<around|(|a,A|)>> for <math|B>
    (<hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>)
    requires:

    <\itemize-minus>
      <item>the root identity <math|M<rsub|B>=c<rsub|p>*<space|0.17em>1+R<rsub|B><rsup|\<top\>>*R<rsub|B>>;

      <item>inverse identities for the metric and diagonal kernels;

      <item>the Fourier-symbol normalization
      <math|<wide|M|^><rsub|B><around|(|0|)>=I> and
      <math|M<rsub|B>*d=D<rsub|B>*d> on the specified torus;

      <item>symmetry of <math|M<rsub|B>> and <math|D<rsub|B>>;

      <item>the bounds <math|a<around|\||\<omega\>|\|><rsup|2>\<leqslant\><around|\<langle\>|\<omega\>,M<rsub|B>*\<omega\>|\<rangle\>>\<leqslant\>A<around|\||\<omega\>|\|><rsup|2>>,
      and the same bounds for <math|D<rsub|B>>.
    </itemize-minus>

    <item><math|W> is <em|attached> to <math|B> if the coefficients of
    <math|\<ell\><rsub|W>>, summed by offset and plaquette type, are the
    entries of <math|R<rsub|B>>. <math|B> is <em|sworn> if
    <math|<around|\<langle\>|d*A,M<rsub|B>*d*A|\<rangle\>>> is
    <math|\<cal-S\>>-invariant.

    <item><em|Towers> <math|T> for the pair of beds <math|<around|(|B,C|)>>
    (<hlink|<verbatim|Towers.Diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86>)
    provide a linear map <math|\<cal-W\>> from coarse <math|1>-forms to fine
    <math|1>-forms. Its first clause, <hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>,
    is
  </itemize-minus>

  <\equation*>
    K<rsub|B>*\<cal-W\>=<wide|Q|\<bar\>><rsup|\<top\>>*K<rsub|C>,<space|2em><wide|Q|\<bar\>>*\<cal-W\>=1-\<kappa\><rsup|-1>*K<rsub|C>.
  </equation*>

  <\itemize-minus>
    <item><math|<wide|\<cal-W\>|^><rsub|H>=\<cal-W\>+d<rsub|0>*\<chi\><rsub|H>>
    is the linearized gauge transform of <math|\<cal-W\>> that vanishes on
    tree bonds (<hlink|<verbatim|extracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27>).

    <item><math|<math-up|rel><rsub|H><around|(|x|)>=<around|(|<wide|\<cal-W\>|^><rsub|H>*x-\<iota\>*x|)>\|<rsub|H<rsup|<math-up|fr>>>>
    (<hlink|<verbatim|relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95>).
  </itemize-minus>

  <em|Critical branch.> A <em|critical branch> for <math|<around|(|H,p,W|)>>
  (<hlink|<verbatim|Critical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91>)
  is a map <math|\<rho\>> from coarse fields to
  <math|\<frak-g\><rsup|H<rsup|<math-up|fr>>>> such that:

  <\itemize-minus>
    <item><math|\<rho\><around|(|0|)>=0> and <math|\<rho\>> is real-analytic
    at <math|0>;

    <item>for every tag <math|k>, <math|\<cal-T\><rsup|H><rsub|k>> is jointly
    analytic at <math|0>;

    <item>for every tag <math|k>, <math|D<rsub|a>*\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>=0>
    for <math|x> near <math|0>.
  </itemize-minus>

  <em|Chart ratio and thermal function.>

  <\itemize-minus>
    <item>A <em|local chart ratio> <math|<with|math-font|cal*|J>>
    (<hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>)
    is a density <math|J<rsub|<with|math-font|cal*|J>>> on a ball
    <math|<around|{|<around|\||X|\|>\<less\>r<rsub|<with|math-font|cal*|J>>|}>\<subset\>\<frak-g\>>,
    where <math|r<rsub|<with|math-font|cal*|J>>\<gtr\>0> and
    <math|s<rsub|<with|math-font|cal*|J>>\<gtr\>0> is a scale. It satisfies:

    <\itemize-minus>
      <item><math|J<rsub|<with|math-font|cal*|J>>> is measurable, positive
      and real-analytic on the ball, with
      <math|J<rsub|<with|math-font|cal*|J>><around|(|0|)>=1>;

      <item><math|exp> is injective on the ball and its image is open;

      <item>the pushforward of <math|s<rsub|<with|math-font|cal*|J>>*J<rsub|<with|math-font|cal*|J>><around|(|X|)>*<space|0.17em>d*X>
      restricted to the ball is probability Haar measure restricted to its
      exponential image.
    </itemize-minus>

    Only these density properties enter the forest comparison.

    <item>The <em|thermal function> of a branch
    (<hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>)
    is
  </itemize-minus>

  <\equation*>
    \<Theta\><rsup|H><rsub|k><around|(|x|)>=<math-up|loop><rsub|W><around*|(|U<rsup|H><around|(|x,\<rho\><around|(|x|)>|)>|)>+<tfrac|1|2>log
    det <math-up|Hess><rsub|a>\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>-<big|sum><rsub|e\<in\>H<rsup|<math-up|fr>>>log
    J<rsub|<with|math-font|cal*|J>><around|(|\<rho\><around|(|x|)><rsub|e>|)>.
  </equation*>

  The Hessian is taken in the orthonormal colour basis. For a branch with a
  positive vertical gap, the determinant and chart densities are positive
  near <math|0>.

  <strong|Proposition III.6.1 (second-order jet of the tested action on the
  tree slice; F03).> Let <math|S> be larger, <math|H> a forest and <math|B> a
  bed with a floor <math|<around|(|a,A|)>> on <math|\<Lambda\><rsub|f>> for
  the clip <math|p>. Let <math|W> be a path datum with bounds
  <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>>, attached to <math|B>, with
  <math|B> sworn on <math|\<Lambda\><rsub|f>>. Assume that the main term of
  <math|W> is analytic along analytic families through the identity (true by
  III.6.2). Then for every tag <math|k>, <math|\<cal-T\><rsup|H><rsub|k>> is
  real-analytic at <math|0>, with <math|\<cal-T\><rsup|H><rsub|k><around|(|0|)>=0>
  and <math|D*\<cal-T\><rsup|H><rsub|k><around|(|0|)>=0>. Moreover, for all
  <math|<around|(|x,a|)>,<around|(|x<rprime|'>,a<rprime|'>|)>>,

  <\equation*>
    D<rsup|2>*\<cal-T\><rsup|H><rsub|k><around|(|0|)><around*|[|<around|(|x,a|)>,<around|(|x<rprime|'>,a<rprime|'>|)>|]>=<around|\<langle\>|d*s,<space|0.17em>M<rsub|B>*<space|0.17em>d*s<rprime|'>|\<rangle\>>+\<kappa\><space|0.17em><around|\<langle\>|x-P*s,<space|0.27em>x<rprime|'>-P*s<rprime|'>|\<rangle\>>,<space|2em>s=\<iota\>*x+a,s<rprime|'>=\<iota\>*x<rprime|'>+a<rprime|'>.
  </equation*>

  Here <math|a> is extended by <math|0> to tree bonds, and the pairings are
  summed over plaquettes or coarse bonds and over colours. <em|Status:>
  theorem. Only the well-posedness clause of "larger" is used. <em|Lean:>
  <hlink|<verbatim|Bid.F03>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L78-L81>,
  with conclusions <hlink|<verbatim|Prismatic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L47>
  and <hlink|<verbatim|Comptroller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45>;
  proof <hlink|<verbatim|Work.F03.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L159-L175>.

  <strong|Proposition III.6.2 (analyticity of the main term; F02).> Let
  <math|W> have bounds <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>>. Let
  <math|X> be a finite-dimensional real normed space and
  <math|x<rsub|0>\<in\>X>. Let <math|y\<mapsto\>A<around|(|y|)>> be a family
  of fine configurations with <math|A<around|(|x<rsub|0>|)>=1> whose link
  matrices are real-analytic at <math|x<rsub|0>>. Then
  <math|y\<mapsto\>\<cal-M\><rsub|p><around|(|W;A<around|(|y|)>|)>> is
  real-analytic at <math|x<rsub|0>>. The proof does not use
  <math|A<around|(|x<rsub|0>|)>=1>: the main term is analytic along analytic
  families at every point. <em|Status:> theorem. It supplies the hypothesis
  <hlink|<verbatim|Fires>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L59-L62>
  of III.6.1. <em|Lean:> <hlink|<verbatim|Bid.F02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L73>,
  <hlink|<verbatim|Work.F02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L141-L143>.

  <strong|Proposition III.6.3 (gap of the vertical Hessian; F01).> Assume the
  shell comparison E02 (Ÿ2). Fix <math|G>, <math|L>, <math|J>, kernel choices
  <math|K> with penalty <math|\<kappa\>>, and <math|a\<gtr\>0>. Then there is
  <math|\<eta\>\<gtr\>0> with the following property. Take sides <math|c,f>;
  a larger step datum <math|S> with kernel choices <math|K>, block factor
  <math|L> and order <math|J>; a forest <math|H>; a clip <math|p>; a bed
  <math|B> with floor <math|<around|(|a,A|)>> for some <math|A>; and a path
  datum <math|W> such that every <math|\<cal-T\><rsup|H><rsub|k>> is analytic
  at <math|0> with the value, gradient and Hessian specified in III.6.1. Then
  for every tag <math|r> and every <math|v\<in\>\<frak-g\><rsup|H<rsup|<math-up|fr>>>>,

  <\equation*>
    \<eta\>*<big|sum><rsub|e\<in\>H<rsup|<math-up|fr>>><around|\||v<rsub|e>|\|><rsup|2>\<leqslant\>D<rsub|a><rsup|2>*\<cal-T\><rsup|H><rsub|r><around|(|0,0|)><around|[|v,v|]>.
  </equation*>

  One may take

  <\equation*>
    \<eta\>=<frac|min <around|(|a,\<kappa\>|)>|1+\<beta\>+\<gamma\>>,<space|2em>\<beta\>=2*C<rsub|<math-up|E02>><rsup|2>*<space|0.17em>L<rsup|4>\<cdot\>4\<cdot\>6<space|0.17em><around|\||X|\|><rsup|2>,<space|2em>\<gamma\>=2*L<rsup|4>,
  </equation*>

  where:

  <\itemize-minus>
    <item><math|C<rsub|<math-up|E02>>=C<rsub|<math-up|E02>><around|(|G,L,J,K|)>>
    is the constant of E02;

    <item><math|X=<around|{|-R<rsub|S>,\<ldots\>,R<rsub|S>|}><rsup|4>\<subset\>\<bbb-Z\><rsup|4>>,
    where <math|R<rsub|S>=<around|(|J+7|)>*L>, so
    <math|<around|\||X|\|>=<around|(|2*R<rsub|S>+1|)><rsup|4>>;

    <item>the factors <math|L<rsup|4>>, <math|4> and <math|6> are the numbers
    of fine sites per block, of axes and of plaquette orientations.
  </itemize-minus>

  So <math|\<eta\>> depends only on <math|<around|(|G,L,J,K,a|)>>. It does
  not depend on <math|c>, <math|f>, <math|H>, <math|B> beyond its floor, or
  <math|W>. <em|Status:> theorem, conditional on E02 in its statement. E02 is
  proved in III.10 (<hlink|<verbatim|Work.E02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244>),
  and the combination is unconditional in III.6.6. <em|Lean:>
  <hlink|<verbatim|Bid.F01>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L68-L71>,
  with conclusion <hlink|<verbatim|PriceGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101>;
  proof <hlink|<verbatim|Work.F01.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L266-L311>.

  <strong|Proposition III.6.4 (existence, tangent and value of the critical
  branch; F04).> Let <math|S> be larger, <math|H> a forest, <math|B,C> beds,
  <math|p> a clip, <math|W> a path datum, <math|a\<gtr\>0>, and <math|T>
  towers for <math|<around|(|S,B,C|)>> satisfying the diagonal identities.
  Assume:

  <\itemize-minus>
    <item>every <math|\<cal-T\><rsup|H><rsub|k>> is analytic at <math|0>;

    <item>every <math|\<cal-T\><rsup|H><rsub|k>> has the value, gradient and
    Hessian specified in III.6.1 with bed <math|B>;

    <item>the gap of III.6.3 holds with constant <math|a>;

    <item>there are a clip <math|q> and real constants <math|v,u> for which
    <math|C> has floor <math|<around|(|v,u|)>> on <math|\<Lambda\><rsub|c>>.
  </itemize-minus>

  Then there is a critical branch <math|\<rho\>> for
  <math|<around|(|H,p,W|)>> such that:

  <\itemize-minus>
    <item>(ii) <math|D*\<rho\><around|(|0|)>=<math-up|rel><rsub|H>>, built
    from the tower map <math|\<cal-W\>>;

    <item>(iii) for every tag <math|k>, <math|x\<mapsto\>\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>>
    is analytic at <math|0>, and its second derivative at <math|0> is
    <math|<around|\<langle\>|d*x,M<rsub|C>*<space|0.17em>d*x<rprime|'>|\<rangle\>>>.
    Equivalently, its <math|2>-jet is that of
    <math|<tfrac|1|2><around|\<langle\>|d*x,M<rsub|C>*d*x|\<rangle\>>>.
  </itemize-minus>

  The floor of <math|C> is unused in the proof. Of the diagonal identities,
  only the clause <math|K<rsub|B>*\<cal-W\>=<wide|Q|\<bar\>><rsup|\<top\>>*K<rsub|C>>,
  <math|<wide|Q|\<bar\>>\<cal-W\>=1-\<kappa\><rsup|-1>*K<rsub|C>> is used.
  <em|Status:> theorem. It gives a germ only: no control of the size of the
  neighbourhood. <em|Lean:> <hlink|<verbatim|Bid.F04>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L86-L90>,
  with conclusions <hlink|<verbatim|Critical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91>,
  <hlink|<verbatim|Guessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98>
  and <hlink|<verbatim|HeatG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84>;
  proof <hlink|<verbatim|Work.F04.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L149-L159>.

  <strong|Proposition III.6.5 (independence of the gauge-fixing forest;
  F05).> Let <math|S> be larger, <math|H,H<rprime|'>> forests, and <math|W> a
  path datum with bounds <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>>. Let
  <math|\<rho\>,\<rho\><rprime|'>> be critical branches for <math|H> and
  <math|H<rprime|'>>. Assume positive gap constants <math|a,b> for
  <math|H,H<rprime|'>>, respectively, and let <math|<with|math-font|cal*|J>>
  be a local chart ratio. Then for every tag <math|k>, for <math|x> near
  <math|0>:

  <\itemize-minus>
    <item>(i) <math|\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>=\<cal-T\><rsup|H<rprime|'>><rsub|k><around|(|x,\<rho\><rprime|'><around|(|x|)>|)>>;

    <item>(ii) <math|\<Theta\><rsup|H><rsub|k><around|(|x|)>=\<Theta\><rsup|H<rprime|'>><rsub|k><around|(|x|)>>.
  </itemize-minus>

  The gap for <math|H> is unused in the proof. The statement of (ii) allows
  an additive constant; the proof gives <math|0>. <em|Status:> theorem.
  <em|Lean:> <hlink|<verbatim|Bid.F05>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L94-L99>,
  <hlink|<verbatim|Work.F05.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L60-L67>,
  <hlink|<verbatim|Work.F05.same_thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57>.

  <strong|Proposition III.6.6 (the stationary branch from F01\UF04).> For
  every <math|G>, <math|L>, <math|J>, kernel choices <math|K> and
  <math|a\<gtr\>0> there is <math|\<eta\>\<gtr\>0> with the following
  property. Take a larger <math|S> with these parameters; a forest <math|H>;
  beds <math|B,C>; clips <math|p,q>; a path datum <math|W>; and towers
  <math|T>. Assume:

  <\itemize-minus>
    <item><math|T> satisfies the diagonal identities for
    <math|<around|(|S,B,C|)>>;

    <item><math|B> has floor <math|<around|(|a,A|)>> for clip <math|p> on
    <math|\<Lambda\><rsub|f>>, and <math|C> has floor <math|<around|(|v,u|)>>
    for clip <math|q> on <math|\<Lambda\><rsub|c>>, for some real
    <math|A,v,u>;

    <item><math|W> has bounds <math|<around|(|p,\<sigma\>,C<rsub|0>,\<Lambda\>|)>>
    and is attached to <math|B>;

    <item><math|B> is sworn.
  </itemize-minus>

  Then the gap of III.6.3 holds with constant <math|\<eta\>>, and there is a
  critical branch with properties (ii)\U(iii) of III.6.4. <em|Status:>
  theorem. <hlink|<verbatim|Bid.cospons>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113>
  derives it from E02 and F01\UF04. <hlink|<verbatim|Integrated.stationary_scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integrated.lean#L229-L232>
  instantiates it with the proofs of E02 and F01\UF04, so no work-item
  assumption remains. The geometric, floor and path hypotheses above are
  retained. <em|Lean:> <hlink|<verbatim|Bid.Scene>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L102-L106>.

  <strong|Proposition III.6.7 (the branch on a volume-independent ball).>

  <em|(a) Uniform implicit function theorem.> Let <math|\<iota\>,\<tau\>> be
  finite sets and let <math|\<ell\>:\<iota\>\<sqcup\>\<tau\>\<to\>\<Lambda\>>
  assign their coordinates to sites of a four-dimensional torus, with at most
  <math|K<rsub|0>> coordinates per site. Equip the coordinate spaces with the
  sup norm. Fix <math|C<rsub|0>,a<rsub|0>,r,m\<gtr\>0> and an integer
  <math|n\<geqslant\>3>. Suppose <math|f:\<bbb-R\><rsup|\<iota\>\<sqcup\>\<tau\>>\<to\>\<bbb-R\>>
  is real-analytic at every point <math|z> of
  <math|<around|{|<around|\<\|\|\>|z|\<\|\|\>><rsub|\<infty\>>\<less\>r|}>>
  and, for <math|1\<leqslant\>k\<leqslant\>n>, every coordinate tuple
  <math|q<rsub|1>,\<ldots\>,q<rsub|k>> and every <math|j\<leqslant\>k>,

  <\equation*>
    <mid|\|>\<partial\><rsub|q<rsub|1>>*\<cdots\>*\<partial\><rsub|q<rsub|k>>*f<around|(|z|)><mid|\|>\<leqslant\>C<rsub|0>*exp
    <space|-0.17em><around*|(|-a<rsub|0>*<big|sum><rsub|i=1><rsup|k><math-up|dist><around|(|\<ell\><around|(|q<rsub|j>|)>,\<ell\><around|(|q<rsub|i>|)>|)>|)>.
  </equation*>

  Here distance is the periodic max-distance. Assume
  <math|\<nabla\><rsub|\<tau\>>*f<around|(|0|)>=0> and
  <math|D<rsup|2><rsub|\<tau\>*\<tau\>>*f<around|(|0|)>\<geqslant\>m*I> in
  counting coordinates. Then there are positive radii
  <math|r<rsub|<math-up|hor>>\<leqslant\>r<rsub|<math-up|zone>>\<leqslant\>r<rsub|<math-up|safe>>\<less\>r>,
  depending only on <math|<around|(|K<rsub|0>,C<rsub|0>,a<rsub|0>,r,m|)>>,
  and a map <math|g:\<bbb-R\><rsup|\<iota\>>\<to\>\<bbb-R\><rsup|\<tau\>>>
  with <math|g<around|(|0|)>=0>, such that whenever
  <math|<around|\<\|\|\>|x|\<\|\|\>><rsub|\<infty\>>\<less\>r<rsub|<math-up|hor>>>:

  <\itemize-minus>
    <item><math|g> is analytic at <math|x>;

    <item><math|<around|\<\|\|\>|g<around|(|x|)>|\<\|\|\>><rsub|\<infty\>>\<leqslant\>r<rsub|<math-up|zone>>/2>;

    <item><math|g<around|(|x|)>> is the unique critical point of
    <math|f<around|(|x,\<cdot\>|)>> in <math|<around|{|<around|\<\|\|\>|v|\<\|\|\>><rsub|\<infty\>>\<leqslant\>r<rsub|<math-up|zone>>|}>>.
  </itemize-minus>

  <em|(b) Application to the tested action.> Fix <math|G>, real constants
  <math|\<mu\>,C>, a patch order <math|J>, kernel choices <math|K>, and an
  integer <math|n\<geqslant\>3>. There is a choice of auxiliary constants,
  made before <math|L>, with the following property. For every clip <math|p>,
  real <math|\<Lambda\>>, larger step <math|S> of order <math|J> with kernel
  choices <math|K>, forest <math|H> and path datum <math|W> with bounds
  <math|<around|(|p,\<mu\>,C,\<Lambda\>|)>>, part (a) applies to the tested
  action in individual real colour components. It gives a critical branch
  <math|g> common to all tags: for each tag <math|t> and
  <math|<around|\<\|\|\>|x|\<\|\|\>><rsub|\<infty\>>\<less\>r<rsub|<math-up|hor>>>,
  <math|g<around|(|x|)>> is the unique critical point of
  <math|\<cal-T\><rsup|H><rsub|t><around|(|x,\<cdot\>|)>> in the closed
  sup-ball of radius <math|r<rsub|<math-up|zone>>>. The radii depend on the
  auxiliary constants, <math|p> and <math|L>, but not on
  <math|c,f,H,\<Lambda\>> or <math|W> beyond its bounds. Coarse coordinates
  are located at their fine block roots when measuring decay. <em|Status:>
  theorem. <em|Lean:> (a) <hlink|<verbatim|Receipt.throughout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215>
  with hypotheses <hlink|<verbatim|Receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33>
  and radii <hlink|<verbatim|reserveX>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L42-L43>.
  (b) <hlink|<verbatim|Before.graph>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L253-L294>,
  <hlink|<verbatim|Before.Service>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L245-L251>,
  <hlink|<verbatim|pre_order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L160-L167>.

  <strong|Proposition III.6.8 (derivatives along the branch).> Fix an integer
  <math|N\<geqslant\>0>, the data and hypotheses of III.6.7(b), auxiliary
  constants chosen at order <math|N+3>, and any branch <math|g> satisfying
  its analytic, size and uniqueness conclusions. Then for every tag the
  following hold, with constants depending only on the corresponding bounds
  and radii.

  <\itemize-minus>
    <item>(a) At every point of the closed joint sup-ball of radius
    <math|r<rsub|<math-up|safe>>\<geqslant\>r<rsub|<math-up|zone>>>, the
    vertical Hessian, as a matrix function of all variables, has a <em|block
    package> of order <math|N>:

    <\itemize-minus>
      <item>it is analytic and <math|\<geqslant\>m/2>;

      <item>its entries and their derivatives up to order <math|N+1> are
      localized;

      <item>for every principal sub-block and every shift
      <math|t\<geqslant\>0>, the shifted sub-block is invertible;

      <item>the inverse of the shifted sub-block is exponentially localized
      with constant <math|O<around|(|<around|(|1+t|)><rsup|-1>|)>>, has
      localized derivatives up to order <math|N+1>, and has
      <math|\<ell\><rsup|2>> norm <math|\<leqslant\><around|(|m/2+t|)><rsup|-1>>;

      <item><math|log det> of the shifted sub-block is analytic and its
      derivatives of orders <math|1,\<ldots\>,N+1> are localized, with bounds
      proportional to <math|<around|(|1+t|)><rsup|-1>>.
    </itemize-minus>

    <item>(b) On the coarse sup-ball of radius <math|r<rsub|<math-up|hor>>>,
    the map <math|g> and the graph <math|x\<mapsto\><around|(|x,g<around|(|x|)>|)>>
    have localized derivatives of orders <math|1,\<ldots\>,N+2>.

    <item>(c) The classical action <math|x\<mapsto\>\<cal-T\><rsup|H><rsub|t><around|(|x,g<around|(|x|)>|)>>
    has localized derivatives of orders <math|1,\<ldots\>,N+3>.

    <item>(d) The Hessian along the branch,
    <math|x\<mapsto\><math-up|Hess><rsub|a>\<cal-T\><rsup|H><rsub|t><around|(|x,g<around|(|x|)>|)>>,
    has a block package of order <math|N>.
  </itemize-minus>

  For a matrix function <math|A<around|(|z|)>>, localization of its
  coefficients means a bound

  <\equation*>
    <around|\||\<partial\><rsub|q<rsub|1>>*\<cdots\>*\<partial\><rsub|q<rsub|k>>*A<rsub|i*j><around|(|z|)>|\|>\<leqslant\>C<rsub|k>*exp
    <space|-0.17em><around*|[|-a<rsub|k>*<around*|(|<math-up|dist><around|(|i,j|)>+<big|sum><rsub|\<nu\>><math-up|dist><around|(|i,q<rsub|\<nu\>>|)>|)>|]>,
  </equation*>

  with coordinates replaced by their assigned sites. For positive-order
  derivatives of a map such as <math|g>, omit <math|j>; for a scalar function
  use the bound in III.6.7(a). No volume-independent bound on the value of
  the classical action or of <math|log det> is asserted.

  <em|Status:> theorem under the hypotheses of III.6.7(b). <em|Lean:>
  <hlink|<verbatim|Counter.service>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L116-L145>,
  <hlink|<verbatim|Counter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88>,
  <hlink|<verbatim|BlockPack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84>.

  <strong|Proposition III.6.9 (one level of the iteration).> Assume the
  following.

  <\itemize-minus>
    <item>The schedule hypotheses of III.2: constants issued before <math|L>,
    warm-up, and a paid schedule.

    <item>A horizon of beds <math|M<rsub|N,m>> and towers with the prescribed
    strip and derivative bounds, floors on every torus, diagonal and stack
    identities, and identity diagonal at the cutoff
    (<hlink|<verbatim|Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>).

    <item>All beds are sworn at the periods used. The towers are harmonic:
    the zero-momentum coefficient of their 2-form component is independent of
    the fine residue within a block.

    <item>A gap quote, i.e. III.6.6 at every level, which the Lean supplies
    from <hlink|<verbatim|Iteration.post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106>.

    <item>A local chart ratio.

    <item>The <hlink|fresh-data hypotheses|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96>.
    For each admissible input datum and each family of branches satisfying
    (i), these hypotheses supply the fresh cubic, quartic and loop atoms and
    their bounds, with the classical and thermal matchings each verified on a
    chosen forest and tag per period. These choices may differ between the
    two matchings. It also supplies the cutoff cubic and quartic atoms.
  </itemize-minus>

  Let <math|m\<less\>N> and let <math|T> be a path datum <em|funded> at level
  <math|m+1> (<hlink|<verbatim|Work item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39>).
  That is, the rows of <math|T> enumerate the root-kernel coefficients of
  <math|M<rsub|N,m+1>> using the fixed coordinate paths to each offset;
  <math|T> has the level-<math|<around|(|m+1|)>> bounds; and the sums of
  absolute cubic and quartic coefficients weighted by exponential path length
  are each at most the level cap. This row convention is stronger than
  attachment alone. Then there exist a path datum <math|R> funded at level
  <math|m>, branches <math|\<rho\><rsub|p,F>> for every period <math|p> and
  every forest <math|F>, and a number <math|\<alpha\>> such that:

  <\itemize-minus>
    <item>(i) each <math|\<rho\><rsub|p,F>> satisfies the conclusions of
    III.6.6 with the level-<math|<around|(|m+1|)>> gap, its tower map, and
    the bed <math|M<rsub|N,m>>;

    <item>(ii) <math|<around|\||\<alpha\>+\<kappa\><rsub|G>*log
    L<rsub|m>|\|>+1\<leqslant\><math-up|drift><rsub|m+1>>, where
    <math|\<kappa\><rsub|G>> is the one-loop slope constant of <math|G>;

    <item>(iii) for every <math|p> and <math|F>,
    <math|x\<mapsto\>\<cal-T\><rsup|F><rsub|k><around|(|x,\<rho\><rsub|p,F><around|(|x|)>|)>>
    (built with <math|T> and the clip of level <math|m+1>) has the same jets
    of orders <math|0,\<ldots\>,4> at <math|0> as
    <math|x\<mapsto\>\<cal-M\><rsub|q><around|(|R;e<rsup|x>|)>> (clip
    <math|q> of level <math|m>);

    <item>(iv) for every <math|p> and <math|F>, the thermal function is
    analytic and the Hessian determinant is positive near <math|0>. Moreover,
    for any two real plane waves <math|w<rsub|1>,w<rsub|2>>, each the real
    part of a complex lattice plane wave whose coefficient in every axis and
    colour has modulus at most <math|1>,
  </itemize-minus>

  <\equation*>
    <mid|\|>D<rsup|2>*\<Theta\><rsup|F><rsub|k><around|(|0|)><around|[|w<rsub|1>,w<rsub|2>|]>-D<rsup|2>*<around*|(|\<alpha\>*<space|0.17em>\<cal-M\><rsup|<around|(|2|)>><rsub|q><around|(|R|)>+<math-up|loop><rsub|R>|)><around|(|0|)><around|[|w<rsub|1>,w<rsub|2>|]><mid|\|>\<leqslant\><around|\||\<Lambda\><rsub|c>|\|>*<space|0.17em>\<Gamma\>*<space|0.17em>\<lambda\><rsub|m+1>*<space|0.17em>e<rsup|-\<gamma\>*c>.
  </equation*>

  Here <math|\<cal-M\><rsup|<around|(|2|)>><rsub|q><around|(|R;x|)>> denotes
  the symmetrized Wilson-plus-row-square term evaluated on <math|e<rsup|x>>:

  <\equation*>
    \<cal-M\><rsup|<around|(|2|)>><rsub|q><around|(|R;x|)>=<frac|1|<around|\||\<cal-S\>|\|>>*<big|sum><rsub|s\<in\>\<cal-S\>><big|sum><rsub|\<pi\>><around*|[|c<rsub|q><space|0.17em><math-up|price><around|(|<around|(|s<rsup|\<ast\>>*e<rsup|x>|)><rsub|\<pi\>>|)>+<tfrac|1|2><around|\||\<ell\><rsub|R>*<around|(|s<rsup|\<ast\>>*e<rsup|x>|)><rsub|\<pi\>>|\|><rsup|2>|]>.
  </equation*>

  It includes all higher-order dependence on <math|x> in these terms; it is
  not their degree-two Taylor polynomial. The constants
  <math|\<Gamma\>,\<gamma\>\<gtr\>0> are chosen after <math|L>. All
  conclusions hold for every tag <math|k>, and the same <math|R,\<alpha\>>
  serve every period and forest.

  A companion statement, <hlink|<verbatim|Iteration.peak>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L35-L48>,
  gives a funded path datum at the cutoff level <math|N> whose main term has
  the jets of order <math|\<leqslant\>4> of the Wilson energy. <em|Status:>
  theorem under the stated schedule, horizon and fresh-data hypotheses. Their
  discharge is discussed in Ÿ7. <em|Lean:>
  <hlink|<verbatim|Iteration.extend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150>,
  <hlink|<verbatim|Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33>,
  <hlink|<verbatim|ClassicalMatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L108-L109>,
  <hlink|<verbatim|FiniteBound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L62-L71>.

  <strong|Further results attached to this unit (statements only; see Ÿ4.7).>

  <\itemize-minus>
    <item><em|Beds and towers (F06\UF09).> These are combined in
    <hlink|<verbatim|Bid.pinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166>
    (III.10) into a horizon meeting the prescribed bounds. The construction
    retains the supplied beds and the first two tower components; the floors
    and original diagonal identities are inputs, and the stack identities are
    outputs.

    <\itemize-minus>
      <item><hlink|<verbatim|F06.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128>:
      a <math|3>-form kernel that is positive on exact forms can be replaced
      by one that is positive everywhere, without changing
      <math|d<rsup|\<top\>><around|(|\<cdummy\>|)>*d>.

      <item><hlink|<verbatim|F07.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201>:
      square roots of positive kernels, with exponential decay.

      <item><hlink|<verbatim|F08.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146>:
      towers with uniform widths.

      <item><hlink|<verbatim|F09.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150>:
      the stack identities.
    </itemize-minus>

    <item><em|Comparison of two tori> (<hlink|<verbatim|Loom.spinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104>).

    <item><em|Primary-integral comparisons>
    (<hlink|<verbatim|Ramble.billFor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86>,
    <hlink|<verbatim|PPX.toll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/East.lean#L112-L139>,
    <hlink|<verbatim|Oval.sticker>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Oval.lean#L167-L179>).

    <item><em|Rotation and Ward material>
    (<hlink|<verbatim|Outer.outer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121>).
    Mathematically it belongs to VI.1.
  </itemize-minus>

  <section|2. What it uses><label|2-what-it-uses>

  <\itemize-minus>
    <item><strong|III.1 (block-spin step and symmetric gauge fixing).>

    <\itemize-minus>
      <item>The step data, tags and predictors, and the well-posedness
      condition.

      <item>Spanning forests rooted at block centres.

      <item>The definitions of the tested action, critical branch, thermal
      function, beds, floors and towers.

      <item>The identities <math|P*<wide|\<cal-W\>|^><rsub|H>=1-\<kappa\><rsup|-1>*K<rsub|C>>
      and <math|K<rsub|B>*<wide|\<cal-W\>|^><rsub|H>=P<rsup|\<top\>>*K<rsub|C>>,
      which follow from the tower identities
      (<hlink|<verbatim|stationed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L81-L91>).

      <item>The change of forest <math|<math-up|slice><around|(|H|)>\<to\><math-up|slice><around|(|H<rprime|'>|)>>,
      a gauge transformation trivial at the roots, preserves product Haar
      measure (<hlink|<verbatim|Profiles.spending>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Profiles.lean#L57-L77>).

      <item>The predictor is invariant under gauge transformations trivial at
      the block roots.
    </itemize-minus>

    <item><strong|III.10 (one nonlinear step).> E02, the shell comparison
    (<hlink|<verbatim|Bid.E02>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L49-L52>,
    <hlink|<verbatim|Cops>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Energy.lean#L44-L47>).
    For given <math|<around|(|G,L,J,K|)>> there is
    <math|C<rsub|<math-up|E02>>\<gtr\>0> with the following property. For
    every larger <math|S>, forest <math|H>, fine configuration <math|U> in
    the slice of <math|H>, coarse <math|V>, fine bond <math|e> (in block
    <math|i>, direction <math|\<mu\>>) and tag <math|k>, assume the selected
    frames have positive mass at all coarse sites within periodic offset
    <math|<around|[|-2,2|]><rsup|4>> of <math|i>. Then:
  </itemize-minus>

  <\equation*>
    <math-up|chord><around*|(|U<rsub|e>*\<cal-R\><around|(|V|)><rsub|e><rsup|-1>|)>\<leqslant\>C<rsub|<math-up|E02>><space|0.17em><math-up|port><rsub|i><around|(|U|)>+\<b-1\><rsub|e<math-up|crossing>><space|0.17em><math-up|wire><around|(|Q<rsub|k><around|(|U|)>,V|)><rsub|<around|(|i,\<mu\>|)>>.
  </equation*>

  Here <math|<math-up|wire><around|(|Q,V|)><rsub|b>=<math-up|chord><around|(|V<rsub|b>*Q<rsub|b><rsup|-1>|)>>,
  and <math|<math-up|port><rsub|i><around|(|U|)>\<leqslant\><big|sum><rsub|z\<in\>X><big|sum><rsub|\<pi\>><math-up|chord><around|(|U<rsub|\<pi\>>|)>>,
  summed over plaquettes <math|\<pi\>> at <math|<math-up|root><rsub|i>+z>.
  The estimate is proved in <hlink|<verbatim|Work.E02.answer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/E02.lean#L132-L244>.
  The combination <hlink|<verbatim|Bid.cospons>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L108-L113>
  and the horizon construction <hlink|<verbatim|Bid.pinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166>
  are filed under III.10.

  <\itemize-minus>
    <item><strong|III.3 (free kernels).> The beds are free lattice kernels in
    Fourier (Bloch/Laurent) form. F06\UF09 complete the towers while
    retaining the supplied beds and floors.

    <item><strong|III.2 (order of constants).> The constants issued before
    <math|L>, the block sizes <math|L<rsub|m>>, the post-<math|L> costs, and
    the drift window, all used in III.6.9. In particular the gap constant is
    post-<math|L> and the constants of III.6.7(b) are chosen before <math|L>.

    <item><strong|I.1, II.1, II.2.> The lattice, lattice forms and <math|d>;
    the group <math|G> and its exponential, chord, price and Haar measure;
    the path data and their bounds.

    <item><strong|III.16 (analytic estimates).> Real-analytic functions,
    Taylor jets and iterated derivatives.

    <item><strong|Standard mathematics.>

    <\itemize-minus>
      <item>The analytic implicit and inverse function theorems
      (Krantz\UParks, <em|The Implicit Function Theorem>, Birkhäuser 2002).

      <item>Weierstrass's theorem on normally convergent series of
      holomorphic functions.

      <item>The second-order chain rule at a critical point, so that
      <math|det> of the Hessian changes by the squared Jacobian.

      <item>The change-of-variables formula.

      <item>The Banach fixed-point theorem.

      <item>The Combes\UThomas estimate (Combes\UThomas, <em|Comm. Math.
      Phys.> 34 (1973) 251\U270).

      <item>The background-field method in lattice gauge theory: T. Baªaban,
      <em|Propagators and renormalization transformations for lattice gauge
      theories I, II>, Comm. Math. Phys. 95 (1984), 96 (1984); <em|The
      variational problem and background fields in renormalization group
      method for lattice gauge theories>, Comm. Math. Phys. 102 (1985);
      <em|Renormalization group approach to lattice gauge field theories I>,
      Comm. Math. Phys. 109 (1987); J. Dimock, <em|The renormalization group
      according to Balaban I>, Rev. Math. Phys. 25 (2013).
    </itemize-minus>
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The constant <math|C<rsub|<math-up|E02>><around|(|G,L,J,K|)>>.

    <item>The penalty <math|\<kappa\>> of the kernel choices.

    <item>The floors <math|<around|(|a,A|)>> of the beds.

    <item>The one-loop slope <math|\<kappa\><rsub|G>>, which enters only
    through the drift window of III.6.9 (see III.9).

    <item>The fresh-data, schedule and horizon hypotheses of III.6.9.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  At fixed coarse field, the renormalization step expands the fine-field
  integral around a stationary background. Gauge fixing removes the blockwise
  gauge directions. A positive vertical Hessian then gives an analytic
  branch, and the tower identities identify its tangent and the quadratic
  part of its classical value. The one-loop contribution is the Hessian
  determinant corrected by the Haar density and the loop atoms.

  The construction uses the penalty <math|\<kappa\>*<big|sum><rsub|b><math-up|price><around|(|e<rsup|x<rsub|b>>*Q<rsub|k><around|(|U|)><rsub|b><rsup|-1>|)>>
  and fixes the fine field on a rooted forest inside each block. The shell
  comparison bounds the free links by curvature and predictor response. After
  linearization and summation, it gives a positive vertical Hessian with a
  lower bound independent of the torus volume. The analytic implicit function
  theorem produces the branch germ. A change of forest preserves both the
  stationary value and the thermal function: the squared Jacobian in the
  Hessian determinant cancels the Haar-density ratio.

  For a branch on a ball independent of the volume, exponential decay of the
  inverse Hessian gives a uniform sup-norm bound. A Newton contraction
  produces the branch on that ball; differentiating the stationarity and
  resolvent identities controls its localized derivatives. Finally, the
  iteration combines inherited atoms with fresh classical and one-loop data
  supplied by the hypotheses of III.6.9. This is a penalized background-field
  construction in the spirit of Baªaban's method. It establishes local
  stationarity and quantitative control near the identity.

  <section|4. Steps><label|4-steps>

  Lemmas 4.1\U4.4 use the hypotheses of III.6.1, Lemmas 4.5\U4.7 those of
  III.6.3, Lemmas 4.8\U4.12 those of III.6.4, and Lemmas 4.13\U4.17 those of
  III.6.5. Lemmas 4.19\U4.20 use III.6.7(a)\U(b), respectively, and Lemmas
  4.22\U4.24 use III.6.9.

  <subsection|4.1 The second-order jet (F02,
  F03)><label|41-the-second-order-jet-f02-f03>

  <strong|Lemma 4.1 (holomorphic extension of the main term).> Let <math|W>
  have bounds <math|<around|(|p,\<sigma\>,C,\<Lambda\>|)>> and let <math|U>
  be any configuration on a finite torus. The <math|\<ell\><rsub|W>>-series
  and the sums of cubic and quartic atoms have holomorphic extensions near
  the matrix pair <math|<around|(|U,U<rsup|\<ast\>>|)>>. Their summands are
  uniformly summable on the ambient ball of radius
  <math|R<rsub|\<sigma\>>=e<rsup|\<sigma\>/2>-1>, using the maximum of the
  linkwise Frobenius norms. <em|Sketch:> Treat the link and inverse-link
  matrices as independent complex variables. A word of length <math|l> has
  norm at most <math|<around|(|1+R<rsub|\<sigma\>>|)><rsup|l><around|\<\|\|\>|1|\<\|\|\>>>.
  A slot of length <math|l> uses words of length at most <math|2*l>, so its
  norm is at most <math|C<rsub|G>*e<rsup|\<sigma\>*l>>, with <math|C<rsub|G>>
  independent of <math|l>. The coefficient bounds therefore give normal
  convergence; a Cauchy estimate on a smaller ball controls the derivative
  series. The Wilson term is polynomial and symmetrization is finite.
  Composition with <math|y\<mapsto\><around|(|A<around|(|y|)>,A<around|(|y|)><rsup|\<ast\>>|)>>,
  followed by restriction to real scalars, proves III.6.2.

  <em|Lean:> <hlink|<verbatim|F02.analytic_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02/Series.lean#L57-L74>,
  <hlink|<verbatim|rowExt_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L30-L41>,
  <hlink|<verbatim|atomExt_series>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L51-L57>,
  <hlink|<verbatim|mainTerm_contDiffAt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F02.lean#L126-L139>.

  <strong|Lemma 4.2 (the chart and its tangent).> The map
  <math|<around|(|x,a|)>\<mapsto\>U<rsup|H><around|(|x,a|)>> is analytic near
  <math|0>, with <math|U<rsup|H><around|(|0,0|)>=1>. The derivative of
  <math|t\<mapsto\>U<rsup|H><around|(|t<around|(|x,a|)>|)><rsub|e>> at
  <math|0> is <math|s<rsub|e>>, where <math|s=\<iota\>*x+a>. On tree bonds
  <math|s<rsub|e>=0>, because tree bonds are internal and <math|\<iota\>*x>
  vanishes there. Consequently <math|<math-up|incl><around|(|x,a|)>=<around|(|x,log
  U<rsup|H><around|(|x,a|)>|)>> is analytic near <math|0>, with
  <math|exp\<circ\>log U<rsup|H>=U<rsup|H>> near <math|0> and
  <math|D<space|0.17em><math-up|incl><around|(|0|)><around|(|x,a|)>=<around|(|x,s|)>>.
  <em|Lean:> <hlink|<verbatim|F03.live_rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L86-L119>,
  <hlink|<verbatim|inclusion_works>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L67-L80>,
  <hlink|<verbatim|inclusion_deriv>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L121-L149>.

  <strong|Lemma 4.3 (flat jets).> Let <math|\<cal-F\><rsub|k><around|(|x,A|)>=\<cal-M\><rsub|p><around|(|W;e<rsup|A>|)>+\<kappa\>*<big|sum><rsub|b><math-up|price><around|(|e<rsup|x<rsub|b>>*Q<rsub|k><around|(|e<rsup|A>|)><rsub|b><rsup|-1>|)>>
  be the action in logarithmic coordinates on all fine bonds. Under the
  hypotheses of III.6.1:

  <\itemize-minus>
    <item><math|\<cal-F\><rsub|k><around|(|0|)>=0> and
    <math|D*\<cal-F\><rsub|k><around|(|0|)>=0>;

    <item><math|D<rsup|2>*\<cal-F\><rsub|k><around|(|0|)><around|[|<around|(|x,A|)>,<around|(|x<rprime|'>,A<rprime|'>|)>|]>=<around|\<langle\>|d*A,M<rsub|B>*d*A<rprime|'>|\<rangle\>>+\<kappa\><around|\<langle\>|x-P*A,x<rprime|'>-P*A<rprime|'>|\<rangle\>>>.
  </itemize-minus>

  <em|Sketch:> The computation rests on an abstract principle: if <math|f> is
  <math|C<rsup|2>> at <math|0> and, for every <math|z>,
  <math|f*<around|(|t*z|)>/t<rsup|2>\<to\><tfrac|1|2>Q<around|(|z,z|)>> for a
  symmetric bilinear <math|Q>, then <math|f<around|(|0|)>=0>,
  <math|D*f<around|(|0|)>=0> and <math|D<rsup|2>*f<around|(|0|)>=Q>. The
  limits are:

  <\itemize-minus>
    <item><math|<math-up|price><around|(|<around|(|e<rsup|t*A>|)><rsub|\<pi\>>|)>/t<rsup|2>\<to\><tfrac|1|2><around|\||d*A<rsub|\<pi\>>|\|><rsup|2>>;

    <item><math|\<ell\><rsub|W><around|(|e<rsup|t*A>|)>/t\<to\>R<rsub|B>*<space|0.17em>d*A>,
    because <math|W> is attached to <math|B>;

    <item>so the quadratic part tends to <math|<tfrac|1|2><around|\<langle\>|d*A,<around|(|c<rsub|p>+R<rsub|B><rsup|\<top\>>*R<rsub|B>|)>*d*A|\<rangle\>>=<tfrac|1|2><around|\<langle\>|d*A,M<rsub|B>*d*A|\<rangle\>>>,
    by the floor identity;

    <item>the cubic and quartic sums are <math|o<around|(|t<rsup|2>|)>>; each
    slot vanishes at the identity and has a linear tangent;

    <item>averaging over <math|\<cal-S\>> does not change the limit, because
    <math|B> is sworn;

    <item><math|Q<rsub|k><around|(|e<rsup|t*A>|)>> has derivative <math|P*A>
    at <math|t=0> (this uses well-posedness), so the penalty tends to
    <math|<tfrac|\<kappa\>|2><around|\||x-P*A|\|><rsup|2>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|F03.hessian_of_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L102-L117>,
  <hlink|<verbatim|quadratic_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L23-L38>,
  <hlink|<verbatim|main_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L63-L77>,
  <hlink|<verbatim|noise_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L107-L128>,
  <hlink|<verbatim|flat_jets>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Flat.lean#L168-L188>,
  <hlink|<verbatim|metric_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Metric.lean#L135-L140>.
  <em|(proof read; the metric identity and cubic/quartic limit: statement
  only)>

  <strong|Lemma 4.4 (transport to the tree slice).> Near <math|0>,
  <math|\<cal-T\><rsup|H><rsub|k>=\<cal-F\><rsub|k>\<circ\><math-up|incl>>.
  Since <math|D*\<cal-F\><rsub|k><around|(|0|)>=0>,
  <math|D<rsup|2>*\<cal-T\><rsup|H><rsub|k><around|(|0|)><around|[|u,u<rprime|'>|]>=D<rsup|2>*\<cal-F\><rsub|k><around|(|0|)><around|[|D<math-up|incl><around|(|0|)>*u,D<math-up|incl><around|(|0|)>*u<rprime|'>|]>>;
  no term with <math|D<rsup|2><math-up|incl>> survives. With Lemmas 4.2\U4.3
  this gives III.6.1. <em|Lean:> <hlink|<verbatim|F03.from_flat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03.lean#L151-L156>,
  <hlink|<verbatim|hessian_comp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F03/Calculus.lean#L120-L142>.

  <subsection|4.2 The gap (F01)><label|42-the-gap-f01>

  <strong|Lemma 4.5 (link bound).> Let <math|v\<in\>\<frak-g\><rsup|H<rsup|<math-up|fr>>>>
  and <math|y=s<around|(|0,v|)>>, i.e. <math|v> on free bonds and <math|0> on
  tree bonds. Assume E02. Then for every fine bond <math|e>, in block
  <math|i> and direction <math|\<mu\>>,

  <\equation*>
    <around|\||y<rsub|e>|\|>\<leqslant\>C<rsub|<math-up|E02>>*<big|sum><rsub|z\<in\>X><big|sum><rsub|\<pi\>><mid|\|>d*y<rsub|<around|(|<math-up|root><rsub|i>+z,\<pi\>|)>><mid|\|>+<mid|\|><around|(|P*y|)><rsub|<around|(|i,\<mu\>|)>><mid|\|>.
  </equation*>

  <em|Sketch:> Apply E02 with <math|V=1> to <math|U<rsub|t>=e<rsup|t*y>>. The
  configuration lies in the slice, and for small <math|t> the selected frames
  have positive mass. One obtains <math|<math-up|chord><around|(|U<rsub|t,e>|)>\<leqslant\>C<space|0.17em><math-up|port><rsub|i><around|(|U<rsub|t>|)>+<math-up|chord><around|(|Q<rsub|k><around|(|U<rsub|t>|)><rsub|<around|(|i,\<mu\>|)>>|)>>.
  Divide by <math|<around|\||t|\|>> and let <math|t\<to\>0>, using
  <math|<math-up|chord><around|(|\<gamma\><around|(|t|)>|)>/<around|\||t|\|>\<to\><around|\||\<gamma\><rprime|'><around|(|0|)>|\|>>
  along curves through <math|1>. <em|Lean:>
  <hlink|<verbatim|F01.link_bound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L63-L108>,
  <hlink|<verbatim|chord_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L22-L28>.

  <strong|Lemma 4.6 (summation).> For the extension <math|y> of Lemma 4.5,
  <math|<big|sum><rsub|e><around|\||y<rsub|e>|\|><rsup|2>\<leqslant\>\<beta\>*<big|sum><around|\||d*y|\|><rsup|2>+\<gamma\>*<big|sum><around|\||P*y|\|><rsup|2>>,
  with <math|\<beta\>,\<gamma\>> as in III.6.3. <em|Sketch:>

  <\itemize-minus>
    <item>Start from <math|<around|(|C*Z+Y|)><rsup|2>\<leqslant\>2*C<rsup|2>*Z<rsup|2>+2*Y<rsup|2>>.

    <item>Cauchy\USchwarz over <math|X\<times\><around|{|<text|plaquette
    orientations>|}>> costs <math|6<around|\||X|\|>>.

    <item>Each coarse site carries <math|L<rsup|4>> fine sites and <math|4>
    directions.

    <item>In the re-summation over coarse sites,
    <math|i\<mapsto\><math-up|root><rsub|i>+z> is injective for fixed
    <math|z>, which costs one more factor <math|<around|\||X|\|>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|F01.sum_estimate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L174-L206>,
  <hlink|<verbatim|sum_ports_sq>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L136-L165>.

  <strong|Lemma 4.7 (the gap).> By III.6.1 on vertical vectors (where
  <math|x=0>, so the penalty argument is <math|-P*y>) and by the floor,

  <\equation*>
    D<rsup|2><rsub|a>*\<cal-T\><rsup|H><rsub|r><around|(|0|)><around|[|v,v|]>=<around|\<langle\>|d*y,M<rsub|B>*d*y|\<rangle\>>+\<kappa\>*<around|\||P*y|\|><rsup|2>\<geqslant\>a*<around|\||d*y*<around|\||<rsup|2>+\<kappa\>|\|>*P*y|\|><rsup|2>.
  </equation*>

  Hence <math|\<eta\><around|\||v|\|><rsup|2>\<leqslant\>\<eta\>*<around|(|\<beta\>*<around|\||d*y*<around|\||<rsup|2>+\<gamma\>|\|>*P*y|\|><rsup|2>|)>\<leqslant\>a\|d*y\|<rsup|2>+\<kappa\>*<around|\||P*y|\|><rsup|2>>.
  This proves III.6.3. <em|Lean:> <hlink|<verbatim|F01.hess_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L252-L262>,
  <hlink|<verbatim|curl_floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L218-L230>,
  <hlink|<verbatim|vertical_hessian>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F01.lean#L233-L250>.

  <subsection|4.3 The branch (F04)><label|43-the-branch-f04>

  <strong|Lemma 4.8 (tags agree near the identity).> If <math|S> is well
  posed, the predictors <math|Q<rsub|k>> for different tags coincide on a
  neighbourhood of the identity configuration. Hence the functions
  <math|\<cal-T\><rsup|H><rsub|k>> coincide near <math|0>. Near the identity,
  the frame and connector rules select their unique minimizers, so the tags
  do not affect the predictor. Local logarithms transfer this equality to
  arbitrary nearby configurations and then to the axis chart. <em|Lean:>
  <hlink|<verbatim|F04.prediction_germ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L36-L61>,
  <hlink|<verbatim|tested_germ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Choices.lean#L78-L86>.

  <strong|Lemma 4.9 (existence).> The gap makes the vertical Hessian at
  <math|0> injective, hence invertible in these finite-dimensional spaces.
  The analytic implicit function theorem, applied to
  <math|D<rsub|a>*\<cal-T\><rsup|H><rsub|k<rsub|0>><around|(|x,a|)>=0> for
  one tag <math|k<rsub|0>>, gives an analytic <math|\<rho\>> with
  <math|\<rho\><around|(|0|)>=0>. By Lemma 4.8 it is critical for every tag.
  <em|Lean:> <hlink|<verbatim|F04.invertible>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L32-L60>,
  <hlink|<verbatim|exists_branch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L62-L86>.

  <strong|Lemma 4.10 (test-pair identity).> Assume the tower identities and
  the second jet of III.6.1. Then for every <math|z=<around|(|y,b|)>> and
  coarse <math|x>,

  <\equation*>
    D<rsup|2>*\<cal-T\><rsup|H><rsub|k><around|(|0|)><around*|[|z,<around|(|x,<math-up|rel><rsub|H>x|)>|]>=<around|\<langle\>|d*y,M<rsub|C>*<space|0.17em>d*x|\<rangle\>>.
  </equation*>

  <em|Sketch:>

  <\itemize-minus>
    <item><math|s<around|(|x,<math-up|rel><rsub|H>x|)>=<wide|\<cal-W\>|^><rsub|H>*x>,
    since both sides vanish on tree bonds.

    <item>The identities of Ÿ2 (III.1) give
    <math|x-P*<wide|\<cal-W\>|^><rsub|H>*x=\<kappa\><rsup|-1>*K<rsub|C>*x>
    and <math|K<rsub|B>*<wide|\<cal-W\>|^><rsub|H>=P<rsup|\<top\>>*K<rsub|C>>.

    <item>So the left side equals <math|<around|\<langle\>|s<around|(|z|)>,P<rsup|\<top\>>*K<rsub|C>*x|\<rangle\>>+<around|\<langle\>|y-P*s<around|(|z|)>,K<rsub|C>*x|\<rangle\>>=<around|\<langle\>|y,K<rsub|C>*x|\<rangle\>>>.
  </itemize-minus>

  When <math|M<rsub|B>> is positive, the tower identities also imply that
  <math|A=\<cal-W\>*x> minimizes <math|<tfrac|1|2><around|\<langle\>|d*A,M<rsub|B>*d*A|\<rangle\>>+<tfrac|\<kappa\>|2><around|\||x-<wide|Q|\<bar\>>*A|\|><rsup|2>>,
  with minimum value <math|<tfrac|1|2><around|\<langle\>|d*x,M<rsub|C>*d*x|\<rangle\>>>.
  <em|Lean:> <hlink|<verbatim|F04.test_pair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04/Pairing.lean#L49-L66>.

  <strong|Lemma 4.11 (tangent).> Differentiating
  <math|D<rsub|a>*\<cal-T\><around|(|x,\<rho\><around|(|x|)>|)>=0> at
  <math|0> gives <math|D<rsup|2>*\<cal-T\><around|(|0|)><around|[|<around|(|x,D*\<rho\><around|(|0|)>*x|)>,<around|(|0,v|)>|]>=0>.
  Lemma 4.10 with <math|z=<around|(|0,v|)>>, together with the symmetry of
  <math|D<rsup|2>>, gives the same identity with
  <math|<math-up|rel><rsub|H>x> in place of <math|D*\<rho\><around|(|0|)>*x>.
  Subtracting and inverting the vertical Hessian gives
  <math|D*\<rho\><around|(|0|)>=<math-up|rel><rsub|H>>. <em|Lean:>
  <hlink|<verbatim|F04.tangent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L88-L126>.

  <strong|Lemma 4.12 (value).> Let <math|\<beta\><around|(|x|)>=<around|(|x,\<rho\><around|(|x|)>|)>>.
  Since <math|D*\<cal-T\><around|(|0|)>=0>,

  <\equation*>
    D<rsup|2>*<around|(|\<cal-T\>\<circ\>\<beta\>|)><around|(|0|)><around|[|x,x<rprime|'>|]>=D<rsup|2>*\<cal-T\><around|(|0|)><around|[|<around|(|x,<math-up|rel><rsub|H>x|)>,<around|(|x<rprime|'>,<math-up|rel><rsub|H>x<rprime|'>|)>|]>=<around|\<langle\>|d*x,M<rsub|C>*d*x<rprime|'>|\<rangle\>>,
  </equation*>

  by Lemma 4.10. This is III.6.4(iii). <em|Lean:>
  <hlink|<verbatim|F04.stationary_value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F04.lean#L128-L147>.

  <subsection|4.4 Independence of the forest
  (F05)><label|44-independence-of-the-forest-f05>

  <strong|Lemma 4.13 (change of forest is a gauge transformation).> For
  <math|<around|(|x,a|)>> near <math|0> define
  <math|<math-up|sw><around|(|x,a|)><rsub|e<rprime|'>>=log
  <around*|(|<wide|U|~><rsub|e<rprime|'>>*<space|0.17em>\<cal-R\><around|(|e<rsup|x>|)><rsub|e<rprime|'>><rsup|-1>|)>>
  for <math|e<rprime|'>\<in\>H<rprime|'><rsup|<math-up|fr>>>. Here
  <math|<wide|U|~>> is the gauge transform of
  <math|U<rsup|H><around|(|x,a|)>> into the gauge of <math|H<rprime|'>>, by a
  gauge function equal to <math|1> at the block roots. Then near <math|0>:

  <\itemize-minus>
    <item><math|U<rsup|H<rprime|'>><around|(|x,<math-up|sw><around|(|x,a|)>|)>=<wide|U|~>>;

    <item><math|\<cal-T\><rsup|H><rsub|k><around|(|x,a|)>=\<cal-T\><rsup|H<rprime|'>><rsub|k><around|(|x,<math-up|sw><around|(|x,a|)>|)>>;

    <item><math|<math-up|loop><rsub|W><around|(|U<rsup|H><around|(|x,a|)>|)>=<math-up|loop><rsub|W><around|(|U<rsup|H<rprime|'>><around|(|x,<math-up|sw><around|(|x,a|)>|)>|)>>.
  </itemize-minus>

  Gauge invariance holds for each term:

  <\itemize-minus>
    <item>the atoms are <math|<math-up|Ad>>-invariant;

    <item><math|\<ell\><rsub|W>> is <math|<math-up|Ad>>-covariant;

    <item>the price is a class function;

    <item>the predictor is invariant under gauge transformations trivial at
    the roots.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|F05.tested_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L87-L92>,
  <hlink|<verbatim|loop_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L94-L98>,
  <hlink|<verbatim|mainTerm_gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L55-L59>,
  <hlink|<verbatim|root_noise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Actions.lean#L66-L75>,
  <hlink|<verbatim|switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45>.

  <strong|Lemma 4.14 (the two graphs correspond).> Near <math|0>,
  <math|<math-up|sw><around|(|x,\<rho\><around|(|x|)>|)>=\<rho\><rprime|'><around|(|x|)>>.
  Indeed, <math|<math-up|sw><around|(|x,\<rho\><around|(|x|)>|)>> is a
  critical point of <math|\<cal-T\><rsup|H<rprime|'>><rsub|k><around|(|x,\<cdot\>|)>>,
  by the chain rule through the local inverse of
  <math|<math-up|sw><around|(|x,\<cdot\>|)>>, and both branches tend to
  <math|0>. Critical branches are unique near <math|0> when the vertical
  Hessian at <math|0> is non-degenerate: this is the inverse function theorem
  for <math|<around|(|x,a|)>\<mapsto\><around|(|x,D<rsub|a>*\<cal-T\><around|(|x,a|)>|)>>,
  using the gap of <math|H<rprime|'>>. With Lemma 4.13 this gives III.6.5(i).
  <em|Lean:> <hlink|<verbatim|F05.graph_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L37-L67>,
  <hlink|<verbatim|station_unique>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Calculus.lean#L112-L150>.

  <strong|Lemma 4.15 (Hessian determinants).> Write
  <math|<math-up|sw><around|(|x,\<cdot\>|)>=\<pi\><rsub|\<epsilon\>>\<circ\><math-up|mv><around|(|x,\<cdot\>|)>>,
  where <math|\<pi\><rsub|\<epsilon\>>> relabels coordinates along a
  bijection <math|\<epsilon\>:H<rsup|<math-up|fr>>\<to\>H<rprime|'><rsup|<math-up|fr>>>;
  the two forests have the same number of free bonds. At a critical point the
  Hessian pulls back by <math|D<rsub|a><math-up|mv>>, so near <math|0>

  <\equation*>
    det <math-up|Hess><rsub|a>\<cal-T\><rsup|H><rsub|k><around|(|x,\<rho\><around|(|x|)>|)>=<around*|(|det
    D<rsub|a><math-up|mv><around|(|x,\<rho\><around|(|x|)>|)>|)><rsup|2>*det
    <math-up|Hess><rsub|a>\<cal-T\><rsup|H<rprime|'>><rsub|k><around|(|x,\<rho\><rprime|'><around|(|x|)>|)>,
  </equation*>

  and the right-hand determinant is positive (by the gap). <em|Lean:>
  <hlink|<verbatim|F05.hessian_ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L118-L131>,
  <hlink|<verbatim|hessian_pos>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Graphs.lean#L75-L79>,
  <hlink|<verbatim|move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85>.

  <strong|Lemma 4.16 (Haar Jacobian identity).> Near <math|0>,

  <\equation*>
    <big|prod><rsub|e\<in\>H<rsup|<math-up|fr>>>J<rsub|<with|math-font|cal*|J>><around|(|a<rsub|e>|)>=<mid|\|>det
    D<rsub|a><math-up|mv><around|(|x,a|)><mid|\|><big|prod><rsub|e<rprime|'>\<in\>H<rprime|'><rsup|<math-up|fr>>>J<rsub|<with|math-font|cal*|J>><around|(|<math-up|sw><around|(|x,a|)><rsub|e<rprime|'>>|)>.
  </equation*>

  <em|Sketch:>

  <\itemize-minus>
    <item>By the defining property of <math|J<rsub|<with|math-font|cal*|J>>>
    and right invariance of Haar measure,
    <math|a\<mapsto\><around|(|e<rsup|a<rsub|e>>*\<cal-R\><around|(|e<rsup|x>|)><rsub|e>|)><rsub|e>>
    maps the density <math|<big|prod><rsub|e>s<rsub|<with|math-font|cal*|J>>*J<rsub|<with|math-font|cal*|J>><around|(|a<rsub|e>|)>*<space|0.17em>d*a<rsub|e>>,
    restricted to the chart, to product Haar measure restricted to the chart
    image in the slice of <math|H>.

    <item>The change of forest preserves product Haar measure (III.1).

    <item>By the change-of-variables formula, the two sides therefore have
    equal integrals over every small compact set.

    <item>The forests have the same number of free bonds, so the factors of
    the Haar scale cancel. Continuity and comparison over small closed balls
    give pointwise equality.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|F05.toll_switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Jacobian.lean#L129-L142>.

  <strong|Lemma 4.17 (cancellation).> If <math|B,j,k\<gtr\>0>,
  <math|A=d<rsup|2>*B> and <math|j=<around|\||d|\|>*k>, then <math|d\<ne\>0>,
  <math|A\<gtr\>0>, and <math|<tfrac|1|2>log A-log j=<tfrac|1|2>log B-log k>.
  With Lemmas 4.13\U4.16 and the equality of the loop terms, this gives
  III.6.5(ii) with constant <math|0>. <em|Lean:>
  <hlink|<verbatim|F05.same_thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05.lean#L42-L57>.

  <subsection|4.5 The volume-independent branch and its
  jets><label|45-the-volume-independent-branch-and-its-jets>

  <strong|Lemma 4.18 (Combes\UThomas bound).> Let <math|S> be a real
  symmetric matrix on a finite index set assigned to sites of a
  four-dimensional torus, with multiplicity at most <math|K<rsub|0>>. Suppose
  <math|a<rsub|0>,M\<gtr\>0>, <math|C<rsub|0>\<geqslant\>0>,
  <math|<around|\||S<rsub|i*j>|\|>\<leqslant\>C<rsub|0>*e<rsup|-a<rsub|0><math-up|dist><around|(|i,j|)>>>,
  and <math|S\<geqslant\>M*I>. Then

  <\equation*>
    <around|\||<around|(|S<rsup|-1>|)><rsub|i*j>|\|>\<leqslant\><frac|2|M>*e<rsup|-r<rsub|<math-up|CT>><math-up|dist><around|(|i,j|)>>,<space|2em>r<rsub|<math-up|CT>>=min
    <around*|(|<frac|a<rsub|0>|4>,<frac|M|2*<around|(|1+4*C<rsub|0>*K<rsub|0>*c*<around|(|a<rsub|0>/2|)>/a<rsub|0>|)>>|)>.
  </equation*>

  Here the site labels are understood in the distances, and

  <\equation*>
    c<around|(|\<alpha\>|)>=<frac|16\<cdot\>6!<space|0.17em>e<rsup|2*\<alpha\>>|\<alpha\><rsup|6>>,<space|2em><big|sum><rsub|y>e<rsup|-\<alpha\><math-up|dist><around|(|x,y|)>>\<leqslant\>c<around|(|\<alpha\>|)>*<space|1em><around|(|\<alpha\>\<gtr\>0|)>,
  </equation*>

  uniformly over the torus side. <em|Sketch:> Conjugate <math|S> by the
  diagonal weight <math|e<rsup|r<rsub|<math-up|CT>><math-up|dist><around|(|\<cdummy\>,j|)>>>.
  The difference has both absolute row and column sums at most <math|M/2>.
  Its quadratic form is therefore bounded by
  <math|<around|(|M/2|)><around|\<\|\|\>|v|\<\|\|\>><rsub|2><rsup|2>>, so the
  conjugated matrix retains coercivity <math|M/2>, although it need not be
  symmetric. Applying this inequality to the tilted <math|j>-th inverse
  column gives the displayed entry bound.

  <em|Lean:> <hlink|<verbatim|tiltedCharge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L157-L168>,
  <hlink|<verbatim|inverse_sealed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L171-L208>.

  <strong|Lemma 4.19 (uniform implicit function theorem; III.6.7(a)).> In the
  notation of III.6.7(a), set <math|D=K<rsub|0>*c<around|(|a<rsub|0>|)>> and

  <\equation*>
    \<Pi\>=1+<frac|4|m>*K<rsub|0>*c<around|(|r<rsub|<math-up|CT>>|)>,
  </equation*>

  where <math|r<rsub|<math-up|CT>>> is the rate of Lemma 4.18 with gap
  <math|M=m/2>. The radii may be chosen as

  <\equation*>
    <\aligned>
      <tformat|<table|<row|<cell|r<rsub|<math-up|safe>>>|<cell|=min
      <around*|(|<frac|r|2>,<frac|m|2*<around|(|1+C<rsub|0>*D<rsup|2>|)>>|)>,>>|<row|<cell|r<rsub|<math-up|zone>>>|<cell|=min
      <around*|(|r<rsub|<math-up|safe>>,<frac|1|4*\<Pi\>*<around|(|1+C<rsub|0>*D<rsup|2>|)>>|)>,>>|<row|<cell|r<rsub|<math-up|hor>>>|<cell|=min
      <around*|(|r<rsub|<math-up|zone>>,<frac|r<rsub|<math-up|zone>>|4*\<Pi\>*<around|(|1+C<rsub|0>*D|)>>|)>.>>>>
    </aligned>
  </equation*>

  <em|Sketch:> The third-derivative estimate bounds the change of a Hessian
  entry by <math|r<rsub|<math-up|safe>>*C<rsub|0>*D> times its spatial decay
  factor. Summing once more gives absolute row and column sums at most
  <math|r<rsub|<math-up|safe>>*C<rsub|0>*D<rsup|2>\<leqslant\>m/2>. Thus the
  vertical Hessian stays <math|\<geqslant\><around|(|m/2|)>*I>, and its
  inverse has sup-norm operator bound <math|\<Pi\>> throughout the closed
  safety ball. For <math|<around|\<\|\|\>|x|\<\|\|\>><rsub|\<infty\>>\<less\>r<rsub|<math-up|hor>>>,
  set <math|H<rsub|0>=D<rsup|2><rsub|\<tau\>*\<tau\>>*f<around|(|0|)>> and

  <\equation*>
    Y<around|(|v|)>=v-H<rsub|0><rsup|-1>*\<nabla\><rsub|\<tau\>>*f<around|(|x,v|)>.
  </equation*>

  On the closed ball of radius <math|r<rsub|<math-up|zone>>>,
  <math|<around|\<\|\|\>|D*Y|\<\|\|\>><rsub|\<infty\>\<to\>\<infty\>>\<leqslant\>\<Pi\>*r<rsub|<math-up|zone>>*C<rsub|0>*D<rsup|2>\<leqslant\>1/4>,
  while <math|<around|\<\|\|\>|Y<around|(|0|)>|\<\|\|\>><rsub|\<infty\>>\<leqslant\>\<Pi\><around|\<\|\|\>|x|\<\|\|\>><rsub|\<infty\>>*C<rsub|0>*D\<leqslant\>r<rsub|<math-up|zone>>/4>.
  Hence <math|Y> maps this ball into the ball of half the radius and has a
  unique fixed point. The analytic implicit function theorem at each fixed
  point, together with uniqueness, makes the resulting branch analytic at
  every allowed <math|x>. <em|Lean:> <hlink|<verbatim|Receipt.adjusted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L101-L176>,
  <hlink|<verbatim|Receipt.snaps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L62-L76>,
  <hlink|<verbatim|Receipt.priced_inverse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L80-L92>,
  <hlink|<verbatim|Receipt.throughout>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L179-L215>.

  <strong|Lemma 4.20 (the tested action satisfies III.6.7(a)).> Take the
  auxiliary constants of III.6.7(b). For every clip <math|p>, larger <math|S>
  with order <math|J> and kernel choices <math|K>, forest <math|H> and
  <math|W> with bounds <math|<around|(|p,\<mu\>,C,\<Lambda\>|)>>, the tested
  action in sup-norm colour coordinates satisfies:

  <\itemize-minus>
    <item>analyticity and localized derivatives of orders
    <math|1,\<ldots\>,n>, with width <math|\<mu\>/<around|(|8*<around|(|n+1|)><rsup|2>*<around|(|1+L|)>|)>>,
    on a ball whose radius is independent of <math|c>, <math|f> and <math|H>;

    <item>the multiplicity bound <math|8*dim \<frak-g\>>;

    <item>tag-independence on the whole ball and zero vertical gradient at
    <math|0>;

    <item>the vertical gap
  </itemize-minus>

  <\equation*>
    m=<frac|min <around|(|c<rsub|p>/<around|\||\<cal-S\>|\|>,\<kappa\>|)>|1+\<beta\><around|(|L,\<ell\><rsub|L>|)>+2*L<rsup|4>>.
  </equation*>

  This is a coercivity estimate for the same vertical Hessian, with no bed or
  attachment hypothesis. In it:

  <\itemize-minus>
    <item>the constant of E02 is replaced by an explicit <math|L>-dependent
    constant <math|\<ell\><rsub|L>>, obtained by proving the shell comparison
    directly (<hlink|<verbatim|link_charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/LCharge.lean#L145-L251>);

    <item>the floor <math|a> is replaced by
    <math|c<rsub|p>/<around|\||\<cal-S\>|\|>>, since the vertical Hessian is
    <math|\<geqslant\><around|(|c<rsub|p>/<around|\||\<cal-S\>|\|>|)>\|d*y\|<rsup|2>+\<kappa\>*<around|\||P*y|\|><rsup|2>>
    (<hlink|<verbatim|wallet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L110-L130>).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Before.receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L196-L211>,
  <hlink|<verbatim|symbolic_gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L137-L166>,
  <hlink|<verbatim|zeroGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/HessCost.lean#L132-L133>,
  <hlink|<verbatim|Before.full_pack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L216-L239>.
  <em|(proof read for the gap and the assembly; the derivative bounds of the
  action and the direct shell estimate: statement only)>

  <strong|Lemma 4.21 (derivatives of the inverse and of <math|log det>;
  III.6.8).> Let <math|M<around|(|y|)>> be a finite matrix function analytic
  at <math|y<rsub|0>>, with <math|M<around|(|y<rsub|0>|)>> invertible. Assign
  its matrix and variable indices to lattice sites, with matrix-index
  multiplicity at most <math|K<rsub|0>>. Suppose its coefficient derivatives
  through order <math|N> have the localization bounds of III.6.8 at rate
  <math|a<rsub|0>\<gtr\>0>, and <math|M<around|(|y<rsub|0>|)><rsup|-1>> has
  exponentially decaying entries at that rate. Then the derivatives of
  <math|M<rsup|-1>> through order <math|N> are localized, with rates and
  constants defined recursively from these bounds and <math|K<rsub|0>>.
  <em|Sketch:> Differentiate

  <\equation*>
    D<around|(|M<rsup|-1>|)>=-M<rsup|-1>*<around|(|D*M|)>*M<rsup|-1>.
  </equation*>

  The product rule reduces each new order to lower inverse derivatives and
  derivatives of <math|M>. Exponential convolution bounds control the
  internal index sums; each multiplication reduces the available rate. For a
  positive determinant, use <math|D*log det
  M=<math-up|tr><around|(|M<rsup|-1>*D*M|)>> and repeat the same estimates.
  Under the coercivity hypotheses of III.6.8 this applies to every principal
  submatrix with every nonnegative shift. Composing with the stationary graph
  gives the estimates along the branch; the joint action has order
  <math|N+3>, leaving order <math|N+1> after taking two Hessian derivatives.

  <em|Lean:> <hlink|<verbatim|inverse_lines>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Lines.lean#L56-L108>,
  <hlink|<verbatim|establish>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L88-L108>,
  <hlink|<verbatim|along_block>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L56-L59>,
  <hlink|<verbatim|Counter.background>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L95-L112>.
  <em|(proof read for the inverse induction and the assembly; the convolution
  and composition estimates: statement only)>

  <subsection|4.6 One level of the iteration><label|46-one-level-of-the-iteration>

  <strong|Lemma 4.22 (gap quote and branch selection).> Fix a stage index
  <math|j>. Apply III.6.6 with the block factor and floor bound assigned to
  that stage. This gives post-<math|L> gap constants <math|\<eta\><rsub|j>>
  (<hlink|<verbatim|Iteration.post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Post.lean#L99-L106>).
  At level <math|m>, use <math|\<eta\><rsub|J*<around|(|m+1|)>>>. Every
  funded <math|T> at level <math|m+1> then has, for each period and forest, a
  branch satisfying III.6.9(i) (<hlink|<verbatim|select>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L50-L55>).

  <strong|Lemma 4.23 (the glued datum is funded).> The fresh-data hypotheses
  supply fresh cubic and quartic atoms <math|t,v> and fresh loop atoms
  <math|l>. Let <math|R> be the bundle on the bed <math|M<rsub|N,m>> with:

  <\itemize-minus>
    <item>cubic atoms: <math|t> joined with the transport of the cubic atoms
    of <math|T> through the towers ("inherited");

    <item>quartic atoms: <math|v> joined with the inherited quartic atoms;

    <item>loop atoms: <math|l> joined with the inherited loop atoms.
  </itemize-minus>

  Then <math|R> is funded at level <math|m>. The inherited cubic and quartic
  atoms are charged with relative factors <math|L<rsup|-2>> and
  <math|L<rsup|-4>>, and the resulting charges stay within <math|6> times the
  level price. <em|Lean:> <hlink|<verbatim|resume>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L70-L112>.
  <em|(proof read for the assembly; the inherited-atom estimates: statement
  only)>

  <strong|Lemma 4.24 (the move).> The fresh one-loop data supply
  <math|<around|\||\<alpha\>+\<kappa\><rsub|G>*log
  L|\|>\<leqslant\>s<rsub|j,k>>, where <math|s<rsub|j,k>> is the prescribed
  slope bound for the two stage indices. The schedule gives
  <math|s<rsub|j,k>+1\<leqslant\><math-up|drift><rsub|m+1>>, proving (ii).
  The matching (iii) is proved in three steps:

  <\itemize-minus>
    <item>On one reference forest per period, orders <math|\<leqslant\>2>
    follow from III.6.4(iii) and the attachment of <math|R> to
    <math|M<rsub|N,m>> (<hlink|<verbatim|Calibration.lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Calibration.lean#L66-L94>).

    <item>Orders <math|3,4> split into the inherited part, matched through
    the towers, and the fresh part, supplied by the fresh-data hypotheses.

    <item>Tag-independence and III.6.5 transfer the match to every tag and
    forest (<hlink|<verbatim|all_forests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L80-L89>).
  </itemize-minus>

  The bound (iv) is proved on the reference forest from the fresh determinant
  hypothesis, and transferred to every forest by the equality of thermal
  functions (<hlink|<verbatim|transplant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Determinant.lean#L91-L103>).
  <em|Lean:> <hlink|<verbatim|extend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L115-L150>.
  <em|(proof read for the assembly; inherited-atom matching: statement only)>

  <subsection|4.7 Remaining packages (statements
  only)><label|47-remaining-packages-statements-only>

  <\itemize-minus>
    <item><em|F06\UF09.>

    <\itemize-minus>
      <item>F06: fix a strip bound <math|A>, a positive margin <math|v> and
      strip width <math|\<eta\>\<gtr\>0>. A real translation-invariant
      <math|3>-form kernel <math|Q>, Hermitian on real Fourier phases and
      bounded below by <math|v> on the image of the <math|2>-form symbol, can
      be replaced by <math|P> bounded above and below on all <math|3>-forms.
      The replacement preserves <math|d<rsub|2><rsup|\<top\>><around|(|\<cdummy\>|)>*d<rsub|2>>
      on every torus. Its positive lower bound, upper bound and strip width
      depend only on <math|<around|(|A,v,\<eta\>|)>>.

      <item>F07: with analogous uniform positivity and strip bounds, a real
      kernel has a symmetric positive square root on every torus, with strip
      width and bounds depending only on the input bounds and the finite
      component space.

      <item>F08: fix the two clips, penalty, bed strip bounds, a
      <math|3>-form kernel strip bound and a derivative order. Towers whose
      first two components have the prescribed derivative bounds can be
      completed by replacing the remaining components. The completed towers
      satisfy the replacement identities and uniform strip bounds chosen
      before the odd factor <math|L>.

      <item>F09: the replacement identities, floors of the two beds, diagonal
      identities for the original towers and a square-root factorization of
      the defect imply the stack identities for the completed towers.
    </itemize-minus>

    <item><em|Comparison of two tori> (<hlink|<verbatim|Loom.spinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Loom.lean#L65-L104>).
    Let <math|\<pi\>:\<beta\>\<to\>\<alpha\>> have exactly <math|M> elements
    in every fibre. Assign the indices in <math|\<beta\>> to torus sites with
    multiplicity at most <math|K<rsub|0>>, and suppose distinct elements of a
    fibre are separated by at least <math|N>. Let <math|F,F<rprime|'>> be
    matrix functions on a real normed space, analytic at <math|0>, with
    invertible values there and
  </itemize-minus>

  <\equation*>
    F<around|(|x|)>*E=E*F<rprime|'><around|(|x|)><space|1em><text|near
    >0,<space|2em>E<rsub|i,j>=\<b-1\><rsub|\<pi\><around|(|i|)>=j>.
  </equation*>

  Let <math|y,z> be analytic scalar functions with <math|y=M*z> near
  <math|0>. Fix two directions. Suppose the entries of
  <math|F<around|(|0|)><rsup|-1>>, the two first variations and the mixed
  second variation are bounded by <math|B<rsub|0>*e<rsup|-d<space|0.17em><math-up|dist>>>,
  <math|T<rsub|0>*e<rsup|-d<space|0.17em><math-up|dist>>> and
  <math|Q<rsub|0>*e<rsup|-d<space|0.17em><math-up|dist>>>, respectively,
  where <math|d\<gtr\>0> and <math|B<rsub|0>,T<rsub|0>,Q<rsub|0>\<geqslant\>0>.
  The mixed second derivatives of <math|<tfrac|1|2>log\|det F\|-y> and
  <math|M*<around|(|<tfrac|1|2>log\|det F<rprime|'>\|-z|)>> then differ by at
  most

  <\equation*>
    <around|\||\<beta\>|\|>*<space|0.17em>C<around|(|K<rsub|0>,T<rsub|0>,Q<rsub|0>,B<rsub|0>,d|)>*e<rsup|-d*N/8>.
  </equation*>

  For positive determinants these are the thermal determinant terms. The
  proof expands the second derivative into two traces. Compatibility
  identifies the small-system trace with sums over covering fibres; the error
  consists of off-diagonal entries between distinct elements of a fibre,
  whose separation is at least <math|N>.

  <\itemize-minus>
    <item><em|Primary integral.> This package contains:

    <\itemize-minus>
      <item>Newton remainder bounds from bounded finite differences;

      <item>vanishing of a symmetric tensor on lists of pure directions of a
      given total engineering degree when its polynomial component of that
      degree vanishes;

      <item>under strip bounds for the tower kernel, comparable probe
      amplitudes, equality of the logarithmic probe germs within radius
      <math|\<chi\>>, and derivative bounds <math|B> on the true path, a
      bound <math|D*<around|(|1+B|)>*e<rsup|-\<sigma\>*\<chi\>/2>> for the
      difference of the true and forecast probe jets
      (<hlink|<verbatim|Ramble.billFor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/PRIMARY_INTEGRAL_295/Reaches.lean#L74-L86>);

      <item>triangular structure of the primary transition matrix.
    </itemize-minus>

    These comparisons enter the repeatable nonlinear step in III.10.

    <item><em|Atom regularity.> Suppose <math|t\<geqslant\>0>, every
    plaquette incident to <math|Y> has chord at most <math|t>, the halo of
    radius <math|q+1> about <math|o> lies in <math|Y>, and
    <math|2*<around|(|q+1|)>\<less\>n>. There is a gauge <math|g> such that
    every link <math|b> with <math|<math-up|dist><around|(|o,b.*1|)>\<leqslant\>q>
    satisfies <math|<math-up|chord><around|(|<around|(|g\<cdot\>V|)><rsub|b>|)>\<leqslant\>4*t*<around|(|1+<math-up|dist><around|(|o,b.*1|)>|)>>.

    <item><em|ROTATIONS, WARD_BIN.> This material is the conclusion of the
    rotation theorem (line-sum property and vanishing of the local rotation
    charge on collinear points) and its chain: moment bounds for
    reflection-positive spectral measures, decay of the Ward integrand, and
    the flux identity. It belongs to VI.1.
  </itemize-minus>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  The main estimate is the volume-independent lower bound on the vertical
  Hessian. Curvature alone leaves gauge and flat directions; the forest
  condition and predictor penalty together control every free link. The
  denominator of the gap contains a term proportional to
  <math|C<rsub|<math-up|E02>><rsup|2>*L<rsup|4><around|\||X|\|><rsup|2>>, and
  <math|<around|\||X|\|>=<around|(|2*<around|(|J+7|)>*L+1|)><rsup|4>>. The
  gap is chosen after <math|L>; no lower bound uniform in <math|L> is
  asserted.

  A spectral gap gives an <math|\<ell\><rsup|2>> inverse bound. To obtain a
  sup-norm radius independent of the volume, one also needs the exponential
  entry bounds and their summability. The uniform construction uses a direct
  shell estimate and the positive Wilson coefficient, so it needs no bed or
  attachment hypothesis. It reuses the linearization and counting estimates
  of F01, while supplying its own gap and radii.

  Forest independence requires both the stationary change-of-coordinates
  formula for the Hessian and preservation of product Haar measure. Their
  Jacobians cancel exactly, including the Haar normalization scales. The
  proof needs only the gap for the target forest. Other unused hypotheses are
  the coarse floor in F04, the identity base value in F02, and the size
  clauses of \Plarger\Q in F03\UF05.

  The conclusions concern a branch near the identity and uniqueness in a
  specified sup-ball. Global constrained minimization is not asserted. The
  one-loop coefficient and the classical remainders remain inputs to the
  iteration through the fresh-data hypotheses in III.6.9.

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|<math|S>,
  <math|\<kappa\>>, <math|K>, <math|J>, <math|L>>|<cell|<hlink|<verbatim|StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22-L25>,
  <hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>>|<cell|step
  datum; penalty; kernel choices; order; block
  factor>>|<row|<cell|larger>|<cell|<hlink|<verbatim|Bid.Larger>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L64>>|<cell|well
  posed, <math|100*R<rsub|S>\<leqslant\>f>,
  <math|c\<gtr\>1>>>|<row|<cell|<math|Q<rsub|k>>, <math|P>,
  <math|<wide|Q|\<bar\>>>>|<cell|<verbatim|prediction>, <verbatim|probe>,
  <verbatim|mean>>|<cell|predictor; its linearization; linearized block
  average>>|<row|<cell|<math|H>, <math|H<rsup|<math-up|fr>>>>|<cell|<hlink|<verbatim|Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24-L29>,
  <verbatim|Free>>|<cell|forest gauge; free
  bonds>>|<row|<cell|<math|\<cal-R\>>, <math|\<iota\>>>|<cell|<hlink|<verbatim|replica>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35-L36>,
  <hlink|<verbatim|linearCopy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L38-L39>>|<cell|coarse
  field copied onto crossing fine bonds>>|<row|<cell|<math|U<rsup|H><around|(|x,a|)>>,
  <math|a>>|<cell|<hlink|<verbatim|lifting>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L60-L61>,
  <hlink|<verbatim|AxisChart>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L56>>|<cell|fine
  field in the axis chart>>|<row|<cell|<math|s>,
  <math|x-P*s>>|<cell|<hlink|<verbatim|stretch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L34-L36>,
  <hlink|<verbatim|crop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L39>,
  <hlink|<verbatim|bills>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L38>>|<cell|linearized
  fine field; linearized penalty argument>>|<row|<cell|<math|W>, <math|p>,
  <math|c<rsub|p>>>|<cell|<hlink|<verbatim|PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150-L154>,
  <hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>>|<cell|path
  datum (row series, loop/cubic/quartic atoms); clip; Wilson
  coefficient>>|<row|<cell|<math|\<cal-M\><rsub|p><around|(|W;\<cdot\>|)>>,
  <math|\<cal-M\><rsup|<around|(|2|)>>>>|<cell|<hlink|<verbatim|mainTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L27-L28>,
  <hlink|<verbatim|secondTerm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L30>>|<cell|symmetrized
  main term; Wilson-plus-row-square term>>|<row|<cell|<math|\<cal-T\><rsup|H><rsub|k>>>|<cell|<hlink|<verbatim|tested>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L81-L84>,
  <hlink|<verbatim|noiseTaylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L78-L79>>|<cell|tested
  action; penalty term>>|<row|<cell|<math|B>, <math|M<rsub|B>>,
  <math|R<rsub|B>>, <math|K<rsub|B>>>|<cell|<hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>,
  <hlink|<verbatim|K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>>|<cell|bed;
  metric; roots; <math|d<rsup|\<top\>>*M<rsub|B>*d>>>|<row|<cell|<math|<around|\<langle\>|d*A,M<rsub|B>*<space|0.17em>d*A<rprime|'>|\<rangle\>>>>|<cell|<hlink|<verbatim|gaugeFiscal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L31-L32>>|<cell|quadratic
  form of the bed>>|<row|<cell|floor, attached,
  sworn>|<cell|<hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>,
  <hlink|<verbatim|Attached>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L44-L46>,
  <hlink|<verbatim|Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>>|<cell|ellipticity
  of the bed; <math|\<ell\><rsub|W>> linearizes to
  <math|R<rsub|B>*<space|0.17em>d>; symmetry
  invariance>>|<row|<cell|<math|T>, <math|\<cal-W\>>,
  <math|<wide|\<cal-W\>|^><rsub|H>>>|<cell|<hlink|<verbatim|Towers.Diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86>,
  <hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>,
  <hlink|<verbatim|extracted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L26-L27>>|<cell|towers;
  linear background map; its forest-gauge
  version>>|<row|<cell|<math|<math-up|rel><rsub|H>>>|<cell|<hlink|<verbatim|relative>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L93-L95>,
  <hlink|<verbatim|Guessed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L97-L98>>|<cell|linear
  background field in chart coordinates>>|<row|<cell|critical branch
  <math|\<rho\>>>|<cell|<hlink|<verbatim|Critical>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L88-L91>>|<cell|background
  field>>|<row|<cell|gap <math|\<eta\>>>|<cell|<hlink|<verbatim|PriceGap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L100-L101>>|<cell|lower
  bound of the vertical Hessian at <math|0>>>|<row|<cell|second jet; value
  jet>|<cell|<hlink|<verbatim|Comptroller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L42-L45>,
  <hlink|<verbatim|HeatG>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L83-L84>,
  <hlink|<verbatim|SameJet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L105-L106>>|<cell|III.6.1;
  III.6.4(iii); equality of <math|j>-th derivatives>>|<row|<cell|<math|J<rsub|<with|math-font|cal*|J>>>>|<cell|<hlink|<verbatim|ChartRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23-L26>,
  <hlink|<verbatim|LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28-L38>>|<cell|Haar
  density in exponential coordinates>>|<row|<cell|<math|\<Theta\><rsup|H><rsub|k>>>|<cell|<hlink|<verbatim|thermal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L46-L49>,
  <hlink|<verbatim|hessian>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L42-L44>>|<cell|thermal
  function; Hessian matrix in the colour basis>>|<row|<cell|<math|<math-up|sw>>,
  <math|<math-up|mv>>>|<cell|<hlink|<verbatim|switch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Transport.lean#L44-L45>,
  <hlink|<verbatim|move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F05/Reindex.lean#L84-L85>>|<cell|chart
  change between forests>>|<row|<cell|localized derivatives; localized
  matrix>|<cell|<hlink|<verbatim|Scatter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Scatter.lean#L68-L69>,
  <hlink|<verbatim|Sealed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Resolvent.lean#L41>,
  <verbatim|Cable>>|<cell|exponential decay of entries and
  derivatives>>|<row|<cell|hypotheses of III.6.7(a)>|<cell|<hlink|<verbatim|Receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/ImplicitRadius.lean#L24-L33>>|<cell|analytic,
  localized, gapped, critical at <math|0>>>|<row|<cell|auxiliary constants
  chosen before <math|L>>|<cell|<hlink|<verbatim|Before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STATIONARY_UNIFORM/Paths.lean#L142-L158>>|<cell|radii
  and costs of the uniform layer>>|<row|<cell|block package; jet
  service>|<cell|<hlink|<verbatim|BlockPack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/Pack.lean#L65-L84>,
  <hlink|<verbatim|Counter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Planned/STATIONARY_JET_PORT/InUse.lean#L75-L88>>|<cell|III.6.8>>|<row|<cell|fresh-data
  hypotheses>|<cell|<hlink|<verbatim|Rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96>>|<cell|cutoff
  atoms, fresh classical remainders and one-loop matching>>|<row|<cell|funded
  datum; move>|<cell|<hlink|<verbatim|Work
  item>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L35-L39>,
  <hlink|<verbatim|Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Mechanism.lean#L26-L33>,
  <hlink|<verbatim|OnShell>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L41-L45>>|<cell|III.6.9>>>>>

  "Price", "bill", "work item", "receipt", "toll" and "cost" are numerical
  bounds and their bookkeeping; they have no economic meaning.

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Fresh classical and one-loop inputs.> Proposition III.6.9
    is conditional on <hlink|<verbatim|Rates>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Gates.lean#L79-L96>.
    The adapter <hlink|<verbatim|IterationRecipe.stocked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L102-L112>
    supplies the cutoff atoms and retains the classical and quantum matching
    assumptions from <hlink|<verbatim|Heating>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/ITERATION_RECIPE_PRODUCER/Crown.lean#L83-L97>;
    it does not discharge those assumptions. Their discharge in the main
    construction remains unverified here.

    <item><strong|Small-field domains.> The comparison between the
    componentwise radii in III.6.7\UIII.6.8 and the small-field thresholds
    used downstream remains unverified. The relevant branch and derivative
    interfaces are linked in III.6.7\UIII.6.8.

    <item><strong|Iteration over all levels.> The induction beyond one step
    is in <hlink|<verbatim|Iteration.sweep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/ITERATION_NO_LOSS/Planned.lean#L18-L35>
    and <hlink|<verbatim|Luna.uniformZero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Luna/Table.lean#L166-L172>
    (III.12). Their proofs are outside this verification.

    <item><strong|Supporting proofs not checked in full.> The remaining
    unread supporting proofs are the metric/path-limit estimates identified
    after Lemma 4.3; the direct shell and action-derivative estimates used in
    Lemma 4.20; the convolution and graph-composition estimates used in Lemma
    4.21; and the inherited-atom matching and bounds in Lemmas 4.23\U4.24.
    F06\UF09 and the primary-integral, atom-regularity, rotation and Ward
    packages are represented by their statements only. The period-comparison
    trace argument was checked; its geometric realization for the actual
    Hessians was not.

    <item><strong|Attached packages.> The primary-integral package feeds the
    repeatable step in III.10; the rotation and Ward material belongs with
    VI.1. The application of the period comparison in
    <hlink|<verbatim|Fresco.subscribed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/Fresco.lean#L98-L148>
    remains unverified here. The size figures in the header are the inherited
    dependency-closure counts; they have not been recounted.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.5 Cluster expansion of the polymer
  gas (notes)|III-5.tm>|<hlink|Part III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-6.tm>|<hlink|III.7 Matching the Wilson energy to
  fourth order (notes) \<rightarrow\>|III-7.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.6. The stationary branch: background field of
    the effective action \V detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|9>>
    <associate|3-strategy|<tuple|3|11>>
    <associate|4-steps|<tuple|4|11>>
    <associate|41-the-second-order-jet-f02-f03|<tuple|4.1|12>>
    <associate|42-the-gap-f01|<tuple|4.2|13>>
    <associate|43-the-branch-f04|<tuple|4.3|13>>
    <associate|44-independence-of-the-forest-f05|<tuple|4.4|14>>
    <associate|45-the-volume-independent-branch-and-its-jets|<tuple|4.5|15>>
    <associate|46-one-level-of-the-iteration|<tuple|4.6|17>>
    <associate|47-remaining-packages-statements-only|<tuple|4.7|18>>
    <associate|5-where-the-difficulty-lies|<tuple|5|19>>
    <associate|6-notation|<tuple|6|20>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|17>>
    <associate|auto-11|<tuple|4.7|18>>
    <associate|auto-12|<tuple|5|19>>
    <associate|auto-13|<tuple|6|20>>
    <associate|auto-14|<tuple|7|21>>
    <associate|auto-2|<tuple|2|9>>
    <associate|auto-3|<tuple|3|11>>
    <associate|auto-4|<tuple|4|11>>
    <associate|auto-5|<tuple|4.1|12>>
    <associate|auto-6|<tuple|4.2|13>>
    <associate|auto-7|<tuple|4.3|13>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|iii6-the-stationary-branch-background-field-of-the-effective-action--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 The second-order jet (F02, F03)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 The gap (F01)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 The branch (F04)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Independence of the forest (F05)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The volume-independent branch and its
      jets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 One level of the iteration
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 Remaining packages (statements only)
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