<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|../../index.tm><ym-nav-sep><hlink|The
  theorem|../../statement.tm><ym-nav-sep><hlink|The proof in one
  reading|../../summary.tm><ym-nav-sep><hlink|Architecture|../index.tm><ym-nav-sep><hlink|Units|../units.tm><ym-nav-sep><hlink|Manuscript|../../manuscript/index.tm><ym-nav-sep><hlink|Glossary|../../glossary.tm><ym-nav-sep><hlink|FAQ|../../faq.tm><ym-nav-sep><hlink|Work
  items|../work-items.tm><ym-nav-sep><hlink|Data|../../data/index.tm><ym-nav-sep><hlink|Method|../../method.tm><ym-nav-sep><hlink|Provenance|../../provenance.tm><ym-nav-sep><hlink|Changes|../../CHANGELOG.tm>>

  <ym-unit-nav|<hlink|\<leftarrow\> III.13 Alternative construction: one
  Wilson family for all labels (notes)|III-13.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-14.tm>|<hlink|III.15 Cost accounting for observables
  and the remainder comparison (notes) \<rightarrow\>|III-15.tm>>

  <ym-title|III.14. The construction run: flat representations and the
  ultraviolet rate \V detailed notes><label|iii14-the-construction-run-flat-representations-and-the-ultraviolet-rate--detailed-notes>

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

    <with|par-left|1tab|4.1 Flat representations and their propagation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|4.2 Choice of widths and passage to position space
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|4.3 Uniqueness of the Gaussian part; the three recipe
    components <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|4.4 Realizing the recipe on a run
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|4.5 The run <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|4.6 The packages behind the numerical floors
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5. Where the
    difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6. Notation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7. What remains
    unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>
  </table-of-contents>

  <\quotation>
    The full account of unit III.14: every proposition with its proof sketch,
    checked against the Lean in two rounds and edited. The condensed outline
    and the map of the Lean are on the <hlink|unit page|../units/III-14.tm>.
  </quotation>

  <hlink|Unit page|../units/III-14.tm> <ym-middot> <hlink|All
  units|../units.tm> <ym-middot> <hlink|Overview|../index.tm>

  <strong|Part:> III, Ultraviolet construction (renormalization group).
  <strong|Lean:>

  <\itemize-minus>
    <item>the endpoint <hlink|<verbatim|YM/Independent/ConstructionRun.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean>;

    <item>the native component recipe <hlink|<verbatim|YM/Integration/NativeComponentRecipe.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean>
    and <hlink|<verbatim|ActualRunNativeComponentRecipe.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean>;

    <item>the flat-representation chain <hlink|<verbatim|YM/RG08/Flat/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat>,
    <hlink|<verbatim|YM/RG08/Packets/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets>
    and <hlink|<verbatim|YM/RG08/Rate/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate>;

    <item>the local-estimate package of <hlink|<verbatim|YM/RG12/Burst/Wardrobe.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean>;

    <item>the packages that define the numerical floors of the recipe:
    <hlink|<verbatim|YM/RG08/Redo/>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo>,
    <verbatim|Yamen/>, <verbatim|Sideshow/>, <verbatim|Necks/>,
    <verbatim|Rudder/>, <verbatim|Room/>, <verbatim|Weald/>,
    <verbatim|Wisp/>, <verbatim|Trill/>, <verbatim|Halo/>, <verbatim|Line/>,
    \<ldots\> (Ÿ4.6).
  </itemize-minus>

  <strong|Size:> 14,290 lines in the main-theorem closure (2,509
  declarations).

  The unit selects the construction run and proves a quantitative limit
  theorem for its Gaussian quadratic part.

  <\itemize-minus>
    <item><strong|The endpoint.> For a compact matrix gauge group <math|G>
    with simple nonabelian Lie algebra and a penalty <math|b\<gtr\>0>, it
    selects a <em|run>: the Wilson family of the main theorem with its scale
    and extraction data. The run satisfies the <em|funded> condition of
    III.15 and carries the <em|native component recipe>.

    <item><strong|The Gaussian limit.> At each fixed stage, the order-zero
    quadratic kernel converges as the ultraviolet cutoff is removed, with a
    power rate in the ratio of lattice spacings (Proposition III.14.3). This
    is one of three components of the recipe.
  </itemize-minus>

  <strong|Use in the main theorem.> VIII.1
  (<hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>)
  uses the run, its penalty, the pillars and the funded property. It discards
  the attached-recipe conjunct.

  The selection theorem of III.2 accepts any nonempty family of demands. Here
  the demand is a recipe, with lower bounds on the block factors and
  numerical requests on the running coupling. The Gaussian limit is therefore
  an additional property of the selected run; VIII.1 does not invoke it
  separately. Replacing this selection by one with fewer demands is a
  separate question (Ÿ7).

  <section|1. What this unit proves><label|1-what-this-unit-proves>

  <strong|Conventions.> We use the level systems and sufficiency condition of
  III.1. Throughout, <math|G> is a compact matrix gauge group; \Psimple\Q
  means that its real Lie algebra is simple and nonabelian.

  <\itemize-minus>
    <item><strong|Level system.> A level system <math|\<cal-L\>> fixes stages
    <math|i\<in\>\<bbb-N\>> (finer as <math|i> grows), odd block factors
    <math|L<rsub|i>\<geqslant\>3> for the step <math|i+1\<to\>i>, and
    spacings <math|a<rsub|0>=1>, <math|a<rsub|i+1>=a<rsub|i>/L<rsub|i>>, with
    log-scales <math|s<rsub|i>=log <around|(|1/a<rsub|i>|)>>. Its smoothing
    indices satisfy <math|J<rsub|i>\<leqslant\>J<rsub|i+1>\<leqslant\>J<rsub|i>+1>.
    Write <math|\<ell\><rsub|j>> for the block factor assigned to smoothing
    index <math|j>, so <math|L<rsub|i>=\<ell\><rsub|J<rsub|i+1>>>. The level
    system also fixes the block-spin kernel with penalty <math|b\<gtr\>0> and
    the reference inverse coupling <math|<wide|\<beta\>|^><rsub|i>=<wide|\<beta\>|\<bar\>>+s<rsub|G>*s<rsub|i>\<gtr\>1>,
    where <math|s<rsub|G>=11*C<rsub|G>/<around|(|24*\<pi\><rsup|2>|)>>
    (<hlink|<verbatim|hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>,
    <hlink|<verbatim|slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>).
    The remaining compatibility conditions are those of III.1.

    <item><strong|Cutoff.> "Cutoff <math|N>" means the lattice of spacing
    <math|a<rsub|N>>, renormalized through stages <math|N,N-1,\<ldots\>>.

    <item><strong|Horizon.> A horizon <math|H> assigns plaquette-metric and
    transfer data to each cutoff and stage. Write
    <math|M<rsup|\<infty\>><rsub|N,i>> for its translation-invariant metric
    kernel on <math|\<bbb-Z\><rsup|4>>, <math|<wide|M|^><rsub|N,i><around|(|\<xi\>|)>>
    for its Fourier symbol, and <math|M<rsup|\<bbb-T\>><rsub|N,i>> for its
    periodization. On a torus <math|\<bbb-T\>>, the Gaussian quadratic form
    on 1-forms has matrix <math|\<cal-K\><rsup|\<bbb-T\>><rsub|N,i>=d<rsup|\<top\>>*M<rsup|\<bbb-T\>><rsub|N,i>*d>.

    <item><strong|Price map and sufficiency.> A price map
    <math|P=<around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>,\<eta\><rsub|j>|)><rsub|j>>
    specifies positive strip widths <math|\<alpha\><rsub|j>>, upper bounds
    <math|\<Omega\><rsub|j>> and positive coercivity bounds
    <math|\<eta\><rsub|j>>. The full sufficiency condition of III.1 includes
    strip and derivative bounds for all metric and transfer data, inverse and
    factorization identities, symmetry and coercivity on every torus, the
    background-field and fluctuation identities between consecutive stages,
    and the bare terminal condition. In particular, a sufficient horizon
    satisfies <math|<wide|M|^><rsub|N,i><around|(|0|)>=1> and
    <math|\<cal-K\><rsup|\<bbb-T\>><rsub|N,N>=d<rsup|\<top\>>*d>.

    <item><strong|Position-space kernel.>
    <math|\<cal-O\><rsup|H><rsub|N,i>=d<rsup|\<top\>>*M<rsup|\<infty\>><rsub|N,i>*d>
    is the quadratic kernel on the links of <math|\<bbb-Z\><rsup|4>>
    (<hlink|<verbatim|output>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L18>).
    This is the Hessian convention: no factor <math|1/2> is included in
    <math|\<cal-O\>>.

    <item><strong|Kernel norms.> Let <math|x<around|(|u|)>> be the base point
    of a link or plaquette <math|u>. For link kernels, put
    <math|<around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>=sup<rsub|u>
    sup<rsub|\<phi\>> <big|sum><rsub|y\<in\>\<bbb-Z\><rsup|4>><around|\||F<around|(|u,<around|(|y,\<phi\>|)>|)>|\|>*e<rsup|\<sigma\>*<around|\||x<around|(|u|)>-y|\|><rsub|1>>>.
    For plaquette kernels, put <math|<around|\<lVert\>|B|\<rVert\>><rsup|<math-up|pl>><rsub|\<sigma\>>=sup<rsub|u>
    <big|sum><rsub|v\<in\>\<bbb-Z\><rsup|4>\<times\>\<cal-F\>><around|\||B<around|(|u,v|)>|\|>*e<rsup|\<sigma\>*<around|\||x<around|(|u|)>-x<around|(|v|)>|\|><rsub|1>>>,
    where <math|\<cal-F\>> is the set of plaquette orientations. The latter
    sum includes all target orientations.

    <item><strong|Age.> <math|\<Lambda\><rsub|k,i>=5+log
    <wide|\<beta\>|^><rsub|k>+<around|\||s<rsub|i>-s<rsub|k>|\|>> is the age
    of stage <math|i> seen from a reporting scale <math|k>.
  </itemize-minus>

  <strong|Proposition III.14.1 (the construction run).> Let <math|G> be
  simple and <math|b\<gtr\>0>. There exist a run <math|R>, a campaign
  <math|T> for <math|R> and pillars <math|W> for <math|<around|(|R,T|)>> such
  that:

  <\enumerate>
    <item>the penalty of the block-spin kernel of <math|R> equals <math|b>;

    <item><math|R> satisfies the full <em|funded> condition of III.15
    relative to the local-estimate package <math|\<Delta\><rsub|10>>. Its
    thirteen clauses (Ÿ6) include the prescribed local estimates,
    <math|Q<around|(|i|)>\<to\>\<infty\>>, support exponent <math|100> at
    every stage, and the extraction, OPE and thermal conditions. The
    selection uses <math|Q<around|(|i|)>=i+2>;

    <item>the native component recipe is <em|attached> to <math|R>. There are
    a sheet <math|s>, a price map <math|q>, a recipe <math|C> for <math|s>
    (Proposition III.14.2) and floors <math|n\<geqslant\>max
    <around|(|n<rsub|s>,E<rsub|C>|)>>, where <math|n<rsub|s>> is the sheet's
    floor and <math|E<rsub|C>> the combined recipe floor of Lemma 4.14, such
    that:

    <\itemize-minus>
      <item><math|R> is built on <math|s> with floors raised to <math|n>,
      with the primary price map <math|P<rsub|s,q>> of III.12;

      <item>both countable request families, before and after the block
      factors are chosen, satisfy the eventual bounds of Lemma 4.16; the
      recipe's post-length bill <math|B<rsub|C>> also satisfies
      <math|B<rsub|C><around|(|\<ell\>,J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>>
      for every <math|m>;

      <item>the realized recipe (Lemma 4.14) holds on <math|R>'s own levels
      and horizon.
    </itemize-minus>
  </enumerate>

  <em|Status:> theorem. A run is fixed by choice as
  <hlink|<verbatim|fundedRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L30-L31>.

  <em|Lean:> <hlink|<verbatim|YM.Independent.constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>;
  <hlink|<verbatim|R2I.Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>;
  <hlink|<verbatim|garment10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63>;
  <hlink|<verbatim|Campaign.Pillars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>;
  <hlink|<verbatim|ActualRunNativeComponentRecipe.Attached>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L56-L69>.

  <strong|Proposition III.14.2 (existence of the native component recipe).>
  Let <math|G> be simple and let <math|s> be a sheet (the kernel choice and
  stage profile, fixed before any block factor). There exist a price map
  <math|X> (the <em|secondary> price map) and floors
  <math|E<rsup|\<flat\>>,E<rsup|<math-up|sw>>,E<rsup|<math-up|du>>:\<bbb-N\>\<to\>\<bbb-N\>>
  with the following properties, for every level system <math|\<cal-L\>> with
  the kernel and stage profile of <math|s>.

  <\itemize-minus>
    <item><strong|(flat representation)> If
    <math|L<rsub|i>\<geqslant\>E<rsup|\<flat\>><around|(|J<rsub|i+1>|)>> for
    all <math|i>, then for every <math|e> satisfying
    <math|\<Omega\><rsup|X><rsub|J<rsub|i>>\<leqslant\>log
    <wide|\<beta\>|^><rsub|i>> for <math|i\<geqslant\>e>, there are kernels
    and constants satisfying clauses (a)\U(c) of Proposition III.14.3 with
    this <math|X>, simultaneously for every sufficient horizon.

    <item><strong|(point-group invariance)> If
    <math|L<rsub|i>\<geqslant\>E<rsup|<math-up|sw>><around|(|J<rsub|i+1>|)>>
    for all <math|i>, then for every horizon <math|H> sufficient for some
    price map, every <math|i\<leqslant\>N> and every torus, the colour-summed
    bilinear form <math|<big|sum><rsub|a><around|\<langle\>|A<rsup|a>,\<cal-K\><rsup|\<bbb-T\>><rsub|N,i>*B<rsup|a>|\<rangle\>>>
    is invariant under simultaneous pullback of <math|A,B> by signed
    permutations of the axes fixing the origin. Pullback reverses the sign
    when a link orientation is reversed.

    <item><strong|(background-field identities)> If
    <math|L<rsub|i>\<geqslant\>E<rsup|<math-up|du>><around|(|J<rsub|i+1>|)>>
    for all <math|i>, then for every such <math|H>, every <math|m\<less\>N>
    and every torus in the level system, the canonical free background-field
    map of III.3 satisfies the relations of Proposition III.14.5 for the fine
    and coarse metrics <math|<around|(|M<rsup|\<bbb-T\><rsub|f>><rsub|N,m+1>,M<rsup|\<bbb-T\><rsub|c>><rsub|N,m>|)>>.
    It therefore gives a minimizer of the Gaussian variational problem for
    the actual quadratic forms.
  </itemize-minus>

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|NativeComponentRecipe.Choice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L29-L51>,
  <hlink|<verbatim|available>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59>;
  the three components follow from <hlink|<verbatim|Flat.entrance_gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50>,
  <hlink|<verbatim|Cast.assured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cast/Profile.lean#L16-L34>
  (with <hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>)
  and <hlink|<verbatim|Aura.dual_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L28-L52>
  (with <hlink|<verbatim|Aura.licensed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L24-L26>).

  <strong|Proposition III.14.3 (ultraviolet rate for the Gaussian quadratic
  part).> Let <math|G> be simple and <math|s> a sheet. There exist a price
  map <math|X> and a floor <math|E:\<bbb-N\>\<to\>\<bbb-N\>> with the
  following property. Let <math|\<cal-L\>> be a level system with the kernel
  and stage profile of <math|s> and with <math|L<rsub|i>\<geqslant\>E<around|(|J<rsub|i+1>|)>>
  for all <math|i\<geqslant\>0>. Let <math|e\<in\>\<bbb-N\>> satisfy
  <math|\<Omega\><rsup|X><rsub|J<rsub|i>>\<leqslant\>log
  <wide|\<beta\>|^><rsub|i>> for <math|i\<geqslant\>e>. Then there are
  kernels <math|F<rsub|i>> (<math|i\<geqslant\>e>) on the links of
  <math|\<bbb-Z\><rsup|4>> and constants <math|A,B\<geqslant\>0>,
  <math|c\<gtr\>0>, <math|d,l\<in\>\<bbb-N\>> such that the following holds
  for every horizon <math|H> of <math|\<cal-L\>> sufficient for some price
  map, every reporting scale <math|k\<in\>\<bbb-N\>> and every
  <math|i\<geqslant\>e>. Write <math|w<rsub|j>=min
  <around|(|1,\<alpha\><rsup|X><rsub|j>,\<alpha\><rsup|X><rsub|j+1>|)>>.

  <\itemize-minus>
    <item>(a) <math|<around|\<lVert\>|F<rsub|i>|\<rVert\>><rsub|w<rsub|J<rsub|i>>>\<leqslant\>B*<space|0.17em>\<Lambda\><rsub|k,i><rsup|<space|0.17em>l>>;

    <item>(b) <math|\<cal-O\><rsup|H><rsub|n,i><around|(|u,v|)>\<to\>F<rsub|i><around|(|u,v|)>>
    as <math|n\<to\>\<infty\>>, for all links <math|u,v>;

    <item>(c) <math|<around|\<lVert\>|\<cal-O\><rsup|H><rsub|N,i>-F<rsub|i>|\<rVert\>><rsub|w<rsub|J<rsub|i>>>\<leqslant\>A*<space|0.17em>\<Lambda\><rsub|k,i><rsup|<space|0.17em>d>*<space|0.17em><around|(|a<rsub|N>/a<rsub|i>|)><rsup|c>>
    for all <math|N\<geqslant\>i>.
  </itemize-minus>

  One may take <math|c=1/4>, <math|d=l=1>,
  <math|A=34*\<sigma\><rsub|0><around|\||\<cal-F\>|\|>*<around|(|1+s<rsub|G>|)>/<around|(|1-3<rsup|-1/8>|)>>
  and <math|B=\<sigma\><rsub|0><around|\||\<cal-F\>|\|>*<around|(|1+s<rsub|G>|)>>,
  where <math|\<sigma\><rsub|0>=<around|\||\<cal-F\>|\|><rsup|2>*\<lambda\><rsub|d><rsup|2>>
  and <math|\<lambda\><rsub|d>> is a width-one strip bound for the lattice
  exterior derivative. These constants depend only on <math|G> and the
  lattice, independently of the sheet, level system, entry stage and horizon.

  <em|Status:> theorem. This is an order-zero estimate (see
  <hlink|<verbatim|Mesh.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean>).

  <em|Lean:> <hlink|<verbatim|Flat.Quorum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L13-L21>
  (the three clauses), <hlink|<verbatim|Flat.entrance_gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50>
  (existence), <hlink|<verbatim|Flat.supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164>,
  <hlink|<verbatim|Flat.meshed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L75-L101>,
  <hlink|<verbatim|Flat.clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L30>,
  <hlink|<verbatim|Flat.curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L14>,
  <hlink|<verbatim|Flat.Delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L19>.

  <strong|Proposition III.14.4 (flat representations at all stages, abstract
  form).> Let <math|P> be a price map, <math|\<theta\>\<gtr\>0>, and
  <math|w:\<bbb-N\>\<to\><around|(|0,\<infty\>|)>>. Let
  <math|<around|(|\<cal-L\><rsub|x>,H<rsub|x>,r<rsub|x>,N<rsub|x>,n<rsub|x>,k<rsub|x>,Z<rsub|x>|)><rsub|x\<in\>X>>
  be a family of level systems with horizons, integers
  <math|r<rsub|x>\<leqslant\>N<rsub|x>\<leqslant\>n<rsub|x>>, reporting
  scales <math|k<rsub|x>\<in\>\<bbb-N\>> and offsets
  <math|Z<rsub|x>\<geqslant\>0>. Put <math|\<Lambda\><rsub|x><around|(|i|)>=2+Z<rsub|x>+<around|\||s<rsub|i>-s<rsub|k<rsub|x>>|\|>>,
  with the scale data understood to belong to <math|\<cal-L\><rsub|x>>. Fix
  <math|A<rsub|0>\<geqslant\>0> and <math|d<rsub|0>\<in\>\<bbb-N\>>,
  independent of <math|x>. Assume:

  <\itemize-minus>
    <item>each <math|H<rsub|x>> is sufficient for <math|P>, and its
    plaquette-transfer kernels at cutoff <math|N<rsub|x>> and stages
    <math|r<rsub|x>\<leqslant\>i\<less\>N<rsub|x>> are the canonical free
    kernels of III.3;

    <item><math|w<rsub|j>\<leqslant\>\<alpha\><rsub|j>> for all <math|j>, and
    for <math|r<rsub|x>\<leqslant\>i\<less\>N<rsub|x>>:

    <\itemize-minus>
      <item><math|w<rsub|J<rsub|i>>\<leqslant\>min
      <around|(|1,\<alpha\><rsub|J<rsub|i>>,\<alpha\><rsub|J<rsub|i+1>>|)>>;

      <item><math|2*w<rsub|J<rsub|i>>\<leqslant\>L<rsub|i>*<space|0.17em>w<rsub|J<rsub|i+1>>>;

      <item><math|q<rsub|i><around|(|w<rsub|J<rsub|i+1>>|)>\<leqslant\>L<rsub|i><rsup|-\<theta\>>>,
      where <math|q<rsub|i>> is the one-step factor of Lemma 4.3;
    </itemize-minus>

    <item><math|2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N<rsub|x>>>\<leqslant\>A<rsub|0>*\<Lambda\><rsub|x><around|(|N<rsub|x>|)><rsup|d<rsub|0>>>
    for every <math|x>.
  </itemize-minus>

  Then there are <math|A\<geqslant\>0>, <math|c\<gtr\>0>,
  <math|d\<in\>\<bbb-N\>> and kernels <math|K<rsub|x,i>> such that, for all
  <math|x> and <math|r<rsub|x>\<leqslant\>i\<leqslant\>N<rsub|x>>,
  <math|K<rsub|x,i>> is a flat representation (Definition 4.1) of
  <math|\<cal-K\><rsub|n<rsub|x>,i>-\<cal-K\><rsub|N<rsub|x>,i>> at stage
  <math|i>, of width <math|w<rsub|J<rsub|i>>> and cost
  <math|A*<space|0.17em>\<Lambda\><rsub|x><around|(|i|)><rsup|d>*<around|(|a<rsub|N<rsub|x>>/a<rsub|i>|)><rsup|c>>.
  One may take <math|c=min <around|(|1,\<theta\>/2|)>> and
  <math|d=d<rsub|0>>, with <math|A> depending only on
  <math|A<rsub|0>,d<rsub|0>,\<theta\>>.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Flat.World.overlap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174>,
  with <hlink|<verbatim|World>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L82-L91>,
  <hlink|<verbatim|World.Funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L101-L110>,
  <hlink|<verbatim|World.Provides>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L112-L115>.

  <strong|Proposition III.14.5 (Schur identity for two cutoffs, and the flat
  step).>

  <em|Identity.> Fix one RG step: a fine torus <math|\<bbb-T\><rsub|f>> with
  <math|L> times the side of the coarse torus <math|\<bbb-T\><rsub|c>>, the
  block average <math|Q> and penalty <math|b\<gtr\>0>. Say that
  <math|<around|(|W;M,M<rprime|'>|)>> satisfies the background-field
  relations when

  <\equation*>
    \<cal-K\><around|(|M|)>*<space|0.17em>W=Q<rsup|\<top\>>*\<cal-K\><around|(|M<rprime|'>|)>,<space|2em>Q*W=1-b<rsup|-1>*\<cal-K\><around|(|M<rprime|'>|)>.
  </equation*>

  If <math|M> is symmetric and positive semidefinite, these relations make
  <math|W*A<rprime|'>> a minimizer of <math|<around|\<langle\>|A,\<cal-K\><around|(|M|)>*A|\<rangle\>>+b*<around|\||A<rprime|'>-Q*A|\|><rsup|2>>,
  with minimum <math|<around|\<langle\>|A<rprime|'>,\<cal-K\><around|(|M<rprime|'>|)>*A<rprime|'>|\<rangle\>>>.
  For the algebraic identity below, positivity is unnecessary: if
  <math|<around|(|W<rsub|1>;M<rsub|1>,M<rsub|1><rprime|'>|)>> and
  <math|<around|(|W<rsub|2>;M<rsub|2>,M<rsub|2><rprime|'>|)>> satisfy the
  relations and <math|M<rsub|2>,M<rsub|2><rprime|'>> are symmetric, then

  <\equation*>
    \<cal-K\><around|(|M<rsub|2><rprime|'>|)>-\<cal-K\><around|(|M<rsub|1><rprime|'>|)>=W<rsub|2><rsup|\<top\>>*<around*|(|\<cal-K\><around|(|M<rsub|2>|)>-\<cal-K\><around|(|M<rsub|1>|)>|)>*W<rsub|1>.
  </equation*>

  <em|Flat step.> Let <math|\<tau\>\<gtr\>0>, <math|r\<geqslant\>0>, and let
  <math|B> be a neutral, translation-invariant plaquette kernel with
  <math|<around|\<lVert\>|B|\<rVert\>><rsup|<math-up|pl>><rsub|\<tau\>>\<leqslant\>r>,
  whose periodization represents <math|\<cal-K\><around|(|M<rsub|2>|)>-\<cal-K\><around|(|M<rsub|1>|)>>
  on <math|\<bbb-T\><rsub|f>>. Suppose <math|T,U> are order-two strip-bounded
  curvature-transport kernels with constants <math|q,p\<geqslant\>0> in width
  <math|\<omega\>>. Assume <math|T<around|(|x+L*v,y+v|)>=T<around|(|x,y|)>>
  and the same identity for <math|U>, that their periodizations
  <math|C<rsub|2>,C<rsub|1>> satisfy <math|d*W<rsub|2>=C<rsub|2>*d>,
  <math|d*W<rsub|1>=C<rsub|1>*d>, and that
  <math|<big|sum><rsub|z>U<around|(|<around|(|x,\<varphi\>|)>,<around|(|z,\<psi\>|)>|)>>
  is independent of <math|x> for each pair of orientations. If
  <math|0\<leqslant\>\<sigma\>\<leqslant\>\<omega\>> and
  <math|2*\<sigma\>\<leqslant\>L*\<tau\>>, then

  <\equation*>
    B<rprime|'><around|(|y,z|)>=<big|sum><rsub|x,w>T<around|(|x,y|)>*B<around|(|x,w|)>*U<around|(|w,z|)>,<space|2em><around|\<lVert\>|B<rprime|'>|\<rVert\>><rsup|<math-up|pl>><rsub|\<sigma\>>\<leqslant\><frac|2<around|\||\<cal-F\>|\|><rsup|2>*q*p|\<tau\>*L>*r.
  </equation*>

  The kernel <math|B<rprime|'>> is neutral and translation invariant, and its
  periodization represents <math|\<cal-K\><around|(|M<rsub|2><rprime|'>|)>-\<cal-K\><around|(|M<rsub|1><rprime|'>|)>>
  on <math|\<bbb-T\><rsub|c>>.

  <em|Sketch:> transpose the second pair of background-field relations and
  substitute the first pair; the mixed <math|b<rsup|-1>*\<cal-K\><around|(|M<rsub|2><rprime|'>|)>*\<cal-K\><around|(|M<rsub|1><rprime|'>|)>>
  terms cancel. The intertwining identities then give the asserted curvature
  representative. Neutrality permits subtraction of the second transport
  kernel at the first base point, yielding the norm estimate in Lemma 4.3.

  <em|Status:> theorem. No inverse of the curvature form is used.
  Preservation of neutrality requires the separate constant-row-sum
  condition.

  <em|Lean:> <hlink|<verbatim|Flat.poised>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L24-L38>
  (identity), <hlink|<verbatim|Flat.toward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78>
  (step), <hlink|<verbatim|Packets.push_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113>,
  <hlink|<verbatim|neutralCoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L84-L85>.

  <strong|Proposition III.14.6 (rate lemma for fine-to-coarse recursions).>
  For each <math|x\<in\>X>, fix a scale system with
  <math|L<rsub|i>\<geqslant\>3>, stages <math|r<rsub|x>\<leqslant\>i\<leqslant\>t<rsub|x>>
  and age <math|\<Lambda\><rsub|x><around|(|i|)>=2+Z<rsub|x>+<around|\||s<rsub|i>-s<rsub|k<rsub|x>>|\|>>,
  where <math|Z<rsub|x>\<geqslant\>0>. Fix
  <math|\<theta\>,c<rsub|0>\<gtr\>0>, <math|A<rsub|0>\<geqslant\>0> and
  <math|d<rsub|0>\<in\>\<bbb-N\>>, uniformly in <math|x>. Suppose
  <math|f<rsub|x><around|(|i|)>,g<rsub|x><around|(|i|)>\<geqslant\>0> on
  these stage ranges and

  <\itemize-minus>
    <item><math|f<rsub|x><around|(|i|)>\<leqslant\>L<rsub|i><rsup|-\<theta\>>*f<rsub|x>*<around|(|i+1|)>+g<rsub|x><around|(|i|)>>
    for <math|r<rsub|x>\<leqslant\>i\<less\>t<rsub|x>>, and
    <math|f<rsub|x><around|(|t<rsub|x>|)>\<leqslant\>g<rsub|x><around|(|t<rsub|x>|)>>;

    <item><math|g<rsub|x><around|(|i|)>\<leqslant\>A<rsub|0>*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>*<around|(|a<rsub|t<rsub|x>>/a<rsub|i>|)><rsup|c<rsub|0>>>
    for <math|r<rsub|x>\<leqslant\>i\<leqslant\>t<rsub|x>>.
  </itemize-minus>

  Then <math|f<rsub|x><around|(|i|)>\<leqslant\>A*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>*<around|(|a<rsub|t<rsub|x>>/a<rsub|i>|)><rsup|\<mu\>>>
  throughout each range, where <math|\<mu\>=min
  <around|(|c<rsub|0>,\<theta\>/2|)>\<gtr\>0>. One may take
  <math|A=A<rsub|0>*<around|(|K+1|)><rsup|d<rsub|0>>/<around|(|1-3<rsup|-\<theta\><rprime|'>/2>|)>>,
  with <math|\<theta\><rprime|'>=\<theta\>-\<mu\>\<gtr\>0> and
  <math|K=2*<around|(|d<rsub|0>+1|)>/\<theta\><rprime|'>>.

  <em|Status:> theorem.

  <em|Lean:> <hlink|<verbatim|Rate.Stair.fade_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134>,
  <hlink|<verbatim|poly_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L56-L116>,
  <hlink|<verbatim|slope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L26-L54>,
  <hlink|<verbatim|Fade.cap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L90-L97>.

  <strong|Further content.> The auxiliary estimates in Ÿ4.6 supply numerical
  requirements for the recipe. They include the one-step transit estimate
  <hlink|<verbatim|harbor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190>,
  curvature-coefficient lifts <hlink|<verbatim|arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81>
  and <hlink|<verbatim|warehouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49>,
  and formal Gaussian identities <hlink|<verbatim|bottle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81>,
  <hlink|<verbatim|still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111>
  and <hlink|<verbatim|absorbed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123>.

  <section|2. What it uses><label|2-what-it-uses>

  <strong|From other units.>

  <\itemize-minus>
    <item><strong|III.1 (block-spin step and its linearization).>

    <\itemize-minus>
      <item>Level systems: stages, spacings, block factors, the smoothing
      indices <math|J>, and <math|<wide|\<beta\>|^><rsub|i>>.

      <item>Horizons and their sufficiency for a price map, and the metric
      data with kinetic normalization <math|<wide|M|^><around|(|0|)>=1>.

      <item>The background-field relations, and the identity
      <math|\<cal-K\><around|(|M<rprime|'>|)>=W<rsup|\<top\>>*\<cal-K\><around|(|M|)>*W+b*<around|(|1-Q*W|)><rsup|\<top\>>*<around|(|1-Q*W|)>>.

      <item>Links: <hlink|<verbatim|Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131-L134>,
      <hlink|<verbatim|Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121>,
      <hlink|<verbatim|Horizon.Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>,
      <hlink|<verbatim|MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128>,
      <hlink|<verbatim|Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61-L68>,
      <hlink|<verbatim|Precision.K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>,
      <hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>,
      <hlink|<verbatim|action>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L93-L103>.
    </itemize-minus>

    <item><strong|III.2 (choosing the constants).>

    <\itemize-minus>
      <item>Sheets: <hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>.

      <item>Selection with a preselected demand:
      <hlink|<verbatim|selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>
      and <hlink|<verbatim|PostnumericPreselection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L31-L46>.
      The quantified conclusion used here is Lemma 4.16.
    </itemize-minus>

    <item><strong|III.3 (free kernels).> <hlink|<verbatim|retained_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L134-L145>
    gives, for each kernel choice, the following:

    <\itemize-minus>
      <item>a clip profile <math|\<gamma\>> and a floor <math|n>;

      <item>for every sheet with that kernel, a price map <math|X> such that
      every level system with clip parameters <math|\<leqslant\>\<gamma\>>
      and <math|L<rsub|i>\<geqslant\>n<around|(|J<rsub|i+1>|)>> (the
      "credit", <hlink|<verbatim|Credit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L87-L88>)
      carries a horizon sufficient for <math|X>, whose transfer data are the
      canonical free data (<hlink|<verbatim|destination>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Rack.lean#L74>)
      and whose forms are point-group invariant.
    </itemize-minus>

    <item><strong|III.8 (kernel norms).> Weighted row and column norms, and
    order-<math|m> strip bounds for kernels from fine to coarse lattices:
    <hlink|<verbatim|RowCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L28-L29>,
    <hlink|<verbatim|Atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L37-L42>,
    the carrier map <hlink|<verbatim|carrier>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L24>.

    <item><strong|III.12.> The structures
    <hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>
    and <hlink|<verbatim|Pillars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>,
    and the primary price map <math|P<rsub|s,q>>
    (<hlink|<verbatim|raging>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Roll/Fiscal.lean#L18>).

    <item><strong|III.15.>

    <\itemize-minus>
      <item>The funded property <hlink|<verbatim|Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>.

      <item>The predicate <hlink|<verbatim|EventuallyPaid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Clock.lean#L36-L38>:
      a property of level systems is eventually paid if it can be enforced by
      raising the entry thresholds of <math|\<beta\>>. Here it is applied to
      the trivial property.
    </itemize-minus>

    <item><strong|I.1.> The group data and the one-loop slope
    <math|s<rsub|G>>.

    <item><strong|Use in VIII.1.> <hlink|<verbatim|continuum_with_position_tests>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/Continuum.lean#L28-L48>
    applies <hlink|<verbatim|R2IGoals.fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>
    to the pillars and funded property.
  </itemize-minus>

  <strong|Standard mathematics.>

  <\itemize-minus>
    <item>Gaussian block-spin transformation with background field (Balaban,
    <em|Propagators and renormalization transformations for lattice gauge
    theories I, II>, CMP 95 (1984), CMP 96 (1984); <em|Averaging operations
    for lattice gauge theories>, CMP 98 (1985); Gaw¦dzki\UKupiainen,
    <em|Block spin renormalization group for dipole gas and
    <math|<around|(|\<nabla\>*\<varphi\>|)><rsup|4>>>, Ann. Phys. 147
    (1983)). The coarse quadratic form is the Schur complement obtained by
    minimizing over the fine field.

    <item>Exponentially weighted <math|\<ell\><rsup|1>> kernel norms and
    their behaviour under composition and blocking, as in Balaban's
    propagator estimates.

    <item>A discrete Grönwall argument for
    <math|f<rsub|i>\<leqslant\>\<lambda\><rsub|i>*f<rsub|i+1>+g<rsub|i>>.

    <item>Uniqueness of a translation-invariant kernel of finite weighted row
    norm from its periodizations on tori of diverging size (dominated
    convergence).
  </itemize-minus>

  <strong|Imported constants and assumptions.>

  <\itemize-minus>
    <item>The endpoint assumes only simplicity of <math|G> and
    <math|b\<gtr\>0>.

    <item>The local-estimate package <math|\<Delta\><rsub|10>> is defined in
    this unit, in <hlink|<verbatim|Wardrobe.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63>.
    It is the pair of the predicate <hlink|<verbatim|Attic>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L30-L34>
    and the lemma <hlink|<verbatim|annex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L36-L61>:

    <\itemize-minus>
      <item>the predicate combines one-step connected-activity bounds,
      tree-sum smallness and bounds through any fixed finite range of marks
      and degrees;

      <item>for a target and expense with expense exponent at most
      <math|-7/16>, there is a block-factor threshold such that, for every
      larger block factor, every <math|W,\<mu\>\<gtr\>0>, admissible order,
      stage profile and finite range, the predicate holds for all
      sufficiently large <math|x>. The threshold for <math|x> may depend on
      those fixed data.
    </itemize-minus>

    <item>Inside the flat chain every hypothesis is discharged in this unit
    or in III.3:

    <\itemize-minus>
      <item>sufficiency, free transfer data and point-group invariance come
      from III.3 via the shadow (Lemma 4.11);

      <item>the width conditions follow from the floors (Lemma 4.6);

      <item>the delay condition follows from the post-length bill (Lemma
      4.14).
    </itemize-minus>
  </itemize-minus>

  <section|3. Strategy><label|3-strategy>

  The endpoint applies the selection theorem of III.2 to the demand for a
  recipe. First choose the sheet, primary price map, recipe and combined
  floor <math|E<rsub|C>>. Next choose the block factors
  <math|\<ell\><rsub|j>> above that floor. Finally raise the coupling
  thresholds to pay the bill <math|B<rsub|C><around|(|\<ell\>,j|)>> and the
  countable numerical requests. The selection retains the resulting
  inequalities on the run itself, so Lemma 4.15 realizes the recipe on that
  run's levels and horizon.

  For the Gaussian estimate, compare two cutoffs <math|N\<leqslant\>n> at a
  common stage <math|i>. At stage <math|N>, their metric difference
  <math|M<rsup|\<infty\>><rsub|n,N>-M<rsup|\<infty\>><rsub|N,N>> represents
  the quadratic-form difference and has zero row sums in each orientation,
  since both Fourier symbols equal the identity at zero momentum. The mixed
  Schur identity transports this representative through the two
  background-field maps. A transport kernel has row scale <math|L<rsup|-2>>,
  column scale <math|L<rsup|2>> and first-difference scale <math|L<rsup|-3>>.
  Neutrality permits subtraction in one leg, gaining a factor
  <math|L<rsup|-1>>; the distance introduced by subtraction is absorbed using
  half of the input exponential weight. The block-factor floor makes the
  one-step factor at most <math|L<rsub|i><rsup|-1/2>>. A discrete Grönwall
  estimate absorbs polynomial growth in the age and gives the rate
  <math|<around|(|a<rsub|N>/a<rsub|i>|)><rsup|1/4>>. Passing from curvature
  representatives to link kernels and then taking a Cauchy limit gives
  Proposition III.14.3.

  The argument carries representatives modulo kernels annihilated by
  <math|d<rsup|\<top\>><around|(|\<cdummy\>|)>*d>, without inverting the
  degenerate curvature form. The plaquette metrics do have inverses, used in
  the transport kernels. The Gaussian quadratic forms are independent of the
  sufficient horizon, because the terminal form and the Schur recursion
  determine them. This permits the estimate to be proved on a shadow level
  system with altered clip parameters, where III.3 supplies canonical free
  transfer data, and then transferred to the original horizon.

  <section|4. Steps><label|4-steps>

  <subsection|4.1 Flat representations and their
  propagation><label|41-flat-representations-and-their-propagation>

  <strong|Definition 4.1 (flat representation).> Let <math|H> be a horizon of
  <math|\<cal-L\>>, <math|N\<leqslant\>n>, <math|i\<leqslant\>N>, and
  <math|\<sigma\>,p\<geqslant\>0>. A kernel <math|K> on plaquettes
  <math|\<bbb-Z\><rsup|4>\<times\>\<cal-F\>> is a <em|flat representation> of
  <math|\<cal-K\><rsub|n,i>-\<cal-K\><rsub|N,i>> at stage <math|i>, of width
  <math|\<sigma\>> and cost <math|p>, if:

  <\itemize-minus>
    <item><math|<around|\<lVert\>|K|\<rVert\>><rsup|<math-up|pl>><rsub|\<sigma\>>\<leqslant\>p>;

    <item><math|<big|sum><rsub|u\<in\>\<bbb-Z\><rsup|4>>K<around|(|x,<around|(|u,\<varphi\>|)>|)>=0>
    for every <math|x> and every orientation <math|\<varphi\>>
    (<em|neutral>);

    <item><math|K<around|(|x+u,y+u|)>=K<around|(|x,y|)>>;

    <item>for every torus <math|\<bbb-T\>> of the level system at stage
    <math|i>, the periodization <math|K<rsup|\<bbb-T\>>> satisfies
    <math|d<rsup|\<top\>>*K<rsup|\<bbb-T\>>*d=\<cal-K\><rsup|\<bbb-T\>><rsub|n,i>-\<cal-K\><rsup|\<bbb-T\>><rsub|N,i>>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Flat.FlatRep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L36-L40>,
  <hlink|<verbatim|Sigil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L43-L44>,
  <hlink|<verbatim|Folded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Stacks.lean#L14>,
  <hlink|<verbatim|neutral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/NullPair.lean#L9>,
  <hlink|<verbatim|town>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Torus.lean#L18>.

  <strong|Lemma 4.2 (the finest stage).> Let <math|H> be sufficient for
  <math|P>, <math|N\<leqslant\>n>, and <math|0\<less\>\<sigma\>\<leqslant\>\<alpha\><rsub|J<rsub|N>>>.
  Then <math|M<rsup|\<infty\>><rsub|n,N>-M<rsup|\<infty\>><rsub|N,N>> is a
  flat representation at stage <math|N> of width <math|\<sigma\>> and cost
  <math|2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N>>>.

  <em|Sketch:> each metric has plaquette norm
  <math|\<leqslant\><around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N>>> by
  its strip bound. The difference is neutral because
  <math|<wide|M|^><around|(|0|)>=1> for both metrics. The torus identity is
  <math|\<cal-K\><around|(|M<rsub|n,N>|)>-\<cal-K\><around|(|M<rsub|N,N>|)>=d<rsup|\<top\>>*<around|(|M<rsub|n,N>-M<rsub|N,N>|)>*d>.

  <em|Lean:> finest-stage lemma (private,
  <hlink|<verbatim|World.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean>),
  via <hlink|<verbatim|turn_class>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Present.lean#L52-L78>;
  cost <hlink|<verbatim|topTab>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L24>.

  <strong|Lemma 4.3 (one step to a coarser stage).> Let <math|H> be
  sufficient for <math|P>, with <math|i\<less\>N\<leqslant\>n>. Assume the
  plaquette-transfer kernel of <math|H> at <math|<around|(|N,i|)>> is the
  canonical free kernel. Let <math|K> be a flat representation at stage
  <math|i+1> of width <math|u\<gtr\>0> and cost <math|p\<geqslant\>0>, and
  let <math|0\<less\>\<sigma\>\<leqslant\>min
  <around|(|1,\<alpha\><rsub|J<rsub|i>>,\<alpha\><rsub|J<rsub|i+1>>|)>> with
  <math|2*\<sigma\>\<leqslant\>L<rsub|i>*u>. Then

  <\equation*>
    K<rprime|'><around|(|y,z|)>=<big|sum><rsub|x,w>T<rsub|n,i><around|(|x,y|)>*<space|0.17em>K<around|(|x,w|)>*<space|0.17em>T<rsub|N,i><around|(|w,z|)>
  </equation*>

  is a flat representation at stage <math|i> of width <math|\<sigma\>> and
  cost <math|q<rsub|i><around|(|u|)>*<space|0.17em>p>, where:

  <\itemize-minus>
    <item><math|T<rsub|m,i>=<around|(|M<rsup|\<infty\>><rsub|m,i+1>|)><rsup|-1>*\<cal-T\><rsub|m,i>*M<rsup|\<infty\>><rsub|m,i>>
    is the curvature-transport kernel at cutoff <math|m>, with
    <math|\<cal-T\><rsub|m,i>> the installed plaquette-transfer kernel and
    products denoting kernel composition;

    <item><math|q<rsub|i><around|(|u|)>=2<around|\||\<cal-F\>|\|><rsup|2>*h<rsub|i><rsup|2>/<around|(|u*L<rsub|i>|)>>;

    <item><math|h<rsub|i>=exp <around|(|4|)><around|\||\<cal-F\>|\|><rsup|2>*\<Omega\><rsub|J<rsub|i+1>><rsup|2>*\<Omega\><rsub|J<rsub|i>>>.
  </itemize-minus>

  <em|Sketch:> the four properties come from four inputs.

  <\itemize-minus>
    <item><em|Algebra.> The torus identity follows from the Schur identity
    and from the intertwining <math|d*W<rsub|m>=C<rsub|m>*d>
    (<hlink|<verbatim|inherited_precision>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Inherit.lean#L32-L34>).
    These give <math|\<cal-K\><rsub|n,i>-\<cal-K\><rsub|N,i>=d<rsup|\<top\>>*C<rsub|n><rsup|\<top\>>*K<rsup|\<bbb-T\>>*C<rsub|N>*d>,
    and <math|C<rsub|n><rsup|\<top\>>*K<rsup|\<bbb-T\>>*C<rsub|N>> is the
    periodization of <math|K<rprime|'>> (<hlink|<verbatim|town_hall>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Pushed.lean#L116-L122>).

    <item><em|Bounds on the transport kernels.> Both are order-2
    strip-bounded with constant <math|h<rsub|i>>
    (<hlink|<verbatim|response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Coin.lean#L40>,
    <hlink|<verbatim|allotment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L14>).

    <item><em|Neutrality.> The free plaquette-transfer kernel has a
    zero-momentum symbol independent of the fine residue class, and therefore
    position-independent row sums. Composition with the translation-invariant
    metric kernels preserves this property for <math|T<rsub|N,i>>
    (<hlink|<verbatim|travels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L75>).
    Thus constants of each orientation go to constants and neutrality passes
    to <math|K<rprime|'>> (<hlink|<verbatim|invariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Swing.lean#L77-L104>).

    <item><em|Norm.> Neutrality replaces <math|T<rsub|N,i><around|(|w,z|)>>
    by <math|T<rsub|N,i><around|(|w,z|)>-T<rsub|N,i><around|(|<wide|w|\<bar\>>,z|)>>,
    where <math|<wide|w|\<bar\>>> has the base point of <math|x> and the
    orientation of <math|w>. In the weighted row estimate this costs
    <math|r*h<rsub|i>/L<rsub|i><rsup|3>>, where <math|r> is the
    <math|\<ell\><rsup|1>> distance between the base points of <math|x,w>.
    The inequality <math|r*e<rsup|\<sigma\>*r/L<rsub|i>>\<leqslant\><around|(|2/u|)>*e<rsup|u*r>>
    for <math|r\<geqslant\>0> follows from
    <math|2*\<sigma\>\<leqslant\>L<rsub|i>*u>. The column estimate for
    <math|T<rsub|n,i>> contributes <math|h<rsub|i>*L<rsub|i><rsup|2>>;
    summing orientations gives the factor
    <math|2<around|\||\<cal-F\>|\|><rsup|2>*h<rsub|i><rsup|2>/<around|(|u*L<rsub|i>|)>>.
  </itemize-minus>

  <em|Lean:> one-step lemma (private, <hlink|<verbatim|World.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean>);
  <hlink|<verbatim|toward>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L50-L78>,
  <hlink|<verbatim|poised>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L24-L38>,
  <hlink|<verbatim|push_null>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L87-L113>,
  <hlink|<verbatim|quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L23>.

  <strong|Lemma 4.4 (induction over stages).> Under the hypotheses of
  Proposition III.14.4 there are flat representations <math|K<rsub|x,i>>
  (<math|r<rsub|x>\<leqslant\>i\<leqslant\>N<rsub|x>>) of width
  <math|w<rsub|J<rsub|i>>> and cost <math|c<rsub|x><around|(|i|)>=2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N<rsub|x>>>*<around|(|a<rsub|N<rsub|x>>/a<rsub|i>|)><rsup|\<theta\>>>.

  <em|Sketch:> the costs are defined explicitly, so that
  <math|c<rsub|x><around|(|i|)>=L<rsub|i><rsup|-\<theta\>>*c<rsub|x>*<around|(|i+1|)>>.
  The proof is downward induction on <math|N<rsub|x>-i>:

  <\itemize-minus>
    <item>start with Lemma 4.2;

    <item>apply Lemma 4.3 with <math|u=w<rsub|J<rsub|i+1>>>,
    <math|\<sigma\>=w<rsub|J<rsub|i>>>;

    <item>use <math|q<rsub|i><around|(|w<rsub|J<rsub|i+1>>|)>\<leqslant\>L<rsub|i><rsup|-\<theta\>>>
    and monotonicity of flat representations in the cost.
  </itemize-minus>

  The representatives for all <math|<around|(|x,i|)>> are then fixed by
  choice.

  <em|Lean:> downward-induction lemma (private,
  <hlink|<verbatim|World.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean>).

  <strong|Lemma 4.5 (the rate; proof of Proposition III.14.4).> Write
  <math|g<rsub|x><around|(|i|)>=2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N<rsub|x>>>*\<b-1\><rsub|i=N<rsub|x>>>.
  The costs of Lemma 4.4 satisfy the recursion of Proposition III.14.6 with
  forcing <math|g>. By the last hypothesis of III.14.4, <math|g> has the
  required form with <math|c<rsub|0>=1> (it vanishes below the top).
  Proposition III.14.6 then gives cost <math|\<leqslant\>A*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>*<around|(|a<rsub|N<rsub|x>>/a<rsub|i>|)><rsup|min
  <around|(|1,\<theta\>/2|)>>>.

  <em|Proof of III.14.6.>

  <\enumerate>
    <item>Multiply by <math|<around|(|a<rsub|i>/a<rsub|t>|)><rsup|\<mu\>>>;
    the recursion keeps its form with <math|\<theta\><rprime|'>=\<theta\>-\<mu\>\<geqslant\>\<theta\>/2>.

    <item>Prove <math|<wide|f|~><rsub|x><around|(|i|)>\<leqslant\><wide|B|~>*<space|0.17em><around|(|K+\<Lambda\><rsub|x><around|(|i|)>|)><rsup|d<rsub|0>>>
    by downward induction, with <math|<wide|B|~>=A<rsub|0>/<around|(|1-3<rsup|-\<theta\><rprime|'>/2>|)>>.

    <item>The step uses the polynomial estimate: since
    <math|\<Lambda\><rsub|x>*<around|(|i+1|)>\<leqslant\>\<Lambda\><rsub|x><around|(|i|)>+log
    L<rsub|i>>, one has <math|<around|(|K+\<Lambda\><rsub|x>*<around|(|i+1|)>|)><rsup|d>*L<rsub|i><rsup|-\<theta\><rprime|'>>\<leqslant\><around|(|K+\<Lambda\><rsub|x><around|(|i|)>|)><rsup|d>*L<rsub|i><rsup|-\<theta\><rprime|'>/2>>
    when <math|d\<leqslant\>K*\<theta\><rprime|'>/2>. Then
    <math|L<rsub|i><rsup|-\<theta\><rprime|'>/2>\<leqslant\>3<rsup|-\<theta\><rprime|'>/2>>,
    and <math|<wide|B|~>*3<rsup|-\<theta\><rprime|'>/2>+A<rsub|0>=<wide|B|~>>.
  </enumerate>

  Finally, <math|\<Lambda\><rsub|x><around|(|i|)>\<geqslant\>2> gives
  <math|<around|(|K+\<Lambda\><rsub|x><around|(|i|)>|)><rsup|d<rsub|0>>\<leqslant\><around|(|K+1|)><rsup|d<rsub|0>>*\<Lambda\><rsub|x><around|(|i|)><rsup|d<rsub|0>>>.
  Undoing the tilt gives the stated value of <math|A>.

  <em|Lean:> <hlink|<verbatim|World.overlap>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L165-L174>,
  <hlink|<verbatim|fade_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L118-L134>,
  <hlink|<verbatim|poly_solve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L56-L116>,
  <hlink|<verbatim|slope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Ascent.lean#L26-L54>,
  <hlink|<verbatim|Fade.of_top>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Shadows.lean#L83-L87>,
  <hlink|<verbatim|drop_length>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L79-L82>.

  <subsection|4.2 Choice of widths and passage to position
  space><label|42-choice-of-widths-and-passage-to-position-space>

  <strong|Lemma 4.6 (choice of widths).> Let <math|G> be simple, <math|X> a
  price map and <math|w<rsub|j>=min <around|(|1,\<alpha\><rsup|X><rsub|j>,\<alpha\><rsup|X><rsub|j+1>|)>>.
  Put

  <\equation*>
    \<beta\><rsub|j,j<rprime|'>>=2<around|\||\<cal-F\>|\|><rsup|2>*h<rsub|j,j<rprime|'>><rsup|2>/w<rsub|j>,<space|2em>h<rsub|j,j<rprime|'>>=exp
    <around|(|4|)><around|\||\<cal-F\>|\|><rsup|2><around|(|\<Omega\><rsup|X><rsub|j>|)><rsup|2>*\<Omega\><rsup|X><rsub|j<rprime|'>>,<space|2em>E<rsup|\<flat\>><around|(|j|)>=<around|\<lceil\>|2/w<rsub|j>+\<beta\><rsub|j,j><rsup|2>+\<beta\><rsub|j,j-1><rsup|2>|\<rceil\>>.
  </equation*>

  Here <math|j-1> is truncated at zero. Suppose
  <math|L<rsub|i>\<geqslant\>E<rsup|\<flat\>><around|(|J<rsub|i+1>|)>> and
  <math|\<Omega\><rsup|X><rsub|J<rsub|i>>\<leqslant\>log
  <wide|\<beta\>|^><rsub|i>> for every <math|i\<geqslant\>e>. With
  <math|q<rsub|i>> computed from <math|X>, the following hold for
  <math|i\<geqslant\>e>:

  <\itemize-minus>
    <item><math|w<rsub|J<rsub|i>>\<leqslant\>min
    <around|(|1,\<alpha\><rsup|X><rsub|J<rsub|i>>,\<alpha\><rsup|X><rsub|J<rsub|i+1>>|)>>;

    <item><math|2*w<rsub|J<rsub|i>>\<leqslant\>L<rsub|i>*w<rsub|J<rsub|i+1>>>;

    <item><math|q<rsub|i><around|(|w<rsub|J<rsub|i+1>>|)>\<leqslant\>L<rsub|i><rsup|-1/2>>;

    <item><math|\<Omega\><rsup|X><rsub|J<rsub|j>>\<leqslant\><around|(|1+s<rsub|G>|)>*\<Lambda\><rsub|k,j>>
    for all <math|k> and all <math|j\<geqslant\>e>.
  </itemize-minus>

  <em|Sketch:> since <math|J<rsub|i>\<in\><around|{|J<rsub|i+1>,J<rsub|i+1>-1|}>>,
  the constant <math|h<rsub|i>> is one of <math|h<rsub|j,j>,h<rsub|j,j-1>>
  with <math|j=J<rsub|i+1>>. Then <math|q<rsub|i><around|(|w<rsub|j>|)>=\<beta\>/L<rsub|i>\<leqslant\>L<rsub|i><rsup|-1/2>>
  because <math|\<beta\><rsup|2>\<leqslant\>L<rsub|i>>. Next,
  <math|2*w<rsub|J<rsub|i>>\<leqslant\>2\<leqslant\>L<rsub|i>*w<rsub|j>>. For
  the age cap: <math|<wide|\<beta\>|^>> is affine in <math|s>, so <math|log
  <wide|\<beta\>|^><rsub|j>\<leqslant\>log
  <wide|\<beta\>|^><rsub|k>+s<rsub|G>*<around|\||s<rsub|j>-s<rsub|k>|\|>>.

  <em|Lean:> <hlink|<verbatim|spacing_choice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L64-L92>,
  <hlink|<verbatim|universeClock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L38-L62>,
  <hlink|<verbatim|work items>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L29>,
  <hlink|<verbatim|entrance>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L25>,
  <hlink|<verbatim|before>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L21-L23>,
  <hlink|<verbatim|Spacing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L32-L41>.

  <strong|Lemma 4.7 (the family estimate).> Assume the conclusions of Lemma
  4.6 and let <math|H> be sufficient for <math|X>. Index the family by
  <math|x=<around|(|k,N,n|)>> with <math|k\<in\>\<bbb-N\>> and
  <math|e\<leqslant\>N\<leqslant\>n>, and put <math|r<rsub|x>=e>,
  <math|\<theta\>=1/2> and <math|Z<rsub|x>=3+log <wide|\<beta\>|^><rsub|k>>.
  Then the numerical hypotheses of Proposition III.14.4 hold with
  <math|A<rsub|0>=2<around|\||\<cal-F\>|\|>*<around|(|1+s<rsub|G>|)>> and
  <math|d<rsub|0>=1>. If the plaquette-transfer data at every
  <math|<around|(|N,i|)>> with <math|e\<leqslant\>i\<less\>N> are the
  canonical free data, all its hypotheses hold.

  <em|Sketch:> the first three width estimates are exactly the required
  one-step inequalities. The age bound gives
  <math|2<around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|N>>\<leqslant\>A<rsub|0>*\<Lambda\><rsub|k,N>>
  uniformly in <math|k,N,n>.

  <em|Lean:> <hlink|<verbatim|berth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L45-L54>,
  <hlink|<verbatim|Spacing.funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L56-L68>.

  <strong|Lemma 4.8 (from a representative to the position-space kernel).>
  Let <math|0\<leqslant\>\<sigma\>,\<varepsilon\>\<leqslant\>1> and
  <math|p,C\<geqslant\>0>. Suppose both metric kernels are strip-bounded in
  width <math|\<sigma\>> with constant <math|p>, and that <math|K> represents
  <math|\<cal-K\><rsub|n,i>-\<cal-K\><rsub|N,i>> on tori whose sides tend to
  infinity, with <math|<around|\<lVert\>|K|\<rVert\>><rsup|<math-up|pl>><rsub|\<varepsilon\>>\<leqslant\>C>.
  Then

  <\equation*>
    \<cal-O\><rsub|n,i>-\<cal-O\><rsub|N,i>=d<rsup|\<top\>>*K*<space|0.17em>d<space|1em><text|on
    the links of >\<bbb-Z\><rsup|4>,<space|2em><around|\<lVert\>|\<cal-O\><rsub|n,i>-\<cal-O\><rsub|N,i>|\<rVert\>><rsub|\<varepsilon\>>\<leqslant\>\<sigma\><rsub|0>*C,<space|2em>\<sigma\><rsub|0>=<around|\||\<cal-F\>|\|><rsup|2>*\<lambda\><rsub|d><rsup|2>,
  </equation*>

  where <math|\<lambda\><rsub|d>> is a width-one strip bound for <math|d>.

  <em|Sketch:> <math|\<cal-O\><rsub|n,i>-\<cal-O\><rsub|N,i>> and
  <math|d<rsup|\<top\>>*K*d> have finite row norms and the same
  periodizations on the given tori. Dominated convergence as the torus side
  tends to infinity identifies the kernels. Composition with the two exterior
  derivatives gives the factor <math|\<sigma\><rsub|0>>.

  <em|Lean:> <hlink|<verbatim|resolve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L101-L115>,
  <hlink|<verbatim|output_cost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L89-L90>,
  <hlink|<verbatim|sumToken>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L66>.

  <strong|Lemma 4.9 (rate for pairs of cutoffs).> Under the conclusions of
  Lemma 4.6, with <math|H> sufficient for <math|X> and with canonical free
  plaquette-transfer data at all <math|<around|(|N,i|)>>,
  <math|e\<leqslant\>i\<less\>N>, the constant <math|A> of Proposition
  III.14.3 satisfies

  <\equation*>
    <around|\<lVert\>|\<cal-O\><rsub|n,i>-\<cal-O\><rsub|N,i>|\<rVert\>><rsub|w<rsub|J<rsub|i>>>\<leqslant\>A*<space|0.17em>\<Lambda\><rsub|k,i>*<space|0.17em><around|(|a<rsub|N>/a<rsub|i>|)><rsup|1/4><space|2em><text|for
    all >k<text| and >e\<leqslant\>i\<leqslant\>N\<leqslant\>n.
  </equation*>

  <em|Sketch:> apply Proposition III.14.4 to the family of Lemma 4.7, then
  Lemma 4.8.

  <em|Lean:> <hlink|<verbatim|meshed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L75-L101>.

  <strong|Lemma 4.10 (the limit kernel).> Under the same hypotheses there are
  kernels <math|F<rsub|i>> satisfying (a)\U(c) of Proposition III.14.3, in
  the same width <math|w<rsub|J<rsub|i>>>.

  <em|Sketch:> for fixed <math|i>, Lemma 4.9 gives a Cauchy modulus
  <math|A*\<Lambda\><rsub|k,i>*<around|(|a<rsub|n>/a<rsub|i>|)><rsup|1/4>\<to\>0>
  in the weighted row norm. Completeness of the scalar entries gives a
  pointwise limit, and finite-sum bounds followed by monotone convergence
  preserve the row estimates (<hlink|<verbatim|solvent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Limit.lean#L51-L59>).
  This gives norm convergence and (c). For <math|n\<geqslant\>i>,
  <math|<around|\<lVert\>|\<cal-O\><rsub|n,i>|\<rVert\>><rsub|w<rsub|J<rsub|i>>>\<leqslant\>\<sigma\><rsub|0><around|\||\<cal-F\>|\|>*\<Omega\><rsub|J<rsub|i>>\<leqslant\>\<sigma\><rsub|0><around|\||\<cal-F\>|\|>*<around|(|1+s<rsub|G>|)>*\<Lambda\><rsub|k,i>>,
  which passes to the limit and gives (a). Uniqueness of pointwise limits
  makes <math|F<rsub|i>> independent of <math|k>.

  <em|Lean:> <hlink|<verbatim|supplies>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L107-L164>.

  <subsection|4.3 Uniqueness of the Gaussian part; the three recipe
  components><label|43-uniqueness-of-the-gaussian-part-the-three-recipe-components>

  <strong|Lemma 4.11 (the Gaussian quadratic forms do not depend on the
  horizon).> Let <math|H,H<rprime|'>> be horizons, each sufficient for some
  price map, on level systems <math|\<cal-L\>,\<cal-L\><rprime|'>> that
  differ at most in the clip parameters of their stages; for example
  <math|\<cal-L\><rprime|'>> may be the <em|shadow> of <math|\<cal-L\>>, with
  clip profile replaced by <math|\<gamma\>>. Then
  <math|\<cal-K\><rsup|\<bbb-T\>><rsub|N,i><around|(|H|)>=\<cal-K\><rsup|\<bbb-T\>><rsub|N,i><around|(|H<rprime|'>|)>>
  for all <math|i\<leqslant\>N> and all tori, and
  <math|\<cal-O\><rsup|H><rsub|N,i>=\<cal-O\><rsup|H<rprime|'>><rsub|N,i>>.

  <em|Sketch:> downward induction from <math|i=N>, where both forms equal
  <math|d<rsup|\<top\>>*d>. If the forms agree at stage <math|i+1>, the Schur
  identity gives <math|\<cal-K\><rsub|N,i><around|(|H|)>-\<cal-K\><rsub|N,i><around|(|H<rprime|'>|)>=W<rsup|\<top\>>\<cdot\>0\<cdot\>W<rprime|'>=0>;
  the clip parameters do not enter the step data. This proves equality on the
  tori of the level system. Lemma 4.8 then identifies the position-space
  kernels; periodizing that equality gives equality on every torus.

  <em|Lean:> <hlink|<verbatim|same_path>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L23-L36>,
  <hlink|<verbatim|same_output>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L38-L43>,
  <hlink|<verbatim|same_terminal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Agreement.lean#L19-L21>,
  <hlink|<verbatim|shadow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L30-L50>,
  <hlink|<verbatim|same_shadow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L52-L75>.

  <strong|Lemma 4.12 (the flat component; proof of Proposition III.14.3).>
  For a simple <math|G> and a sheet <math|s>, take the clip profile
  <math|\<gamma\>> and floor <math|E<rsub|<math-up|free>>> from III.3, and
  obtain <math|X> by applying its sufficiency construction to the sheet with
  clip profile <math|\<gamma\>>. Set <math|E=max
  <around|(|E<rsup|\<flat\>>,E<rsub|<math-up|free>>|)>>. Given
  <math|\<cal-L\>> and <math|e> as in Proposition III.14.3, the shadow
  <math|\<cal-L\><rprime|'>> meets the assumptions of III.3, so it carries a
  horizon <math|Y> sufficient for <math|X> with canonical free transfer data.
  Apply Lemmas 4.6\U4.10 to <math|<around|(|\<cal-L\><rprime|'>,Y|)>>; the
  delay condition is unchanged, since <math|<wide|\<beta\>|^>> and the scale
  data are unchanged. Transfer (b) and (c) to every sufficient horizon
  <math|H> of <math|\<cal-L\>> by Lemma 4.11. The floor <math|E> is required
  at every stage because III.3 requires its floor everywhere.

  <em|Lean:> <hlink|<verbatim|entrance_gate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L28-L50>,
  <hlink|<verbatim|rearrange>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L21-L23>.

  <strong|Lemma 4.13 (the other two components of the recipe).> For each
  sheet, the point-group and background-field conclusions of Proposition
  III.14.2 hold above suitable floors. Both use the shadow construction of
  Lemma 4.12. Their floors may be chosen to be <math|E<rsub|<math-up|free>>>;
  the flat component also requires <math|E<rsup|\<flat\>>>.

  <\itemize-minus>
    <item><em|Point-group invariance.> III.3 supplies point-group invariance
    for the shadow horizon, and the forms coincide by Lemma 4.11.

    <item><em|Background-field identities.> On the shadow the free
    background-field map satisfies the relations of Proposition III.14.5,
    because its transfer data are the free data. The shadow's quadratic forms
    equal those of <math|H> (Lemma 4.11), and the free data of
    <math|\<cal-L\>> and of its shadow coincide. Hence the same relations
    hold for <math|H>.
  </itemize-minus>

  <em|Lean:> <hlink|<verbatim|Cast.assured>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Cast/Profile.lean#L16-L34>,
  <hlink|<verbatim|Aura.dual_support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L28-L52>,
  <hlink|<verbatim|available>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L54-L59>.

  <subsection|4.4 Realizing the recipe on a
  run><label|44-realizing-the-recipe-on-a-run>

  <strong|Lemma 4.14 (realization).> Let <math|s> be a sheet, <math|q> a
  price map, <math|C> a recipe for <math|s> with secondary price map
  <math|X>, and <math|\<cal-L\>> a level system with the kernel and profile
  of <math|s>. Let <math|H> be sufficient for the primary price map
  <math|P<rsub|s,q>>. Let <math|E<rsub|C>> be the maximum of
  <math|E<rsup|\<flat\>>,E<rsup|<math-up|sw>>,E<rsup|<math-up|du>>> and the
  two numerical floors in Ÿ4.6, and let <math|B<rsub|C><around|(|\<ell\>,j|)>>
  be the maximum of the two post-length bills there. Assume

  <\itemize-minus>
    <item><math|\<ell\><rsub|j>\<geqslant\>E<rsub|C><around|(|j|)>> for every
    smoothing index <math|j>;

    <item><math|<wide|\<beta\>|^><rsub|m>\<geqslant\>B<rsub|C><around|(|\<ell\>,J<rsub|m+1>|)>>
    for every stage <math|m>.
  </itemize-minus>

  Then on <math|<around|(|\<cal-L\>,H|)>>:

  <\itemize-minus>
    <item>both numerical floor and bill conditions hold;

    <item>the background-field identities and point-group invariance hold;

    <item>Proposition III.14.3 holds with <math|e=0>.
  </itemize-minus>

  <em|Sketch:> the floor bounds apply to <math|L<rsub|i>=\<ell\><rsub|J<rsub|i+1>>>
  and to all smoothing-index requirements. For the delay, the second bill is
  the exponential of a finite bound <math|S<rsub|i>> for the actual patch,
  with <math|\<Omega\><rsup|X><rsub|q>\<leqslant\>S<rsub|i>> for every
  <math|q\<leqslant\>J<rsub|i+1>>. Its payment gives
  <math|S<rsub|i>\<leqslant\>log <wide|\<beta\>|^><rsub|i>>
  (<hlink|<verbatim|Yamen.hatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L56-L64>).
  Since <math|J<rsub|i>\<leqslant\>J<rsub|i+1>>, the delay holds with
  <math|e=0>. Apply the three components of <math|C>; the fixed chart of
  III.3 supplies the remaining local-chart condition.

  <em|Lean:> <hlink|<verbatim|realize>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L132-L182>,
  <hlink|<verbatim|Realized>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L117-L128>,
  <hlink|<verbatim|floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L61-L65>,
  <hlink|<verbatim|post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L75-L79>,
  <hlink|<verbatim|numeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L71-L72>.

  <strong|Lemma 4.15 (binding to the run).> Let <math|s,q,C> be as in Lemma
  4.14 and <math|n:\<bbb-N\>\<to\>\<bbb-N\>> with
  <math|n\<geqslant\>E<rsub|C>>. Let <math|R> be a run whose sheet is
  <math|s> with floors raised to <math|n>, whose price map is
  <math|P<rsub|s,q>>, and whose levels pay <math|B<rsub|C>>. Then the recipe
  is realized on <math|R>'s own levels and horizon.

  <em|Sketch:> the sheet and price-map identities identify the kernel,
  profile and sufficient horizon required in Lemma 4.14. The run's
  block-factor inequalities give <math|\<ell\><rsub|j>\<geqslant\>n<around|(|j|)>\<geqslant\>E<rsub|C><around|(|j|)>>.
  Apply that lemma. The retained selection data of III.2 contain exactly
  these identities and inequalities.

  <em|Lean:> <hlink|<verbatim|on_run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L25-L54>,
  <hlink|<verbatim|of_preselection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L71-L77>.

  <subsection|4.5 The run><label|45-the-run>

  <strong|Lemma 4.16 (selection with a preselected demand; III.2).> Fix the
  comparison and custody data used in III.2. Let <math|G> be simple,
  <math|b\<gtr\>0>, <math|\<Lambda\>> a property of level systems that can be
  enforced by raising coupling-entry thresholds, and <math|\<Delta\>> a
  local-estimate package. For every sheet <math|s> and price map <math|q>,
  suppose a nonempty demand set <math|\<cal-D\><around|(|s,q|)>> is given.
  For each <math|C\<in\>\<cal-D\><around|(|s,q|)>>, prescribe an integer
  floor <math|E<rsub|C><around|(|j|)>>, real requests
  <math|U<rsub|C><around|(|r,j|)>>, and real post-length requests
  <math|V<rsub|C><around|(|\<ell\>,r,j|)>> depending on the block-factor
  sequence <math|\<ell\>>.

  Then there are a run <math|R>, a campaign <math|T>, a sheet <math|s>, a
  price map <math|q>, a choice <math|C\<in\>\<cal-D\><around|(|s,q|)>> and an
  integer floor <math|n\<geqslant\>max <around|(|n<rsub|s>,E<rsub|C>|)>> such
  that:

  <\itemize-minus>
    <item>the penalty is <math|b>, <math|\<Lambda\>> holds on the levels of
    <math|R>, pillars exist, and <math|R> is funded for <math|\<Delta\>>;

    <item><math|R> has the sheet <math|s> with floor raised to <math|n>, and
    price map <math|P<rsub|s,q>>;

    <item><math|log log <wide|\<beta\>|^><rsub|m>\<geqslant\>0> for every
    <math|m>;

    <item>for each of the request families <math|F=U<rsub|C>> and
    <math|F<around|(|r,j|)>=V<rsub|C><around|(|\<ell\>,r,j|)>>, and every
    fixed <math|r>, there is <math|m<rsub|0>> such that
    <math|<around|\||F<around|(|r,j|)>|\|>\<leqslant\>1+log log
    <wide|\<beta\>|^><rsub|m>> whenever <math|m\<geqslant\>m<rsub|0>> and
    <math|j\<leqslant\>J<rsub|m+1>>;

    <item><math|V<rsub|C><around|(|\<ell\>,0,J<rsub|m+1>|)>\<leqslant\><wide|\<beta\>|^><rsub|m>>
    for every <math|m>.
  </itemize-minus>

  The comparison and custody data have canonical choices depending only on
  <math|G>, used in Lemma 4.17. The additional conclusions about orders,
  periods and extraction in III.2 are not needed here.

  <em|Lean:> <hlink|<verbatim|selectRunWithTreasuryPeriod_preselected_quote_orders_postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativePreselectedPostnumericPeriodRun.lean#L99-L114>;
  the plain version is <hlink|<verbatim|selectRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L75-L84>.
  <em|(statement only; the construction behind it belongs to III.2)>

  <strong|Lemma 4.17 (assembly of the construction run).> Proposition
  III.14.1 holds.

  <em|Sketch:> use the canonical comparison and custody data and apply Lemma
  4.16 with <math|\<Lambda\>> identically true,
  <math|\<Delta\>=\<Delta\><rsub|10>>, and <math|\<cal-D\><around|(|s,q|)>>
  the set of recipes for <math|s>. Proposition III.14.2 makes this set
  nonempty. Use floor <math|E<rsub|C>>, reciprocal-width requests
  <math|U<rsub|C><around|(|r,j|)>=\<rho\><rsub|C><around|(|r,j|)><rsup|-1>>,
  where <math|\<rho\><rsub|C><around|(|r,j|)>\<gtr\>0> is the recipe width
  for demand <math|r> at smoothing index <math|j>, and
  <math|V<rsub|C><around|(|\<ell\>,r,j|)>=B<rsub|C><around|(|\<ell\>,j|)>>,
  independent of <math|r>. Lemma 4.15 realizes the selected recipe on the
  run.

  <em|Lean:> <hlink|<verbatim|constructionRun>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/ConstructionRun.lean#L14-L28>,
  <hlink|<verbatim|postnumeric>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ActualRunNativeComponentRecipe.lean#L21-L23>.

  <subsection|4.6 The packages behind the numerical
  floors><label|46-the-packages-behind-the-numerical-floors>

  The combined recipe floor includes <hlink|<verbatim|rail>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L46>,
  and its post-length bill uses <hlink|<verbatim|receipt>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L65>/<hlink|<verbatim|after>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Redo/Scaling.lean#L67>.
  The second numerical component uses <hlink|<verbatim|Yamen.need>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Pledge.lean#L36>
  and <hlink|<verbatim|Yamen.stamp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Yamen/Penny.lean#L48>.

  The supporting estimates below supply finite widths, numerical floors and
  post-length bounds. The widths also enter the reciprocal-width requests of
  Lemma 4.17. These are summaries under the hypotheses of the linked results;
  the complete auxiliary statements are not reproduced here.

  <\itemize-minus>
    <item><strong|One-step transit and graded differences.>
    <hlink|<verbatim|harbor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Sideshow/Orbit.lean#L81-L190>:
    for admissible parameters there are a constant <math|A\<geqslant\>1> and
    a growth function <math|J> of controlled degree bounding a one-step
    transit of paired marked kernel families. Supporting results:
    <hlink|<verbatim|DocketBill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Elect.lean#L78-L140>,
    <hlink|<verbatim|slushy_uniform>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Prior.lean#L61-L95>,
    <hlink|<verbatim|conquer>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Lob.lean#L32-L124>,
    <hlink|<verbatim|drive>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Necks/Tides.lean#L45-L88>
    (graded differences of two kernel families with scale-independent
    constants).

    <item><strong|Curvature-coefficient lifts with linear cost.> Closed
    coefficients satisfying the required grading, symmetry and vanishing
    conditions admit curvature lifts, with reduced width and a bound linear
    in the input size. The bilinear case needs an additional zero-momentum
    condition: <hlink|<verbatim|line_legs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/FinalLegs.lean#L49-L74>,
    <hlink|<verbatim|doubleLift>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Loop/Empty.lean#L81-L107>,
    <hlink|<verbatim|arc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rudder/Sym/Oaks.lean#L65-L81>,
    <hlink|<verbatim|warehouse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Spar/Overhead.lean#L39-L49>,
    <hlink|<verbatim|arm>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/LiftOne.lean#L198-L206>,
    <hlink|<verbatim|multi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/QUARTIC_MATCH/Cells/Resolve.lean#L158-L178>.

    <item><strong|Formal Gaussian change of variables.> Near-identity
    substitutions preserve the formal Gaussian functional after Jacobian
    correction. The supporting results include marked-variable vanishing and
    compatibility of connected logarithms:
    <hlink|<verbatim|bottle>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Time.lean#L54-L81>,
    <hlink|<verbatim|still>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Glass.lean#L98-L111>,
    <hlink|<verbatim|absorbed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Alight.lean#L86-L123>,
    <hlink|<verbatim|impress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Room/Refresh.lean#L87-L106>.

    <item><strong|Formal Ward identities and gauge variations.> Change of
    variables with an insertion, a finite-torus Ward identity, and bounds on
    the response to adding gradients: <hlink|<verbatim|stirred>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Wisp/Chord.lean#L48-L76>,
    <hlink|<verbatim|welcomed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Weald/Pitch.lean#L80-L98>,
    <hlink|<verbatim|spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flint/Hunger.lean#L77-L91>.

    <item><strong|Representatives and evaluation.> Gauge-equivalent
    parametrizations give equal block-integral germs and rescaled
    coefficients under the stated regularity conditions; the block-integral
    comparison also assumes equality of the quadratic germs. A related
    formula evaluates completed coefficients by averaging over signed lattice
    symmetries: <hlink|<verbatim|blossom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Atlas/Furnace.lean#L32-L51>,
    <hlink|<verbatim|switch_rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aggregate/Voice.lean#L84-L94>,
    <hlink|<verbatim|hatch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Carrel/Works.lean#L43-L52>.

    <item><strong|Marked-kernel receipts.> Bounds on marked kernels including
    the exact leading term, with constants announced before the block factor:
    <hlink|<verbatim|podium>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Trill/Swift.lean#L40-L96>,
    <hlink|<verbatim|baton>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Halo/Kumi.lean#L63-L106>.

    <item><strong|Line inverse in cell coordinates.> An algebraic inverse on
    the constrained subspace, followed by strip bounds and the finite-torus
    inverse identity: <hlink|<verbatim|jointProjection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Solid.lean#L21-L38>,
    <hlink|<verbatim|preheat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Recipe.lean#L60-L83>,
    <hlink|<verbatim|transcribe>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Line/Complex.lean#L108-L138>.
  </itemize-minus>

  <section|5. Where the difficulty lies><label|5-where-the-difficulty-lies>

  <\itemize-minus>
    <item><strong|Degenerate quadratic forms.> Gauge zero modes prevent
    inversion of <math|d<rsup|\<top\>>*M*d>. The mixed Schur identity
    propagates curvature representatives without this inversion.

    <item><strong|Neutrality.> Zero row sums are required separately in every
    target orientation. Kinetic normalization gives the initial cancellation;
    the constant-row-sum identity for the free transfer kernel preserves it.
    Scaled translation covariance alone does not suffice.

    <item><strong|The exponent.> The width floor reduces the
    <math|L<rsup|-1>> gain to <math|L<rsup|-1/2>>, and the recursion estimate
    uses half of the remaining exponent to absorb age growth. The resulting
    exponent <math|1/4> is not claimed to be optimal.

    <item><strong|Order of choices.> The flat floor is fixed from the price
    map before the block factors. It involves the constants at indices
    <math|j,j-1> and widths at <math|j,j+1>. The post-length bill then
    enforces the delay condition through the coupling thresholds.

    <item><strong|Scope.> The estimate controls the Gaussian link kernel
    <math|d<rsup|\<top\>>*M<rsup|\<infty\>>*d>. It gives no convergence rate
    for the undetermined part of the plaquette metric, positive-order
    coefficients or source kernels. The formal recipe is not an
    identification with physical marked observables.
  </itemize-minus>

  <section|6. Notation><label|6-notation>

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Written
  proof>>|<cell|<strong|Lean>>|<cell|<strong|Meaning>>>|<row|<cell|run
  <math|R>, campaign <math|T>, pillars <math|W>>|<cell|<hlink|<verbatim|Run>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Cross.lean#L30-L48>,
  <verbatim|Campaign>, <hlink|<verbatim|Pillars>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Gables/Vendee.lean#L22-L27>>|<cell|Wilson
  family with its scale and extraction data; campaign comparison data;
  selected histories from stage <math|0> for all <math|<around|(|N,p|)>>,
  with local step data and accounting identities>>|<row|<cell|funded>|<cell|<hlink|<verbatim|R2I.Funded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L60-L73>>|<cell|13
  clauses: <verbatim|localBudget>, <verbatim|attentive>, <verbatim|logCopy>,
  <verbatim|locrian>, <verbatim|wild>, <verbatim|silk>, <verbatim|poly>,
  <verbatim|fixed>, <verbatim|tic>, <verbatim|halo>, <verbatim|paced>,
  <verbatim|stoves>, <verbatim|hasSky>>>|<row|<cell|<math|\<Delta\><rsub|10>>>|<cell|<hlink|<verbatim|garment10>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L63>,
  <hlink|<verbatim|Decal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG12/Burst/Wardrobe.lean#L18-L20>>|<cell|local
  one-step estimate package with its eventual-validity
  lemma>>|<row|<cell|sheet <math|s>>|<cell|<hlink|<verbatim|Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26-L35>>|<cell|kernel
  choice, stage profile, floors; fixed before <math|L>>>|<row|<cell|price map
  <math|P=<around|(|\<alpha\><rsub|j>,\<Omega\><rsub|j>,\<eta\><rsub|j>|)>>>|<cell|<hlink|<verbatim|MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123-L128>>|<cell|strip
  width, upper bound and coercivity bound for each smoothing
  index>>|<row|<cell|horizon <math|H>, sufficient for
  <math|P>>|<cell|<hlink|<verbatim|Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119-L121>,
  <hlink|<verbatim|Suffices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L132-L139>>|<cell|metrics
  <math|M<rsub|N,i>> and transfer data, with strip bounds and Schur
  relations>>|<row|<cell|<math|\<cal-K\><rsup|\<bbb-T\>><rsub|N,i>=d<rsup|\<top\>>*M<rsup|\<bbb-T\>><rsub|N,i>*d>>|<cell|<hlink|<verbatim|Precision.K>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L68-L69>,
  <verbatim|quadratic>>|<cell|Gaussian quadratic form on a
  torus>>|<row|<cell|<math|\<cal-O\><rsub|N,i>>>|<cell|<hlink|<verbatim|output>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L18>,
  <hlink|<verbatim|writ>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Curl.lean#L15-L16>>|<cell|position-space
  kernel <math|d<rsup|\<top\>>*M<rsup|\<infty\>>*d> on
  links>>|<row|<cell|background-field relations>|<cell|<hlink|<verbatim|Inputs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/TreeMatch.lean#L76-L79>>|<cell|<math|\<cal-K\>*W=Q<rsup|\<top\>>*\<cal-K\><rprime|'>>,
  <math|Q*W=1-b<rsup|-1>*\<cal-K\><rprime|'>>>>|<row|<cell|curvature
  transport <math|T<rsub|m,i>>>|<cell|<hlink|<verbatim|fine_share>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Keys.lean#L15>,
  <hlink|<verbatim|response>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Coin.lean#L40>>|<cell|<math|<around|(|M<rsup|\<infty\>><rsub|m,i+1>|)><rsup|-1>*\<cal-T\><rsub|m,i>*M<rsup|\<infty\>><rsub|m,i>>>>|<row|<cell|<math|h<rsub|i>>,
  <math|q<rsub|i><around|(|u|)>>>|<cell|<hlink|<verbatim|header>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L22>,
  <hlink|<verbatim|quote>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L23>,
  <hlink|<verbatim|neutralCoin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Lines.lean#L84-L85>>|<cell|<math|exp
  <around|(|4|)><around|\<lvert\>|\<cal-F\>|\<rvert\>><rsup|2>*\<Omega\><rsub|J<rsub|i+1>><rsup|2>*\<Omega\><rsub|J<rsub|i>>>;
  <math|2<around|\<lvert\>|\<cal-F\>|\<rvert\>><rsup|2>*h<rsub|i><rsup|2>/<around|(|u*L<rsub|i>|)>>>>|<row|<cell|flat
  representation>|<cell|<hlink|<verbatim|FlatRep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L36-L40>,
  <hlink|<verbatim|Sigil>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/FlatStep.lean#L43-L44>>|<cell|Definition
  4.1>>|<row|<cell|weighted norms>|<cell|<hlink|<verbatim|Folded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Stacks.lean#L14>,
  <hlink|<verbatim|RowCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L28-L29>,
  <hlink|<verbatim|Atlas>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L37-L42>>|<cell|plaquette
  norm <math|<around|\<lVert\>|K|\<rVert\>><rsup|<math-up|pl>><rsub|\<sigma\>>>;
  link row norm <math|<around|\<lVert\>|F|\<rVert\>><rsub|\<sigma\>>>; row,
  column and first-difference bounds of order <math|m>>>|<row|<cell|neutral,
  translation invariant>|<cell|<hlink|<verbatim|neutral>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/NullPair.lean#L9>,
  <hlink|<verbatim|town>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Packets/Torus.lean#L18>>|<cell|zero
  symbol at zero momentum; <math|K<around|(|x+u,y+u|)>=K<around|(|x,y|)>>>>|<row|<cell|<math|w<rsub|j>>,
  <math|\<Lambda\><rsub|k,i>>>|<cell|<hlink|<verbatim|curve>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L14>,
  <hlink|<verbatim|clock>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L30>,
  <hlink|<verbatim|Lambda'>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L17>>|<cell|<math|min
  <around|(|1,\<alpha\><rsub|j>,\<alpha\><rsub|j+1>|)>>; <math|5+log
  <wide|\<beta\>|^><rsub|k>+<around|\<lvert\>|s<rsub|i>-s<rsub|k>|\<rvert\>>>>>|<row|<cell|delay
  condition>|<cell|<hlink|<verbatim|Delay>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Length.lean#L19>>|<cell|<math|\<Omega\><rsub|J<rsub|i>>\<leqslant\>log
  <wide|\<beta\>|^><rsub|i>> for <math|i\<geqslant\>e>>>|<row|<cell|flat rate
  (III.14.3)>|<cell|<hlink|<verbatim|Quorum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Entrance.lean#L13-L21>>|<cell|clauses
  (a)\U(c)>>|<row|<cell|family and numerical
  assumptions>|<cell|<hlink|<verbatim|World>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L82-L91>,
  <hlink|<verbatim|Funding>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/World.lean#L101-L110>,
  <hlink|<verbatim|Spacing>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Mesh.lean#L32-L41>>|<cell|hypotheses
  of III.14.4; their form on a common level system>>|<row|<cell|stairs, drop,
  weight>|<cell|<hlink|<verbatim|Stair>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L24-L30>,
  <hlink|<verbatim|drop>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L66>,
  <hlink|<verbatim|Fade>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Rate/Stair.lean#L108>>|<cell|index
  family; <math|L<rsub|i><rsup|-\<theta\>>>; age polynomial times
  <math|<around|(|a<rsub|t>/a<rsub|i>|)><rsup|c>>>>|<row|<cell|shadow>|<cell|<hlink|<verbatim|shadow>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Flat/Shadow.lean#L30-L50>>|<cell|same
  level system with clip profile replaced>>|<row|<cell|recipe <math|C>, floor
  <math|E<rsub|C>>, bill <math|B<rsub|C>>>|<cell|<hlink|<verbatim|Choice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L29-L51>,
  <hlink|<verbatim|floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L61-L65>,
  <hlink|<verbatim|post>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/NativeComponentRecipe.lean#L75-L79>>|<cell|three
  components with pre-length floors; combined floor <math|E<rsub|C>> and
  post-length bill <math|B<rsub|C>>>>|<row|<cell|point-group invariance
  ("sworn")>|<cell|<hlink|<verbatim|Bid.Sworn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Station.lean#L54-L55>>|<cell|colour-summed
  bilinear form invariant under signed axis
  permutations>>|<row|<cell|background-field identities
  ("licensed")>|<cell|<hlink|<verbatim|Aura.licensed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Aura/Publisher.lean#L24-L26>>|<cell|free
  background map satisfies the background-field identities for the actual
  forms>>|<row|<cell|"prices", "bill", "floor", "numeric",
  "post">|<cell|\V>|<cell|numerical bounds on block factors and the reference
  coupling>>>>>

  <section|7. What remains unexplained><label|7-what-remains-unexplained>

  <\enumerate>
    <item><strong|Selection in III.2.> Lemma 4.16 is used as an input; the
    underlying construction of the scale and extraction data is not audited
    here. Its two auxiliary inputs have canonical choices. Removing the
    recipe demand would give a separate existence statement, not an
    identification of the resulting run with the fixed run of Proposition
    III.14.1.

    <item><strong|The funded condition.> Its thirteen clauses are retained in
    full, rather than replaced by their summary in Proposition III.14.1. The
    route through <hlink|<verbatim|fromFunded>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L150-L167>
    uses the clauses for extraction, comparison, OPE and asymptotic control;
    their detailed mathematical meanings and proofs belong to III.15 and
    later units. In particular, that route does not project the
    local-estimate clause involving <math|\<Delta\><rsub|10>>.

    <item><strong|Auxiliary estimates in Ÿ4.6.> Only their statements and
    numerical uses are summarized. Their full admissibility conditions and
    proofs, including the curvature-lift, marked-kernel and formal Ward
    estimates, remain outside this verification. The summaries are not
    substitutes for those hypotheses.

    <item><strong|Inputs from III.3 and III.8.> The free-kernel existence
    theorem and the underlying lattice kernel estimates are used at their
    stated interfaces. The proofs of those upstream results are not audited
    here.
  </enumerate>

  <ym-unit-nav|<hlink|\<leftarrow\> III.13 Alternative construction: one
  Wilson family for all labels (notes)|III-13.tm>|<hlink|Part
  III|../units.tm#part-iii-ultraviolet-construction-renormalization-group><ym-nav-sep><hlink|Unit
  outline|../units/III-14.tm>|<hlink|III.15 Cost accounting for observables
  and the remainder comparison (notes) \<rightarrow\>|III-15.tm>>
</body>

<\initial>
  <\collection>
    <associate|html-title|III.14. The construction run: flat representations
    and the ultraviolet rate \V detailed notes \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1-what-this-unit-proves|<tuple|1|2>>
    <associate|2-what-it-uses|<tuple|2|6>>
    <associate|3-strategy|<tuple|3|8>>
    <associate|4-steps|<tuple|4|8>>
    <associate|41-flat-representations-and-their-propagation|<tuple|4.1|8>>
    <associate|42-choice-of-widths-and-passage-to-position-space|<tuple|4.2|10>>
    <associate|43-uniqueness-of-the-gaussian-part-the-three-recipe-components|<tuple|4.3|11>>
    <associate|44-realizing-the-recipe-on-a-run|<tuple|4.4|12>>
    <associate|45-the-run|<tuple|4.5|13>>
    <associate|46-the-packages-behind-the-numerical-floors|<tuple|4.6|13>>
    <associate|5-where-the-difficulty-lies|<tuple|5|14>>
    <associate|6-notation|<tuple|6|15>>
    <associate|7-what-remains-unexplained|<tuple|7|16>>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|4.6|13>>
    <associate|auto-11|<tuple|5|14>>
    <associate|auto-12|<tuple|6|15>>
    <associate|auto-13|<tuple|7|16>>
    <associate|auto-2|<tuple|2|6>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|4|8>>
    <associate|auto-5|<tuple|4.1|8>>
    <associate|auto-6|<tuple|4.2|10>>
    <associate|auto-7|<tuple|4.3|11>>
    <associate|auto-8|<tuple|4.4|12>>
    <associate|auto-9|<tuple|4.5|13>>
    <associate|iii14-the-construction-run-flat-representations-and-the-ultraviolet-rate--detailed-notes|<tuple|?|1>>
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

      <with|par-left|<quote|1tab>|4.1 Flat representations and their
      propagation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|4.2 Choice of widths and passage to
      position space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|4.3 Uniqueness of the Gaussian part; the
      three recipe components <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|4.4 Realizing the recipe on a run
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|4.5 The run
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.6 The packages behind the numerical
      floors <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Where the difficulty lies> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Notation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      What remains unexplained> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>