<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.2 Choosing the constants: the order
  of choice and the RG schedule (notes)|III-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-3.tm>|<hlink|III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law (notes) \<rightarrow\>|III-4.tm>>

  <ym-title|III.3. Free lattice kernels and covariances \V detailed
  notes><label|iii3-free-lattice-kernels-and-covariances--detailed-notes>

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

    <with|par-left|1tab|4.1 Filters and histories
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Explicit metric data
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Transfer kernels of one flight
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 The defect and the amendment
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The catalogue
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 Along a schedule: pre-repair, repair, output
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|4.7 All tori <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|4.8 Free covariance of the curvature (III.3.6)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|4.9 Calculus lemmas (III.3.7)
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|4.10 Auxiliary results
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.3: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-3.tm>.
  </quotation>

  <hlink|Unit page|../units/III-3.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:> <hlink|<verbatim|YM/Next/FREE_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS>
  (5,450 lines), <hlink|<verbatim|YM/MultiNext/SIGNED_SOURCE_CONTINUATION/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION>
  (1,674), <hlink|<verbatim|YM/Further/FREE_COVARIANCE_KP/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP>
  (924), <hlink|<verbatim|YM/UVNext/PRICED_KERNELS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS>
  (533), <hlink|<verbatim|YM/Further/CORRECTED_LIFT_COEFFICIENTS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS>
  (248), <hlink|<verbatim|YM/Push/CUTOFF_PROJECTORS/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS>
  (139), <hlink|<verbatim|YM/ProofPorts/GRID_RENEWED_RESERVES/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES>
  (30). <strong|Size:> 8,998 lines in the main-theorem closure.

  <strong|Conventions.>

  <\itemize-minus>
    <item><strong|Tori and forms.> <math|\<Lambda\><rsub|n>=<around|(|\<bbb-Z\>/n*\<bbb-Z\>|)><rsup|4>>,
    <math|n\<geqslant\>1>. <math|\<Omega\><rsup|r><around|(|\<Lambda\><rsub|n>|)>>
    is the space of real <math|r>-cochains, with the counting inner product.
    <math|d<rsub|r>:\<Omega\><rsup|r>\<to\>\<Omega\><rsup|r+1>> is the
    exterior derivative, and <math|d=d<rsub|1>>. <math|X<rsup|\<ast\>>>
    denotes the transpose on real cochains and the Hermitian adjoint of a
    symbol at real momentum. Displacements use
    <math|<around|\||y|\|><rsub|1>>; real momenta use the Euclidean norm
    <math|<around|\||p|\|>>.

    <item><strong|Levels.> In mesh <math|N> the levels are
    <math|i=N,\<ldots\>,0>. Level <math|N> is the bare lattice. Step
    <math|i\<less\>N> maps level <math|i+1> (fine torus
    <math|\<Lambda\><rsub|f>>) to level <math|i> (coarse torus
    <math|\<Lambda\><rsub|c>>), with <math|f=c*L<rsub|i>> and
    <math|L<rsub|i>\<geqslant\>3> odd. Level <math|i> has a stage index
    <math|J<around|(|i|)>\<geqslant\>4>, and
    <math|J<around|(|i|)>\<leqslant\>J*<around|(|i+1|)>\<leqslant\>J<around|(|i|)>+1>.

    <item><strong|Kernels.> A <em|kernel> is a map
    <math|R:\<bbb-Z\><rsup|4>\<to\><math-up|Hom><around|(|\<bbb-R\><rsup|\<beta\>>,\<bbb-R\><rsup|\<alpha\>>|)>>,
    where <math|\<alpha\>,\<beta\>> are sets of face types. It acts on every
    torus by periodisation: <math|<around|(|R<rsub|n>*\<omega\>|)><around|(|x|)>=<big|sum><rsub|y\<in\>\<bbb-Z\><rsup|4>>R<around|(|y|)>*<space|0.17em>\<omega\>*<around|(|x+y|)>>.
    Its symbol is <math|<wide|R|^><around|(|p|)>=<big|sum><rsub|y>R<around|(|y|)>*e<rsup|i*p\<cdot\>y>>.

    <item><strong|Cross kernels.> A <em|cross kernel> of block size <math|L>
    also carries a fine residue <math|r\<in\><around|(|\<bbb-Z\>/L|)><rsup|4>>
    in its row index. It maps cochains on <math|\<Lambda\><rsub|c>> to
    cochains on <math|\<Lambda\><rsub|c*L>>, for every <math|c>. Its
    displacements are measured on the coarse lattice.

    <item><strong|Strip bound.> <math|R\<in\>\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>>
    means <math|<big|sum><rsub|y>e<rsup|\<alpha\><around|\||y|\|><rsub|1>><around|\||R<rsub|a*b><around|(|y|)>|\|>\<leqslant\>\<Omega\>>
    for every entry. This implies that <math|<wide|R|^>> is analytic and
    bounded on <math|<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<less\>\<alpha\>>.
    Conversely, a bounded periodic analytic symbol has such a weighted
    coefficient bound on each narrower strip.

    <item><strong|Aliases and lattice momenta.> For a coarse momentum
    <math|p>, the fine aliases are <math|q<rsub|\<ell\>>=<around|(|p+2*\<pi\>*\<ell\>|)>/L>,
    <math|\<ell\>\<in\><around|(|\<bbb-Z\>/L|)><rsup|4>> (centred
    representatives). <math|\<tau\><around|(|p|)>=<around|(|e<rsup|i*p<rsub|a>>-1|)><rsub|a=1><rsup|4>>
    is the lattice momentum, and <math|\<sigma\><rsub|r><around|(|p|)>> is
    the symbol of <math|d<rsub|r>>, so <math|\<sigma\><rsub|0>=\<tau\>>.

    <item><strong|Complex cubes.> Write <math|\<cal-C\><rsub|\<theta\>>=<around|{|p\<in\>\<bbb-C\><rsup|4>:<around|\||<math-up|Re><space|0.17em>p<rsub|a>|\|>\<less\>\<pi\>+\<theta\>,<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<less\>\<theta\>|}>>
    and <math|\<cal-C\><rsub|\<theta\>><rsup|\<bbb-R\>>=\<cal-C\><rsub|\<theta\>>\<cap\>\<bbb-R\><rsup|4>>.
    Absolute squares in the real-momentum formulas are continued
    holomorphically as <math|g<around|(|p|)>*g*<around|(|-p|)>> for
    real-coefficient filters, and <math|<around|\||\<tau\><around|(|p|)>|\|><rsup|2>>
    as <math|<big|sum><rsub|a><around|(|e<rsup|i*p<rsub|a>>-1|)>*<around|(|e<rsup|-i*p<rsub|a>>-1|)>>.

    <item><strong|Constants from the kernel choice.> <math|\<kappa\>\<gtr\>0>
    is the penalty of the kernel choice <math|K> (the number <math|b> of the
    main theorem). <math|c<rsub|i>\<gtr\>0> is the direct coefficient of the
    clip of level <math|i>, that is, the coefficient of the bare plaquette
    term in the quadratic part of the action.
  </itemize-minus>

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  The unit computes the Gaussian part of the block-spin step of III.1 in
  closed form, for every history of steps. It proves three things about it:

  <\itemize-minus>
    <item>exact algebraic identities on every torus, giving an orthogonal
    splitting of the quadratic form;

    <item>exponential decay, uniform in the block sizes, history length and
    torus, with constants fixed by the kernel choice and stage index, and,
    after repair, by the sheet's direct clip coefficients;

    <item>uniform ellipticity and hypercubic symmetry of the quadratic forms.
  </itemize-minus>

  The constants are fixed before the block sizes (Proposition III.3.1).
  Positivity of the rolled kernel requires the lower bound
  <math|L\<geqslant\>b<rsub|j>>.

  The package also contains:

  <\itemize-minus>
    <item>the free covariance of the curvature and its comparison with the
    continuum (III.3.6, used in III.11);

    <item>calculus lemmas used in the nonlinear step (III.3.7, used in III.10
    and III.2).
  </itemize-minus>

  <strong|The identities of one step.> Fix a step with tori
  <math|\<Lambda\><rsub|f>,\<Lambda\><rsub|c>>, <math|f=c*L>. Let
  <math|Q:\<Omega\><rsup|1><around|(|\<Lambda\><rsub|f>|)>\<to\>\<Omega\><rsup|1><around|(|\<Lambda\><rsub|c>|)>>
  be the linearised block average of III.1: a weighted average, over a
  <math|J>-fold smoothing patch, of line integrals of the fine 1-form along
  <math|L>-link paths.

  <em|Metric data> on a level is a quintuple
  <math|\<cal-B\>=<around|(|D,D<rsup|-1>,H,H<rsup|-1>,R|)>> of kernels on
  2-forms: a diagonal multiplier, its inverse, a metric, its inverse, and a
  root. With the direct coefficient <math|c> of the level's clip, set

  <\equation*>
    V=<around|(|<sqrt|c>*<space|0.17em>1,<space|0.17em>R|)>:\<Omega\><rsup|2>\<to\>\<Omega\><rsup|2>\<oplus\>\<Omega\><rsup|2>.
  </equation*>

  Then <math|V<rsup|\<ast\>>*V=c*<space|0.17em>1+R<rsup|\<ast\>>*R=H> and
  <math|<around|\<langle\>|d*A,H*<space|0.17em>d*A|\<rangle\>>=<around|\||V*<space|0.17em>d*A|\|><rsup|2>>.

  <em|Transfer kernels> are <math|\<cal-U\>=<around|(|W,T,M<rsub|f>,M<rsub|n>,O|)>>
  with:

  <\itemize-minus>
    <item><math|W:\<Omega\><rsup|1><around|(|\<Lambda\><rsub|c>|)>\<to\>\<Omega\><rsup|1><around|(|\<Lambda\><rsub|f>|)>>
    and <math|T:\<Omega\><rsup|2><around|(|\<Lambda\><rsub|c>|)>\<to\>\<Omega\><rsup|2><around|(|\<Lambda\><rsub|f>|)>>
    (cross kernels);

    <item><math|M<rsub|f>:<around|(|\<Omega\><rsup|2>|)><rsup|\<oplus\>2><around|(|\<Lambda\><rsub|c>|)>\<to\><around|(|\<Omega\><rsup|2>|)><rsup|\<oplus\>2><around|(|\<Lambda\><rsub|f>|)>>
    (cross kernel);

    <item><math|M<rsub|n>:<around|(|\<Omega\><rsup|2>|)><rsup|\<oplus\>2><around|(|\<Lambda\><rsub|c>|)>\<to\>\<Omega\><rsup|1><around|(|\<Lambda\><rsub|c>|)>>;

    <item><math|O:<around|(|\<Omega\><rsup|2>|)><rsup|\<oplus\>2><around|(|\<Lambda\><rsub|c>|)>\<to\><around*|(|<around|(|\<Omega\><rsup|2>|)><rsup|\<oplus\>2>\<oplus\>\<Omega\><rsup|3>|)><around|(|\<Lambda\><rsub|c>|)>>.
  </itemize-minus>

  With fine data <math|<around|(|\<cal-B\>,V|)>> and coarse data
  <math|<around|(|\<cal-B\><rprime|'>,V<rprime|'>|)>>, the identities are:

  <\itemize-minus>
    <item>(D1) <math|d<rsup|\<ast\>>*H*<space|0.17em>d*<space|0.17em>W=Q<rsup|\<ast\>>*d<rsup|\<ast\>>*H<rprime|'>*d>

    <item>(D2) <math|Q*W=1-\<kappa\><rsup|-1>*d<rsup|\<ast\>>*H<rprime|'>*d>

    <item>(D3) <math|T<rsup|\<ast\>>*d=d*Q>

    <item>(D4) <math|T*<space|0.17em>D<rprime|'>*d=D*<space|0.17em>d*<space|0.17em>W>

    <item>(R1) <math|M<rsub|f><rsup|\<ast\>>*M<rsub|f>+M<rsub|n><rsup|\<ast\>>*M<rsub|n>+O<rsup|\<ast\>>
    O=1>

    <item>(R2) <math|<sqrt|\<kappa\>>*<space|0.17em>M<rsub|n><rsup|\<ast\>>=V<rprime|'>*d>

    <item>(R3) <math|M<rsub|f>*V<rprime|'>*d=V*<space|0.17em>d*<space|0.17em>W>

    <item>(R4) <math|M<rsub|n>*V<rprime|'>*d=\<kappa\><rsup|-1/2>*d<rsup|\<ast\>>*H<rprime|'>*d>

    <item>(R5) <math|O*V<rprime|'>*d=0>

    <item>(R6) <math|M<rsub|f><rsup|\<ast\>>*V*<space|0.17em>d=<sqrt|\<kappa\>>*<space|0.17em>M<rsub|n><rsup|\<ast\>>*Q>

    <item>(\<Delta\>) <math|H<rprime|'>*<around*|(|H<rprime|'><rsup|-1>-T<rsup|\<ast\>>*H<rsup|-1>*T-\<kappa\><rsup|-1>*d*<space|0.17em>d<rsup|\<ast\>>|)>*H<rprime|'>=d<rsub|2><rsup|\<ast\>>*P*<space|0.17em>d<rsub|2>>,
    for a 3-form kernel <math|P> on the coarse level.
  </itemize-minus>

  What the identities mean:

  <\itemize-minus>
    <item><strong|(D1)\U(D2).> These say that <math|A=W*B> is a critical
    point, hence a minimiser, of <math|A\<mapsto\><around|\<langle\>|d*A,H*<space|0.17em>d*A|\<rangle\>>+\<kappa\>*<around|\||Q*A-B|\|><rsup|2>>,
    and that the minimum is <math|<around|\<langle\>|d*B,H<rprime|'>*d*B|\<rangle\>>>.
    So <math|W> is Balaban's background-field (minimiser) map, and
    <math|H<rprime|'>> is the effective metric of the coarse level. The value
    identity is III.1's <hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103>.

    <item><strong|(D3)\U(D4).> (D3) makes <math|T<rsup|\<ast\>>> a 2-form
    average compatible with <math|Q>. (D4) says that <math|T> carries the
    weighted coarse curvature <math|D<rprime|'>*d*B> to the weighted fine
    curvature <math|D*<space|0.17em>d*W*B> of the background field.

    <item><strong|(R1)\U(R6): orthogonal splitting.> For
    <math|A\<in\>\<Omega\><rsup|1><around|(|\<Lambda\><rsub|f>|)>>,
    <math|B\<in\>\<Omega\><rsup|1><around|(|\<Lambda\><rsub|c>|)>> and
    <math|Z=A-W*B>, (R3), (R4) and (D2) give

    <\equation*>
      <around*|(|V*<space|0.17em>d*A,<sqrt|\<kappa\>>*<around|(|B-Q*A|)>|)>=<around|(|M<rsub|f>,M<rsub|n>|)>*V<rprime|'>*d*B+<around*|(|V*<space|0.17em>d*Z,<space|0.17em>-<sqrt|\<kappa\>>*<space|0.17em>Q*Z|)>.
    </equation*>

    The two summands are orthogonal by (R6), and
    <math|<around|\||<around|(|M<rsub|f>,M<rsub|n>|)>*V<rprime|'>*d*B|\|>=<around|\||V<rprime|'>*d*B|\|>>
    by (R1) and (R5). Hence

    <\equation*>
      <around|\<langle\>|d*A,H*<space|0.17em>d*A|\<rangle\>>+\<kappa\>*<around|\||Q*A-B|\|><rsup|2>=<around|\<langle\>|d*B,H<rprime|'>*d*B|\<rangle\>>+<around|\<langle\>|d*Z,H*<space|0.17em>d*Z|\<rangle\>>+\<kappa\>*<around|\||Q*Z|\|><rsup|2>.
    </equation*>

    <item><strong|(\<Delta\>).> This is the same splitting for inverse
    metrics. It says <math|H<rprime|'><rsup|-1>=T<rsup|\<ast\>>*H<rsup|-1>*T+\<kappa\><rsup|-1>*d*d<rsup|\<ast\>>+H<rprime|'><rsup|-1>*d<rsub|2><rsup|\<ast\>>*P*d<rsub|2>*H<rprime|'><rsup|-1>>,
    and the last term sees only <math|d<rsub|2>*H<rprime|'><rsup|-1>*\<omega\>>.
  </itemize-minus>

  <strong|Proposition III.3.1 (catalogue fixed before the block sizes).> Let
  <math|K> be a kernel choice. There are numbers
  <math|\<alpha\><rsub|j>\<gtr\>0>, <math|\<eta\><rsub|j>\<gtr\>0>,
  <math|\<Omega\><rsub|j>\<in\>\<bbb-R\>>,
  <math|\<lambda\><rsub|j>\<geqslant\>0> (amendments),
  <math|\<gamma\><rsub|j>\<gtr\>0> (clip bounds) and
  <math|b<rsub|j>\<in\>\<bbb-N\>> (block thresholds),
  <math|j\<in\>\<bbb-N\>>, depending only on <math|K>, with the following
  properties.

  (a) <em|Metric data of a history.> Let <math|j\<geqslant\>4>, let the clip
  have direct coefficient <math|c\<leqslant\>\<gamma\><rsub|j>>, and let
  <math|v> be a history of stage index <math|j>. Then there is metric data
  <math|<around|(|D,D<rsup|-1>,H,H<rsup|-1>,R|)>> such that:

  <\itemize-minus>
    <item><math|D> and <math|D<rsup|-1>> are the explicit kernels of <math|v>
    with penalty <math|\<kappa\>>, and <math|H<rsup|-1>=D<rsup|-1>+\<lambda\><rsub|j>*<around|(|d<rsub|2>*D<rsup|-1>|)><rsup|\<ast\>>*<around|(|d<rsub|2>*D<rsup|-1>|)>>
    (Lemmas 4.4\U4.7);

    <item>all five kernels lie in <math|\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>|)>>;

    <item>on every torus: <math|D*D<rsup|-1>=H*H<rsup|-1>=1>,
    <math|c*<space|0.17em>1+R<rsup|\<ast\>>*R=H>,
    <math|<wide|H|^><around|(|0|)>=1>, <math|H*d=D*d>, and <math|H> and
    <math|D> are symmetric;

    <item>on every torus: <math|\<eta\><rsub|j><around|\||\<omega\>|\|><rsup|2>\<leqslant\><around|\<langle\>|\<omega\>,H*\<omega\>|\<rangle\>>\<leqslant\>\<Omega\><rsub|j><around|\||\<omega\>|\|><rsup|2>>,
    and the same for <math|D>;

    <item>for every gauge group <math|G>, the form
    <math|<around|\<langle\>|A,d<rsup|\<ast\>>*H*d*<space|0.17em>A|\<rangle\>>>
    on <math|\<frak-g\>>-valued 1-forms is invariant under the signed lattice
    symmetries;

    <item><math|D=1> if <math|v> is the empty history.
  </itemize-minus>

  (b) <em|One step.> Let <math|j,t\<geqslant\>4> with
  <math|t\<in\><around|{|j,j-1|}>>, and let <math|P> be a flight of index
  <math|<around|(|j,t|)>>: odd block size <math|L\<geqslant\>3> and fine
  history of index <math|j>. Then:

  <\itemize-minus>
    <item>the explicit transfer kernels <math|W,T> of <math|P> satisfy
    <math|\<nabla\><rsub|u>*W\<in\>\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>*L<rsup|-1-<around|\||u|\|>>|)>>
    and <math|\<nabla\><rsub|u>*T\<in\>\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>*L<rsup|-2-<around|\||u|\|>>|)>>,
    for every word <math|u> of at most <math|j-2> fine forward differences;

    <item>the rolled 3-form kernel <math|\<cal-P\>> of <math|P>, built with
    fine amendment <math|\<lambda\><rsub|j>> and coarse amendment
    <math|\<lambda\><rsub|t>> (Lemma 4.12), lies in
    <math|\<cal-S\><around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>|)>>;

    <item>if <math|L\<geqslant\>b<rsub|j>>, then at every real momentum
    <math|<wide|\<cal-P\>|^><around|(|p|)>> is Hermitian and
    <math|\<eta\><rsub|j>\<leqslant\><wide|\<cal-P\>|^><around|(|p|)>\<leqslant\>\<Omega\><rsub|j>>.
  </itemize-minus>

  <em|Status:> theorem, with no hypothesis beyond the kernel choice. It uses
  III.6's square-root theorem to construct <math|R>. The catalogue does not
  depend on <math|G>. <em|Lean:> <hlink|<verbatim|Catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L29-L33>,
  <hlink|<verbatim|pledges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L67-L93>,
  <hlink|<verbatim|BottomQuote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L22-L24>,
  <hlink|<verbatim|HopQuote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L25-L28>,
  <hlink|<verbatim|Mag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L20>,
  <hlink|<verbatim|Defined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L58>,
  <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>,
  <hlink|<verbatim|Donate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22>,
  <hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40>.

  <strong|Proposition III.3.2 (free kernels along an admissible schedule).>
  Let <math|G> be a gauge group and <math|K> a kernel choice. There is a
  catalogue <math|<around|(|\<alpha\>,\<Omega\>,\<eta\>,\<lambda\>,\<gamma\>,b|)>>
  as in III.3.1 with the following property. For every sheet
  <math|\<frak-S\>> with kernel <math|K> (the pre-<math|L> constants, III.2)
  there is a second table <math|<around|(|\<alpha\><rprime|'><rsub|j>,\<Omega\><rprime|'><rsub|j>,\<eta\><rsub|j>|)>>
  such that the conclusion below holds.

  Let <math|A> be an RG trajectory with kernel <math|K> and the stage profile
  of <math|\<frak-S\>>, satisfying the <em|credit condition>:

  <\itemize-minus>
    <item>(C1) <math|c<rsub|i>\<leqslant\>\<gamma\><rsub|J<around|(|i|)>>>
    for every level <math|i>;

    <item>(C2) <math|b<rsub|J*<around|(|i+1|)>>\<leqslant\>L<rsub|i>> for
    every step <math|i>.
  </itemize-minus>

  Then, simultaneously for all <math|N\<geqslant\>0> and
  <math|0\<leqslant\>i\<leqslant\>N>, there are two families of metric data
  and transfer kernels: a pre-repair family
  <math|<math-ss|M>=<around|(|\<cal-B\><rsup|N,i>,\<cal-U\><rsup|N,i>|)>> and
  an output family <math|<math-ss|H>=<around|(|\<cal-B\><rsup|N,i>,<wide|\<cal-U\>|~><rsup|N,i>|)>>.
  They have the same metric data and the same <math|W,T>, and satisfy:

  <\enumerate>
    <item><em|Explicit formulas.> <math|\<cal-B\><rsup|N,i>> is the metric
    data of III.3.1(a) for the history of level <math|i> in mesh <math|N>,
    with amendment <math|\<lambda\><rsub|J<around|(|i|)>>>. That history is
    the composite of the stage hops of steps <math|N-1,\<ldots\>,i>, starting
    from the empty history at level <math|N>. <math|W<rsup|N,i>,T<rsup|N,i>>
    are the explicit transfer kernels of the flight of step <math|i>, of
    index <math|<around|(|J*<around|(|i+1|)>,J<around|(|i|)>|)>>.

    <item><em|Pre-repair conditions (<math|<math-ss|M>>).>

    <\itemize-minus>
      <item><math|\<cal-B\><rsup|N,i>\<in\>\<cal-S\><around|(|\<alpha\><rsub|J<around|(|i|)>>,\<Omega\><rsub|J<around|(|i|)>>|)>>,
      with lower and upper bounds <math|\<eta\><rsub|J<around|(|i|)>>,\<Omega\><rsub|J<around|(|i|)>>>
      on every torus for the clip of level <math|i>, and the symmetry;

      <item><math|D<rsup|N,N>=1>;

      <item><math|W,T> have the derivative bounds of III.3.1(b) at stage
      <math|J*<around|(|i+1|)>>, with <math|J*<around|(|i+1|)>-2>
      differences;

      <item>(D1)\U(D4) hold on every schedule torus pair of step <math|i>;

      <item>there is a 3-form kernel <math|P\<in\>\<cal-S\><around|(|\<alpha\><rsub|J*<around|(|i+1|)>>,\<Omega\><rsub|J*<around|(|i+1|)>>|)>>,
      Hermitian at real momenta, with <math|<around|\<langle\>|v,<wide|P|^><around|(|p|)>*v|\<rangle\>>\<geqslant\>\<eta\><rsub|J*<around|(|i+1|)>><around|\||v|\|><rsup|2>>
      for real <math|p> and <math|v> in the range of
      <math|\<sigma\><rsub|2><around|(|p|)>>, such that (\<Delta\>) holds on
      every schedule torus pair.
    </itemize-minus>

    <item><em|Output conditions (<math|<math-ss|H>>), with the second table.>

    <\itemize-minus>
      <item>the metric bounds of III.3.1(a), with strip constants
      <math|\<alpha\><rprime|'><rsub|j>,\<Omega\><rprime|'><rsub|j>> and the
      same lower bounds <math|\<eta\><rsub|j>>;

      <item><math|<wide|M|~><rsub|n>,<wide|O|~>\<in\>\<cal-S\><around|(|\<alpha\><rprime|'><rsub|J*<around|(|i+1|)>>,\<Omega\><rprime|'><rsub|J*<around|(|i+1|)>>|)>>
      and <math|<wide|M|~><rsub|f>\<in\>\<cal-S\><around|(|\<alpha\><rprime|'><rsub|J*<around|(|i+1|)>>,\<Omega\><rprime|'><rsub|J*<around|(|i+1|)>>*L<rsub|i><rsup|-2>|)>>,
      and the derivative bounds on <math|W,T> with
      <math|\<alpha\><rprime|'><rsub|j>,\<Omega\><rprime|'><rsub|j>>;

      <item>(D1)\U(D4) and (R1)\U(R6) on every schedule torus pair, with the
      clips of levels <math|i+1,i>;

      <item><math|D<rsup|N,N>=1>, and the symmetry of every
      <math|\<cal-B\><rsup|N,i>>.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem. The inputs F06\UF09 (III.6) are discharged inside the
  proof. For trajectories with the stated kernel and profile, the additional
  hypothesis is the credit condition. The variant
  <hlink|<verbatim|before_paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124>
  (assigned to III.4) replaces it by:

  <\itemize-minus>
    <item>two conditions on the sheet: clip coefficients
    <math|\<leqslant\>\<gamma\><rsub|j>>, and block-size floors
    <math|\<geqslant\>b<rsub|j>>, for all stages from the first one on;

    <item>the schedule's payment record (III.2), which gives
    <math|L<rsub|i>\<geqslant\>> floor.
  </itemize-minus>

  III.9 builds the sheet so that these hold: its floors are exactly <math|b>
  and its clip coefficients are <math|\<leqslant\>\<gamma\>>
  (<hlink|<verbatim|housing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/UNMASKED_THROUGH_LAUNCH/Dome.lean#L90-L101>).
  The variant also lets the second table be computed from a preliminary sheet
  <math|\<frak-S\>> and used for any later sheet <math|\<frak-S\><rprime|'>>,
  provided <math|\<frak-S\><rprime|'>> has the same direct clip coefficients,
  the same kernel, a drift at least as large, and logarithmic parameter size
  at least as large.

  <em|Lean:> <hlink|<verbatim|retained_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>;
  conditions <hlink|<verbatim|Present>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L82-L85>,
  <hlink|<verbatim|Craft.Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>,
  <hlink|<verbatim|Bid.Retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105>,
  <hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>,
  <hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>,
  <hlink|<verbatim|Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88>;
  discharge <hlink|<verbatim|credit_from_sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L95-L102>,
  <hlink|<verbatim|Willing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L28>.

  <strong|Proposition III.3.3 (identities on every torus).> Let a family
  satisfy the output conditions of III.3.2(3) for some table. For every
  <math|N>, <math|m\<less\>N> and positive sides <math|c,f> with
  <math|f=c*L<rsub|m>>, (D1)\U(D4) and (R1)\U(R6) hold, with the same kernels
  and the clips of levels <math|m+1,m>. The diagonal identities follow by
  rigidity (III.10, <hlink|<verbatim|panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53>).
  They also follow from the explicit formulas when the family realises them
  (<hlink|<verbatim|universal_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60>).
  Given the diagonal identities, the roll identities follow from the output
  conditions by the same rigidity argument. <em|Status:> theorem. <em|Lean:>
  <hlink|<verbatim|complete_roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157>,
  <hlink|<verbatim|Towers.Diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86>,
  <hlink|<verbatim|Towers.Roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96>,
  <hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>.
  Used in III.10.

  <strong|Proposition III.3.4 (positivity of the rolled 3-form kernel).> Fix
  a kernel choice <math|K> and <math|j,t\<geqslant\>4>. There are
  <math|C<rsub|0>,B\<gtr\>0>, depending only on <math|<around|(|K,j,t|)>>,
  with the following property. For every coarse amendment
  <math|\<lambda\>\<geqslant\>C<rsub|0>> and fine amendment
  <math|\<mu\>\<geqslant\>0> there are <math|\<eta\>,\<sigma\>,\<Omega\>\<gtr\>0>
  such that, for every flight <math|P> of index <math|<around|(|j,t|)>>:

  <\itemize-minus>
    <item><math|\<cal-P\><rsub|\<mu\>,\<lambda\>><around|(|P|)>\<in\>\<cal-S\><around|(|\<sigma\>,\<Omega\>|)>>;

    <item>if <math|\<mu\>*B\<leqslant\>L<rsup|2>>, then at every real
    <math|p>, <math|<wide|\<cal-P\>|^><rsub|\<mu\>,\<lambda\>><around|(|p|)>>
    is Hermitian and <math|\<eta\>\<leqslant\><wide|\<cal-P\>|^><rsub|\<mu\>,\<lambda\>><around|(|p|)>\<leqslant\>\<Omega\>>.
  </itemize-minus>

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|Flight.frontier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140>,
  <hlink|<verbatim|Flight.absorb_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L58-L95>.

  <strong|Proposition III.3.5 (line and box filters).> For positive integers
  <math|L,M>, define the uncentred line average below; for odd <math|L,M>,
  also define the centred line and box averages:

  <\equation*>
    <math-up|plank><rsub|M><around|(|z|)>=M<rsup|-1>*<big|sum><rsub|<around|\||s|\|>\<leqslant\><around|(|M-1|)>/2>e<rsup|i*s*z>,<space|2em><math-up|rail><rsub|M><around|(|z|)>=M<rsup|-1>*<big|sum><rsub|s=0><rsup|M-1>e<rsup|i*s*z>,<space|2em>a<rsub|L><around|(|p|)>=<big|prod><rsub|a><math-up|plank><rsub|L><around|(|p<rsub|a>|)>
  </equation*>

  (centred line average, uncentred line average, box average). Then:

  (a) <math|<math-up|rail><rsub|L><around|(|M*z|)><space|0.17em><math-up|rail><rsub|M><around|(|z|)>=<math-up|rail><rsub|L*M><around|(|z|)>>
  for all positive <math|L,M>, and <math|<math-up|plank><rsub|L><around|(|M*z|)><space|0.17em><math-up|plank><rsub|M><around|(|z|)>=<math-up|plank><rsub|L*M><around|(|z|)>>
  for odd <math|L,M>. For odd <math|M>, <math|<math-up|plank><rsub|M>> is
  even, <math|2*\<pi\>>-periodic and real on <math|\<bbb-R\>>.

  (b) <math|<around|\||<math-up|plank><rsub|M><around|(|z|)>|\|>,<around|\||<math-up|rail><rsub|M><around|(|z|)>|\|>\<leqslant\>e<rsup|M<around|\||<math-up|Im><space|0.17em>z|\|>>>.

  (c) There are absolute constants <math|c<rsub|\<ast\>>,c<rsub|1>\<gtr\>0>
  such that <math|<around|\||<math-up|rail><rsub|M><around|(|z|)>|\|>\<geqslant\>c<rsub|\<ast\>>>
  for complex <math|z> with <math|M<around|\||z|\|>\<leqslant\>3*\<pi\>/2>,
  and <math|<around|\||<math-up|plank><rsub|M><around|(|z|)>|\|>\<geqslant\>e<rsup|-c<rsub|1>*M/L>>
  for real <math|z>, <math|M\<leqslant\>L> and
  <math|L<around|\||z|\|>\<leqslant\>3*\<pi\>/2>.

  (d) There is an absolute <math|B> such that
  <math|<around|\||<math-up|rail><rsub|L><around|(|<around|(|q<rsub|\<ell\>>|)><rsub|a>|)>|\|>,<around|\||<math-up|plank><rsub|L><around|(|<around|(|q<rsub|\<ell\>>|)><rsub|a>|)>|\|>\<leqslant\>B/<around|(|1+<around|\||\<ell\><rsub|a>|\|>|)>>.
  This holds for odd <math|L>, every <math|p> in the complex cube
  <math|<around|{|<around|\||<math-up|Re><space|0.17em>p<rsub|a>|\|>\<less\><tfrac|5*\<pi\>|4>,<around|\||<math-up|Im><space|0.17em>p<rsub|a>|\|>\<less\><tfrac|\<pi\>|4>|}>>,
  every alias <math|\<ell\>> and every <math|a>.

  <em|Status:> theorem. <em|Lean:> <hlink|<verbatim|plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L38>,
  <hlink|<verbatim|rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L34>,
  <hlink|<verbatim|area>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L18>,
  <hlink|<verbatim|plank_bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L68-L76>,
  <hlink|<verbatim|rail_bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L51-L62>,
  <hlink|<verbatim|plank_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L127-L133>,
  <hlink|<verbatim|rail_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L140-L152>,
  <hlink|<verbatim|principal_plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196>,
  <hlink|<verbatim|alias_rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L200-L245>.

  <strong|Proposition III.3.6 (free covariance of the curvature).> Call a
  real 2-form kernel <math|f> <em|firm> with constants
  <math|<around|(|\<alpha\>,\<Omega\>,\<eta\>|)>> if
  <math|f\<in\>\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>>,
  <math|<wide|f|^><around|(|0|)>=1>, and <math|\<eta\><around|\||\<omega\>|\|><rsup|2>\<leqslant\><around|\<langle\>|\<omega\>,f<rsub|n>*\<omega\>|\<rangle\>>\<leqslant\>\<Omega\><around|\||\<omega\>|\|><rsup|2>>
  for every real cochain on every torus. Symmetry is not required. Fix
  <math|\<alpha\>,\<eta\>\<gtr\>0> and <math|\<Omega\>\<in\>\<bbb-R\>>, and
  let <math|U=<around|{|p\<in\>\<bbb-R\><rsup|4>\<setminus\><around|{|0|}>:<around|\||p<rsub|a>|\|>\<less\>3*\<pi\>/2|}>>.
  For <math|p\<in\>U> define:

  <\itemize-minus>
    <item><math|\<Phi\><rsub|f><around|(|p|)>=\<sigma\><rsub|1><around|(|p|)><rsup|\<ast\>><wide|f|^><around|(|p|)>*\<sigma\><rsub|1><around|(|p|)>+\<sigma\><rsub|0><around|(|p|)>*\<sigma\><rsub|0><around|(|p|)><rsup|\<ast\>>>,
    the symbol of <math|d<rsub|1><rsup|\<ast\>>*f*d<rsub|1>+d<rsub|0>*d<rsub|0><rsup|\<ast\>>>
    on 1-forms;

    <item><math|G<rsub|f><around|(|p|)>=\<sigma\><rsub|1><around|(|p|)>*\<Phi\><rsub|f><around|(|p|)><rsup|-1>*\<sigma\><rsub|1><around|(|p|)><rsup|\<ast\>>>,
    the curvature covariance symbol when <math|f> is symmetric and the
    gauge-fixed potential has precision <math|d<rsub|1><rsup|\<ast\>>*f*d<rsub|1>+d<rsub|0>*d<rsub|0><rsup|\<ast\>>>;

    <item><math|G<rsub|\<infty\>><around|(|p|)>=s<around|(|p|)><around|\||p|\|><rsup|-2>*s<around|(|p|)><rsup|\<ast\>>>,
    where <math|s<around|(|p|)>> is wedging with <math|i*p> on 1-forms: the
    continuum Feynman-gauge curvature symbol.
  </itemize-minus>

  (a) There is <math|b\<gtr\>0>, depending only on
  <math|\<alpha\>,\<Omega\>,\<eta\>>, such that
  <math|<math-up|Re><space|0.17em><around|\<langle\>|x,\<Phi\><rsub|f><around|(|p|)>*x|\<rangle\>>\<geqslant\>b<around|\||p|\|><rsup|2><around|\||x|\|><rsup|2>>
  for every firm <math|f>, <math|p\<in\>U> and complex 1-form <math|x>.

  (b) For every <math|n\<in\>\<bbb-N\>> there is
  <math|C<rsub|n>\<geqslant\>0>, depending only on
  <math|n,\<alpha\>,\<Omega\>,\<eta\>>, such that, for all firm <math|f> and
  <math|p\<in\>U>, <math|<around|\<\|\|\>|D<rsup|n>*G<rsub|f><around|(|p|)>|\<\|\|\>>\<leqslant\>C<rsub|n><around|\||p|\|><rsup|-n>>
  and <math|<around|\<\|\|\>|D<rsup|n>*<around|(|G<rsub|f>-G<rsub|\<infty\>>|)><around|(|p|)>|\<\|\|\>>\<leqslant\>C<rsub|n><around|\||p|\|><rsup|1-n>>.

  (c) If <math|f> is a scalar kernel with
  <math|<big|sum><rsub|x>e<rsup|\<alpha\><around|\||x|\|><rsub|1>><around|\||f<around|(|x|)>|\|>\<leqslant\>\<Omega\>>,
  then <math|<wide|f|^>> is <math|C<rsup|\<infty\>>> on
  <math|\<bbb-R\><rsup|4>> and <math|<around|\<\|\|\>|D<rsup|n>*<wide|f|^><around|(|p|)>|\<\|\|\>>\<leqslant\>A<rsub|n>*\<Omega\>>
  for every <math|p>, where <math|A<rsub|0>=1> and
  <math|A<rsub|n>=<around|(|n/\<alpha\>|)><rsup|n>> for
  <math|n\<geqslant\>1>. Here <math|D<rsup|n>> is the full <math|n>th Fréchet
  derivative, with its multilinear operator norm; this notation also applies
  to (b).

  <em|Status:> theorems. Part (b) is used in III.11. <em|Lean:>
  <hlink|<verbatim|tank_full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L115-L125>,
  <hlink|<verbatim|gem_quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120>,
  <hlink|<verbatim|radial_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Plain.lean#L101-L133>,
  <hlink|<verbatim|Firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L17-L21>,
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L62>,
  <hlink|<verbatim|garnet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L15>,
  <hlink|<verbatim|pearl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L17>.

  <strong|Proposition III.3.7 (calculus lemmas for the nonlinear step).>
  These do not concern free kernels; they are consumed in III.10 and III.2.

  (a) <em|Discrete Taylor expansion with scaled bounds.> Let
  <math|b,k\<in\>\<bbb-N\>> with <math|k\<leqslant\>b>. There is
  <math|C=C<around|(|b,k|)>\<geqslant\>1> with the following property. Let
  <math|L\<geqslant\>1>, <math|M\<geqslant\>0>, and let
  <math|p:\<bbb-Z\><rsup|4>\<to\>E> (<math|E> a real normed vector space)
  satisfy <math|<around|\<\|\|\>|\<nabla\><rsub|u>*p<around|(|x|)>|\<\|\|\>>\<leqslant\>M*L<rsup|-1-<around|\||u|\|>>*<around|(|1+L<rsup|-1><around|\||x|\|><rsub|1>|)><rsup|b>>
  for all words <math|u> of forward differences with
  <math|<around|\||u|\|>\<leqslant\>k>. Then the Newton pieces
  <math|P<rsub|i><around|(|x|)>=<big|sum><rsub|<around|\||\<nu\>|\|>=i><binom|x|\<nu\>>\<nabla\><rsup|\<nu\>>*p<around|(|0|)>>,
  of degree at most <math|i>, satisfy <math|<around|\<\|\|\>|P<rsub|i><around|(|x|)>|\<\|\|\>>\<leqslant\>C*M*L<rsup|-1-i>*<around|(|1+<around|\||x|\|><rsub|1>|)><rsup|b>>
  for <math|i\<less\>k>, and the remainder satisfies
  <math|<around|\<\|\|\>|p<around|(|x|)>-<big|sum><rsub|i\<less\>k>P<rsub|i><around|(|x|)>|\<\|\|\>>\<leqslant\>C*M*L<rsup|-1-k>*<around|(|1+<around|\||x|\|><rsub|1>|)><rsup|b>>.

  (b) <em|Weighted Taylor coefficients.> Let <math|d\<in\>\<bbb-N\>> and let
  <math|f:E\<to\>F> be <math|C<rsup|d>> at <math|0> between real normed
  vector spaces. Let <math|p<rsub|v>:E\<to\>E> (<math|v\<in\>V> finite) be
  continuous linear maps with <math|<big|sum><rsub|v>p<rsub|v>=1>, and let
  <math|Y<rsub|v>\<geqslant\>1> be integers. Suppose that for every <math|z>
  the function <math|t\<mapsto\>f<around|(|<big|sum><rsub|v>t<rsup|Y<rsub|v>>*p<rsub|v>*z|)>>
  has vanishing derivatives of orders <math|0,\<ldots\>,d> at <math|0>. Then
  <math|D<rsup|m>*f<around|(|0|)><around|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>=0>
  whenever there are integers <math|k<rsub|i>\<geqslant\>1> with
  <math|<big|sum><rsub|i>k<rsub|i>\<leqslant\>d> and
  <math|p<rsub|v><around|(|x<rsub|i>|)>=0> for every <math|v> with
  <math|Y<rsub|v>\<gtr\>k<rsub|i>>.

  (c) <em|Moments of local gauge-invariant functions.> Fix
  <math|b,d\<in\>\<bbb-N\>> with <math|b\<leqslant\>d>, a torus
  <math|\<Lambda\><rsub|n>> with <math|n\<geqslant\>2>, an anchor <math|o>,
  and a finite support <math|X> satisfying
  <math|10<space|0.17em><math-up|dist><around|(|x,o|)>\<less\>n> for every
  <math|x\<in\>X>, where <math|<math-up|dist>> is the torus
  <math|\<ell\><rsup|\<infty\>>> distance. Let
  <math|u:<math-up|Config><around|(|G,\<Lambda\><rsub|n>|)>\<to\>\<bbb-C\>>
  be gauge invariant and depend only on links whose two endpoints lie in
  <math|X>, with <math|u\<circ\>exp> of class <math|C<rsup|b>> at <math|0>.
  For every radial polynomial connection jet <math|J> through weight
  <math|d>, let <math|U<rsub|J,o><around|(|t|)>> be its link holonomies at
  scale <math|t>, based at <math|o>: a homogeneous connection component of
  degree <math|r-1> has weight <math|r>, <math|2\<leqslant\>r\<leqslant\>d>,
  and is multiplied by <math|t<rsup|r>>. Assume
  <math|<frac|d<rsup|k>|d*t<rsup|k>>*u<around|(|U<rsub|J,o><around|(|t|)>|)>\|<rsub|t=0>=0>
  for every <math|J> and <math|0\<leqslant\>k\<leqslant\>b>. For any
  <math|m\<in\>\<bbb-N\>>, <math|p<rsub|1>,\<ldots\>,p<rsub|m>\<geqslant\>1>
  with <math|<big|sum><rsub|i>p<rsub|i>\<leqslant\>b>, and link fields
  <math|w<rsub|i>> whose values on those links are polynomials of degree at
  most <math|p<rsub|i>-1> in the centred lift of the initial site relative to
  <math|o>, one has <math|D<rsup|m>*<around|(|u\<circ\>exp|)><around|(|0|)><around|(|w<rsub|1>,\<ldots\>,w<rsub|m>|)>=0>.
  Values of <math|w<rsub|i>> on other links are unrestricted.

  (d) <em|Radial decomposition.> Let <math|j\<in\>\<bbb-N\>> and let
  <math|Q<rsub|a>:\<bbb-R\><rsup|4>\<to\>\<frak-g\>> (<math|a=1,\<ldots\>,4>)
  be homogeneous polynomials of degree <math|j+1>. Then
  <math|Q<rsub|a>=K<rsub|a>+\<partial\><rsub|a>*r>, where
  <math|r=<around|(|j+2|)><rsup|-1>*<big|sum><rsub|a>x<rsub|a>*Q<rsub|a>> is
  homogeneous of degree <math|j+2>, and <math|K> is homogeneous of degree
  <math|j+1> with <math|<big|sum><rsub|a>x<rsub|a>*K<rsub|a>=0> (the
  Fock\USchwinger condition).

  (e) <em|Small-field condition along rays.> There is
  <math|C=C<around|(|G|)>\<gtr\>0> with the following property. Let
  <math|0\<leqslant\>b\<leqslant\>1>, <math|\<tau\>\<geqslant\>C*b<rsup|2>>,
  and let <math|v> be Lie-algebra link variables with
  <math|<around|\||v<rsub|x>|\|>\<leqslant\>b> on all links within distance
  <math|5> of <math|Y>. If every plaquette touching <math|Y> has holonomy
  within chord distance <math|\<tau\>> of <math|1> for the configuration
  <math|exp <around|(|v|)>>, then the same plaquette bounds hold for
  <math|exp <around|(|s*v|)>>, <math|0\<leqslant\>s\<leqslant\>1>.

  <em|Status:> theorems. <em|Lean:> <hlink|<verbatim|capital>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/TownHall.lean#L31-L90>,
  <hlink|<verbatim|cancel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L120-L147>,
  <hlink|<verbatim|converse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Weighted.lean#L84-L115>,
  <hlink|<verbatim|wiped>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/PMOM.lean#L43-L61>,
  <hlink|<verbatim|locale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Averaging.lean#L84-L114>,
  <hlink|<verbatim|strings>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Safeguard.lean#L148-L177>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><strong|I.1.> The lattice, the signed (hypercubic) symmetries, and
    the gauge group. In the free-kernel construction the gauge group enters
    only the symmetry statement; III.3.7 also uses its exponential and
    holonomy maps.

    <item><strong|III.1.> The block-spin data:

    <\itemize-minus>
      <item>the block ratio, the patch (odd <math|L\<geqslant\>3>,
      <math|J\<geqslant\>4>), the kernel choices
      <hlink|<verbatim|KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37-L45>
      and the clips <hlink|<verbatim|Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139-L146>;

      <item>the linearised average <math|Q>
      (<hlink|<verbatim|mean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/FrameResponse.lean#L65-L66>)
      and the lattice exterior derivative;

      <item>the trajectory record <hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>:
      block sizes, stage indices with <math|J<around|(|i|)>\<leqslant\>J*<around|(|i+1|)>\<leqslant\>J<around|(|i|)>+1>,
      and schedule tori whose sides tend to infinity.
    </itemize-minus>

    III.1 also defines the output objects:

    <\itemize-minus>
      <item>metric data <hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>,
      <hlink|<verbatim|Bed.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L49-L51>,
      <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>;

      <item>transfer kernels <hlink|<verbatim|Towers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L70-L75>
      and their bounds <hlink|<verbatim|Towers.Deep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114>;

      <item>the identities (D1)\U(D4), (R1)\U(R6), with
      <math|d<rsup|\<ast\>>*H*d> as <hlink|<verbatim|K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>;

      <item>kernel families <hlink|<verbatim|Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121>,
      the output conditions <hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>,
      and price tables <hlink|<verbatim|MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128>.
    </itemize-minus>

    <item><strong|III.2.> The sheet <hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>,
    the block sizes <hlink|<verbatim|Rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50-L53>,
    and the payment record <hlink|<verbatim|Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145-L162>.

    <item><strong|III.6.> The four linear-algebra theorems
    <hlink|<verbatim|F06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F06.lean#L64-L128>,
    <hlink|<verbatim|F07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07.lean#L180-L201>,
    <hlink|<verbatim|F08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F08.lean#L53-L146>,
    <hlink|<verbatim|F09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F09.lean#L41-L150>.
    Their statements are in Lemma 4.16. F07 is also used in Lemma 4.8.

    <item><strong|III.10.>

    <\itemize-minus>
      <item>The interface conditions <hlink|<verbatim|Craft.Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>,
      <hlink|<verbatim|Bleeps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L32>,
      <hlink|<verbatim|Reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L34-L36>,
      <hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40>,
      <hlink|<verbatim|Donate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22>,
      <hlink|<verbatim|Replaces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L53-L58>,
      <hlink|<verbatim|Bid.Retained>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L104-L105>,
      <hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>.

      <item>The repair theorem <hlink|<verbatim|Bid.pinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166>
      (Lemma 4.16), and <hlink|<verbatim|panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53>
      for III.3.3.
    </itemize-minus>

    <item><strong|III.16.> Kernels and their action on tori:
    <hlink|<verbatim|Row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22>,
    <hlink|<verbatim|Cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L26>,
    <hlink|<verbatim|installed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L35>.
    The weighted norms <hlink|<verbatim|Row.strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26>
    and <hlink|<verbatim|Laurent.Width>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104>,
    where the size of a displacement is its <math|\<ell\><rsup|1>> norm. The
    alias-resolved Fourier transform on <math|\<Lambda\><rsub|f>>, which is
    unitary up to <math|f<rsup|4>>.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Fourier analysis on <math|\<bbb-Z\><rsup|4>> and on periodic
    lattices. Bloch (alias) decomposition of operators that commute with
    coarse translations. Periodic strip analyticity gives exponential
    coefficient bounds on narrower strips.

    <item>Gaussian block-spin transformations computed in Fourier space: K.
    Gaw¦dzki, A. Kupiainen, <em|Massless lattice
    <math|\<varphi\><rsup|4><rsub|4>> theory>, CMP 99 (1985). Balaban's
    averaging and background-field operators for lattice gauge fields: T.
    Balaban, CMP 95 and 96 (1984), CMP 98 (1985). Exposition: J. Dimock,
    <em|The renormalization group according to Balaban I>, Rev. Math. Phys.
    25 (2013).

    <item>Lagrange's identity. The Schur-complement (orthogonal) splitting of
    a quadratic form.

    <item>Exactness of the lattice de Rham (Koszul) complex for exponentially
    decaying translation-invariant kernels.

    <item>Newton forward-difference interpolation. Weighted-homogeneous
    Taylor expansions. The Fock\USchwinger (radial) gauge.
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The kernel choice <math|K>; only the penalty <math|\<kappa\>>
    enters the free kernels.

    <item>The analyticity half-width <math|\<pi\>/4>
    (<hlink|<verbatim|zone>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L21>)
    and the radius <math|3*\<pi\>/2> (<hlink|<verbatim|domainRadius>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L24>).
    The proved compactness bounds <math|c<rsub|-><around|\||w|\|>\<leqslant\><around|\||e<rsup|i*w>-1|\|>\<leqslant\>c<rsub|+><around|\||w|\|>>
    on <math|<around|\||w|\|>\<leqslant\>3*\<pi\>/2>
    (<hlink|<verbatim|meter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Chip.lean#L82>).

    <item>The credit condition, a hypothesis of III.3.2. It is discharged
    through <hlink|<verbatim|before_paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124>,
    the construction of the sheet in III.9, and the payment record of III.2.

    <item>F06\UF09 are proved in III.6 and plugged in inside
    <hlink|<verbatim|retained_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>.
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The Gaussian block-spin problem is solved in Fourier space. Iterating the
  block average and its independent noise gives a diagonal 1-form covariance
  symbol. Minimising its precision over gauge directions gives the effective
  form <math|d<rsup|\<ast\>>*D*d> by Lagrange's identity. The
  background-field map <math|W> and curvature transfer <math|T> are then
  explicit alias sums satisfying (D1)\U(D4).

  Uniform decay follows from the filters. A stage-<math|J> box filter gives
  <math|<big|prod><rsub|a><around|(|1+<around|\||\<ell\><rsub|a>|\|>|)><rsup|-J>>
  alias decay, leaving <math|J-2> fine differences summable. Along a history,
  successive dilation ratios decrease at least geometrically by <math|1/3>,
  so the extra filter products and accumulated noise stay uniformly bounded.
  Before estimating inverse symbols, the principal-alias poles are cancelled.
  The remaining denominators are bounded below at real momenta and hence on a
  thinner complex cube. These constants depend on the kernel choice and
  stage, uniformly in history length and block sizes.

  The inverse-metric defect factors through <math|d<rsub|2>> as
  <math|X<rprime|'><rsup|\<ast\>>*C*X<rprime|'>>, where
  <math|X<rprime|'>=d<rsub|2>*D<rprime|'><rsup|-1>> and <math|C> need not be
  positive. Amending the fine and coarse inverse metrics leaves their
  quadratic forms on potentials unchanged and replaces <math|C> by
  <math|C+\<lambda\><rsub|t>-\<lambda\><rsub|j>*S<rsup|\<ast\>>*S>. The
  squared 3-form transfer satisfies <math|S<rsup|\<ast\>>*S=O<around|(|L<rsup|-2>|)>>,
  including the sum over fine residues. Choose the coarse amendments first,
  then require <math|\<lambda\><rsub|j>*B/L<rsup|2>\<leqslant\>1>. The
  resulting positive defect yields <math|M<rsub|f>,M<rsub|n>,O> and
  (R1)\U(R6) through III.6 and the repair theorem of III.10. The repair
  constants also depend on the sheet's direct clip coefficients. Rigidity
  extends the schedule identities to all tori.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Filters and histories><label|41-filters-and-histories>

  <strong|Lemma 4.1 (filter algebra).> This is III.3.5(a). <em|Sketch:>
  <math|M<space|0.17em><math-up|rail><rsub|M><around|(|z|)>*<around|(|e<rsup|i*z>-1|)>=e<rsup|i*M*z>-1>;
  apply it twice and cancel <math|e<rsup|i*z>-1> when nonzero. If
  <math|e<rsup|i*z>=1>, every uncentred average is <math|1>. For the centred
  filter, the centring phases add up, since
  <math|M<space|0.17em><frac|L-1|2>+<frac|M-1|2>=<frac|L*M-1|2>>. <em|Lean:>
  <hlink|<verbatim|rail_bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L51-L62>,
  <hlink|<verbatim|plank_bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L68-L76>.

  <strong|Lemma 4.2 (size of filters).> This is III.3.5(b)\U(d). <em|Sketch:>

  <\itemize-minus>
    <item>(b) Triangle inequality.

    <item>(c) The compactness constants and Lemma 4.1 give
    <math|<around|\||<math-up|rail><rsub|M>|\|>\<geqslant\>c<rsub|->/c<rsub|+>>.
    On the principal alias, averaging <math|<around|\||e<rsup|i*s*z>-1|\|>\<leqslant\>c<rsub|+>*<around|\||s*z|\|>>
    gives <math|<around|\||<math-up|plank><rsub|M><around|(|z|)>-1|\|>\<leqslant\>c<rsub|+><tfrac|3*\<pi\>|2><tfrac|M|L>>,
    so <math|<around|\||<math-up|plank><rsub|M>|\|>\<geqslant\>max
    <around|(|c<rsub|\<ast\>>,1-k*x|)>\<geqslant\>e<rsup|-c<rsub|1>*x>> with
    <math|x=M/L>. The exponent is linear in <math|x> with no prefactor, which
    is what makes products along a history converge.

    <item>(d) <math|L<space|0.17em><math-up|rail><rsub|L><around|(|z|)>*<around|(|e<rsup|i*z>-1|)>=e<rsup|i*p<rsub|a>>-1>
    at <math|z=<around|(|q<rsub|\<ell\>>|)><rsub|a>>, and
    <math|L<around|\||z|\|>\<gtrsim\>1+<around|\||\<ell\><rsub|a>|\|>> when
    <math|\<ell\><rsub|a>\<ne\>0>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|plank_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L127-L133>,
  <hlink|<verbatim|rail_height>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L114-L122>,
  <hlink|<verbatim|rail_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L140-L152>,
  <hlink|<verbatim|plank_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L154-L155>,
  <hlink|<verbatim|principal_plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L162-L196>,
  <hlink|<verbatim|alias_rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L200-L245>.

  <strong|Lemma 4.3 (histories).> A history of stage index <math|j> is either
  empty, or a hop <math|<around|(|L,J|)>> with
  <math|j\<leqslant\>J\<leqslant\>j+1> and odd <math|L\<geqslant\>3>, applied
  after a history of index <math|J>. Its dilation <math|M<rsub|v>> is the
  product of its block sizes. Its cumulative filter is defined by
  <math|s<rsub|\<emptyset\>>=1> and <math|s<rsub|<around|(|L,J|)>\<circ\>v><around|(|p|)>=a<rsub|L>*<around|(|M<rsub|v>*p|)><rsup|J>*s<rsub|v><around|(|p|)>>.
  Equivalently, <math|s<rsub|v>=a<rsub|M<rsub|v>><rsup|<space|0.17em>j>*e<rsub|v>>,
  where <math|e<rsub|v>> is a product of box filters at the hops where the
  index drops. Then:

  <\itemize-minus>
    <item><math|s<rsub|v>> is entire, <math|2*\<pi\>*\<bbb-Z\><rsup|4>>-periodic
    and invariant under signed permutations;

    <item>on <math|\<cal-C\><rsub|\<pi\>/4>>,
    <math|<around|\||s<rsub|v><around|(|q<rsub|\<ell\>>|)>|\|>\<leqslant\>C<rsub|j>*<big|prod><rsub|a><around|(|1+<around|\||\<ell\><rsub|a>|\|>|)><rsup|-j>>
    at the aliases <math|q<rsub|\<ell\>>=<around|(|p+2*\<pi\>*\<ell\>|)>/M<rsub|v>>;

    <item>for <math|p\<in\>\<cal-C\><rsub|\<pi\>/4><rsup|\<bbb-R\>>>,
    <math|<around|\||s<rsub|v>*<around|(|p/M<rsub|v>|)>|\|>\<geqslant\>c<rsub|j>\<gtr\>0>.
  </itemize-minus>

  Here <math|C<rsub|j>,c<rsub|j>> do not depend on <math|v>, that is, on the
  number of hops or the block sizes. <em|Sketch:> After <math|k> further
  hops, a hop of dilation <math|M<rprime|'>> is evaluated at the momentum
  scaled by <math|M<rprime|'>/M<rsub|v>\<leqslant\>3<rsup|-k>>. Lemma 4.2
  gives factors <math|e<rsup|\<pm\>C*M<rprime|'>/M<rsub|v>>>, and these
  products converge. The factor <math|a<rsub|M<rsub|v>><rsup|j>> gives the
  alias decay by 4.2(d); the geometric product bounds the extra factors.
  <em|Lean:> <hlink|<verbatim|Train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L22-L24>,
  <hlink|<verbatim|Train.smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L36>,
  <hlink|<verbatim|Train.bind>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L43-L48>,
  <hlink|<verbatim|Train.smooth_upper>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L169-L184>,
  <hlink|<verbatim|Train.smooth_lower>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L186-L194>.

  <subsection|4.2 Explicit metric data><label|42-explicit-metric-data>

  <strong|Lemma 4.4 (auxiliary 1-form covariance symbols).> Fix
  <math|\<kappa\>\<gtr\>0> and a history <math|v> of dilation <math|M>. For a
  direction <math|a>, let <math|\<chi\><rsub|v,a><around|(|p|)>=s<rsub|v><around|(|p|)><space|0.17em><math-up|rail><rsub|M><around|(|p<rsub|a>|)>>.
  For <math|p\<in\>\<cal-C\><rsub|\<pi\>/4><rsup|\<bbb-R\>>\<setminus\><around|{|0|}>>
  and <math|q<rsub|\<ell\>>=<around|(|p+2*\<pi\>*\<ell\>|)>/M>, define

  <\equation*>
    D<rsub|a><around|(|p|)>=M<rsup|-2>*<big|sum><rsub|\<ell\>><frac|<around|\||\<chi\><rsub|v,a><around|(|q<rsub|\<ell\>>|)>|\|><rsup|2>|<around|\||\<tau\><around|(|q<rsub|\<ell\>>|)>|\|><rsup|2>>+\<kappa\><rsup|-1>*<big|sum><rsub|v<rprime|'>>M<rsub|v<rprime|'>><rsup|-2>*<big|sum><rsub|\<ell\><rprime|'>><around|\||\<chi\><rsub|v<rprime|'>,a><around|(|q<rprime|'><rsub|\<ell\><rprime|'>>|)>|\|><rsup|2>.
  </equation*>

  The second sum runs over the proper final segments <math|v<rprime|'>> of
  <math|v> (the last <math|k> hops, <math|0\<leqslant\>k\<less\>\<sharp\>*v>),
  with <math|q<rprime|'><rsub|\<ell\><rprime|'>>=<around|(|p+2*\<pi\>*\<ell\><rprime|'>|)>/M<rsub|v<rprime|'>>>.
  For the empty history, <math|D<rsub|a>=<around|\||\<tau\>|\|><rsup|-2>>.
  The formula obeys the exact one-step recursion
  <math|D<rprime|'><rsub|a><around|(|p|)>=L<rsup|-2>*<big|sum><rsub|\<ell\>><around|\||a<rsub|L><around|(|q<rsub|\<ell\>>|)><rsup|j><math-up|rail><rsub|L><around|(|<around|(|q<rsub|\<ell\>>|)><rsub|a>|)>|\|><rsup|2>*D<rsub|a><around|(|q<rsub|\<ell\>>|)>+\<kappa\><rsup|-1>>,
  which is the covariance recursion for an averaged field with independent
  noise. These singular symbols are used only away from zero; Lemma 4.6
  constructs the regular 2-form symbols. <em|Lean:>
  <hlink|<verbatim|Train.levelD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L133-L134>,
  <hlink|<verbatim|D_feedback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L154-L156>,
  <hlink|<verbatim|Train.levelNoise>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L131>,
  <hlink|<verbatim|feed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L62>.
  <em|(definitions and covariance recursion proof read)>

  <strong|Lemma 4.5 (the diagonal).> At the nonzero real momenta of Lemma
  4.4, let <math|\<rho\>=<big|sum><rsub|a><around|\||\<tau\><rsub|a>|\|><rsup|2>/D<rsub|a>>
  and <math|D<rsub|\<mu\>*\<nu\>>=<around|(|\<rho\>*<space|0.17em>D<rsub|\<mu\>>*D<rsub|\<nu\>>|)><rsup|-1>>;
  this is a multiplier diagonal in the plaquette orientation. Then, with
  <math|F=<math-up|diag><around|(|D<rsub|a>|)>>,

  <\equation*>
    \<sigma\><rsub|1><rsup|\<ast\>>*D*<space|0.17em>\<sigma\><rsub|1>=F<rsup|-1>-\<rho\><rsup|-1>*F<rsup|-1>*\<tau\>*<space|0.17em>\<tau\><rsup|\<ast\>>*F<rsup|-1>.
  </equation*>

  So <math|d<rsup|\<ast\>>*D*d> is the precision <math|F<rsup|-1>> minimised
  over gauge directions. For the empty history, <math|D=1> (the Wilson
  quadratic form). <em|Sketch:> Lagrange's identity
  <math|<big|sum><rsub|\<mu\>\<less\>\<nu\>>w<rsub|\<mu\>>*w<rsub|\<nu\>>*<around|\||\<tau\><rsub|\<mu\>>*x<rsub|\<nu\>>-\<tau\><rsub|\<nu\>>*x<rsub|\<mu\>>|\|><rsup|2>=<around|(|<big|sum><rsub|a>w<rsub|a><around|\||\<tau\><rsub|a>|\|><rsup|2>|)><around|(|<big|sum><rsub|a>w<rsub|a><around|\||x<rsub|a>|\|><rsup|2>|)>-<around|\||<big|sum><rsub|a>w<rsub|a>*<wide|\<tau\>|\<bar\>><rsub|a>*x<rsub|a>|\|><rsup|2>>,
  with <math|w<rsub|a>=D<rsub|a><rsup|-1>>. The weights and <math|\<rho\>>
  are positive. <em|Lean:> <hlink|<verbatim|rotor_law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L103-L120>,
  <hlink|<verbatim|pulse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L22>,
  <hlink|<verbatim|vault>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L20>,
  <hlink|<verbatim|pink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L54>,
  <hlink|<verbatim|blue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L55>,
  <hlink|<verbatim|top_metric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Heart.lean#L140-L155>.

  <strong|Lemma 4.6 (filled symbols, uniform analyticity).> Fix
  <math|\<kappa\>\<gtr\>0>. Away from <math|p=0> in the real cube, the
  singular formulas become regular combinations. With
  <math|<around|\||\<tau\><rsub|M>|\|><rsup|2>=<big|sum><rsub|a>M<rsup|2>*<around|\||e<rsup|i*p<rsub|a>/M>-1|\|><rsup|2>>:

  <\equation*>
    D<rsub|a>=\<beta\><rsub|a>/<around|\||\<tau\><rsub|M>|\|><rsup|2>,<space|2em>\<rho\>=<around|\||\<tau\><rsub|M>|\|><rsup|4>*h,<space|2em>D<rsub|\<mu\>*\<nu\>>=<around|(|h*<space|0.17em>\<beta\><rsub|\<mu\>>*\<beta\><rsub|\<nu\>>|)><rsup|-1>.
  </equation*>

  Here <math|\<beta\><rsub|a>> is the principal term
  <math|<around|\||\<chi\><rsub|v,a>*<around|(|p/M|)>|\|><rsup|2>> plus
  <math|<around|\||\<tau\><rsub|M>|\|><rsup|2>> times the non-principal and
  noise terms, and <math|h> is a rational combination of filters whose
  denominators stay nonzero on a sufficiently thin cube. The regular formulas
  give <math|\<beta\><rsub|a><around|(|0|)>=h<around|(|0|)>=1>. For each
  <math|j\<geqslant\>4> there are <math|\<theta\>,C,c\<gtr\>0>, depending
  only on <math|\<kappa\>,j>, such that, for all histories of index <math|j>,
  <math|\<beta\><rsub|a>> and <math|h> are analytic and bounded by <math|C>
  on <math|\<cal-C\><rsub|\<theta\>>>, and
  <math|<around|\||\<beta\><rsub|a>|\|>,<around|\||h|\|>\<geqslant\>c> on
  <math|\<cal-C\><rsub|\<theta\>><rsup|\<bbb-R\>>>. Hence <math|D> and
  <math|D<rsup|-1>> lie in a common <math|\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>>,
  uniformly over histories of index <math|j>. <em|Sketch:>

  <\itemize-minus>
    <item>Upper bounds: Lemma 4.3 summed over the aliases.

    <item>Lower bound on <math|\<beta\><rsub|a>>: its principal term (4.3 and
    4.2(c)).

    <item>Lower bound on <math|h>: away from zero use
    <math|<around|\||\<tau\><rsub|M>|\|><rsup|2>*h=<big|sum><rsub|a><around|\||\<tau\><rsub|a>|\|><rsup|2>/\<beta\><rsub|a>>,
    <math|\<beta\><rsub|a>\<leqslant\>C> and
    <math|<around|\||\<tau\>|\|><rsup|2>\<asymp\><around|\||\<tau\><rsub|M>|\|><rsup|2>\<asymp\><around|\||p|\|><rsup|2>>;
    at zero use <math|h<around|(|0|)>=1>.

    <item>Inverses: a lower bound at real momenta plus an analytic bound
    gives a lower bound on a thinner complex cube, so the inverses stay
    analytic.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Train.bulb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L39>,
  <hlink|<verbatim|Train.bend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L43-L44>,
  <hlink|<verbatim|Train.pole_split>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L192-L201>,
  <hlink|<verbatim|Train.lift_bend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L88-L100>,
  <hlink|<verbatim|Train.recover_rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L150-L153>,
  <hlink|<verbatim|Train.bulb_firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L160-L163>,
  <hlink|<verbatim|Train.bend_firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L188-L194>,
  <hlink|<verbatim|heart_banked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Dispatch.lean#L40-L47>,
  <hlink|<verbatim|Moderate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Moderate.lean#L105-L106>.

  <strong|Lemma 4.7 (amended metric).> Fix <math|\<kappa\>\<gtr\>0>,
  <math|j\<geqslant\>4> and <math|\<lambda\>\<geqslant\>0>. For each history
  of index <math|j>, let

  <\equation*>
    H<rsup|-1>=D<rsup|-1>+\<lambda\>*<space|0.17em>X<rsup|\<ast\>>*X,<space|1em>X=d<rsub|2>*D<rsup|-1>,<space|2em>\<cal-T\><rsub|\<lambda\>>=<around|(|1+\<lambda\>*<space|0.17em>X*d<rsub|2><rsup|\<ast\>>|)><rsup|-1><text|on
    3-forms>.
  </equation*>

  Then on every torus: <math|H*H<rsup|-1>=1>, <math|H*d=D*d>,
  <math|X*H=\<cal-T\><rsub|\<lambda\>>*d<rsub|2>>, and
  <math|H,\<cal-T\><rsub|\<lambda\>>> are symmetric. Moreover
  <math|<wide|H|^><around|(|0|)>=1>, and <math|H,H<rsup|-1>,\<cal-T\><rsub|\<lambda\>>,\<cal-T\><rsub|\<lambda\>><rsup|-1>>
  have strip bounds and two-sided bounds at real momenta, with constants
  depending only on <math|\<kappa\>,j,\<lambda\>>. The amendment changes
  <math|H> only away from exact 2-forms, and leaves
  <math|d<rsup|\<ast\>>*H*d=d<rsup|\<ast\>>*D*d> unchanged. <em|Sketch:>

  <\itemize-minus>
    <item><math|X*D*d=d<rsub|2>*d=0>, which gives <math|H*d=D*d>.

    <item><math|<around|(|1+\<lambda\>*X*d<rsub|2><rsup|\<ast\>>|)>*X=d<rsub|2>*H<rsup|-1>>,
    which gives <math|X*H=\<cal-T\><rsub|\<lambda\>>*d<rsub|2>>.

    <item>Uniform bounds <math|a*<space|0.17em>1\<leqslant\>D<rsup|-1>\<leqslant\>A*<space|0.17em>1>
    and <math|<around|\<\|\|\>|X|\<\|\|\>>\<leqslant\>B> give
    <math|a*<space|0.17em>1\<leqslant\>H<rsup|-1>\<leqslant\><around|(|A+\<lambda\>*B<rsup|2>|)>*<space|0.17em>1>
    and hence two-sided bounds for <math|H>. The analogous argument applies
    to <math|1+\<lambda\>*d<rsub|2>*D<rsup|-1>*d<rsub|2><rsup|\<ast\>>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|pledge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L30>,
  <hlink|<verbatim|amend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L31>,
  <hlink|<verbatim|bail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L32>,
  <hlink|<verbatim|treble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L33>,
  <hlink|<verbatim|obligations>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L95-L127>,
  <hlink|<verbatim|pledge_warm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L41-L59>,
  <hlink|<verbatim|insurance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L78-L79>,
  <hlink|<verbatim|forced_amend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L80-L94>.

  <strong|Lemma 4.8 (metric data of every history; III.3.1(a)).> Let
  <math|\<kappa\>\<gtr\>0>, <math|\<lambda\>\<geqslant\>0>,
  <math|j\<geqslant\>4>. There are <math|\<gamma\>,\<sigma\>,\<eta\>,C\<gtr\>0>
  with the following property. For every clip with
  <math|c\<leqslant\>\<gamma\>> and every history of index <math|j>, the
  explicit <math|D,D<rsup|-1>,H,H<rsup|-1>>, together with a positive
  symmetric square root <math|R> of <math|H-c*<space|0.17em>1>, satisfy
  III.3.1(a) with amendment <math|\<lambda\>> and bounds
  <math|\<sigma\>,\<eta\>,C>. These constants depend only on
  <math|\<kappa\>,j,\<lambda\>>. <em|Sketch:>

  <\itemize-minus>
    <item><math|\<gamma\>> is half the real-momentum lower bound of <math|H>,
    so <math|H-c*<space|0.17em>1> has two-sided bounds.

    <item>III.6's square-root theorem gives <math|R\<in\>\<cal-S\>> with
    <math|R<rsup|\<ast\>>*R=H-c*<space|0.17em>1> on every torus.

    <item>Torus bounds follow from symbol bounds, since
    <math|\<Lambda\><rsub|n>> is diagonalised by the momenta
    <math|2*\<pi\>*\<bbb-Z\><rsup|4>/n>.

    <item>The symmetry follows from Lemma 4.3.

    <item><math|D=1> for the empty history by Lemma 4.5.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|bid_bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L69-L120>,
  <hlink|<verbatim|Defined>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L54-L58>,
  <hlink|<verbatim|full_cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L22-L35>,
  <hlink|<verbatim|low_ceiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Ground.lean#L37-L51>,
  <hlink|<verbatim|sworn_metric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signed.lean#L65-L70>.

  <subsection|4.3 Transfer kernels of one
  flight><label|43-transfer-kernels-of-one-flight>

  A flight of index <math|<around|(|j,t|)>> consists of an odd block size
  <math|L\<geqslant\>3>, a fine history <math|v> of index <math|j>, and the
  coarse history (hop <math|<around|(|L,j|)>> after <math|v>) of index
  <math|t\<in\><around|{|j-1,j|}>>.

  <strong|Lemma 4.9 (alias symbols and derivative bounds).> Fix
  <math|\<kappa\>\<gtr\>0> and <math|j,t\<geqslant\>4>. There are
  <math|\<theta\>,\<alpha\>,C\<gtr\>0>, depending only on
  <math|\<kappa\>,j,t>, such that the following holds for every flight of
  index <math|<around|(|j,t|)>>. Its explicit <math|W> and <math|T> are cross
  kernels; at this stage <math|M<rsub|f>=M<rsub|n>=O=0>. Their fibre at
  coarse momentum <math|p> and fine residue <math|r> is

  <\equation*>
    L<rsup|-e>*<big|sum><rsub|\<ell\>>e<rsup|i*q<rsub|\<ell\>>\<cdot\>r>*w<rsub|e><around|(|p,\<ell\>|)>,<space|2em>e=1<around|(|W|)>,<space|1em>e=2<around|(|T|)>,
  </equation*>

  with explicit per-alias symbols built from the filters and from
  <math|\<beta\><rsub|a>,h> of both histories. At the harmonic point
  <math|w<rsub|e><around|(|0,0|)>=1> and <math|w<rsub|e><around|(|0,\<ell\>|)>=0>
  for <math|\<ell\>\<ne\>0>. Each <math|w<rsub|e><around|(|\<cdummy\>,\<ell\>|)>>
  is analytic on <math|\<cal-C\><rsub|\<theta\>>> and bounded by
  <math|C*<big|prod><rsub|a><around|(|1+<around|\||\<ell\><rsub|a>|\|>|)><rsup|-j>>,
  uniformly over flights. Hence, for words <math|u> with
  <math|<around|\||u|\|>\<leqslant\>j-2>,
  <math|\<nabla\><rsub|u>*W\<in\>\<cal-S\><around|(|\<alpha\>,C*L<rsup|-1-<around|\||u|\|>>|)>>
  and <math|\<nabla\><rsub|u>*T\<in\>\<cal-S\><around|(|\<alpha\>,C*L<rsup|-2-<around|\||u|\|>>|)>>.
  <em|Sketch:> A fine difference in direction <math|a> multiplies the alias
  term by <math|e<rsup|i<around|(|q<rsub|\<ell\>>|)><rsub|a>>-1=O<around|(|<around|(|1+<around|\||\<ell\>|\|>|)>/L|)>>.
  The sum <math|<big|sum><rsub|\<ell\>><around|(|1+<around|\||\<ell\>|\|>|)><rsup|<around|\||u|\|>>*<big|prod><rsub|a><around|(|1+<around|\||\<ell\><rsub|a>|\|>|)><rsup|-j>>
  converges for <math|<around|\||u|\|>\<leqslant\>j-2>. In other words, the
  order <math|j> of the smoothing pays for <math|j-2> derivatives. Decay is
  measured on the coarse lattice, so the fine-lattice rate is
  <math|\<alpha\>/L>. <em|Lean:> <hlink|<verbatim|Flight.duo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L24-L29>,
  <hlink|<verbatim|Flight.pilot_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L103-L110>,
  <hlink|<verbatim|Flight.ahead_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Docked.lean#L53-L71>,
  <hlink|<verbatim|Flight.wire_budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Cable.lean#L97-L103>,
  <hlink|<verbatim|secure_both>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L30-L38>,
  <hlink|<verbatim|Secured.propels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Strands.lean#L85-L107>.

  <strong|Lemma 4.10 (exact identities for one flight).> Fix a flight of
  index <math|<around|(|j,t|)>> with <math|t\<geqslant\>4>, a kernel choice
  <math|K>, and any pair of tori with <math|f=c*L>. Then (D1)\U(D4) hold for:

  <\itemize-minus>
    <item><math|W>, <math|T> of the flight and <math|Q> of the step;

    <item><math|D>, <math|D<rprime|'>> the diagonals of the fine and coarse
    histories;

    <item><math|H>, <math|H<rprime|'>> the amended metrics for any amendments
    <math|\<geqslant\>0>.
  </itemize-minus>

  <em|Sketch:>

  <\itemize-minus>
    <item>All operators commute with coarse translations. On the Bloch fibre
    over <math|p>, the identities become identities between per-alias
    symbols, for each alias <math|q=q<rsub|\<ell\>>>:

    <\itemize-minus>
      <item><math|<around|(|\<sigma\><rsub|1><rsup|\<ast\>>*D*\<sigma\><rsub|1>|)><around|(|q|)>*<space|0.17em>W<rsub|\<ell\>>=L<rsup|-3>*h<rsub|1><around|(|q|)><rsup|\<ast\>>*<around|(|\<sigma\><rsub|1><rsup|\<ast\>>*D<rprime|'>*\<sigma\><rsub|1>|)><around|(|p|)>>,
      giving (D1);

      <item><math|\<sigma\><rsub|1><around|(|q|)><rsup|\<ast\>>*T<rsub|\<ell\>>=L<rsup|-3>*h<rsub|1><around|(|q|)><rsup|\<ast\>>*\<sigma\><rsub|1><around|(|p|)><rsup|\<ast\>>>,
      giving (D3);

      <item><math|T<rsub|\<ell\>>*D<rprime|'><around|(|p|)>*\<sigma\><rsub|1><around|(|p|)>=D<around|(|q|)>*\<sigma\><rsub|1><around|(|q|)>*W<rsub|\<ell\>>>,
      giving (D4);

      <item>the alias sum <math|<big|sum><rsub|\<ell\>>L*h<rsub|1><around|(|q<rsub|\<ell\>>|)>*W<rsub|\<ell\>>=1-\<kappa\><rsup|-1>*<around|(|\<sigma\><rsub|1><rsup|\<ast\>>*D<rprime|'>*\<sigma\><rsub|1>|)><around|(|p|)>>,
      giving (D2).
    </itemize-minus>

    <item>Here <math|W<rsub|\<ell\>>=L<rsup|-1>*w<rsub|1><around|(|p,\<ell\>|)>>,
    <math|T<rsub|\<ell\>>=L<rsup|-2>*w<rsub|2><around|(|p,\<ell\>|)>>, and
    <math|h<rsub|r><around|(|q|)>=a<rsub|L><around|(|q|)><rsup|j>*<big|prod><rsub|a\<in\><text|face>><math-up|rail><rsub|L><around|(|q<rsub|a>|)>>
    is the alias symbol of the <math|r>-form average. The forward block
    average has alias row <math|L*h<rsub|1><around|(|q|)>>, and its adjoint
    has alias column <math|L<rsup|-3>*h<rsub|1><around|(|q|)><rsup|\<ast\>>>
    because the fine-to-coarse volume ratio is <math|L<rsup|4>>. The form
    averages intertwine the exterior derivatives:
    <math|h<rsub|r+1><around|(|q|)>*<space|0.17em>L*\<sigma\><rsub|r><around|(|q|)>=\<sigma\><rsub|r><around|(|p|)>*<space|0.17em>h<rsub|r><around|(|q|)>>,
    from <math|L<space|0.17em><math-up|rail><rsub|L><around|(|q|)>*<around|(|e<rsup|i*q>-1|)>=e<rsup|i*L*q>-1>.

    <item>The point <math|p=0> is treated separately: the box filter vanishes
    at the non-principal aliases of <math|0>.

    <item>The identities pass from the fibres to the tori through the
    alias-resolved Fourier transform.

    <item>Replacing <math|D> by the amended <math|H> in (D1)\U(D2) changes
    nothing, since <math|d<rsup|\<ast\>>*H*d=d<rsup|\<ast\>>*D*d>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Flight.tangent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L63-L118>,
  <hlink|<verbatim|diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L44-L56>,
  <hlink|<verbatim|Flight.scaled_tri>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L33-L49>,
  <hlink|<verbatim|hinge_transport>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L60-L63>,
  <hlink|<verbatim|ZeroAlias.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/ZeroAlias.lean>,
  <hlink|<verbatim|pilot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Pilot.lean#L46-L47>,
  <hlink|<verbatim|wire>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Wire.lean#L63>,
  <hlink|<verbatim|script_main>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L122-L139>,
  <hlink|<verbatim|script_cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L141-L156>,
  <hlink|<verbatim|script_dual>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Scripts.lean#L179-L211>.
  <em|(proof read, including the nonzero-alias algebra and harmonic point)>

  <subsection|4.4 The defect and the amendment><label|44-the-defect-and-the-amendment>

  <strong|Lemma 4.11 (unamended defect).> In the setting of 4.10, let
  <math|\<cal-V\>=D<rprime|'><rsup|-1>-T<rsup|\<ast\>>*D<rsup|-1>*T-\<kappa\><rsup|-1>*d*d<rsup|\<ast\>>>
  on <math|\<Omega\><rsup|2><around|(|\<Lambda\><rsub|c>|)>>. Then
  <math|D<rprime|'>*\<cal-V\>*D<rprime|'>> is symmetric, and
  <math|D<rprime|'>*\<cal-V\>*D<rprime|'>*d=0> on every torus. Consequently
  there is an explicit symmetric 3-form kernel <math|C>, decaying uniformly
  over flights of index <math|<around|(|j,t|)>>, with

  <\equation*>
    \<cal-V\>=<around|(|d<rsub|2>*D<rprime|'><rsup|-1>|)><rsup|\<ast\>>*<space|0.17em>C*<space|0.17em><around|(|d<rsub|2>*D<rprime|'><rsup|-1>|)><space|1em><text|on
    every torus.>
  </equation*>

  <em|Sketch:>

  <\itemize-minus>
    <item>By (D4), (D3), (D2): <math|T<rsup|\<ast\>>*D<rsup|-1>*T*D<rprime|'>*d=T<rsup|\<ast\>>*d*W=d*Q*W=d-\<kappa\><rsup|-1>*d*d<rsup|\<ast\>>*D<rprime|'>*d>.
    Hence <math|\<cal-V\>*D<rprime|'>*d=0>.

    <item>A symmetric decaying 2-form kernel <math|A> with <math|A*d=0> on
    every torus equals <math|d<rsub|2><rsup|\<ast\>>*B*d<rsub|2>>, for an
    explicit decaying 3-form kernel <math|B>. This is a lattice Poincaré
    lemma for translation-invariant kernels, proved by an axis-by-axis
    contracting homotopy of the Koszul complex of
    <math|<around|(|e<rsup|i*p<rsub|a>>-1|)><rsub|a>>.

    <item>The hypothesis is needed on all tori, not on one: at a single
    period the harmonic (zero-momentum) forms obstruct the factorisation.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Flight.gap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L33-L35>,
  <hlink|<verbatim|Flight.dep_zero>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L158-L187>,
  <hlink|<verbatim|Double.duplex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L121-L143>,
  <hlink|<verbatim|Flight.fund>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L43>,
  <hlink|<verbatim|Flight.banked_dollars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L215-L227>.
  Quantitative control: <hlink|<verbatim|duplex_stock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lifts.lean#L145-L154>.

  <strong|Lemma 4.12 (amended defect: identity (\<Delta\>)).> In the setting
  of Lemma 4.10, take fine amendment <math|\<mu\>\<geqslant\>0> and coarse
  amendment <math|\<lambda\>\<geqslant\>0>. Then (\<Delta\>) holds on every
  pair of tori, with <math|P=\<cal-P\><rsub|\<mu\>,\<lambda\>>> where

  <\equation*>
    \<cal-P\><rsub|\<mu\>,\<lambda\>>=\<cal-T\><rsub|\<lambda\>><rsup|\<ast\>>*<around*|(|C+\<lambda\>*<space|0.17em>1-\<mu\>*<space|0.17em>S<rsup|\<ast\>>*S|)>*\<cal-T\><rsub|\<lambda\>>.
  </equation*>

  Here <math|S> is the 3-form transfer kernel of the flight, with
  <math|S*<space|0.17em>d<rsub|2>*D<rprime|'><rsup|-1>=d<rsub|2>*D<rsup|-1>*T>,
  and <math|S<rsup|\<ast\>>*S> has strip bounds
  <math|O<around|(|L<rsup|-2>|)>>. <em|Sketch:> Write
  <math|X=d<rsub|2>*D<rsup|-1>> and <math|X<rprime|'>=d<rsub|2>*D<rprime|'><rsup|-1>>.
  Then

  <\equation*>
    H<rprime|'><rsup|-1>-T<rsup|\<ast\>>*H<rsup|-1>*T-\<kappa\><rsup|-1>*d*d<rsup|\<ast\>>=\<cal-V\>+\<lambda\>*X<rprime|'><rsup|\<ast\>>*X<rprime|'>-\<mu\>*<space|0.17em>T<rsup|\<ast\>>*X<rsup|\<ast\>>*X*T.
  </equation*>

  Since <math|X*T=S*X<rprime|'>>, the last term is
  <math|-X<rprime|'><rsup|\<ast\>>*<around|(|\<mu\>*S<rsup|\<ast\>>*S|)>*X<rprime|'>>;
  with Lemma 4.11 the whole expression is
  <math|X<rprime|'><rsup|\<ast\>>*<around|(|C+\<lambda\>-\<mu\>*S<rsup|\<ast\>>*S|)>*X<rprime|'>>.
  Conjugate by <math|H<rprime|'>> and use
  <math|X<rprime|'>*H<rprime|'>=\<cal-T\><rsub|\<lambda\>>*d<rsub|2>> (Lemma
  4.7). <em|Lean:> <hlink|<verbatim|Flight.rebased>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L144-L181>,
  <hlink|<verbatim|Flight.rollFunds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L27-L29>,
  <hlink|<verbatim|Flight.render>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L23-L25>,
  <hlink|<verbatim|Flight.intake>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L136-L149>,
  <hlink|<verbatim|Flight.sale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L90>,
  <hlink|<verbatim|Flight.netted>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L34-L41>,
  <hlink|<verbatim|check_bleep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L57-L58>.

  <strong|Lemma 4.13 (positivity; III.3.4).> The constants and bounds of
  III.3.4 hold uniformly over flights of the fixed index
  <math|<around|(|j,t|)>>. <em|Sketch:>

  <\itemize-minus>
    <item>The strip bound on <math|C> bounds its entries at real momenta, so
    <math|C\<geqslant\>-C<rsub|1>>.

    <item><math|\<mu\>*S<rsup|\<ast\>>*S\<leqslant\>\<mu\>*B/L<rsup|2>\<leqslant\>1>.

    <item>Hence <math|C+\<lambda\>-\<mu\>*S<rsup|\<ast\>>*S\<geqslant\>1> for
    <math|\<lambda\>\<geqslant\>C<rsub|0>=C<rsub|1>+2>.

    <item><math|\<cal-T\><rsub|\<lambda\>><rsup|-1>=1+\<lambda\>*X<rprime|'>*d<rsub|2><rsup|\<ast\>>>,
    with <math|X<rprime|'>=d<rsub|2>*D<rprime|'><rsup|-1>>, has bounded
    entries, so <math|<around|\||x|\|><rsup|2>\<leqslant\>W*<around|\||\<cal-T\><rsub|\<lambda\>>*x|\|><rsup|2>>,
    and <math|<wide|\<cal-P\>|^>\<geqslant\>W<rsup|-1>>.

    <item>The upper bound and the strip bound follow from products of
    strip-bounded kernels.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Flight.absorb_before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L58-L95>,
  <hlink|<verbatim|Flight.frontier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L99-L140>.

  <subsection|4.5 The catalogue><label|45-the-catalogue>

  <strong|Lemma 4.14 (III.3.1).> For every kernel choice <math|K>, a
  catalogue satisfying III.3.1 exists. <em|Sketch:>

  <\itemize-minus>
    <item><em|One hop.> For each <math|<around|(|j,t|)>> there is
    <math|\<lambda\><rsub|0><around|(|j,t|)>> with the following property:
    for every coarse amendment <math|\<lambda\>\<geqslant\>\<lambda\><rsub|0>>
    and fine amendment <math|\<mu\>\<geqslant\>0>, there are rates, constants
    and an integer <math|b\<gtr\>\<mu\>*B<around|(|j,t|)>> for which
    III.3.1(b) holds. The proof combines Lemma 4.13 with Lemma 4.9 at
    <math|e=1,2>.

    <item><em|Assembly.> Set <math|\<lambda\><rsub|j>=max
    <around|(|\<lambda\><rsub|0><around|(|j,j|)>,\<lambda\><rsub|0><around|(|j+1,j|)>|)>>:
    each stage's amendment acts as the coarse amendment of the hops
    <math|<around|(|j,j|)>> and <math|<around|(|j+1,j|)>>, and as the fine
    amendment of <math|<around|(|j,j|)>> and <math|<around|(|j,j-1|)>>. Then:

    <\itemize-minus>
      <item><math|\<alpha\><rsub|j>> is the minimum of the rates of the
      bottom quote (Lemma 4.8 with <math|\<lambda\><rsub|j>>) and of the hops
      <math|<around|(|j,j|)>>, <math|<around|(|j,j-1|)>>;

      <item><math|\<Omega\><rsub|j>> is the corresponding maximum, and
      <math|\<eta\><rsub|j>> the corresponding minimum;

      <item><math|b<rsub|j>=max <around|(|b<around|(|j,j|)>,b<around|(|j,j-1|)>|)>>;

      <item>weaker constants are always admissible.
    </itemize-minus>

    <item>The block size enters only through <math|b<rsub|j>>, which
    guarantees <math|\<lambda\><rsub|j>*B\<leqslant\>L<rsup|2>>. The stronger
    choice <math|L\<geqslant\>b<rsub|j>\<gtr\>\<lambda\><rsub|j>*B<around|(|j,t|)>>
    suffices for each admissible <math|t>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|buys>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L46-L65>,
  <hlink|<verbatim|pledges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L67-L93>.

  <subsection|4.6 Along a schedule: pre-repair, repair,
  output><label|46-along-a-schedule-pre-repair-repair-output>

  <strong|Lemma 4.15 (pre-repair family).> Fix a catalogue of III.3.1 and a
  trajectory with its kernel, satisfying the credit condition. Define:

  <\itemize-minus>
    <item><math|\<cal-B\><rsup|N,i>>: the metric data of Lemma 4.8 for the
    history of level <math|i> in mesh <math|N>, with the clip of level
    <math|i> (allowed by (C1));

    <item><math|W<rsup|N,i>,T<rsup|N,i>>: those of the flight of step
    <math|i>, of index <math|<around|(|J*<around|(|i+1|)>,J<around|(|i|)>|)>>
    (allowed since <math|J<around|(|i|)>\<leqslant\>J*<around|(|i+1|)>\<leqslant\>J<around|(|i|)>+1>).
  </itemize-minus>

  This family satisfies the pre-repair conditions of III.3.2(2):

  <\itemize-minus>
    <item>the bounds, from III.3.1;

    <item>(D1)\U(D4), from Lemma 4.10;

    <item>(\<Delta\>), with <math|P> the rolled kernel;

    <item>the positivity of <math|P>, from III.3.1(b) and (C2).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|shelves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L90-L120>,
  <hlink|<verbatim|stageHop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L64-L65>,
  <hlink|<verbatim|location>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L73>,
  <hlink|<verbatim|destination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74>.

  <strong|Lemma 4.16 (repair; III.10 with III.6's theorems).> For every sheet
  and every table <math|X> there is a table <math|X<rprime|'>> with the
  following property. Every pre-repair family for <math|X> (for a trajectory
  with the sheet's profile and kernel) has a repaired family with the same
  metric data and the same <math|W,T>, which satisfies the output conditions
  for <math|X<rprime|'>>. For step <math|i> the construction is:

  <\enumerate>
    <item><strong|F06> applied to <math|P> from (\<Delta\>): a kernel
    <math|P<rsub|1>> with two-sided bounds at real momenta, a strip bound,
    and <math|d<rsub|2><rsup|\<ast\>>*P<rsub|1>*d<rsub|2>=d<rsub|2><rsup|\<ast\>>*P*d<rsub|2>>
    on every torus.

    <item><strong|F07>: a symmetric decaying square root,
    <math|P<rsub|1>=P<rsub|2><rsup|\<ast\>>*P<rsub|2>>.

    <item><strong|F08>: kernels with the same <math|W,T> and

    <\equation*>
      M<rsub|f>=V*H<rsup|-1>*T*<space|0.17em>V<rprime|'><rsup|\<ast\>>,<space|2em>M<rsub|n>=\<kappa\><rsup|-1/2>*d<rsup|\<ast\>>*V<rprime|'><rsup|\<ast\>>,<space|2em>O=<around*|(|1-\<Pi\>,P<rsub|2>*<space|0.17em>d<rsub|2>*H<rprime|'><rsup|-1>*V<rprime|'><rsup|\<ast\>>|)>,<space|2em>\<Pi\>=V<rprime|'>*H<rprime|'><rsup|-1>*V<rprime|'><rsup|\<ast\>>,
    </equation*>

    with the strip and derivative bounds of III.3.2(3). The constants depend
    only on <math|X>, <math|\<kappa\>> and the sheet's direct clip
    coefficients.

    <item><strong|F09> (algebra) gives (R1)\U(R6). Since
    <math|V<rprime|'><rsup|\<ast\>>*V<rprime|'>=H<rprime|'>>, <math|\<Pi\>>
    is the orthogonal projection onto the range of <math|V<rprime|'>>. Then:

    <\itemize-minus>
      <item>(R1): <math|M<rsub|f><rsup|\<ast\>>*M<rsub|f>+M<rsub|n><rsup|\<ast\>>*M<rsub|n>+O<rsup|\<ast\>>
      O=V<rprime|'>*<around|(|T<rsup|\<ast\>>*H<rsup|-1>*T+\<kappa\><rsup|-1>*d*d<rsup|\<ast\>>+H<rprime|'><rsup|-1>*d<rsub|2><rsup|\<ast\>>*P<rsub|1>*d<rsub|2>*H<rprime|'><rsup|-1>|)>*V<rprime|'><rsup|\<ast\>>+1-\<Pi\>=1>,
      by (\<Delta\>);

      <item>(R2) and (R4) follow from <math|V<rprime|'><rsup|\<ast\>>*V<rprime|'>=H<rprime|'>>;

      <item>(R3) follows from (D4) and <math|H<rprime|'>*d=D<rprime|'>*d>,
      <math|H*d=D*d>;

      <item>(R5) follows from <math|<around|(|1-\<Pi\>|)>*V<rprime|'>=0> and
      <math|d<rsub|2>*d=0>;

      <item>(R6) follows from (D3).
    </itemize-minus>
  </enumerate>

  The second table depends on the sheet only through the direct clip
  coefficients, which enter <math|V,V<rprime|'>>. It can be chosen with
  <math|\<alpha\><rprime|'><rsub|j>\<leqslant\>\<alpha\><rsub|j>>,
  <math|\<Omega\><rprime|'><rsub|j>\<geqslant\>\<Omega\><rsub|j>> and
  unchanged <math|\<eta\><rsub|j>>. <em|Lean:>
  <hlink|<verbatim|Bid.pinning>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L107-L166>,
  <hlink|<verbatim|F06>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L84-L85>,
  <hlink|<verbatim|F07>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L90-L91>,
  <hlink|<verbatim|F08>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L93-L96>,
  <hlink|<verbatim|F09>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L99-L101>,
  <hlink|<verbatim|Replaces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L53-L58>.
  <em|(repair proof and F08\UF09 proofs read)>

  <strong|Lemma 4.17 (III.3.2 and its variant).> The catalogue and repair
  construction give the families and constants asserted in III.3.2, including
  its preliminary-sheet variant. <em|Sketch:> Take the catalogue (4.14), then
  the second table from the repair theorem with III.6's theorems (4.16), then
  the pre-repair family (4.15), then its repair. The explicit formulas and
  the symmetry carry over because the metric data and <math|W,T> are
  unchanged. In the variant, the payment record of the schedule turns
  sheet-level bounds into (C1)\U(C2). A preliminary sheet is handled by
  re-running the construction for a copy of the trajectory with the
  preliminary profile; this preserves the histories and the direct clip
  coefficients. <em|Lean:> <hlink|<verbatim|retained_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>,
  <hlink|<verbatim|retained_presents>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L121-L126>,
  <hlink|<verbatim|before_paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L108-L124>,
  <hlink|<verbatim|credit_from_sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Calendar.lean#L95-L102>.

  <subsection|4.7 All tori><label|47-all-tori>

  <strong|Lemma 4.18 (rigidity of decaying kernels).> Suppose two finite sums
  of products of decaying kernels, or of cross kernels of the same block
  size, define equal matrices on tori <math|\<Lambda\><rsub|c<rsub|k>>>
  (respectively on pairs <math|<around|(|c<rsub|k>,c<rsub|k>*L|)>>) with
  <math|c<rsub|k>\<to\>\<infty\>>. Then they are equal on every torus (pair).
  <em|Sketch:> Sums and products of decaying kernels are decaying kernels, so
  each side is a single kernel. A summable kernel is the limit of its
  periodisations as the period tends to infinity. Dominated convergence
  justifies this coefficient limit; the schedule sides of each fixed step
  tend to infinity. <em|Lean:> <hlink|<verbatim|entry_limit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bank.lean#L49-L67>,
  <hlink|<verbatim|Echo.all>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L77-L81>,
  <hlink|<verbatim|Echo.allAcross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L105-L116>,
  <hlink|<verbatim|Echo.Sound>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L38>,
  <hlink|<verbatim|Echo.schedule_sides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Echo.lean#L118-L119>.

  <strong|Lemma 4.19 (III.3.3).> Every output family of III.3.2 satisfies
  (D1)\U(D4) and (R1)\U(R6) on every torus pair of the same block ratio.
  <em|Sketch:>

  <\itemize-minus>
    <item>(R1)\U(R5) are identities between finite sums of products of
    kernels, with <math|M<rsub|f>> and <math|W> as cross kernels. Apply 4.18
    on the schedule tori.

    <item>(R6) contains <math|Q>. Given (D3) and (R2) at
    <math|<around|(|c,f|)>>, (R6) is equivalent to
    <math|<around|(|V*<space|0.17em>d|)><rsup|\<ast\>>*M<rsub|f>=d<rsup|\<ast\>>*<around|(|T*<space|0.17em>V<rprime|'><rsup|\<ast\>>|)>>,
    which is again an identity between kernels.

    <item>(D1)\U(D4) at arbitrary <math|<around|(|c,f|)>> follow by the same
    argument, because <math|Q> is itself given by a cross kernel (III.10).
    They also follow directly from Lemma 4.10 for any family realising the
    explicit formulas.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|complete_roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L109-L157>,
  <hlink|<verbatim|orthogonal_iff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L87-L98>,
  <hlink|<verbatim|panes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PhysicalNext/RG_NEXT_COMPLETE_REPEATABLE_NONLINEAR_STEP/Pane/Purl.lean#L20-L53>,
  <hlink|<verbatim|universal_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60>.

  <subsection|4.8 Free covariance of the curvature
  (III.3.6)><label|48-free-covariance-of-the-curvature-iii36>

  <strong|Lemma 4.20 (lower bound).> The coercivity bound of III.3.6(a) holds
  uniformly over firm kernels. <em|Sketch:>

  <\itemize-minus>
    <item><math|\<sigma\><rsub|1><rsup|\<ast\>>*\<sigma\><rsub|1>+\<sigma\><rsub|0>*\<sigma\><rsub|0><rsup|\<ast\>>=<around|\||\<tau\>|\|><rsup|2>*<space|0.17em>1>
    on 1-form symbols; this is <math|d<rsup|\<ast\>>*d+d*d<rsup|\<ast\>>=-\<Delta\>>
    in Fourier space.

    <item>A firm <math|f> satisfies <math|<math-up|Re><space|0.17em><around|\<langle\>|x,<wide|f|^><around|(|p|)>*x|\<rangle\>>\<geqslant\>\<eta\><around|\||x|\|><rsup|2>>
    at every real <math|p>: the torus bounds give it at the frequencies
    <math|2*\<pi\>*\<bbb-Z\><rsup|4>/n>, and these are dense; conclude by
    continuity.

    <item>Hence <math|<math-up|Re><space|0.17em><around|\<langle\>|x,\<Phi\><rsub|f><around|(|p|)>*x|\<rangle\>>\<geqslant\>min
    <around|(|\<eta\>,1|)><around|\||\<tau\><around|(|p|)>|\|><rsup|2><around|\||x|\|><rsup|2>>.

    <item><math|<around|\||\<tau\><around|(|p|)>|\|><rsup|2>\<geqslant\>c<rsub|0><around|\||p|\|><rsup|2>>
    for <math|<around|\||p<rsub|a>|\|>\<leqslant\>3*\<pi\>/2>, since
    <math|e<rsup|i*r>\<ne\>1> for <math|0\<less\><around|\||r|\|>\<leqslant\>3*\<pi\>/2>
    (compactness).
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|blade_id>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L41-L57>,
  <hlink|<verbatim|ion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L68-L79>,
  <hlink|<verbatim|real_price>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L94-L100>,
  <hlink|<verbatim|tank_full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L115-L125>.

  <strong|Lemma 4.21 (smooth symbols).> This is III.3.6(c). <em|Sketch:>
  Differentiate the Fourier series termwise and use
  <math|<around|\||y|\|><rsub|1><rsup|n>\<leqslant\>A<rsub|n>*e<rsup|\<alpha\><around|\||y|\|><rsub|1>>>,
  with <math|A<rsub|n>> as in III.3.6(c). <em|Lean:>
  <hlink|<verbatim|radial_prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Plain.lean#L101-L133>.

  <strong|Lemma 4.22 (comparison with the continuum).> This is III.3.6(b).
  Let <math|S<rsup|k><around|(|U|)>> be the class of families with
  <math|<around|\<\|\|\>|D<rsup|n>*g|\<\|\|\>>\<leqslant\>C<rsub|n><around|\||p|\|><rsup|k-n>>
  on <math|U>, uniformly over the family. Sums preserve a fixed order,
  products add orders, and inversion reverses the order when the rescaled
  matrix has a uniform coercivity bound. <em|Sketch:>

  <\itemize-minus>
    <item><math|\<tau\>-i*p\<in\>S<rsup|2>> (Taylor at <math|0>), and
    <math|<wide|f|^>-1\<in\>S<rsup|1>> (since
    <math|<wide|f|^><around|(|0|)>=1>, and by Lemma 4.21).

    <item>Hence <math|\<Phi\><rsub|f>\<in\>S<rsup|2>> and
    <math|\<Phi\><rsub|f>-<around|\||p|\|><rsup|2>*<space|0.17em>1\<in\>S<rsup|3>>.

    <item>By (a) and the resolvent identity,
    <math|\<Phi\><rsub|f><rsup|-1>\<in\>S<rsup|-2>> and
    <math|\<Phi\><rsub|f><rsup|-1>-<around|\||p|\|><rsup|-2>*<space|0.17em>1\<in\>S<rsup|-1>>.

    <item>Hence <math|G<rsub|f>\<in\>S<rsup|0>> and
    <math|G<rsub|f>-G<rsub|\<infty\>>\<in\>S<rsup|1>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|gem_quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L110-L120>,
  <hlink|<verbatim|Weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean#L39-L41>,
  <hlink|<verbatim|Value>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean#L17>.
  <em|(proof read, including the symbol-class product and inverse estimates)>

  <subsection|4.9 Calculus lemmas (III.3.7)><label|49-calculus-lemmas-iii37>

  <strong|Lemma 4.23 (nonlinear calculus).> The statements of III.3.7 hold
  under their respective hypotheses. <em|Sketch:>

  <\itemize-minus>
    <item><strong|(a)> Split at <math|<around|\||x|\|><rsub|1>=L>.

    <\itemize-minus>
      <item>For <math|<around|\||x|\|><rsub|1>\<leqslant\>L>: localised
      Newton remainder estimate, <math|<around|\<\|\|\>|p<around|(|x|)>-<big|sum><rsub|i\<less\>k>P<rsub|i><around|(|x|)>|\<\|\|\>>\<leqslant\>M<rprime|'>*<around|(|1+<around|\||x|\|><rsub|1>|)><rsup|k>>
      with <math|M<rprime|'>> the bound on <math|k>-th differences.

      <item>For <math|<around|\||x|\|><rsub|1>\<gtr\>L>: bound <math|p> and
      the pieces directly, using <math|L<rsup|-1-i>*<around|(|1+<around|\||x|\|>|)><rsup|i>\<leqslant\>L<rsup|-1-k>*<around|(|1+<around|\||x|\|>|)><rsup|b>>
      when <math|L<rsup|-1>*<around|(|1+<around|\||x|\|>|)>\<geqslant\>1>.
    </itemize-minus>

    <item><strong|(b)> Substitute <math|z\<mapsto\><big|sum><rsub|v>t<rsup|Y<rsub|v>>*p<rsub|v>*z>
    in the Taylor polynomial of <math|f> and read off each coefficient of
    <math|t<rsup|r>> for <math|r\<leqslant\>d>. Rescaling <math|z> by an
    independent scalar separates the ordinary Taylor degrees, and
    polarization recovers the multilinear coefficients. All weighted
    components of weight <math|\<leqslant\>d> of every Taylor coefficient
    vanish. A component of weight <math|\<gtr\>d> vanishes on the given
    inputs by the support condition.

    <item><strong|(c)> Locality restricts the logarithmic link fields to
    links with both endpoints in <math|X>. Gauge invariance identifies
    <math|u> near the identity with its pullback by the map taking a site
    gauge and a radial connection jet to gauged logarithmic holonomies. Part
    (b) gives weighted vanishing for this pullback. The derivative of that
    map covers every polynomial link field of degree at most <math|p-1>: part
    (d) supplies the highest degree, line integration changes it only by
    lower degrees, and induction removes the error. Its higher derivatives
    preserve the total weight. Faà di Bruno and induction on the number of
    inputs therefore transfer vanishing to <math|u\<circ\>exp>. Non-wrapping
    and <math|n\<geqslant\>2> ensure that the centred lifts of adjacent sites
    differ by a unit vector.

    <item><strong|(d)> <math|r=<around|(|j+2|)><rsup|-1>*<big|sum><rsub|a>x<rsub|a>*Q<rsub|a>>
    is homogeneous of degree <math|j+2>, and Euler's identity gives
    <math|<big|sum><rsub|a>x<rsub|a>*<around|(|Q<rsub|a>-\<partial\><rsub|a>*r|)>=0>.

    <item><strong|(e)> On the unit ball, <math|<around|\<\|\|\>|g*<around|(|s*v|)>-g<around|(|0|)>|\<\|\|\>>\<leqslant\>s\<\|\|\>g<around|(|v|)>-g<around|(|0|)>\<\|\|\>+Q*<around|(|1-s|)><around|\<\|\|\>|v|\<\|\|\>><rsup|2>>
    for the matrix <math|g> of the plaquette holonomy of four link variables
    (second-order Taylor bound). Hence the chord distance at <math|s*v> is at
    most <math|s*\<tau\>+<around|(|1-s|)>*\<tau\>>.
  </itemize-minus>

  <em|Lean:> see III.3.7; <hlink|<verbatim|Maps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Mom.lean#L43-L52>,
  <hlink|<verbatim|covers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Routes.lean#L63-L127>,
  <hlink|<verbatim|attenuation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MultiNext/SIGNED_SOURCE_CONTINUATION/Mediator.lean#L70-L98>,
  <hlink|<verbatim|testLinks>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L74-L75>.
  <em|(proof read for (a)\U(e), including the moment-space definition and
  transfer argument)>

  <subsection|4.10 Auxiliary results><label|410-auxiliary-results>

  Three auxiliary packages concern local observables and equation spaces:

  <\itemize-minus>
    <item><strong|Corrected observables.> An exact identity recovering
    holonomy-jet probes from the coefficients of corrected observables
    (<hlink|<verbatim|Screen.reproduces>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/CORRECTED_LIFT_COEFFICIENTS/Original.lean#L134-L146>).
    Used by the rank-covariance part of III.11, by VII.2 and by VII.4.

    <item><strong|Equation projections.> Orthogonal projections onto a
    finite-dimensional equation subspace and its complement
    (<hlink|<verbatim|drop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Frame.lean#L104-L105>,
    <hlink|<verbatim|retain>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Frame.lean#L108-L109>).
    The additional criterion <hlink|<verbatim|spectral_bank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/CUTOFF_PROJECTORS/Bank.lean#L161-L169>
    gives spectral separation under construction and comparison hypotheses,
    exact top-jet tests, and approximation by a fixed triangular model on
    finitely many probes.

    <item><strong|Local jet vanishing.> Vanishing of test-jet derivatives
    below the engineering degree for non-unit basis observables, assuming
    their local section is readable (<hlink|<verbatim|Speeds.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean>,
    <hlink|<verbatim|canon_first>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/ProofPorts/GRID_RENEWED_RESERVES/Speeds.lean#L37-L49>).
    Used in the nonlinear step of III.10.
  </itemize-minus>

  <em|(statements read; the coefficient identity and jet-vanishing proofs
  read)>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <\itemize-minus>
    <item><strong|Uniformity.> The algebraic identities must be accompanied
    by bounds uniform over histories of any length and over all block sizes,
    with the kernel choice and stage index fixed. The mechanism is in Lemmas
    4.2\U4.3:

    <\itemize-minus>
      <item>geometric dilation along the history;

      <item>a lower bound on the principal alias, with an exponent linear in
      <math|M/L>;

      <item><math|J>-fold smoothing, which gives
      <math|<big|prod><rsub|a><around|(|1+<around|\||\<ell\><rsub|a>|\|>|)><rsup|-J>>
      alias decay and therefore <math|J-2> derivatives on <math|W,T>.
    </itemize-minus>

    <item><strong|Positivity is proved only at real momenta.>
    <math|<around|\||\<tau\>|\|><rsup|-2>> is never estimated on a strip.
    Every symbol is put in a filled form (Lemma 4.6) whose denominators are
    bounded below at real momenta, and inverses are taken on a thinner
    complex cube. The estimates use the Banach algebra of exponentially
    decaying kernels and its analytic symbols.

    <item><strong|Unusual features.>

    <\itemize-minus>
      <item>The amendment <math|\<lambda\><rsub|j>> (Lemma 4.7) changes the
      inverse metric. It modifies the metric only off exact 2-forms, so
      <math|d<rsup|\<ast\>>*H*d> is unchanged, and it exists only to make the
      defect's 3-form factor positive.

      <item><math|L> enters the catalogue only through
      <math|\<lambda\><rsub|j>*B\<leqslant\>L<rsup|2>>.

      <item>The second table depends on the sheet through its direct clip
      coefficients.

      <item>The factorisation of the defect (Lemma 4.11) needs the identities
      on all tori, because of the harmonic forms.

      <item>For explicit families, <hlink|<verbatim|universal_diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/PRICED_KERNELS/Tori.lean#L46-L60>
      gives the diagonal identities directly. The output conditions alone
      give them by rigidity.
    </itemize-minus>

    <item><strong|Units.> Decay is in the <math|\<ell\><rsup|1>> norm, on the
    lattice where the kernel acts. For <math|W,T,M<rsub|f>> that is the
    coarse lattice, so the fine-lattice rate is <math|\<alpha\>/L>, with
    amplitudes <math|L<rsup|-1>>, <math|L<rsup|-2>> and an extra
    <math|L<rsup|-1>> per fine difference. These are the scalings of
    Balaban's background field: smooth on scale <math|L>.

    <item><strong|Statement strength.> III.3.2 is an existence statement
    whose output is a package of bounds and identities. Later units use
    (R1)\U(R6), the floors and the strip bounds. The repaired family retains
    the pre-repair metric data and <math|W,T>, so the defect identity and
    positivity remain available, although they are not fields of the output
    conditions.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean (glossary)>>|<cell|<strong|Meaning>>>|<row|<cell|<math|R>,
  <math|<wide|R|^>>, <math|R<rsub|n>>; <math|\<cal-S\><around|(|\<alpha\>,\<Omega\>|)>>>|<cell|<hlink|<verbatim|Row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22>,
  <hlink|<verbatim|Row.strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L26>>|<cell|translation-invariant
  kernel, symbol, action on <math|\<Lambda\><rsub|n>>; strip
  bound>>|<row|<cell|cross kernel>|<cell|<hlink|<verbatim|Cross>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L26>,
  <hlink|<verbatim|installed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L35>>|<cell|coarse-to-fine
  kernel and its action>>|<row|<cell|<math|<math-up|plank><rsub|M>,<math-up|rail><rsub|M>,a<rsub|L>,a<rsub|L><rsup|J>>>|<cell|<hlink|<verbatim|plank>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L38>,
  <hlink|<verbatim|rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Lines.lean#L34>,
  <hlink|<verbatim|area>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L18>,
  <hlink|<verbatim|massFilter>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L23>>|<cell|line,
  box and <math|J>-fold box filters>>|<row|<cell|history <math|v>, dilation
  <math|M<rsub|v>>, filter <math|s<rsub|v>>>|<cell|<hlink|<verbatim|Train>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L22-L24>,
  <hlink|<verbatim|Train.smooth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Train.lean#L36>>|<cell|finite
  history of block averages>>|<row|<cell|flight of index
  <math|<around|(|j,t|)>>>|<cell|<hlink|<verbatim|Flight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22-L29>,
  <hlink|<verbatim|Flight.land>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L35>>|<cell|one
  step: block size, fine history, coarse history>>|<row|<cell|<math|D<rsub|a>>;
  <math|\<rho\>>; <math|\<beta\><rsub|a>>,
  <math|h>>|<cell|<hlink|<verbatim|Train.levelD>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L133-L134>,
  <hlink|<verbatim|D_feedback>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Feed.lean#L154-L156>;
  <hlink|<verbatim|Train.rho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L46>;
  <hlink|<verbatim|Train.bulb>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L39>,
  <hlink|<verbatim|Train.bend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Bend.lean#L43-L44>>|<cell|1-form
  covariance; gauge factor; filled symbols>>|<row|<cell|<math|D>,
  <math|D<rsup|-1>>>|<cell|<hlink|<verbatim|pink>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L54>,
  <hlink|<verbatim|blue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L55>>|<cell|diagonal
  2-form multiplier, inverse>>|<row|<cell|<math|H<rsup|-1>>, <math|H>;
  <math|\<cal-T\><rsub|\<lambda\>>>; <math|\<lambda\>>>|<cell|<hlink|<verbatim|pledge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L30>,
  <hlink|<verbatim|amend>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L31>;
  <hlink|<verbatim|treble>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Amend.lean#L33>>|<cell|amended
  inverse metric, metric; 3-form factor; amendment>>|<row|<cell|metric data
  <math|\<cal-B\>>, <math|V>>|<cell|<hlink|<verbatim|Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35-L40>,
  <hlink|<verbatim|Bed.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L49-L51>,
  <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>>|<cell|<math|<around|(|D,D<rsup|-1>,H,H<rsup|-1>,R|)>>;
  <math|V=<around|(|<sqrt|c>*<space|0.17em>1,R|)>>>>|<row|<cell|transfer
  kernels <math|<around|(|W,T,M<rsub|f>,M<rsub|n>,O|)>>>|<cell|<hlink|<verbatim|Towers>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L70-L75>
  (<verbatim|A0>, <verbatim|T>, <verbatim|mf>, <verbatim|mn>, <verbatim|o>),
  <hlink|<verbatim|Flight.duo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Primal.lean#L24-L29>>|<cell|background-field
  map, curvature transport, isometry blocks>>|<row|<cell|(D1)\U(D4);
  (R1)\U(R6); (\<Delta\>)>|<cell|<hlink|<verbatim|Towers.Diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L82-L86>,
  <hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>;
  <hlink|<verbatim|Towers.Roll>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L88-L96>;
  <hlink|<verbatim|Bleeps>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L32>>|<cell|identities
  of one step>>|<row|<cell|<math|C>, <math|S>,
  <math|\<cal-P\><rsub|\<mu\>,\<lambda\>>>>|<cell|<hlink|<verbatim|Flight.fund>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Sell.lean#L43>,
  <hlink|<verbatim|Flight.sale>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Curl.lean#L90>,
  <hlink|<verbatim|Flight.rollFunds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Eject.lean#L27-L29>>|<cell|unamended
  3-form defect, 3-form transport, rolled 3-form
  kernel>>|<row|<cell|derivative bounds>|<cell|<hlink|<verbatim|Donate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L21-L22>,
  <hlink|<verbatim|Towers.Deep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L111-L114>>|<cell|<math|\<nabla\><rsub|u>>
  bounds with <math|L<rsup|-1-<around|\<lvert\>|u|\<rvert\>>>>,
  <math|L<rsup|-2-<around|\<lvert\>|u|\<rvert\>>>>>>|<row|<cell|positive on
  <math|<math-up|ran><space|0.17em>\<sigma\><rsub|2>>; two-sided at real
  momenta>|<cell|<hlink|<verbatim|Reaches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L34-L36>,
  <hlink|<verbatim|Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L38-L40>>|<cell|positivity
  conditions on 3-form kernels>>|<row|<cell|kernel family; pre-repair; output
  conditions>|<cell|<hlink|<verbatim|Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121>;
  <hlink|<verbatim|Craft.Rack>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Craft.lean#L63-L73>;
  <hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>>|<cell|metric
  data and transfer kernels for all <math|<around|(|N,i|)>>>>|<row|<cell|explicit
  formulas; credit condition>|<cell|<hlink|<verbatim|Present>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L82-L85>;
  <hlink|<verbatim|Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88>>|<cell|(III.3.2(1));
  (C1)\U(C2)>>|<row|<cell|catalogue; price
  table>|<cell|<hlink|<verbatim|Catalog>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Priced.lean#L29-L33>;
  <hlink|<verbatim|MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128>>|<cell|constants
  fixed before <math|L>>>|<row|<cell|hypercubic symmetry of
  <math|d<rsup|\<ast\>>*H*d>>|<cell|<hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>>|<cell|invariance
  under signed permutations>>|<row|<cell|firm kernel; <math|\<Phi\><rsub|f>>;
  <math|G<rsub|f>>; <math|G<rsub|\<infty\>>>>|<cell|<hlink|<verbatim|Firm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Floor.lean#L17-L21>;
  <hlink|<verbatim|fuel>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Core.lean#L62>;
  <hlink|<verbatim|garnet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L15>;
  <hlink|<verbatim|pearl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Alloy.lean#L17>>|<cell|curvature
  covariance, lattice and continuum>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Gaussian interpretation and zero modes.> Lemma 4.4 verifies
    the covariance recursion away from zero momentum. A measure-level
    derivation requires a stated treatment of gauge directions and harmonic
    modes; neither the auxiliary singular symbols nor III.1's
    <hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103>
    alone specifies that Gaussian measure. The identification with an
    iterated Feynman-gauge covariance remains probable.

    <item><strong|Change of Gaussian variables.> The quadratic splitting in
    Ÿ1 follows from the identities. Its use as a change of integration
    variables, including null directions and determinants, belongs to III.4
    and III.10 and is not established by this unit alone.

    <item><strong|Auxiliary spectral criterion.> The finite-test hypotheses
    of the cited cutoff-projector criterion must be supplied at its point of
    use. Its statement does not assert that a trajectory satisfies them.

    <item><strong|Further proof detail.> The analytic coefficient-extraction
    machinery underlying the strip bounds and the deeper positivity and
    square-root proofs F06\UF07 are inputs here; their full proofs remain
    outside this account. The symbol-class calculations in
    <hlink|<verbatim|Gem.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Gem.lean>
    and <hlink|<verbatim|Weight.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/FREE_COVARIANCE_KP/KP/Weight.lean>
    support the covariance comparison, but no position-space continuum limit
    or contact-term statement is asserted in III.3.6.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.2 Choosing the constants: the order
  of choice and the RG schedule (notes)|III-2.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-3.tm>|<hlink|III.4 Gaussian integration: change of
  Gaussian sector, determinants, window law (notes) \<rightarrow\>|III-4.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.3. Free lattice kernels and covariances \V
    detailed notes \U Yang\UMills informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|8>>
    <associate|3-strategy|<tuple|3|9>>
    <associate|4-steps|<tuple|4|10>>
    <associate|41-filters-and-histories|<tuple|4.1|10>>
    <associate|410-auxiliary-results|<tuple|4.10|18>>
    <associate|42-explicit-metric-data|<tuple|4.2|11>>
    <associate|43-transfer-kernels-of-one-flight|<tuple|4.3|12>>
    <associate|44-the-defect-and-the-amendment|<tuple|4.4|14>>
    <associate|45-the-catalogue|<tuple|4.5|15>>
    <associate|46-along-a-schedule-pre-repair-repair-output|<tuple|4.6|15>>
    <associate|47-all-tori|<tuple|4.7|17>>
    <associate|48-free-covariance-of-the-curvature-iii36|<tuple|4.8|17>>
    <associate|49-calculus-lemmas-iii37|<tuple|4.9|18>>
    <associate|5-where-the-difficulty-lies|<tuple|5|19>>
    <associate|6-notation|<tuple|6|20>>
    <associate|7-what-remains-unexplained|<tuple|7|21>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|15>>
    <associate|auto-11|<tuple|4.7|17>>
    <associate|auto-12|<tuple|4.8|17>>
    <associate|auto-13|<tuple|4.9|18>>
    <associate|auto-14|<tuple|4.10|18>>
    <associate|auto-15|<tuple|5|19>>
    <associate|auto-16|<tuple|6|20>>
    <associate|auto-17|<tuple|7|21>>
    <associate|auto-2|<tuple|2|8>>
    <associate|auto-3|<tuple|3|9>>
    <associate|auto-4|<tuple|4|10>>
    <associate|auto-5|<tuple|4.1|10>>
    <associate|auto-6|<tuple|4.2|11>>
    <associate|auto-7|<tuple|4.3|12>>
    <associate|auto-8|<tuple|4.4|14>>
    <associate|auto-9|<tuple|4.5|15>>
    <associate|iii3-free-lattice-kernels-and-covariances--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Filters and histories
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Explicit metric data
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Transfer kernels of one flight
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 The defect and the amendment
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The catalogue
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 Along a schedule: pre-repair, repair,
      output <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.7 All tori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.8 Free covariance of the curvature
      (III.3.6) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.9 Calculus lemmas (III.3.7)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|4.10 Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>