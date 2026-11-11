# III.16. Analytic toolkit

*Part III — Ultraviolet construction (renormalization group).* 4,013 lines of Lean in 564 declarations used by the main theorem.

> **This page** gives the outline of the unit (statements, strategy and steps), followed by its map: the Lean source and the key statements, each linked to the exact lines. The outline below is a **first draft**, written from the Lean by one model; it has not yet been checked. It is updated as it improves.


**Part:** III, Ultraviolet construction (renormalization group). **Lean:** eight work packages, none a numbered chapter of its own: [`YM/Complex/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex), [`YM/TimeKernel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel), [`YM/Analysis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis), [`YM/Laurent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent), [`YM/CellFourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier), [`YM/Work/F07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07), [`YM/Maxwell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell), [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels). **Size:** 4,013 lines (564 declarations). Maxwell 1,007; Analysis 901; Labels 587; Complex 464; Laurent 374; CellFourier 268; Work/F07 263; TimeKernel 149.

This unit is a collection of general-purpose lemmas with no common narrative. Three groups can be told apart.

- **Trace inequalities for products of positive kernels** (`Complex/`, `TimeKernel/`, `Analysis/NNKernel`, `Analysis/Quadrature`). This group is a connected argument. It is the only part of the unit with a real proof structure, and §3–4 concentrate on it.
- **Analytic infrastructure** (`Analysis/` jets and polydiscs, `Laurent/`, `CellFourier/`, `Work/F07/`). These are Taylor-jet calculus, Cauchy estimates on polydiscs, Laurent/Fourier readout on strips, and lattice Fourier (Bloch) identities.
- **Free Maxwell algebra** (`Maxwell/`, `Labels/`). These are closed two-forms, the Bianchi identity, the free potential kernel, Wick polynomials on the Maxwell shell, and the polynomial "labels" built on radial jets.

## 1. What this unit proves

Most outputs are auxiliary lemmas, quoted by name from many other units. Four statements are the main ones.

**Proposition III.16.1 (integrating a positive kernel).** Let $X$ be a compact metric space with a finite Borel measure $\mu$, and let $K:A\times A\to\mathbb C$ be a positive-semidefinite kernel. This means that every finite Gram matrix $(K(a_i,a_j))$ is positive semidefinite, with no distinctness requirement on the points. Let $g:B\times X\to A$ be such that $(i,j)\mapsto K(g(b,i),g(c,j))$ is continuous on $X\times X$ for all $b,c\in B$. Then
$$\tilde K(b,c)=\int_X\!\int_X K\big(g(b,i),g(c,j)\big)\,d\mu(i)\,d\mu(j)$$
is again a positive-semidefinite kernel on $B$.
*Status:* theorem.
*Lean:* [`YM.Analysis.NNKernel.accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70); the notion itself is [`NNKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19).

**Proposition III.16.2 (even Schatten powers on a strip).** Let $A$ be a complex $n\times n$ matrix, $p\ge1$, $t=1/(2p)$. Then $A=\big(\mathrm{tr}((A^*A)^p)\big)^{t}\,P(t)$ up to the norm. Here $P$ is an entire matrix-valued function with $\|P(z)\|\le1$ for $0\le\mathrm{Re}z\le1$ and $|\mathrm{tr}(P(z)C)|\le1$ for $\mathrm{Re}z=1$ and $\|C\|\le1$ (a "strip path of trace interpolation").
*Status:* theorem.
*Lean:* [`YM.Holder.even_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214), with the structure [`Flex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29).

**Proposition III.16.3 (finite Lipschitz bound; key result).** Let $X$ be a positive-semidefinite $\iota\times\iota$ matrix and $b_1,\dots,b_n$ arbitrary matrices. Let $p,\mathrm{width}\ge1$, $N=2p\cdot\mathrm{width}$, and assume $\|\mathrm{tr}X^N\|>0$. Let $Y,Z\in\mathbb N^n$ be two gap vectors with $n\cdot\mathrm{width}+\sum Y_i=N$. Suppose $Z$ is obtained from $Y$ by moving a distance $m$ from $Y_j$ to $Y_i$, i.e. $Z_i=Y_i+m$, $Z_j=Y_j-m$ and all other entries equal. Suppose $r>0$ with $m\le r$ and $Y_a>2r$ for all $a$. Then
$$\Big|\mathrm{tr}\prod_a b_aX^{Z_a}-\mathrm{tr}\prod_a b_aX^{Y_a}\Big|\le\frac{\mathrm{cost}}{r}\,m,\qquad \mathrm{cost}=\prod_a\|\mathrm{tr}((b_a^*b_a)^p)\|^{1/2p}\cdot\|\mathrm{tr}X^N\|^{\,1-n/2p}.$$
There is no factor of the rank (dimension) of the matrices.
*Status:* theorem.
*Lean:* [`YM.Holder.finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229), with [`estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165) and the definitions [`total`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L108-L109), [`cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112).

**Proposition III.16.4 (passage to kernels on compact spaces; key result).** Let $X$ be a compact metric space with a finite measure $\mu$. Let $T$ be a positive-semidefinite continuous kernel and $B_1,\dots,B_n$ continuous kernels. Write $\mathrm{closed}(k_1,\dots,k_L)=\int\prod_l k_l(x_l,x_{l+1})\,d\mu^{L}$ for the cyclic integral. Assume $\mathrm{closed}(T,\dots,T)$ ($N$ factors, $N=2p\cdot\mathrm{width}$) equals $R>0$, and $\|\mathrm{closed}(B_i^*,B_i,\dots)_{p\text{ pairs}}\|^{1/2p}\le K_i R^{1/2p}$. Let $Y,Z$ be as in III.16.3 and $\mathrm{along}(T,B,Y)$ the cyclic word $B_1T^{Y_1}B_2T^{Y_2}\cdots$. Then
$$\big|\mathrm{closed}(\mathrm{along}(T,B,Z))-\mathrm{closed}(\mathrm{along}(T,B,Y))\big|\le R\,\Big(\prod_iK_i\Big)\frac{m}{r}.$$
*Status:* theorem.
*Lean:* [`YM.TimeKernel.passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106), with [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18), [`multiply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20) and [`closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76).

**Proposition III.16.5 (free Maxwell: potential and Bianchi; important in themselves).** Let $G$ be the gauge group and $j\ge0$.
- The curl of any radial Taylor jet $A$ of potentials is a closed two-form jet of degree $j$, and every closed two-jet is the curl of a unique such $A$: $\mathrm{contracted}(\mathrm{closedCurl}\,A)=A$ and $\mathrm{curl}(\mathrm{contracted}\,Q)=Q$. This is the algebraic Poincaré lemma on jets, "ordinary curvature jets modulo linear Bianchi".
- The "bare curl" kernel, i.e. the two-point function of the free Maxwell field built from $\partial\partial(\text{Green}=\|x\|^{-2})$ off the origin, solves the Maxwell and Bianchi equations in both legs.
- The one-leg bilinear pairing of Taylor probes is symmetric under exchange of endpoints, $z\mapsto-z$.

*Status:* theorems.
*Lean:* [`closedCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128), [`potential_recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214), [`curl_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195), [`Bare.equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98), [`exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169), [`harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77).

**Proposition III.16.6 (the general analytic lemmas).** The rest of the unit consists of statements of the following kinds, each used by name elsewhere.
- *Strip-to-torus readout.* A function $u$ of a complex "phase" $p$, analytic and bounded on a strip $\{|\mathrm{Im}p|<\eta\}$ and periodic (a [`Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L18-L21)), has Fourier/Laurent coefficients bounded by its strip supremum ([`market_cap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L91-L99)). Its torus integral does not depend on the line of integration inside the strip ([`full_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Turn.lean#L103-L112)). The sum of $e^{-h\,\mathrm{size}(z)}$ over shifts is finite with an explicit budget ([`Width.compactPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Art.lean#L39-L57)). The coefficient-wise derivative on a narrower strip is bounded by $(\eta-\sigma)^{-1}$ times the width ([`readDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/Read.lean#L55-L95)).
- *Matrix square root on a spectral band.* The binomial series for the root is analytic in the operator norm near a positive band ([`binRoot_on_band`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07/MatrixRoot.lean#L185-L198)).
- *Bloch identities.* For a lattice kernel of finite range, the circulant matrix on a torus is block-diagonalized by Fourier readouts, including all alias (harmonic) modes. Examples are [`circulant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104), [`aligns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129) and [`readingsGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75).
- *Analyticity on polydiscs.* Complex differentiability near a point implies analyticity there for several variables, by Cauchy integrals one variable at a time ([`finiteD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Polydisc.lean#L222-L238)). A scalar-tested holomorphic function is holomorphic ([`lift_weak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Weak.lean#L21-L50)).
- *Jets.* Higher derivatives are symmetric ([`sym_Jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/SmoothJets.lean#L71-L134)). Mixed Taylor coefficients can be exchanged between the two ends of a smooth bivariate function ([`exchangeJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Exchange.lean#L36-L69)).
- *Quadrature.* Riemann sums for a continuous function on a finite product converge simultaneously for every such function ([`Quad.approximation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L119-L133)).
- *Labels.* Gauge-invariant polynomial "labels" of radial jets are determined by their values ([`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49)). Labels of bounded height form a finite-dimensional space ([`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94)). They decompose into bi-graded pieces ([`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105)).
- *Wick polynomials on the Maxwell shell.* The correlation of Wick monomials at separated points ([`correlation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L145-L147)) is invariant under re-indexing of occurrences ([`monExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L103-L110)). A constant insertion is harmless ([`adjoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L126-L144)).

*Status:* theorems.

The statements in III.16.3–III.16.4 carry no hypothesis outside the stated ones. No assumption is carried over from other units.

## 2. What it uses

- From I.1, only basic lattice and gauge-group objects (the gauge-group data `Gauge`, lattice geometry in `Laurent/`, `CellFourier/`). This follows from the unit page; no further use of I.1 was found.
- Mathlib: Hadamard three-lines (`Complex.HadamardThreeLines`), Liouville/Cauchy estimates, the spectral theorem for Hermitian matrices, dominated convergence, Hadamard product of positive matrices (Schur product theorem).
- Standard mathematics:
  - Interpolation of Schatten norms (Hölder inequality for traces, via the three-lines theorem). Reed–Simon vol. II, Ch. IX.4 (Stein interpolation); Simon, *Trace ideals*.
  - Reflection positivity and transfer matrices: Osterwalder–Schrader; Glimm–Jaffe, Ch. 6.
  - Schur product theorem and Schoenberg's theorem that the exponential of a positive-definite kernel is positive-definite.
  - Cauchy estimates and Cauchy integral formula (Hörmander, *Several complex variables*, Ch. 2).
  - Fourier analysis on a torus, with aliasing and Poisson summation for sampling a periodic function on a coarse grid (Rudin, *Fourier analysis on groups*).
  - Classical electromagnetism: Poincaré lemma, Green function $\|x\|^{-2}$ in four dimensions, Wick's theorem for Gaussian fields.
- **Imported constants and assumptions:** none. Every statement carries explicit hypotheses. The unit has no numerical constants of its own. The width $\mathrm{width}$, period $p$, and radius $r$ are parameters, chosen by the units that apply III.16.3–III.16.4.

**Consumers** (from the dependency graph, at the level of modules; unit names are my identification from module paths and are (probable)).
- III.16.3–III.16.4 are used only through the time-kernel engine: `finite_lip` by `TimeKernel/Unit`, and `passage` by `Slice/Calendar` (the transfer-operator estimates of IV.1).
- `accumulate` is used in `Slice/Positive` (positivity of the transfer kernel, IV.1).
- The Bloch lemmas are used in `Next/FREE_KERNELS` (III.3), `Further/FREE_COVARIANCE_KP` (III.5 or III.3), `Extra/WILSON_STARTUP` (III.9), `Push/LOOP_COEFFICIENT` (III.7 or III.9) and `Work/F06` (III.3).
- Laurent/strip lemmas are used in the same RG modules and in `Pert.Bulk` (III.10).
- `Labels` and `Maxwell` are used by the label and short-distance parts (II.1, VII.1, VII.2, VII.3, VII.4, VII.6, VI.1, VI.2).

## 3. Strategy

**Trace inequalities (III.16.1–III.16.4).** The problem is to compare traces of cyclic products $b_1X^{Y_1}b_2X^{Y_2}\cdots$ when a gap $Y_i$ is moved by $m$ lattice steps. Here $X$ is a positive operator (a transfer kernel, or its sampled approximation) and the $b_a$ are insertions. The expected bound is $m/r$ times a cost that involves no rank factor. The mechanism is Hadamard's three-lines theorem in several variables. Replace the integer exponents $Y_a$ by complex exponents $W_a(x)=Y_a+x$ for $a=i$, $W_j=Y_j-x$, and others fixed. Via the analytic family $z\mapsto X^z$ (the function `leap`, built from the spectral decomposition and a convention making it entire at the eigenvalue $0$), the trace becomes an entire function $F$ of $x\in\mathbb C$. A generalized Hölder bound of the form $|\mathrm{tr}\prod b_a X^{z_a}|\le\mathrm{cost}$, valid when $\mathrm{Re} z_a\ge0$ and the real parts satisfy a homogeneity relation ($n/(2p)+\sum\mathrm{Re}z_a/N=1$), gives $|F|\le\mathrm{cost}$ on the disc $|x|\le 2r$ (the assumption $Y_a>2r$ keeps all real parts non-negative). Cauchy's estimate gives $|F'|\le\mathrm{cost}/r$ on $|x|\le r$, and the mean value inequality between $x=0$ and $x=m$ ($m\le r$) gives the claim. This is the lattice analogue of the Lieb–Thirring/Araki-type trace estimates, but proved by a finite-dimensional, self-contained interpolation, with no appeal to infinite-dimensional Schatten spaces. The result uses the L² operator norm throughout, and the passage from matrices to kernels is carried out in the second step below.

The second step (III.16.4) deduces the same bound for kernels on a compact space. Sample the kernels by a quadrature $Q_k$ with masses $m_i$ and tags $x_i$, using $\sqrt{m_i}\,k(x_i,x_j)\sqrt{m_j}$. This turns positive-semidefinite kernels (`NNKernel`) into positive-semidefinite matrices, and turns cyclic integrals into traces of products of sampled matrices. One applies III.16.3 to the sampled matrices and passes to the limit at fixed width, period and radius, since the cost converges ([`totality`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L60-L72), [`goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L45-L58)). The docstring warns: the quadrature limit is not uniform in mesh, period or gaps, so it must be taken first, at fixed regulators.

**The other packages** are infrastructure with standard proofs: Cauchy estimates, Fourier orthogonality, Taylor-coefficient combinatorics. The unusual part is the bookkeeping: all normalizations of the Taylor coefficients (as coefficients, not as derivatives), the real versus complex Lie coordinates, the Fourier phase conventions, and the finite-support devices ("no phantom labels", "no a.e. or $p\ne0$ division") are fixed once here, and each docstring states which convention it uses.

## 4. Steps

### 4.1 Positive kernels and quadrature

**Lemma 4.1 (algebra of positive kernels).** The class of positive-semidefinite kernels contains $\overline{f(x)}f(y)$ and constants. It is closed under non-negative scalars, sums (finite), products (Schur), powers, pullbacks along maps, pointwise limits, and $K\mapsto e^{K}$.
*Sketch:* Schur product theorem for products; the exponential is a pointwise limit of partial sums, each a non-negative combination of powers; closedness uses the criterion $\sum_{i,j}\bar c_i K(x_i,x_j)c_j\ge0$ plus the Hermitian symmetry that follows from the $2\times2$ case.
*Lean:* [`times`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L37-L38), [`criterion`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L69-L75), [`closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L80-L88), [`exp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L90-L99).

**Lemma 4.2 (quadrature on compact spaces).** On a compact metric space with a finite measure there are quadratures $Q_k$ (finite partitions with masses and tags) such that, for every continuous $F$ on a finite product, the weighted Riemann sums converge to the integral against the product measure.
*Sketch:* shrinking partitions, uniform continuity, and dominated convergence for the product.
*Lean:* [`Quad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26), [`Quad.approximation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L119-L133), [`Quad.approx`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L19-L38). *(approx proof read; approximation statement only)*

**Lemma 4.3 (= III.16.1, accumulation).** *Sketch:* for each $Q_k$ the discretized kernel $\sum_{i,j}m_im_jK(g(b,x_i),g(c,x_j))$ is positive-semidefinite, by applying the positivity of $K$ to the product index set (labels $\times$ tags) with weights $r_b m_i$. Then use Lemma 4.1 (closedness) and Lemma 4.2 for the limit $k\to\infty$.
*Lean:* [`accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70).

### 4.2 Finite trace estimate (matrices)

**Lemma 4.4 (convex strip bound).** Let $V_1,\dots,V_n$ be strip paths ([`Flex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29): entire, $\|V(t)\|\le1$ for $0\le\mathrm{Re}t\le1$, and $|\mathrm{tr}(V(t)C)|\le1$ for $\mathrm{Re}t=1$, $\|C\|\le1$), and $h_i$ complex numbers with $\mathrm{Re}h_i\in[0,1]$, $\sum\mathrm{Re}h_i=1$. Then $|\mathrm{tr}\prod V_i(h_i)|\le1$.
*Sketch:* induction on $n$. Fix the first factor and let the others slide along the affine path toward $h_i$ (a function $\mathrm{toward}$); this gives an analytic function $E$ of one variable on a vertical strip $0\le\mathrm{Re}x\le1$. On $\mathrm{Re}x=0$ apply the induction hypothesis to $n-1$ factors, with the first absorbed into the fixed matrix $c$. On $\mathrm{Re}x=1$ use the border condition, with cyclic invariance of the trace. Hadamard's three-lines theorem then bounds $E$ at the interior point.
*Lean:* [`convexStrip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L130-L132) (core: `holder_core` in the same file).

**Lemma 4.5 (= III.16.2, even power representation).** For $A$ with singular value decomposition $A=P\,D(s)\,Y^*$, write $w_i=s_i^{2p}$, $R=\sum w_i$, $f_i=w_i/R$. The strip path is $t\mapsto X\cdot\mathrm{diag}(f_i^{\,t})\cdot Y^*$, where $X$ is a contraction. It satisfies $\|\cdot\|\le1$ because $\sum f_i\le1$ and $f_i\le1$. The border condition is $|\mathrm{tr}(X\mathrm{diag}(f_i)Y^*C)|\le\sum_if_i\,|E_{ii}|\le1$. At $t=1/(2p)$, $f_i^{1/(2p)}=s_iR^{-1/(2p)}$, giving the stated factorization.
*Lean:* [`even_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214), with [`weighted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L60-L81) and the entire power function `specPow`.

**Lemma 4.6 (power family of a positive matrix).** For positive semidefinite $X$ and $N\ge1$ there is a strip path $P$ with $X^{z}=(\mathrm{tr}X^N)^{z/N}P(z/N)$ for all complex $z$, where $X^z$ is the holomorphic family ([`leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24)), equal to the ordinary power $X^p$ at every positive integer $p$.
*Lean:* [`flexPower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L39-L63).

**Lemma 4.7 (estimation).** If $\mathrm{Re}v_a\ge0$ and $n/(2p)+\sum_a\mathrm{Re}v_a/N=1$ then $\|\mathrm{tr}\prod_a b_aX^{v_a}\|\le\mathrm{cost}(X,b,p,N)$.
*Sketch:* write $b_a$ by Lemma 4.5 and $X^{v_a}$ by Lemma 4.6; collect the scalars $\prod\|\mathrm{tr}((b_a^*b_a)^p)\|^{1/2p}\,(\mathrm{tr}X^N)^{\sum v_a/N}$, and the remaining product of strip paths has exponents summing to $1$ on the real axis, so Lemma 4.4 gives bound $1$.
*Lean:* [`estimation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L124-L165).

**Lemma 4.8 (= III.16.3, finite Lipschitz).** *Sketch:* as in §3; Cauchy's estimate on the circle of radius $2r$ about each point of $|x|\le r$, and the mean value inequality for holomorphic functions on the convex disc.
*Lean:* [`finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229).

### 4.3 From matrices to kernels

**Lemma 4.9 (traces converge to cyclic integrals).** For continuous kernels $k_1,\dots,k_L$ the trace of $\prod\mathrm{sample}_{Q_k}(k_l)$ converges as $k\to\infty$ to $\mathrm{closed}(k_1,\dots,k_L)$.
*Sketch:* the trace of a product of sampled matrices is $\sum_p\prod_jm_{p_j}\cdot\prod_lk_l(x_{p_l},x_{p_{l+1}})$, because the $\sqrt m$ weights telescope around the cycle. This is a quadrature sum for the cyclic integral; apply Lemma 4.2.
*Lean:* [`learns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L109-L119).

**Lemma 4.10 (= III.16.4, passage).** *Sketch:* sampling a positive-semidefinite continuous $T$ gives positive-semidefinite matrices (`safe`); the sampled column quantities $\|\mathrm{tr}((B^*B)^p)\|^{1/2p}$ converge to $\|\mathrm{closed}(\text{columns})\|^{1/2p}$, and $\mathrm{tr}X^N\to R>0$. For large $k$ the hypothesis $\mathrm{tr}X^N>0$ of Lemma 4.8 holds; apply it, and pass to the limit. The hypothesis on $K_i$ turns the product of column factors times $R^{1-n/2p}$ into $R\prod K_i$.
*Lean:* [`passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106).

### 4.4 Free Maxwell algebra and labels

**Lemma 4.11 (Bianchi and potential recovery; III.16.5).** *Sketch:* the curl of a symmetric Taylor jet satisfies $dF=0$ by symmetry of second derivatives (`sym_Jet`, `commuteD`). Conversely, closed jets are reached by the contraction with the Euler vector field (homotopy formula). This gives the explicit inverse `contracted` and the identities of III.16.5 degree by degree.
*Lean:* [`closedCurl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L108-L128), [`curl_inverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L163-L195), [`potential_recover`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L197-L214).

**Lemma 4.12 (free kernel solves the equations).** $\Delta\|x\|^{-2}=0$ off the origin ([`first_Green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L37-L47), [`harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/PotentialKernel.lean#L69-L77)). The curl–curl kernel `bareCurl` satisfies $\partial_aF_{ab}=0$ and Bianchi in either leg ([`Bare.equation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Curls.lean#L82-L98), with `WaveOn`/`onShell`: [`WaveOn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L57-L62), [`jets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L73-L122)). The Taylor-coefficient pairing of two probes is symmetric ([`exchange`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Bilinear.lean#L159-L169)), and descends to the quotient by the Maxwell equation ideal ([`descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L148-L159)).

**Lemma 4.13 (Wick bookkeeping).** The free correlation of gauge-labelled Wick polynomials at separated points depends only on the pairing graph and not on how the occurrences are indexed, and ignores constant insertions ([`monExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L103-L110), [`adjoin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Reorder.lean#L126-L144)).

**Lemma 4.14 (labels).** Labels are finite polynomials in the radial jet coordinates, graded by bidegree and filtered by engineering weight. A real frame is chosen coherently across all cutoffs ([`Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57), [`frames`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L107-L111)). They are determined by evaluation ([`eval_ext`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L38-L49)); bounded height gives finite dimension ([`cap_finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L63-L94)); the bigrading decomposition holds even after $G$-invariance ([`decompose`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Grading.lean#L87-L105)). Rotations act on labels by composition with the inverse ([`rotation_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Action.lean#L82-L88)).

### 4.5 Strip, torus and Fourier readout

**Lemma 4.15 (Laurent/strip).** Statements as in III.16.6: `market_cap`, `full_turn`, `compactPay`, `readDeriv`, `binRoot_on_band`. The mechanism is the Cauchy integral formula on the strip, shifting the contour inside the strip of analyticity, with absolute convergence from the width budget. A sample of the argument: a bound $K$ for $u$ on $\{|\mathrm{Im}p|\le\eta\}$ bounds each coefficient by $K$ because the coefficient is an average over a torus of $u$ against a unimodular character, after shifting the contour; hence the sup of the symbol bounds its readout.
*Lean:* see III.16.6 for links.

**Lemma 4.16 (Bloch/alias identities).** For a finite-range kernel on a lattice, the circulant matrix on any torus (sizes $L\times$ coarse cell), with all alias phases included, is intertwined with the diagonal of its symbol evaluated on the aliases. This holds for complex $p$ as well as real, and removes no harmonic mode.
*Lean:* [`circulant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Circulant.lean#L88-L104), [`aligns`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L110-L129), [`readingsGram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Shuttle.lean#L66-L75), [`aliasBlock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier/Alias.lean#L30-L31).

## 5. Where the difficulty lies

- **The one real piece of mathematics is the rank-free trace Lipschitz bound** (4.4–4.8). Everything else is conventional. The point is that a gap can be moved with cost $\mathrm{cost}\cdot m/r$ independently of the matrix dimension. Without this one would pay a factor of the number of sites (or of the rank), which would be fatal for the infinite-volume and transfer-operator estimates. The proof is short and uses only the three-lines theorem; the Lean proof is clean (about 350 lines for 4.4–4.8).
- **The bound compares two words in the same $X$ and $b_a$; no assumption on $b_a$ beyond finite norms of $\mathrm{tr}((b^*b)^p)$**, so insertions need not be positive or even normal. This is stronger than usual trace-norm interpolation, which would require Schatten norms of $b_a$ (the same quantities when the rank is finite, but the passage to kernels needs them in the form of the *column* strengths used here).
- **Unusual restriction**: $N=2p\cdot\mathrm{width}$ is a multiple of $2p$, and $Y_a>2r$ is required (not just $\ge$), with $\mathrm{tr}X^N>0$ assumed. A reader would expect such conditions to be harmless but they must be checked at the point of use (III.16.4 requires $R>0$ for the actual $N$-fold cyclic integral).
- **Hypothesis `hR`/`hK` in III.16.4** are statements about the continuum kernels, so that the limit of the sampled constants is the right one. The proof takes the quadrature limit at fixed $p,N,\mathrm{width}$ and then uses that the inequality is closed under limits. This is the order of limits warned of in the docstring.
- **Routine**: positive-kernel algebra, polydisc analyticity (a re-proof of what Mathlib does for one variable), jets. The Maxwell and Labels packages are long (about 1,600 lines) but consist of definitions of coefficient conventions and verification of identities. Their difficulty is in conventions (real versus complex Lie coordinates, Taylor coefficients versus derivatives, reflection stars supplied separately), not ideas.
- **Nothing unusual or suspicious was found.** All outputs are theorems with explicit hypotheses. Several docstrings state what is *not* assumed ("does NOT assert B positive", "no ground-state assumption", "does not assume an equation-ideal/detection theorem", "no assertion about distributional extension").

## 6. Notation

| Written proof | Lean | Meaning |
|---|---|---|
| positive-semidefinite kernel $K\succeq0$ | [`Analysis.NNKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Nonnegative.lean#L18-L19) ("nonnegative-type kernel") | all finite Gram matrices PSD |
| quadrature $Q$ (masses, tags) | [`Analysis.Quad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Quadrature.lean#L22-L26) | finite partition with weights |
| strip path $V$ | [`Holder.Flex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Holder.lean#L25-L29) | entire matrix function contractive on $0\le\mathrm{Re}\le1$ with trace border condition |
| $X^z$ ($X\succeq0$) | [`Holder.leap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L22-L24) | holomorphic power family, equal to $X^p$ at $p\in\mathbb N_{>0}$ |
| $\mathrm{Q}(X,N)=\lvert\mathrm{tr}X^N\rvert$ | `Holder.Q` | partition-function-like normalization |
| $\rho_p=1/(2p)$ | `Holder.rate` | exponent of the column norm |
| $\mathrm{cost}(X,b,p,N)$ | [`Holder.cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L111-L112) | $\prod\lVert\mathrm{tr}(b^*b)^p\rVert^{\rho_p}\cdot Q^{1-n\rho_p}$ |
| cyclic integral $\oint(k_1,\dots,k_L)$ | [`TimeKernel.closed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Trace.lean#L76) | $\int\prod k_l(x_l,x_{l+1})$ |
| word with gaps $\mathrm{along}(T,B,Y)$ | [`TimeKernel.along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L17-L18) | $B_1T^{Y_1}B_2T^{Y_2}\cdots$ |
| column word $B^*B$ repeated $p$ times | [`TimeKernel.multiply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L20) | $(B^*B)^p$ in kernel form |
| periodic analytic symbol | [`Laurent.Vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Rune.lean#L18-L21) | $u$ analytic and periodic on a strip |
| strip width bound | [`Laurent.Width`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent/Eval.lean#L104) | summable Laurent coefficients with weight |
| closed 2-jet | [`Maxwell.ClosedJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Exterior.lean#L57-L61) | homogeneous 2-tensor with $dF=0$ |
| Maxwell shell | [`Maxwell.onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42) | jets satisfying Maxwell and Bianchi |
| label | [`Labels.Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112) | gauge-invariant polynomial on radial jets (reference labels) |
| coefficient frame | [`Labels.Frame`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Basis.lean#L50-L57) | real filtered basis, coherent across cutoffs |

The names `Vane`, `market`, `leap`, `passage`, `learns`, `pays`, `cash` are arbitrary words and carry no meaning. In particular `market`/`reward`/`pays` are not economic. The glossary file was not searched for entries on them.

## 7. Open points for the writer

1. **The unit has no single statement.** A written proof should split it: (a) §4.1–4.3 as an "operator-theoretic appendix" used by IV.1 and the transfer-operator estimates; (b) the Laurent/Bloch/jet lemmas as a short list of facts quoted where needed; (c) the Maxwell and Labels material attached to the short-distance units (VII.1, VII.3, VII.4) and to II.1. The unit boundary is an artifact of the Lean packaging.
2. **Identification of consumers.** The consumer modules listed in §2 were matched to unit ids by module path; some (for example `Slice.*` going to IV.1, `Push.LOOP_COEFFICIENT` going to III.7 or III.9) are guesses (tentative). The unit page lists 27 using units, which was not cross-checked item by item.
3. **How III.16.3–III.16.4 are applied.** Which gaps, which $b_a$, which $p$ and width are chosen is decided in the consumer (`Slice/Calendar`), and the reason for $N=2p\cdot\mathrm{width}$ is not explained in this unit. A writer should read `YM/Slice/Calendar.lean` to see how the Lipschitz bound is summed over moves to show that a time-gap kernel is close to its stationary value.
4. **Proofs not read.** The Maxwell and Labels packages (4.11–4.14), the Laurent, Bloch and F07 lemmas (4.15–4.16), polydisc analyticity, and the exchange lemmas were read at the level of statements and docstrings only. Statements (not proofs) are what §1 relies on. In particular the exact form of the closed-jet contraction, and whether the Euler-homotopy argument in 4.11 is the mechanism, is (tentative).
5. **Intermediate norms.** III.16.2–III.16.3 use the L² operator norm on the matrices, "not the Frobenius norm used on gauge matrices" (docstring of `Complex/Holder.lean`). A writer comparing with RG estimates should check which norm a given consumer uses.
6. **Work-package names.** `YM/Work/F07/` is described only as "reading with a narrower strip" and "one analytic branch of the matrix root"; its place in the larger argument (apparently the free-kernel symbols of III.3) was not traced.
7. **Several docstrings mention conventions that look like reminders to the authors** (for example "check whether constants must be pre-L when types themselves scale"). These do not affect the statements but indicate that the orders of constants (III.2) govern how `Width` is used.

**Builds on:** [I.1](I-1.md).

**Used by:** [III.7](III-7.md), [VI.2](VI-2.md), [III.3](III-3.md), [II.1](II-1.md), [VII.2](VII-2.md), [III.11](III-11.md), [VII.1](VII-1.md), [III.6](III-6.md), [VII.3](VII-3.md), [III.2](III-2.md), [III.13](III-13.md), [III.4](III-4.md), [III.12](III-12.md), [III.14](III-14.md), [VI.1](VI-1.md), [III.10](III-10.md), [III.9](III-9.md), [VIII.1](VIII-1.md), [IV.1](IV-1.md), [VII.4](VII-4.md), [III.8](III-8.md), [III.15](III-15.md), [III.5](III-5.md), [III.1](III-1.md), [VII.6](VII-6.md), [V.2](V-2.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| work package [`YM/Maxwell/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell) | 1,007 |
| work package [`YM/Analysis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis) | 901 |
| work package [`YM/Labels/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels) | 587 |
| work package [`YM/Complex/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex) | 464 |
| work package [`YM/Laurent/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Laurent) | 374 |
| work package [`YM/CellFourier/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/CellFourier) | 268 |
| work package [`YM/Work/F07/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/F07) | 263 |
| work package [`YM/TimeKernel/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel) | 149 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **III.16.1** [`accumulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Analysis/Projected.lean#L44-L70) *(numbered result)* — Integrating a nonnegative-type kernel over independent random labels on each side yields a nonnegative-type kernel again.
- **III.16.2** [`even_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Columns.lean#L183-L214) *(numbered result)* — Even Schatten powers at real parameters are bounded by a cost along a strip path of trace interpolation.
- **III.16.3** [`finite_lip`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Complex/Gaps.lean#L170-L229) *(key result)* — Moving two gap centers by m lattice steps changes the trace of the product by at most cost times m over r.
- **III.16.4** [`passage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TimeKernel/Unit.lean#L76-L106) *(key result)* — For nonnegative kernels with column bounds, the cyclic integrals of products differing by one center motion differ by at most R·∏K·m/r.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)
