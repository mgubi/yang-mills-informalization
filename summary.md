# OpenAI's construction of four-dimensional quantum Yang–Mills theory: an overview of the proof

> **Level 2 of the [five levels](README.md#the-proof-at-five-levels-of-detail): the proof in one reading.** Written by an AI model from the [unit outlines](outline/units.md), then checked against the outlines and the Lean and edited by a second model. It will be revised as the unit outlines are completed.

## The theorem

Let $G\subset U(m)$ be a closed subgroup whose Lie algebra $\mathfrak g$ is simple and nonabelian, for instance $SU(N)$ with $N\ge2$; $G$ need not be connected. The main theorem is `YangMills.jointExistence`; its precise statement is in [statement.md](statement.md). It asserts that there is one family of Wilson lattice gauge theories for $G$ on four-dimensional tori, consisting of:

- spacings $a_N=1/D_N\downarrow0$ and physical side lengths $L_p\uparrow\infty$;
- bare couplings $\beta_{N,p}$ with $\beta_{N,p}/\log(1/a_N)\to b_\ast>0$ uniformly in $p$;
- insertions $I_{N,p}(v,y)$ indexed by tokens $v$, each a continuous gauge-invariant function of the links in a stencil of fixed size in lattice units around the site $y$.

The family has the following property. For every strictly increasing sequence $p(k)$ of volume indices there are a further subsequence $p(q(k))$ and a continuum hierarchy satisfying (1)–(5) below.

**(1) Lattice origin.** Let $\mathrm{Conf}_n\subset(\mathbb R^4)^n$ be the open set of configurations of distinct points. For every $n$, every list of tokens $v$ and every $f\in C_c^\infty(\mathrm{Conf}_n)$,

$$
\lim_{k\to\infty}\,\lim_{N\to\infty}\,a_N^{4n}\sum_{y}f(\hat y)\,\Big\langle\prod_{i=1}^nI_{N,p(q(k))}(v_i,y_i)\Big\rangle_{N,p(q(k))}=\int f(x)\,S^{\mathrm{mix}}(\pi v;x)\,dx .
$$

Here the sum runs over $n$-tuples of sites, $\hat y$ are their physical positions, and $\langle\cdot\rangle_{N,p}$ is the Wilson measure.
- The inner limit runs over the whole sequence of spacings, at every volume whose fundamental box contains the support of $f$; this holds for all large $k$.
- The test functions are joint functions of the $n$ points and vanish near all coincidences.
- One subsequence serves all $n$, $v$ and $f$.

**(2) Phases.** On $\mathrm{Conf}_n$, $S^{\mathrm{mix}}=\int_XS^\xi\,d\nu(\xi)$. Here $X$ is a compact metric space, $\nu$ is a probability measure of full support, and $\xi\mapsto S^\xi(a;x)$ is continuous. All correlations $S^s$, $s\in X\sqcup\lbrace\mathrm{mix}\rbrace$, are smooth and permutation symmetric on $\mathrm{Conf}_n$.

**(3) Reconstruction.** A selected phase $\xi_\ast$ carries a Wightman theory:
- a strongly continuous unitary representation of the proper orthochronous Poincaré group;
- spectrum in the closed forward cone;
- a vacuum that is unique up to scalars among translation-invariant vectors;
- fields that are operator-valued tempered distributions on the invariant domain spanned by field monomials applied to the vacuum;
- local commutativity and faithful field labels.

Its Wightman functions are boundary values, on product test functions, of the continuation of $S^{\xi_\ast}$ that is holomorphic in the ordered complex times.

**(4) Operator product expansion.** One system of coefficients, with finitely many local fields of each degree, satisfies finite-order OPE bounds in the mixed state and in every phase.

**(5) Nonfreeness.** Let $e_4$ be the time direction. A field $\Theta$ of degree 4 with vanishing vacuum expectation satisfies

$$
\lim_{r\downarrow0}\,r^8\log^2(1/r)\,G_\Theta(r)=\frac{3\dim_{\mathbb R}\mathfrak g}{\pi^4},\qquad G_\Theta(r)=S^{\xi_\ast}\big(\Theta(-\tfrac r2e_4)\,\Theta(\tfrac r2e_4)\big).
$$

Moreover, $G_\Theta$ agrees on no interval $(0,\delta)$ with a finite Wick profile, that is, a finite sum of products of free mass-shell kernels $\int E^q h(\mathbf p)(2E)^{-1}e^{-rE}\,d^3\mathbf p$.

The lattice data are fixed before the volume sequence. The refinement and all continuum objects may depend on that sequence.

**The stronger statement.** The theorem is a projection of a longer statement, `YangMills.constructed`. That statement holds for every value $b>0$ of the penalty parameter of the block-spin kernel; the public theorem takes $b=1$. It adds the following:
- The slope is $b_\ast=\kappa_G=11C_{\mathfrak g}/(24\pi^2)$.
- A token is a pair $(d,c)$, with $c$ in the space $V_d$ of gauge-invariant polynomials of weight at most $d$ in the curvature and its covariant derivatives (curvature has weight 2, and each derivative adds 1).
- The field spaces are $F_d=V_d/N_d$, where $N_d$ consists of the labels whose mixed correlations with all separated spectators vanish. The label space of the relativistic theory is the directed union of the $F_d$, so there is no finite field multiplet.
- $\Theta$ is the centred trace of a constructed conserved stress tensor.
- Every phase carries an irreducible Wightman theory, with low-energy bounds that are uniform in the phase.
- The correlations extend, though not uniquely, to distributions across coincident points.
- After finite-dimensional changes of frame, the rescaled correlations converge at short distance to those of $\dim\mathfrak g$ free Maxwell fields.
- Nested and integrated forms of the OPE hold, as do further nonfreeness tests.

This overview describes the proof of the stronger statement.

**What is not claimed.**
- There is no mass gap; the spectral bounds proved in every phase are polynomial.
- The infinite-volume limit is not shown to be unique or independent of the subsequence.
- The phases are not shown to agree, and $X$ is not shown to be a point.
- The mixed state is not shown to cluster.
- The limit is not shown to be independent of the lattice data.
- The two limits are taken in a fixed order. No diagonal limit, exchange of limits or rate of convergence is asserted.
- No phase is shown to be a limit of lattice states; the lattice limit is the mixture.
- The public theorem asserts nothing at coincident points and no Euclidean axioms. The construction proves those axioms internally.
- There is no continuum measure on connections, no Wilson-loop observable or area law, and no particle or scattering theory.
- Only finite Wick profiles are excluded. Generalized free fields with a continuous mass distribution, infinite sums and general composites of Gaussian fields are not excluded.
- The OPE is a finite-order bound and is not compared with perturbation theory.

**Normalizations.** On $\mathfrak g$, put $\langle X,Y\rangle_{\mathfrak g}=-\tfrac1m\mathrm{Re}\,\mathrm{tr}(XY)$, and define $C_{\mathfrak g}>0$ by $\mathrm{tr}(\mathrm{ad}X\,\mathrm{ad}Y)=-C_{\mathfrak g}\langle X,Y\rangle_{\mathfrak g}$. Two facts fix the coupling convention:
- $1-\tfrac1m\mathrm{Re}\,\mathrm{tr}\,e^X=\tfrac12|X|_{\mathfrak g}^2+O(|X|^4)$;
- each unoriented plaquette is counted once in the Wilson action.

Hence $\beta=1/g_0^2$ for the continuum action $\frac1{2g_0^2}\int\sum_{\mu<\nu}|F_{\mu\nu}|^2_{\mathfrak g}$. The constructed couplings satisfy, uniformly in $p$,

$$
\frac{\beta_{N,p}}{\log(1/a_N)}\longrightarrow\kappa_G=\frac{11C_{\mathfrak g}}{24\pi^2}=2b_0,\qquad b_0=\frac{11C_{\mathfrak g}}{48\pi^2}.
$$

For $SU(N)$ in the defining representation, $C_{\mathfrak g}=2N^2$ and $\kappa_G=11N^2/(12\pi^2)$. In that case $\beta$ is the usual Wilson coupling $2N/g^2$, and the law above is the one-loop running $1/g^2\simeq(11N/24\pi^2)\log(1/a)$ of Gross–Wilczek and Politzer.

## The strategy

**Order of limits.** One lattice family is fixed first. Correlations of renormalized insertions are taken to the limit $a_N\to0$ at fixed volume, along the whole sequence of spacings. The volume then tends to infinity along a subsequence of the prescribed one. The renormalization group (RG) is used only for the first limit. Its levels run from the Wilson lattice (level $N$) to the torus of side $L_p$ at unit spacing (level $0$). The bare coupling is tuned so that the effective coupling at level $0$ is one fixed number $\bar\beta$, the same for all $N$ and $p$. No RG step is taken above the unit scale; infinite volume is reached by compactness, from local bounds that are uniform in the volume.

**Ultraviolet construction (Parts I–III).** At each level the density is written as two pieces:
- an explicit gauge-invariant action, whose normalized curvature-squared coefficient is the running coupling $\beta_{N,p,m}$;
- polymer activities: regular ones, controlled where the curvature is small, and forced ones, which carry the large-field regions.

One block-spin step integrates the fine links against an exactly normalized, gauge-covariant probability kernel:
- In the small-field region this is a Gaussian integral around a stationary background field, organized by a cluster expansion.
- Large-field regions are kept and paid for by a lower bound on the quadratic energy of the step.
- The marginal term is absorbed into the coupling. The coupling changes by the one-loop amount $\kappa_G\log L_m$ up to an error, and block ratios that grow slowly along the levels make the accumulated error $o(\log(1/a_m))$.

The same steps transport inserted observables. This second layer produces what later parts use:
- chessboard bounds on renormalized insertions and on their difference quotients, uniform in the volume;
- convergence at fixed volume, proved through analytic dependence on a tuning parameter.

**Euclidean limit (Part IV).**
- Chessboard bounds make the correlations locally bounded, uniformly in the volume.
- A transfer-matrix representation and complex interpolation make them equicontinuous, and Arzelà–Ascoli gives the subsequence.
- Difference quotients of insertions are close to insertions of higher degree. This yields derivative maps on the field spaces and kernels that are smooth on $\mathrm{Conf}_n$.
- The limit inherits translations, the signed permutations of the axes and reflection positivity. It does not inherit continuous rotations or clustering.

**Symmetry (Part VI).**
- Lattice integration by parts gives shell identities for a conserved tensor. Its normalization is fixed by short-distance comparison with free Maxwell theory.
- Reflection positivity controls the flux at infinity, and analyticity extends the Ward identities to all separated configurations.
- The infinitesimal rotations integrate to an $O(4)$ action, again by comparison with free Maxwell theory.

**Phases and reconstruction (Part V).**
- The zero-energy subspace of the Osterwalder–Schrader (OS) space of the mixed state carries a commutative $C^\ast$-algebra; its proof of commutativity uses the $O(4)$ action. The characters of this algebra are the phases.
- Each phase is reconstructed as a Wightman theory, from bounds on operators inserted in thin time slabs. Lorentz covariance comes from the Ward identities.
- A low-energy spectral bound, uniform in the phase and derived from locality, upgrades vacuum uniqueness from almost every phase to every phase.

**Identification (Part VII).**
- Along sequences of scales tending to zero, the theory converges, after changes of frame, to free Maxwell theory.
- The one-loop coefficient produces an inverse-logarithmic law for the trace of the stress tensor, and that law excludes finite Wick profiles.
- The RG also yields the OPE.

The logical order is not the order of the parts. Part VI uses the OS spaces of the mixed state from Part V and the free comparison from Part VII. Part V uses the $O(4)$ action from Part VI. Part VIII assembles everything for one family and one limit table.

## Part I. The lattice theory

*Unit: [I.1 — Lattice, symmetries, gauge groups and the Wilson measure](outline/units/I-1.md).*

On $\Lambda_\ell=(\mathbb Z/\ell\mathbb Z)^4$, a configuration assigns $U(y,\mu)\in G$ to each positively oriented link. With $h$ the normalized Haar measure, the Wilson measure is

$$
d\mu_{\ell,\beta}(U)=Z^{-1}\exp\Big[-\beta\sum_y\sum_{\mu<\nu}\big(1-\tfrac1m\mathrm{Re}\,\mathrm{tr}\,U_{y;\mu\nu}\big)\Big]\prod_{(y,\mu)}dh\big(U(y,\mu)\big).
$$

The energy lies in $[0,12\ell^4]$, so this is a probability measure for every real $\beta$. It is invariant under gauge transformations, translations and the signed permutations of the axes.

**Lattice schedule.**
- Block ratios are odd integers $L_m\ge3$, with $D_{m+1}=D_mL_m$ and $a_m=1/D_m$.
- The level-$m$ torus at volume $p$ has $L_pD_m$ sites per side, with $4\mid L_p$.
- Odd ratios make the coarse lattice compatible with the signed permutations.
- Supports are measured by cover numbers by balls of radius $B$, which obey a coarsening inequality uniform in the volume.

**Group facts.** On $G$ the unit proves:
- a real-analytic logarithm near $1$;
- an equivariant nearest-point retraction onto $G$, whose derivative is the orthogonal projection onto $\mathfrak g$;
- a curvature map $F(u)\in\mathfrak g$ with $|F(u)|\le\lVert u-1\rVert/\sqrt m$ and $F(vuv^{-1})=\mathrm{Ad}(v)F(u)$.

These are qualitative statements about single group elements; quantitative control comes in Part II.

**Role of simplicity.** Simplicity enters through one fact: every $\mathrm{Ad}$-invariant symmetric bilinear form on $\mathfrak g$ is a multiple of $\langle\cdot,\cdot\rangle_{\mathfrak g}$. Together with lattice symmetry, this leaves a single marginal coupling. The same fact is used in the one-loop computation and in the uniqueness of the stress tensor.

**Reflection positivity.** The Wilson measure is reflection positive for every $\beta\ge0$, for reflections through planes of sites and through planes between sites (the argument of Osterwalder and Seiler). This is proved in Part IV for the original lattice measure, not for an effective action, and it is used only through the chessboard inequality.

## Part II. Fields, insertions and polymer activities

*Units: [II.1 — Field labels and their lattice representatives](outline/units/II-1.md); [II.2 — Polymer activities, norms, the Wilson family, the construction record, reflection-positive cells](outline/units/II-2.md).*

**Labels.** In radial gauge, a connection near a point is described by its Taylor coefficients, and the coefficient of order $j$ has weight $j+2$. $V_d$ is the space of $\mathrm{Ad}(G)$-invariant complex polynomials of weight at most $d$ in these coefficients. Equivalently, it consists of the gauge-invariant polynomials of weight at most $d$ in the curvature and its covariant derivatives. It is finite-dimensional, and $1\in V_d\subset V_{d+1}$.

**Lattice representatives.** The basic lattice variables are "slots": plaquette curvatures transported to a base point along walks.
- For each $d$, finitely many slots have linearizations with no common kernel on the jets of weight at most $d$.
- The slot map then has an analytic $\mathrm{Ad}$-equivariant left inverse near $0$; it is chosen non-constructively.
- Compose a basis of $V_d$ with the order-$d$ Taylor polynomial of this inverse, and average over the signed permutations. For each label $c$ this gives a gauge-invariant polynomial $\Phi_c$ in the link entries of a fixed box stencil.

Two properties follow:
- On links obtained by parallel transport of polynomial radial-gauge potentials at spacing $h$, $\Phi_c$ reproduces the classical label to order $h^d$.
- Suppose the plaquettes near the stencil have chord at most $t$. Then a component with $f\ge1$ curvature factors, and its derivatives, are $O(t^f)$. Conversely, a function with such bounds determines a label with uniformly bounded coefficients.

**Renormalized insertions.** The insertion of $v\in V_d$ at a site $o$ is

$$
O_{N,p}(v,o)=a_N^{-d}\,\Phi^{(d)}_{S_{1/\theta_N}\tau^{-1}v}(o).
$$

- $S_t$ multiplies the coefficient of a component with $f$ curvature factors by $t^f$.
- $\theta_N$ is the small-field threshold of the finest level.
- $\tau$ is a linear automorphism of $V_d$. It commutes with conjugation and with the signed permutations, and it fixes the unit.

The RG defines $\tau$. The running label coordinates of an insertion obey a transfer relation from level $N$ down to level $m$, and $\tau$ is their value at a reference level $r(d)$ fixed in advance. So each insertion is normalized to have running coordinates exactly $v$ at level $r(d)$. All labels of weight at most $d$, including the unit, may mix; no triangular structure is imposed. The large-field part of the inserted density goes into reserved forced polymers, so the construction never divides by the vacuum density.

**Equation relations.** Haar invariance gives the lattice Schwinger–Dyson identity $\langle\langle A,\nabla_eS_W\rangle\,S\rangle_\beta=0$ for $S$ independent of the link $e$. Products of such forces with slot polynomials span the linearized free-Maxwell equation ideal, up to terms of higher weight. They give lattice observables whose correlations with distant spectators vanish exactly. Two facts are established later, through the comparison with free theory: these relations become null in the limit, and they exhaust $N_d$.

**Polymers, budgets and marks.**
- A polymer activity has a finite support of sites.
  - Regular activities are anchored at a site and measured by suprema of derivatives over small-field configurations.
  - Forced activities carry the large-field regions, together with an inventory of flagged sites.
- Activities are controlled by budgets summed through each site, $\sum_{X\ni x}e^{a\,\mathrm{cov}_B(X)}\lVert K_X\rVert\le\text{budget}$.
- Insertions carry marks: commuting variables $\lambda$ with $\lambda^2=0$, one for each label or site that may occur. Exponentials of marked quantities are finite sums, and logarithms are finite recursions in the number of marks.
- The weighted norm $\lVert a\rVert_w=\sum_x\prod_{\lambda\in x}w_\lambda\,|a(x)|$ is submultiplicative, so bounds do not grow with the number of marks.
- A tree-graph bound without factorials controls connected clusters of overlapping supports.

## Part III. The ultraviolet construction

### The block-spin step and the background field

*Units: [III.1 — The block-spin step and the symmetric gauge fixing](outline/units/III-1.md); [III.6 — The stationary branch: background field of the effective action](outline/units/III-6.md); [III.3 — Free lattice kernels and covariances](outline/units/III-3.md).*

At level $m$, relative to product Haar measure, the density is

$$
\rho_m(U)=\exp\big(v|\Lambda_m|-\beta\,\mathcal K(U)-\mathcal L(U)-\mathcal E(U)\big)\,\mathcal G(U).
$$

- $\mathcal K$ is built from lattice paths: a plaquette term, smeared curvature squares, and cubic and quartic polynomials in transported curvatures. It is averaged over the signed permutations and normalized so that its quadratic symbol at zero momentum is the identity; this fixes the meaning of $\beta$.
- $\mathcal L$ is a loop term independent of $\beta$.
- $\mathcal E$ is the sum of the regular activities times small-field indicators.
- $\mathcal G$ is the gas of forced activities.
- At the finest level, $\rho_N=e^{-\beta_{N,p,N}S_W}$.

**The kernel.** One step is $\rho_m(V)=\int k_\beta(V,U)\,\rho_{m+1}(U)\,dU$. Given the fine configuration $U$, a finite tag $t$ is drawn with probability $\lambda(U,t)$. Each coarse link is then drawn independently, with Haar density

$$
Z_\beta^{-1}\exp\Big(-\beta\kappa\big(1-\tfrac1m\mathrm{Re}\,\mathrm{tr}\,V_bQ_b(U,t)^{-1}\big)\Big),
$$

where $\kappa>0$ is the penalty. The predictor $Q_b$ is built in two stages:
1. On a patch of radius $(J+3)L$ around each coarse site, a gauge frame is chosen.
   - If all route holonomies on the patch are close to $1$, the frame is the unique minimizer of an averaged holonomy discrepancy.
   - Otherwise it is a uniformly drawn eligible axial gauge; such gauges exist for every configuration.
2. Fine transports of length $L$, read in these frames, are combined by a nonlinear (minimizing) average with a $J$-fold convolution weight, with a random fallback.

Properties of the kernel:
- Haar invariance gives $\int k_\beta(V,U)\,dV=1$ exactly.
- The kernel is exactly covariant under fine gauge transformations and the lattice symmetries.
- Hence $\int\rho_m$ equals the Wilson partition function at every level, and the step is defined without any small-field assumption.

**Background field.** For the integration, the links of a spanning forest are set to $1$, and each remaining link is $\exp(a)$ times a fixed lift of the coarse field $x$. The background is the critical branch $a=\rho(x)$ of the classical Taylor model of the action (quadratic, cubic and quartic terms) plus the blocking penalty, at fixed $x$. The steps are:
- The Hessian at the flat field is a positive "bed" form plus the penalty.
- Each non-tree link is bounded by the curvature in its block plus the response of the predictor. With this, the Hessian is uniformly positive in the vertical directions, with a constant independent of the volume and the forest.
- The analytic implicit function theorem then gives $\rho$ as a locally unique analytic germ with explicit linear part. Statements with a uniform radius and localized jets give control independent of the volume.
- The branch is not shown to be a global minimizer, and this is not used.
- Changing the forest multiplies the Hessian determinant by the square of a Jacobian and the Haar measure by the Jacobian itself. So the critical value and the one-loop term do not depend on the forest.

**Free kernels.** The free covariances are written in Fourier space through the actual averaging filters, which are entire and multiplicative under composition of blockings. Aliased momenta carry extra powers of $1/L$.
- All constants (decay rates, strip widths, lower bounds) are fixed before the block ratio $L$.
- The quadratic forms decay exponentially and are bounded below uniformly in the volume.
- An exact identity on each pair of tori splits a quadratic form into a coarse part and a fluctuation part (a Schur complement).

### Gaussian integration and the cluster expansion

*Units: [III.4 — Gaussian integration: change of Gaussian sector, determinants, window law](outline/units/III-4.md); [III.5 — Cluster expansion of the polymer gas](outline/units/III-5.md); [III.8 — Connected activities and backward dependence cones](outline/units/III-8.md).*

**Change of variables.** Active links are written in exponential coordinates around the background. Inactive links stay in Haar measure.
- The change of variables to a Gaussian integral with covariance $C$ and mean $m(Y)$ is an exact identity. It holds for any positive-definite $C$, keeps all Jacobians, and uses no smallness assumption.
- The covariance actually used is the inverse of the gauge-fixed Gram form on the active links, not the inverse of the Wilson quadratic form. Its precision is bounded below uniformly in the volume.
- Window law: the global inverse is approximated by inverses on windows of radius $r$, with error $Ce^{-vr}$ uniform in the volume.
- $\log\det$ separates into local terms and far-field terms with summable errors.

**Cluster expansion.** The gas is $\Xi(w)=\sum_s\prod_{i\in s}w_i$, summed over families of polymers with pairwise disjoint supports and real weights. With $B=\lceil(\log\hat\beta)^2\rceil$, the smallness condition is

$$
\sum_{i:\,x\in X_i}|w_i|\,e^{(a+\delta)\,\mathrm{cov}_B(X_i)}\le\gamma\ \ \text{for every site }x,\qquad 4(2B+1)^4\gamma/\delta\le q<1 .
$$

Under this condition:
- $\log\Xi$ is an absolutely convergent sum of connected clusters, bounded through spanning trees (Penrose's partition scheme);
- removing every polymer that meets a set $Y$ changes $\log\Xi$ by at most $|Y|\gamma/(1-q)$, uniformly in the volume.

So the vacuum logarithm is extensive, but a local change costs only its size. A second, graph-free argument based on a deletion recursion gives bounds of the same type.

**Connected activities and dependence cones.**
- Fixed-order connected coefficients come from the heat equation $\partial_tW=\tfrac12(\Gamma:\nabla^2W+\Gamma:\nabla W\,\nabla W)$ for $W_t=\log\mathbb E_{t\Gamma}e^V$. A rooted $\ell^1$ norm with weight $e^{\sigma\,\mathrm{diam}}$ makes contraction and joining lossless, so these coefficients are polynomially bounded uniformly in the volume. There is no resummation.
- Pulling a coarse observable back through the block kernel gives a function of the fine links in a window of fixed radius around its support. The backward cone therefore grows by a bounded physical width per step.
- For disjoint supports, the pull-back factorizes exactly.

### Large fields and one nonlinear step

*Unit: [III.10 — One full nonlinear renormalization step: bounds on irrelevant terms](outline/units/III-10.md).*

At reference coupling $\hat\beta$ the small-field threshold is

$$
t=\hat\beta^{-1/2}P(\hat\beta),\qquad P(\hat\beta)=\exp\big((\log\log\hat\beta)^2\big),
$$

well above the Gaussian fluctuation scale $\hat\beta^{-1/2}$.

**Seeds.** A seed is one of:
- a fine plaquette with chord at least $t/4$;
- a coarse link on which the coarse field departs from the predictor by more than a fixed multiple of $t$;
- a flagged coarse site.

**Energy lower bound.** For every store $A$ of seeds,

$$
\kappa\,t^2\,\#A\ \le\ \text{quadratic energy of the step integrand, after subtracting the stationary predictor}.
$$

The energy is a sum over five channels, one of which is the blocking penalty. The proof assigns charges to fine cells with bounded multiplicity, and controls the linearization defects on cells without seeds.

**Why this suffices.** Since $\beta t^2\simeq P^2$, each seed gains a factor $e^{-cP^2}$. $P^2$ grows faster than any power of $\log\hat\beta$, so this gain beats:
- the polylogarithmic number of connected seed sets through a site;
- any per-seed loss of a fixed power of $\hat\beta$, or of order $P^z$ with $z<2$.

The decomposition into large-field sectors is exact: large-field sectors are integrated, not discarded.

**One step.** The step takes inputs at level $m+1$: regular norms at most $\hat\beta^{-11/10}$, forced norms at most $e^{-P^{1/5}}$, and the coupling in the band $[\hat\beta/2,2\hat\beta]$. For $L$ large, and then $\hat\beta$ large, it produces:
- site-summable budgets for the new regular activities;
- the bound $\exp\big((C\,\mathrm{bill}^5-\beta\mu t^2)\#A\big)$ for each large-field packet, where $\mathrm{bill}=1+B+(\log\hat\beta)^2$;
- bounds on the probabilities of the remaining catastrophic events.

The marginal and vacuum terms are extracted, and the level-$m$ bounds restored, by the reset below.

### The marginal coupling and the schedule

*Units: [III.7 — Matching the Wilson energy to fourth order](outline/units/III-7.md); [III.9 — The marginal flow: the running coupling and its reset](outline/units/III-9.md); [III.2 — Choosing the constants: the order of choice and the RG schedule](outline/units/III-2.md).*

**Matching and the one-loop coefficient.**
- At the finest level, a path representation is constructed whose jets of order at most 4 agree with those of the Wilson energy in exponential coordinates.
- At later levels, the cubic and quartic parts are represented in curvature variables by quasi-local lifts (a cost-controlled Poincaré lemma).
- In each step, the coefficient $\alpha_{N,m}$ of curvature squared produced by the one-loop term satisfies $|\alpha_{N,m}+\kappa_G\log L_m|\le D$, with $D$ fixed before $L$.

The value of $\kappa_G$ comes from an explicit momentum integral. The comparison symbol is

$$
h(k)=4C_{\mathfrak g}\Big(\frac{k_1^2}{|k|^6}-\frac{4k_1^2k_0^2}{|k|^8}-\frac1{|k|^4}\Big).
$$

Its angular average is $4C_{\mathfrak g}(\tfrac14-\tfrac16-1)|k|^{-4}=-\tfrac{11}3C_{\mathfrak g}|k|^{-4}$, and $\int_{1/L<|k|\le1}|k|^{-4}\,d^4k=2\pi^2\log L$. Hence $(2\pi)^{-4}\int_{1/L<|k|\le1}h=-\kappa_G\log L$. Comparing the step's Hessian with $h$ up to $O(|k|^{-3})$ gives the bound on $\alpha_{N,m}$.

**The reset.** After the step, the blocked density is rewritten exactly, at every configuration including large fields:
- a new coupling $\beta_{N,p,m}=\beta_{N,p,m+1}+\alpha_{N,m}+\delta$;
- a new vacuum constant;
- reorganized activities: flat values and isotropic quadratic parts are subtracted, compensating path terms are added, and mismatches of the small-field masks go into the forced gas.

The correction $\delta$ is the isotropic Hessian coefficient of the regular activities:
- By simplicity and hyperoctahedral symmetry, their quadratic part at a point is $\delta$ times the identity on plaquette orientations.
- $|\delta|\le1$, and $\delta$ is fixed by a scalar equation with a unique root.

Altogether, with $\omega_j$ a drift allowance attached to stage $j$,

$$
\big|\beta_{N,p,m+1}-\beta_{N,p,m}-\kappa_G\log L_m\big|\le\omega_{J_{m+1}} .
$$

**Endpoint.** For real $|b|<r_\ast$ there is a trajectory with level-$0$ coupling $\bar\beta+b$. Its bare coupling is unique within the construction, and the trajectory continues analytically to complex $|b|<r_\ast$, with $r_\ast$ independent of $N$ and $p$. The family uses $b=0$, so $\beta_{N,p,0}=\bar\beta$ for all $N$ and $p$. An intermediate-value shooting argument also produces such trajectories; the analytic version is the one used for convergence at fixed volume below.

**Running.** Put $s_m=\log(1/a_m)$ and $\hat\beta_m=\bar\beta+\kappa_Gs_m$. Induction from level $0$ gives $|\beta_{N,p,m}-\hat\beta_m|\le\sum_{k\le m}\omega_{J_k}$, and the schedule makes this $o(s_m)$:

$$
\beta_{N,p,m}=\bar\beta+\kappa_G\log(1/a_m)+o\big(\log(1/a_m)\big)\qquad\text{uniformly in }N\ge m\text{ and }p.
$$

At $m=N$ this is the slope law with $b_\ast=\kappa_G$. Since $\bar\beta$ is chosen large, every level stays in the band $[\hat\beta_m/2,2\hat\beta_m]$. The statement is leading-logarithmic only: there is no two-loop term.

**Why the block ratios grow.** The one-loop error per step is bounded but does not decrease with $L$. For the accumulated error to be $o(s_m)$, the allowance per unit of logarithmic scale must tend to zero. The schedule therefore imposes two conditions:
- $\omega_{J_{m+1}}\le J_{m+1}^{-2}\log L_m$, which forces $\log L_m\to\infty$;
- $\log L_m/s_m\to0$, which keeps each step small compared with the total scale.

The ratios are constant on stages, $L_m=\ell_{J_{m+1}}$. The stage index $J$ is nondecreasing, rises by at most one per level, tends to infinity toward the fine end, and stays constant on long windows of levels. One sequence $(L_m)$ serves every cutoff $N$.

**Order of choices.** The constants are chosen in a fixed order:
1. the kernel with its penalty, and for every stage $j$ its regularity profile (derivative order, spatial power, support exponent, widths, path counts, drift allowance), together with the one-loop error constant $D$;
2. all block ratios $\ell_j$, so that the allowances and the logarithms of the combinatorial costs are at most $j^{-2}\log\ell_j$;
3. the smallness exponents;
4. the entry couplings and the volume conditions;
5. $\bar\beta$;
6. the assignment of stages to levels.

Each degree $d$ has a reference level $r(d)$ at stage at least $d+3$. Beyond $r(d)$ the derivative order exceeds $d$ and the spatial power is at least $d$. All choices precede any observable or extraction order, so every degree is served by the same family.

### Renormalized observables, uniformly in the volume

*Units: [III.11 — Comparison with the free Gaussian measure: interacting rank and determinant budgets](outline/units/III-11.md); [III.12 — Bounds uniform in the volume and convergence as the spacing tends to zero](outline/units/III-12.md); [III.15 — Cost accounting for observables and the remainder comparison](outline/units/III-15.md); [III.16 — Analytic toolkit](outline/units/III-16.md).*

**The chessboard root.** The quantity propagated for observables is the chessboard root. For a function $F$ of the links in one cell of a tiling of the torus by cells of side $a_m$,

$$
\lVert F\rVert_T=\Big|\,\mathbb E_{\beta_{N,p}}\Big[\prod_{\text{cells}}\text{reflected copies of }F\Big]\Big|^{1/\#\text{cells}} .
$$

The main bound reads as follows. For every degree $d$, radius $R$ and $\varepsilon>0$ there is $A$ such that, for every $m\ge r(d)$, there is $N_0$ independent of $p$ with

$$
\lVert O_{N,p}(v,o)\rVert_{T_m(o)}\le A\,a_m^{-d-\varepsilon}\qquad(N\ge N_0,\ \text{all }p,\ \lVert v\rVert\le R).
$$

It is proved by running the insertion through the same RG steps; $\varepsilon$ absorbs losses smaller than any power. Reflection positivity enters only afterwards, through the chessboard inequality. That inequality makes the root a seminorm and bounds correlations of separated observables by products of roots.

**No loss of $\log\beta$ per site.** A root over $c$ copies tolerates a fixed cost per copy, but not a factor $\log\beta$ per site. The determinant budget avoids this by a gauge count on a terminal torus with $c=L^4$ sites:
- A tree gauge leaves $4c-(c-1)=3c+1$ free links.
- In the numerator, $3c-3$ of them are integrated one at a time, each being the only new link of a chosen plaquette. Each integral gives at most $b\,E^{\dim G}$, with $E\propto g=\beta^{-1/2}$. The four links that wrap around the torus, one per axis, are left over.
- The normalization is bounded below by confining all $3c+1$ free links to Haar balls of radius $g/4$.
- The ratio is therefore at most $\exp(c\,\pi-4\dim G\,\log g)$, where the cost $\pi$ per site is independent of $g$.
- Since the number of copies is $c$, the root carries only $g^{-4\dim G/c}$.

**Field content.** Free Gaussian detectors give uniform rank detection: $\lVert\pi x\rVert\le Z\,\lVert\mathrm{probe}(\pi x)\rVert$, where $\pi$ is the projection onto quotient labels. The limit field spaces are isomorphic, degree by degree, to those of free Maxwell theory, compatibly with conjugation and reflections.

**Difference quotients.**
- A normalized lattice difference of an insertion of degree $d$ equals an insertion $O(x)$ of degree $d+|l|$, up to a term whose root tends to zero.
- Write $x=\pi x+(x-\pi x)$. The part $x-\pi x$ lies in the Maxwell equation ideal and has small root by the lattice equations of motion. The part $\pi x$ is bounded by the rank detector.
- So difference quotients satisfy root bounds of the same form. By the chessboard inequality, lattice correlations with any number of differences are bounded at $r$-separated points, uniformly in $p$.

These bounds are propagated through the RG; they do not come from differentiating a sup norm.

**A rank-free trace bound.** Let $X\ge0$ be a matrix and let the insertions $b_a$ be separated by gaps of more than $2r$ factors of $X$. Moving $m\le r$ factors from one gap to another changes $\mathrm{tr}\prod_ab_aX^{Y_a}$ by at most $(\mathrm{cost}/r)\,m$. The cost is a product of trace norms with no dimension factor. The proof is a Hölder inequality for complex exponents, obtained from Hadamard's three-lines theorem, followed by a Cauchy estimate. By quadrature it extends to continuous positive kernels. Part IV uses it for equicontinuity.

**Bookkeeping.** The numerical conditions of all steps can be met in one fixed order: constants before $L$, then $L$, then the later constants, then $\beta$ large. This holds uniformly across stages.

### Convergence at fixed volume and the construction run

*Units: [III.12](outline/units/III-12.md); [III.13 — Extension to all labels: one common Wilson family](outline/units/III-13.md); [III.14 — The construction run: flat representations and the ultraviolet rate](outline/units/III-14.md).*

**The obstacle.** At fixed volume, two cutoffs $N$ and $N'$ have different bare couplings, each fixed by the condition $\beta_{N,p,0}=\bar\beta$. Continuity in a fixed bare coupling therefore compares nothing.

**The fan.** The proof embeds the family in a one-parameter family:
- The level-$0$ coupling is $\bar\beta+ws$, with a real tuning parameter $s\in[-1,1]$. For each $s$ the bare coupling is unique within the recursion.
- The bare coupling and the effective data at each fixed level extend holomorphically to the complex unit disc in $s$, with bounds uniform in $N$ and $p$.
- As $N\to\infty$, the data at a fixed level $j$ converge uniformly on compact subsets of the disc. Observables read at level $j$ are therefore Cauchy in $N$.
- The part of an observable not captured at level $j$ is bounded by a quantity that tends to zero as $j\to\infty$, because $\hat\beta_j\to\infty$.
- A triangle inequality then gives the Cauchy property of the lattice correlations, at the lattice points nearest to a configuration whose points are distinct modulo the period.

Combined with the difference bounds, this gives at each fixed volume:
- limit kernels smooth away from periodic coincidences;
- convergence of difference quotients to derivatives;
- convergence of smeared moments along the whole sequence of spacings.

**One family (III.13).** Given only that $\mathfrak g$ is simple and $b>0$, III.13 produces:
- the coupling trajectory;
- the volume-uniform root bounds for every degree;
- the analytic fan;
- the Maxwell rank comparison;
- the hypotheses of the infinite-volume and reconstruction arguments, for every extraction order.

**The construction run (III.14).** III.14 packages the construction run. It also proves quantitative convergence of the order-zero quadratic part of the effective action (its position-space Hessian kernel) at each fixed stage $i$, at rate $(a_N/a_i)^c$.
- The difference between two cutoffs is written in curvature variables as $d^{\mathsf T}Ad$, with $A$ defined modulo kernels annihilated by this map.
- So the curvature precision, which has zero modes, is never inverted.
- This rate concerns the quadratic germ only, not the full effective action or the final limits.

## Part IV. Infinite volume

*Unit: [IV.1 — Infinite volume: extraction of a subsequence and the Euclidean axioms of the limit](outline/units/IV-1.md).*

**Local bounds.**
- Reflection positivity gives the chessboard inequality $|\langle\prod_cF_c\rangle|\le\prod_c\lVert F_c\rVert_T$ for every $\beta\ge0$. Log-convexity of roots under translation handles cells not centred at the insertion.
- Put each insertion in its own cell of side $a_m<r$. Then $|C_{N,p}(v;x)|\le A^n$ whenever each pair of points has some coordinate at distance at least $r$, uniformly in $p$ and for large $N$.
- Near collisions, the same argument gives $|S(v;x)|\le Cr^{-4n(1+\max d_i)}$ when all points are at mutual distance at least $r$.

**Equicontinuity.** Let $\mathrm{Gen}_n$ be the set of configurations whose points have pairwise distinct coordinates on every axis.
1. Integrating out the links along one axis gives a positive transfer kernel $K$. A correlation becomes $\mathrm{Tr}\prod_kB_kK^{Y_k}/\mathrm{Tr}\,K^M$, with slab kernels $B_k$ and gaps $Y_k$.
2. Moving one point shifts units between two gaps. The trace is entire in the size of the shift.
3. The rank-free Hölder bound controls the trace on a disc, and a Cauchy estimate gives a Lipschitz bound.
4. The trace norms of the slab kernels are themselves chessboard roots of $2q$ alternating copies, so the bound is uniform in the volume.

The result is $|C(x)-C(y)|\le16nA^n|x-y|/R$ on compact subsets of $\mathrm{Gen}_n$ whose coordinate gaps exceed $R$. No derivative bound is used.

**Extraction.** Arzelà–Ascoli is applied twice, over countably many degrees, basis labels and compact sets: first to extract a spacing subsequence that works for all volumes, then a volume subsequence. This gives limit kernels on $\mathrm{Gen}_n$. The complement $\mathrm{Conf}_n\setminus\mathrm{Gen}_n$ is a null set, and the kernels are locally bounded on $\mathrm{Conf}_n$, so dominated convergence gives the smeared limits.

**Derivatives and smoothness.**
- Exact summation by parts in the lattice positions moves a difference quotient onto the test function.
- The ultraviolet estimates show that the lattice difference quotient of an insertion is chessboard-close to an insertion of one degree higher.
- A dimension count, from the rank comparison, identifies the kernel of the limiting projections with the null labels.
- Finite-dimensional compactness then gives fixed derivative maps $\partial_a:F_d\to F_{d+1}$ with

$$
\partial_{x_i^a}S(\dots,v_i,\dots;x)=S(\dots,\partial_av_i,\dots;x)\qquad\text{in }\mathcal D'(\mathrm{Conf}_n).
$$

Iteration and a Fourier argument give $S\in C^\infty(\mathrm{Conf}_n)$, with derivatives polynomially bounded near collisions.

**What the limit inherits.** The limit inherits:
- translations;
- the group of signed permutations of the axes, acting on points and labels;
- permutation symmetry, reality and the unit label;
- reflection positivity at coordinate planes, for point and smeared tests.

It does not inherit continuous rotations, clustering or uniqueness.

**Removing the spacing refinement.** The extraction refines both the spacing and the volume sequences. At each admissible fixed volume, the smeared limit along the whole spacing sequence exists (Part III) and agrees with the subsequential one. This removes the spacing refinement from the final statement.

## Part V. Phases and relativistic reconstruction

*Units: [V.1 — Decomposition of the limit into phases](outline/units/V-1.md); [V.2 — Osterwalder–Schrader reconstruction of a Wightman theory](outline/units/V-2.md); [V.3 — Reconstruction for every phase and the reconstructed theory](outline/units/V-3.md).*

**The OS space of the mixture.** Positive-time field words, modulo the null space of $\langle\theta w,w'\rangle_S$ and completed, form a Hilbert space. It carries:
- a contraction semigroup $e^{-tH}$ with $H\ge0$;
- a unitary representation of the spatial translations.

The joint spectrum lies in a half-space, with no gap. The zero-energy space may be large. Its projection $\Pi$ is the strong limit of $e^{-tH}$ as $t\to\infty$.

**Thin slabs.** A word $w$ placed in a thin time slab defines an operator $B$ on the OS space. To bound it, consider the train $v_{n+1}=B^\ast Bv_n$, which contains $n$ reflected copies of $w$ and an arbitrary exterior word.
- The lattice bounds give $\lVert v_n\rVert^2\le B_vA^{4n}$. Here $A$ is polynomial in the word data and in the inverse buffer width, and $B_v$ depends on the exterior word but not on $n$.
- A power lemma removes $B_v$: if $\lVert(BA)^nv\rVert\le K_vD^{2n}$ for all $n$, then $\lVert Av\rVert\le D\lVert v\rVert$.

So the exterior word is paid once and disappears under the $n$-th root.

**Phases.**
- The compressions $M(w)=\Pi\,B_w|_{\ker H}$ are independent of the width and placement of the slab.
- $\langle\Omega,M(w_1)\cdots M(w_k)\Omega\rangle$ is the limit of $S$ as the clusters are moved apart in time order.

The compressions commute:
1. Place four clusters on the rays $n(ue_4+ve_1)$, with $(u,v)=(0,0),(1,2),(2,1),(3,3)$.
2. Exchanging the time axis with a spatial axis reverses the order of the middle pair.
3. $O(4)$ covariance and permutation symmetry of $S$ then give $\langle\Omega,M_xM_yM_wM_z\Omega\rangle=\langle\Omega,M_xM_wM_yM_z\Omega\rangle$.
4. By density, $[M_y,M_w]=0$.

The resulting phase decomposition:
- The $M(w)$ generate a commutative unital $C^\ast$-algebra. Its Gelfand spectrum is $X$, which is compact and metrizable.
- $\nu$ represents the vacuum state, and it has full support because the vacuum is separating.
- The phase correlations are $S^\xi(w)=\xi(M(w))$. They are continuous in $\xi$, and $\int S^\xi\,d\nu=S^{\mathrm{mix}}$.
- Reflection positivity, $O(4)$ invariance, the derivative and stress identities and uniform growth bounds hold for every $\xi$. They are proved as operator identities before any character is applied.
- Every phase has the same null spaces as the mixture.
- A variance argument over a countable total family of words gives a one-dimensional zero-energy space for $\nu$-almost every phase.
- A second almost-sure statement concerns the trace of the stress tensor: along one sequence of scales $r_i$, fixed in advance, $r_i^8$ times the two-point function of $\tau-e\mathbf 1$ at separation $r_i$ tends to $0$ for every real $e$, for $\nu$-almost every phase ($\tau=\sum_\mu T_{\mu\mu}$).
- The selected phase $\xi_\ast$ is chosen in the intersection of these two sets of full measure, so that one choice serves both the reconstruction (a unique vacuum) and the trace law of Part VII. It is not otherwise characterized.

**Reconstruction.** For each phase, slab operators bounded by $C\,p^{-A}$ (with $p$ the slab half-width) define

$$
F_n(z;\mathbf x)=\big\langle\Omega,\,B(v_1)\,e^{i(z_1-z_2)H}U(\mathbf x_1-\mathbf x_2)\,B(v_2)\cdots\Omega\big\rangle .
$$

This function is holomorphic for $\mathrm{Im}\,z_1<\dots<\mathrm{Im}\,z_n$, and it equals the Euclidean correlation at imaginary times. The Wightman theory is obtained in five steps:
1. **Boundary values.** Bounds of order $k^{-m}$, when all height gaps exceed $k$, give tempered boundary values $W_n$. They converge against every joint Schwartz test as the vector of heights tends to zero through all ordered vectors.
2. **Positivity and fields.** This mode of convergence allows two independently regularized vectors to be compared. So $W$ is a limit of Gram matrices of OS vectors: it is positive, and the Wightman space embeds isometrically into the OS space. Fields act on finite words modulo the null space by prepending a letter. This gives the invariant domain, the formal adjoints and the cyclic vacuum.
3. **Covariance and spectrum.** The rotation Ward identities of Part VI, in planes containing the time axis, continue to infinitesimal boost identities. These integrate to Lorentz covariance without any spectral assumption. The spectral measure of a Wightman vector equals that of its OS image, so it is supported in $p^0\ge0$; covariance then moves the support into the forward cone.
4. **Locality.** Only adjacent transpositions are needed. For a spacelike adjacent pair, both orderings have holomorphic germs, constructed with complex boosts. The germs agree to all orders on the Euclidean slice, because the Euclidean kernel is symmetric and smooth away from coincidences.
5. **Faithfulness.** A label whose Wightman functions vanish has a vanishing tube function, hence a vanishing Euclidean kernel.

**Every phase.** The low-energy bound uses only locality and the spectrum condition. Take $A$ a finite sum of field words with compactly supported tests.
- The commutator of time-translated copies of $A$ vanishes for times at most $1$ and spatial separations beyond a radius $R$ independent of $\xi$.
- Average over unit time, pair with a spatial-momentum bump of radius $2u$ (whose Fourier transform is $O(u^3)$ in three space dimensions), and use $|\mathbf p|\le E$ on the forward cone. This bounds the spectral weight of each shell $u/2<E\le u$ by $O(u^2)$, and dyadic summation gives the first bound below.

$$
\mu_{A\Omega_\xi}(0<E\le u)\le M_Au^2\ \ (0<u\le1),\qquad 0\le\big\langle A\Omega_\xi,(e^{-sH_\xi}-P_{0,\xi})A\Omega_\xi\big\rangle\le M_As^{-2}\ \ (s\ge1).
$$

The constant $M_A$ is independent of $\xi$, by compactness of $X$.

Vacuum uniqueness then extends from almost every phase to every phase:
- The function $\xi\mapsto\langle A\Omega_\xi,e^{-sH_\xi}A\Omega_\xi\rangle-|\langle\Omega_\xi,A\Omega_\xi\rangle|^2$ is continuous.
- It lies in $[0,M_As^{-2}]$ on the full-measure set where the vacuum is unique. That set is closed, and $\nu$ has full support, so it is all of $X$.
- Letting $s\to\infty$ gives a unique vacuum in every phase.

The comparison map from the Wightman space to the OS space is surjective, proved independently by pushing time-ordered vectors apart. This transfers vacuum uniqueness to the OS space. Each phase theory is irreducible. Its Wightman distributions are continuous in $\xi$, and their $\nu$-average is the boundary value of the continuation of $S^{\mathrm{mix}}$. The bounds allow spectrum down to zero and give only polynomial decay $s^{-2}$ in Euclidean time, not exponential clustering.

## Part VI. Ward identities, rotations and the stress tensor

*Units: [VI.1 — Ward identities, the rotation action and the conserved stress tensor](outline/units/VI-1.md); [VI.2 — The free Maxwell stress tensor and the local Ward charge](outline/units/VI-2.md).*

The lattice has only the hypercubic symmetries. The proof obtains the generators of rotations from stress fluxes, and the group action by comparison with free Maxwell theory. It uses the OS spaces of the mixed state in the coordinate directions and the free comparison of Part VII. It uses no decay of correlations.

**Free Maxwell theory.** Consider $\dim\mathfrak g$ free Maxwell fields, with field spaces the $G$-invariant polynomials in on-shell curvature jets.
- The centred, real, symmetric tensors of degree 4 that are covariant under signed permutations form a three-dimensional space.
- For simple $\mathfrak g$, the divergence maps this space onto a two-dimensional space. So the conserved tensors form a line, spanned by the Maxwell stress tensor.
- For every Killing field $v$, the flux of $\sum_bv_bT_{ab}$ through a shell around an insertion equals the Lie derivative of the insertion. For elementary fields this follows from $-\Delta G_0=\delta$; for polynomials, from the Leibniz rule and Wick contraction.
- An explicit three-point function fixes the sign and normalization of the Ward constant.

**Conserved tensor.** There are scaling sequences $r_k\downarrow0$ with frames $U_k$, isomorphisms for large $k$. Along them the rescaled interacting divergence converges to the free one.
- Surjectivity is an open condition, so the interacting divergence is also onto, and its kernel is one-dimensional.
- A nonzero conserved $J$ in this kernel converges, after rescaling, to a multiple of the free stress tensor.

**Shell identities.** Lattice integration by parts in the link variables, with ultraviolet control of the error terms, gives shell identities. Take $\chi$ equal to $1$ near $x_0$ and vanishing near the spectators:

$$
-\sum_a\int\partial_a\chi(y)\,S\big(J_{ab}(y)\,B(x_0)\cdots\big)\,dy=S\big((p_bB)(x_0)\cdots\big).
$$

With weight $K(y-x_0)$, for a rotation generator $K$, the same construction gives maps $Y_K$. Here $p_b$ and $Y_K$ are linear maps on labels, not yet identified with derivatives and rotations. Moving the centre of the shell gives $\partial p=p\,\partial$ and $\partial_bY_K+\sum_cK_{cb}\,p_c=Y_K\partial_b$.

**Flux at infinity.**
- For rotations, cut off the rotation field so that it is compactly supported and equal to the exact field on a box far larger than the configuration.
- Conservation and symmetry cancel the cross terms.
- The remaining exterior contribution is bounded through spectral measures of the OS semigroups along and transverse to a coordinate line, and it tends to zero.
- This gives the angular identity for configurations on one coordinate line, together with a line-sum identity, and hence transversality of the label maps.

**Normalization.** In free theory, the finitely many relations satisfied by $p$ and $\partial$ at a given degree have a one-dimensional solution space. Injectivity is an open condition, so the same holds along the scaling sequence. Hence $p_b=c\,\partial_b$, with $c$ independent of the degree and $c\ne0$. The tensor $T=J/c$ satisfies

$$
-\sum_a\int\partial_a\chi(y)\,S^s\big(T_{ab}(y)\,B(x_0)\cdots\big)\,dy=\frac{\partial}{\partial x_0^b}\,S^s\big(B(x_0)\cdots\big)
$$

in the mixed state. By the operator identities of Part V, it holds in every phase. Since $\partial\chi$ vanishes near every insertion, no contact terms arise.

**All separated configurations.** Positivity of Gram functions, together with the Ward values already obtained, gives analytic-vector bounds $\lVert f^{(m)}\rVert\le C(\rho/2)^{-m}m!$. The angular Ward functional is therefore real-analytic along walks that move one point at a time. Starting from configurations on a line, it vanishes on all configurations whose points have pairwise distinct first coordinates, and by continuity on all of $\mathrm{Conf}_n$.

**Integration to $O(4)$.**
- The bracket defect $[Y'_u,Y'_v]-Y'_{[u,v]}$ (with $Y'=Y/c$) satisfies a summed identity. A rigidity statement, proved in free theory and transferred by the comparison, forces the defect to vanish.
- The infinitesimal action converges to the Maxwell one: $U_k^{-1}Y'_KU_k\to\mathrm{Lie}^{\mathrm{Max}}_K$.
- A perturbation of spectral projections of the Casimir operators gives exact intertwiners $V_d$. The action on $F_d$ is $R_d(k)=V_dR^{\mathrm{Max}}_d(k)V_d^{-1}$.
- Since $t\mapsto S(R(e^{tK})v;e^{tK}x)$ has zero derivative, and reflections act through the real structure, $S(R(k)v;kx)=S(v;x)$ for all $k\in O(4)$.
- Averaging $J/c$ over $O(4)$ gives a conserved, real, symmetric, covariant tensor that satisfies both the translation and the rotation Ward identities.

## Part VII. Identification as Yang–Mills theory

### Free Maxwell fields at short distance

*Units: [VII.1 — Short distances: convergence to free Maxwell fields](outline/units/VII-1.md); [VII.6 — Scaling variants and fixed-field estimates](outline/units/VII-6.md).*

**The reference theory.** It consists of $\dim\mathfrak g$ free Maxwell fields built from $\Gamma(x)=1/(4\pi^2|x|^2)$.
- On the lattice, corrected covariances of finite-difference jets converge to $\partial_a\partial_b\Gamma$ away from coincidences.
- Wick moments satisfy the same Gaussian recursion on the lattice and in the continuum, so correlations of quotient labels converge.
- A triangular basis built from the Kelvin transform gives strict reflected Gram positivity for every label outside the ideal $I_d$ generated by the free Maxwell equations and the Bianchi identities.
- So the free null space is exactly $I_d$, and the free field space $M_d=P_d/I_d$, where $P_d$ is the corresponding space of polynomials in free curvature jets, is detected by finitely many correlations.

**The comparison.** There are scales $r_k\downarrow0$ and linear frames $U_k$ on the field spaces with the following property. The correlations of the mixed state, rescaled by $r_k$ and transformed by $U_k$, converge to the free Maxwell correlations:
- with all derivatives;
- uniformly on compact subsets of $\mathrm{Conf}_n$;
- for all degrees along one sequence.

The stress tensor converges to the Maxwell stress tensor. An upper bound on $\dim F_d$ makes the frames isomorphisms for large $k$, so $F_d\cong M_d$.

The frames are necessary: the claim is not that a fixed normalization of each composite field has a limit along every sequence of radii. The schedule contains a real parameter that moves the scale at which observables are read, and the estimates are uniform in it. Tuning this parameter, every sequence of radii tending to zero has a subsequence along which the comparison holds.

### Running coupling

*Unit: [VII.5 — Asymptotic freedom of the running coupling](outline/units/VII-5.md).*

With $g_{N,p}(m)=\beta_{N,p,m}^{-1/2}$, Part III gives

$$
g_{N,p}(m)\,\sqrt{\log(1/a_m)}\longrightarrow\frac1{\sqrt{2b_0}}\qquad(m\to\infty),
$$

uniformly in $N\ge m$ and $p$. This is the leading-logarithmic running of the coupling of the construction's effective actions. No two-loop term, no $\Lambda$ parameter and no comparison with another renormalization scheme is claimed. For $SU(N)$, the conventionally normalized coupling $g_{\mathrm{std}}=\sqrt{2N}\,g$ satisfies $g_{\mathrm{std}}\sqrt{\log(1/a_m)}\to(11N/24\pi^2)^{-1/2}$.

### The trace law and nonfreeness

*Units: [VII.2 — The trace of the stress tensor and the trace anomaly](outline/units/VII-2.md); [VII.3 — The theory is not free: Gram positivity and exclusion of free-field profiles](outline/units/VII-3.md).*

**Leading form of the trace.** The classical Maxwell and Yang–Mills stress tensors are traceless. The quantum trace comes from the scale dependence of the coefficient of curvature squared.
- The proof pulls the trace of the lattice stress observable back through the RG steps.
- Fourth-order matching identifies the leading part of the trace as the derivative of the effective action with respect to scale.
- The one-loop coefficient enters through a momentum-shell estimate of the kind used in Part III.

Along the scaling sequences, with $\beta_k$ the running coupling at the RG level that reads scale $r_k$, and $O_{F^2}$ the normalized curvature-squared label,

$$
\beta_k\,r_k^4\,U_k^{-1}\Theta\longrightarrow4d_2\,O_{F^2},\qquad d_2=-\frac{\kappa_G}4,\qquad\frac{\log(1/r_k)}{\beta_k}\longrightarrow\frac1{\kappa_G}.
$$

In perturbative terms, this is the familiar $\Theta\simeq\frac{\beta(g)}{2g^3}F^2$, with $\beta(g)/(2g^3)=-b_0/2=d_2$ at one loop. The trace is a curvature-squared field suppressed by $g^2(r)\simeq1/(\kappa_G\log(1/r))$.

**The two-point law.** Here $\Theta=\sum_\mu T_{\mu\mu}-S^{\xi_\ast}\big(\sum_\mu T_{\mu\mu}\big)\mathbf1$, in the selected phase, which has a unique vacuum.
1. The free two-point function of $O_{F^2}$ is $3\dim\mathfrak g/(\pi^4|x|^8)$.
2. So at lattice-fitted configurations along the scaling sequence, $r_k^8\log^2(1/r_k)\langle\Theta\Theta\rangle\to(4d_2/\kappa_G)^2\cdot3\dim\mathfrak g/\pi^4=3\dim\mathfrak g/\pi^4$.
3. Rotation invariance moves the pair onto the time axis.
4. The spectral representation in the phase gives $G_\Theta(r)=\int e^{-rE}\,d\mu(E)$ with a positive measure. So $G_\Theta$ is nonincreasing, which sandwiches $G_\Theta(r)$ between its values at fitted points.
5. If the limit failed along some sequence of radii, the flexible scaling above would give a subsequence along which it holds, a contradiction.

Hence the limit exists over all radii:

$$
\lim_{r\downarrow0}\,r^8\log^2(1/r)\,G_\Theta(r)=\frac{3\dim_{\mathbb R}\mathfrak g}{\pi^4}.
$$

The amplitude does not depend on the value of the one-loop coefficient. $\kappa_G$ enters once through the trace and once through the running, and $(4d_2/\kappa_G)^2=1$ identically. So the test detects the inverse-logarithmic suppression and the free normalization of $F^2$, not the value of $b_0$; that value is established by the running law of Part III.

**Exclusion of free profiles.** Consider a finite Wick profile $W(r)=\sum_\alpha c_\alpha\prod_\beta K_{\alpha\beta}(r)$. Each factor $K(r)=\int E^q\,h(\mathbf p)(2E)^{-1}e^{-rE}\,d^3\mathbf p$ has $E=\sqrt{\mathsf m^2+|\mathbf p|^2}$ and $h$ homogeneous.
- $W$ has an asymptotic expansion at $r=0$ in the functions $r^a(\log r)^k$, with $a\in\mathbb Z$ and $k\ge0$.
- Along $r=2^{-n}$, $r^8\log^2(1/r)\,W(r)$ is then a finite sum of terms $c\,\rho^n n^{k+2}$, which can converge only to $0$.
- Since the limit for $G_\Theta$ is positive, $G_\Theta$ differs from $W$ at points arbitrarily close to $0$.

This excludes exactly the finite class of profiles in the statement, and it concerns only $G_\Theta$ on the time axis.

The stronger statement adds further tests:
- a Wightman-side Wick test;
- Maxwell–Fock tests. Consider any isometric embedding of the selected phase's Hilbert space into a Fock space of transverse photons that preserves the vacuum and translations and has transverse symmetric image. No such embedding makes $\Theta$ local with respect to the Weyl operators.

### Operator product expansion and contact extensions

*Unit: [VII.4 — Operator product expansion and contact extensions](outline/units/VII-4.md).*

**The lattice statement.** The product of insertions in one cell equals a single insertion of the same total degree, plus a remainder with small chessboard root. The proof is an induction over the RG levels between the cluster scale and the observation scale: the part of degree at most $D$ is kept, and the rest is paid into the remainder.

**The continuum coefficients.** They are read off rather than given by a formula.
- A prescription fixes, degree by degree, biorthogonal systems of fields and detectors. The detectors are finite combinations of mixed-state correlations of the cluster with fixed, separated exterior words.
- The prescription is averaged over $O(4)$ and symmetrized for reality.
- The coefficient $c_{j,\kappa}(a;x,o)$ is a coordinate of the cluster's new component of degree $j$ in a real basis.

Consider an $(r,M,\eta)$-cluster: points within $Mr$ of $o$ and at mutual distance at least $\eta r$, carrying fields of total degree $w$. Take spectators at distance at least $c$ from $o$ and from each other. Then, for all sufficiently small $r$,

$$
|c_{j,\kappa}(a;x,o)|\le r^{\,j-w-\varepsilon},\qquad
\Big|S^s(a,x;b,y)-\sum_{j\le D}\sum_\kappa c_{j,\kappa}(a;x,o)\,S^s(O_{j,\kappa},o;b,y)\Big|\le r^{\,D+1-w-\varepsilon}.
$$

**Uniformity and limits of the statement.**
- The coefficients do not depend on the spectators $b$ and $y$, on the state $s$, or on $D$.
- The threshold for $r$ depends on the fields, on $M,\eta,c,\varepsilon,D$, and in the first bound on the channel, but it is uniform in $s$, $x$, $o$ and $y$.
- Uniformity in the spectators comes from the train argument of Part V, in which the exterior word is paid once.
- Uniformity in the state comes from bounding the error in the zero-energy algebra, whose norm dominates every character and the mixture.
- The loss $\varepsilon$ absorbs logarithms. There is no logarithmic refinement, so the bound is weaker than the perturbative OPE.
- The coefficients are not unique. Neither convergence as $D\to\infty$ nor agreement with perturbation theory is claimed.
- Nested versions over finite trees of clusters, and integrated versions against measures of bounded variation, also hold.

**Contact extensions.** These use Taylor subtractions over forests of collapsing clusters on dyadic shells. The OPE remainder makes the shell sums converge. For every state and every list of labels this gives a distribution of finite order on $(\mathbb R^4)^n$ that agrees with the correlation on $\mathrm{Conf}_n$. Not established: uniqueness, reflection positivity on overlapping supports, contact Ward identities, real-time products, and convergence of the lattice correlations on the diagonals.

## Part VIII. Assembly

*Unit: [VIII.1 — Assembly of the main theorem](outline/units/VIII-1.md).*

The construction run depends only on $G$ and the penalty $b$. It is chosen before any extraction order or observable. For each extraction order (a spacing sequence and a volume sequence), the assembly composes further refinements:
- one refinement for the limits of the running coupling;
- one that produces the limit table, with the Euclidean hierarchy, stress tensor, phases and reconstruction of Parts IV–VI.

To these it adds the reconstructions of all phases, the OPE prescription, the nested and contact results and the Maxwell comparison. Everything is transported to a common refinement, so all objects refer to one table.

The public theorem is the case $b=1$, with the full spacing sequence and the given volume sequence; its $q$ is the volume part of the refinement.

No new estimate enters, but identifying all objects with one table is a real constraint. Separate existence results for a lattice limit, a Wightman theory, an OPE and a trace law would not show that they concern the same correlation functions. The hypothesis bundles under which the limit theory is first proved are all discharged within the proof of the main theorem.

## Relation to earlier work, and where the difficulty lies

**Classical sources.**
- Balaban's program is the model for the ultraviolet analysis: block-spin transformations, gauge fixing around a background field, fluctuation covariances built from averaging operators, the small-field/large-field decomposition, and renormalization of the marginal coupling.
- The classical cluster expansion (Glimm–Jaffe, Brydges, Kotecký–Preiss) organizes the polymer activities.
- Reflection positivity (Osterwalder–Seiler) and chessboard estimates (Glimm–Jaffe–Spencer, Fröhlich–Israel–Lieb–Simon) connect lattice estimates with bounds on observables.
- Osterwalder–Schrader and Glimm–Jaffe reconstruction turns Euclidean correlations into Wightman fields.
- The slope is the one-loop coefficient of Gross–Wilczek and Politzer.

**Departures from Balaban's scheme.**
- The block kernel is an exactly normalized, gauge-covariant Markov kernel with random tags, not a linear averaging operator in a fixed background gauge.
- Integration uses a spanning-forest gauge.
- The block ratios grow along the levels.
- The threshold carries the factor $e^{(\log\log\hat\beta)^2}$.
- The analytic fan in the tuning parameter, used for convergence at fixed volume, has no counterpart in Balaban's papers as far as the unit outlines determine.

**Beyond the ultraviolet analysis**, the proof does the following:
- One schedule and one family serve composite fields of every degree. Each field has a fixed normalization, root bounds uniform in the volume, and derivatives controlled by rank detection, with no coupling-dependent loss per site.
- Convergence at fixed volume is proved despite tuning that depends on the cutoff.
- Equicontinuity in infinite volume comes from a rank-free trace inequality, without derivative bounds.
- Commutativity of the zero-energy algebra is proved, not assumed.
- Vacuum uniqueness in every phase follows from a uniform low-energy bound that replaces a mass gap or a cluster argument.
- Lorentz covariance comes from Ward identities.
- Rotation invariance is restored without decay of correlations, and the group action is obtained by comparison with free Maxwell theory.
- The trace law holds as a limit over all radii.
- The OPE is derived from the RG, with one system of coefficients for the mixture and every phase.

**Where the difficulty lies.**
1. **Gauge degeneracy and large fields** must be controlled with a bounded cost per site and per seed. This is done by the gauge count of the determinant budget, the energy lower bound for seeds, and the exactness of the kernel.
2. **Effective-action estimates must become estimates for observables**: for every composite field, its derivatives and its fixed-volume limit, inside one family.
3. **The passage from a lattice mixture to relativistic phases** has no continuous symmetry and no clustering to start from. It is handled by Ward identities with free comparison, the commutative zero-energy algebra, and spectral bounds based on locality.

Much of the length of the formal proof is bookkeeping (the order of choice of constants and the transport of estimates through the run) rather than new analysis.

## Steps whose informal account is incomplete

The theorem is proved in Lean, and the conditional statements of the limit theory are discharged within its proof. The unit outlines, however, describe the following steps only at the level of statements, or with readings marked tentative. A written proof will have to supply them.

- **One-loop identification (III.7, VII.2).** The slope bound is first proved for an auxiliary functional and then transferred to the completed Hessian of the actual step. Whether this identification with the gauge-fixed determinant is derived, or built into the definitions, is not settled. The trace amplitude does not test this value.
- **Covariance and Hessian (III.4).** The Gaussian covariance is the inverse of the gauge-fixed Gram form on the active links. Whether it equals the inverse Hessian of the effective action at the background is left open.
- **Nonlinear step.**
  - The correspondence between the outputs of the one-step bounds (III.10) and the norms restored by the reset (III.9) is not written out.
  - Several hypotheses of the step were read only as statements.
  - The cluster expansion is proved for real weights (III.5), while the fixed-volume argument uses complex tuning.
- **Fixed-volume convergence (III.12, III.13).** Two points are not fully traced: whether holomorphy in the tuning parameter is used beyond uniform bounds and continuity, and the step from subsequential to full-mesh convergence.
- **Shell identities and the flux at infinity (VI.1, VI.2).** The lattice derivation of the shell identities is given only at statement level. The exterior-flux estimate was not read. The descent of the rotation action to exact intertwiners is marked tentative.
- **Reconstruction (V.2).** The boundary values, the spectrum condition and the locality argument are described from statements; their mechanisms were confirmed in the Lean but not written out in the unit outlines.
- **Contact extensions and nested OPE (VII.4).** The shell estimates and the nested rates are described from docstrings.
- **Field relations (II.1).** It is not shown directly that the lattice equation relations exhaust the null space. The identification $F_d\cong M_d$ comes from the comparison with free theory.

## Reading guide

The [exact statement](statement.md) separates the public theorem from the stronger construction. The [architecture](outline/README.md) describes what each part hands to the next. The ultraviolet interface analysis, the downstream interfaces and the discharge analysis show where the hypotheses of conditional statements are proved.

| Question | Units to read |
|---|---|
| What are the fields, and how are their normalizations fixed? | [II.1](outline/units/II-1.md), [III.12](outline/units/III-12.md), [IV.1](outline/units/IV-1.md), [VII.1](outline/units/VII-1.md) |
| How does the ultraviolet analysis relate to Balaban's? | [III.1](outline/units/III-1.md), [III.3](outline/units/III-3.md), [III.4](outline/units/III-4.md), [III.6](outline/units/III-6.md), [III.5](outline/units/III-5.md), [III.10](outline/units/III-10.md) |
| Where does the one-loop coefficient enter? | [III.7](outline/units/III-7.md), [III.9](outline/units/III-9.md), [VII.5](outline/units/VII-5.md), [VII.2](outline/units/VII-2.md) |
| Why does one family serve every observable and every limit? | [III.2](outline/units/III-2.md), [III.13](outline/units/III-13.md), [III.14](outline/units/III-14.md), [VIII.1](outline/units/VIII-1.md) |
| How are bounds made uniform in the volume? | [III.11](outline/units/III-11.md), [III.12](outline/units/III-12.md), [III.16](outline/units/III-16.md) |
| How is infinite volume reached without an infrared RG? | [III.16](outline/units/III-16.md), [IV.1](outline/units/IV-1.md) |
| Why are there phases, and why does every phase reconstruct? | [V.1](outline/units/V-1.md), [V.2](outline/units/V-2.md), [V.3](outline/units/V-3.md); [VII.4](outline/units/VII-4.md) for the train bounds |
| How are rotations and the stress tensor recovered? | [VI.2](outline/units/VI-2.md), [VI.1](outline/units/VI-1.md), with [VII.1](outline/units/VII-1.md) and [VII.6](outline/units/VII-6.md) for the free comparison |
| What makes the theory nonfree? | [VII.2](outline/units/VII-2.md), [VII.3](outline/units/VII-3.md), with [VII.6](outline/units/VII-6.md) for arbitrary short-distance scales |
| What does the OPE say, and what is known at coincident points? | [VII.4](outline/units/VII-4.md), then [VIII.1](outline/units/VIII-1.md) for the assembly |
