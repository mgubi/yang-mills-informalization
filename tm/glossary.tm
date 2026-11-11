<TeXmacs|2.1.5>

<style|<tuple|generic|british|ym-outline>>

<\body>
  <ym-nav|<hlink|Home|index.tm><ym-nav-sep><hlink|The
  theorem|statement.tm><ym-nav-sep><hlink|The proof in one
  reading|summary.tm><ym-nav-sep><hlink|Architecture|outline/index.tm><ym-nav-sep><hlink|Units|outline/units.tm><ym-nav-sep><hlink|Manuscript|manuscript/index.tm><ym-nav-sep><ym-nav-here|Glossary><ym-nav-sep><hlink|FAQ|faq.tm><ym-nav-sep><hlink|Work
  items|outline/work-items.tm><ym-nav-sep><hlink|Data|data/index.tm><ym-nav-sep><hlink|Method|method.tm><ym-nav-sep><hlink|Provenance|provenance.tm><ym-nav-sep><hlink|Changes|CHANGELOG.tm>>

  <ym-title|Glossary of the Lean names><label|glossary-of-the-lean-names>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Mathematical
    terms> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Why a glossary>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|The main
    theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Nickname
    families> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part I: Setting
    and general tools> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part II: Data
    of the construction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part III:
    Ultraviolet construction (renormalization group)>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part IV:
    Infinite volume> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part V: Phases
    and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part VI:
    Symmetry: stress tensor and Ward identities>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Part VII:
    Identification as Yang\UMills> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Index>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12><vspace|0.5fn>
  </table-of-contents>

  This page translates the nicknames used in OpenAI's Lean 4 formalization of
  the construction of four-dimensional quantum Yang\UMills theory into
  ordinary mathematics. It is meant for mathematicians and mathematical
  physicists who want to read the formalization, or write an exposition of
  it. It accompanies the <hlink|outline of the work
  items|outline/work-items.tm>.

  Every Lean name is a link to its definition at a fixed commit of
  <hlink|<verbatim|yang-mills-group/OpenAI-YM-20261028>|https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464>.

  <strong|Reading.> <em|certain> = read from the definition and its uses;
  <em|probable> = inferred from the fields and the documentation;
  <em|tentative> = partly guessed (where the role is unknown, the entry says
  "unclear"). These labels describe how an entry was interpreted; even
  <em|certain> does not mean an independent proof audit. They are separate
  from the <hlink|unit outline statuses|method.tm#unit-outline-status>. An
  entry marked <strong|main statement> occurs in a public definition or in
  the detailed construction statement; it need not be a conclusion of the
  public theorem.

  <strong|Contents.> <hlink|Mathematical terms|#mathematical-terms>
  <ym-middot> <hlink|Why a glossary|#why-a-glossary> <ym-middot> <hlink|The
  main theorem|#the-main-theorem> <ym-middot> <hlink|Nickname
  families|#nickname-families> <ym-middot> Parts: <hlink|I|#part-i>
  <ym-middot> <hlink|II|#part-ii> <ym-middot> <hlink|III|#part-iii>
  <ym-middot> <hlink|IV|#part-iv> <ym-middot> <hlink|V|#part-v> <ym-middot>
  <hlink|VI|#part-vi> <ym-middot> <hlink|VII|#part-vii> <ym-middot>
  <hlink|Index|#index>

  <section|Mathematical terms><label|mathematical-terms>

  This index goes from mathematical objects to entries; the
  <hlink|alphabetical index|#index> goes from Lean names to entries.

  <block|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|-1|cell-hyphen|t>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|Mathematical
  object>>|<cell|<strong|Glossary entries>>>|<row|<cell|Gauge group, Lie
  algebra and normalization>|<cell|<hlink|Gauge group|#yangmills-gaugegroup>,
  <hlink|simplicity|#yangmills-gaugegroup-issimple>,
  <hlink|Casimir|#ym-gauge-casimir>>>|<row|<cell|Wilson measure and local
  lattice observables>|<cell|<hlink|Wilson law|#yangmills-wilsonlaw>,
  <hlink|family|#yangmills-wilsonfamily-2>,
  <hlink|insertions|#ym-family-o>>>|<row|<cell|Curvature-polynomial labels
  and continuum fields>|<cell|<hlink|Labels|#ym-labels-label>,
  <hlink|quotient fields|#ym-table-field>, <hlink|common label
  space|#ym-table-union>>>|<row|<cell|Full mesh limit and volume
  extraction>|<cell|<hlink|Public convergence|#yangmills-wilsonfamily-converges>,
  <hlink|extraction order|#ym-extraction-order>, <hlink|fixed-volume
  kernels|#ym-fullvolume-positionsuv>>>|<row|<cell|Phases, vacuum and
  reconstruction>|<cell|<hlink|Phase decomposition|#ym-os-spread-resolution>,
  <hlink|OS space|#ym-os-chamber>, <hlink|Wightman
  theory|#yangmills-wightmantheory>, <hlink|every
  phase|#ym-everyphase-completed>>>|<row|<cell|Rotations, stress tensor and
  Ward identities>|<cell|<hlink|Rotation action|#ym-table-rotation>,
  <hlink|stress tensor|#ym-table-stress>, <hlink|Ward
  identities|#ym-table-stresslaws>>>|<row|<cell|Running
  coupling>|<cell|<hlink|Reference coupling|#ym-rg-calendar-hatbeta>,
  <hlink|slope|#ym-gauge-slopeconstant>>>|<row|<cell|Short-distance
  comparison and trace test>|<cell|<hlink|Maxwell
  comparison|#ym-pert-firstextension>, <hlink|centered
  trace|#ym-traceextension-center>, <hlink|two-point
  function|#yangmills-hierarchy-tracetwo>, <hlink|finite Wick
  profiles|#yangmills-hierarchy-wickprofile>>>|<row|<cell|Operator product
  expansion and coincident points>|<cell|<hlink|OPE|#yangmills-hierarchy-operatorproductexpansion>,
  <hlink|coefficient prescription|#ym-ope-prescription>, <hlink|contact
  extensions|#yangmills-hierarchy-contacts>>>>>>

  <section|Why a glossary><label|why-a-glossary>

  The formalization uses arbitrary English words for its objects:
  <verbatim|Treasury>, <verbatim|Jewel>, <verbatim|Sheet>, <verbatim|Teller>,
  <verbatim|Almanac>, <verbatim|Solstice>, and so on. Most of them carry no
  information about the mathematics. The names were evidently chosen to be
  distinct, not descriptive, so the code cannot be read from its identifiers
  alone. This glossary gives, for 276 declarations, the mathematical object
  each name stands for, with the file and line of its definition. It covers
  the declarations that occur in the main statements, together with the most
  widely used ones in each part of the proof; it is not exhaustive.

  The entries are grouped by the parts of the proof:

  <block|<tformat|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|1|1|-1|cell-valign|bottom>|<table|<row|<cell|<strong|part>>|<cell|<strong|name>>>|<row|<cell|I>|<cell|Setting>>|<row|<cell|II>|<cell|Data
  of the construction>>|<row|<cell|III>|<cell|Ultraviolet construction
  (renormalization group)>>|<row|<cell|IV>|<cell|Infinite
  volume>>|<row|<cell|V>|<cell|Phases and
  reconstruction>>|<row|<cell|VI>|<cell|Symmetry: stress tensor and Ward
  identities>>|<row|<cell|VII>|<cell|Identification as
  Yang\UMills>>|<row|<cell|VIII>|<cell|Assembly of the main theorem>>>>>

  Part VIII has no entries of its own; it is the main theorem below. Entries
  which are general tools used in several parts are placed under Part I.
  Inside each part, entries which occur in the main statements come first;
  the others follow, roughly in decreasing order of how many declarations use
  them.

  <section|The main theorem><label|the-main-theorem>

  The public theorem is <hlink|<verbatim|YangMills.jointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Solution.lean#L4-L10>;
  see the <hlink|exact statement and its limits|statement.tm>. It fixes one
  regular Wilson family before a requested volume sequence, then supplies a
  refinement of that volume sequence and a hierarchy with four properties.
  The following account describes the <strong|detailed construction theorem>,
  <verbatim|YangMills.constructed> in <hlink|<verbatim|Construction.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean>.
  In plain mathematics, with the Lean names in brackets:

  <\itemize-minus>
    <item>Fix a simple compact matrix gauge group G and a number b \<gtr\> 0,
    a numerical parameter of the block-spin kernel
    (<verbatim|KernelChoices.penalty>).

    <item>There is a Wilson family <verbatim|C>: the whole
    renormalization-group construction, consisting of lattice spacings a_N,
    torus periods L_p, couplings \<beta\>_{N,p}, and the renormalized lattice
    observables for every label. It is internally consistent
    (<verbatim|C.Makes>) and satisfies <hlink|<verbatim|YangMills.WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12>:
    \<beta\>_{N,p}/log(1/a_N) tends to a positive slope, the observables are
    continuous and gauge invariant, and each depends on a fixed finite
    stencil of links.

    <item>For every pair <verbatim|p> of mesh and volume subsequences (an
    <verbatim|Extraction.Order>) there is a refinement <verbatim|q> of both,
    and

    <\itemize-minus>
      <item>a limit Euclidean theory <verbatim|S>, the family of all n-point
      functions of all labels (a <verbatim|Table>);

      <item>a record <verbatim|F> (a <verbatim|Final>) containing the data
      fixing the renormalization-group trajectory, the axioms of the limit,
      the field algebra (derivatives, rotations, stress tensor), the
      decomposition into phases and the Wightman reconstruction;

      <item>the same reconstruction for every phase (an
      <verbatim|EveryPhase.Almanac>);

      <item>the data of the operator product expansion (a <verbatim|Reader>)
      and of the extraction of contact terms (<verbatim|Contacts.Devices>);

      <item>a scaling sequence r_k \<rightarrow\> 0 for the comparison with
      the free Maxwell field (<verbatim|Climb.Scaling>).
    </itemize-minus>

    <item>The conclusions are the public properties (the Wilson limit;
    reconstruction; the operator product expansion; a non-free trace test),
    the ordered limit <hlink|<verbatim|YM.Extraction.Order.Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32>,
    <hlink|<verbatim|YM.FullVolume.PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25>,
    <hlink|<verbatim|YM.Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58>,
    the independent checks <hlink|<verbatim|YM.Independent.Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18>,
    the Wightman axioms for the selected phase and for each character
    (<verbatim|Headline.Reconstruction>), the separated and nested operator
    product expansions, the trace exclusions, the extension across contact
    terms (<verbatim|Solstice.MultipleLight>, <verbatim|Thresholds>,
    <verbatim|SystemBasis>), and the short-distance comparison with free
    Maxwell fields (<verbatim|Pert.FirstExtension>,
    <verbatim|Pert.Position.FourMeters>).
  </itemize-minus>

  <strong|Public dictionary> (from <hlink|<verbatim|HierarchyBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean>
  and <hlink|<verbatim|WilsonBridge.lean>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean>).
  The Hilbert space <verbatim|Hierarchy.H> is the Hilbert space of the
  reconstructed theory of the selected phase. <verbatim|Field d> is the
  quotient label space F_d = Label_d / null. <verbatim|toLabel> is
  <verbatim|Table.pin>. <verbatim|Character> is the compact space of phases
  <verbatim|F.alpha.space.X>, with its measure <verbatim|mu>.
  <verbatim|correlation s> is <verbatim|Table.useAt (spectator F s)>; for s =
  none it is the mixed theory S^mix, for s = some \<xi\> the phase S^\<xi\>.
  <verbatim|continuation> is the analytic continuation
  <verbatim|F.A.waves.F>. <verbatim|centeredTrace> is
  <verbatim|TraceExtension.center F>. For the Wilson family,
  <verbatim|period>, <verbatim|denominator>, <verbatim|beta> and
  <verbatim|insertion> are <verbatim|C.S.period>, <verbatim|C.S.denominator>,
  <verbatim|C.beta> and <verbatim|C.seen>.

  In the construction the quotient spaces have compatible injective maps
  <math|F<rsub|d>\<to\>F<rsub|e>> for <math|d\<leqslant\>e>, and their images
  in the response-function space give the common label space. This is a
  filtration by bounded degree, not a direct sum of separate degree spaces.
  The public hierarchy does not require these inclusions; see
  <hlink|Definition 1.11|statement.tm#continuum-hierarchy>.

  <section|Nickname families><label|nickname-families>

  The words are arbitrary, but several families of them are systematic. Where
  a family is described as a pattern, it is a pattern in the code and its
  docstrings, not a documented convention.

  <\enumerate>
    <item><strong|Calendar and economics: the order in which constants are
    chosen.> The renormalization-group argument needs its constants in a
    strict order: first the "pre-L" constants (orders, powers, support
    exponents, widths), then the block sizes L (odd, large), then the
    "post-L" constants (the smallness exponent \<theta\>, entry thresholds,
    volume shells), then a barrier \<beta\>\<#304\>. The file
    <verbatim|Price/Intent.lean> is titled "Calendar issuance API: Orders &
    constants chosen BEFORE block ratio". Accordingly <verbatim|Sheet> holds
    the pre-L constants, <verbatim|Rolls> the block sizes L_j,
    <verbatim|Protection> the exponent \<theta\>, <verbatim|Delays> the
    deadlines, <verbatim|Bar> the barrier, <verbatim|Wait> the windows, and
    <verbatim|Paid> says that the schedule has "paid" every cost.
    <verbatim|Supply> is the namespace of these. <verbatim|MapPrices>,
    <verbatim|PostCost>, <verbatim|Worth>, <verbatim|Teller> (one call of the
    step estimator: "prices and inputs"), <verbatim|Funds> (the call is
    affordable), <verbatim|Stores>, <verbatim|Cash>, <verbatim|bill>,
    <verbatim|toll>, <verbatim|fee>, <verbatim|price> and <verbatim|cost> are
    numerical bounds and their bookkeeping. "Budget", "price" and "cost"
    always mean a numerical bound or exponent in a polymer norm (for example
    <verbatim|SumBudget>, <verbatim|BudgetPoint>), never anything economic.

    <item><strong|Weather and seasons: contact terms.> The namespace
    <verbatim|Contacts.Solstice> (<verbatim|Lights>, <verbatim|Sunshine>,
    <verbatim|MultipleLight>, <verbatim|Thresholds>, <verbatim|Backdrop>,
    <verbatim|Annulus>, <verbatim|Run>) is the extension of correlations
    across coincident points using the operator product expansion.
    <verbatim|Devices>, <verbatim|Detector>, <verbatim|Prescription> and
    <verbatim|Reader> are the fixed coefficient-extraction functionals (the
    "tomography" of the docstrings).

    <item><strong|Rooms and halls: from Euclidean to Hilbert space.>
    <verbatim|Chamber> is the Osterwalder\USchrader (GNS) Hilbert space for a
    time axis; <verbatim|Spread> and <verbatim|Slab> are time-slab word
    operators; <verbatim|Heat> is the semigroup e^{-sH}; <verbatim|Contour>,
    <verbatim|Waves> and <verbatim|Surface> are the analytic continuation and
    the Wightman distributions; <verbatim|Almanac> (in <verbatim|EveryPhase>)
    is the reconstruction data for all phases; <verbatim|Pantry>,
    <verbatim|Pack>, <verbatim|Docks> and <verbatim|Stress.*> (in
    <verbatim|EveryPhase.Stress>) are the machinery for continuing the Ward
    identities and the stress tensor.

    <item><strong|Tables and labels.> These names are used consistently. A
    <verbatim|Register> is a label system with a scale for each degree; a
    <verbatim|Token> is a homogeneous reference label; a <verbatim|Table> is
    the family of all correlation functions; <verbatim|Field d> is F_d; a
    <verbatim|Tag> is a pair (d, element of F_d); <verbatim|Union> is the
    union of all F_d. <verbatim|Table.Hierarchy> is the Euclidean axioms of
    the limit theory; it is not the public <verbatim|YangMills.Hierarchy>,
    which is the whole package.

    <item><strong|Extraction.> <verbatim|Extraction.Order> is a pair of a
    mesh subsequence N_j and a volume subsequence p_k; <verbatim|late> means
    "for k large, then j large"; <verbatim|refine> passes to further
    subsequences; <verbatim|Ordered> states that the ordered limit holds.
    This is the subsequential structure of the detailed theorem. The public
    theorem requests only a volume subsequence and retains the full spacing
    sequence.

    <item><strong|Mathematics behind plain English words.> <verbatim|Tree>,
    <verbatim|Forest>, <verbatim|Pines>, <verbatim|Slice>: tree gauge fixing.
    <verbatim|Cells>, <verbatim|Tiling>, <verbatim|Interior>,
    <verbatim|rootTest>: reflection-positivity cells and chessboard estimates
    (<verbatim|rootTest> is <math|<around|\||\<bbb-E\>*<big|prod><rsub|i><math-up|copy><rsub|i>F|\|><rsup|1/\<sharp\><math-up|cells>>>,
    the chessboard root). <verbatim|Marker>: a nilpotent bookkeeping algebra
    for products of polymers. <verbatim|Bloch>, <verbatim|Laurent>,
    <verbatim|Circulant>, <verbatim|Row>, <verbatim|Momentum>: Fourier
    analysis of translation-invariant kernels on the periodic lattice.
    <verbatim|Exterior>, <verbatim|TypeFace>, <verbatim|Body>: lattice
    differential forms. <verbatim|Precision>, <verbatim|PCalc>,
    <verbatim|Horizon>, <verbatim|Bed>, <verbatim|Floor>: linearization of
    the renormalization-group step and quadratic-form (Hessian) estimates.
    <verbatim|Stationary>: saddle-point analysis. <verbatim|Pressure>:
    estimates for one renormalization-group step.
    <verbatim|ConnectedActivityE6>: connected-activity (cluster expansion)
    bounds. <verbatim|Ac>: bookkeeping of connected words and clusters.
    <verbatim|Ward>: sums in the Ward identity. <verbatim|Climb.Scaling>: the
    scaling sequence for the free-Maxwell comparison. <verbatim|Trace*>: the
    centered trace and the anomaly. <verbatim|Pert>: the perturbative
    (one-loop) and free-Maxwell comparison. <verbatim|Maxwell>,
    <verbatim|Wick>: free-field models.

    <item><strong|Directory names without meaning.> <verbatim|Next/>,
    <verbatim|Push/>, <verbatim|Further/>, <verbatim|Extra/>,
    <verbatim|Work/A01>, <verbatim|RG05> to <verbatim|RG17>,
    <verbatim|UVNext>, <verbatim|SectorNext>, <verbatim|MultiNext>,
    <verbatim|PhysicalNext>, <verbatim|AnalyticNext>,
    <verbatim|AnalyticBridge>, and the capitalized subfolders are folder
    names that carry no mathematical meaning.

    <item><strong|Short names which are not nicknames.> <verbatim|c>,
    <verbatim|f> are the coarse and fine torus sides; <verbatim|N>,
    <verbatim|p> are the mesh and volume indices; <verbatim|m> is the
    renormalization-group level; <verbatim|J> is the regularity index of a
    level; <verbatim|L> is the block size; <verbatim|d> is the degree
    (weight) of a label; \<beta\>\<#302\> is the renormalized coupling at
    level m. "Denotational" means a representation as data, not as a
    quotient. "Junk at coincident points" means that functions are made total
    by arbitrary values where they are undefined.
  </enumerate>

  About a third of the entries have reading <em|probable> or <em|tentative>,
  mostly in Part III, where the code is a very large set of technical
  estimate packages (polymer norms, cluster bounds).

  <label|part-i>

  <section|Part I: Setting and general tools><label|part-i-setting-and-general-tools>

  Compact gauge groups, lattices, tensors, Hilbert spaces and similar basic
  objects used throughout. Entries here define the setting of the
  construction; the others are general tools used in several parts. (46
  entries)

  <label|ym-gauge-simple> <strong|<hlink|<verbatim|YM.Gauge.Simple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L179>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Real simple nonabelian Lie algebra (docstring 'Real
  simplicity with the nonabelian clause').

  <label|yangmills-gaugegroup> <strong|<hlink|<verbatim|YangMills.GaugeGroup>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>A closed matrix subgroup G of U(n+1) together with its
  Lie algebra g (the matrices X with exp(tX) in G for all t); the gauge group
  of the theorem.

  <label|yangmills-testfunction> <strong|<hlink|<verbatim|YangMills.TestFunction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L70>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Complex Schwartz function on R^4.

  <label|yangmills-gaugegroup-core> <strong|<hlink|<verbatim|YangMills.GaugeGroup.core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L10>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Converts a public GaugeGroup to the internal YM.Gauge.

  <label|yangmills-hilbertspace> <strong|<hlink|<verbatim|YangMills.HilbertSpace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L79>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Complex Hilbert space packaged with its structure.

  <label|yangmills-gaugegroup-issimple> <strong|<hlink|<verbatim|YangMills.GaugeGroup.IsSimple>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The Lie algebra g is nonabelian and has no proper
  nonzero ideal (real simple), the hypothesis 'simple compact gauge group'.

  <label|ym-lattice-site> <strong|<hlink|<verbatim|YM.Lattice.Site>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19>>
  <ym-middot> Reading: certain<next-line>Site of the periodic 4-torus
  (Z/n)^4.

  <label|ym-axis> <strong|<hlink|<verbatim|YM.Axis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L18>>
  <ym-middot> Reading: certain<next-line>The four coordinate directions Fin
  4; time is the last (timeAxis).

  <label|ym-lattice-side> <strong|<hlink|<verbatim|YM.Lattice.Side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L17>>
  <ym-middot> Reading: certain<next-line>A positive integer: the number of
  lattice sites per axis of the periodic torus.

  <label|ym-gauge> <strong|<hlink|<verbatim|YM.Gauge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23>>
  <ym-middot> Reading: certain<next-line>Closed subgroup of the unitary group
  U(n+1) (the gauge group G in its fixed faithful representation).

  <label|ym-e4> <strong|<hlink|<verbatim|YM.E4>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24>>
  <ym-middot> Reading: certain<next-line>Euclidean space R^4 with Euclidean
  norm.

  <label|ym-lattice-cover> <strong|<hlink|<verbatim|YM.Lattice.Cover>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L20>>
  <ym-middot> Reading: certain<next-line>Z^4, universal cover of the lattice;
  used for local stencils independent of the torus size.

  <label|ym-gauge-color> <strong|<hlink|<verbatim|YM.Gauge.Color>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43>>
  <ym-middot> Reading: certain<next-line>The Lie algebra g in orthonormal
  coordinates, as Euclidean space R^{dim g}; 'Color' = adjoint index.

  <label|ym-lattice-support> <strong|<hlink|<verbatim|YM.Lattice.Support>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L16>>
  <ym-middot> Reading: certain<next-line>Finite set of lattice sites (the
  support or footprint of a local observable).

  <label|ym-gauge-colorindex> <strong|<hlink|<verbatim|YM.Gauge.ColorIndex>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L42>>
  <ym-middot> Reading: certain<next-line>Index set {1..dim g} of a basis of
  g.

  <label|ym-points> <strong|<hlink|<verbatim|YM.Points>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L56>>
  <ym-middot> Reading: certain<next-line>n-tuples of points of R^4
  (configuration space for n-point functions).

  <label|ym-lattice-separation> <strong|<hlink|<verbatim|YM.Lattice.separation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81>>
  <ym-middot> Reading: certain<next-line>Sup-norm distance on the torus
  ('Canonical lifted max-distance').

  <label|ym-gauge-el> <strong|<hlink|<verbatim|YM.Gauge.El>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L78>>
  <ym-middot> Reading: certain<next-line>The group G as the link-variable
  space ('Physical link state space').

  <label|ym-lattice-covernumber> <strong|<hlink|<verbatim|YM.Lattice.coverNumber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69>>
  <ym-middot> Reading: probable<next-line>Minimum number of M-balls with
  connected union that cover a support; measures a support's size in the
  cluster-expansion weights.

  <label|ym-lattice-plaqaxes> <strong|<hlink|<verbatim|YM.Lattice.PlaqAxes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L13>>
  <ym-middot> Reading: certain<next-line>Axis pairs i\<less\>j labeling
  plaquette orientations.

  <label|ym-lattice-edge> <strong|<hlink|<verbatim|YM.Lattice.Edge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L21>>
  <ym-middot> Reading: certain<next-line>A link: site together with a
  positive direction.

  <label|ym-exterior-typeface> <strong|<hlink|<verbatim|YM.Exterior.TypeFace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Initial.lean#L13>>
  <ym-middot> Reading: probable<next-line>A blade (increasing set of r axes):
  basis of r-forms on R^4; used for curvature components (2-forms) and
  derivatives.

  <label|ym-gauge-adjoint> <strong|<hlink|<verbatim|YM.Gauge.adjoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114>>
  <ym-middot> Reading: certain<next-line>Adjoint representation Ad(u) on g in
  coordinates.

  <label|ym-gauge-lieexp> <strong|<hlink|<verbatim|YM.Gauge.lieExp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L160>>
  <ym-middot> Reading: certain<next-line>Exponential map g -\<gtr\> G
  ('Actual exponential into the gauge group').

  <label|ym-lattice-per> <strong|<hlink|<verbatim|YM.Lattice.Per>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L18>>
  <ym-middot> Reading: certain<next-line>Z/nZ, one periodic axis of the
  lattice.

  <label|ym-exterior-body> <strong|<hlink|<verbatim|YM.Exterior.Body>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Initial.lean#L14>>
  <ym-middot> Reading: probable<next-line>Site-indexed blades: r-cochains on
  the lattice (r=1 link fields, r=2 plaquette fields).

  <label|ym-laurent-phase> <strong|<hlink|<verbatim|YM.Laurent.Phase>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L26>>
  <ym-middot> Reading: probable<next-line>Complex momentum vector.

  <label|ym-gauge-mat> <strong|<hlink|<verbatim|YM.Gauge.Mat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L92>>
  <ym-middot> Reading: certain<next-line>The matrix of a group element in
  M_{n+1}(C).

  <label|ym-analysis-d> <strong|<hlink|<verbatim|YM.Analysis.D>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L22>>
  <ym-middot> Reading: certain<next-line>Directional derivative fderiv in
  direction u.

  <label|ym-tensor-diagonal> <strong|<hlink|<verbatim|YM.Tensor.diagonal>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L34>>
  <ym-middot> Reading: certain<next-line>A -\<gtr\> (x \|-\<gtr\>
  A(x,...,x)): homogeneous polynomial from a symmetric multilinear map.

  <label|ym-tensor-coeff> <strong|<hlink|<verbatim|YM.Tensor.coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65>>
  <ym-middot> Reading: certain<next-line>Taylor coefficient (1/j!) D^j f(x).

  <label|ym-lattice-halo> <strong|<hlink|<verbatim|YM.Lattice.halo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43>>
  <ym-middot> Reading: certain<next-line>The set of sites within distance M
  of a given support.

  <label|ym-tensor-t> <strong|<hlink|<verbatim|YM.Tensor.T>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L22>>
  <ym-middot> Reading: certain<next-line>Continuous j-multilinear maps E^j
  -\<gtr\> F.

  <label|ym-lattice-gaugeinvariant> <strong|<hlink|<verbatim|YM.Lattice.GaugeInvariant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L135>>
  <ym-middot> Reading: certain<next-line>Function of links invariant under
  gauge transformations U_e -\<gtr\> t_x U_e t_y^{-1}.

  <label|ym-lattice-walk> <strong|<hlink|<verbatim|YM.Lattice.Walk>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L27>>
  <ym-middot> Reading: certain<next-line>A path of unit steps (lattice word)
  for building parallel transports.

  <label|ym-gauge-curvature> <strong|<hlink|<verbatim|YM.Gauge.curvature>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L173>>
  <ym-middot> Reading: certain<next-line>Skew-Hermitian part (u - u^{-1})/2
  of a link/plaquette value projected to g; the leading lattice curvature of
  a small loop.

  <label|ym-exterior-d> <strong|<hlink|<verbatim|YM.Exterior.d>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Complex.lean#L13>>
  <ym-middot> Reading: probable<next-line>Lattice exterior derivative
  (coboundary).

  <label|ym-lattice-step-vec> <strong|<hlink|<verbatim|YM.Lattice.Step.vec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L31>>
  <ym-middot> Reading: certain<next-line>The lattice vector of a step.

  <label|ym-lattice-step> <strong|<hlink|<verbatim|YM.Lattice.Step>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L23>>
  <ym-middot> Reading: certain<next-line>One unit step in a direction,
  forward or backward.

  <label|ym-lattice-face> <strong|<hlink|<verbatim|YM.Lattice.Face>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L14>>
  <ym-middot> Reading: certain<next-line>An elementary plaquette: base point
  and an axis pair i\<less\>j.

  <label|ym-laurent-mode> <strong|<hlink|<verbatim|YM.Laurent.mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L39>>
  <ym-middot> Reading: certain<next-line>Plane wave exp(i p.x).

  <label|ym-lattice-localon> <strong|<hlink|<verbatim|YM.Lattice.LocalOn>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196>>
  <ym-middot> Reading: certain<next-line>Function of links that depends only
  on links inside a given site set.

  <label|ym-laurent-strip> <strong|<hlink|<verbatim|YM.Laurent.strip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L43>>
  <ym-middot> Reading: probable<next-line>Strip of complex momenta with \|Im
  p_i\|\<less\>eta: where exponential decay of kernels gives analyticity.

  <label|ym-lattice-agrees> <strong|<hlink|<verbatim|YM.Lattice.Agrees>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L192>>
  <ym-middot> Reading: certain<next-line>Two configurations coincide on all
  links inside a region.

  <label|ym-gauge-probhaar> <strong|<hlink|<verbatim|YM.Gauge.probHaar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L187>>
  <ym-middot> Reading: certain<next-line>Normalized Haar probability measure
  on G.

  <label|ym-gauge-casimir> <strong|<hlink|<verbatim|YM.Gauge.casimir>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180>>
  <ym-middot> Reading: certain<next-line>Adjoint Casimir constant C_A of g
  from the trace of ad on colors.

  <label|part-ii>

  <section|Part II: Data of the construction><label|part-ii-data-of-the-construction>

  Label systems: the formal observables of the theory, their degrees,
  derivatives and quotients, and the tables of correlation functions built on
  them. (29 entries)

  <label|ym-family> <strong|<hlink|<verbatim|YM.Family>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The constructed Wilson family: RG history,
  holonomy/ODE data, label frames, local sections (lattice representatives of
  labels), reference levels, and transfers of labels through the RG; the
  object C in the main theorem.

  <label|ym-family-makes> <strong|<hlink|<verbatim|YM.Family.Makes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Consistency of a Family: the selected Wilson
  trajectory exists, sections are sound, the regularity profiles cover all
  degrees, stencils fit in the torus, 'priced' sup bounds hold, and the
  recipe for the trajectory is consistent with the family.

  <label|yangmills-hierarchy-tag> <strong|<hlink|<verbatim|YangMills.Hierarchy.Tag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L55>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>A homogeneous label: a degree d and an element of the
  quotient label space F_d.

  <label|yangmills-fieldlabels> <strong|<hlink|<verbatim|YangMills.FieldLabels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L96>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Complex vector space packaged with its structure of
  field labels.

  <label|yangmills-wilsonfamily-separated>
  <strong|<hlink|<verbatim|YangMills.WilsonFamily.separated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L59>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The open set of n-point configurations with pairwise
  distinct points (no collisions).

  <label|ym-family-book> <strong|<hlink|<verbatim|YM.Family.book>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L20>>
  <ym-middot> Reading: certain<next-line>The Register of the family: label
  frames with the scalar normalization a_{ref d}^d per degree.

  <label|ym-table-field> <strong|<hlink|<verbatim|YM.Table.Field>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74>>
  <ym-middot> Reading: certain<next-line>Quotient label space F_d = Label_d /
  null (labels with identically vanishing correlations).

  <label|ym-family-label> <strong|<hlink|<verbatim|YM.Family.label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L36>>
  <ym-middot> Reading: certain<next-line>Coefficient vectors of degree-d
  labels in the chosen basis.

  <label|ym-table-tag> <strong|<hlink|<verbatim|YM.Table.Tag>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66>>
  <ym-middot> Reading: certain<next-line>Pair (degree, element of F_d).

  <label|ym-labels-frame-coeff> <strong|<hlink|<verbatim|YM.Labels.Frame.Coeff>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L18>>
  <ym-middot> Reading: certain<next-line>Coordinate vectors of a label in a
  frame.

  <label|ym-conf> <strong|<hlink|<verbatim|YM.conf>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63>>
  <ym-middot> Reading: certain<next-line>Subset of Points n with pairwise
  distinct points (no coincidences).

  <label|ym-register-token> <strong|<hlink|<verbatim|YM.Register.Token>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88>>
  <ym-middot> Reading: certain<next-line>Reference label of degree d.

  <label|ym-source-hol> <strong|<hlink|<verbatim|YM.Source.Hol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55>>
  <ym-middot> Reading: certain<next-line>Chosen solutions of the parallel
  transport ODE d/dt h = A h along lattice links for the Taylor-jet
  connection (holonomy flow).

  <label|ym-labels-frame-index> <strong|<hlink|<verbatim|YM.Labels.Frame.Index>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L17>>
  <ym-middot> Reading: certain<next-line>Index set of a frame basis.

  <label|ym-labels-frames> <strong|<hlink|<verbatim|YM.Labels.frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107>>
  <ym-middot> Reading: certain<next-line>A fixed choice of coherent frames.

  <label|ym-labels-frame> <strong|<hlink|<verbatim|YM.Labels.Frame>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50>>
  <ym-middot> Reading: certain<next-line>A basis of the label space Label_d
  of real (conjugation-invariant) graded elements starting with the unit.

  <label|ym-source-sectiondata> <strong|<hlink|<verbatim|YM.Source.SectionData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103>>
  <ym-middot> Reading: certain<next-line>Lattice representative of a label
  frame: a finite stencil and a linear map from label coefficients to
  polynomials in link matrix entries (the gauge-invariant local lattice
  polynomials L_v).

  <label|ym-labels-label> <strong|<hlink|<verbatim|YM.Labels.Label>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112>>
  <ym-middot> Reading: certain<next-line>Space of gauge-invariant local field
  labels of weight at most d (polynomials in curvature and covariant
  derivatives modulo Bianchi/rotation structure).

  <label|ym-source-coefficient> <strong|<hlink|<verbatim|YM.Source.Coefficient>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26>>
  <ym-middot> Reading: probable<next-line>Representation of an observable
  through the RG: regular and forced coefficient functions with supports.

  <label|ym-labels-taylor> <strong|<hlink|<verbatim|YM.Labels.Taylor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39>>
  <ym-middot> Reading: probable<next-line>Homogeneous degree-j Taylor part of
  a radial jet.

  <label|ym-labels-jet> <strong|<hlink|<verbatim|YM.Labels.Jet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L28>>
  <ym-middot> Reading: probable<next-line>Taylor jets of the
  connection/curvature at a point (tower of homogeneous degree-j data);
  labels are polynomials in jets.

  <label|ym-table-project> <strong|<hlink|<verbatim|YM.Table.project>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L75>>
  <ym-middot> Reading: certain<next-line>Quotient map to F_d.

  <label|ym-source-coefficient-format> <strong|<hlink|<verbatim|YM.Source.Coefficient.Format>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52>>
  <ym-middot> Reading: tentative<next-line>Regularity/projection requirements
  on a Coefficient.

  <label|ym-table-union> <strong|<hlink|<verbatim|YM.Table.Union>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Union.lean#L24>>
  <ym-middot> Reading: certain<next-line>The union of all F_d inside
  functions of exterior words.

  <label|ym-register> <strong|<hlink|<verbatim|YM.Register>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L17>>
  <ym-middot> Reading: certain<next-line>Label frames with a positive length
  scale per degree (normalization a_{ref d}^d).

  <label|ym-register-ref> <strong|<hlink|<verbatim|YM.Register.Ref>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L26>>
  <ym-middot> Reading: certain<next-line>Coefficients of degree-d labels.

  <label|ym-family-o> <strong|<hlink|<verbatim|YM.Family.O>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42>>
  <ym-middot> Reading: certain<next-line>Renormalized lattice observable
  I_{N,p}(v, .) attached to a label coefficient v at a lattice site.

  <label|ym-labels-frames-2> <strong|<hlink|<verbatim|YM.Labels.Frames>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102>>
  <ym-middot> Reading: certain<next-line>Coherent system of frames for all
  degrees d.

  <label|ym-source-transferdata> <strong|<hlink|<verbatim|YM.Source.TransferData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73>>
  <ym-middot> Reading: certain<next-line>Family of transfers carrying a label
  coefficient through successive RG steps (renormalization coefficients
  c_j(N,p;v)).

  <label|part-iii>

  <section|Part III: Ultraviolet construction (renormalization
  group)><label|part-iii-ultraviolet-construction-renormalization-group>

  The renormalization-group construction of the lattice theories with fixed
  observables as the mesh tends to zero. Most entries here are technical
  estimate packages; for these the entry says what the fields are and which
  step they belong to, not the estimate itself. (124 entries)

  <label|ym-spec-calibrated> <strong|<hlink|<verbatim|YM.Spec.Calibrated>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>There exist issued constants, price lists and a
  Directed recipe whose recursion generates exactly the family's trajectory
  C.path.

  <label|ym-extraction-order-ordered> <strong|<hlink|<verbatim|YM.Extraction.Order.Ordered>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Ordered-limit claim: the smeared lattice correlations
  tend to the integral of the table read.

  <label|ym-fullvolume-positionsuv> <strong|<hlink|<verbatim|YM.FullVolume.PositionsUV>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>Pointwise UV limit in positions: at each fixed volume,
  kernels are smooth away from periodic coincidences, smeared lattice sums
  converge along the mesh sequence, and difference quotients converge locally
  uniformly to the corresponding derivatives. Here \Pcluster\Q in the Lean
  type concerns limits of differenced kernels, not a clustering property of
  the state.

  <label|yangmills-wilsonfamily> <strong|<hlink|<verbatim|YangMills.wilsonFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Bridge: reads an internal Family as a public
  WilsonFamily (period = C.S.period, denominator = C.S.denominator, beta =
  C.beta, Token = C.book.Token, insertion = C.seen).

  <label|yangmills-configuration> <strong|<hlink|<verbatim|YangMills.Configuration>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L12>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>A link configuration U: (site, direction) -\<gtr\> G
  on the periodic lattice.

  <label|yangmills-wilsonfamily-2> <strong|<hlink|<verbatim|YangMills.WilsonFamily>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L35>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The choice of Wilson lattice gauge theories: torus
  periods L_p, inverse mesh sizes 1/a_N, bare couplings beta_{N,p}, Haar
  measure, a type of field labels (Token) and for each label a lattice
  observable (insertion) at each lattice site.

  <label|yangmills-wilsonregularity> <strong|<hlink|<verbatim|YangMills.WilsonRegularity>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Requirements on the lattice observables:
  beta_{N,p}/log(1/a_N) tends to a positive slope (running coupling),
  insertions are continuous, gauge invariant, and depend on a fixed finite
  stencil of links.

  <label|yangmills-wilsonfamily-converges>
  <strong|<hlink|<verbatim|YangMills.WilsonFamily.Converges>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Iterated limit: for each volume p the N-\<gtr\>infty
  limit of C_{N,p} exists, then the limit along a given subsequence of
  volumes tends to the integral of the test function against the (unselected)
  kernel; combines Theorems 4.1 and 5.1.

  <label|yangmills-wilsonfamily-mesh> <strong|<hlink|<verbatim|YangMills.WilsonFamily.mesh>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L50>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Lattice spacing a_N = 1/denominator(N).

  <label|yangmills-wilsonlaw> <strong|<hlink|<verbatim|YangMills.wilsonLaw>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L29>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The Wilson Gibbs measure Z^{-1} exp(-beta * energy)
  times product Haar measure on link variables.

  <label|yangmills-wilsonfamily-finitemoment>
  <strong|<hlink|<verbatim|YangMills.WilsonFamily.finiteMoment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L54>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Lattice correlation E_{mu_{N,p}}[prod_i I_{N,p}(v_i,
  x_i; U)] of renormalized observables at lattice points.

  <label|yangmills-wilsonfamily-smear> <strong|<hlink|<verbatim|YangMills.WilsonFamily.smear>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L79>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Smeared lattice correlation C_{N,p}(v; f) = a_N^{4n}
  sum_x f(a_N x) E[prod I(v_j, x_j)].

  <label|yangmills-plaquette> <strong|<hlink|<verbatim|YangMills.plaquette>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L20>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Ordered product of the four link variables around an
  elementary square.

  <label|yangmills-wilsonenergy> <strong|<hlink|<verbatim|YangMills.wilsonEnergy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L25>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Wilson plaquette action sum_p (1 - Re Tr U_p / m).

  <label|yangmills-wilsonfamily-suitable>
  <strong|<hlink|<verbatim|YangMills.WilsonFamily.suitable>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L75>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Test function supported strictly inside the
  fundamental box (-L_p/2, L_p/2)^4, so that periodic wrapping is irrelevant.

  <label|ym-wilson-config> <strong|<hlink|<verbatim|YM.Wilson.Config>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L24>>
  <ym-middot> Reading: certain<next-line>Link configurations of the periodic
  lattice with values in G.

  <label|ym-rg-stepdata-ratio> <strong|<hlink|<verbatim|YM.RG.StepData.ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L30>>
  <ym-middot> Reading: certain<next-line>The Lattice.Ratio of a step (block
  of side L).

  <label|ym-pressure-radiusb> <strong|<hlink|<verbatim|YM.Pressure.radiusB>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22>>
  <ym-middot> Reading: probable<next-line>Cluster radius ceil((log x)^2).

  <label|ym-rg-stepdata> <strong|<hlink|<verbatim|YM.RG.StepData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22>>
  <ym-middot> Reading: certain<next-line>Data of one block-spin RG step from
  a fine torus (side f) to a coarse torus (side c): a Patch, kernel
  parameters, and f = c * L.

  <label|ym-rg-directions> <strong|<hlink|<verbatim|YM.RG.Directions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L115>>
  <ym-middot> Reading: certain<next-line>Lie-algebra increments on each link.

  <label|ym-rg-stepdata-choices> <strong|<hlink|<verbatim|YM.RG.StepData.Choices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34>>
  <ym-middot> Reading: probable<next-line>Choice of frame tags at coarse
  sites and of bond path tags: the finite data used to average over
  symmetry-breaking gauge-fixing choices.

  <label|ym-rg-budgetpoint> <strong|<hlink|<verbatim|YM.RG.BudgetPoint>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125>>
  <ym-middot> Reading: certain<next-line>Parameters of the polymer norms:
  smoothness order, power, support exponent, cover size B, small-field
  threshold.

  <label|ym-tree-forest> <strong|<hlink|<verbatim|YM.Tree.Forest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24>>
  <ym-middot> Reading: certain<next-line>A choice of spanning forest on the
  fine torus rooted at coarse block centers (tree gauge) with heights
  \<less\>=4L.

  <label|ym-pressure-stores> <strong|<hlink|<verbatim|YM.Pressure.Stores>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34>>
  <ym-middot> Reading: tentative<next-line>Finite collections of cost cells,
  bonds and flagged sites whose neighborhood carries a polymer cluster.

  <label|ym-family-s> <strong|<hlink|<verbatim|YM.Family.S>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L34>>
  <ym-middot> Reading: certain<next-line>Spacing schedule of the family
  (C.path.levels.S).

  <label|ym-bloch-momentum> <strong|<hlink|<verbatim|YM.Bloch.Momentum>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L15>>
  <ym-middot> Reading: certain<next-line>Complex momentum phases (one per
  axis) for Fourier analysis on the lattice.

  <label|ym-rg-rep> <strong|<hlink|<verbatim|YM.RG.Rep>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165>>
  <ym-middot> Reading: certain<next-line>Representation of the effective
  density on a torus: path part, clip, polymer activities, budget point,
  coupling beta and vacuum energy v; evaluates as exp(exponent) * gas.

  <label|ym-lattice-ratio-parent> <strong|<hlink|<verbatim|YM.Lattice.Ratio.parent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L117>>
  <ym-middot> Reading: certain<next-line>The coarse block containing a fine
  site ('projected ancestor').

  <label|ym-rg-patch> <strong|<hlink|<verbatim|YM.RG.Patch>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29>>
  <ym-middot> Reading: certain<next-line>The local block geometry: block side
  L (odd, \<gtr\>=3) and a smoothness/order parameter J\<gtr\>=4.

  <label|ym-rg-levels-budget> <strong|<hlink|<verbatim|YM.RG.Levels.budget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L141>>
  <ym-middot> Reading: certain<next-line>The budget point used at level m.

  <label|ym-rg-patch-branches> <strong|<hlink|<verbatim|YM.RG.Patch.Branches>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182>>
  <ym-middot> Reading: probable<next-line>Well-posedness hypotheses of the
  gauge fixing and predictor: unique minimizing frame, unique best predictor,
  nonempty eligible axial choices.

  <label|ym-family-side> <strong|<hlink|<verbatim|YM.Family.side>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L35>>
  <ym-middot> Reading: certain<next-line>Torus side at (N,p).

  <label|ym-pressure-tube> <strong|<hlink|<verbatim|YM.Pressure.Tube>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94>>
  <ym-middot> Reading: tentative<next-line>A step with its upper and lower
  path data and clips (the 'pipe' through which an estimate is passed).

  <label|ym-rg-sumbudget> <strong|<hlink|<verbatim|YM.RG.SumBudget>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59>>
  <ym-middot> Reading: certain<next-line>A polymer-norm summability bound:
  nonnegative summable weights with total at most c ('Absolute mass
  certificate').

  <label|ym-rg-healthy> <strong|<hlink|<verbatim|YM.RG.Healthy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41>>
  <ym-middot> Reading: certain<next-line>A configuration is small-field on a
  support: no site of the support is flagged.

  <label|ym-rg-levels> <strong|<hlink|<verbatim|YM.RG.Levels>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131>>
  <ym-middot> Reading: certain<next-line>A schedule together with Fits and
  block control for every step.

  <label|ym-pressure-temp> <strong|<hlink|<verbatim|YM.Pressure.temp>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25>>
  <ym-middot> Reading: probable<next-line>Small-field threshold function
  (sqrt x)^{-1} exp((log log x)^2).

  <label|ym-stationary-loc> <strong|<hlink|<verbatim|YM.Stationary.Loc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L400>>
  <ym-middot> Reading: tentative<next-line>Local coordinate: blade type with
  color index.

  <label|ym-rg-calendar-hatbeta> <strong|<hlink|<verbatim|YM.RG.Calendar.hatBeta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79>>
  <ym-middot> Reading: certain<next-line>The reference inverse coupling at
  level <math|m>: <math|<wide|\<beta\>|^><rsub|m>=<wide|\<beta\>|\<bar\>>+\<kappa\><rsub|G>*s<rsub|m>>,
  where <math|s<rsub|m>=<math-up|scale><around|(|m|)>=log
  <around|(|1/a<rsub|m>|)>> is already logarithmic. See the
  <hlink|running-coupling convention|summary.tm#the-marginal-coupling-and-the-schedule>.

  <label|ym-rg-pathdata> <strong|<hlink|<verbatim|YM.RG.PathData>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150>>
  <ym-middot> Reading: probable<next-line>The explicit leading (marginal)
  part of the effective action: row data and loop, cubic and quartic atoms
  along lattice paths.

  <label|ym-rg-clip> <strong|<hlink|<verbatim|YM.RG.Clip>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139>>
  <ym-middot> Reading: probable<next-line>Clipping parameters (direct,
  linear, relaxation) cutting off large field values in the path terms.

  <label|ym-rg-flags> <strong|<hlink|<verbatim|YM.RG.flags>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34>>
  <ym-middot> Reading: certain<next-line>Sites at which some touching
  plaquette is far from identity (chord above a threshold): the large-field
  set.

  <label|ym-rg-increment> <strong|<hlink|<verbatim|YM.RG.increment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L117>>
  <ym-middot> Reading: certain<next-line>Left translation of links by exp of
  Lie algebra increments.

  <label|ym-rg-calendar-op> <strong|<hlink|<verbatim|YM.RG.Calendar.op>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88>>
  <ym-middot> Reading: certain<next-line>The step operator StepData from
  level m to m+1 at period p.

  <label|ym-lattice-ratio-embed> <strong|<hlink|<verbatim|YM.Lattice.Ratio.embed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L29>>
  <ym-middot> Reading: certain<next-line>Inclusion of coarse sites into fine
  sites (block centers).

  <label|ym-stationary-link> <strong|<hlink|<verbatim|YM.Stationary.Link>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L504>>
  <ym-middot> Reading: tentative<next-line>Link-valued real field with
  plaquette-curl evaluation; coordinates for the stationary (saddle-point)
  analysis.

  <label|ym-precision-chartratio> <strong|<hlink|<verbatim|YM.Precision.ChartRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23>>
  <ym-middot> Reading: probable<next-line>Jacobian density of the exponential
  chart g -\<gtr\> G with scale and radius.

  <label|ym-bloch-row-acts> <strong|<hlink|<verbatim|YM.Bloch.Row.acts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L33>>
  <ym-middot> Reading: certain<next-line>The matrix of a
  translation-invariant kernel on the periodic lattice: sum over
  displacements.

  <label|ym-bloch-row> <strong|<hlink|<verbatim|YM.Bloch.Row>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22>>
  <ym-middot> Reading: probable<next-line>A kernel R(alpha,beta,x) over
  lattice displacements x; a translation-invariant block (circulant) operator
  with entries indexed by types alpha, beta.

  <label|ym-pressure-teller> <strong|<hlink|<verbatim|YM.Pressure.Teller>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89>>
  <ym-middot> Reading: probable<next-line>Interface of one request to the
  step estimator: kernel choice, two adjacent regularity profiles, step
  index, width and constant ('One call, prices & inputs').

  <label|ym-pressure-betaf> <strong|<hlink|<verbatim|YM.Pressure.betaF>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23>>
  <ym-middot> Reading: probable<next-line>Effective coupling at scale L: x +
  slope*log L.

  <label|ym-rg-budgetpoint-regular> <strong|<hlink|<verbatim|YM.RG.BudgetPoint.Regular>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154>>
  <ym-middot> Reading: certain<next-line>A function is regular at a budget
  point: local on its support, Borel, gauge invariant, smooth with the
  required derivatives in the small-field region.

  <label|ym-marker-poly> <strong|<hlink|<verbatim|YM.Marker.Poly>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40>>
  <ym-middot> Reading: probable<next-line>Finite nilpotent marker algebra:
  commuting square-zero markers used to bookkeep which polymers appear in a
  product (inclusion-exclusion bookkeeping).

  <label|ym-pressure-fiery> <strong|<hlink|<verbatim|YM.Pressure.fiery>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26>>
  <ym-middot> Reading: tentative<next-line>temp(betaF G x L): the threshold
  at the coarse coupling.

  <label|ym-pert-bulk-market> <strong|<hlink|<verbatim|YM.Pert.Bulk.Market>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L24>>
  <ym-middot> Reading: tentative<next-line>Pair (lattice cover point, type):
  the index set for kernels in bulk estimates.

  <label|ym-marker-census-mode> <strong|<hlink|<verbatim|YM.Marker.Census.Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L30>>
  <ym-middot> Reading: tentative<next-line>Index of a marker.

  <label|ym-rg-budgetpoint-supbounds> <strong|<hlink|<verbatim|YM.RG.BudgetPoint.supBounds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L164>>
  <ym-middot> Reading: certain<next-line>Sup bound of left derivatives of
  order up to p.order in the small-field region.

  <label|ym-precision-bed> <strong|<hlink|<verbatim|YM.Precision.Bed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35>>
  <ym-middot> Reading: tentative<next-line>A Fourier row of diagonal, dual,
  metric, inverse and square-root matrices for the quadratic form of the
  step.

  <label|ym-rg-kernelchoices> <strong|<hlink|<verbatim|YM.RG.KernelChoices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37>>
  <ym-middot> Reading: certain<next-line>Positive numerical parameters of the
  block-spin kernel (penalty, frame cut, predictor cut, axial factor); the
  'penalty' is the one fixed in the main theorem.

  <label|ym-next-sectorchange-gaussian-vec>
  <strong|<hlink|<verbatim|YM.Next.SectorChange.Gaussian.Vec>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L24>>
  <ym-middot> Reading: tentative<next-line>Real vectors indexed by a finite
  type (coordinates for Gaussian integrals).

  <label|ym-precision-represent> <strong|<hlink|<verbatim|YM.Precision.represent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L58>>
  <ym-middot> Reading: probable<next-line>Lie-algebra link increments to a
  lattice configuration, exp increments times the identity configuration.

  <label|ym-lattice-facevalue> <strong|<hlink|<verbatim|YM.Lattice.faceValue>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L47>>
  <ym-middot> Reading: certain<next-line>Plaquette holonomy around a Face.

  <label|ym-precision-mapprices> <strong|<hlink|<verbatim|YM.Precision.MapPrices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123>>
  <ym-middot> Reading: probable<next-line>Constants alpha, Omega, eta per
  index fixed after the sheet (price list for the first-derivative map
  estimates).

  <label|ym-push-sectormeasure-chi> <strong|<hlink|<verbatim|YM.Push.SectorMeasure.Chi>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L85>>
  <ym-middot> Reading: probable<next-line>Smooth cutoff function chi:
  R-\<gtr\>[0,1] equal to 1 on y\<less\>=1 and 0 on y\<gtr\>=4 (partition of
  unity between small and large field).

  <label|ym-rg-leftderivs> <strong|<hlink|<verbatim|YM.RG.leftDerivs>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L120>>
  <ym-middot> Reading: certain<next-line>Iterated directional derivatives of
  a function of links in left-invariant directions.

  <label|ym-precision-localratio> <strong|<hlink|<verbatim|YM.Precision.LocalRatio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28>>
  <ym-middot> Reading: probable<next-line>Conditions making ChartRatio a
  genuine local chart: Haar measure equals chart pushforward on the ball.

  <label|ym-rg-stepdata-prediction> <strong|<hlink|<verbatim|YM.RG.StepData.prediction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L44>>
  <ym-middot> Reading: probable<next-line>The block-spin predictor: coarse
  link variable obtained from the fine configuration and the
  gauge-fixing/frame choices.

  <label|ym-connectedactivitye6-molecule>
  <strong|<hlink|<verbatim|YM.ConnectedActivityE6.Molecule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L29>>
  <ym-middot> Reading: tentative<next-line>Finite sets of letters
  ('molecule') forming one cluster in a connected-activity (cluster
  expansion) estimate.

  <label|ym-next-free-whole> <strong|<hlink|<verbatim|YM.Next.Free.Whole>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Stock.lean#L71>>
  <ym-middot> Reading: tentative<next-line>A row-space kernel with uniform
  strip decay for some width.

  <label|ym-rg-masked> <strong|<hlink|<verbatim|YM.RG.masked>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L70>>
  <ym-middot> Reading: certain<next-line>Indicator cutoff of a function to
  small-field configurations.

  <label|ym-pressure-teller-funds> <strong|<hlink|<verbatim|YM.Pressure.Teller.Funds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101>>
  <ym-middot> Reading: tentative<next-line>The requested estimate is
  deliverable: the step's data satisfy the Teller's parameters and bounds for
  up and down path data.

  <label|ym-tree-forest-free> <strong|<hlink|<verbatim|YM.Tree.Forest.Free>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L18>>
  <ym-middot> Reading: certain<next-line>Non-tree links: the free variables
  after tree-gauge fixing.

  <label|ym-rg-supply-delays> <strong|<hlink|<verbatim|YM.RG.Supply.Delays>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115>>
  <ym-middot> Reading: certain<next-line>Entry thresholds chosen after
  protection: minimal beta and scale for each regularity profile, plus volume
  shell counts and growth.

  <label|ym-ac-hit> <strong|<hlink|<verbatim|YM.Ac.Hit>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12>>
  <ym-middot> Reading: tentative<next-line>Weighted covering condition: at
  each site the weights of sets containing it have small total.

  <label|ym-next-sectorchange-prices> <strong|<hlink|<verbatim|YM.Next.SectorChange.Prices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L44>>
  <ym-middot> Reading: tentative<next-line>Color-indexed real arrays (log
  variables) for the Gaussian sector change.

  <label|ym-family-beta> <strong|<hlink|<verbatim|YM.Family.beta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38>>
  <ym-middot> Reading: certain<next-line>Bare coupling beta_{N,p} = path.beta
  N p N.

  <label|ym-precision-replica> <strong|<hlink|<verbatim|YM.Precision.replica>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35>>
  <ym-middot> Reading: probable<next-line>Copy of a coarse configuration to
  the fine lattice (identity inside blocks, coarse value on block-crossing
  links).

  <label|ym-rg-budgetpoint-mass> <strong|<hlink|<verbatim|YM.RG.BudgetPoint.mass>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L144>>
  <ym-middot> Reading: probable<next-line>Polymer weight: exp(supportExponent
  * coverNumber(support)) times a constant.

  <label|ym-wilson-prior> <strong|<hlink|<verbatim|YM.Wilson.prior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55>>
  <ym-middot> Reading: certain<next-line>Product Haar probability measure on
  all links.

  <label|ym-rg-rep-eval> <strong|<hlink|<verbatim|YM.RG.Rep.eval>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L179>>
  <ym-middot> Reading: certain<next-line>The density it represents,
  exp(exponent U) times the polymer gas.

  <label|ym-rg08-forms-tape> <strong|<hlink|<verbatim|YM.RG08.Forms.Tape>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L17>>
  <ym-middot> Reading: tentative<next-line>Tuple of n indices (coordinate
  tape); Flake is a real function of tapes (a multilinear coefficient array).

  <label|ym-rg-envelope> <strong|<hlink|<verbatim|YM.RG.Envelope>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Bounded.lean#L13>>
  <ym-middot> Reading: tentative<next-line>Measurable function with a uniform
  bound.

  <label|ym-tree-forest-slice> <strong|<hlink|<verbatim|YM.Tree.Forest.Slice>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L19>>
  <ym-middot> Reading: certain<next-line>A configuration of the free links
  (tree gauge slice).

  <label|ym-rg-slot> <strong|<hlink|<verbatim|YM.RG.Slot>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38>>
  <ym-middot> Reading: probable<next-line>One based transported curvature
  slot: a path with a plaquette.

  <label|ym-connectedactivitye6-coat> <strong|<hlink|<verbatim|YM.ConnectedActivityE6.Coat>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L49>>
  <ym-middot> Reading: tentative<next-line>Sector data for a step estimate:
  fixed radius, chart, active sites, stencil.

  <label|ym-connectedactivitye6-rate> <strong|<hlink|<verbatim|YM.ConnectedActivityE6.Rate>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22>>
  <ym-middot> Reading: probable<next-line>Growth-rate bound \|w(x)\|
  \<less\>= betaF^v for all v\<gtr\>a eventually (beta-hat^{o(1)} losses).

  <label|ym-rg-atom> <strong|<hlink|<verbatim|YM.RG.Atom>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84>>
  <ym-middot> Reading: probable<next-line>A k-leg coefficient term: k
  transported curvature slots with a color coefficient tensor.

  <label|ym-rg-supply-rolls> <strong|<hlink|<verbatim|YM.RG.Supply.Rolls>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50>>
  <ym-middot> Reading: certain<next-line>The sequence of odd block sizes L_j
  chosen large enough to absorb all pre-L constants (growing, satisfying
  Large).

  <label|ym-rg-supply-sheet> <strong|<hlink|<verbatim|YM.RG.Supply.Sheet>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26>>
  <ym-middot> Reading: certain<next-line>Numerical constants and kernel data
  fixed in advance of any block ratio: the sequence of regularity parameters
  (monotone orders, powers, support exponents), the first active level and
  volume floors.

  <label|ym-lattice-ratio> <strong|<hlink|<verbatim|YM.Lattice.Ratio>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22>>
  <ym-middot> Reading: certain<next-line>A subdivision of a coarse torus of
  side c into a fine torus of side f = c * count (the block ratio).

  <label|ym-rg-stepdata-push> <strong|<hlink|<verbatim|YM.RG.StepData.push>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77>>
  <ym-middot> Reading: certain<next-line>Pushforward of a fine-lattice
  function F to the coarse lattice by integrating against the step kernel
  density: V \|-\<gtr\> integral of density_beta(U,V) F(U) dprior(U).

  <label|ym-rg-stage> <strong|<hlink|<verbatim|YM.RG.Stage>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45>>
  <ym-middot> Reading: certain<next-line>Numerical bounds used for one
  regularity profile: clip parameters, regularity order, power, support
  exponent, width, path number, drift, column bound.

  <label|ym-connectedactivitye6-cash> <strong|<hlink|<verbatim|YM.ConnectedActivityE6.Cash>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L82>>
  <ym-middot> Reading: tentative<next-line>Package of numeric bounds (alarms,
  laws, invoices) delivered by a connected-activity estimate.

  <label|ym-cells-interior> <strong|<hlink|<verbatim|YM.Cells.Interior>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109>>
  <ym-middot> Reading: probable<next-line>Observable that is gauge invariant,
  Borel, local in the cell interior, and bounded.

  <label|ym-next-rank-perch-bill> <strong|<hlink|<verbatim|YM.Next.Rank.Perch.bill>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25>>
  <ym-middot> Reading: tentative<next-line>Price weight exp(a * (log log
  s)^2).

  <label|ym-rg-supply-paid> <strong|<hlink|<verbatim|YM.RG.Supply.Paid>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145>>
  <ym-middot> Reading: probable<next-line>Permanent record that a Levels
  trajectory actually meets all issued requirements (the schedule has 'paid'
  its costs).

  <label|ym-rg-supply-wait> <strong|<hlink|<verbatim|YM.RG.Supply.Wait>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134>>
  <ym-middot> Reading: probable<next-line>Window lengths, sublinear in the
  scale, during which a regularity profile stays in force; and the minimal
  physical length.

  <label|ym-precision-horizon> <strong|<hlink|<verbatim|YM.Precision.Horizon>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119>>
  <ym-middot> Reading: tentative<next-line>Per-(N,m) families of matrix beds
  and tower estimates used in the first-derivative (linearized RG) analysis.

  <label|ym-ac-spark> <strong|<hlink|<verbatim|YM.Ac.Spark>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49>>
  <ym-middot> Reading: tentative<next-line>A nonempty connected set of
  letters (a connected cluster).

  <label|ym-next-free-flight> <strong|<hlink|<verbatim|YM.Next.Free.Flight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22>>
  <ym-middot> Reading: tentative<next-line>One hop between regularity indices
  <math|j> and <math|t> of a block of size L (orientation data).

  <label|ym-rg-rep-lawful> <strong|<hlink|<verbatim|YM.RG.Rep.Lawful>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181>>
  <ym-middot> Reading: certain<next-line>Estimate package for a
  representation: path part bounded and activities valid (a bound on the
  irrelevant terms).

  <label|ym-rg-supply-protection> <strong|<hlink|<verbatim|YM.RG.Supply.Protection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88>>
  <ym-middot> Reading: certain<next-line>Smallness exponent theta_j
  (decreasing, \<less\>= 1/j) chosen after L to protect the post-L powers.

  <label|ym-rg-activities> <strong|<hlink|<verbatim|YM.RG.Activities>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62>>
  <ym-middot> Reading: certain<next-line>The polymer expansion data: regular
  and forced activities (functions of links supported on addresses/clusters)
  with their gas.

  <label|ym-wilson-moment> <strong|<hlink|<verbatim|YM.Wilson.moment>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99>>
  <ym-middot> Reading: certain<next-line>Expectation of a function of links
  under the Wilson law.

  <label|ym-gauge-slopeconstant> <strong|<hlink|<verbatim|YM.Gauge.slopeConstant>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184>>
  <ym-middot> Reading: certain<next-line>11 C_A/(24 pi^2) = 2 b0: the slope
  of beta_{N,p} against log(1/a_N) (one-loop asymptotic freedom).

  <label|ym-schedule> <strong|<hlink|<verbatim|YM.Schedule>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28>>
  <ym-middot> Reading: certain<next-line>Lattice spacing and period schedule:
  block sizes b_m (odd, \<gtr\>=3) so that spacing a_{m+1} = a_m / b_m, and
  strictly increasing periods (4 divides each).

  <label|ym-schedule-a> <strong|<hlink|<verbatim|YM.Schedule.a>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99>>
  <ym-middot> Reading: certain<next-line>Lattice spacing at RG level m, a_m =
  1/denominator(m).

  <label|ym-rg-supply-bar> <strong|<hlink|<verbatim|YM.RG.Supply.Bar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123>>
  <ym-middot> Reading: certain<next-line>A barrier value bar\<gtr\>1 above
  which all smallness conditions hold ('Barrier for smallness').

  <label|ym-bid-worth> <strong|<hlink|<verbatim|YM.Bid.Worth>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29>>
  <ym-middot> Reading: tentative<next-line>A monotone sequence K_i\<gtr\>=1
  ('prices'). <em|Role unclear.>

  <label|ym-precision-floor> <strong|<hlink|<verbatim|YM.Precision.Floor>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61>>
  <ym-middot> Reading: tentative<next-line>Uniform ellipticity bounds eta I
  \<less\>= H \<less\>= A I for the quadratic form and its roots.

  <label|ym-rg-activities-moves> <strong|<hlink|<verbatim|YM.RG.Activities.Moves>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L87>>
  <ym-middot> Reading: probable<next-line>How a signed lattice symmetry (and
  translation) permutes the activities.

  <label|ym-rg-rep-exponent> <strong|<hlink|<verbatim|YM.RG.Rep.exponent>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L176>>
  <ym-middot> Reading: certain<next-line>Exponent v*\|sites\| - (quadratic
  and path terms in beta) - additive activities.

  <label|ym-precision-postcost> <strong|<hlink|<verbatim|YM.Precision.PostCost>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L81>>
  <ym-middot> Reading: probable<next-line>Post-L cost constants eta, Gamma,
  c, g per regularity profile, chosen after the block sizes.

  <label|ym-input-directed> <strong|<hlink|<verbatim|YM.Input.Directed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26>>
  <ym-middot> Reading: probable<next-line>A Levels trajectory satisfying all
  issued constraints together with a recipe: the RG trajectory from a
  stationary solution with its linear data.

  <label|ym-rg-history> <strong|<hlink|<verbatim|YM.RG.History>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204>>
  <ym-middot> Reading: certain<next-line>The entire RG trajectory: levels
  plus a representation Rep for every (N, p, m), with beta^{N,p}_m the
  running couplings; the selected Wilson theory's effective actions.

  <label|ym-cells-tiling> <strong|<hlink|<verbatim|YM.Cells.Tiling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L19>>
  <ym-middot> Reading: probable<next-line>A tiling of the torus into cells by
  seams with an even number per axis; used for reflection-positivity cell
  estimates.

  <label|ym-wilson-energy> <strong|<hlink|<verbatim|YM.Wilson.energy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L29>>
  <ym-middot> Reading: certain<next-line>Sum over plaquettes of
  price(faceValue) = 1 - Re Tr U_p / m up to normalization: the Wilson
  action.

  <label|ym-wilson-law> <strong|<hlink|<verbatim|YM.Wilson.law>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L87>>
  <ym-middot> Reading: certain<next-line>The normalized Wilson measure at
  inverse coupling beta ('physical Wilson law').

  <label|ym-input-directed-move> <strong|<hlink|<verbatim|YM.Input.Directed.Move>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49>>
  <ym-middot> Reading: tentative<next-line>One RG step of the explicit
  recursion is realized (coupling reset beta_m - beta_{m+1} within 1 of the
  one-loop shift alpha).

  <label|ym-rg-calendar> <strong|<hlink|<verbatim|YM.RG.Calendar>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64>>
  <ym-middot> Reading: certain<next-line>The full RG schedule: spacing
  schedule, kernel, barrier, regularity parameters per level, block factors,
  theta, regularity indices <math|J<around|(|m|)>>.

  <label|ym-extraction-order-ordered-reads>
  <strong|<hlink|<verbatim|YM.Extraction.Order.Ordered.reads>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32>>
  <ym-middot> Reading: probable<next-line>The field of Ordered: for every
  label list and separated test function the iterated limit equals the table
  integrated against the test function.

  <label|ym-rg-calendar-blockcontrol> <strong|<hlink|<verbatim|YM.RG.Calendar.BlockControl>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120>>
  <ym-middot> Reading: probable<next-line>Per-step requirements: branches
  well-posed, kernel symmetric under lattice symmetries and gauge covariant.

  <label|ym-rg-calendar-fits> <strong|<hlink|<verbatim|YM.RG.Calendar.Fits>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97>>
  <ym-middot> Reading: probable<next-line>Compatibility conditions of the
  schedule (monotone regularity indices, size and patch fits,
  hat-beta\<gtr\>1, logarithmic cost bounds).

  <label|ym-rg-supply-large> <strong|<hlink|<verbatim|YM.RG.Supply.Large>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39>>
  <ym-middot> Reading: probable<next-line>Largeness conditions of a block
  size L at regularity index <math|j> (drift/log L small, polylog costs / log
  L \<less\>= j^{-2}).

  <label|part-iv>

  <section|Part IV: Infinite volume><label|part-iv-infinite-volume>

  The limit of the volume, and the Euclidean axioms of the limit table. (11
  entries)

  <label|ym-table> <strong|<hlink|<verbatim|YM.Table>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L55>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The family of unconditional n-point correlation
  functions (value for each arity, degrees and position vector, multilinear
  in label coefficients), the limit Euclidean theory.

  <label|ym-extraction-order> <strong|<hlink|<verbatim|YM.Extraction.Order>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>A pair of subsequences: mesh (N_j) and volume (p_k);
  'mesh then volume' iterated limit order.

  <label|ym-table-hierarchy> <strong|<hlink|<verbatim|YM.Table.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141>>
  <ym-middot> Reading: certain<next-line>Euclidean properties before
  rotation: symmetric, normalized, unital, translation invariant, reflection
  positive, smooth, polynomially bounded near collisions.

  <label|ym-extraction-order-fuse> <strong|<hlink|<verbatim|YM.Extraction.Order.fuse>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L27>>
  <ym-middot> Reading: probable<next-line>The product filter 'mesh then
  volume' on N x N.

  <label|ym-cells-tiling-roottest> <strong|<hlink|<verbatim|YM.Cells.Tiling.rootTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226>>
  <ym-middot> Reading: probable<next-line>The chessboard root: norm of the
  cell-product expectation raised to 1/(number of cells).

  <label|ym-extraction-order-late> <strong|<hlink|<verbatim|YM.Extraction.Order.late>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L47>>
  <ym-middot> Reading: certain<next-line>Eventually in volume, then
  eventually in mesh.

  <label|ym-extraction-order-refine> <strong|<hlink|<verbatim|YM.Extraction.Order.refine>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40>>
  <ym-middot> Reading: certain<next-line>Pass to a further pair of
  subsequences.

  <label|ym-spec-seed> <strong|<hlink|<verbatim|YM.Spec.Seed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20>>
  <ym-middot> Reading: probable<next-line>Package of limit inputs: cutoff
  Makes, Ordered, point limits, table Hierarchy, cell hypotheses, rank
  widths.

  <label|ym-extraction-sequence> <strong|<hlink|<verbatim|YM.Extraction.Sequence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L20>>
  <ym-middot> Reading: certain<next-line>Strictly increasing sequence of
  naturals (a subsequence).

  <label|ym-extraction-sequence-full> <strong|<hlink|<verbatim|YM.Extraction.Sequence.full>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L27>>
  <ym-middot> Reading: tentative<next-line>Name 'full' for the identity
  sequence (full mesh sequence); not read in detail.

  <label|ym-table-rp> <strong|<hlink|<verbatim|YM.Table.RP>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L123>>
  <ym-middot> Reading: certain<next-line>Reflection positivity across
  coordinate hyperplanes.

  <label|part-v>

  <section|Part V: Phases and reconstruction><label|part-v-phases-and-reconstruction>

  The Osterwalder\USchrader step: the Hilbert space, the decomposition into
  phases, and analytic continuation to Wightman distributions. (28 entries)

  <label|ym-spec-final> <strong|<hlink|<verbatim|YM.Spec.Final>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Fixing of the trajectory, limit seed, field algebra,
  phase selection and Wightman reconstruction on one Family and one Table.

  <label|ym-everyphase-almanac> <strong|<hlink|<verbatim|YM.EveryPhase.Almanac>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Per-phase reconstruction: for each character a
  chamber, contour, Wightman theory, and the links to the selected phase.

  <label|yangmills-fieldsystem> <strong|<hlink|<verbatim|YangMills.FieldSystem>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L105>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Operator-valued tempered distributions on a common
  invariant domain with vacuum.

  <label|yangmills-wightmantheory> <strong|<hlink|<verbatim|YangMills.WightmanTheory>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L255>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Hilbert space, common domain, vacuum, smeared fields
  indexed by labels, translations, energy-momentum spectral measure and
  Poincare action; the data of a Wightman QFT.

  <label|yangmills-hierarchy> <strong|<hlink|<verbatim|YangMills.hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The bridge: builds the public Hierarchy from the
  internal data (Final F, Reader Q); H = reconstructed Hilbert space of
  F.action, Field d = S.Field d, Character = F.alpha.space.X, correlation =
  S.useAt (spectator F s), centeredTrace = TraceExtension.center F.

  <label|yangmills-view> <strong|<hlink|<verbatim|YangMills.view>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L30>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Repackages the internal Wightman object
  (Boundary.Wightman) as a public WightmanTheory.

  <label|yangmills-hierarchy-properties> <strong|<hlink|<verbatim|YangMills.Hierarchy.Properties>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The four conclusions on one hierarchy: Wilson limit,
  Reconstruction, OPE, TraceTest (non-free).

  <label|yangmills-wightmantheory-axioms>
  <strong|<hlink|<verbatim|YangMills.WightmanTheory.Axioms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L315>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The four Wightman groups W0 (spectrum condition,
  vacuum uniqueness), W1 (domain, temperedness, adjoint), W2 (Poincare
  covariance), W3 (local commutativity).

  <label|yangmills-energymomentummeasure>
  <strong|<hlink|<verbatim|YangMills.EnergyMomentumMeasure>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L180>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Projection-valued joint spectral measure of the
  translation group.

  <label|yangmills-hierarchy-2> <strong|<hlink|<verbatim|YangMills.Hierarchy>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The whole package of limiting correlation functions:
  Hilbert space with Wightman theory, finite-dimensional field spaces
  <math|F<rsub|d>> indexed by degree <math|d>, the compact space of phases
  (characters) with measure nu and a selected phase, per-phase and mixed
  Euclidean correlations, analytic continuation, OPE coefficient data and the
  centered trace field.

  <label|yangmills-hierarchy-reconstructed>
  <strong|<hlink|<verbatim|YangMills.Hierarchy.Reconstructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Reconstruction clause: Wightman axioms hold for the
  reconstructed theory, labels act faithfully, correlations are permutation
  symmetric and smooth off coincidences, are the nu-average of phase
  correlations, continue analytically to the ordered tube and have the
  Wightman distributions as boundary values.

  <label|yangmills-poincareaction> <strong|<hlink|<verbatim|YangMills.PoincareAction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L219>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Unitary strongly continuous representation of the
  proper orthochronous Poincare group on states, labels and test functions.

  <label|ym-nonperturbative-headline-reconstruction>
  <strong|<hlink|<verbatim|YM.Nonperturbative.Headline.Reconstruction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>WightmanAxioms for the selected phase and every
  character and their average equals the unselected world.

  <label|yangmills-translationaction> <strong|<hlink|<verbatim|YangMills.TranslationAction>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L169>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Strongly continuous unitary representation of
  spacetime translations.

  <label|yangmills-jointexistence> <strong|<hlink|<verbatim|YangMills.JointExistence>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The headline statement: for each simple G there is one
  Wilson family such that for every volume subsequence p there is a further
  subsequence and a Hierarchy with all four Properties.

  <label|yangmills-constructed> <strong|<hlink|<verbatim|YangMills.constructed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Construction.lean main theorem: for simple G and any
  penalty b\<gtr\>0 there is an internal Family C with the stated properties,
  then for each pair p of mesh and volume subsequences a refinement q of both
  with Table, Final, Almanac, Reader, Devices and Scaling, giving all public
  Properties plus the detailed clauses.

  <label|ym-os-chamber> <strong|<hlink|<verbatim|YM.OS.Chamber>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57>>
  <ym-middot> Reading: certain<next-line>The OS Hilbert space (GNS space of
  positive-time words) with the semigroup of time translations at a fixed
  axis.

  <label|ym-boundary-surface> <strong|<hlink|<verbatim|YM.Boundary.Surface>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L54>>
  <ym-middot> Reading: probable<next-line>Joint tempered boundary
  distributions (Wightman functions) of a table.

  <label|ym-os-spread> <strong|<hlink|<verbatim|YM.OS.Spread>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101>>
  <ym-middot> Reading: probable<next-line>Operators placing a time-slab word
  on the GNS space.

  <label|ym-boundary-wightman> <strong|<hlink|<verbatim|YM.Boundary.Wightman>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L117>>
  <ym-middot> Reading: certain<next-line>Spin action, fields, star operator,
  unitary Poincare action and energy-momentum measure: the reconstructed QFT.

  <label|ym-next-boundary-fieldcore> <strong|<hlink|<verbatim|YM.Next.BOUNDARY.FieldCore>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34>>
  <ym-middot> Reading: probable<next-line>Wightman fields satisfy
  realization, adjoint, locality, covariance, spectral conditions.

  <label|ym-os-spread-resolution> <strong|<hlink|<verbatim|YM.OS.Spread.Resolution>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65>>
  <ym-middot> Reading: certain<next-line>The probability space X (compact
  metric) with measure mu and characters of the commutative C*-algebra: the
  Gelfand-Riesz phase decomposition.

  <label|ym-everyphase-completed> <strong|<hlink|<verbatim|YM.EveryPhase.Completed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51>>
  <ym-middot> Reading: certain<next-line>All properties for every phase:
  Wightman, surjective link, unique ground state, dependence continuity,
  integral over phases recovers unselected table.

  <label|ym-bid-pantry> <strong|<hlink|<verbatim|YM.Bid.Pantry>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L23>>
  <ym-middot> Reading: tentative<next-line>Hypotheses package for the
  reconstruction step in work item C01 (hierarchies for both tables and
  derivative plan).

  <label|ym-boundary-wightman-realizes> <strong|<hlink|<verbatim|YM.Boundary.Wightman.Realizes>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L124>>
  <ym-middot> Reading: certain<next-line>The Wightman package realizes a
  surface and meets domain, adjoint, locality, covariance, spectrum
  conditions.

  <label|ym-boundary-contour> <strong|<hlink|<verbatim|YM.Boundary.Contour>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L115>>
  <ym-middot> Reading: probable<next-line>Analytic continuation data (Waves)
  together with the real-time Wightman distributions (world).

  <label|ym-os-selection> <strong|<hlink|<verbatim|YM.OS.Selection>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127>>
  <ym-middot> Reading: certain<next-line>The decomposition into phases:
  Euclid chamber, unselected GNS data, a compact metric probability space of
  phases X with an ensemble of Tables, and a chosen phase.

  <label|ym-nonperturbative-headline-wightmanaxioms>
  <strong|<hlink|<verbatim|YM.Nonperturbative.Headline.WightmanAxioms>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52>>
  <ym-middot> Reading: certain<next-line>Internal version of Wightman axioms
  for a reconstructed A.

  <label|part-vi>

  <section|Part VI: Symmetry: stress tensor and Ward
  identities><label|part-vi-symmetry-stress-tensor-and-ward-identities>

  Rotations, the stress tensor and the Ward identities of the limit theory.
  (10 entries)

  <label|ym-signed> <strong|<hlink|<verbatim|YM.Signed>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23>>
  <ym-middot> Reading: certain<next-line>A signed permutation of the four
  axes (hyperoctahedral group, the symmetry group of the hypercubic lattice).

  <label|ym-ortho> <strong|<hlink|<verbatim|YM.Ortho>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20>>
  <ym-middot> Reading: certain<next-line>The orthogonal group O(4) as 4x4
  real orthogonal matrices.

  <label|ym-table-stress> <strong|<hlink|<verbatim|YM.Table.Stress>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57>>
  <ym-middot> Reading: certain<next-line>A symmetric-index family T_{ab} of
  16 elements of F_4: the stress tensor.

  <label|ym-diffplan> <strong|<hlink|<verbatim|YM.DiffPlan>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20>>
  <ym-middot> Reading: certain<next-line>Inclusions F_d -\<gtr\> F_e and
  partial derivatives F_d -\<gtr\> F_{d+1} on the quotient label spaces.

  <label|ym-table-realspin> <strong|<hlink|<verbatim|YM.Table.RealSpin>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L80>>
  <ym-middot> Reading: certain<next-line>Compatibility with signed lattice
  symmetries and complex conjugation of labels.

  <label|ym-ward-disc> <strong|<hlink|<verbatim|YM.Ward.disc>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23>>
  <ym-middot> Reading: probable<next-line>Plain n-point correlation read at
  points (disc = discrete reading).

  <label|ym-table-rotation> <strong|<hlink|<verbatim|YM.Table.Rotation>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L22>>
  <ym-middot> Reading: certain<next-line>Action of O(4) and its Lie algebra
  on each F_d.

  <label|ym-table-stresslaws> <strong|<hlink|<verbatim|YM.Table.StressLaws>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90>>
  <ym-middot> Reading: certain<next-line>Local Ward identities: the flux of T
  through a shell equals the translation derivative (and rotation action) of
  the correlation.

  <label|ym-spec-algebra> <strong|<hlink|<verbatim|YM.Spec.Algebra>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L28>>
  <ym-middot> Reading: certain<next-line>Derivative plan, rotations and
  stress tensor on the table.

  <label|ym-everyphase-stress-force> <strong|<hlink|<verbatim|YM.EveryPhase.Stress.Force>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L81>>
  <ym-middot> Reading: probable<next-line>Continued Ward identity (stress
  flux acting as generator) for each phase's reconstructed theory.

  <label|part-vii>

  <section|Part VII: Identification as Yang\UMills><label|part-vii-identification-as-yangmills>

  The operator product expansion, the trace of the stress tensor, contact
  terms, and the perturbative comparison with free Maxwell fields. (28
  entries)

  <label|ym-climb-scaling> <strong|<hlink|<verbatim|YM.Climb.Scaling>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>A scaling sequence: radii r_k decreasing to 0,
  positive constants xi_k and linear-frame changes U_k used to blow up
  short-distance correlations to compare with free Maxwell.

  <label|ym-contacts-devices> <strong|<hlink|<verbatim|YM.Contacts.Devices>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>Choices (prescription, rotation, hierarchy, detector
  per degree) fixing the extraction of contact terms.

  <label|ym-ope-orbits-reader> <strong|<hlink|<verbatim|YM.OPE.Orbits.Reader>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>OPE data: Prescription, channels, coefficient
  functions and actor labels reading the table.

  <label|ym-pert-firstextension> <strong|<hlink|<verbatim|YM.Pert.FirstExtension>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Along a scaling sequence, rescaled stress-tensor (and
  regular-field) correlations converge on compacta with all derivatives to
  those of free Maxwell fields.

  <label|ym-contacts-solstice-multiplelight>
  <strong|<hlink|<verbatim|YM.Contacts.Solstice.MultipleLight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>Extension of correlations to coinciding points:
  moments, slope and distribution clauses for flat subspaces (contact
  distribution exists, with prescribed dependence).

  <label|ym-contacts-solstice-thresholds>
  <strong|<hlink|<verbatim|YM.Contacts.Solstice.Thresholds>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>A rapidly decreasing sequence of thresholds (4
  t_{n+1}\<less\>t_n, 2(n+1)t_n \<less\>= clearance).

  <label|ym-contacts-transport-systembasis>
  <strong|<hlink|<verbatim|YM.Contacts.Transport.SystemBasis>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L47>>
  <ym-middot> Reading: tentative <ym-middot> <strong|main
  statement><next-line>A real basis of each stratum of the splitting
  containing the unit.

  <label|ym-independent-core> <strong|<hlink|<verbatim|YM.Independent.Core>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>Package of the independent checks: services, completed
  reconstruction, trace tests, OPE foundation, joint position estimates with
  bounded variation.

  <label|ym-pert-position-fourmeters> <strong|<hlink|<verbatim|YM.Pert.Position.FourMeters>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45>>
  <ym-middot> Reading: probable <ym-middot> <strong|main
  statement><next-line>Normalized position-space leading comparison for
  horizon four: determining tests whose leading readings match.

  <label|yangmills-hierarchy-mode> <strong|<hlink|<verbatim|YangMills.Hierarchy.Mode>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>A free-field mass-shell kernel datum: mass, spatial
  and time differentiation orders, homogeneous numerator.

  <label|ym-nonperturbative-headline-nestedope>
  <strong|<hlink|<verbatim|YM.Nonperturbative.Headline.NestedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>OPE iterated over trees of collapsing clusters with
  admissible rates.

  <label|ym-nonperturbative-headline-separatedope>
  <strong|<hlink|<verbatim|YM.Nonperturbative.Headline.SeparatedOPE>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>OPE with coefficient bounds r^{j-w-eps} and remainder
  r^{D+1-w-eps}, uniform over phases.

  <label|ym-nonperturbative-headline-traceexclusions>
  <strong|<hlink|<verbatim|YM.Nonperturbative.Headline.TraceExclusions>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Centered trace has zero VEV, r^8 log^2 asymptotics
  with constant award(G), is not a Wick polynomial profile, and Maxwell-test
  and invariance clauses (non-Gaussianity tests).

  <label|yangmills-hierarchy-operatorproductexpansion>
  <strong|<hlink|<verbatim|YangMills.Hierarchy.OperatorProductExpansion>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Short-distance expansion of n-point correlations in
  terms of finitely many local fields per degree with coefficient bounds
  r^{j-w-eps} and remainder r^{D+1-w-eps}, uniform over phases.

  <label|yangmills-hierarchy-tracetest> <strong|<hlink|<verbatim|YangMills.Hierarchy.TraceTest>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Properties of the centered stress-tensor trace Theta:
  zero vacuum expectation, r^8 log^2(1/r) times its two-point function tends
  to 3 dim g/pi^4, and it is not equal to any finite Wick-type free-field
  profile.

  <label|yangmills-hierarchy-tracetwo> <strong|<hlink|<verbatim|YangMills.Hierarchy.traceTwo>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The selected-phase two-point function of the centered
  trace with insertions at -r/2 and r/2 on the time axis.

  <label|yangmills-hierarchy-wickprofile>
  <strong|<hlink|<verbatim|YangMills.Hierarchy.wickProfile>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>The two-point time profile of a finite linear
  combination of products of free-field kernels.

  <label|yangmills-hierarchy-contacts> <strong|<hlink|<verbatim|YangMills.Hierarchy.Contacts>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L12>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Every correlation (every phase and mixed) extends from
  separated test functions to a distribution on all of R^{4n}, including
  collision diagonals.

  <label|yangmills-hierarchy-weight> <strong|<hlink|<verbatim|YangMills.Hierarchy.weight>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L63>>
  <ym-middot> Reading: certain <ym-middot> <strong|main
  statement><next-line>Total degree (sum of d_i) of a list of labels;
  dimension count used in OPE exponents.

  <label|ym-maxwell-wickpol> <strong|<hlink|<verbatim|YM.Maxwell.WickPol>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24>>
  <ym-middot> Reading: probable<next-line>Polynomials in the free Maxwell
  curvature jets (the free-field label algebra).

  <label|ym-maxwell-grad> <strong|<hlink|<verbatim|YM.Maxwell.grad>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L20>>
  <ym-middot> Reading: tentative<next-line>Gradient/derivative on the Maxwell
  label algebra.

  <label|ym-ope-prescription> <strong|<hlink|<verbatim|YM.OPE.Prescription>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L44>>
  <ym-middot> Reading: certain<next-line>A choice of linear functionals on
  F_d (needle/sheet) giving a basis of F_d for every d: used to extract OPE
  coefficient labels.

  <label|ym-traceextension-stresstrace> <strong|<hlink|<verbatim|YM.TraceExtension.stressTrace>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17>>
  <ym-middot> Reading: certain<next-line>T_{mu mu} summed over axes.

  <label|ym-traceextension-center> <strong|<hlink|<verbatim|YM.TraceExtension.center>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48>>
  <ym-middot> Reading: certain<next-line>The centered trace Theta: trace of
  the stress tensor minus its vacuum expectation.

  <label|ym-trace-verse-award> <strong|<hlink|<verbatim|YM.Trace.Verse.award>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41>>
  <ym-middot> Reading: probable<next-line>The trace amplitude 12 (d2/b0)^2
  dim g / pi^4, shown equal to 3 dim g/pi^4.

  <label|ym-traceextension-theta> <strong|<hlink|<verbatim|YM.TraceExtension.theta>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64>>
  <ym-middot> Reading: probable<next-line>centerIn S T (stressTrace J): the
  field Theta of eq. (14).

  <label|ym-contacts-solstice-charge> <strong|<hlink|<verbatim|YM.Contacts.Solstice.Charge>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30>>
  <ym-middot> Reading: tentative<next-line>Charge assigned to a contact term;
  not read in detail.

  <label|ym-pert-asymptotics-b0> <strong|<hlink|<verbatim|YM.Pert.Asymptotics.b0>|https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13>>
  <ym-middot> Reading: certain<next-line>One-loop coefficient b0 = 11 C_A/(48
  pi^2).

  <label|index>

  <section|Index><label|index>

  <\itemize-minus>
    <item><hlink|<verbatim|YangMills.Configuration>|#yangmills-configuration>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.constructed>|#yangmills-constructed>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.EnergyMomentumMeasure>|#yangmills-energymomentummeasure>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.FieldLabels>|#yangmills-fieldlabels>
    (Part II, certain)

    <item><hlink|<verbatim|YangMills.FieldSystem>|#yangmills-fieldsystem>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.GaugeGroup>|#yangmills-gaugegroup> (Part
    I, certain)

    <item><hlink|<verbatim|YangMills.GaugeGroup.core>|#yangmills-gaugegroup-core>
    (Part I, certain)

    <item><hlink|<verbatim|YangMills.GaugeGroup.IsSimple>|#yangmills-gaugegroup-issimple>
    (Part I, certain)

    <item><hlink|<verbatim|YangMills.hierarchy>|#yangmills-hierarchy> (Part
    V, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy>|#yangmills-hierarchy-2> (Part
    V, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.Contacts>|#yangmills-hierarchy-contacts>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.Mode>|#yangmills-hierarchy-mode>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.OperatorProductExpansion>|#yangmills-hierarchy-operatorproductexpansion>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.Properties>|#yangmills-hierarchy-properties>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.Reconstructed>|#yangmills-hierarchy-reconstructed>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.Tag>|#yangmills-hierarchy-tag>
    (Part II, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.TraceTest>|#yangmills-hierarchy-tracetest>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.traceTwo>|#yangmills-hierarchy-tracetwo>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.weight>|#yangmills-hierarchy-weight>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.Hierarchy.wickProfile>|#yangmills-hierarchy-wickprofile>
    (Part VII, certain)

    <item><hlink|<verbatim|YangMills.HilbertSpace>|#yangmills-hilbertspace>
    (Part I, certain)

    <item><hlink|<verbatim|YangMills.JointExistence>|#yangmills-jointexistence>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.plaquette>|#yangmills-plaquette> (Part
    III, certain)

    <item><hlink|<verbatim|YangMills.PoincareAction>|#yangmills-poincareaction>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.TestFunction>|#yangmills-testfunction>
    (Part I, certain)

    <item><hlink|<verbatim|YangMills.TranslationAction>|#yangmills-translationaction>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.view>|#yangmills-view> (Part V, certain)

    <item><hlink|<verbatim|YangMills.WightmanTheory>|#yangmills-wightmantheory>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.WightmanTheory.Axioms>|#yangmills-wightmantheory-axioms>
    (Part V, certain)

    <item><hlink|<verbatim|YangMills.wilsonEnergy>|#yangmills-wilsonenergy>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.wilsonFamily>|#yangmills-wilsonfamily>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily>|#yangmills-wilsonfamily-2>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily.Converges>|#yangmills-wilsonfamily-converges>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily.finiteMoment>|#yangmills-wilsonfamily-finitemoment>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily.mesh>|#yangmills-wilsonfamily-mesh>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily.separated>|#yangmills-wilsonfamily-separated>
    (Part II, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily.smear>|#yangmills-wilsonfamily-smear>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.WilsonFamily.suitable>|#yangmills-wilsonfamily-suitable>
    (Part III, certain)

    <item><hlink|<verbatim|YangMills.wilsonLaw>|#yangmills-wilsonlaw> (Part
    III, certain)

    <item><hlink|<verbatim|YangMills.WilsonRegularity>|#yangmills-wilsonregularity>
    (Part III, certain)

    <item><hlink|<verbatim|YM.Ac.Hit>|#ym-ac-hit> (Part III, tentative)

    <item><hlink|<verbatim|YM.Ac.Spark>|#ym-ac-spark> (Part III, tentative)

    <item><hlink|<verbatim|YM.Analysis.D>|#ym-analysis-d> (Part I, certain)

    <item><hlink|<verbatim|YM.Axis>|#ym-axis> (Part I, certain)

    <item><hlink|<verbatim|YM.Bid.Pantry>|#ym-bid-pantry> (Part V, tentative)

    <item><hlink|<verbatim|YM.Bid.Worth>|#ym-bid-worth> (Part III, tentative)

    <item><hlink|<verbatim|YM.Bloch.Momentum>|#ym-bloch-momentum> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Bloch.Row>|#ym-bloch-row> (Part III, probable)

    <item><hlink|<verbatim|YM.Bloch.Row.acts>|#ym-bloch-row-acts> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Boundary.Contour>|#ym-boundary-contour> (Part
    V, probable)

    <item><hlink|<verbatim|YM.Boundary.Surface>|#ym-boundary-surface> (Part
    V, probable)

    <item><hlink|<verbatim|YM.Boundary.Wightman>|#ym-boundary-wightman> (Part
    V, certain)

    <item><hlink|<verbatim|YM.Boundary.Wightman.Realizes>|#ym-boundary-wightman-realizes>
    (Part V, certain)

    <item><hlink|<verbatim|YM.Cells.Interior>|#ym-cells-interior> (Part III,
    probable)

    <item><hlink|<verbatim|YM.Cells.Tiling>|#ym-cells-tiling> (Part III,
    probable)

    <item><hlink|<verbatim|YM.Cells.Tiling.rootTest>|#ym-cells-tiling-roottest>
    (Part IV, probable)

    <item><hlink|<verbatim|YM.Climb.Scaling>|#ym-climb-scaling> (Part VII,
    certain)

    <item><hlink|<verbatim|YM.conf>|#ym-conf> (Part II, certain)

    <item><hlink|<verbatim|YM.ConnectedActivityE6.Cash>|#ym-connectedactivitye6-cash>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.ConnectedActivityE6.Coat>|#ym-connectedactivitye6-coat>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.ConnectedActivityE6.Molecule>|#ym-connectedactivitye6-molecule>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.ConnectedActivityE6.Rate>|#ym-connectedactivitye6-rate>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Contacts.Devices>|#ym-contacts-devices> (Part
    VII, probable)

    <item><hlink|<verbatim|YM.Contacts.Solstice.Charge>|#ym-contacts-solstice-charge>
    (Part VII, tentative)

    <item><hlink|<verbatim|YM.Contacts.Solstice.MultipleLight>|#ym-contacts-solstice-multiplelight>
    (Part VII, probable)

    <item><hlink|<verbatim|YM.Contacts.Solstice.Thresholds>|#ym-contacts-solstice-thresholds>
    (Part VII, probable)

    <item><hlink|<verbatim|YM.Contacts.Transport.SystemBasis>|#ym-contacts-transport-systembasis>
    (Part VII, tentative)

    <item><hlink|<verbatim|YM.DiffPlan>|#ym-diffplan> (Part VI, certain)

    <item><hlink|<verbatim|YM.E4>|#ym-e4> (Part I, certain)

    <item><hlink|<verbatim|YM.EveryPhase.Almanac>|#ym-everyphase-almanac>
    (Part V, certain)

    <item><hlink|<verbatim|YM.EveryPhase.Completed>|#ym-everyphase-completed>
    (Part V, certain)

    <item><hlink|<verbatim|YM.EveryPhase.Stress.Force>|#ym-everyphase-stress-force>
    (Part VI, probable)

    <item><hlink|<verbatim|YM.Exterior.Body>|#ym-exterior-body> (Part I,
    probable)

    <item><hlink|<verbatim|YM.Exterior.d>|#ym-exterior-d> (Part I, probable)

    <item><hlink|<verbatim|YM.Exterior.TypeFace>|#ym-exterior-typeface> (Part
    I, probable)

    <item><hlink|<verbatim|YM.Extraction.Order>|#ym-extraction-order> (Part
    IV, certain)

    <item><hlink|<verbatim|YM.Extraction.Order.fuse>|#ym-extraction-order-fuse>
    (Part IV, probable)

    <item><hlink|<verbatim|YM.Extraction.Order.late>|#ym-extraction-order-late>
    (Part IV, certain)

    <item><hlink|<verbatim|YM.Extraction.Order.Ordered>|#ym-extraction-order-ordered>
    (Part III, certain)

    <item><hlink|<verbatim|YM.Extraction.Order.Ordered.reads>|#ym-extraction-order-ordered-reads>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Extraction.Order.refine>|#ym-extraction-order-refine>
    (Part IV, certain)

    <item><hlink|<verbatim|YM.Extraction.Sequence>|#ym-extraction-sequence>
    (Part IV, certain)

    <item><hlink|<verbatim|YM.Extraction.Sequence.full>|#ym-extraction-sequence-full>
    (Part IV, tentative)

    <item><hlink|<verbatim|YM.Family>|#ym-family> (Part II, certain)

    <item><hlink|<verbatim|YM.Family.beta>|#ym-family-beta> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Family.book>|#ym-family-book> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Family.label>|#ym-family-label> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Family.Makes>|#ym-family-makes> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Family.O>|#ym-family-o> (Part II, certain)

    <item><hlink|<verbatim|YM.Family.S>|#ym-family-s> (Part III, certain)

    <item><hlink|<verbatim|YM.Family.side>|#ym-family-side> (Part III,
    certain)

    <item><hlink|<verbatim|YM.FullVolume.PositionsUV>|#ym-fullvolume-positionsuv>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Gauge>|#ym-gauge> (Part I, certain)

    <item><hlink|<verbatim|YM.Gauge.adjoint>|#ym-gauge-adjoint> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Gauge.casimir>|#ym-gauge-casimir> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Gauge.Color>|#ym-gauge-color> (Part I, certain)

    <item><hlink|<verbatim|YM.Gauge.ColorIndex>|#ym-gauge-colorindex> (Part
    I, certain)

    <item><hlink|<verbatim|YM.Gauge.curvature>|#ym-gauge-curvature> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Gauge.El>|#ym-gauge-el> (Part I, certain)

    <item><hlink|<verbatim|YM.Gauge.lieExp>|#ym-gauge-lieexp> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Gauge.Mat>|#ym-gauge-mat> (Part I, certain)

    <item><hlink|<verbatim|YM.Gauge.probHaar>|#ym-gauge-probhaar> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Gauge.Simple>|#ym-gauge-simple> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Gauge.slopeConstant>|#ym-gauge-slopeconstant>
    (Part III, certain)

    <item><hlink|<verbatim|YM.Independent.Core>|#ym-independent-core> (Part
    VII, probable)

    <item><hlink|<verbatim|YM.Input.Directed>|#ym-input-directed> (Part III,
    probable)

    <item><hlink|<verbatim|YM.Input.Directed.Move>|#ym-input-directed-move>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.Labels.Frame>|#ym-labels-frame> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Labels.Frame.Coeff>|#ym-labels-frame-coeff>
    (Part II, certain)

    <item><hlink|<verbatim|YM.Labels.Frame.Index>|#ym-labels-frame-index>
    (Part II, certain)

    <item><hlink|<verbatim|YM.Labels.frames>|#ym-labels-frames> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Labels.Frames>|#ym-labels-frames-2> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Labels.Jet>|#ym-labels-jet> (Part II, probable)

    <item><hlink|<verbatim|YM.Labels.Label>|#ym-labels-label> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Labels.Taylor>|#ym-labels-taylor> (Part II,
    probable)

    <item><hlink|<verbatim|YM.Lattice.Agrees>|#ym-lattice-agrees> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Cover>|#ym-lattice-cover> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.coverNumber>|#ym-lattice-covernumber>
    (Part I, probable)

    <item><hlink|<verbatim|YM.Lattice.Edge>|#ym-lattice-edge> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Face>|#ym-lattice-face> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.faceValue>|#ym-lattice-facevalue> (Part
    III, certain)

    <item><hlink|<verbatim|YM.Lattice.GaugeInvariant>|#ym-lattice-gaugeinvariant>
    (Part I, certain)

    <item><hlink|<verbatim|YM.Lattice.halo>|#ym-lattice-halo> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.LocalOn>|#ym-lattice-localon> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Per>|#ym-lattice-per> (Part I, certain)

    <item><hlink|<verbatim|YM.Lattice.PlaqAxes>|#ym-lattice-plaqaxes> (Part
    I, certain)

    <item><hlink|<verbatim|YM.Lattice.Ratio>|#ym-lattice-ratio> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Ratio.embed>|#ym-lattice-ratio-embed>
    (Part III, certain)

    <item><hlink|<verbatim|YM.Lattice.Ratio.parent>|#ym-lattice-ratio-parent>
    (Part III, certain)

    <item><hlink|<verbatim|YM.Lattice.separation>|#ym-lattice-separation>
    (Part I, certain)

    <item><hlink|<verbatim|YM.Lattice.Side>|#ym-lattice-side> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Site>|#ym-lattice-site> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Step>|#ym-lattice-step> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Step.vec>|#ym-lattice-step-vec> (Part
    I, certain)

    <item><hlink|<verbatim|YM.Lattice.Support>|#ym-lattice-support> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Lattice.Walk>|#ym-lattice-walk> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Laurent.mode>|#ym-laurent-mode> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Laurent.Phase>|#ym-laurent-phase> (Part I,
    probable)

    <item><hlink|<verbatim|YM.Laurent.strip>|#ym-laurent-strip> (Part I,
    probable)

    <item><hlink|<verbatim|YM.Marker.Census.Mode>|#ym-marker-census-mode>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.Marker.Poly>|#ym-marker-poly> (Part III,
    probable)

    <item><hlink|<verbatim|YM.Maxwell.grad>|#ym-maxwell-grad> (Part VII,
    tentative)

    <item><hlink|<verbatim|YM.Maxwell.WickPol>|#ym-maxwell-wickpol> (Part
    VII, probable)

    <item><hlink|<verbatim|YM.Next.BOUNDARY.FieldCore>|#ym-next-boundary-fieldcore>
    (Part V, probable)

    <item><hlink|<verbatim|YM.Next.Free.Flight>|#ym-next-free-flight> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Next.Free.Whole>|#ym-next-free-whole> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Next.Rank.Perch.bill>|#ym-next-rank-perch-bill>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.Next.SectorChange.Gaussian.Vec>|#ym-next-sectorchange-gaussian-vec>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.Next.SectorChange.Prices>|#ym-next-sectorchange-prices>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.Nonperturbative.Headline.NestedOPE>|#ym-nonperturbative-headline-nestedope>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.Nonperturbative.Headline.Reconstruction>|#ym-nonperturbative-headline-reconstruction>
    (Part V, certain)

    <item><hlink|<verbatim|YM.Nonperturbative.Headline.SeparatedOPE>|#ym-nonperturbative-headline-separatedope>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.Nonperturbative.Headline.TraceExclusions>|#ym-nonperturbative-headline-traceexclusions>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.Nonperturbative.Headline.WightmanAxioms>|#ym-nonperturbative-headline-wightmanaxioms>
    (Part V, certain)

    <item><hlink|<verbatim|YM.OPE.Orbits.Reader>|#ym-ope-orbits-reader> (Part
    VII, certain)

    <item><hlink|<verbatim|YM.OPE.Prescription>|#ym-ope-prescription> (Part
    VII, certain)

    <item><hlink|<verbatim|YM.Ortho>|#ym-ortho> (Part VI, certain)

    <item><hlink|<verbatim|YM.OS.Chamber>|#ym-os-chamber> (Part V, certain)

    <item><hlink|<verbatim|YM.OS.Selection>|#ym-os-selection> (Part V,
    certain)

    <item><hlink|<verbatim|YM.OS.Spread>|#ym-os-spread> (Part V, probable)

    <item><hlink|<verbatim|YM.OS.Spread.Resolution>|#ym-os-spread-resolution>
    (Part V, certain)

    <item><hlink|<verbatim|YM.Pert.Asymptotics.b0>|#ym-pert-asymptotics-b0>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.Pert.Bulk.Market>|#ym-pert-bulk-market> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Pert.FirstExtension>|#ym-pert-firstextension>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.Pert.Position.FourMeters>|#ym-pert-position-fourmeters>
    (Part VII, probable)

    <item><hlink|<verbatim|YM.Points>|#ym-points> (Part I, certain)

    <item><hlink|<verbatim|YM.Precision.Bed>|#ym-precision-bed> (Part III,
    tentative)

    <item><hlink|<verbatim|YM.Precision.ChartRatio>|#ym-precision-chartratio>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Precision.Floor>|#ym-precision-floor> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Precision.Horizon>|#ym-precision-horizon> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Precision.LocalRatio>|#ym-precision-localratio>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Precision.MapPrices>|#ym-precision-mapprices>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Precision.PostCost>|#ym-precision-postcost>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Precision.replica>|#ym-precision-replica> (Part
    III, probable)

    <item><hlink|<verbatim|YM.Precision.represent>|#ym-precision-represent>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Pressure.betaF>|#ym-pressure-betaf> (Part III,
    probable)

    <item><hlink|<verbatim|YM.Pressure.fiery>|#ym-pressure-fiery> (Part III,
    tentative)

    <item><hlink|<verbatim|YM.Pressure.radiusB>|#ym-pressure-radiusb> (Part
    III, probable)

    <item><hlink|<verbatim|YM.Pressure.Stores>|#ym-pressure-stores> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Pressure.Teller>|#ym-pressure-teller> (Part
    III, probable)

    <item><hlink|<verbatim|YM.Pressure.Teller.Funds>|#ym-pressure-teller-funds>
    (Part III, tentative)

    <item><hlink|<verbatim|YM.Pressure.temp>|#ym-pressure-temp> (Part III,
    probable)

    <item><hlink|<verbatim|YM.Pressure.Tube>|#ym-pressure-tube> (Part III,
    tentative)

    <item><hlink|<verbatim|YM.Push.SectorMeasure.Chi>|#ym-push-sectormeasure-chi>
    (Part III, probable)

    <item><hlink|<verbatim|YM.Register>|#ym-register> (Part II, certain)

    <item><hlink|<verbatim|YM.Register.Ref>|#ym-register-ref> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Register.Token>|#ym-register-token> (Part II,
    certain)

    <item><hlink|<verbatim|YM.RG.Activities>|#ym-rg-activities> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Activities.Moves>|#ym-rg-activities-moves>
    (Part III, probable)

    <item><hlink|<verbatim|YM.RG.Atom>|#ym-rg-atom> (Part III, probable)

    <item><hlink|<verbatim|YM.RG.BudgetPoint>|#ym-rg-budgetpoint> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.BudgetPoint.mass>|#ym-rg-budgetpoint-mass>
    (Part III, probable)

    <item><hlink|<verbatim|YM.RG.BudgetPoint.Regular>|#ym-rg-budgetpoint-regular>
    (Part III, certain)

    <item><hlink|<verbatim|YM.RG.BudgetPoint.supBounds>|#ym-rg-budgetpoint-supbounds>
    (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Calendar>|#ym-rg-calendar> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Calendar.BlockControl>|#ym-rg-calendar-blockcontrol>
    (Part III, probable)

    <item><hlink|<verbatim|YM.RG.Calendar.Fits>|#ym-rg-calendar-fits> (Part
    III, probable)

    <item><hlink|<verbatim|YM.RG.Calendar.hatBeta>|#ym-rg-calendar-hatbeta>
    (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Calendar.op>|#ym-rg-calendar-op> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Clip>|#ym-rg-clip> (Part III, probable)

    <item><hlink|<verbatim|YM.RG.Directions>|#ym-rg-directions> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Envelope>|#ym-rg-envelope> (Part III,
    tentative)

    <item><hlink|<verbatim|YM.RG.flags>|#ym-rg-flags> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Healthy>|#ym-rg-healthy> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.History>|#ym-rg-history> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.increment>|#ym-rg-increment> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.KernelChoices>|#ym-rg-kernelchoices> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.leftDerivs>|#ym-rg-leftderivs> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Levels>|#ym-rg-levels> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Levels.budget>|#ym-rg-levels-budget> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.masked>|#ym-rg-masked> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Patch>|#ym-rg-patch> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Patch.Branches>|#ym-rg-patch-branches> (Part
    III, probable)

    <item><hlink|<verbatim|YM.RG.PathData>|#ym-rg-pathdata> (Part III,
    probable)

    <item><hlink|<verbatim|YM.RG.Rep>|#ym-rg-rep> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Rep.eval>|#ym-rg-rep-eval> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Rep.exponent>|#ym-rg-rep-exponent> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.Rep.Lawful>|#ym-rg-rep-lawful> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Slot>|#ym-rg-slot> (Part III, probable)

    <item><hlink|<verbatim|YM.RG.Stage>|#ym-rg-stage> (Part III, certain)

    <item><hlink|<verbatim|YM.RG.StepData>|#ym-rg-stepdata> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.StepData.Choices>|#ym-rg-stepdata-choices>
    (Part III, probable)

    <item><hlink|<verbatim|YM.RG.StepData.prediction>|#ym-rg-stepdata-prediction>
    (Part III, probable)

    <item><hlink|<verbatim|YM.RG.StepData.push>|#ym-rg-stepdata-push> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.StepData.ratio>|#ym-rg-stepdata-ratio> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.SumBudget>|#ym-rg-sumbudget> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Supply.Bar>|#ym-rg-supply-bar> (Part III,
    certain)

    <item><hlink|<verbatim|YM.RG.Supply.Delays>|#ym-rg-supply-delays> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.Supply.Large>|#ym-rg-supply-large> (Part
    III, probable)

    <item><hlink|<verbatim|YM.RG.Supply.Paid>|#ym-rg-supply-paid> (Part III,
    probable)

    <item><hlink|<verbatim|YM.RG.Supply.Protection>|#ym-rg-supply-protection>
    (Part III, certain)

    <item><hlink|<verbatim|YM.RG.Supply.Rolls>|#ym-rg-supply-rolls> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.Supply.Sheet>|#ym-rg-supply-sheet> (Part
    III, certain)

    <item><hlink|<verbatim|YM.RG.Supply.Wait>|#ym-rg-supply-wait> (Part III,
    probable)

    <item><hlink|<verbatim|YM.RG08.Forms.Tape>|#ym-rg08-forms-tape> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Schedule>|#ym-schedule> (Part III, certain)

    <item><hlink|<verbatim|YM.Schedule.a>|#ym-schedule-a> (Part III, certain)

    <item><hlink|<verbatim|YM.Signed>|#ym-signed> (Part VI, certain)

    <item><hlink|<verbatim|YM.Source.Coefficient>|#ym-source-coefficient>
    (Part II, probable)

    <item><hlink|<verbatim|YM.Source.Coefficient.Format>|#ym-source-coefficient-format>
    (Part II, tentative)

    <item><hlink|<verbatim|YM.Source.Hol>|#ym-source-hol> (Part II, certain)

    <item><hlink|<verbatim|YM.Source.SectionData>|#ym-source-sectiondata>
    (Part II, certain)

    <item><hlink|<verbatim|YM.Source.TransferData>|#ym-source-transferdata>
    (Part II, certain)

    <item><hlink|<verbatim|YM.Spec.Algebra>|#ym-spec-algebra> (Part VI,
    certain)

    <item><hlink|<verbatim|YM.Spec.Calibrated>|#ym-spec-calibrated> (Part
    III, probable)

    <item><hlink|<verbatim|YM.Spec.Final>|#ym-spec-final> (Part V, certain)

    <item><hlink|<verbatim|YM.Spec.Seed>|#ym-spec-seed> (Part IV, probable)

    <item><hlink|<verbatim|YM.Stationary.Link>|#ym-stationary-link> (Part
    III, tentative)

    <item><hlink|<verbatim|YM.Stationary.Loc>|#ym-stationary-loc> (Part III,
    tentative)

    <item><hlink|<verbatim|YM.Table>|#ym-table> (Part IV, certain)

    <item><hlink|<verbatim|YM.Table.Field>|#ym-table-field> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Table.Hierarchy>|#ym-table-hierarchy> (Part IV,
    certain)

    <item><hlink|<verbatim|YM.Table.project>|#ym-table-project> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Table.RealSpin>|#ym-table-realspin> (Part VI,
    certain)

    <item><hlink|<verbatim|YM.Table.Rotation>|#ym-table-rotation> (Part VI,
    certain)

    <item><hlink|<verbatim|YM.Table.RP>|#ym-table-rp> (Part IV, certain)

    <item><hlink|<verbatim|YM.Table.Stress>|#ym-table-stress> (Part VI,
    certain)

    <item><hlink|<verbatim|YM.Table.StressLaws>|#ym-table-stresslaws> (Part
    VI, certain)

    <item><hlink|<verbatim|YM.Table.Tag>|#ym-table-tag> (Part II, certain)

    <item><hlink|<verbatim|YM.Table.Union>|#ym-table-union> (Part II,
    certain)

    <item><hlink|<verbatim|YM.Tensor.coeff>|#ym-tensor-coeff> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Tensor.diagonal>|#ym-tensor-diagonal> (Part I,
    certain)

    <item><hlink|<verbatim|YM.Tensor.T>|#ym-tensor-t> (Part I, certain)

    <item><hlink|<verbatim|YM.Trace.Verse.award>|#ym-trace-verse-award> (Part
    VII, probable)

    <item><hlink|<verbatim|YM.TraceExtension.center>|#ym-traceextension-center>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.TraceExtension.stressTrace>|#ym-traceextension-stresstrace>
    (Part VII, certain)

    <item><hlink|<verbatim|YM.TraceExtension.theta>|#ym-traceextension-theta>
    (Part VII, probable)

    <item><hlink|<verbatim|YM.Tree.Forest>|#ym-tree-forest> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Tree.Forest.Free>|#ym-tree-forest-free> (Part
    III, certain)

    <item><hlink|<verbatim|YM.Tree.Forest.Slice>|#ym-tree-forest-slice> (Part
    III, certain)

    <item><hlink|<verbatim|YM.Ward.disc>|#ym-ward-disc> (Part VI, probable)

    <item><hlink|<verbatim|YM.Wilson.Config>|#ym-wilson-config> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Wilson.energy>|#ym-wilson-energy> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Wilson.law>|#ym-wilson-law> (Part III, certain)

    <item><hlink|<verbatim|YM.Wilson.moment>|#ym-wilson-moment> (Part III,
    certain)

    <item><hlink|<verbatim|YM.Wilson.prior>|#ym-wilson-prior> (Part III,
    certain)
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|html-title|Glossary of the Lean names \U Yang\UMills
    informalization>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|10|20>>
    <associate|auto-11|<tuple|11|20>>
    <associate|auto-12|<tuple|12|22>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|5|5>>
    <associate|auto-6|<tuple|6|8>>
    <associate|auto-7|<tuple|7|9>>
    <associate|auto-8|<tuple|8|17>>
    <associate|auto-9|<tuple|9|18>>
    <associate|glossary-of-the-lean-names|<tuple|?|1>>
    <associate|index|<tuple|12|22>>
    <associate|mathematical-terms|<tuple|1|2>>
    <associate|nickname-families|<tuple|4|4>>
    <associate|part-i|<tuple|8|5>>
    <associate|part-i-setting-and-general-tools|<tuple|5|5>>
    <associate|part-ii|<tuple|5|7>>
    <associate|part-ii-data-of-the-construction|<tuple|6|8>>
    <associate|part-iii|<tuple|6|9>>
    <associate|part-iii-ultraviolet-construction-renormalization-group|<tuple|7|9>>
    <associate|part-iv|<tuple|7|17>>
    <associate|part-iv-infinite-volume|<tuple|8|17>>
    <associate|part-v|<tuple|8|17>>
    <associate|part-v-phases-and-reconstruction|<tuple|9|18>>
    <associate|part-vi|<tuple|9|19>>
    <associate|part-vi-symmetry-stress-tensor-and-ward-identities|<tuple|10|20>>
    <associate|part-vii|<tuple|10|20>>
    <associate|part-vii-identification-as-yangmills|<tuple|11|20>>
    <associate|the-main-theorem|<tuple|3|3>>
    <associate|why-a-glossary|<tuple|2|2>>
    <associate|yangmills-configuration|<tuple|7|10>>
    <associate|yangmills-constructed|<tuple|9|19>>
    <associate|yangmills-energymomentummeasure|<tuple|9|18>>
    <associate|yangmills-fieldlabels|<tuple|6|8>>
    <associate|yangmills-fieldsystem|<tuple|9|18>>
    <associate|yangmills-gaugegroup|<tuple|5|5>>
    <associate|yangmills-gaugegroup-core|<tuple|5|5>>
    <associate|yangmills-gaugegroup-issimple|<tuple|5|5>>
    <associate|yangmills-hierarchy|<tuple|9|18>>
    <associate|yangmills-hierarchy-2|<tuple|9|18>>
    <associate|yangmills-hierarchy-contacts|<tuple|11|21>>
    <associate|yangmills-hierarchy-mode|<tuple|11|21>>
    <associate|yangmills-hierarchy-operatorproductexpansion|<tuple|11|21>>
    <associate|yangmills-hierarchy-properties|<tuple|9|18>>
    <associate|yangmills-hierarchy-reconstructed|<tuple|9|18>>
    <associate|yangmills-hierarchy-tag|<tuple|6|8>>
    <associate|yangmills-hierarchy-tracetest|<tuple|11|21>>
    <associate|yangmills-hierarchy-tracetwo|<tuple|11|21>>
    <associate|yangmills-hierarchy-weight|<tuple|11|21>>
    <associate|yangmills-hierarchy-wickprofile|<tuple|11|21>>
    <associate|yangmills-hilbertspace|<tuple|5|5>>
    <associate|yangmills-jointexistence|<tuple|9|19>>
    <associate|yangmills-plaquette|<tuple|7|10>>
    <associate|yangmills-poincareaction|<tuple|9|18>>
    <associate|yangmills-testfunction|<tuple|5|5>>
    <associate|yangmills-translationaction|<tuple|9|19>>
    <associate|yangmills-view|<tuple|9|18>>
    <associate|yangmills-wightmantheory|<tuple|9|18>>
    <associate|yangmills-wightmantheory-axioms|<tuple|9|18>>
    <associate|yangmills-wilsonenergy|<tuple|7|10>>
    <associate|yangmills-wilsonfamily|<tuple|7|10>>
    <associate|yangmills-wilsonfamily-2|<tuple|7|10>>
    <associate|yangmills-wilsonfamily-converges|<tuple|7|10>>
    <associate|yangmills-wilsonfamily-finitemoment|<tuple|7|10>>
    <associate|yangmills-wilsonfamily-mesh|<tuple|7|10>>
    <associate|yangmills-wilsonfamily-separated|<tuple|6|8>>
    <associate|yangmills-wilsonfamily-smear|<tuple|7|10>>
    <associate|yangmills-wilsonfamily-suitable|<tuple|7|10>>
    <associate|yangmills-wilsonlaw|<tuple|7|10>>
    <associate|yangmills-wilsonregularity|<tuple|7|10>>
    <associate|ym-ac-hit|<tuple|7|14>>
    <associate|ym-ac-spark|<tuple|7|15>>
    <associate|ym-analysis-d|<tuple|5|7>>
    <associate|ym-axis|<tuple|5|6>>
    <associate|ym-bid-pantry|<tuple|9|19>>
    <associate|ym-bid-worth|<tuple|7|16>>
    <associate|ym-bloch-momentum|<tuple|7|11>>
    <associate|ym-bloch-row|<tuple|7|12>>
    <associate|ym-bloch-row-acts|<tuple|7|12>>
    <associate|ym-boundary-contour|<tuple|9|19>>
    <associate|ym-boundary-surface|<tuple|9|19>>
    <associate|ym-boundary-wightman|<tuple|9|19>>
    <associate|ym-boundary-wightman-realizes|<tuple|9|19>>
    <associate|ym-cells-interior|<tuple|7|15>>
    <associate|ym-cells-tiling|<tuple|7|16>>
    <associate|ym-cells-tiling-roottest|<tuple|8|17>>
    <associate|ym-climb-scaling|<tuple|11|20>>
    <associate|ym-conf|<tuple|6|8>>
    <associate|ym-connectedactivitye6-cash|<tuple|7|15>>
    <associate|ym-connectedactivitye6-coat|<tuple|7|14>>
    <associate|ym-connectedactivitye6-molecule|<tuple|7|14>>
    <associate|ym-connectedactivitye6-rate|<tuple|7|14>>
    <associate|ym-contacts-devices|<tuple|11|20>>
    <associate|ym-contacts-solstice-charge|<tuple|11|22>>
    <associate|ym-contacts-solstice-multiplelight|<tuple|11|21>>
    <associate|ym-contacts-solstice-thresholds|<tuple|11|21>>
    <associate|ym-contacts-transport-systembasis|<tuple|11|21>>
    <associate|ym-diffplan|<tuple|10|20>>
    <associate|ym-e4|<tuple|5|6>>
    <associate|ym-everyphase-almanac|<tuple|9|18>>
    <associate|ym-everyphase-completed|<tuple|9|19>>
    <associate|ym-everyphase-stress-force|<tuple|10|20>>
    <associate|ym-exterior-body|<tuple|5|6>>
    <associate|ym-exterior-d|<tuple|5|7>>
    <associate|ym-exterior-typeface|<tuple|5|6>>
    <associate|ym-extraction-order|<tuple|8|17>>
    <associate|ym-extraction-order-fuse|<tuple|8|17>>
    <associate|ym-extraction-order-late|<tuple|8|17>>
    <associate|ym-extraction-order-ordered|<tuple|7|10>>
    <associate|ym-extraction-order-ordered-reads|<tuple|7|17>>
    <associate|ym-extraction-order-refine|<tuple|8|17>>
    <associate|ym-extraction-sequence|<tuple|8|17>>
    <associate|ym-extraction-sequence-full|<tuple|8|17>>
    <associate|ym-family|<tuple|6|8>>
    <associate|ym-family-beta|<tuple|7|14>>
    <associate|ym-family-book|<tuple|6|8>>
    <associate|ym-family-label|<tuple|6|8>>
    <associate|ym-family-makes|<tuple|6|8>>
    <associate|ym-family-o|<tuple|6|9>>
    <associate|ym-family-s|<tuple|7|11>>
    <associate|ym-family-side|<tuple|7|11>>
    <associate|ym-fullvolume-positionsuv|<tuple|7|10>>
    <associate|ym-gauge|<tuple|5|6>>
    <associate|ym-gauge-adjoint|<tuple|5|6>>
    <associate|ym-gauge-casimir|<tuple|5|7>>
    <associate|ym-gauge-color|<tuple|5|6>>
    <associate|ym-gauge-colorindex|<tuple|5|6>>
    <associate|ym-gauge-curvature|<tuple|5|7>>
    <associate|ym-gauge-el|<tuple|5|6>>
    <associate|ym-gauge-lieexp|<tuple|5|6>>
    <associate|ym-gauge-mat|<tuple|5|7>>
    <associate|ym-gauge-probhaar|<tuple|5|7>>
    <associate|ym-gauge-simple|<tuple|5|5>>
    <associate|ym-gauge-slopeconstant|<tuple|7|16>>
    <associate|ym-independent-core|<tuple|11|21>>
    <associate|ym-input-directed|<tuple|7|16>>
    <associate|ym-input-directed-move|<tuple|7|16>>
    <associate|ym-labels-frame|<tuple|6|8>>
    <associate|ym-labels-frame-coeff|<tuple|6|8>>
    <associate|ym-labels-frame-index|<tuple|6|8>>
    <associate|ym-labels-frames|<tuple|6|8>>
    <associate|ym-labels-frames-2|<tuple|6|9>>
    <associate|ym-labels-jet|<tuple|6|9>>
    <associate|ym-labels-label|<tuple|6|9>>
    <associate|ym-labels-taylor|<tuple|6|9>>
    <associate|ym-lattice-agrees|<tuple|5|7>>
    <associate|ym-lattice-cover|<tuple|5|6>>
    <associate|ym-lattice-covernumber|<tuple|5|6>>
    <associate|ym-lattice-edge|<tuple|5|6>>
    <associate|ym-lattice-face|<tuple|5|7>>
    <associate|ym-lattice-facevalue|<tuple|7|13>>
    <associate|ym-lattice-gaugeinvariant|<tuple|5|7>>
    <associate|ym-lattice-halo|<tuple|5|7>>
    <associate|ym-lattice-localon|<tuple|5|7>>
    <associate|ym-lattice-per|<tuple|5|6>>
    <associate|ym-lattice-plaqaxes|<tuple|5|6>>
    <associate|ym-lattice-ratio|<tuple|7|15>>
    <associate|ym-lattice-ratio-embed|<tuple|7|12>>
    <associate|ym-lattice-ratio-parent|<tuple|7|11>>
    <associate|ym-lattice-separation|<tuple|5|6>>
    <associate|ym-lattice-side|<tuple|5|6>>
    <associate|ym-lattice-site|<tuple|5|6>>
    <associate|ym-lattice-step|<tuple|5|7>>
    <associate|ym-lattice-step-vec|<tuple|5|7>>
    <associate|ym-lattice-support|<tuple|5|6>>
    <associate|ym-lattice-walk|<tuple|5|7>>
    <associate|ym-laurent-mode|<tuple|5|7>>
    <associate|ym-laurent-phase|<tuple|5|7>>
    <associate|ym-laurent-strip|<tuple|5|7>>
    <associate|ym-marker-census-mode|<tuple|7|13>>
    <associate|ym-marker-poly|<tuple|7|13>>
    <associate|ym-maxwell-grad|<tuple|11|22>>
    <associate|ym-maxwell-wickpol|<tuple|11|21>>
    <associate|ym-next-boundary-fieldcore|<tuple|9|19>>
    <associate|ym-next-free-flight|<tuple|7|15>>
    <associate|ym-next-free-whole|<tuple|7|14>>
    <associate|ym-next-rank-perch-bill|<tuple|7|15>>
    <associate|ym-next-sectorchange-gaussian-vec|<tuple|7|13>>
    <associate|ym-next-sectorchange-prices|<tuple|7|14>>
    <associate|ym-nonperturbative-headline-nestedope|<tuple|11|21>>
    <associate|ym-nonperturbative-headline-reconstruction|<tuple|9|18>>
    <associate|ym-nonperturbative-headline-separatedope|<tuple|11|21>>
    <associate|ym-nonperturbative-headline-traceexclusions|<tuple|11|21>>
    <associate|ym-nonperturbative-headline-wightmanaxioms|<tuple|9|19>>
    <associate|ym-ope-orbits-reader|<tuple|11|20>>
    <associate|ym-ope-prescription|<tuple|11|22>>
    <associate|ym-ortho|<tuple|10|20>>
    <associate|ym-os-chamber|<tuple|9|19>>
    <associate|ym-os-selection|<tuple|9|19>>
    <associate|ym-os-spread|<tuple|9|19>>
    <associate|ym-os-spread-resolution|<tuple|9|19>>
    <associate|ym-pert-asymptotics-b0|<tuple|11|22>>
    <associate|ym-pert-bulk-market|<tuple|7|13>>
    <associate|ym-pert-firstextension|<tuple|11|20>>
    <associate|ym-pert-position-fourmeters|<tuple|11|21>>
    <associate|ym-points|<tuple|5|6>>
    <associate|ym-precision-bed|<tuple|7|13>>
    <associate|ym-precision-chartratio|<tuple|7|12>>
    <associate|ym-precision-floor|<tuple|7|16>>
    <associate|ym-precision-horizon|<tuple|7|15>>
    <associate|ym-precision-localratio|<tuple|7|13>>
    <associate|ym-precision-mapprices|<tuple|7|13>>
    <associate|ym-precision-postcost|<tuple|7|16>>
    <associate|ym-precision-replica|<tuple|7|14>>
    <associate|ym-precision-represent|<tuple|7|13>>
    <associate|ym-pressure-betaf|<tuple|7|13>>
    <associate|ym-pressure-fiery|<tuple|7|13>>
    <associate|ym-pressure-radiusb|<tuple|7|11>>
    <associate|ym-pressure-stores|<tuple|7|11>>
    <associate|ym-pressure-teller|<tuple|7|12>>
    <associate|ym-pressure-teller-funds|<tuple|7|14>>
    <associate|ym-pressure-temp|<tuple|7|12>>
    <associate|ym-pressure-tube|<tuple|7|11>>
    <associate|ym-push-sectormeasure-chi|<tuple|7|13>>
    <associate|ym-register|<tuple|6|9>>
    <associate|ym-register-ref|<tuple|6|9>>
    <associate|ym-register-token|<tuple|6|8>>
    <associate|ym-rg-activities|<tuple|7|16>>
    <associate|ym-rg-activities-moves|<tuple|7|16>>
    <associate|ym-rg-atom|<tuple|7|15>>
    <associate|ym-rg-budgetpoint|<tuple|7|11>>
    <associate|ym-rg-budgetpoint-mass|<tuple|7|14>>
    <associate|ym-rg-budgetpoint-regular|<tuple|7|13>>
    <associate|ym-rg-budgetpoint-supbounds|<tuple|7|13>>
    <associate|ym-rg-calendar|<tuple|7|16>>
    <associate|ym-rg-calendar-blockcontrol|<tuple|7|17>>
    <associate|ym-rg-calendar-fits|<tuple|7|17>>
    <associate|ym-rg-calendar-hatbeta|<tuple|7|12>>
    <associate|ym-rg-calendar-op|<tuple|7|12>>
    <associate|ym-rg-clip|<tuple|7|12>>
    <associate|ym-rg-directions|<tuple|7|11>>
    <associate|ym-rg-envelope|<tuple|7|14>>
    <associate|ym-rg-flags|<tuple|7|12>>
    <associate|ym-rg-healthy|<tuple|7|12>>
    <associate|ym-rg-history|<tuple|7|16>>
    <associate|ym-rg-increment|<tuple|7|12>>
    <associate|ym-rg-kernelchoices|<tuple|7|13>>
    <associate|ym-rg-leftderivs|<tuple|7|13>>
    <associate|ym-rg-levels|<tuple|7|12>>
    <associate|ym-rg-levels-budget|<tuple|7|11>>
    <associate|ym-rg-masked|<tuple|7|14>>
    <associate|ym-rg-patch|<tuple|7|11>>
    <associate|ym-rg-patch-branches|<tuple|7|11>>
    <associate|ym-rg-pathdata|<tuple|7|12>>
    <associate|ym-rg-rep|<tuple|7|11>>
    <associate|ym-rg-rep-eval|<tuple|7|14>>
    <associate|ym-rg-rep-exponent|<tuple|7|16>>
    <associate|ym-rg-rep-lawful|<tuple|7|15>>
    <associate|ym-rg-slot|<tuple|7|14>>
    <associate|ym-rg-stage|<tuple|7|15>>
    <associate|ym-rg-stepdata|<tuple|7|11>>
    <associate|ym-rg-stepdata-choices|<tuple|7|11>>
    <associate|ym-rg-stepdata-prediction|<tuple|7|13>>
    <associate|ym-rg-stepdata-push|<tuple|7|15>>
    <associate|ym-rg-stepdata-ratio|<tuple|7|11>>
    <associate|ym-rg-sumbudget|<tuple|7|12>>
    <associate|ym-rg-supply-bar|<tuple|7|16>>
    <associate|ym-rg-supply-delays|<tuple|7|14>>
    <associate|ym-rg-supply-large|<tuple|7|17>>
    <associate|ym-rg-supply-paid|<tuple|7|15>>
    <associate|ym-rg-supply-protection|<tuple|7|15>>
    <associate|ym-rg-supply-rolls|<tuple|7|15>>
    <associate|ym-rg-supply-sheet|<tuple|7|15>>
    <associate|ym-rg-supply-wait|<tuple|7|15>>
    <associate|ym-rg08-forms-tape|<tuple|7|14>>
    <associate|ym-schedule|<tuple|7|16>>
    <associate|ym-schedule-a|<tuple|7|16>>
    <associate|ym-signed|<tuple|10|20>>
    <associate|ym-source-coefficient|<tuple|6|9>>
    <associate|ym-source-coefficient-format|<tuple|6|9>>
    <associate|ym-source-hol|<tuple|6|8>>
    <associate|ym-source-sectiondata|<tuple|6|9>>
    <associate|ym-source-transferdata|<tuple|6|9>>
    <associate|ym-spec-algebra|<tuple|10|20>>
    <associate|ym-spec-calibrated|<tuple|7|9>>
    <associate|ym-spec-final|<tuple|9|18>>
    <associate|ym-spec-seed|<tuple|8|17>>
    <associate|ym-stationary-link|<tuple|7|12>>
    <associate|ym-stationary-loc|<tuple|7|12>>
    <associate|ym-table|<tuple|8|17>>
    <associate|ym-table-field|<tuple|6|8>>
    <associate|ym-table-hierarchy|<tuple|8|17>>
    <associate|ym-table-project|<tuple|6|9>>
    <associate|ym-table-realspin|<tuple|10|20>>
    <associate|ym-table-rotation|<tuple|10|20>>
    <associate|ym-table-rp|<tuple|8|17>>
    <associate|ym-table-stress|<tuple|10|20>>
    <associate|ym-table-stresslaws|<tuple|10|20>>
    <associate|ym-table-tag|<tuple|6|8>>
    <associate|ym-table-union|<tuple|6|9>>
    <associate|ym-tensor-coeff|<tuple|5|7>>
    <associate|ym-tensor-diagonal|<tuple|5|7>>
    <associate|ym-tensor-t|<tuple|5|7>>
    <associate|ym-trace-verse-award|<tuple|11|22>>
    <associate|ym-traceextension-center|<tuple|11|22>>
    <associate|ym-traceextension-stresstrace|<tuple|11|22>>
    <associate|ym-traceextension-theta|<tuple|11|22>>
    <associate|ym-tree-forest|<tuple|7|11>>
    <associate|ym-tree-forest-free|<tuple|7|14>>
    <associate|ym-tree-forest-slice|<tuple|7|14>>
    <associate|ym-ward-disc|<tuple|10|20>>
    <associate|ym-wilson-config|<tuple|7|10>>
    <associate|ym-wilson-energy|<tuple|7|16>>
    <associate|ym-wilson-law|<tuple|7|16>>
    <associate|ym-wilson-moment|<tuple|7|16>>
    <associate|ym-wilson-prior|<tuple|7|14>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Mathematical
      terms> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Why
      a glossary> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|The
      main theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Nickname
      families> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      I: Setting and general tools> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      II: Data of the construction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      III: Ultraviolet construction (renormalization group)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      IV: Infinite volume> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      V: Phases and reconstruction> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      VI: Symmetry: stress tensor and Ward identities>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Part
      VII: Identification as Yang\UMills>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Index>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>