# VII.3. Free Wick polynomials and reflected Gram positivity

*Part VII — Identification as Yang–Mills.*

Establishes positivity and detection for free Wick polynomials and explains their role in the finite-profile comparison.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VII-3.md) · [← Previous: VII.2](VII-2.md) · [Next: VII.4 →](VII-4.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** The declaration allocation here covers the free algebra and Gram form. The finite-profile exclusion is also explained below, using the trace law of [VII.2](VII-2.md); its concluding declarations are allocated to VII.2 and the public bridge to [VIII.1](VIII-1.md).

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/Extra/FREE_DETECTOR_ALGEBRA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA), [`YM/Pert/Position`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position), [`YM/Pert/Rigid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid), [`YM/Pert/Lattice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice), and a few declarations of [`YM/Push/LOOP_COEFFICIENT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT). Proposition VII.3.7 is in [`YM/TraceExtension/Wick`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick) and [`TraceBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean). **Size:** about 3,800 declaration lines on the main dependency path in the listed folders, excluding the trace-exclusion files.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

All points lie in $\mathbb R^4$. Let $\mathfrak g$ have its invariant inner product; $\mathfrak g=0$ is allowed in VII.3.1–5. Free moments are Wick-ordered Maxwell correlations with covariance built from $\Gamma(z)=(4\pi^2|z|^2)^{-1}$. Conjugation bars conjugate polynomial coefficients, and orthogonal transformations act on every tensor index. For $x\ne y$, set $\langle P,Q\rangle_{x,y}=\langle P(x)(\mathcal R_{x-y}\bar Q)(y)\rangle_0$.

**Proposition VII.3.1 (strict positivity).** For every $x\ne y$, this pairing on $\mathcal W$ is Hermitian, with real self-pairings positive exactly for $P\ne0$. For every finite complex-linearly independent family $(V_i)$, $(\langle V_j,V_i\rangle_{x,y})_{ij}$ is positive definite, without degree restriction.
*Status:* theorem; only strict positivity is used downstream. *Lean:* [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53), [`reflected_symm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L57-L76), [`reflected_pd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L80-L97).

**Proposition VII.3.2 (tower Gram form).** For $n\ge0$, $z=x-y\ne0$, $B_z(p,q)=\langle\ell_p,\ell_q\rangle_{x,y}$ is symmetric positive definite on $\mathrm{Tow}_n$. A block-unitriangular automorphism $\sigma_z$ satisfies, for all $p,q$,

$$B_z(\sigma_zp,\sigma_zq)=\sum_{j<n}\frac{(j+1)(j+2)2^j}{\pi^2|z|^{2j+4}}\langle p_j,q_j\rangle.$$

For any $b_1,\ldots,b_N\in\mathrm{Tow}_n$ with $B_z(b_i,b_k)=d_i\delta_{ik}$, $d_i\in\mathbb R$, let $\Phi_b:\mathbb C[Y_1,\ldots,Y_N]\to\mathcal W$ be the algebra homomorphism with $\Phi_b(Y_i)=\ell_{b_i}$. For all complex polynomials $p,q$,

$$\langle\Phi_bp,\Phi_bq\rangle_{x,y}=\sum_\alpha p_\alpha\overline{q_\alpha}\prod_i\alpha_i!d_i^{\alpha_i}.$$

*Status:* theorem. *Lean:* [`shiftAll_gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133), [`towerB_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154), [`duplex_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116).

**Proposition VII.3.3 (Wick recursion).** For every $n\ge1$, $x\in\mathrm{Conf}_n$, $W\in\mathcal W^n$, insertion $i$ and slot $s$,

$$\langle\cdots(W_iX_s)(x_i)\cdots\rangle_0=\sum_{k\ne i}\langle\cdots W_i(x_i)\cdots(\partial_s^{x_i,x_k}W_k)(x_k)\cdots\rangle_0,$$

where $\partial_s^{y,y'}$ is the complex-linear derivation with $\partial_s^{y,y'}X_t=C_{st}(y-y')$. For every $n\ge0$ and $x\in\mathrm{Conf}_n$, this recursion and $T(1,\ldots,1)=1$ uniquely determine the complex-multilinear free moment $T$. Moments are $O(4)$-covariant; conjugating all polynomials conjugates their moment.
*Status:* theorem. *Lean:* [`Pair.remove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108), [`byAnnihilators`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L24-L62).

**Proposition VII.3.4 (faithfulness).** For every $d\ge0$, $P\in\mathrm{sh}_d$ vanishes if all its correlations with arbitrary finite families $Q_i\in\mathrm{sh}_{d_i}$, $d_i\ge0$, at distinct points vanish. Thus null labels are exactly $\ker\omega_d$, and $\omega_d$ induces $E_d\cong\mathrm{sh}_d$, with injection $\varpi_d:E_d\to\mathcal W$. For every basis $(b_i)$ of $E_d$ and $x\ne y$, $v\mapsto(\langle\varpi_dv(x)\varpi_db_i(y)\rangle_0)_i$ is injective. For any Wilson family, any table on its register, and any pair with $x_\mu\ne y_\mu$ in every coordinate, these readings give a column system: a conjugation-fixed complex basis with unit first, from frame labels with recorded weight and length.
*Status:* theorem. *Lean:* [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54), [`exactField`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L64-L65), [`scanner_inj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L103-L115), [`vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L25-L38).

**Proposition VII.3.5 (covariance).** For every gauge group above, free-table correlations respect signed coordinate permutations and conjugation. For every $d$, $O(4)$ acts complex-linearly on $E_d$, with $\varpi_d(Rv)=R\varpi_d(v)$.
*Status:* theorem. *Lean:* [`table_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91), [`rideO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L106-L110).

**Proposition VII.3.6 (rigidity and position equations).** A buffer $B\in\mathrm{Buf}_d$ is complex-linear on $E_d$, kills $1$, preserves every lower-degree subspace, and commutes with conjugation and signed permutations. Buffers form a finite-dimensional real space. A buffer is stationary when inserting $B$ successively in every slot gives total free correlation zero for every field tuple and distinct-point configuration.

(a) If $\mathfrak g$ is simple nonabelian, every stationary degree-four buffer vanishes. Indeed $B=0$ follows from $\langle Bv\rangle_0=0$ and $\langle(Bv)(e)w(0)\rangle_0+\langle v(e)(Bw)(0)\rangle_0=0$ for all $v,w\in E_4$, where $e$ is axis $0$'s unit vector. Also $\mathrm{Buf}_d=0$ for $d<4$.

(b) For any gauge group, if stationary degree-$d$ buffers vanish, finitely many sections $(r_i,p_i,f_i)$, $r_i\ge0$, $p_i\in E_d^{r_i}$, $f_i\in C_c^\infty(\mathrm{Conf}_{r_i};\mathbb C)$, and real-linear $g:\mathbb R^k\to\mathbb R^{\dim_{\mathbb R}\mathrm{Buf}_d}$ give the position chart $\mathrm{chart}_Q(w,B)=g(\mathrm{Re}\,w_i((1+B)p_i))_i$, where $w_i$ are complex-multilinear forms. At the free tested data $w_Q$ and $B=0$, its buffer derivative is the isomorphism

$$B\longmapsto g\Big(\mathrm{Re}\int f_i(x)\sum_j\langle p_{i1}(x_1)\cdots(Bp_{ij})(x_j)\cdots\rangle_0\,dx\Big)_i.$$

Such systems are called clean and square.

(c) Assume simple nonabelian $\mathfrak g$, a final Wilson record with table $S$, and a scaling sequence $X=(r_k,U_{k,d},\xi_k)$: $r_k\downarrow0$ strictly, $\xi_k>0$, and complex-linear isomorphisms $U_{k,d}:E_d\to F_d(S)$. Assume VI.2's leading comparison and eventual frame compatibility with unit, conjugation, signed permutations and inclusions. Fix a clean square degree-four system $Q$ and $\varphi$ satisfying: a local real-analytic solution of $\mathrm{chart}_Q(w,\varphi(w))=\mathrm{chart}_Q(w_Q,0)$, with $\varphi(w_Q)=0$ and local uniqueness; $\pi_Q^{(0)}(L,k)\to w_Q$ for every integer $L\ge2$; for every $L\ge2$ and $p,j\ge0$, eventually all order-$j$ coupling derivatives at zero of the position equations on the order-$p$ lattice truncation and its image under $\varphi$ equal those of the constant free value; and buffers $A_k\to0$ with invertible $1+A_k$, eventually solving the equations and satisfying the displayed comparison below with $B_k$ replaced by $A_k$, for every clean degree-four $R$ and integer $L\ge2$.

Then $B_k=\varphi(m_Q(k))\to0$; eventually $1+B_k$ is invertible and $U_{k,4}(1+B_k)$ solves $Q$ exactly, respects unit, conjugation, signed permutations and degree-$\le3$ inclusions, and

$$m_R^{B_k}(k)-\mathrm{chart}_R\bigl(\pi_R^{(0)}(L,k),\varphi(\pi_Q^{(0)}(L,k))\bigr)\to0.$$

*Status:* (a,b) theorems; (c) conditional theorem, hypotheses discharged in VI.2 and VIII.1. *Lean:* [`Rigid.frozen_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113), [`square_of_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147), [`residency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43).

**Proposition VII.3.7 (finite Wick profiles).** A mode has mass $\mathsf m\ge0$, integers $j,q\ge0$, continuous $h:\mathbb R^3\to\mathbb R$ with $h(tp)=t^jh(p)$ for every $t>0$ and $p$. Its kernel, for $r>0$, is

$$K_{\mathsf m,q,h}(r)=\int_{\mathbb R^3}\frac{E^qh(p)e^{-rE}}{2E}\,dp,\qquad E=\sqrt{\mathsf m^2+|p|^2}.$$

A Wick profile is a finite complex linear combination of finite products of these kernels, including empty products. If $r^8\log^2(1/r)G_\Theta(r)\to A>0$ as $r\to0^+$, every profile $W$ differs from $G_\Theta$ somewhere in every $(0,\delta)$, $\delta>0$. In the selected reconstructed theory, every corresponding finite sum of mass-shell contractions differs from the Wightman two-point function on some Schwartz product $\bar f\otimes g$ with compactly supported $\overline{\widehat f}\widehat g$, using positive-sign Fourier transforms. Contractions test this product at sums of positive-energy on-shell momenta, with densities $E^qh/(2E)$.
*Status:* theorem, assigned to VII.2 and VIII.1; VII.2 supplies $A=3\dim\mathfrak g/\pi^4$. *Lean:* [`Wick.euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80), [`Wick.polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105).

<a id="unit-inputs"></a>

## 2. What it uses

- III.16: Maxwell kernels, jets and response identity; IV.1: tables, quotient fields and columns.
- VI.1, VI.2: scaling sequences, leading Maxwell comparison and degree-four basis; VII.1: order-zero lattice convergence; VIII.1: implicit-position conditions.
- VII.2: trace asymptotic and mode expansions; V.3: positive-energy spectral representation; I.1: Wilson lattice action.
- Wick's theorem, Hobson's formula, Maxwell inversion covariance, finite-dimensional duality and the analytic implicit function theorem.

<a id="unit-strategy"></a>

## 3. Strategy

Kelvin inversion and translation diagonalize the reflected jet covariance. Wick recursion extends positivity to polynomials, detecting null labels. Degree-four rigidity then supplies finite position equations. Independently, finite Wick profiles have power-log expansions incompatible with the trace's inverse-logarithmic leading term.

<a id="unit-steps"></a>

## 4. Steps

1. Hobson's formula identifies multipole fields with Kelvin transforms. Translating at the inverted separation cancels lower Taylor coefficients and gives positive Gram pivots. [`reply_kelvin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L111-L113), [`shiftAll_gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133).
2. Wick recursion gives factorial monomial norms; every polynomial lies in a finite tower. Reflected self-tests then prove faithfulness and injectivity. [`duplex_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116), [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54).
3. In the 22-dimensional degree-four basis, stationarity forces weighted antisymmetry; signed permutations force symmetry or zero. Finite test functionals detect all buffers, giving invertible linearization. [`coeff_barren`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L90-L105), [`square_of_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147).
4. Local implicit uniqueness identifies $B_k$ with $A_k$ eventually, transferring exact position equations and leading comparison. [`residency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43).
5. At finite regulator, normalized Gaussian perturbative expectations define lattice profiles; separate imaginary Gaussian averages within insertions implement Wick subtraction. Their tested Riemann sums give the lattice readings. [`Full.profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56), [`Full.column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41).
6. Mode expansions have integer powers and nonnegative logarithmic powers. Dominance along $r=2^{-n}$ excludes the trace law; spectral damping transfers tested Wightman equality to Euclidean equality. [`Wick.no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108), [`Wick.polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Simultaneous diagonalization depends on Taylor normalization and ordered-index contractions. The position comparison is leading-order only. Non-freeness excludes finite profiles, leaving continuous-mass generalized free fields and infinite Wick expansions outside its scope.

<a id="unit-notation"></a>

## 6. Notation

$\mathrm{Conf}_n$: distinct-point configurations; $\mathrm{Sol}_j$: real $\mathfrak g$-valued homogeneous degree-$j$ 2-forms satisfying $dS=\delta S=0$; $\mathrm{Tow}_n=\bigoplus_{j<n}\mathrm{Sol}_j$; $\mathcal W=\mathbb C[X_s]$: polynomials in basis coordinates $s=(j,a)$ of on-shell Taylor coefficients. $\ell_p(A)=\sum_j\langle p_j,A_j\rangle$, using Taylor coefficients $(j!)^{-1}D^j$ and summing over all ordered form and derivative indices, without a factor $1/2$; $\mathcal R_z$: reflection in $z^\perp$; $C_{st}$: jet covariance. $\omega_d$: on-shell evaluation of adjoint-invariant radial-potential labels of weight $\le d$, with order-$j$ slots weighted $j+2$; $\mathrm{sh}_d=\mathrm{im}\omega_d$; $E_d$: free quotient. $m_Q$, $w_Q$, $\pi_Q^{(0)}$: tested rescaled correlations in $U_{k,4}$, free readings, and order-zero lattice readings at spacing $L^{-k}$, respectively; $m_R^B$: measured readings in frames $U_{k,4}(1+B)$; $\mathrm{chart}_Q$: tested readings after $1+B$. $G_\Theta(r)$: centered stress-tensor trace two-point function in the selected phase at $\mp(r/2)e_{\rm t}$.

<a id="unit-limitations"></a>

## 7. What remains unexplained

An intrinsic characterization of $\mathrm{sh}_d$ needs surjectivity. Interacting rank estimates belong to III.11 and III.12; continuum Wick subtraction to VII.1. Further Maxwell-Fock embedding exclusions are outside VII.3.7.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VII-3.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.16](III-16.md), [IV.1](IV-1.md), [VI.2](VI-2.md), [VI.1](VI-1.md), [II.1](II-1.md).

**Referenced by:** [VII.1](VII-1.md), [VIII.1](VIII-1.md).

## Lean source

**Source allocation:** 3,325 attributed lines; 678 line-counted declarations; 798 assigned declaration names. Of the assigned names, 769 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Extra/FREE_DETECTOR_ALGEBRA/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA) — 2,135 lines.
- work package [`YM/Pert/Lattice/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice) — 599 lines.
- work package [`YM/Pert/Position/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position), with [`YM/Pert/Rigid/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid) — 541 lines.
- work package [`YM/Push/LOOP_COEFFICIENT/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT) — 50 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`traceTwo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149)
- [`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158)
- [`Mode.kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L159-L161)
- [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164)
- [`wickProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166)
- [`Hierarchy.TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175)
- [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44)
- [`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24)
- [`shellSector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64)
- [`ProbeFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L67-L72)
- [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L84-L85)
- [`(freeTable F).Field d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74)
- [`labeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L29-L69)
- [`frameRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L71-L83)
- [`faceTest_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L96-L99)
- [`solO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Covariance.lean#L159-L163)
- [`reply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L24)
- [`replyTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L28-L31)
- [`aligned_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L104-L109)
- [`join`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L28)
- [`aligned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L49-L52)
- [`duplex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L54)
- [`join_crash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L60-L66)
- [`aligned_one_right`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L76-L79)
- [`aligned_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L81-L84)
- [`crash_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L88-L102)
- [`face`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Forms.lean#L103)
- [`wick_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L111-L137)
- [`wick_rotate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L81-L101)
- [`RStage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L18-L27)
- [`recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L41-L49)
- [`freeze_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L109-L119)
- [`rr`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L25)
- [`radial_curl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L28-L44)
- [`strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L46)
- [`strength_sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L51-L55)
- [`divP_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L59-L77)
- [`curl_kelvin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L82-L109)
- [`radial_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L43-L46)
- [`observe_rot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L56)
- [`observe_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L58)
- [`inversePoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L110)
- [`reply_radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L112-L122)
- [`leg_cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L156-L160)
- [`Match.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Match.lean)
- [`Occurrences.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Occurrences.lean)
- [`newLeg_below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L105-L111)
- [`newLeg_diag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L113-L121)
- [`shiftAll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L123-L124)
- [`shiftAll_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L135-L141)
- [`shiftDual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L143-L146)
- [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L24)
- [`price_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L25)
- [`scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L29-L32)
- [`scan_sym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L37-L47)
- [`slide_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L49-L57)
- [`slide_below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L59-L60)
- [`slide_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L62-L67)
- [`ProbeTower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L69)
- [`towerB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L71-L77)
- [`towerB_sym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L90-L94)
- [`newLeg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L98-L99)
- [`tally`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L41)
- [`tally_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L44-L52)
- [`aligned_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L60-L85)
- [`bar_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L90-L95)
- [`sector_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L25-L26)
- [`sector_rot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L27-L28)
- [`point_probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L31-L36)
- [`free_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L58-L59)
- [`writes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L70-L71)
- [`ride`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L99-L101)
- [`Pair.extractVar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L25-L26)
- [`Pair.remove_mon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L64-L86)
- [`code`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L16-L23)
- [`encode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L25)
- [`from_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L37-L46)
- [`crash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L81)
- [`crash_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L83-L94)
- [`crash_relation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L96-L100)
- [`signal_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L135-L139)
- [`signal_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L141-L147)
- [`shifts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L20-L21)
- [`fields_shift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L27-L32)
- [`invert_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L40-L56)
- [`signal_kelvin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L68-L81)
- [`Sol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L115)
- [`Sol.harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L129)
- [`Sol.freeze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L140-L159)
- [`Sol.freeze_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L164-L172)
- [`barPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L46)
- [`pullSol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L54-L55)
- [`digit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L77)
- [`digit_coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L95-L96)
- [`towards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L104-L113)
- [`field_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L118-L119)
- [`vane_possible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L41-L42)
- [`upright`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L20-L29)
- [`script_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L38-L44)
- [`Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112)
- [`Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L22)
- [`WickPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24)
- [`observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67)
- [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162)
- [`onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42)
- [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)
- [`Wick.entry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24)
- [`Headline.TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120)
- [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39)
- [`firstTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81)
- [`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46)
- [`Full.amplitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L87)
- [`Orb.FP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/GaugeFix.lean#L94)
- [`Orb.data`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31)
- [`Orb.weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61)
- [`Orb.expect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L74)
- [`Orb.normalize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L85)
- [`Orb.finite_agreement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Together.lean#L58-L61)
- [`measured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L15)
- [`measured_tends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19)
- [`testedMean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L42)
- [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104)
- [`square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L106)
- [`Position.E`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L11)
- [`buffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L31-L40)
- [`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L45)
- [`Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59)
- [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L69)
- [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98)
- [`BoardAttains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34)
- [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43)
- [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48)
- [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52)
- [`Frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L102)
- [`detected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L103-L112)
- [`finite_detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L115-L129)
- [`visible_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L19-L20)
- [`feedback`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L58)
- [`chart_deriv_formula`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L82-L93)
- [`feedback_twist`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L97-L100)
- [`square_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15)
- [`Resident`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L23-L30)
- [`FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47)
- [`four_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53)
- [`normalized_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63)
- [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L29-L30)
- [`adjusted_own`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L39-L46)
- [`adjusted_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L47-L49)
- [`motor_small`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L55-L61)
- [`readJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L22)
- [`Reports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L29-L33)
- [`Reports.of_square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L34-L35)
- [`exactMean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L19)
- [`exact_tape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L42-L53)
- [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69)
- [`Rigid.first_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L114-L117)
- [`big_weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L30-L36)
- [`rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L37)
- [`rate_ne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L39)
- [`common_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L48-L49)
- [`price_tag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L50-L52)
- [`backwards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L59-L69)
- [`stationery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L71-L72)
- [`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L73-L81)
- [`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L82-L89)
- [`havePath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Chess.lean#L29-L31)
- [`star`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L15)
- [`draw_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L33-L34)
- [`wearer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L74-L80)
- [`coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L59)
- [`orient_transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L60-L62)
- [`unpaint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L63-L67)
- [`reflect_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L69-L84)
- [`EuclideanAsymptotic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75)
- [`waveTest_product`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35)
- [`board`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L23)
- [`AtOrder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L46)
- [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47)
- [`primitives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Gain.lean#L109-L113)
- [`basic_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L106-L121)
- [`moment_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L122-L131)
- [`euler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L69-L88)
- [`derived`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L99-L105)
- [`Track.moments_expand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125)
- [`atPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L16)
- [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22)
- [`approximate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L24-L38)
- [`reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L40-L54)
- [`identifies_euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73)
- [`euclidean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53)
- [`TraceSpectrum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94)
- [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119)
- [`coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L34)
- [`bare_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L39-L67)
- [`stand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110)
- [`below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49)
- [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54)
- [`up_to`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L69-L75)
- [`portLine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L78-L80)
- [`separates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L82-L94)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-3-1"></a>

- **K-VII.3.1** [`shell_green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L122-L152) *(numbered result)* — Away from the origin, a harmonic directional tensor applied to the 4D Green function equals a scalar multiple of the field with radial power factor (Kelvin contraction).

<a id="k-vii-3-2"></a>

- **K-VII.3.2** [`from_large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L51-L68) *(numbered result)* — Every Wick polynomial is encoded by a polynomial in any basis of probe towers of sufficiently high order.

<a id="k-vii-3-3"></a>

- **K-VII.3.3** [`towerB_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154) *(key result)* — The simultaneous reflected Gram form on jet towers at separation x is positive definite: positive exactly on nonzero towers.

<a id="k-vii-3-4"></a>

- **K-VII.3.4** [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53) *(main result)* — For distinct points x,y, the reflected two-point pairing of any Wick polynomial with itself is positive iff the polynomial is nonzero.

<a id="k-vii-3-5"></a>

- **K-VII.3.5** [`remove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108) *(key result)* — Wick removal/annihilator recurrence: replacing a polynomial times a variable at one point equals a sum over other points of replacements with extracted variable.

<a id="k-vii-3-6"></a>

- **K-VII.3.6** [`duplex_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116) *(key result)* — On an orthogonal script, the two-point pairing of encoded polynomials is a sum of coefficient products times factorial weights.

<a id="k-vii-3-7"></a>

- **K-VII.3.7** [`table_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91) *(key result)* — The free detector table carries a real spin (rotation covariance) derived from actual O-covariance of the Wick-polynomial data.

<a id="k-vii-3-8"></a>

- **K-VII.3.8** [`frozen_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113) *(key result)* — For simple gauge group, the four-horizon perturbative data are frozen (rigid).


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)
