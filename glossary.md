# Glossary of the Lean names

This page translates the nicknames used in OpenAI's Lean 4 formalization of the construction of four-dimensional quantum Yang–Mills theory into ordinary mathematics. It is meant for mathematicians and mathematical physicists who want to read the formalization, or write an exposition of it. It accompanies the [outline of the work items](outline/work-items.md).

Every Lean name is a link to its definition at a fixed commit of [`yang-mills-group/OpenAI-YM-20261028`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464).

**Reading.** *certain* = read from the definition and its uses; *probable* = inferred from the fields and the documentation; *tentative* = partly guessed (where the role is unknown, the entry says "unclear"). An entry marked **main statement** occurs in the statement of the main theorem or in the public files.

**Contents.** [Why a glossary](#why-a-glossary) · [The main theorem](#the-main-theorem) · [Nickname families](#nickname-families) · Parts: [I](#part-i) · [II](#part-ii) · [III](#part-iii) · [IV](#part-iv) · [V](#part-v) · [VI](#part-vi) · [VII](#part-vii) · [Index](#index)

## Why a glossary

The formalization uses arbitrary English words for its objects: `Treasury`, `Jewel`, `Sheet`, `Teller`, `Almanac`, `Solstice`, and so on. Most of them carry no information about the mathematics. The names were evidently chosen to be distinct, not descriptive, so the code cannot be read from its identifiers alone. This glossary gives, for 276 declarations, the mathematical object each name stands for, with the file and line of its definition. It covers the declarations that occur in the main statements, together with the most widely used ones in each part of the proof; it is not exhaustive.

The entries are grouped by the parts of the proof:

| part | name |
|---|---|
| I | Setting |
| II | Data of the construction |
| III | Ultraviolet construction (renormalization group) |
| IV | Infinite volume |
| V | Phases and reconstruction |
| VI | Symmetry: stress tensor and Ward identities |
| VII | Identification as Yang–Mills |
| VIII | Assembly of the main theorem |

Part VIII has no entries of its own; it is the main theorem below. Entries which are general tools used in several parts are placed under Part I. Inside each part, entries which occur in the main statements come first; the others follow, roughly in decreasing order of how many declarations use them.

## The main theorem

The statement is `YangMills.constructed` in [`Construction.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean). In plain mathematics, with the Lean names in brackets:

- Fix a simple compact matrix gauge group G and a number b > 0, a numerical parameter of the block-spin kernel (`KernelChoices.penalty`).
- There is a Wilson family `C`: the whole renormalization-group construction, consisting of lattice spacings a_N, torus periods L_p, couplings β_{N,p}, and the renormalized lattice observables for every label. It is internally consistent (`C.Makes`) and satisfies [`YangMills.WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12): β_{N,p}/log(1/a_N) tends to a positive slope, the observables are continuous and gauge invariant, and each depends on a fixed finite stencil of links.
- For every pair `p` of mesh and volume subsequences (an `Extraction.Order`) there is a refinement `q` of both, and
  - a limit Euclidean theory `S`, the family of all n-point functions of all labels (a `Table`);
  - a record `F` (a `Final`) containing the data fixing the renormalization-group trajectory, the axioms of the limit, the field algebra (derivatives, rotations, stress tensor), the decomposition into phases and the Wightman reconstruction;
  - the same reconstruction for every phase (an `EveryPhase.Almanac`);
  - the data of the operator product expansion (a `Reader`) and of the extraction of contact terms (`Contacts.Devices`);
  - a scaling sequence r_k → 0 for the comparison with the free Maxwell field (`Climb.Scaling`).
- The conclusions are the public properties (the Wilson limit; reconstruction; the operator product expansion; a non-free trace test), the ordered limit [`YM.Extraction.Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32), [`YM.FullVolume.PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25), [`YM.Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58), the independent checks [`YM.Independent.Core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18), the Wightman axioms for the selected phase and for each character (`Headline.Reconstruction`), the separated and nested operator product expansions, the trace exclusions, the extension across contact terms (`Solstice.MultipleLight`, `Thresholds`, `SystemBasis`), and the short-distance comparison with free Maxwell fields (`Pert.FirstExtension`, `Pert.Position.FourMeters`).

**Public dictionary** (from [`HierarchyBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean) and [`WilsonBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean)). The Hilbert space `Hierarchy.H` is the Hilbert space of the reconstructed theory of the selected phase. `Field d` is the quotient label space F_d = Label_d / null. `toLabel` is `Table.pin`. `Character` is the compact space of phases `F.alpha.space.X`, with its measure `mu`. `correlation s` is `Table.useAt (spectator F s)`; for s = none it is the mixed theory S^mix, for s = some ξ the phase S^ξ. `continuation` is the analytic continuation `F.A.waves.F`. `centeredTrace` is `TraceExtension.center F`. For the Wilson family, `period`, `denominator`, `beta` and `insertion` are `C.S.period`, `C.S.denominator`, `C.beta` and `C.seen`.

## Nickname families

The words are arbitrary, but several families of them are systematic. Where a family is described as a pattern, it is a pattern in the code and its docstrings, not a documented convention.

1. **Calendar and economics: the order in which constants are chosen.** The renormalization-group argument needs its constants in a strict order: first the "pre-L" constants (orders, powers, support exponents, widths), then the block sizes L (odd, large), then the "post-L" constants (the smallness exponent θ, entry thresholds, volume shells), then a barrier β̄. The file `Price/Intent.lean` is titled "Calendar issuance API: Orders & constants chosen BEFORE block ratio". Accordingly `Sheet` holds the pre-L constants, `Rolls` the block sizes L_j, `Protection` the exponent θ, `Delays` the deadlines, `Bar` the barrier, `Wait` the windows, and `Paid` says that the schedule has "paid" every cost. `Supply` is the namespace of these. `MapPrices`, `PostCost`, `Worth`, `Teller` (one call of the step estimator: "prices and inputs"), `Funds` (the call is affordable), `Stores`, `Cash`, `bill`, `toll`, `fee`, `price` and `cost` are numerical bounds and their bookkeeping. "Budget", "price" and "cost" always mean a numerical bound or exponent in a polymer norm (for example `SumBudget`, `BudgetPoint`), never anything economic.
2. **Weather and seasons: contact terms.** The namespace `Contacts.Solstice` (`Lights`, `Sunshine`, `MultipleLight`, `Thresholds`, `Backdrop`, `Annulus`, `Run`) is the extension of correlations across coincident points using the operator product expansion. `Devices`, `Detector`, `Prescription` and `Reader` are the fixed coefficient-extraction functionals (the "tomography" of the docstrings).
3. **Rooms and halls: from Euclidean to Hilbert space.** `Chamber` is the Osterwalder–Schrader (GNS) Hilbert space for a time axis; `Spread` and `Slab` are time-slab word operators; `Heat` is the semigroup e^{-sH}; `Contour`, `Waves` and `Surface` are the analytic continuation and the Wightman distributions; `Almanac` (in `EveryPhase`) is the reconstruction data for all phases; `Pantry`, `Pack`, `Docks` and `Stress.*` (in `EveryPhase.Stress`) are the machinery for continuing the Ward identities and the stress tensor.
4. **Tables and labels.** These names are used consistently. A `Register` is a label system with a scale for each degree; a `Token` is a homogeneous reference label; a `Table` is the family of all correlation functions; `Field d` is F_d; a `Tag` is a pair (d, element of F_d); `Union` is the union of all F_d. `Table.Hierarchy` is the Euclidean axioms of the limit theory; it is not the public `YangMills.Hierarchy`, which is the whole package.
5. **Extraction.** `Extraction.Order` is a pair of a mesh subsequence N_j and a volume subsequence p_k; `late` means "for k large, then j large"; `refine` passes to further subsequences; `Ordered` states that the ordered limit holds. This is the subsequential structure of the main theorem.
6. **Mathematics behind plain English words.** `Tree`, `Forest`, `Pines`, `Slice`: tree gauge fixing. `Cells`, `Tiling`, `Interior`, `rootTest`: reflection-positivity cells and chessboard estimates (`rootTest` is |E ∏ᵢ copyᵢ F|^{1/#cells}, the chessboard root). `Marker`: a nilpotent bookkeeping algebra for products of polymers. `Bloch`, `Laurent`, `Circulant`, `Row`, `Momentum`: Fourier analysis of translation-invariant kernels on the periodic lattice. `Exterior`, `TypeFace`, `Body`: lattice differential forms. `Precision`, `PCalc`, `Horizon`, `Bed`, `Floor`: linearization of the renormalization-group step and quadratic-form (Hessian) estimates. `Stationary`: saddle-point analysis. `Pressure`: estimates for one renormalization-group step. `ConnectedActivityE6`: connected-activity (cluster expansion) bounds. `Ac`: bookkeeping of connected words and clusters. `Ward`: sums in the Ward identity. `Climb.Scaling`: the scaling sequence for the free-Maxwell comparison. `Trace*`: the centered trace and the anomaly. `Pert`: the perturbative (one-loop) and free-Maxwell comparison. `Maxwell`, `Wick`: free-field models.
7. **Directory names without meaning.** `Next/`, `Push/`, `Further/`, `Extra/`, `Work/A01`, `RG05` to `RG17`, `UVNext`, `SectorNext`, `MultiNext`, `PhysicalNext`, `AnalyticNext`, `AnalyticBridge`, and the capitalized subfolders are internal task names and carry no mathematical meaning.
8. **Short names which are not nicknames.** `c`, `f` are the coarse and fine torus sides; `N`, `p` are the mesh and volume indices; `m` is the renormalization-group level; `J` is the entry stage or smoothness index of a level; `L` is the block size; `d` is the degree (weight) of a label; β̂ is the renormalized coupling at level m. "Denotational" means a representation as data, not as a quotient. "Junk at coincident points" means that functions are made total by arbitrary values where they are undefined.

About a third of the entries have reading *probable* or *tentative*, mostly in Part III, where the code is a very large set of technical estimate packages (polymer norms, cluster bounds).


<a id="part-i"></a>
## Part I: Setting and general tools

Compact gauge groups, lattices, tensors, Hilbert spaces and similar basic objects used throughout. Entries here define the setting of the construction; the others are general tools used in several parts. (46 entries)

<a id="ym-gauge-simple"></a>
**[`YM.Gauge.Simple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Lie.lean#L179)** · Reading: certain · **main statement**  
Real simple nonabelian Lie algebra (docstring 'Real simplicity with the nonabelian clause').

<a id="yangmills-gaugegroup"></a>
**[`YangMills.GaugeGroup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L25)** · Reading: certain · **main statement**  
A closed matrix subgroup G of U(n+1) together with its Lie algebra g (the matrices X with exp(tX) in G for all t); the gauge group of the theorem.

<a id="yangmills-testfunction"></a>
**[`YangMills.TestFunction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L70)** · Reading: certain · **main statement**  
Complex Schwartz function on R^4.

<a id="yangmills-gaugegroup-core"></a>
**[`YangMills.GaugeGroup.core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L10)** · Reading: certain · **main statement**  
Converts a public GaugeGroup to the internal YM.Gauge.

<a id="yangmills-hilbertspace"></a>
**[`YangMills.HilbertSpace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L79)** · Reading: certain · **main statement**  
Complex Hilbert space packaged with its structure.

<a id="yangmills-gaugegroup-issimple"></a>
**[`YangMills.GaugeGroup.IsSimple`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L39)** · Reading: certain · **main statement**  
The Lie algebra g is nonabelian and has no proper nonzero ideal (real simple), the hypothesis 'simple compact gauge group'.

<a id="ym-lattice-site"></a>
**[`YM.Lattice.Site`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L19)** · Reading: certain  
Site of the periodic 4-torus (Z/n)^4.

<a id="ym-axis"></a>
**[`YM.Axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L18)** · Reading: certain  
The four coordinate directions Fin 4; time is the last (timeAxis).

<a id="ym-lattice-side"></a>
**[`YM.Lattice.Side`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L17)** · Reading: certain  
A positive integer: the number of lattice sites per axis of the periodic torus.

<a id="ym-gauge"></a>
**[`YM.Gauge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L23)** · Reading: certain  
Closed subgroup of the unitary group U(n+1) (the gauge group G in its fixed faithful representation).

<a id="ym-e4"></a>
**[`YM.E4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L24)** · Reading: certain  
Euclidean space R^4 with Euclidean norm.

<a id="ym-lattice-cover"></a>
**[`YM.Lattice.Cover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L20)** · Reading: certain  
Z^4, universal cover of the lattice; used for local stencils independent of the torus size.

<a id="ym-gauge-color"></a>
**[`YM.Gauge.Color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L43)** · Reading: certain  
The Lie algebra g in orthonormal coordinates, as Euclidean space R^{dim g}; 'Color' = adjoint index.

<a id="ym-lattice-support"></a>
**[`YM.Lattice.Support`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L16)** · Reading: certain  
Finite set of lattice sites (the support or footprint of a local observable).

<a id="ym-gauge-colorindex"></a>
**[`YM.Gauge.ColorIndex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L42)** · Reading: certain  
Index set {1..dim g} of a basis of g.

<a id="ym-points"></a>
**[`YM.Points`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L56)** · Reading: certain  
n-tuples of points of R^4 (configuration space for n-point functions).

<a id="ym-lattice-separation"></a>
**[`YM.Lattice.separation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L81)** · Reading: certain  
Sup-norm distance on the torus ('Canonical lifted max-distance').

<a id="ym-gauge-el"></a>
**[`YM.Gauge.El`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L78)** · Reading: certain  
The group G as the link-variable space ('Physical link state space').

<a id="ym-lattice-covernumber"></a>
**[`YM.Lattice.coverNumber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L69)** · Reading: probable  
Minimum number of M-balls with connected union that cover a support; measures a support's size in the cluster-expansion weights.

<a id="ym-lattice-plaqaxes"></a>
**[`YM.Lattice.PlaqAxes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L13)** · Reading: certain  
Axis pairs i<j labeling plaquette orientations.

<a id="ym-lattice-edge"></a>
**[`YM.Lattice.Edge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L21)** · Reading: certain  
A link: site together with a positive direction.

<a id="ym-exterior-typeface"></a>
**[`YM.Exterior.TypeFace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Initial.lean#L13)** · Reading: probable  
A blade (increasing set of r axes): basis of r-forms on R^4; used for curvature components (2-forms) and derivatives.

<a id="ym-gauge-adjoint"></a>
**[`YM.Gauge.adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L114)** · Reading: certain  
Adjoint representation Ad(u) on g in coordinates.

<a id="ym-gauge-lieexp"></a>
**[`YM.Gauge.lieExp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L160)** · Reading: certain  
Exponential map g -> G ('Actual exponential into the gauge group').

<a id="ym-lattice-per"></a>
**[`YM.Lattice.Per`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Site.lean#L18)** · Reading: certain  
Z/nZ, one periodic axis of the lattice.

<a id="ym-exterior-body"></a>
**[`YM.Exterior.Body`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Initial.lean#L14)** · Reading: probable  
Site-indexed blades: r-cochains on the lattice (r=1 link fields, r=2 plaquette fields).

<a id="ym-laurent-phase"></a>
**[`YM.Laurent.Phase`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L26)** · Reading: probable  
Complex momentum vector.

<a id="ym-gauge-mat"></a>
**[`YM.Gauge.Mat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L92)** · Reading: certain  
The matrix of a group element in M_{n+1}(C).

<a id="ym-analysis-d"></a>
**[`YM.Analysis.D`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L22)** · Reading: certain  
Directional derivative fderiv in direction u.

<a id="ym-tensor-diagonal"></a>
**[`YM.Tensor.diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L34)** · Reading: certain  
A -> (x |-> A(x,...,x)): homogeneous polynomial from a symmetric multilinear map.

<a id="ym-tensor-coeff"></a>
**[`YM.Tensor.coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Homogeneous.lean#L65)** · Reading: certain  
Taylor coefficient (1/j!) D^j f(x).

<a id="ym-lattice-halo"></a>
**[`YM.Lattice.halo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Support.lean#L43)** · Reading: certain  
The set of sites within distance M of a given support.

<a id="ym-tensor-t"></a>
**[`YM.Tensor.T`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Symmetric.lean#L22)** · Reading: certain  
Continuous j-multilinear maps E^j -> F.

<a id="ym-lattice-gaugeinvariant"></a>
**[`YM.Lattice.GaugeInvariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L135)** · Reading: certain  
Function of links invariant under gauge transformations U_e -> t_x U_e t_y^{-1}.

<a id="ym-lattice-walk"></a>
**[`YM.Lattice.Walk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L27)** · Reading: certain  
A path of unit steps (lattice word) for building parallel transports.

<a id="ym-gauge-curvature"></a>
**[`YM.Gauge.curvature`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L173)** · Reading: certain  
Skew-Hermitian part (u - u^{-1})/2 of a link/plaquette value projected to g; the leading lattice curvature of a small loop.

<a id="ym-exterior-d"></a>
**[`YM.Exterior.d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Exterior/Complex.lean#L13)** · Reading: probable  
Lattice exterior derivative (coboundary).

<a id="ym-lattice-step-vec"></a>
**[`YM.Lattice.Step.vec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L31)** · Reading: certain  
The lattice vector of a step.

<a id="ym-lattice-step"></a>
**[`YM.Lattice.Step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L23)** · Reading: certain  
One unit step in a direction, forward or backward.

<a id="ym-lattice-face"></a>
**[`YM.Lattice.Face`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L14)** · Reading: certain  
An elementary plaquette: base point and an axis pair i<j.

<a id="ym-laurent-mode"></a>
**[`YM.Laurent.mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L39)** · Reading: certain  
Plane wave exp(i p.x).

<a id="ym-lattice-localon"></a>
**[`YM.Lattice.LocalOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L196)** · Reading: certain  
Function of links that depends only on links inside a given site set.

<a id="ym-laurent-strip"></a>
**[`YM.Laurent.strip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L43)** · Reading: probable  
Strip of complex momenta with |Im p_i|<eta: where exponential decay of kernels gives analyticity.

<a id="ym-lattice-agrees"></a>
**[`YM.Lattice.Agrees`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Path.lean#L192)** · Reading: certain  
Two configurations coincide on all links inside a region.

<a id="ym-gauge-probhaar"></a>
**[`YM.Gauge.probHaar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/MatrixGroup.lean#L187)** · Reading: certain  
Normalized Haar probability measure on G.

<a id="ym-gauge-casimir"></a>
**[`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180)** · Reading: certain  
Adjoint Casimir constant C_A of g from the trace of ad on colors.


<a id="part-ii"></a>
## Part II: Data of the construction

Label systems: the formal observables of the theory, their degrees, derivatives and quotients, and the tables of correlation functions built on them. (29 entries)

<a id="ym-family"></a>
**[`YM.Family`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L24)** · Reading: certain · **main statement**  
The constructed Wilson family: RG history, holonomy/ODE data, label frames, local sections (lattice representatives of labels), reference levels, and transfers of labels through the RG; the object C in the main theorem.

<a id="ym-family-makes"></a>
**[`YM.Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44)** · Reading: certain · **main statement**  
Consistency of a Family: the selected Wilson trajectory exists, sections are sound, stages cover all degrees, stencils fit in the torus, 'priced' sup bounds hold, and the recipe for the trajectory is consistent with the family.

<a id="yangmills-hierarchy-tag"></a>
**[`YangMills.Hierarchy.Tag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L55)** · Reading: certain · **main statement**  
A homogeneous label: a degree d and an element of the quotient label space F_d.

<a id="yangmills-fieldlabels"></a>
**[`YangMills.FieldLabels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L96)** · Reading: certain · **main statement**  
Complex vector space packaged with its structure of field labels.

<a id="yangmills-wilsonfamily-separated"></a>
**[`YangMills.WilsonFamily.separated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L59)** · Reading: certain · **main statement**  
The open set of n-point configurations with pairwise distinct points (no collisions).

<a id="ym-family-book"></a>
**[`YM.Family.book`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/LatticeFamily.lean#L20)** · Reading: certain  
The Register of the family: label frames with the scalar normalization a_{ref d}^d per degree.

<a id="ym-table-field"></a>
**[`YM.Table.Field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74)** · Reading: certain  
Quotient label space F_d = Label_d / null (labels with identically vanishing correlations).

<a id="ym-family-label"></a>
**[`YM.Family.label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L36)** · Reading: certain  
Coefficient vectors of degree-d labels in the chosen basis.

<a id="ym-table-tag"></a>
**[`YM.Table.Tag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66)** · Reading: certain  
Pair (degree, element of F_d).

<a id="ym-labels-frame-coeff"></a>
**[`YM.Labels.Frame.Coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L18)** · Reading: certain  
Coordinate vectors of a label in a frame.

<a id="ym-conf"></a>
**[`YM.conf`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Configurations.lean#L63)** · Reading: certain  
Subset of Points n with pairwise distinct points (no coincidences).

<a id="ym-register-token"></a>
**[`YM.Register.Token`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L88)** · Reading: certain  
Reference label of degree d.

<a id="ym-source-hol"></a>
**[`YM.Source.Hol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L55)** · Reading: certain  
Chosen solutions of the parallel transport ODE d/dt h = A h along lattice links for the Taylor-jet connection (holonomy flow).

<a id="ym-labels-frame-index"></a>
**[`YM.Labels.Frame.Index`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Reference.lean#L17)** · Reading: certain  
Index set of a frame basis.

<a id="ym-labels-frames"></a>
**[`YM.Labels.frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107)** · Reading: certain  
A fixed choice of coherent frames.

<a id="ym-labels-frame"></a>
**[`YM.Labels.Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50)** · Reading: certain  
A basis of the label space Label_d of real (conjugation-invariant) graded elements starting with the unit.

<a id="ym-source-sectiondata"></a>
**[`YM.Source.SectionData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Local.lean#L103)** · Reading: certain  
Lattice representative of a label frame: a finite stencil and a linear map from label coefficients to polynomials in link matrix entries (the gauge-invariant local lattice polynomials L_v).

<a id="ym-labels-label"></a>
**[`YM.Labels.Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112)** · Reading: certain  
Space of gauge-invariant local field labels of weight at most d (polynomials in curvature and covariant derivatives modulo Bianchi/rotation structure).

<a id="ym-source-coefficient"></a>
**[`YM.Source.Coefficient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L26)** · Reading: probable  
Representation of an observable through the RG: regular and forced coefficient functions with supports.

<a id="ym-labels-taylor"></a>
**[`YM.Labels.Taylor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Jet.lean#L39)** · Reading: probable  
Homogeneous degree-j Taylor part of a radial jet.

<a id="ym-labels-jet"></a>
**[`YM.Labels.Jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L28)** · Reading: probable  
Taylor jets of the connection/curvature at a point (tower of homogeneous degree-j data); labels are polynomials in jets.

<a id="ym-table-project"></a>
**[`YM.Table.project`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L75)** · Reading: certain  
Quotient map to F_d.

<a id="ym-source-coefficient-format"></a>
**[`YM.Source.Coefficient.Format`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52)** · Reading: tentative  
Regularity/projection requirements on a Coefficient.

<a id="ym-table-union"></a>
**[`YM.Table.Union`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Union.lean#L24)** · Reading: certain  
The union of all F_d inside functions of exterior words.

<a id="ym-register"></a>
**[`YM.Register`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L17)** · Reading: certain  
Label frames with a positive length scale per degree (normalization a_{ref d}^d).

<a id="ym-register-ref"></a>
**[`YM.Register.Ref`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Register.lean#L26)** · Reading: certain  
Coefficients of degree-d labels.

<a id="ym-family-o"></a>
**[`YM.Family.O`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L42)** · Reading: certain  
Renormalized lattice observable I_{N,p}(v, .) attached to a label coefficient v at a lattice site.

<a id="ym-labels-frames-2"></a>
**[`YM.Labels.Frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L102)** · Reading: certain  
Coherent system of frames for all degrees d.

<a id="ym-source-transferdata"></a>
**[`YM.Source.TransferData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L73)** · Reading: certain  
Family of transfers carrying a label coefficient through successive RG steps (renormalization coefficients c_j(N,p;v)).


<a id="part-iii"></a>
## Part III: Ultraviolet construction (renormalization group)

The renormalization-group construction of the lattice theories with fixed observables as the mesh tends to zero. Most entries here are technical estimate packages; for these the entry says what the fields are and which step they belong to, not the estimate itself. (124 entries)

<a id="ym-spec-calibrated"></a>
**[`YM.Spec.Calibrated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L58)** · Reading: probable · **main statement**  
There exist issued constants, price lists and a Directed recipe whose recursion generates exactly the family's trajectory C.path.

<a id="ym-extraction-order-ordered"></a>
**[`YM.Extraction.Order.Ordered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32)** · Reading: certain · **main statement**  
Ordered-limit claim: the smeared lattice correlations tend to the integral of the table read.

<a id="ym-fullvolume-positionsuv"></a>
**[`YM.FullVolume.PositionsUV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Profiles.lean#L25)** · Reading: probable · **main statement**  
Pointwise UV limit in positions: kernels smooth on non-collision set, smeared lattice sums converge along the mesh sequence and cluster for all derivative words.

<a id="yangmills-wilsonfamily"></a>
**[`YangMills.wilsonFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/WilsonBridge.lean#L20)** · Reading: certain · **main statement**  
Bridge: reads an internal Family as a public WilsonFamily (period = C.S.period, denominator = C.S.denominator, beta = C.beta, Token = C.book.Token, insertion = C.seen).

<a id="yangmills-configuration"></a>
**[`YangMills.Configuration`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L12)** · Reading: certain · **main statement**  
A link configuration U: (site, direction) -> G on the periodic lattice.

<a id="yangmills-wilsonfamily-2"></a>
**[`YangMills.WilsonFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L35)** · Reading: certain · **main statement**  
The choice of Wilson lattice gauge theories: torus periods L_p, inverse mesh sizes 1/a_N, bare couplings beta_{N,p}, Haar measure, a type of field labels (Token) and for each label a lattice observable (insertion) at each lattice site.

<a id="yangmills-wilsonregularity"></a>
**[`YangMills.WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12)** · Reading: certain · **main statement**  
Requirements on the lattice observables: beta_{N,p}/log(1/a_N) tends to a positive slope (running coupling), insertions are continuous, gauge invariant, and depend on a fixed finite stencil of links.

<a id="yangmills-wilsonfamily-converges"></a>
**[`YangMills.WilsonFamily.Converges`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L85)** · Reading: certain · **main statement**  
Iterated limit: for each volume p the N->infty limit of C_{N,p} exists, then the limit along a given subsequence of volumes tends to the integral of the test function against the (unselected) kernel; combines Theorems 4.1 and 5.1.

<a id="yangmills-wilsonfamily-mesh"></a>
**[`YangMills.WilsonFamily.mesh`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L50)** · Reading: certain · **main statement**  
Lattice spacing a_N = 1/denominator(N).

<a id="yangmills-wilsonlaw"></a>
**[`YangMills.wilsonLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L29)** · Reading: certain · **main statement**  
The Wilson Gibbs measure Z^{-1} exp(-beta * energy) times product Haar measure on link variables.

<a id="yangmills-wilsonfamily-finitemoment"></a>
**[`YangMills.WilsonFamily.finiteMoment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L54)** · Reading: certain · **main statement**  
Lattice correlation E_{mu_{N,p}}[prod_i I_{N,p}(v_i, x_i; U)] of renormalized observables at lattice points.

<a id="yangmills-wilsonfamily-smear"></a>
**[`YangMills.WilsonFamily.smear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L79)** · Reading: certain · **main statement**  
Smeared lattice correlation C_{N,p}(v; f) = a_N^{4n} sum_x f(a_N x) E[prod I(v_j, x_j)].

<a id="yangmills-plaquette"></a>
**[`YangMills.plaquette`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L20)** · Reading: certain · **main statement**  
Ordered product of the four link variables around an elementary square.

<a id="yangmills-wilsonenergy"></a>
**[`YangMills.wilsonEnergy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L25)** · Reading: certain · **main statement**  
Wilson plaquette action sum_p (1 - Re Tr U_p / m).

<a id="yangmills-wilsonfamily-suitable"></a>
**[`YangMills.WilsonFamily.suitable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicWilson.lean#L75)** · Reading: certain · **main statement**  
Test function supported strictly inside the fundamental box (-L_p/2, L_p/2)^4, so that periodic wrapping is irrelevant.

<a id="ym-wilson-config"></a>
**[`YM.Wilson.Config`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L24)** · Reading: certain  
Link configurations of the periodic lattice with values in G.

<a id="ym-rg-stepdata-ratio"></a>
**[`YM.RG.StepData.ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L30)** · Reading: certain  
The Lattice.Ratio of a step (block of side L).

<a id="ym-pressure-radiusb"></a>
**[`YM.Pressure.radiusB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L22)** · Reading: probable  
Cluster radius ceil((log x)^2).

<a id="ym-rg-stepdata"></a>
**[`YM.RG.StepData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L22)** · Reading: certain  
Data of one block-spin RG step from a fine torus (side f) to a coarse torus (side c): a Patch, kernel parameters, and f = c * L.

<a id="ym-rg-directions"></a>
**[`YM.RG.Directions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L115)** · Reading: certain  
Lie-algebra increments on each link.

<a id="ym-rg-stepdata-choices"></a>
**[`YM.RG.StepData.Choices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L34)** · Reading: probable  
Choice of frame tags at coarse sites and of bond path tags: the finite data used to average over symmetry-breaking gauge-fixing choices.

<a id="ym-rg-budgetpoint"></a>
**[`YM.RG.BudgetPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L125)** · Reading: certain  
Parameters of the polymer norms: smoothness order, power, support exponent, cover size B, small-field threshold.

<a id="ym-tree-forest"></a>
**[`YM.Tree.Forest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Pines.lean#L24)** · Reading: certain  
A choice of spanning forest on the fine torus rooted at coarse block centers (tree gauge) with heights <=4L.

<a id="ym-pressure-stores"></a>
**[`YM.Pressure.Stores`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L34)** · Reading: tentative  
Finite collections of cost cells, bonds and flagged sites whose neighborhood carries a polymer cluster.

<a id="ym-family-s"></a>
**[`YM.Family.S`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L34)** · Reading: certain  
Spacing schedule of the family (C.path.levels.S).

<a id="ym-bloch-momentum"></a>
**[`YM.Bloch.Momentum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Mesh.lean#L15)** · Reading: certain  
Complex momentum phases (one per axis) for Fourier analysis on the lattice.

<a id="ym-rg-rep"></a>
**[`YM.RG.Rep`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L165)** · Reading: certain  
Representation of the effective density on a torus: path part, clip, polymer activities, budget point, coupling beta and vacuum energy v; evaluates as exp(exponent) * gas.

<a id="ym-lattice-ratio-parent"></a>
**[`YM.Lattice.Ratio.parent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L117)** · Reading: certain  
The coarse block containing a fine site ('projected ancestor').

<a id="ym-rg-patch"></a>
**[`YM.RG.Patch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L29)** · Reading: certain  
The local block geometry: block side L (odd, >=3) and a smoothness/order parameter J>=4.

<a id="ym-rg-levels-budget"></a>
**[`YM.RG.Levels.budget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L141)** · Reading: certain  
The budget point used at level m.

<a id="ym-rg-patch-branches"></a>
**[`YM.RG.Patch.Branches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L182)** · Reading: probable  
Well-posedness hypotheses of the gauge fixing and predictor: unique minimizing frame, unique best predictor, nonempty eligible axial choices.

<a id="ym-family-side"></a>
**[`YM.Family.side`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L35)** · Reading: certain  
Torus side at (N,p).

<a id="ym-pressure-tube"></a>
**[`YM.Pressure.Tube`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Rows.lean#L94)** · Reading: tentative  
A step with its upper and lower path data and clips (the 'pipe' through which an estimate is passed).

<a id="ym-rg-sumbudget"></a>
**[`YM.RG.SumBudget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L59)** · Reading: certain  
A polymer-norm summability bound: nonnegative summable weights with total at most c ('Absolute mass certificate').

<a id="ym-rg-healthy"></a>
**[`YM.RG.Healthy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L41)** · Reading: certain  
A configuration is small-field on a support: no site of the support is flagged.

<a id="ym-rg-levels"></a>
**[`YM.RG.Levels`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L131)** · Reading: certain  
A schedule together with Fits and block control for every step.

<a id="ym-pressure-temp"></a>
**[`YM.Pressure.temp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L25)** · Reading: probable  
Small-field threshold function (sqrt x)^{-1} exp((log log x)^2).

<a id="ym-stationary-loc"></a>
**[`YM.Stationary.Loc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L400)** · Reading: tentative  
Local coordinate: blade type with color index.

<a id="ym-rg-calendar-hatbeta"></a>
**[`YM.RG.Calendar.hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)** · Reading: certain  
The renormalized coupling at level m: hat-beta_m = bar + slope * log(scale_m).

<a id="ym-rg-pathdata"></a>
**[`YM.RG.PathData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L150)** · Reading: probable  
The explicit leading (marginal) part of the effective action: row data and loop, cubic and quartic atoms along lattice paths.

<a id="ym-rg-clip"></a>
**[`YM.RG.Clip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L139)** · Reading: probable  
Clipping parameters (direct, linear, relaxation) cutting off large field values in the path terms.

<a id="ym-rg-flags"></a>
**[`YM.RG.flags`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L34)** · Reading: certain  
Sites at which some touching plaquette is far from identity (chord above a threshold): the large-field set.

<a id="ym-rg-increment"></a>
**[`YM.RG.increment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L117)** · Reading: certain  
Left translation of links by exp of Lie algebra increments.

<a id="ym-rg-calendar-op"></a>
**[`YM.RG.Calendar.op`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L88)** · Reading: certain  
The step operator StepData from level m to m+1 at period p.

<a id="ym-lattice-ratio-embed"></a>
**[`YM.Lattice.Ratio.embed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L29)** · Reading: certain  
Inclusion of coarse sites into fine sites (block centers).

<a id="ym-stationary-link"></a>
**[`YM.Stationary.Link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Lift/Pathways.lean#L504)** · Reading: tentative  
Link-valued real field with plaquette-curl evaluation; coordinates for the stationary (saddle-point) analysis.

<a id="ym-precision-chartratio"></a>
**[`YM.Precision.ChartRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L23)** · Reading: probable  
Jacobian density of the exponential chart g -> G with scale and radius.

<a id="ym-bloch-row-acts"></a>
**[`YM.Bloch.Row.acts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L33)** · Reading: certain  
The matrix of a translation-invariant kernel on the periodic lattice: sum over displacements.

<a id="ym-bloch-row"></a>
**[`YM.Bloch.Row`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L22)** · Reading: probable  
A kernel R(alpha,beta,x) over lattice displacements x; a translation-invariant block (circulant) operator with entries indexed by types alpha, beta.

<a id="ym-pressure-teller"></a>
**[`YM.Pressure.Teller`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L89)** · Reading: probable  
Interface of one request to the step estimator: kernel choice, two adjacent stages, step index, width and constant ('One call, prices & inputs').

<a id="ym-pressure-betaf"></a>
**[`YM.Pressure.betaF`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L23)** · Reading: probable  
Effective coupling at scale L: x + slope*log L.

<a id="ym-rg-budgetpoint-regular"></a>
**[`YM.RG.BudgetPoint.Regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L154)** · Reading: certain  
A function is regular at a budget point: local on its support, Borel, gauge invariant, smooth with the required derivatives in the small-field region.

<a id="ym-marker-poly"></a>
**[`YM.Marker.Poly`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L40)** · Reading: probable  
Finite nilpotent marker algebra: commuting square-zero markers used to bookkeep which polymers appear in a product (inclusion-exclusion bookkeeping).

<a id="ym-pressure-fiery"></a>
**[`YM.Pressure.fiery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L26)** · Reading: tentative  
temp(betaF G x L): the threshold at the coarse coupling.

<a id="ym-pert-bulk-market"></a>
**[`YM.Pert.Bulk.Market`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Bulk/Atlas.lean#L24)** · Reading: tentative  
Pair (lattice cover point, type): the index set for kernels in bulk estimates.

<a id="ym-marker-census-mode"></a>
**[`YM.Marker.Census.Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Marker/Console.lean#L30)** · Reading: tentative  
Index of a marker.

<a id="ym-rg-budgetpoint-supbounds"></a>
**[`YM.RG.BudgetPoint.supBounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L164)** · Reading: certain  
Sup bound of left derivatives of order up to p.order in the small-field region.

<a id="ym-precision-bed"></a>
**[`YM.Precision.Bed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L35)** · Reading: tentative  
A Fourier row of diagonal, dual, metric, inverse and square-root matrices for the quadratic form of the step.

<a id="ym-rg-kernelchoices"></a>
**[`YM.RG.KernelChoices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Patch.lean#L37)** · Reading: certain  
Positive numerical parameters of the block-spin kernel (penalty, frame cut, predictor cut, axial factor); the 'penalty' is the one fixed in the main theorem.

<a id="ym-next-sectorchange-gaussian-vec"></a>
**[`YM.Next.SectorChange.Gaussian.Vec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Gaussian.lean#L24)** · Reading: tentative  
Real vectors indexed by a finite type (coordinates for Gaussian integrals).

<a id="ym-precision-represent"></a>
**[`YM.Precision.represent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L58)** · Reading: probable  
Lie-algebra link increments to a lattice configuration, exp increments times the identity configuration.

<a id="ym-lattice-facevalue"></a>
**[`YM.Lattice.faceValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Faces.lean#L47)** · Reading: certain  
Plaquette holonomy around a Face.

<a id="ym-precision-mapprices"></a>
**[`YM.Precision.MapPrices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L123)** · Reading: probable  
Constants alpha, Omega, eta per index fixed after the sheet (price list for the first-derivative map estimates).

<a id="ym-push-sectormeasure-chi"></a>
**[`YM.Push.SectorMeasure.Chi`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/SECTOR_MEASURE/Profile.lean#L85)** · Reading: probable  
Smooth cutoff function chi: R->[0,1] equal to 1 on y<=1 and 0 on y>=4 (partition of unity between small and large field).

<a id="ym-rg-leftderivs"></a>
**[`YM.RG.leftDerivs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L120)** · Reading: certain  
Iterated directional derivatives of a function of links in left-invariant directions.

<a id="ym-precision-localratio"></a>
**[`YM.Precision.LocalRatio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L28)** · Reading: probable  
Conditions making ChartRatio a genuine local chart: Haar measure equals chart pushforward on the ball.

<a id="ym-rg-stepdata-prediction"></a>
**[`YM.RG.StepData.prediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L44)** · Reading: probable  
The block-spin predictor: coarse link variable obtained from the fine configuration and the gauge-fixing/frame choices.

<a id="ym-connectedactivitye6-molecule"></a>
**[`YM.ConnectedActivityE6.Molecule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L29)** · Reading: tentative  
Finite sets of letters ('molecule') forming one cluster in a connected-activity (cluster expansion) estimate.

<a id="ym-next-free-whole"></a>
**[`YM.Next.Free.Whole`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Stock.lean#L71)** · Reading: tentative  
A row-space kernel with uniform strip decay for some width.

<a id="ym-rg-masked"></a>
**[`YM.RG.masked`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L70)** · Reading: certain  
Indicator cutoff of a function to small-field configurations.

<a id="ym-pressure-teller-funds"></a>
**[`YM.Pressure.Teller.Funds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pressure/Seeds.lean#L101)** · Reading: tentative  
The requested estimate is deliverable: the step's data satisfy the Teller's parameters and bounds for up and down path data.

<a id="ym-tree-forest-free"></a>
**[`YM.Tree.Forest.Free`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L18)** · Reading: certain  
Non-tree links: the free variables after tree-gauge fixing.

<a id="ym-rg-supply-delays"></a>
**[`YM.RG.Supply.Delays`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L115)** · Reading: certain  
Entry thresholds chosen after protection: minimal beta and scale for each stage, plus volume shell counts and growth.

<a id="ym-ac-hit"></a>
**[`YM.Ac.Hit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Tree.lean#L12)** · Reading: tentative  
Weighted covering condition: at each site the weights of sets containing it have small total.

<a id="ym-next-sectorchange-prices"></a>
**[`YM.Next.SectorChange.Prices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SectorNext/GAUSSIAN_SECTOR_CHANGE/Counting.lean#L44)** · Reading: tentative  
Color-indexed real arrays (log variables) for the Gaussian sector change.

<a id="ym-family-beta"></a>
**[`YM.Family.beta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38)** · Reading: certain  
Bare coupling beta_{N,p} = path.beta N p N.

<a id="ym-precision-replica"></a>
**[`YM.Precision.replica`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Chart.lean#L35)** · Reading: probable  
Copy of a coarse configuration to the fine lattice (identity inside blocks, coarse value on block-crossing links).

<a id="ym-rg-budgetpoint-mass"></a>
**[`YM.RG.BudgetPoint.mass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Masks.lean#L144)** · Reading: probable  
Polymer weight: exp(supportExponent * coverNumber(support)) times a constant.

<a id="ym-wilson-prior"></a>
**[`YM.Wilson.prior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L55)** · Reading: certain  
Product Haar probability measure on all links.

<a id="ym-rg-rep-eval"></a>
**[`YM.RG.Rep.eval`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L179)** · Reading: certain  
The density it represents, exp(exponent U) times the polymer gas.

<a id="ym-rg08-forms-tape"></a>
**[`YM.RG08.Forms.Tape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Forms/Ground.lean#L17)** · Reading: tentative  
Tuple of n indices (coordinate tape); Flake is a real function of tapes (a multilinear coefficient array).

<a id="ym-rg-envelope"></a>
**[`YM.RG.Envelope`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Bounded.lean#L13)** · Reading: tentative  
Measurable function with a uniform bound.

<a id="ym-tree-forest-slice"></a>
**[`YM.Tree.Forest.Slice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Tree/Cut.lean#L19)** · Reading: certain  
A configuration of the free links (tree gauge slice).

<a id="ym-rg-slot"></a>
**[`YM.RG.Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L38)** · Reading: probable  
One based transported curvature slot: a path with a plaquette.

<a id="ym-connectedactivitye6-coat"></a>
**[`YM.ConnectedActivityE6.Coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Coat.lean#L49)** · Reading: tentative  
Sector data for a step estimate: fixed radius, chart, active sites, stencil.

<a id="ym-connectedactivitye6-rate"></a>
**[`YM.ConnectedActivityE6.Rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Numerics.lean#L22)** · Reading: probable  
Growth-rate bound |w(x)| <= betaF^v for all v>a eventually (beta-hat^{o(1)} losses).

<a id="ym-rg-atom"></a>
**[`YM.RG.Atom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/PathActions.lean#L84)** · Reading: probable  
A k-leg coefficient term: k transported curvature slots with a color coefficient tensor.

<a id="ym-rg-supply-rolls"></a>
**[`YM.RG.Supply.Rolls`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L50)** · Reading: certain  
The sequence of odd block sizes L_j chosen large enough to absorb all pre-L constants (growing, satisfying Large).

<a id="ym-rg-supply-sheet"></a>
**[`YM.RG.Supply.Sheet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L26)** · Reading: certain  
Numerical constants and kernel data fixed in advance of any block ratio: the sequence of stage parameters (monotone orders, powers, support exponents), the first active level and volume floors.

<a id="ym-lattice-ratio"></a>
**[`YM.Lattice.Ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Subdivision.lean#L22)** · Reading: certain  
A subdivision of a coarse torus of side c into a fine torus of side f = c * count (the block ratio).

<a id="ym-rg-stepdata-push"></a>
**[`YM.RG.StepData.push`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Block.lean#L77)** · Reading: certain  
Pushforward of a fine-lattice function F to the coarse lattice by integrating against the step kernel density: V |-> integral of density_beta(U,V) F(U) dprior(U).

<a id="ym-rg-stage"></a>
**[`YM.RG.Stage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L45)** · Reading: certain  
Numerical bounds used at one smoothing stage: clip parameters, regularity order, power, support exponent, width, path number, drift, column bound.

<a id="ym-connectedactivitye6-cash"></a>
**[`YM.ConnectedActivityE6.Cash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/AnalyticNext/CONNECTED_ACTIVITY_JETS_E6/Batch.lean#L82)** · Reading: tentative  
Package of numeric bounds (alarms, laws, invoices) delivered by a connected-activity estimate.

<a id="ym-cells-interior"></a>
**[`YM.Cells.Interior`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Cut.lean#L109)** · Reading: probable  
Observable that is gauge invariant, Borel, local in the cell interior, and bounded.

<a id="ym-next-rank-perch-bill"></a>
**[`YM.Next.Rank.Perch.bill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/RANK/Reign.lean#L25)** · Reading: tentative  
Price weight exp(a * (log log s)^2).

<a id="ym-rg-supply-paid"></a>
**[`YM.RG.Supply.Paid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L145)** · Reading: probable  
Permanent record that a Levels trajectory actually meets all issued requirements (the schedule has 'paid' its costs).

<a id="ym-rg-supply-wait"></a>
**[`YM.RG.Supply.Wait`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L134)** · Reading: probable  
Window lengths, sublinear in the scale, during which a stage stays in force; and the minimal physical length.

<a id="ym-precision-horizon"></a>
**[`YM.Precision.Horizon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L119)** · Reading: tentative  
Per-(N,m) families of matrix beds and tower estimates used in the first-derivative (linearized RG) analysis.

<a id="ym-ac-spark"></a>
**[`YM.Ac.Spark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ac/Nodes.lean#L49)** · Reading: tentative  
A nonempty connected set of letters (a connected cluster).

<a id="ym-next-free-flight"></a>
**[`YM.Next.Free.Flight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/FREE_KERNELS/Signal.lean#L22)** · Reading: tentative  
One hop between stages j and t of a block of size L (orientation data).

<a id="ym-rg-rep-lawful"></a>
**[`YM.RG.Rep.Lawful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L181)** · Reading: certain  
Estimate package for a representation: path part bounded and activities valid (a bound on the irrelevant terms).

<a id="ym-rg-supply-protection"></a>
**[`YM.RG.Supply.Protection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L88)** · Reading: certain  
Smallness exponent theta_j (decreasing, <= 1/j) chosen after L to protect the post-L powers.

<a id="ym-rg-activities"></a>
**[`YM.RG.Activities`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L62)** · Reading: certain  
The polymer expansion data: regular and forced activities (functions of links supported on addresses/clusters) with their gas.

<a id="ym-wilson-moment"></a>
**[`YM.Wilson.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L99)** · Reading: certain  
Expectation of a function of links under the Wilson law.

<a id="ym-gauge-slopeconstant"></a>
**[`YM.Gauge.slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)** · Reading: certain  
11 C_A/(24 pi^2) = 2 b0: the slope of beta_{N,p} against log(1/a_N) (one-loop asymptotic freedom).

<a id="ym-schedule"></a>
**[`YM.Schedule`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L28)** · Reading: certain  
Lattice spacing and period schedule: block sizes b_m (odd, >=3) so that spacing a_{m+1} = a_m / b_m, and strictly increasing periods (4 divides each).

<a id="ym-schedule-a"></a>
**[`YM.Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99)** · Reading: certain  
Lattice spacing at RG level m, a_m = 1/denominator(m).

<a id="ym-rg-supply-bar"></a>
**[`YM.RG.Supply.Bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L123)** · Reading: certain  
A barrier value bar>1 above which all smallness conditions hold ('Barrier for smallness').

<a id="ym-bid-worth"></a>
**[`YM.Bid.Worth`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L29)** · Reading: tentative  
A monotone sequence K_i>=1 ('prices'). *Role unclear.*

<a id="ym-precision-floor"></a>
**[`YM.Precision.Floor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PREC/Stacks.lean#L61)** · Reading: tentative  
Uniform ellipticity bounds eta I <= H <= A I for the quadratic form and its roots.

<a id="ym-rg-activities-moves"></a>
**[`YM.RG.Activities.Moves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/Activities.lean#L87)** · Reading: probable  
How a signed lattice symmetry (and translation) permutes the activities.

<a id="ym-rg-rep-exponent"></a>
**[`YM.RG.Rep.exponent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L176)** · Reading: certain  
Exponent v*|sites| - (quadratic and path terms in beta) - additive activities.

<a id="ym-precision-postcost"></a>
**[`YM.Precision.PostCost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L81)** · Reading: probable  
Post-L cost constants eta, Gamma, c, g per stage, chosen after the block sizes.

<a id="ym-input-directed"></a>
**[`YM.Input.Directed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L26)** · Reading: probable  
A Levels trajectory satisfying all issued constraints together with a recipe: the RG trajectory from a stationary solution with its linear data.

<a id="ym-rg-history"></a>
**[`YM.RG.History`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L204)** · Reading: certain  
The entire RG trajectory: levels plus a representation Rep for every (N, p, m), with beta^{N,p}_m the running couplings; the selected Wilson theory's effective actions.

<a id="ym-cells-tiling"></a>
**[`YM.Cells.Tiling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L19)** · Reading: probable  
A tiling of the torus into cells by seams with an even number per axis; used for reflection-positivity cell estimates.

<a id="ym-wilson-energy"></a>
**[`YM.Wilson.energy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L29)** · Reading: certain  
Sum over plaquettes of price(faceValue) = 1 - Re Tr U_p / m up to normalization: the Wilson action.

<a id="ym-wilson-law"></a>
**[`YM.Wilson.law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Wilson/Law.lean#L87)** · Reading: certain  
The normalized Wilson measure at inverse coupling beta ('physical Wilson law').

<a id="ym-input-directed-move"></a>
**[`YM.Input.Directed.Move`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L49)** · Reading: tentative  
One RG step of the explicit recursion is realized (coupling reset beta_m - beta_{m+1} within 1 of the one-loop shift alpha).

<a id="ym-rg-calendar"></a>
**[`YM.RG.Calendar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L64)** · Reading: certain  
The full RG schedule: spacing schedule, kernel, barrier, stage parameters per level, block factors, theta, entry stages J(m).

<a id="ym-extraction-order-ordered-reads"></a>
**[`YM.Extraction.Order.Ordered.reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Limits.lean#L32)** · Reading: probable  
The field of Ordered: for every label list and separated test function the iterated limit equals the table integrated against the test function.

<a id="ym-rg-calendar-blockcontrol"></a>
**[`YM.RG.Calendar.BlockControl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L120)** · Reading: probable  
Per-step requirements: branches well-posed, kernel symmetric under lattice symmetries and gauge covariant.

<a id="ym-rg-calendar-fits"></a>
**[`YM.RG.Calendar.Fits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L97)** · Reading: probable  
Compatibility conditions of the schedule (monotone stages, size and patch fits, hat-beta>1, logarithmic cost bounds).

<a id="ym-rg-supply-large"></a>
**[`YM.RG.Supply.Large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Price/Intent.lean#L39)** · Reading: probable  
Largeness conditions of a block size L at stage j (drift/log L small, polylog costs / log L <= j^{-2}).


<a id="part-iv"></a>
## Part IV: Infinite volume

The limit of the volume, and the Euclidean axioms of the limit table. (11 entries)

<a id="ym-table"></a>
**[`YM.Table`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L55)** · Reading: certain · **main statement**  
The family of unconditional n-point correlation functions (value for each arity, degrees and position vector, multilinear in label coefficients), the limit Euclidean theory.

<a id="ym-extraction-order"></a>
**[`YM.Extraction.Order`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L34)** · Reading: certain · **main statement**  
A pair of subsequences: mesh (N_j) and volume (p_k); 'mesh then volume' iterated limit order.

<a id="ym-table-hierarchy"></a>
**[`YM.Table.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141)** · Reading: certain  
Euclidean properties before rotation: symmetric, normalized, unital, translation invariant, reflection positive, smooth, polynomially bounded near collisions.

<a id="ym-extraction-order-fuse"></a>
**[`YM.Extraction.Order.fuse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Inherited.lean#L27)** · Reading: probable  
The product filter 'mesh then volume' on N x N.

<a id="ym-cells-tiling-roottest"></a>
**[`YM.Cells.Tiling.rootTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Tiling.lean#L226)** · Reading: probable  
The chessboard root: norm of the cell-product expectation raised to 1/(number of cells).

<a id="ym-extraction-order-late"></a>
**[`YM.Extraction.Order.late`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L47)** · Reading: certain  
Eventually in volume, then eventually in mesh.

<a id="ym-extraction-order-refine"></a>
**[`YM.Extraction.Order.refine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L40)** · Reading: certain  
Pass to a further pair of subsequences.

<a id="ym-spec-seed"></a>
**[`YM.Spec.Seed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L20)** · Reading: probable  
Package of limit inputs: cutoff Makes, Ordered, point limits, table Hierarchy, cell hypotheses, rank widths.

<a id="ym-extraction-sequence"></a>
**[`YM.Extraction.Sequence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L20)** · Reading: certain  
Strictly increasing sequence of naturals (a subsequence).

<a id="ym-extraction-sequence-full"></a>
**[`YM.Extraction.Sequence.full`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extraction/Orders.lean#L27)** · Reading: tentative  
Name 'full' for the identity sequence (full mesh sequence); not read in detail.

<a id="ym-table-rp"></a>
**[`YM.Table.RP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L123)** · Reading: certain  
Reflection positivity across coordinate hyperplanes.


<a id="part-v"></a>
## Part V: Phases and reconstruction

The Osterwalder–Schrader step: the Hilbert space, the decomposition into phases, and analytic continuation to Wightman distributions. (28 entries)

<a id="ym-spec-final"></a>
**[`YM.Spec.Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64)** · Reading: certain · **main statement**  
Fixing of the trajectory, limit seed, field algebra, phase selection and Wightman reconstruction on one Family and one Table.

<a id="ym-everyphase-almanac"></a>
**[`YM.EveryPhase.Almanac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Pack.lean#L117)** · Reading: certain · **main statement**  
Per-phase reconstruction: for each character a chamber, contour, Wightman theory, and the links to the selected phase.

<a id="yangmills-fieldsystem"></a>
**[`YangMills.FieldSystem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L105)** · Reading: certain · **main statement**  
Operator-valued tempered distributions on a common invariant domain with vacuum.

<a id="yangmills-wightmantheory"></a>
**[`YangMills.WightmanTheory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L255)** · Reading: certain · **main statement**  
Hilbert space, common domain, vacuum, smeared fields indexed by labels, translations, energy-momentum spectral measure and Poincare action; the data of a Wightman QFT.

<a id="yangmills-hierarchy"></a>
**[`YangMills.hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L27)** · Reading: certain · **main statement**  
The bridge: builds the public Hierarchy from the internal data (Final F, Reader Q); H = reconstructed Hilbert space of F.action, Field d = S.Field d, Character = F.alpha.space.X, correlation = S.useAt (spectator F s), centeredTrace = TraceExtension.center F.

<a id="yangmills-view"></a>
**[`YangMills.view`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicView.lean#L30)** · Reading: certain · **main statement**  
Repackages the internal Wightman object (Boundary.Wightman) as a public WightmanTheory.

<a id="yangmills-hierarchy-properties"></a>
**[`YangMills.Hierarchy.Properties`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L177)** · Reading: certain · **main statement**  
The four conclusions on one hierarchy: Wilson limit, Reconstruction, OPE, TraceTest (non-free).

<a id="yangmills-wightmantheory-axioms"></a>
**[`YangMills.WightmanTheory.Axioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L315)** · Reading: certain · **main statement**  
The four Wightman groups W0 (spectrum condition, vacuum uniqueness), W1 (domain, temperedness, adjoint), W2 (Poincare covariance), W3 (local commutativity).

<a id="yangmills-energymomentummeasure"></a>
**[`YangMills.EnergyMomentumMeasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L180)** · Reading: certain · **main statement**  
Projection-valued joint spectral measure of the translation group.

<a id="yangmills-hierarchy-2"></a>
**[`YangMills.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L24)** · Reading: certain · **main statement**  
The whole package of limiting correlation functions: Hilbert space with Wightman theory, quotient label spaces F_d (graded by weight d), the compact space of phases (characters) with measure nu and a selected phase, per-phase and mixed Euclidean correlations, analytic continuation, OPE coefficient data and the centered trace field.

<a id="yangmills-hierarchy-reconstructed"></a>
**[`YangMills.Hierarchy.Reconstructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L117)** · Reading: certain · **main statement**  
Reconstruction clause: Wightman axioms hold for the reconstructed theory, labels act faithfully, correlations are permutation symmetric and smooth off coincidences, are the nu-average of phase correlations, continue analytically to the ordered tube and have the Wightman distributions as boundary values.

<a id="yangmills-poincareaction"></a>
**[`YangMills.PoincareAction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L219)** · Reading: certain · **main statement**  
Unitary strongly continuous representation of the proper orthochronous Poincare group on states, labels and test functions.

<a id="ym-nonperturbative-headline-reconstruction"></a>
**[`YM.Nonperturbative.Headline.Reconstruction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L75)** · Reading: certain · **main statement**  
WightmanAxioms for the selected phase and every character and their average equals the unselected world.

<a id="yangmills-translationaction"></a>
**[`YangMills.TranslationAction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/PublicTheory.lean#L169)** · Reading: certain · **main statement**  
Strongly continuous unitary representation of spacetime translations.

<a id="yangmills-jointexistence"></a>
**[`YangMills.JointExistence`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L186)** · Reading: certain · **main statement**  
The headline statement: for each simple G there is one Wilson family such that for every volume subsequence p there is a further subsequence and a Hierarchy with all four Properties.

<a id="yangmills-constructed"></a>
**[`YangMills.constructed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/Construction.lean#L15)** · Reading: certain · **main statement**  
Construction.lean main theorem: for simple G and any penalty b>0 there is an internal Family C with the stated properties, then for each volume order p a refinement q with Table, Final, Almanac, Reader, Devices and Scaling, giving all public Properties plus the detailed clauses.

<a id="ym-os-chamber"></a>
**[`YM.OS.Chamber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57)** · Reading: certain  
The OS Hilbert space (GNS space of positive-time words) with the semigroup of time translations at a fixed axis.

<a id="ym-boundary-surface"></a>
**[`YM.Boundary.Surface`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L54)** · Reading: probable  
Joint tempered boundary distributions (Wightman functions) of a table.

<a id="ym-os-spread"></a>
**[`YM.OS.Spread`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Slabs.lean#L101)** · Reading: probable  
Operators placing a time-slab word on the GNS space.

<a id="ym-boundary-wightman"></a>
**[`YM.Boundary.Wightman`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L117)** · Reading: certain  
Spin action, fields, star operator, unitary Poincare action and energy-momentum measure: the reconstructed QFT.

<a id="ym-next-boundary-fieldcore"></a>
**[`YM.Next.BOUNDARY.FieldCore`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY/Core.lean#L34)** · Reading: probable  
Wightman fields satisfy realization, adjoint, locality, covariance, spectral conditions.

<a id="ym-os-spread-resolution"></a>
**[`YM.OS.Spread.Resolution`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L65)** · Reading: certain  
The probability space X (compact metric) with measure mu and characters of the commutative C*-algebra: the Gelfand-Riesz phase decomposition.

<a id="ym-everyphase-completed"></a>
**[`YM.EveryPhase.Completed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Extension.lean#L51)** · Reading: certain  
All properties for every phase: Wightman, surjective link, unique ground state, dependence continuity, integral over phases recovers unselected table.

<a id="ym-bid-pantry"></a>
**[`YM.Bid.Pantry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Corners.lean#L23)** · Reading: tentative  
Hypotheses package for the reconstruction step in work item C01 (hierarchies for both tables and derivative plan).

<a id="ym-boundary-wightman-realizes"></a>
**[`YM.Boundary.Wightman.Realizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/System.lean#L124)** · Reading: certain  
The Wightman package realizes a surface and meets domain, adjoint, locality, covariance, spectrum conditions.

<a id="ym-boundary-contour"></a>
**[`YM.Boundary.Contour`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Boundary/Contour.lean#L115)** · Reading: probable  
Analytic continuation data (Waves) together with the real-time Wightman distributions (world).

<a id="ym-os-selection"></a>
**[`YM.OS.Selection`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Phase/Mixture.lean#L127)** · Reading: certain  
The decomposition into phases: Euclid chamber, unselected GNS data, a compact metric probability space of phases X with an ensemble of Tables, and a chosen phase.

<a id="ym-nonperturbative-headline-wightmanaxioms"></a>
**[`YM.Nonperturbative.Headline.WightmanAxioms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L52)** · Reading: certain  
Internal version of Wightman axioms for a reconstructed A.


<a id="part-vi"></a>
## Part VI: Symmetry: stress tensor and Ward identities

Rotations, the stress tensor and the Ward identities of the limit theory. (10 entries)

<a id="ym-signed"></a>
**[`YM.Signed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23)** · Reading: certain  
A signed permutation of the four axes (hyperoctahedral group, the symmetry group of the hypercubic lattice).

<a id="ym-ortho"></a>
**[`YM.Ortho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Orthogonal.lean#L20)** · Reading: certain  
The orthogonal group O(4) as 4x4 real orthogonal matrices.

<a id="ym-table-stress"></a>
**[`YM.Table.Stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57)** · Reading: certain  
A symmetric-index family T_{ab} of 16 elements of F_4: the stress tensor.

<a id="ym-diffplan"></a>
**[`YM.DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20)** · Reading: certain  
Inclusions F_d -> F_e and partial derivatives F_d -> F_{d+1} on the quotient label spaces.

<a id="ym-table-realspin"></a>
**[`YM.Table.RealSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Table.lean#L80)** · Reading: certain  
Compatibility with signed lattice symmetries and complex conjugation of labels.

<a id="ym-ward-disc"></a>
**[`YM.Ward.disc`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L23)** · Reading: probable  
Plain n-point correlation read at points (disc = discrete reading).

<a id="ym-table-rotation"></a>
**[`YM.Table.Rotation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L22)** · Reading: certain  
Action of O(4) and its Lie algebra on each F_d.

<a id="ym-table-stresslaws"></a>
**[`YM.Table.StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90)** · Reading: certain  
Local Ward identities: the flux of T through a shell equals the translation derivative (and rotation action) of the correlation.

<a id="ym-spec-algebra"></a>
**[`YM.Spec.Algebra`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L28)** · Reading: certain  
Derivative plan, rotations and stress tensor on the table.

<a id="ym-everyphase-stress-force"></a>
**[`YM.EveryPhase.Stress.Force`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/EveryPhase/Implement.lean#L81)** · Reading: probable  
Continued Ward identity (stress flux acting as generator) for each phase's reconstructed theory.


<a id="part-vii"></a>
## Part VII: Identification as Yang–Mills

The operator product expansion, the trace of the stress tensor, contact terms, and the perturbative comparison with free Maxwell fields. (28 entries)

<a id="ym-climb-scaling"></a>
**[`YM.Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24)** · Reading: certain · **main statement**  
A scaling sequence: radii r_k decreasing to 0, positive constants xi_k and linear-frame changes U_k used to blow up short-distance correlations to compare with free Maxwell.

<a id="ym-contacts-devices"></a>
**[`YM.Contacts.Devices`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Tomography.lean#L17)** · Reading: probable · **main statement**  
Choices (prescription, rotation, hierarchy, detector per degree) fixing the extraction of contact terms.

<a id="ym-ope-orbits-reader"></a>
**[`YM.OPE.Orbits.Reader`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Orbits/Cuts.lean#L17)** · Reading: certain · **main statement**  
OPE data: Prescription, channels, coefficient functions and actor labels reading the table.

<a id="ym-pert-firstextension"></a>
**[`YM.Pert.FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26)** · Reading: certain · **main statement**  
Along a scaling sequence, rescaled stress-tensor (and regular-field) correlations converge on compacta with all derivatives to those of free Maxwell fields.

<a id="ym-contacts-solstice-multiplelight"></a>
**[`YM.Contacts.Solstice.MultipleLight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Result.lean#L52)** · Reading: probable · **main statement**  
Extension of correlations to coinciding points: moments, slope and distribution clauses for flat subspaces (contact distribution exists, with prescribed dependence).

<a id="ym-contacts-solstice-thresholds"></a>
**[`YM.Contacts.Solstice.Thresholds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Gates.lean#L23)** · Reading: probable · **main statement**  
A rapidly decreasing sequence of thresholds (4 t_{n+1}<t_n, 2(n+1)t_n <= clearance).

<a id="ym-contacts-transport-systembasis"></a>
**[`YM.Contacts.Transport.SystemBasis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Transport/Register.lean#L47)** · Reading: tentative · **main statement**  
A real basis of each stratum of the splitting containing the unit.

<a id="ym-independent-core"></a>
**[`YM.Independent.Core`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Independent/Core.lean#L18)** · Reading: probable · **main statement**  
Package of the independent checks: services, completed reconstruction, trace tests, OPE foundation, joint position estimates with bounded variation.

<a id="ym-pert-position-fourmeters"></a>
**[`YM.Pert.Position.FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45)** · Reading: probable · **main statement**  
Normalized position-space leading comparison for horizon four: determining tests whose leading readings match.

<a id="yangmills-hierarchy-mode"></a>
**[`YangMills.Hierarchy.Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152)** · Reading: certain · **main statement**  
A free-field mass-shell kernel datum: mass, spatial and time differentiation orders, homogeneous numerator.

<a id="ym-nonperturbative-headline-nestedope"></a>
**[`YM.Nonperturbative.Headline.NestedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L128)** · Reading: certain · **main statement**  
OPE iterated over trees of collapsing clusters with admissible rates.

<a id="ym-nonperturbative-headline-separatedope"></a>
**[`YM.Nonperturbative.Headline.SeparatedOPE`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L24)** · Reading: certain · **main statement**  
OPE with coefficient bounds r^{j-w-eps} and remainder r^{D+1-w-eps}, uniform over phases.

<a id="ym-nonperturbative-headline-traceexclusions"></a>
**[`YM.Nonperturbative.Headline.TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84)** · Reading: certain · **main statement**  
Centered trace has zero VEV, r^8 log^2 asymptotics with constant award(G), is not a Wick polynomial profile, and Maxwell-test and invariance clauses (non-Gaussianity tests).

<a id="yangmills-hierarchy-operatorproductexpansion"></a>
**[`YangMills.Hierarchy.OperatorProductExpansion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L70)** · Reading: certain · **main statement**  
Short-distance expansion of n-point correlations in terms of finitely many local fields per degree with coefficient bounds r^{j-w-eps} and remainder r^{D+1-w-eps}, uniform over phases.

<a id="yangmills-hierarchy-tracetest"></a>
**[`YangMills.Hierarchy.TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168)** · Reading: certain · **main statement**  
Properties of the centered stress-tensor trace Theta: zero vacuum expectation, r^8 log^2(1/r) times its two-point function tends to 3 dim g/pi^4, and it is not equal to any finite Wick-type free-field profile.

<a id="yangmills-hierarchy-tracetwo"></a>
**[`YangMills.Hierarchy.traceTwo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149)** · Reading: certain · **main statement**  
The selected-phase two-point function of the centered trace with insertions at -r/2 and r/2 on the time axis.

<a id="yangmills-hierarchy-wickprofile"></a>
**[`YangMills.Hierarchy.wickProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165)** · Reading: certain · **main statement**  
The two-point time profile of a finite linear combination of products of free-field kernels.

<a id="yangmills-hierarchy-contacts"></a>
**[`YangMills.Hierarchy.Contacts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ContactSpec.lean#L12)** · Reading: certain · **main statement**  
Every correlation (every phase and mixed) extends from separated test functions to a distribution on all of R^{4n}, including collision diagonals.

<a id="yangmills-hierarchy-weight"></a>
**[`YangMills.Hierarchy.weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L63)** · Reading: certain · **main statement**  
Total degree (sum of d_i) of a list of labels; dimension count used in OPE exponents.

<a id="ym-maxwell-wickpol"></a>
**[`YM.Maxwell.WickPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24)** · Reading: probable  
Polynomials in the free Maxwell curvature jets (the free-field label algebra).

<a id="ym-maxwell-grad"></a>
**[`YM.Maxwell.grad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L20)** · Reading: tentative  
Gradient/derivative on the Maxwell label algebra.

<a id="ym-ope-prescription"></a>
**[`YM.OPE.Prescription`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OPE/Splitting/Basis.lean#L44)** · Reading: certain  
A choice of linear functionals on F_d (needle/sheet) giving a basis of F_d for every d: used to extract OPE coefficient labels.

<a id="ym-traceextension-stresstrace"></a>
**[`YM.TraceExtension.stressTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17)** · Reading: certain  
T_{mu mu} summed over axes.

<a id="ym-traceextension-center"></a>
**[`YM.TraceExtension.center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48)** · Reading: certain  
The centered trace Theta: trace of the stress tensor minus its vacuum expectation.

<a id="ym-trace-verse-award"></a>
**[`YM.Trace.Verse.award`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41)** · Reading: probable  
The trace amplitude 12 (d2/b0)^2 dim g / pi^4, shown equal to 3 dim g/pi^4.

<a id="ym-traceextension-theta"></a>
**[`YM.TraceExtension.theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64)** · Reading: probable  
centerIn S T (stressTrace J): the field Theta of eq. (14).

<a id="ym-contacts-solstice-charge"></a>
**[`YM.Contacts.Solstice.Charge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Contacts/Solstice/Venue.lean#L30)** · Reading: tentative  
Charge assigned to a contact term; not read in detail.

<a id="ym-pert-asymptotics-b0"></a>
**[`YM.Pert.Asymptotics.b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13)** · Reading: certain  
One-loop coefficient b0 = 11 C_A/(48 pi^2).


<a id="index"></a>
## Index

- [`YangMills.Configuration`](#yangmills-configuration) (Part III, certain)
- [`YangMills.constructed`](#yangmills-constructed) (Part V, certain)
- [`YangMills.EnergyMomentumMeasure`](#yangmills-energymomentummeasure) (Part V, certain)
- [`YangMills.FieldLabels`](#yangmills-fieldlabels) (Part II, certain)
- [`YangMills.FieldSystem`](#yangmills-fieldsystem) (Part V, certain)
- [`YangMills.GaugeGroup`](#yangmills-gaugegroup) (Part I, certain)
- [`YangMills.GaugeGroup.core`](#yangmills-gaugegroup-core) (Part I, certain)
- [`YangMills.GaugeGroup.IsSimple`](#yangmills-gaugegroup-issimple) (Part I, certain)
- [`YangMills.hierarchy`](#yangmills-hierarchy) (Part V, certain)
- [`YangMills.Hierarchy`](#yangmills-hierarchy-2) (Part V, certain)
- [`YangMills.Hierarchy.Contacts`](#yangmills-hierarchy-contacts) (Part VII, certain)
- [`YangMills.Hierarchy.Mode`](#yangmills-hierarchy-mode) (Part VII, certain)
- [`YangMills.Hierarchy.OperatorProductExpansion`](#yangmills-hierarchy-operatorproductexpansion) (Part VII, certain)
- [`YangMills.Hierarchy.Properties`](#yangmills-hierarchy-properties) (Part V, certain)
- [`YangMills.Hierarchy.Reconstructed`](#yangmills-hierarchy-reconstructed) (Part V, certain)
- [`YangMills.Hierarchy.Tag`](#yangmills-hierarchy-tag) (Part II, certain)
- [`YangMills.Hierarchy.TraceTest`](#yangmills-hierarchy-tracetest) (Part VII, certain)
- [`YangMills.Hierarchy.traceTwo`](#yangmills-hierarchy-tracetwo) (Part VII, certain)
- [`YangMills.Hierarchy.weight`](#yangmills-hierarchy-weight) (Part VII, certain)
- [`YangMills.Hierarchy.wickProfile`](#yangmills-hierarchy-wickprofile) (Part VII, certain)
- [`YangMills.HilbertSpace`](#yangmills-hilbertspace) (Part I, certain)
- [`YangMills.JointExistence`](#yangmills-jointexistence) (Part V, certain)
- [`YangMills.plaquette`](#yangmills-plaquette) (Part III, certain)
- [`YangMills.PoincareAction`](#yangmills-poincareaction) (Part V, certain)
- [`YangMills.TestFunction`](#yangmills-testfunction) (Part I, certain)
- [`YangMills.TranslationAction`](#yangmills-translationaction) (Part V, certain)
- [`YangMills.view`](#yangmills-view) (Part V, certain)
- [`YangMills.WightmanTheory`](#yangmills-wightmantheory) (Part V, certain)
- [`YangMills.WightmanTheory.Axioms`](#yangmills-wightmantheory-axioms) (Part V, certain)
- [`YangMills.wilsonEnergy`](#yangmills-wilsonenergy) (Part III, certain)
- [`YangMills.wilsonFamily`](#yangmills-wilsonfamily) (Part III, certain)
- [`YangMills.WilsonFamily`](#yangmills-wilsonfamily-2) (Part III, certain)
- [`YangMills.WilsonFamily.Converges`](#yangmills-wilsonfamily-converges) (Part III, certain)
- [`YangMills.WilsonFamily.finiteMoment`](#yangmills-wilsonfamily-finitemoment) (Part III, certain)
- [`YangMills.WilsonFamily.mesh`](#yangmills-wilsonfamily-mesh) (Part III, certain)
- [`YangMills.WilsonFamily.separated`](#yangmills-wilsonfamily-separated) (Part II, certain)
- [`YangMills.WilsonFamily.smear`](#yangmills-wilsonfamily-smear) (Part III, certain)
- [`YangMills.WilsonFamily.suitable`](#yangmills-wilsonfamily-suitable) (Part III, certain)
- [`YangMills.wilsonLaw`](#yangmills-wilsonlaw) (Part III, certain)
- [`YangMills.WilsonRegularity`](#yangmills-wilsonregularity) (Part III, certain)
- [`YM.Ac.Hit`](#ym-ac-hit) (Part III, tentative)
- [`YM.Ac.Spark`](#ym-ac-spark) (Part III, tentative)
- [`YM.Analysis.D`](#ym-analysis-d) (Part I, certain)
- [`YM.Axis`](#ym-axis) (Part I, certain)
- [`YM.Bid.Pantry`](#ym-bid-pantry) (Part V, tentative)
- [`YM.Bid.Worth`](#ym-bid-worth) (Part III, tentative)
- [`YM.Bloch.Momentum`](#ym-bloch-momentum) (Part III, certain)
- [`YM.Bloch.Row`](#ym-bloch-row) (Part III, probable)
- [`YM.Bloch.Row.acts`](#ym-bloch-row-acts) (Part III, certain)
- [`YM.Boundary.Contour`](#ym-boundary-contour) (Part V, probable)
- [`YM.Boundary.Surface`](#ym-boundary-surface) (Part V, probable)
- [`YM.Boundary.Wightman`](#ym-boundary-wightman) (Part V, certain)
- [`YM.Boundary.Wightman.Realizes`](#ym-boundary-wightman-realizes) (Part V, certain)
- [`YM.Cells.Interior`](#ym-cells-interior) (Part III, probable)
- [`YM.Cells.Tiling`](#ym-cells-tiling) (Part III, probable)
- [`YM.Cells.Tiling.rootTest`](#ym-cells-tiling-roottest) (Part IV, probable)
- [`YM.Climb.Scaling`](#ym-climb-scaling) (Part VII, certain)
- [`YM.conf`](#ym-conf) (Part II, certain)
- [`YM.ConnectedActivityE6.Cash`](#ym-connectedactivitye6-cash) (Part III, tentative)
- [`YM.ConnectedActivityE6.Coat`](#ym-connectedactivitye6-coat) (Part III, tentative)
- [`YM.ConnectedActivityE6.Molecule`](#ym-connectedactivitye6-molecule) (Part III, tentative)
- [`YM.ConnectedActivityE6.Rate`](#ym-connectedactivitye6-rate) (Part III, probable)
- [`YM.Contacts.Devices`](#ym-contacts-devices) (Part VII, probable)
- [`YM.Contacts.Solstice.Charge`](#ym-contacts-solstice-charge) (Part VII, tentative)
- [`YM.Contacts.Solstice.MultipleLight`](#ym-contacts-solstice-multiplelight) (Part VII, probable)
- [`YM.Contacts.Solstice.Thresholds`](#ym-contacts-solstice-thresholds) (Part VII, probable)
- [`YM.Contacts.Transport.SystemBasis`](#ym-contacts-transport-systembasis) (Part VII, tentative)
- [`YM.DiffPlan`](#ym-diffplan) (Part VI, certain)
- [`YM.E4`](#ym-e4) (Part I, certain)
- [`YM.EveryPhase.Almanac`](#ym-everyphase-almanac) (Part V, certain)
- [`YM.EveryPhase.Completed`](#ym-everyphase-completed) (Part V, certain)
- [`YM.EveryPhase.Stress.Force`](#ym-everyphase-stress-force) (Part VI, probable)
- [`YM.Exterior.Body`](#ym-exterior-body) (Part I, probable)
- [`YM.Exterior.d`](#ym-exterior-d) (Part I, probable)
- [`YM.Exterior.TypeFace`](#ym-exterior-typeface) (Part I, probable)
- [`YM.Extraction.Order`](#ym-extraction-order) (Part IV, certain)
- [`YM.Extraction.Order.fuse`](#ym-extraction-order-fuse) (Part IV, probable)
- [`YM.Extraction.Order.late`](#ym-extraction-order-late) (Part IV, certain)
- [`YM.Extraction.Order.Ordered`](#ym-extraction-order-ordered) (Part III, certain)
- [`YM.Extraction.Order.Ordered.reads`](#ym-extraction-order-ordered-reads) (Part III, probable)
- [`YM.Extraction.Order.refine`](#ym-extraction-order-refine) (Part IV, certain)
- [`YM.Extraction.Sequence`](#ym-extraction-sequence) (Part IV, certain)
- [`YM.Extraction.Sequence.full`](#ym-extraction-sequence-full) (Part IV, tentative)
- [`YM.Family`](#ym-family) (Part II, certain)
- [`YM.Family.beta`](#ym-family-beta) (Part III, certain)
- [`YM.Family.book`](#ym-family-book) (Part II, certain)
- [`YM.Family.label`](#ym-family-label) (Part II, certain)
- [`YM.Family.Makes`](#ym-family-makes) (Part II, certain)
- [`YM.Family.O`](#ym-family-o) (Part II, certain)
- [`YM.Family.S`](#ym-family-s) (Part III, certain)
- [`YM.Family.side`](#ym-family-side) (Part III, certain)
- [`YM.FullVolume.PositionsUV`](#ym-fullvolume-positionsuv) (Part III, probable)
- [`YM.Gauge`](#ym-gauge) (Part I, certain)
- [`YM.Gauge.adjoint`](#ym-gauge-adjoint) (Part I, certain)
- [`YM.Gauge.casimir`](#ym-gauge-casimir) (Part I, certain)
- [`YM.Gauge.Color`](#ym-gauge-color) (Part I, certain)
- [`YM.Gauge.ColorIndex`](#ym-gauge-colorindex) (Part I, certain)
- [`YM.Gauge.curvature`](#ym-gauge-curvature) (Part I, certain)
- [`YM.Gauge.El`](#ym-gauge-el) (Part I, certain)
- [`YM.Gauge.lieExp`](#ym-gauge-lieexp) (Part I, certain)
- [`YM.Gauge.Mat`](#ym-gauge-mat) (Part I, certain)
- [`YM.Gauge.probHaar`](#ym-gauge-probhaar) (Part I, certain)
- [`YM.Gauge.Simple`](#ym-gauge-simple) (Part I, certain)
- [`YM.Gauge.slopeConstant`](#ym-gauge-slopeconstant) (Part III, certain)
- [`YM.Independent.Core`](#ym-independent-core) (Part VII, probable)
- [`YM.Input.Directed`](#ym-input-directed) (Part III, probable)
- [`YM.Input.Directed.Move`](#ym-input-directed-move) (Part III, tentative)
- [`YM.Labels.Frame`](#ym-labels-frame) (Part II, certain)
- [`YM.Labels.Frame.Coeff`](#ym-labels-frame-coeff) (Part II, certain)
- [`YM.Labels.Frame.Index`](#ym-labels-frame-index) (Part II, certain)
- [`YM.Labels.frames`](#ym-labels-frames) (Part II, certain)
- [`YM.Labels.Frames`](#ym-labels-frames-2) (Part II, certain)
- [`YM.Labels.Jet`](#ym-labels-jet) (Part II, probable)
- [`YM.Labels.Label`](#ym-labels-label) (Part II, certain)
- [`YM.Labels.Taylor`](#ym-labels-taylor) (Part II, probable)
- [`YM.Lattice.Agrees`](#ym-lattice-agrees) (Part I, certain)
- [`YM.Lattice.Cover`](#ym-lattice-cover) (Part I, certain)
- [`YM.Lattice.coverNumber`](#ym-lattice-covernumber) (Part I, probable)
- [`YM.Lattice.Edge`](#ym-lattice-edge) (Part I, certain)
- [`YM.Lattice.Face`](#ym-lattice-face) (Part I, certain)
- [`YM.Lattice.faceValue`](#ym-lattice-facevalue) (Part III, certain)
- [`YM.Lattice.GaugeInvariant`](#ym-lattice-gaugeinvariant) (Part I, certain)
- [`YM.Lattice.halo`](#ym-lattice-halo) (Part I, certain)
- [`YM.Lattice.LocalOn`](#ym-lattice-localon) (Part I, certain)
- [`YM.Lattice.Per`](#ym-lattice-per) (Part I, certain)
- [`YM.Lattice.PlaqAxes`](#ym-lattice-plaqaxes) (Part I, certain)
- [`YM.Lattice.Ratio`](#ym-lattice-ratio) (Part III, certain)
- [`YM.Lattice.Ratio.embed`](#ym-lattice-ratio-embed) (Part III, certain)
- [`YM.Lattice.Ratio.parent`](#ym-lattice-ratio-parent) (Part III, certain)
- [`YM.Lattice.separation`](#ym-lattice-separation) (Part I, certain)
- [`YM.Lattice.Side`](#ym-lattice-side) (Part I, certain)
- [`YM.Lattice.Site`](#ym-lattice-site) (Part I, certain)
- [`YM.Lattice.Step`](#ym-lattice-step) (Part I, certain)
- [`YM.Lattice.Step.vec`](#ym-lattice-step-vec) (Part I, certain)
- [`YM.Lattice.Support`](#ym-lattice-support) (Part I, certain)
- [`YM.Lattice.Walk`](#ym-lattice-walk) (Part I, certain)
- [`YM.Laurent.mode`](#ym-laurent-mode) (Part I, certain)
- [`YM.Laurent.Phase`](#ym-laurent-phase) (Part I, probable)
- [`YM.Laurent.strip`](#ym-laurent-strip) (Part I, probable)
- [`YM.Marker.Census.Mode`](#ym-marker-census-mode) (Part III, tentative)
- [`YM.Marker.Poly`](#ym-marker-poly) (Part III, probable)
- [`YM.Maxwell.grad`](#ym-maxwell-grad) (Part VII, tentative)
- [`YM.Maxwell.WickPol`](#ym-maxwell-wickpol) (Part VII, probable)
- [`YM.Next.BOUNDARY.FieldCore`](#ym-next-boundary-fieldcore) (Part V, probable)
- [`YM.Next.Free.Flight`](#ym-next-free-flight) (Part III, tentative)
- [`YM.Next.Free.Whole`](#ym-next-free-whole) (Part III, tentative)
- [`YM.Next.Rank.Perch.bill`](#ym-next-rank-perch-bill) (Part III, tentative)
- [`YM.Next.SectorChange.Gaussian.Vec`](#ym-next-sectorchange-gaussian-vec) (Part III, tentative)
- [`YM.Next.SectorChange.Prices`](#ym-next-sectorchange-prices) (Part III, tentative)
- [`YM.Nonperturbative.Headline.NestedOPE`](#ym-nonperturbative-headline-nestedope) (Part VII, certain)
- [`YM.Nonperturbative.Headline.Reconstruction`](#ym-nonperturbative-headline-reconstruction) (Part V, certain)
- [`YM.Nonperturbative.Headline.SeparatedOPE`](#ym-nonperturbative-headline-separatedope) (Part VII, certain)
- [`YM.Nonperturbative.Headline.TraceExclusions`](#ym-nonperturbative-headline-traceexclusions) (Part VII, certain)
- [`YM.Nonperturbative.Headline.WightmanAxioms`](#ym-nonperturbative-headline-wightmanaxioms) (Part V, certain)
- [`YM.OPE.Orbits.Reader`](#ym-ope-orbits-reader) (Part VII, certain)
- [`YM.OPE.Prescription`](#ym-ope-prescription) (Part VII, certain)
- [`YM.Ortho`](#ym-ortho) (Part VI, certain)
- [`YM.OS.Chamber`](#ym-os-chamber) (Part V, certain)
- [`YM.OS.Selection`](#ym-os-selection) (Part V, certain)
- [`YM.OS.Spread`](#ym-os-spread) (Part V, probable)
- [`YM.OS.Spread.Resolution`](#ym-os-spread-resolution) (Part V, certain)
- [`YM.Pert.Asymptotics.b0`](#ym-pert-asymptotics-b0) (Part VII, certain)
- [`YM.Pert.Bulk.Market`](#ym-pert-bulk-market) (Part III, tentative)
- [`YM.Pert.FirstExtension`](#ym-pert-firstextension) (Part VII, certain)
- [`YM.Pert.Position.FourMeters`](#ym-pert-position-fourmeters) (Part VII, probable)
- [`YM.Points`](#ym-points) (Part I, certain)
- [`YM.Precision.Bed`](#ym-precision-bed) (Part III, tentative)
- [`YM.Precision.ChartRatio`](#ym-precision-chartratio) (Part III, probable)
- [`YM.Precision.Floor`](#ym-precision-floor) (Part III, tentative)
- [`YM.Precision.Horizon`](#ym-precision-horizon) (Part III, tentative)
- [`YM.Precision.LocalRatio`](#ym-precision-localratio) (Part III, probable)
- [`YM.Precision.MapPrices`](#ym-precision-mapprices) (Part III, probable)
- [`YM.Precision.PostCost`](#ym-precision-postcost) (Part III, probable)
- [`YM.Precision.replica`](#ym-precision-replica) (Part III, probable)
- [`YM.Precision.represent`](#ym-precision-represent) (Part III, probable)
- [`YM.Pressure.betaF`](#ym-pressure-betaf) (Part III, probable)
- [`YM.Pressure.fiery`](#ym-pressure-fiery) (Part III, tentative)
- [`YM.Pressure.radiusB`](#ym-pressure-radiusb) (Part III, probable)
- [`YM.Pressure.Stores`](#ym-pressure-stores) (Part III, tentative)
- [`YM.Pressure.Teller`](#ym-pressure-teller) (Part III, probable)
- [`YM.Pressure.Teller.Funds`](#ym-pressure-teller-funds) (Part III, tentative)
- [`YM.Pressure.temp`](#ym-pressure-temp) (Part III, probable)
- [`YM.Pressure.Tube`](#ym-pressure-tube) (Part III, tentative)
- [`YM.Push.SectorMeasure.Chi`](#ym-push-sectormeasure-chi) (Part III, probable)
- [`YM.Register`](#ym-register) (Part II, certain)
- [`YM.Register.Ref`](#ym-register-ref) (Part II, certain)
- [`YM.Register.Token`](#ym-register-token) (Part II, certain)
- [`YM.RG.Activities`](#ym-rg-activities) (Part III, certain)
- [`YM.RG.Activities.Moves`](#ym-rg-activities-moves) (Part III, probable)
- [`YM.RG.Atom`](#ym-rg-atom) (Part III, probable)
- [`YM.RG.BudgetPoint`](#ym-rg-budgetpoint) (Part III, certain)
- [`YM.RG.BudgetPoint.mass`](#ym-rg-budgetpoint-mass) (Part III, probable)
- [`YM.RG.BudgetPoint.Regular`](#ym-rg-budgetpoint-regular) (Part III, certain)
- [`YM.RG.BudgetPoint.supBounds`](#ym-rg-budgetpoint-supbounds) (Part III, certain)
- [`YM.RG.Calendar`](#ym-rg-calendar) (Part III, certain)
- [`YM.RG.Calendar.BlockControl`](#ym-rg-calendar-blockcontrol) (Part III, probable)
- [`YM.RG.Calendar.Fits`](#ym-rg-calendar-fits) (Part III, probable)
- [`YM.RG.Calendar.hatBeta`](#ym-rg-calendar-hatbeta) (Part III, certain)
- [`YM.RG.Calendar.op`](#ym-rg-calendar-op) (Part III, certain)
- [`YM.RG.Clip`](#ym-rg-clip) (Part III, probable)
- [`YM.RG.Directions`](#ym-rg-directions) (Part III, certain)
- [`YM.RG.Envelope`](#ym-rg-envelope) (Part III, tentative)
- [`YM.RG.flags`](#ym-rg-flags) (Part III, certain)
- [`YM.RG.Healthy`](#ym-rg-healthy) (Part III, certain)
- [`YM.RG.History`](#ym-rg-history) (Part III, certain)
- [`YM.RG.increment`](#ym-rg-increment) (Part III, certain)
- [`YM.RG.KernelChoices`](#ym-rg-kernelchoices) (Part III, certain)
- [`YM.RG.leftDerivs`](#ym-rg-leftderivs) (Part III, certain)
- [`YM.RG.Levels`](#ym-rg-levels) (Part III, certain)
- [`YM.RG.Levels.budget`](#ym-rg-levels-budget) (Part III, certain)
- [`YM.RG.masked`](#ym-rg-masked) (Part III, certain)
- [`YM.RG.Patch`](#ym-rg-patch) (Part III, certain)
- [`YM.RG.Patch.Branches`](#ym-rg-patch-branches) (Part III, probable)
- [`YM.RG.PathData`](#ym-rg-pathdata) (Part III, probable)
- [`YM.RG.Rep`](#ym-rg-rep) (Part III, certain)
- [`YM.RG.Rep.eval`](#ym-rg-rep-eval) (Part III, certain)
- [`YM.RG.Rep.exponent`](#ym-rg-rep-exponent) (Part III, certain)
- [`YM.RG.Rep.Lawful`](#ym-rg-rep-lawful) (Part III, certain)
- [`YM.RG.Slot`](#ym-rg-slot) (Part III, probable)
- [`YM.RG.Stage`](#ym-rg-stage) (Part III, certain)
- [`YM.RG.StepData`](#ym-rg-stepdata) (Part III, certain)
- [`YM.RG.StepData.Choices`](#ym-rg-stepdata-choices) (Part III, probable)
- [`YM.RG.StepData.prediction`](#ym-rg-stepdata-prediction) (Part III, probable)
- [`YM.RG.StepData.push`](#ym-rg-stepdata-push) (Part III, certain)
- [`YM.RG.StepData.ratio`](#ym-rg-stepdata-ratio) (Part III, certain)
- [`YM.RG.SumBudget`](#ym-rg-sumbudget) (Part III, certain)
- [`YM.RG.Supply.Bar`](#ym-rg-supply-bar) (Part III, certain)
- [`YM.RG.Supply.Delays`](#ym-rg-supply-delays) (Part III, certain)
- [`YM.RG.Supply.Large`](#ym-rg-supply-large) (Part III, probable)
- [`YM.RG.Supply.Paid`](#ym-rg-supply-paid) (Part III, probable)
- [`YM.RG.Supply.Protection`](#ym-rg-supply-protection) (Part III, certain)
- [`YM.RG.Supply.Rolls`](#ym-rg-supply-rolls) (Part III, certain)
- [`YM.RG.Supply.Sheet`](#ym-rg-supply-sheet) (Part III, certain)
- [`YM.RG.Supply.Wait`](#ym-rg-supply-wait) (Part III, probable)
- [`YM.RG08.Forms.Tape`](#ym-rg08-forms-tape) (Part III, tentative)
- [`YM.Schedule`](#ym-schedule) (Part III, certain)
- [`YM.Schedule.a`](#ym-schedule-a) (Part III, certain)
- [`YM.Signed`](#ym-signed) (Part VI, certain)
- [`YM.Source.Coefficient`](#ym-source-coefficient) (Part II, probable)
- [`YM.Source.Coefficient.Format`](#ym-source-coefficient-format) (Part II, tentative)
- [`YM.Source.Hol`](#ym-source-hol) (Part II, certain)
- [`YM.Source.SectionData`](#ym-source-sectiondata) (Part II, certain)
- [`YM.Source.TransferData`](#ym-source-transferdata) (Part II, certain)
- [`YM.Spec.Algebra`](#ym-spec-algebra) (Part VI, certain)
- [`YM.Spec.Calibrated`](#ym-spec-calibrated) (Part III, probable)
- [`YM.Spec.Final`](#ym-spec-final) (Part V, certain)
- [`YM.Spec.Seed`](#ym-spec-seed) (Part IV, probable)
- [`YM.Stationary.Link`](#ym-stationary-link) (Part III, tentative)
- [`YM.Stationary.Loc`](#ym-stationary-loc) (Part III, tentative)
- [`YM.Table`](#ym-table) (Part IV, certain)
- [`YM.Table.Field`](#ym-table-field) (Part II, certain)
- [`YM.Table.Hierarchy`](#ym-table-hierarchy) (Part IV, certain)
- [`YM.Table.project`](#ym-table-project) (Part II, certain)
- [`YM.Table.RealSpin`](#ym-table-realspin) (Part VI, certain)
- [`YM.Table.Rotation`](#ym-table-rotation) (Part VI, certain)
- [`YM.Table.RP`](#ym-table-rp) (Part IV, certain)
- [`YM.Table.Stress`](#ym-table-stress) (Part VI, certain)
- [`YM.Table.StressLaws`](#ym-table-stresslaws) (Part VI, certain)
- [`YM.Table.Tag`](#ym-table-tag) (Part II, certain)
- [`YM.Table.Union`](#ym-table-union) (Part II, certain)
- [`YM.Tensor.coeff`](#ym-tensor-coeff) (Part I, certain)
- [`YM.Tensor.diagonal`](#ym-tensor-diagonal) (Part I, certain)
- [`YM.Tensor.T`](#ym-tensor-t) (Part I, certain)
- [`YM.Trace.Verse.award`](#ym-trace-verse-award) (Part VII, probable)
- [`YM.TraceExtension.center`](#ym-traceextension-center) (Part VII, certain)
- [`YM.TraceExtension.stressTrace`](#ym-traceextension-stresstrace) (Part VII, certain)
- [`YM.TraceExtension.theta`](#ym-traceextension-theta) (Part VII, probable)
- [`YM.Tree.Forest`](#ym-tree-forest) (Part III, certain)
- [`YM.Tree.Forest.Free`](#ym-tree-forest-free) (Part III, certain)
- [`YM.Tree.Forest.Slice`](#ym-tree-forest-slice) (Part III, certain)
- [`YM.Ward.disc`](#ym-ward-disc) (Part VI, probable)
- [`YM.Wilson.Config`](#ym-wilson-config) (Part III, certain)
- [`YM.Wilson.energy`](#ym-wilson-energy) (Part III, certain)
- [`YM.Wilson.law`](#ym-wilson-law) (Part III, certain)
- [`YM.Wilson.moment`](#ym-wilson-moment) (Part III, certain)
- [`YM.Wilson.prior`](#ym-wilson-prior) (Part III, certain)
