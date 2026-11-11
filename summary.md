# OpenAI's construction of four-dimensional quantum Yang–Mills theory

> **Level 2 of the [five levels](README.md#the-proof-at-five-levels-of-detail): the proof in one reading.** This is a **first draft**, written by an AI model from the [unit outlines](outline/units.md); a second model is checking it against the outlines and the Lean and editing it. It will be replaced by the edited version.

## The result and its scope

Let $G\subset U(m)$ be a closed matrix group whose real Lie algebra $\mathfrak g$ is nonabelian and simple. The construction produces a family of four-dimensional Wilson lattice theories, with renormalized local observables, whose correlations have a continuum limit at each fixed physical volume. Every sequence of volumes tending to infinity has a subsequence on which all these continuum correlations converge to an infinite-volume hierarchy. This hierarchy decomposes into phases. A selected phase gives a local, positive-energy, Poincaré-covariant quantum field theory with a unique vacuum, an operator product expansion, and a nonzero field with the logarithmic short-distance behavior of the Yang–Mills stress trace.

The order and quantifiers matter. One lattice family, including its couplings and observable normalizations, is chosen first. Write $a_N\downarrow0$ for its spacings and $L_p\uparrow\infty$ for its physical side lengths. Given any increasing sequence $p(k)$, there is a further subsequence $p(q(k))$ such that, for every finite list of local labels $v$ and every smooth compactly supported **joint** test function $f$ away from coincidences,

$$
\lim_{k\to\infty}\lim_{N\to\infty} C_{N,p(q(k))}(v;f)
=\int f(x)S^{\mathrm{mix}}(v;x)\,dx,
\qquad
S^{\mathrm{mix}}=\int_X S^\xi\,d\nu(\xi).
$$

Here $C_{N,p}(v;f)$ is the lattice sum of $f$ times the expectation of the product of the renormalized insertions, with the Riemann-sum factor $a_N^{4n}$ for $n$ insertions. At fixed volume, the support of $f$ must lie inside its fundamental box; this holds eventually as the volume increases. The inner limit uses the whole chosen spacing sequence. The volume subsequence works simultaneously for all labels and tests. The phase space $X$ is compact metrizable, $\nu$ is a probability measure with full support, and separated correlations depend continuously on $\xi$.

There is a distinction between the public existence statement and the stronger construction behind it. The public statement specifies abstract field labels, lattice convergence, reconstruction of a selected phase, the OPE, and a trace test. The construction additionally identifies the labels with quotients of gauge-invariant curvature polynomials, constructs and normalizes a conserved stress tensor, identifies the tested field as its centered trace, and reconstructs **every** phase. The discussion below concerns this stronger construction. Its relativistic fields are operator-valued Schwartz distributions on a common invariant cyclic domain; the energy–momentum spectrum lies in the forward cone. The field labels form a filtered union of finite-dimensional spaces, rather than a single prescribed finite multiplet.

The result does not establish a mass gap, uniqueness of the infinite-volume limit, agreement of the phases, or independence of the chosen lattice family. In particular, uniqueness of the vacuum *within a phase* is not uniqueness of the Yang–Mills vacuum across the construction. Nor is a phase itself asserted to be a limit of the original finite-volume lattice states: their limit is the mixture. There is no exchange of limits or general diagonal limit. The construction gives correlation functions and quantum fields, not a continuum probability measure on connections. Wilson-loop area laws, particle states, and scattering are outside its conclusions.

For constants, use the representation-dependent metric

$$
\langle X,Y\rangle_{\mathfrak g}=-\frac1m\mathrm{Re}\mathrm{tr}(XY),
\qquad
\mathrm{tr}(\mathrm{ad}X\mathrm{ad}Y)
=-C_{\mathfrak g}\langle X,Y\rangle_{\mathfrak g}.
$$

The constructed couplings satisfy, uniformly in $p$,

$$
\frac{\beta_{N,p}}{\log(1/a_N)}\longrightarrow
\kappa_G:=\frac{11C_{\mathfrak g}}{24\pi^2}=2b_0,
\qquad b_0=\frac{11C_{\mathfrak g}}{48\pi^2}.
$$

Here $\beta=1/g_0^2$ in this metric convention. Only existence of a positive slope is required by the public statement; its value is supplied by the proof.

## The strategy

The renormalization group is used to remove the **ultraviolet** cutoff. Starting from a very fine Wilson lattice, it integrates successive bands of fluctuations until it reaches a fixed reference physical scale. The bare coupling is chosen so that the effective inverse coupling at that reference scale has one prescribed value. No RG argument continues from that scale through arbitrarily large physical distances. Infinite volume is obtained afterwards from local estimates uniform in the volume and compactness, not from an infrared flow.

At each ultraviolet step the effective density is represented by a gauge-invariant action plus connected local corrections. On regions of small curvature, a symmetric choice of gauge and a stationary background permit Gaussian integration. Regions of large curvature are retained and paid for by their Wilson energy. Cluster expansions organize the resulting corrections without losing control as the number of lattice sites grows. The marginal curvature-squared term is extracted and absorbed into the coupling; all remaining terms obey an inductive smallness estimate. A direct one-loop calculation gives the coefficient $\kappa_G$.

Stability of the effective action alone would not construct a field theory. The same procedure must transport arbitrarily many composite observables, fix their normalizations, control their derivatives, and compare different fine cutoffs. This second layer of estimates supplies volume-uniform bounds on reflected observable products. Analytic dependence on the tuned reference coupling then proves a Cauchy property at fixed volume. A slowly changing schedule of block sizes and regularity orders makes these conclusions hold for all finite field degrees within one family.

Reflection positivity converts the observable bounds into compactness of local correlations. Lattice integration by parts and finite-dimensional field relations turn the resulting continuous kernels into smooth kernels on all configurations of distinct points. This gives an infinite-volume mixed state without assuming clustering. At this stage only translations and the discrete lattice rotations are inherited directly.

Continuous rotations have to be proved. The ultraviolet analysis supplies local stress-flux identities and comparison with free Maxwell fields. These identify a conserved stress tensor and normalize its translation charge. Reflection positivity controls the flux at large distances; analytic continuation in configuration space extends initially restricted Ward identities to arbitrary separated points. The resulting infinitesimal rotations are shown to integrate to an orthogonal action on the field labels. This is the symmetry input for relativistic reconstruction.

The mixed state is separated into phases by a commutative algebra on the zero-energy space of its Osterwalder–Schrader Hilbert space. Its characters give the phase correlations. Bounds on thin Euclidean slabs provide analytic continuations and tempered real-time boundary values, from which the Wightman fields are reconstructed. An additional argument upgrades vacuum uniqueness from almost every phase to every phase using a uniform polynomial bound on low-energy spectral weight. This supplies clustering within each phase without a mass gap.

Finally, ultraviolet comparison identifies the field content and leading Maxwell behavior. The same one-loop marginal term produces a nonzero stress trace with an inverse logarithm in its scaling, which excludes finite Wick-polynomial free-field descriptions. Cluster estimates also give one OPE prescription valid in the mixture and every phase. Parts I–VIII describe these mechanisms thematically: the free comparison in VII is used already in VI, and the symmetry results of VI enter the phase and reconstruction arguments in V. The dependence is on these intermediate results, not on their order of exposition.

## Part I. The finite lattice theory

*Unit: [I.1 — Lattice, symmetries, gauge groups and the Wilson measure](../units/I.1.md).*

On a periodic lattice, a configuration assigns $U_e\in G$ to each oriented edge, with $U_{e^{-1}}=U_e^{-1}$. If $U_\square$ is the ordered plaquette product, the starting probability measure is

$$
d\mu_{N,p}(U)=Z_{N,p}^{-1}
\exp\!\left[-\beta_{N,p}\sum_\square
\left(1-\frac1m\mathrm{Re}\mathrm{tr}U_\square\right)\right]
\prod_e dh(U_e).
$$

Compactness of $G$ makes this an ordinary finite-dimensional probability law. Gauge invariance, translations, coordinate permutations and reflections are exact. The normalization of Haar measure and of the matrix trace is fixed throughout; it determines the normalization of the continuum curvature and of $C_{\mathfrak g}$.

The analytic work starts with local exponential and logarithmic coordinates near the identity, quantitative control of their derivatives, and gauge-covariant comparisons of nearby configurations. These are local charts, not a global gauge fixing. The hypotheses allow disconnected groups; simplicity is imposed on the Lie algebra. It later reduces invariant quadratic forms to one scalar, explaining why there is a single marginal gauge coupling.

This is Wilson's lattice regularization with the geometric preparation needed for Balaban's program. Reflection positivity is preserved at the level of the original lattice law and later used through reflection-positive cells and transfer operators. It is not inferred from a truncated effective action.

## Part II. Which fields are being constructed?

*Units: [II.1 — Field labels and their lattice representatives](../units/II.1.md); [II.2 — Polymer activities, norms, the Wilson family, the construction record, reflection-positive cells](../units/II.2.md).*

A local classical label is a gauge-invariant polynomial in curvature and covariant curvature derivatives. Curvature has engineering degree two, each derivative adds one, and multiplication adds degrees. At each degree bound $d$ these expressions form a finite-dimensional space $V_d$. Finite samples of plaquette holonomies recover the required curvature jets near the trivial connection. An inverse Taylor construction, followed by symmetry averaging, produces a gauge-invariant lattice polynomial for each label. Its stencil is fixed in lattice units, independently of spacing and volume, and its expansion on smooth connections agrees with the classical expression to the required order.

The insertion used in a correlation is a renormalized linear combination of these polynomials. The RG transports their coefficients to a reference level depending only on $d$; the inverse transport fixes the normalization there. Mixing with lower-degree fields, including the identity, is allowed. Thus normalization is part of the construction of each composite field, not an informal identification after taking a limit.

To carry insertions through the RG, each marked observable receives a commuting variable whose square is zero. Coefficients in this finite algebra record products of distinct insertions exactly. Exponentials and logarithms organize marked connected contributions without requiring analytic source dependence of arbitrary order. Weighted coefficient norms are submultiplicative and designed to avoid constants growing simply because more marks have been introduced.

A polymer is a connected set of blocks. Its activity describes a local contribution supported there, with weights controlling its size, derivatives and spatial extent. The norm sums polymers through a specified site; it does not sum a small bound over the whole volume. This is the organization familiar from Brydges's cluster-expansion methods and constructive field theory. Here it must also track gauge charts, large-curvature regions and composite insertions.

The eventual field space is $F_d=V_d/N_d$, where $N_d$ consists of labels invisible in every correlation with separated spectators. Lattice Haar integration by parts supplies relations that become null in this sense. Free comparison later identifies the dimension and algebraic model of this quotient. In particular, comparison with source-free Maxwell jets describes the local vector spaces; it does not make the interacting correlations Gaussian or assert a classical field equation for an operator-valued connection.

## Part III. Removing the ultraviolet cutoff

### Blocking, gauges and local Gaussian integration

*Units: [III.1 — The block-spin step and the symmetric gauge fixing](../units/III.1.md); [III.3 — Free lattice kernels and covariances](../units/III.3.md); [III.4 — Gaussian integration: change of Gaussian sector, determinants, window law](../units/III.4.md); [III.6 — The stationary branch: background field of the effective action](../units/III.6.md).*

Each block transformation is an exact positive Markov kernel of total mass one. It relates fine links to coarse links through a local predictor and a penalty. Auxiliary choices of trees and charts are averaged compatibly with lattice symmetries. In the small-curvature region an intrinsic minimizing construction provides the gauge and background. Elsewhere, eligible local tree gauges still permit an exact decomposition. One never assumes that all configurations admit the small-field description.

The background is a local analytic stationary branch of the effective action on a gauge slice. Coercivity comes from the curvature quadratic form together with the blocking penalty. An implicit-function argument constructs the branch, while separate estimates control local sup norms and derivatives uniformly in the physical period. Existence of this branch is weaker than a statement that the full action has a unique global minimizer, and that stronger statement is unnecessary.

The free covariance is built from the actual block filters, including alias contributions and zero modes. Schur complements describe successive integrations. The covariance of the fluctuations removed in one block step has an effective gap and exponential spatial decay on that block scale; analytic momentum strips give corresponding derivative and locality estimates. These are auxiliary fluctuation covariances. Their decay is not a mass gap for the continuum theory.

Changing from Haar variables to Gaussian coordinates keeps the Jacobians, determinant factors and inactive Haar variables. Local inverses can be approximated in a finite window with exponentially small error in the window radius. Expansions of the logarithmic determinant then separate local terms from summable tails. Changes of local gauge must be compared together with their Jacobians: a determinant calculated in isolation would not give the effective action. This local, quantitative use of gauge fixing and backgrounds follows the structure of Balaban's ultraviolet analysis, with additional symmetry and observable requirements.

### Connected expansions and the large-field problem

*Units: [III.5 — Cluster expansion of the polymer gas](../units/III.5.md); [III.8 — Connected activities and backward dependence cones](../units/III.8.md); [III.10 — One full nonlinear renormalization step: bounds on irrelevant terms](../units/III.10.md).*

Gaussian integration produces interactions between polymers. A connected cluster expansion writes the logarithm of the partition function as a sum of connected terms, bounded by tree estimates of the Brydges type. The relevant smallness condition is local summability through a site. The vacuum logarithm may be extensive, but deleting or changing a region $Y$ changes it by at most $C|Y|$. Ratios defining local correlations therefore remain controlled as the volume increases.

The small-field cutoff is chosen above the typical Gaussian fluctuation scale. Schematically, with a reference inverse coupling $\widehat\beta$,

$$
t=\widehat\beta^{-1/2}P(\widehat\beta),
\qquad P(\widehat\beta)=\exp\bigl((\log\log\widehat\beta)^2\bigr).
$$

A connected large-field region with $n$ charged blocks costs an energy of order $\widehat\beta t^2n=P^2n$. Its suppression $e^{-cP^2n}$ dominates polymer entropy and the powers of $\widehat\beta$ incurred by charts and insertions. This requires a geometric energy bound: one must assign a charge to fine and coarse defects, including regions affected by the predictor, without charging the same energy too many times. The large-field sectors are then integrated, not discarded.

Connected activities also carry a history of dependence on earlier scales. Their backward dependence regions specify which fine variables can affect a given coarse contribution. Locality makes the changes between successive approximations summable. Formal Gaussian identities, such as the connected heat equation for $\log\mathbb E e^V$, organize finite Taylor orders and marked versions; analytic estimates bound the remainder. Factorization is used only where the relevant auxiliary supports are disjoint, not as a claim that physical correlations vanish at a distance.

The outcome is a full nonlinear step: after extracting the marginal and vacuum terms, the regular irrelevant activities and the large-field contributions again satisfy the inductive bounds, with the finite derivatives and marks required at that stage. This is substantially more than a perturbative computation around the trivial connection.

### The marginal term and the schedule

*Units: [III.7 — Matching the Wilson energy to fourth order](../units/III.7.md); [III.9 — The marginal flow: the running coupling and its reset](../units/III.9.md); [III.2 — Choosing the constants: the order of choice and the RG schedule](../units/III.2.md).*

Gauge invariance, lattice symmetry and simplicity leave one marginal curvature-squared term. The classical action is matched through fourth order, using local algebraic lifts that express admissible jets in curvature variables. The Gaussian determinant supplies its one-loop correction. For a block ratio $L$, the marginal change is

$$
\alpha(L)=-\kappa_G\log L+O(1).
$$

The logarithm comes from the four-dimensional momentum shell, whose leading radial behavior is $|k|^{-4}$. The color contraction and tensor calculation give the Yang–Mills coefficient $11/3$. The calculation belongs to the actual effective-action matching; defining a reference coupling with this slope would not by itself prove the running law. Its coefficient agrees, in the stated metric convention, with Gross–Wilczek and Politzer's one-loop asymptotic freedom.

Index scales so that $a_{m+1}=a_m/L_m$ and $a_0=1$. Coarse graining from $m+1$ to $m$ gives a recursion of the form

$$
\beta_m=\beta_{m+1}+\alpha(L_m)+\delta_m,
$$

with a controlled remainder $\delta_m$. Resetting the coupling and vacuum scalar is an exact rewriting of the density. The nonlinear step proves that the remaining activity still lies within its prescribed bounds. Bare couplings at level $N$ are chosen by a shooting argument so that $\beta_0=\bar\beta$, the same reference value for all cutoffs and volumes.

A fixed block ratio would accumulate the $O(1)$ error in each one-loop step at the same order as the number of steps. The construction instead uses large odd block ratios, increasing through very long stages. At each new stage it first fixes the required derivative and polynomial orders, then chooses the block ratio, thresholds and delays in the order their estimates require. The error per unit logarithmic scale tends to zero, while an individual block step remains negligible compared with the total logarithmic scale. Thus accumulated errors are $o(\log(1/a_m))$, giving

$$
\beta_{N,p,m}=\bar\beta+\kappa_G\log(1/a_m)
+o\bigl(\log(1/a_m)\bigr),
$$

uniformly in $N\ge m$ and $p$. The long stages also make every fixed field degree and derivative order available eventually. This order of choices is part of the proof: choosing a new schedule for each observable would not yield one quantum field theory.

### From action bounds to bounds on fields

*Units: [III.11 — Comparison with the free Gaussian measure: interacting rank and determinant budgets](../units/III.11.md); [III.15 — Cost accounting for observables and the remainder comparison](../units/III.15.md); [III.16 — Analytic toolkit](../units/III.16.md).*

For a local observable, an estimate that loses a fixed power of the coupling at every lattice site is useless. Gauge counting prevents this loss. On a connected cell with $c$ sites, the tree-gauge count has $3c+1$ remaining link variables, while $3c-3$ plaquette variables can be integrated with an energy bound. The resulting mismatch is four color variables, rather than a number proportional to $c$. In coupling notation this leaves a factor of the form $g^{-4\dim\mathfrak g}$, which can be paid locally. These determinant budgets are distinct from the one-loop determinant calculation.

Reflection-positive repeated-cell tests convert the local estimates into bounds for observable roots. Marked expansions must preserve the degree of the insertion and control the corrections needed to transport it. The cost estimates reserve a strictly negative exponent after every derivative, chart change, localization and comparison. Their purpose is not an optimal exponent but sufficient margin for all subsequent operations.

Free Gaussian correlations provide finite families of detectors for the quotient labels. Positivity and nondegeneracy of their Gram matrices, together with the interacting estimates, prevent fields from disappearing in the limit. This rank comparison also controls derivative and stress constructions later. The interacting hierarchy is compared with free theory for these finite-dimensional purposes; it is not replaced by it.

Among the analytic tools, one deserves emphasis: trace Hölder inequalities and the three-lines principle give complex-time estimates independent of the rank of the finite transfer operator. Cauchy estimates then bound changes in a time gap by its inverse length. Such estimates survive the increasing number of lattice degrees of freedom and are used in the compactness argument.

### One family, with an actual continuum limit

*Units: [III.12 — Bounds uniform in the volume and convergence as the spacing tends to zero](../units/III.12.md); [III.13 — Extension to all labels: one common Wilson family](../units/III.13.md); [III.14 — The construction run: flat representations and the ultraviolet rate](../units/III.14.md).*

The observable estimates have the scaling expected from engineering dimension, allowing an arbitrarily small power loss. For a degree-$d$ insertion observed at scale $a_m$, a typical reflected root bound has size $A a_m^{-d-\varepsilon}$, uniformly over the physical period and all sufficiently fine starting lattices. Bounds for normalized difference quotients require a separate construction: a difference is represented by a higher-degree label plus a small remainder and a term invisible to separated correlations. They do not follow by differentiating a sup-norm bound.

Fixed-volume convergence has an additional obstacle. Two fine cutoffs have different tuned bare couplings, so continuity at a fixed bare coupling does not compare them. The proof varies the prescribed reference coupling in a complex disc, constructs the corresponding analytic family of tuned trajectories, and obtains uniform bounds there. Cauchy estimates control its dependence on the tuning parameter. At a fixed intermediate scale the effective data become Cauchy as the fine cutoff is removed; the remaining error in reading a local observable can then be made small by moving that intermediate scale into the ultraviolet.

The construction also proves quantitative convergence of the flat quadratic representations. Schur-complement differences are estimated in curvature variables, modulo curl-null and zero-mode directions, rather than by inverting a massless operator on its entire space. This is a rate for the quadratic comparison, not a rate for the whole interacting action or for the final double limit.

All these estimates are arranged within the same schedule and insertion system for every finite degree. The output of Part III is therefore both a stable ultraviolet trajectory and a common, volume-uniform theory of renormalized observables. Balaban's multiscale analysis supplies the principal model for the trajectory; the passage from that trajectory to one complete hierarchy of local fields is a separate major burden.

## Part IV. Infinite volume and smooth Euclidean correlations

*Unit: [IV.1 — Infinite volume: extraction of a subsequence and the Euclidean axioms of the limit](../units/IV.1.md).*

The infinite-volume argument uses the reflection-positivity and chessboard methods associated with Fröhlich–Israel–Lieb–Simon and lattice gauge reflection positivity. A local product is reflected into a repeated pattern of cells. The corresponding root bounds from Part III control the original correlation independently of the number of cells. This gives local boundedness on separated configurations, without any clustering estimate.

Equicontinuity first comes on configurations separated in a coordinate direction. A transfer representation expresses the correlation as a trace of insertions separated by positive powers of a transfer operator. Complexifying the gaps, applying the rank-independent trace estimates, and using Cauchy's inequality bounds the change under a small displacement. Countably many degree spaces and compact configuration sets can then be handled by one diagonal Arzelà–Ascoli extraction.

Coordinate separation is stronger than distinctness: two distinct points may have equal time coordinates. The passage to all separated configurations therefore needs more than the first compactness argument. Lattice integration by parts represents differences by derivative labels. Uniform bounds and finite-dimensional rank control identify fixed derivative maps $\partial_\mu:F_d\to F_{d+1}$ after taking the quotient by null labels. Iterating the distributional differentiation identities gives local regularity of every order, hence smooth kernels throughout the configuration space of distinct points. Polynomial bounds control their approach to collisions.

Translations, permutations, conjugation and reflection positivity pass from the lattice. Full rotational invariance still requires Part VI. The extraction may initially refine both mesh and volume sequences; Part III's fixed-volume Cauchy theorem identifies each extracted mesh limit with the unique limit along the entire chosen mesh sequence. This removes the mesh refinement from the final statement while retaining the volume refinement.

This is the compactness route of constructive field theory, in the spirit of Glimm–Jaffe, with the model-specific work concentrated in the uniform observable and derivative bounds. It gives no decay of connected correlations at large distance and no reason for different volume subsequences to agree.

## Part V. Phases and relativistic reconstruction

*Units: [V.1 — Decomposition of the limit into phases](../units/V.1.md); [V.2 — Osterwalder-Schrader reconstruction of a Wightman theory](../units/V.2.md); [V.3 — Reconstruction for every phase and the reconstructed theory](../units/V.3.md).*

Reflection positivity first constructs an OS Hilbert space for the mixed hierarchy: positive-time field words have a semidefinite Gram form, and one quotients its null space and completes. Time translation gives a contraction semigroup $e^{-tH}$, $H\ge0$. There may be many zero-energy vectors. Assuming the vacuum is already unique here would assume precisely the clustering that has not been proved.

A thin-slab bound makes this Hilbert space usable. A word $A$ inserted inside a time slab defines a bounded operator $B_{s,A}$ that prepends the word and advances the other insertions by the slab width. To prove boundedness, one estimates a long train of reflected copies of $A$ together with an arbitrary exterior word. The estimate charges each repeated copy, but charges the exterior word only once. Taking high roots removes that exterior cost. The resulting bounds have controlled growth in word length and inverse separation. This is the link between the lattice cell estimates, the phase algebra and reconstruction.

Let $P_0$ project onto $\ker H$. The compressed operators

$$
M_A=P_0B_{s,A}\big|_{\ker H}
$$

generate a commutative unital $C^*$-algebra. Commutativity follows by separating clusters in Euclidean time and using the established spacetime symmetries. Its Gelfand spectrum is $X$, and the mixed vacuum state gives $\nu$. The vacuum is cyclic and separating for this algebra, giving full support. A character defines $S^\xi(A)=\xi(M_A)$, independently of the auxiliary slab placement. Positivity, differentiation and the relevant local identities pass to each character. The same quotient fields survive in all phases; the free-detector and norm estimates rule out an additional phase-dependent loss of labels.

The OS reconstruction follows the classical Osterwalder–Schrader and Glimm–Jaffe framework, but its analytic hypotheses must be obtained from separated-point data. Slab operators and the time semigroup give functions holomorphic in ordered complex times. Polynomial bounds as the imaginary gaps shrink produce tempered boundary distributions on joint Schwartz tests. The limits hold as the whole ordered vector of heights tends to zero, sufficiently strongly to compare two independently heated words. Their Gram matrices converge to the Wightman Gram matrices, proving positivity and identifying the reconstructed Hilbert space with an OS subspace.

Rotation Ward identities become infinitesimal boost identities after continuation and yield real Lorentz covariance. Positive time energy combined with Lorentz covariance gives the forward-cone spectrum condition. Fourier–Laplace continuation then supplies the tube functions used in locality. For adjacent spacelike-separated fields, the two orderings have overlapping analytic germs; Euclidean permutation symmetry identifies them. Adjacent exchanges generate the required local commutativity. Finally, quotienting finite words by the Wightman null space makes smeared fields act by prepending a letter. This constructs their common invariant domain, adjoints and cyclic vacuum. Analytic uniqueness transfers faithfulness from the Euclidean quotient labels.

There remains a distinction between almost every character and every character. A variance argument first gives vacuum uniqueness almost everywhere. A further argument uses locality of time-averaged commutators, positivity of spatial Fourier measures and the cone condition $|\mathbf p|\le E$. In three spatial dimensions it yields, for finite field-word vectors, the uniform estimates

$$
\mu_{A\Omega_\xi}(0<E\le u)\le M_Au^2,
\qquad
0\le\langle A\Omega_\xi,(e^{-sH_\xi}-P_{0,\xi})A\Omega_\xi\rangle
\le M_As^{-2}.
$$

These bounds hold for $0<u\le1$ and $s\ge1$, with $M_A$ independent of the phase. Continuity in $\xi$, full support and the uniform heat bound extend uniqueness to every phase. The OS comparison becomes onto, and the phase field representations are irreducible. Phase Wightman distributions also average to the boundary distribution of the mixed hierarchy. These polynomial estimates allow spectrum arbitrarily close to zero; they do not imply exponential clustering or a mass gap.

## Part VI. Restoring rotations and constructing the stress tensor

*Units: [VI.1 — Ward identities, the rotation action and the conserved stress tensor](../units/VI.1.md); [VI.2 — The free Maxwell stress tensor and the local Ward charge](../units/VI.2.md).*

The lattice does not have continuous rotations, and translation-invariant continuum limits need not automatically acquire them. The proof constructs the symmetry through local stress fluxes. It needs an initial reflection-positive Hilbert space and free short-distance comparison, but not an already Poincaré-covariant interacting theory.

Free Maxwell theory provides two finite-dimensional facts. Among the real centered degree-four symmetric tensors with the lattice tensor symmetries, the conservation equation singles out a one-dimensional space. Its generator is normalized by a local flux computation: the fundamental solution identity for the Laplacian gives the translation charge, and Wick's rule extends it to polynomial fields. Thus both the candidate tensor and the sign and magnitude of its charge are determined. Comparison of the interacting and free label spaces transfers the relevant ranks and supplies a nonzero conserved interacting tensor $J$.

On the lattice, Haar integration by parts gives identities for changes of links, retaining the Jacobian and the terms caused by broken continuous symmetry. The ultraviolet estimates control their errors and produce continuum shell identities. Initially the shell action is described by label maps $p_\nu$ and angular maps, not by an already identified spacetime action. Differentiating the shell identities and comparing with Maxwell theory proves $p_\nu=c\,\partial_\nu$ with $c\ne0$. Dividing $J$ by $c$ fixes the stress normalization.

For the normalized tensor $T$, the translation identity takes the familiar form

$$
-\sum_\mu\int \partial_\mu\chi(y)\,
S^s\bigl(T_{\mu\nu}(y)A(x)B\bigr)\,dy
=\partial_{x^\nu}S^s\bigl(A(x)B\bigr).
$$

Here $s$ is the mixture or a phase, $B$ is a separated spectator word, and $\chi\in C_c^\infty$ equals one near $x$ with support avoiding the spectators. The derivative of $\chi$ is supported away from every insertion. The identity therefore needs no choice of coincident-point extension. Weighting the flux by a rotational Killing field gives the angular identity.

The hard global issue is the flux at infinity. A spectral estimate, using reflection positivity along different coordinate axes, makes the exterior angular flux vanish and gives Ward identities on collinear configurations. It is a derived flux estimate, not an assumed mass gap or a general exponential-decay theorem. Positive Gram forms then provide analytic vectors for transverse motions. Analyticity propagates the Ward identities from a line through separated configurations; smoothness handles the remaining limits.

The resulting infinitesimal label transformations must satisfy the rotation brackets and integrate to the group. An undetected bracket defect would be null; finite-dimensional free comparison eliminates it. Perturbation and intertwining arguments compare the representations with the known Maxwell rotation representations, obtaining an actual $O(4)$ action with the appropriate global representation structure. This avoids stopping at a formal Lie-algebra Ward identity. Averaging and normalization give a conserved tensor transforming under this action. Its charges continue to the relativistic theory in every phase.

The classical ingredients are stress-tensor Ward identities, reflection positivity, analytic vectors and finite-dimensional representation theory. Their use here addresses a specific obstruction in the lattice construction: restoration of continuous symmetry and its normalization without infrared uniqueness or a gap. The stress tensor also supplies the field whose quantum trace identifies a departure from free theory in Part VII.

## Part VII. Identification as Yang–Mills theory

### Maxwell behavior and asymptotic freedom

*Units: [VII.1 — Short distances: convergence to free Maxwell fields](../units/VII.1.md); [VII.5 — Asymptotic freedom of the running coupling](../units/VII.5.md); [VII.6 — Scaling variants and fixed-field estimates](../units/VII.6.md).*

The free reference theory consists of $\dim\mathfrak g$ Maxwell colors, with the gauge-invariant polynomial labels appropriate to $G$. Its lattice curvature covariances converge to derivatives of the continuum Green function away from collisions. Subtracting self-contractions and applying Wick recursion gives convergence of composite-field correlations and their derivatives. A strict reflected Gram-positivity argument identifies the null relations exactly with the free curvature equations and Bianchi relations. Finite sets of correlations therefore detect every nonzero quotient label.

The interacting RG estimates compare renormalized fields with this reference at short distances. They give finite-dimensional frame changes under which rescaled mixed-state correlations converge, with every fixed number of derivatives, uniformly on separated compact sets. One common scaling sequence works for all finite degrees. The stress tensor has its Maxwell normalization in this comparison. The field content is consequently as large as the reference quotient, while its finite-scale correlations remain those of the interacting construction.

The frames matter: the conclusion is not an assertion that every initially chosen composite operator has a fixed normalization with a limit along every radius. A moving real stopping parameter in the RG permits refinements of arbitrary prescribed sequences of radii. This extra flexibility is used to prove the full trace asymptotic below. The low-degree fixed-field estimates also exploit the absence, for simple $\mathfrak g$, of nonconstant invariant fields below degree four.

For the inverse action coefficient, Part III gives directly

$$
g_{N,p}(m):=\beta_{N,p,m}^{-1/2},
\qquad
g_{N,p}(m)\sqrt{\log(1/a_m)}\longrightarrow\frac1{\sqrt{2b_0}},
$$

uniformly over the allowed finer cutoffs and volumes. This is the leading logarithmic running in the construction's action normalization. It neither computes two-loop corrections nor identifies an arbitrary separately defined physical coupling scheme. The $SU(N)$ parenthesis in VII.5 uses the conventional value $C_A=N$; with the metric fixed above, the defining representation instead gives $C_{\mathfrak g}=2N^2$. The coupling must be rescaled when changing between these conventions.

### The trace anomaly and the exclusion of free profiles

*Units: [VII.2 — The trace of the stress tensor and the trace anomaly](../units/VII.2.md); [VII.3 — The theory is not free: Gram positivity and exclusion of free-field profiles](../units/VII.3.md).*

Classically the four-dimensional stress tensor is traceless. Quantum mechanically, changing scale changes the coefficient of curvature squared. The proof follows this variation through the fine and coarse actions and through the normalization of the stress observable. Fourth-order matching and the marginal one-loop coefficient identify the leading trace insertion with a curvature-squared field suppressed by one inverse logarithm. This is a stronger calculation than ordinary leading Maxwell convergence: the latter would see only the vanishing classical trace.

Select a phase $\xi_*$ with the required trace scaling properties and center the trace there:

$$
\Theta=\sum_\mu T_{\mu\mu}
-S^{\xi_*}\!\left(\sum_\mu T_{\mu\mu}\right)\mathbf1,
\qquad
G_\Theta(r)=S^{\xi_*}\!\left(\Theta(-re_0/2)\Theta(re_0/2)\right).
$$

The result is

$$
\lim_{r\downarrow0}r^8\log^2(1/r)\,G_\Theta(r)
=\frac{3\dim_{\mathbb R}\mathfrak g}{\pi^4}>0.
$$

The free curvature-squared two-point calculation supplies the coefficient; the running and trace normalizations cancel the explicit beta-function coefficient in this amplitude. The logarithm is a suppression: $G_\Theta(r)$ is of order $r^{-8}/\log^2(1/r)$. Estimates at fitted lattice positions are promoted to a limit at arbitrary radii using the flexible stopping scales and the positive spectral representation, which makes the time-axis two-point function monotone. Thus the displayed result is not merely a subsequential scaling law.

Finite Wick polynomials in finitely many free fields give time-axis two-point profiles built from finite products and sums of mass-shell Laplace kernels, with derivatives represented by momentum factors. Near zero these have expansions in integer powers of $r$ and nonnegative integer powers of $\log r$. Such a profile cannot have the positive finite limit displayed above after multiplication by $r^8\log^2(1/r)$. This proves the stated nonfree test. It does not exclude every composite of Gaussian fields or a generalized free field with a continuous mass distribution. Stronger Maxwell-Fock countertests in the detailed theorem have additional compatibility and locality hypotheses.

### The operator product expansion

*Unit: [VII.4 — Operator product expansion and contact extensions](../units/VII.4.md).*

When several insertions occupy a small cluster, the RG replaces their joint effect on remote observables by a local field at the cluster center. Projection through degree $D$ leaves an irrelevant remainder with one additional degree of smallness. Finite remote detectors identify the projected field, and coherent choices on successive degree quotients give a single system of coefficient functions. The high-root and ground-algebra bounds make the remainder estimate valid for every character, not just for the mixed expectation.

Let the input labels have total degree $w$, cluster within distance $Mr$ of $o$, and remain mutually separated by at least $\eta r$. Keep spectators a fixed distance from $o$ and from one another. For every $D$ and $\varepsilon>0$,

$$
S^s\!\left(\prod_i A_i(x_i)B\right)
=\sum_{d_\alpha\le D}c_\alpha(A;x,o)
S^s\!\left(O_\alpha(o)B\right)+R_{D,s},
$$

with finitely many channels per degree and, for sufficiently small $r$,

$$
|c_\alpha(A;x,o)|\le r^{d_\alpha-w-\varepsilon},
\qquad |R_{D,s}|\le r^{D+1-w-\varepsilon}.
$$

The same coefficients work for every truncation, spectator word and state $s\in\{\mathrm{mix}\}\sqcup X$. The small-radius threshold can depend on the fixed labels, truncation and separation parameters; it is not uniform over arbitrary spectator complexity. The small power loss absorbs subpower costs in the RG schedule. This is a nonperturbative finite asymptotic expansion, not a claim of convergence as $D\to\infty$ or agreement with perturbation theory at every loop order.

The estimates extend to finite nested clusters and integrated versions. Taylor subtraction near collision sets, organized over nested collision patterns, also gives distributional contact extensions. This is related to the local-subtraction methods of constructive field theory and distributional renormalization. The proof establishes neither uniqueness of these extensions, their full OS positivity on unrestricted Euclidean tests, nor convergence of lattice correlations on the diagonals. They are separate from the unrestricted **Minkowski** Schwartz distributions supplied by reconstruction.

## Part VIII. Assembly of one theory

*Unit: [VIII.1 — Assembly of the main theorem](../units/VIII.1.md).*

The assembly fixes one ultraviolet construction before any extraction order is chosen. All refinements then refer to its original lattice insertions, couplings and field normalizations. The same limiting table supplies the differential fields, stress tensor, phase space, continuations, OPE and selected trace. Fixed-volume uniqueness identifies the full-mesh limits with the rows used by the extracted table. The phase theories realize the boundary values of those same correlations.

This compatibility is substantive. Separate existence results for a Wilson limit, a Wightman theory and a nonfree OPE would not identify them with each other. The construction proves the connections. Conditional estimates in earlier parts are supplied with the required hypotheses by the preceding constructions; in particular, the large-field step, free Maxwell data and boundary-value estimates are inputs that are proved, not additional assumptions in the final theorem. No new limiting procedure or infrared estimate is introduced at this last stage.

## What advances the earlier program, and what remains difficult

Balaban's program provides the model for the ultraviolet analysis: gauge fixing, stationary backgrounds, fluctuation covariances, large-field estimates and renormalization of the marginal action. Brydges's methods organize connected expansions; reflection positivity and chessboard estimates connect them with observable bounds; OS reconstruction turns Euclidean correlations into quantum fields. These are structural debts, not merely parallels in terminology.

The advance supported by the unit outlines is their extension and combination into a construction with a common set of renormalized composite fields. The difficult additional requirements include symmetry-preserving blocking, volume-uniform estimates for every fixed field degree through a single staged schedule, fixed-volume convergence despite cutoff-dependent tuning, recovery of derivatives and nondegenerate field spaces, restoration of continuous rotations, reconstruction in every phase, and one phase-independent OPE prescription. The logarithmic stress-trace law gives a quantitative identification beyond the statement that the leading ultraviolet reference is Maxwell theory. The unit outlines do not support a priority claim for every individual technique or a theorem-by-theorem historical comparison with Balaban's papers.

Three obstructions explain much of the proof's size. First, gauge degeneracy and large curvature must be controlled without losing a factor at every site. Second, estimates on an effective action must be strengthened to estimates on arbitrary composite insertions, their derivatives and their continuum limits. Third, neither continuous symmetry nor vacuum uniqueness can be assumed when passing from a lattice mixture to relativistic phases. The proof addresses these by local energy accounting, marked multiscale estimates, and reflection-positive Hilbert-space arguments, respectively.

Some details of the mathematical exposition remain provisional in the unit outlines. These include the full identification of the one-loop shell calculation with the gauge-fixed determinant, the exact correspondence between several nonlinear-step budgets, portions of the exterior-flux estimate, and the internal estimates for nested contact subtractions. The interfaces locate their supplying results, but do not turn every statement-level account into a complete informal proof. The unit outlines also distinguish the covariance chosen for Gaussian integration from the stationary Hessian; they should not be identified without the relevant comparison. These are limitations of the available detailed explanations, distinct from the mathematical conclusions left open by the theorem.

Those open conclusions are substantial: infrared uniqueness and a mass gap, universality across lattice choices, full perturbative matching, and a canonical positive Euclidean extension across collisions. Even proving that the phases of one mixture agree would not by itself prove independence of the volume subsequence. The present construction supplies extensive local and short-distance information while leaving these long-distance and uniqueness questions unresolved.

## Reading guide

The [exact statement](statement.md) distinguishes the public theorem from the stronger construction. For the mathematical mechanisms, the following routes through the units are useful.

| Question | Units to read |
|---|---|
| What are the fields, and how are their normalizations fixed? | [II.1](outline/units/II-1.md), [III.11](outline/units/III-11.md)–[III.13](outline/units/III-13.md), [VII.1](outline/units/VII-1.md) |
| How does the proof extend Balaban's ultraviolet analysis? | [III.1](outline/units/III-1.md), [III.4](outline/units/III-4.md)–[III.10](outline/units/III-10.md), then [III.12](outline/units/III-12.md) |
| Where does the one-loop coefficient enter? | [III.7](outline/units/III-7.md), [III.9](outline/units/III-9.md), [VII.5](outline/units/VII-5.md); keep the metric convention fixed |
| Why does one family serve every observable and limit? | [III.2](outline/units/III-2.md), [III.13](outline/units/III-13.md)–[III.14](outline/units/III-14.md), [VIII.1](outline/units/VIII-1.md) |
| How is infinite volume obtained without an infrared RG? | [III.12](outline/units/III-12.md), [IV.1](outline/units/IV-1.md) |
| Why are there phases, and why does every phase reconstruct? | [V.1](outline/units/V-1.md)–[V.3](outline/units/V-3.md); [VII.4](outline/units/VII-4.md) for the repeated-word bounds |
| How are rotations and the stress tensor recovered? | [VI.2](outline/units/VI-2.md), [VI.1](outline/units/VI-1.md), with [VII.1](outline/units/VII-1.md) for free comparison |
| What makes the theory nonfree? | [VII.2](outline/units/VII-2.md)–[VII.3](outline/units/VII-3.md), with [VII.6](outline/units/VII-6.md) for arbitrary short-distance scales |
| What does the OPE say about collisions? | [VII.4](outline/units/VII-4.md), then the contact conclusions in [VIII.1](outline/units/VIII-1.md) |

 The [architecture](outline/README.md) explains how the ultraviolet outputs feed the later arguments.
