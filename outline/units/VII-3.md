# VII.3. Free Wick polynomials and reflected Gram positivity

*Part VII — Identification as Yang–Mills.*

Establishes positivity and detection for free Wick polynomials and explains their role in the finite-profile comparison.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VII.2](VII-2.md) · [Next: VII.4 →](VII-4.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** The declaration allocation here covers the free algebra and Gram form. The finite-profile exclusion is also explained below, using the trace law of [VII.2](VII-2.md); its concluding declarations are allocated to VII.2 and the public bridge to [VIII.1](VIII-1.md).

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/Extra/FREE_DETECTOR_ALGEBRA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA), [`YM/Pert/Position`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position), [`YM/Pert/Rigid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid), [`YM/Pert/Lattice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice), and a few declarations of [`YM/Push/LOOP_COEFFICIENT`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/LOOP_COEFFICIENT). Proposition VII.3.7 is in [`YM/TraceExtension/Wick`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick) and [`TraceBridge.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean). **Size:** about 3,800 declaration lines on the main dependency path in the listed folders, excluding the trace-exclusion files.

The reflected Gram form of the free Maxwell Wick algebra is strictly positive. It identifies the free field spaces with on-shell polynomial labels and supplies injective two-point tests (VII.3.1–VII.3.5). At degree four, rigidity gives finite position equations with invertible linearization and a leading comparison with lattice perturbation theory (VII.3.6). Independently, the trace anomaly excludes every finite Wick profile (VII.3.7). The lattice series used in the position comparison are defined in §4.7.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

**Setting.**

Write $\mathrm{Conf}_n=\{(x_1,\dots,x_n)\in(\mathbb R^4)^n:x_i\ne x_j\text{ for }i\ne j\}$.

*Coefficients and jets.*

- $\mathfrak g$ is the Lie algebra of the gauge group, with its invariant inner product. $\mathfrak g=0$ is allowed in VII.3.1–VII.3.5.
- For $j\ge0$, $\mathrm{Sol}_j$ is the real space of $\mathfrak g$-valued 2-forms $S=(S_{\mu\nu})$ on $\mathbb R^4$ that satisfy:
  - the coefficients are homogeneous polynomials of degree $j$;
  - $dS=0$ and $\delta S=0$, where $\delta$ is the codifferential ([`Sol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L115), [`onShell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Shell.lean#L18-L42)).
- Such $S$ are harmonic ([`Sol.harmonic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L129)).
- $\mathrm{Sol}_j$ is the space of on-shell $j$-jets: the $j$-th Taylor coefficient of a solution of the free Maxwell equations lies in $\mathrm{Sol}_j$.
- $S(x)$ denotes the polynomial 2-form.
- Write $T_jF=(j!)^{-1}D^jF$ for a Taylor coefficient. The inner product $\langle S,T\rangle$ sums the color inner products over both ordered form indices and all ordered derivative indices; there is no factor $1/2$ for the antisymmetric form indices.
- $\mathrm{Tow}_n:=\bigoplus_{j<n}\mathrm{Sol}_j$ ([`ProbeTower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L69)).

*Wick polynomials.*

- Fix a basis of each $\mathrm{Sol}_j$. Put $\mathcal W=\mathbb C[X_s]_{s\in\mathsf S}$ with $\mathsf S=\{(j,a)\}$ ([`WickPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24), [`Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L22)).
- $X_{(j,a)}$ is the $a$-th coordinate of the $j$-th on-shell Taylor coefficient of the free curvature at a point.
- For $p\in\mathrm{Tow}_n$, $\ell_p\in\mathcal W$ is the real linear polynomial $A\mapsto\sum_{j<n}\langle p_j,A_j\rangle$ ([`digit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L77), [`code`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L16-L23)).

*Free moments.*

- $C_{st}(x-y)$ is the free covariance of jet coordinate $s$ at $x$ with jet coordinate $t$ at $y$ ([`Wick.entry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L24), [`legKernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Leg.lean#L161-L162)). It is smooth off the diagonal and built from derivatives of $\Gamma(z)=(4\pi^2|z|^2)^{-1}$.
- For $x\in\mathrm{Conf}_n$, the free moment $\langle P_1(x_1)\cdots P_n(x_n)\rangle_0$ is multilinear ([`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127)). On monomials it is the sum, over perfect matchings of the variable occurrences with no pair inside one factor, of $\prod_{\rm pairs}C_{st}(x_i-x_k)$.
- These are the Wick-ordered correlations of $\dim\mathfrak g$ independent free Maxwell curvatures. Multiplication in $\mathcal W$ therefore represents Wick multiplication at one insertion.

*Reflected pairing.*

- For $z\ne0$, $\mathcal R_zv=v-2\langle v,z\rangle|z|^{-2}z$ is the reflection in $z^\perp$ ([`face`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Forms.lean#L103)). Orthogonal transformations act on all tensor indices of jets and on polynomials by $(R\cdot P)(A)=P(R^{-1}\cdot A)$ ([`pullSol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L54-L55)).
- $\bar P$ conjugates the coefficients of $P$ ([`barPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L46)).
- For $x\ne y$ ([`duplex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L54), [`aligned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L49-L52)):

$$\langle P,Q\rangle_{x,y}:=\big\langle P(x)\,(\mathcal R_{x-y}\bar Q)(y)\big\rangle_0 .$$

- This is the local two-point Osterwalder–Schrader pairing for reflection in the perpendicular bisector of $[x,y]$, with the convention that the first argument is linear and the second conjugate-linear.

*Tower Gram form.*

- On $\mathrm{Tow}_n$ the restriction to linear polynomials is $B_{x-y}(p,q):=\langle\ell_p,\ell_q\rangle_{x,y}$. It is real and depends only on $z=x-y$.
- Explicitly, $B_z(p,q)=\sum_{j,k<n}\mathrm{scan}_z(p_j,q_k)$, where $\mathrm{scan}_z(P,Q)$ is the free covariance of $\langle P,T_jF\rangle(z)$ with $\langle\mathcal R_zQ,T_kF\rangle(0)$ ([`towerB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L71-L77), [`scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L29-L32)).
- The identification of the two descriptions is [`crash_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L83-L94) together with [`join_crash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L60-L66).

**Proposition VII.3.1 (strict reflected positivity of the free Wick algebra).** Let $x\ne y$ in $\mathbb R^4$.
(a) For every $P\in\mathcal W$: $\langle P,P\rangle_{x,y}>0$ if and only if $P\ne0$.
(b) $\overline{\langle P,Q\rangle_{x,y}}=\langle Q,P\rangle_{x,y}$ for all $P,Q\in\mathcal W$.
(c) For every finite $\mathbb C$-linearly independent family $(V_i)$ in $\mathcal W$, the matrix $(\langle V_j,V_i\rangle_{x,y})_{ij}$ is positive definite.
No simplicity or positive-dimension assumption is needed, and the polynomial degree is unrestricted. Self-pairings are real, so the inequality in (a) is a real inequality.
*Status:* theorem. Only (a) lies on the path to the main theorem; (b) and (c) are proved but not used.
*Lean:* (a) [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53); (b) [`reflected_symm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L57-L76); (c) [`reflected_pd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L80-L97).

**Proposition VII.3.2 (tower Gram form and Fock structure).** Let $x\ne y$, $z=x-y$, $n\in\mathbb N$.
(a) $B_z$ is symmetric and positive definite on $\mathrm{Tow}_n$. More precisely, there is a block-unitriangular automorphism $\sigma_z$ of $\mathrm{Tow}_n$ (Lemma VII.3.f) such that

$$B_z(\sigma_zp,\sigma_zq)=\sum_{j<n}\pi_j(z)\,\langle p_j,q_j\rangle,\qquad \pi_j(z)=\frac{(j+1)(j+2)\,2^j}{\pi^2\,|z|^{2j+4}}>0 .$$

(b) Let $b_1,\dots,b_N\in\mathrm{Tow}_n$ satisfy $B_z(b_i,b_k)=d_i\delta_{ik}$, with any $d_i\in\mathbb R$. Let $\Phi_b:\mathbb C[Y_1,\dots,Y_N]\to\mathcal W$ be the algebra homomorphism with $Y_i\mapsto\ell_{b_i}$ ([`encode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L25)). Then

$$\langle\Phi_bp,\Phi_bq\rangle_{x,y}=\sum_\alpha p_\alpha\,\overline{q_\alpha}\;\alpha!\,d^\alpha,\qquad \alpha!\,d^\alpha:=\prod_i\alpha_i!\,d_i^{\alpha_i}.$$

*Status:* theorem.
*Lean:* (a) [`towerB_sym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L90-L94), [`towerB_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154), [`shiftAll_gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133), [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L24), [`price_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L25); (b) [`duplex_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116), [`aligned_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L60-L85).

**Proposition VII.3.3 (Wick recursion; characterization of the free moments).** Let $n\ge1$, $x\in\mathrm{Conf}_n$, $W\in\mathcal W^n$, $1\le i\le n$ and $s\in\mathsf S$. Let $\partial_s^{y,y'}$ be the $\mathbb C$-linear derivation of $\mathcal W$ with $\partial_s^{y,y'}X_t=C_{st}(y-y')$. Then

$$\big\langle W_1(x_1)\cdots(W_iX_s)(x_i)\cdots W_n(x_n)\big\rangle_0=\sum_{k\ne i}\big\langle W_1(x_1)\cdots(\partial_s^{x_i,x_k}W_k)(x_k)\cdots W_n(x_n)\big\rangle_0 ,$$

where on the right the factor at $x_i$ is $W_i$.
Conversely, for any $n\ge0$ and $x\in\mathrm{Conf}_n$, a $\mathbb C$-multilinear map $T:\mathcal W^n\to\mathbb C$ with $T(1,\dots,1)=1$ satisfying this recursion for every $i,s,W$ is the free moment at $x$.
Consequences:

- $\langle\cdots\rangle_0$ is invariant under any simultaneous $O(4)$ rotation of points and polynomials.
- $\langle\bar P_1(x_1)\cdots\bar P_n(x_n)\rangle_0=\overline{\langle P_1(x_1)\cdots P_n(x_n)\rangle_0}$.

*Status:* theorem.
*Lean:* [`Pair.remove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108), [`Pair.extractVar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L25-L26); characterization [`byAnnihilators`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L24-L62); consequences [`wick_rotate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L81-L101), [`wick_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L111-L137).

**Proposition VII.3.4 (the free table is faithful on on-shell labels).**

Setting:

- $\mathrm{Label}_d$ is the space of complex polynomials in radial potential jets that are invariant under the adjoint action of the gauge group and have engineering weight at most $d$; an order-$j$ slot has weight $j+2$ (II.1, III.16; [`Label`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Labels/Polynomial.lean#L112)).
- $\omega_d:\mathrm{Label}_d\to\mathcal W$ evaluates a label on free on-shell jets ([`observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67)).
- $\mathrm{sh}_d:=\omega_d(\mathrm{Label}_d)$ ([`shellSector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64)).
- The free table ([`freeTable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L23-L24), IV.1) has correlations $\langle\omega(a_1)(x_1)\cdots\omega(a_n)(x_n)\rangle_0$.
- Its field space $E_d$ (the glossary's $F_d$, for the free table) is the space of degree-$d$ reference labels modulo null labels.

Statements:
(a) For every $d\ge0$, let $P\in\mathrm{sh}_d$. Suppose $\langle P(x_0)Q_1(x_1)\cdots Q_n(x_n)\rangle_0=0$ for every $n\ge0$, every choice of degrees $d_1,\dots,d_n\ge0$, all $Q_i\in\mathrm{sh}_{d_i}$ and all $x\in\mathrm{Conf}_{n+1}$. Then $P=0$. Hence:

- the null labels of the free table at degree $d$ are exactly the labels with $\omega_d(a)=0$;
- $\omega_d$ induces a linear isomorphism $E_d\cong\mathrm{sh}_d$. Write $\varpi_d:E_d\hookrightarrow\mathcal W$ for the resulting injection.

(b) For every basis $(b_i)_{i\in I}$ of $E_d$ and every $x\ne y$, the map $v\mapsto\big(\langle\varpi v(x)\,\varpi b_i(y)\rangle_0\big)_{i\in I}$ is injective.

(c) Fix a Wilson family $C$, any table $S$ on its register, and a pair satisfying $x_\mu\ne y_\mu$ for each coordinate $\mu$, for example $(x,y)=(0,(1,1,1,1))$. For every $d\ge0$ there is a column system (IV.1) for $E_d$. It consists of:

- a complex basis fixed by conjugation, with the unit first, whose elements are images of frame labels with recorded weight and polynomial length;
- the pair readings of (b) against this basis at $(x,y)$, which are injective.

*Status:* theorem. Part (a) enters the rank comparisons of III.11 and III.12; (c) supplies columns for III.11 and III.2. The embedding $\varpi_d$ is used in VII.1.
*Lean:* (a) [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54) (with the definitions [`residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L84-L85), [`ProbeFamily`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L67-L72)), [`free_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L58-L59), [`exactField`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L64-L65), [`writes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L70-L71); (b) [`scanner_inj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L103-L115); (c) [`vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L25-L38), [`vane_possible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L41-L42), [`RStage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L18-L27), [`recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L41-L49).

**Proposition VII.3.5 (covariance of the free table).** For every gauge group in the setting above, the free table has the following symmetries:

- its correlations are invariant under the signed coordinate permutations, acting on points and labels;
- conjugating the labels conjugates the correlations.

In addition, $O(4)$ acts on each $E_d$ by complex-linear isomorphisms satisfying $\varpi_d(R\cdot v)=R\cdot(\varpi_dv)$.
*Status:* theorem. The proof uses the $O(4)$-covariance of the free kernel, not any reconstruction theorem.
*Lean:* [`table_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91), [`rideO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L106-L110), [`ride`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L99-L101).

**Proposition VII.3.6 (rigidity at degree four; position equations).** Parts (a) and (c) assume that $\mathfrak g$ is simple and nonabelian. Part (b) holds for any gauge group in the setting above.

*Buffers.* For a degree $d$, a *buffer* ([`buffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L31-L40)) is a $\mathbb C$-linear map $B:E_d\to E_d$ such that:

- $B$ kills the unit;
- for each $e<d$, $B$ preserves the subspace of fields of degree $\le e$;
- $B$ commutes with conjugation and with the signed coordinate permutations.

Buffers form a finite-dimensional real space $\mathrm{Buf}_d$.

*Stationarity.* $B$ is *stationary* if

$$\sum_{j=1}^r\langle v_1(x_1)\cdots(Bv_j)(x_j)\cdots v_r(x_r)\rangle_0=0\quad\text{for all } r,\ v\in E_d^r,\ x\in\mathrm{Conf}_r .$$

Equivalently, the change of identification $v\mapsto(1+tB)v$ of degree-$d$ fields leaves all free correlations unchanged to first order in $t$.

(a) *Rigidity.* Every stationary buffer of degree $4$ vanishes. In fact $B\in\mathrm{Buf}_4$ vanishes as soon as both of the following hold, with $e$ the unit vector of coordinate axis $0$:

- $\langle Bv\rangle_0=0$ for all $v$;
- $\langle(Bv)(e)\,w(0)\rangle_0+\langle v(e)\,(Bw)(0)\rangle_0=0$ for all $v,w$.

For $d<4$, $\mathrm{Buf}_d=0$.

(b) *Square systems.* Suppose every stationary buffer of degree $d$ vanishes. Then there are finitely many *sections* $(r_i,p_i,f_i)_{1\le i\le k}$, with $r_i\ge0$, $p_i\in E_d^{r_i}$ and $f_i\in C_c^\infty(\mathrm{Conf}_{r_i};\mathbb C)$, and a real-linear map $g:\mathbb R^k\to\mathbb R^m$ with $m=\dim_{\mathbb R}\mathrm{Buf}_d$, such that the map

$$B\longmapsto g\Big(\mathrm{Re}\int f_i(x)\sum_j\big\langle p_{i1}(x_1)\cdots(Bp_{ij})(x_j)\cdots\big\rangle_0\,dx\Big)_{i\le k}$$

is an isomorphism $\mathrm{Buf}_d\to\mathbb R^m$.

- This map is the derivative in the buffer direction, at the free data and $B=0$, of the *position chart* $(w,B)\mapsto g\big(\mathrm{Re}\,w_i((1+B)p_i)\big)_i$. Here $w_i$ ranges over complex-multilinear forms on $E_d^{r_i}$.
- The system is called *square*, and *clean* (all profiles are test functions).
- For simple nonabelian $\mathfrak g$ and $d=4$ such a system exists.

(c) *Leading position comparison at degree four.* Hypotheses:

- $b$ is a final record over the Wilson family, with limit table $S$.
- $X=(r_k,U_{k,d},\xi_k)$ is a scaling sequence: $r_k>0$ decreases strictly to $0$, $\xi_k>0$, and $U_{k,d}:E_d\to F_d(S)$ is a complex-linear isomorphism for every $k,d$. Write $U_k=U_{k,4}$.
- Along $X$, the leading free-Maxwell comparison of VI.2 holds, including eventual compatibility of the frames with the unit, conjugation, signed permutations and degree inclusions.
- $Q$ is a clean square degree-four system. The map $\varphi$ satisfies the four conditions in VII.3.r: a local analytic implicit solution, convergence of the order-zero lattice data, the formal position identities, and an actual leading comparison along $X$.

Put $B_k:=\varphi(m_Q(k))$, where $m_Q(k)$ are the tested rescaled correlations $\int f(x)\langle U_kv_1(r_kx_1)\cdots\rangle_S\,dx$ on basis fields. Then:

- $B_k\to0$;
- eventually $1+B_k$ is invertible, and the corrected frames $U_k(1+B_k)$ satisfy the position equations of $Q$ exactly;
- eventually $U_k(1+B_k)$ commutes with conjugation and signed permutations, maps the free unit to the unit of $S$, and is compatible with the frames of degrees $\le3$ under the inclusions $E_d\subset E_4$;
- for every clean degree-four system $R$ and every integer $L\ge2$,

$$m_R^{B_k}(k)-\mathrm{chart}_R\bigl(\pi_R^{(0)}(L,k),\varphi(\pi_Q^{(0)}(L,k))\bigr)\longrightarrow0.$$

Here $m_R^{B_k}(k)$ is the tested reading after replacing each field $v$ by $U_k(1+B_k)v$, and $\pi_R^{(0)}(L,k)$ is the array of order-zero lattice readings on basis fields at spacing $L^{-k}$.

These conclusions, together with the comparisons for all clean systems described in VII.3.r, give clause (D15) of the detailed main theorem.

*Status:*

- (a) and (b): theorems.
- (c): theorem under the leading comparison hypothesis (VI.2; discharged by [`firstTarget`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L57-L81)) and the four conditions on $\varphi$ (discharged by [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43), VIII.1).
- VIII.1 assembles this with the existence of a clean square system: simplicity of $\mathfrak g$ and the leading free comparison imply the full degree-four position conclusion.

*Lean:* (a) [`Rigid.frozen_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113), [`Rigid.first_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L114-L117) (unused), definition [`Frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L102); (b) [`square_of_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147), [`Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59), [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L69), [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104), [`square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L106), [`square_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L13-L15); (c) [`residency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43), [`Resident`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L23-L30), [`FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47), [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48), [`BoardAttains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34), [`four_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53), [`normalized_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L56-L63).

**Proposition VII.3.7 (exclusion of finite Wick profiles; assigned to VII.2 and VIII.1).**

Definitions:

- $G_\Theta(r)$ is the two-point function of the centered trace $\Theta$ of the stress tensor in the selected phase, at the points $\mp\frac r2e_{\rm t}$ on the time axis ([`traceTwo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149)).
- A *mode* is $(\mathsf m,j,q,h)$ with $\mathsf m\ge0$, $j,q\in\mathbb N$, and $h:\mathbb R^3\to\mathbb R$ continuous with $h(tp)=t^jh(p)$ for every $t>0$ and $p\in\mathbb R^3$.
- For $r>0$, its integrated kernel is $K_{\mathsf m,q,h}(r)=\int_{\mathbb R^3}E^q\,h(p)\,e^{-rE}(2E)^{-1}dp$, with $E=\sqrt{\mathsf m^2+|p|^2}$.
- A *Wick profile* is a finite sum $W=\sum_\alpha c_\alpha\prod_\beta K_{\alpha\beta}$ with $c_\alpha\in\mathbb C$; empty products equal $1$ ([`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158), [`Mode.kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L159-L161), [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164), [`wickProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166); statement.md, Definition 1.15).

(a) Suppose $r^8\log^2(1/r)\,G_\Theta(r)\to A$ as $r\to0^+$, with $A>0$. Then for every Wick profile $W$ and every $\delta>0$ there is $r\in(0,\delta)$ with $G_\Theta(r)\ne W(r)$. Only this asymptotic law of $G_\Theta$ is used.
(b) Under the same asymptotic hypothesis, in the selected reconstructed theory, no finite sum of the corresponding mass-shell contraction integrals reproduces the Wightman two-point function of $\Theta$ on every product $\bar f\otimes g$ of Schwartz tests for which $\psi_{f,g}=\overline{\widehat f}\,\widehat g$ is compactly supported, using the positive-sign Fourier convention. A product of mode kernels corresponds to testing $\psi_{f,g}$ at the sum of their positive-energy on-shell momenta, with the product of their densities $E^qh(p)/(2E)$ ([`waveTest_product`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Momentum.lean#L26-L35)). Thus, for every proposed finite sum, some such pair $f,g$ gives different readings.

With $A=3\dim\mathfrak g/\pi^4$ from VII.2, (a) is clause (T4) of the main theorem.
*Status:* theorem. (a) is assigned to VII.2 and (b) to VIII.1.
*Lean:* (a) [`Wick.euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80), [`Wick.no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108); public form [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44) for [`Hierarchy.TraceTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L168-L175). (b) [`Wick.polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105). The asymptotic law and related polynomial-field exclusions occur in [`Headline.TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120).

The Euclidean conclusion concerns the single function $G_\Theta$ along one axis. The excluded class allows arbitrary complex coefficients and continuous homogeneous numerators, but only finitely many modes and products. It does not include general continuous-mass generalized free fields or infinite Wick expansions.

<a id="unit-inputs"></a>

## 2. What it uses

**Inputs from other units.**

1. **III.16 (analytic toolkit).**
   - The free curvature kernel, Wick moments, on-shell jet spaces, label evaluation map and real homogeneous reference frames defined above.
   - The response identity [`replyTest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L28-L31): for $P\in\mathrm{Sol}_j$ and $Q\in\mathrm{Sol}_k$, the covariance of $\langle P,T_jF\rangle(z)$ with $\langle Q,T_kF\rangle(0)$ equals $(-1)^k\langle Q,T_k[R_P](z)\rangle$. Here $R_P$ is the curvature field produced by $P$ and $T_k$ is the $k$-th Taylor coefficient.
   - Used in VII.3.1–VII.3.5.
2. **IV.1.** The free table, its on-shell image and spectator tests; correlation tables, null and quotient field spaces, real conjugation and signed-permutation symmetry, column systems and generic configurations.
3. **VI.2 (free Maxwell stress tensor).** For simple nonabelian $\mathfrak g$:
   - $E_d=\mathbb C\cdot1$ for $d<4$ ([`below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L46-L49), [`dim_before`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L51-L54)).
   - $E_4$ has the basis consisting of the unit and the 21 invariant quadratics $\langle F_P,F_Q\rangle$, one for each unordered pair $\{P,Q\}$ of coordinate planes. Its dual functionals are built from the one-point function and the two-point functions at separation $e$ ([`stand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110), [`separates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L82-L94), [`portLine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L78-L80), [`up_to`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L69-L75)).
   - The free curvature two-point function at $e_t$ is diagonal in planes, with entries $\kappa_t(P)=-\pi^{-2}$ if $t\in P$ and $+\pi^{-2}$ otherwise ([`bare_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L39-L67), [`coat`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Diagonal.lean#L34)).
   - Also from VI.2: [`FirstExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/FirstTarget.lean#L26-L39). Along $X$:
     - the rescaled correlations in the frames $U_k$ converge in every $C^j$ on compacta of $\mathrm{Conf}_n$ to those of the free table, with the stress tensor compared to the Maxwell stress tensor;
     - the centered real symmetric degree-four tensors that transform tensorially under signed permutations and have zero divergence form a one-dimensional real space;
     - derivatives and rotation generators converge.
   - This leading comparison is a hypothesis of VII.3.6(c).
4. **VI.1.** Scaling sequences of radii, stress normalizations and degreewise complex-linear frame changes.
5. **VII.1.** [`Rig.zerothProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rig/Linked.lean#L59-L69): the order-zero coefficient of the lattice perturbative profile converges to the tested free reading. It supplies the lattice limit in VII.3.r.
6. **VIII.1.**
   - The final construction data, including the selected phase and its reconstructed theory.
   - [`calibrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L36-L43) and [`credible`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L50-L52): the four implicit-position conditions hold for every clean square system, and the leading lattice comparison holds for every clean system.
   - [`Reports.of_square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L34-L35) (implicit function theorem).
7. **VII.2.** For VII.3.7:
   - the short-distance law [`EuclideanAsymptotic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75) with constant $3\dim\mathfrak g/\pi^4$;
   - the expansion lemmas [`moment_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L122-L131), [`Track.moments_expand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125), [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22).
8. **V.3 and VII.2.** The selected trace field has a positive-energy spectral measure $\mu$, its two-point function is the Laplace transform of $\mu$, and its Wightman two-point distribution is the corresponding momentum-space integral. Exponential damping is integrable for every positive time ([`TraceSpectrum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94), [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119)). This is used only in VII.3.7(b).
9. **I.1.** The lattice, the Wilson action and the Haar measure (for §4.7).

**Standard mathematics.**

- Wick's theorem, Gaussian integration by parts, and Fock-space orthogonality of Wick monomials: Glimm–Jaffe, *Quantum Physics*, ch. 6; B. Simon, *The $P(\phi)_2$ Euclidean (Quantum) Field Theory*, ch. I; S. Janson, *Gaussian Hilbert Spaces*, ch. 3.
- Reflection positivity of the free field: Osterwalder–Schrader, CMP 31 (1973) and 42 (1975); Glimm–Jaffe, ch. 6. It is not invoked: strict positivity is proved by explicit diagonalization.
- Hobson's formula for $h(\partial)|x|^{-2}$ in four dimensions, $h$ harmonic and homogeneous: Hobson, *The Theory of Spherical and Ellipsoidal Harmonics*, ch. III; Stein–Weiss, *Introduction to Fourier Analysis on Euclidean Spaces*, ch. IV.
- Invariance of the four-dimensional Maxwell equations under inversion: Bateman (1910), Cunningham (1910).
- Existence of orthogonal bases for symmetric bilinear forms; the real-analytic implicit function theorem; characters of the group $(\mathbb Z/2)^4$ of axis reflections.
- Small-$r$ expansions of Laplace integrals with logarithms, as for modified Bessel functions: Watson, *A Treatise on the Theory of Bessel Functions*, ch. III.
- Lattice perturbation theory with Faddeev–Popov gauge fixing: Montvay–Münster, *Quantum Fields on a Lattice*, ch. 3–4.

**Imported constants and assumptions.**

- Constants used:
  - $\Gamma=1/(4\pi^2|z|^2)$;
  - $s_j=(j+1)(j+2)(-2)^j/\pi^2$, the code's [`strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L46);
  - $\pi_j(z)=(-1)^js_j|z|^{-2j-4}$;
  - $\kappa_t(P)=\mp\pi^{-2}$ (VI.2).
- Hypotheses: the leading free comparison (VI.2) and the four implicit-position conditions (VIII.1) for VII.3.6(c); the short-distance law with $A>0$ for VII.3.7 (VII.2).
- Simplicity of $\mathfrak g$ enters VII.3.6 through VI.2: invariant linear color forms vanish, invariant bilinear color forms are multiples of the inner product, and $\dim\mathfrak g>0$.

<a id="unit-strategy"></a>

## 3. Strategy

The reflected covariance couples different jet orders. Hobson's formula identifies the field of an order-$j$ multipole with $s_j$ times its Kelvin transform. Translating the polynomial multipole by the negative inverted separation and rescaling its Taylor components produces a triangular change of probes whose response has no Taylor terms below order $j$ at the second point. The reflected covariance becomes diagonal, with positive pivots $\pi_j$. Wick recursion extends this to polynomial monomials, with factorial norms $\alpha!d^\alpha$.

Strict positivity detects every nonzero on-shell label. It identifies the free quotient and gives injective two-point columns. At degree four, the explicit quadratic basis reduces buffer rigidity to a coefficient calculation: two-point stationarity gives weighted antisymmetry, while signed permutations give symmetry or zero. Compactly supported tests convert this rigidity into finitely many equations with invertible derivative. The implicit function theorem solves them along the scaling sequence.

Independently, finite Wick profiles have expansions in integer powers of distance and nonnegative powers of its logarithm. Their real parts cannot have the trace field's leading term $A r^{-8}(\log(1/r))^{-2}$. Comparison along $r=2^{-n}$ proves the contradiction. The spectral representation transfers equality of tested Wightman two-point functions to equality of the Euclidean profiles.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 The Wick algebra

**Lemma VII.3.a (Wick recursion).** Proposition VII.3.3.
*Proof sketch.*

- By multilinearity it suffices to treat monomials. Occurrences of variables are distinguishable copies.
- Adjoin one occurrence of $X_s$ at $x_i$. Matchings of the enlarged system correspond bijectively to pairs (a partner occurrence of some $X_t$ at some $x_k$ with $k\ne i$, a matching of the reduced system). Here the reduced system has one copy of $X_t$ removed at $x_k$.
- The multiplicity of $X_t$ in $W_k$ is the coefficient produced by $\partial_s$.
- Uniqueness: induct on the number of non-unit entries and on the polynomial structure. The recursion and the normalization $T(1,\dots,1)=1$ determine $T$.
- Rotated and conjugated moments satisfy the same recursion, by covariance and reality of the kernel. This gives $O(4)$-invariance and reality.

*Lean:* [`Pair.remove`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L91-L108), [`Pair.remove_mon`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L64-L86), bijections in [`Match.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Match.lean) and [`Occurrences.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Occurrences.lean); [`byAnnihilators`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L24-L62), [`wick_rotate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L81-L101), [`wick_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Gaussian.lean#L111-L137).

**Lemma VII.3.b (two-point adjoint relation).** For $p\in\mathrm{Tow}_n$ and $x\ne y$, let $D^{x,y}_p$ be the derivation of $\mathcal W$ sending each variable at $y$ to its free covariance with $\ell_p$ at $x$ ([`crash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L81)). For all $P,Q\in\mathcal W$ and $q\in\mathrm{Tow}_n$:

- $\langle (P\ell_p)(x)\,Q(y)\rangle_0=\langle P(x)\,(D^{x,y}_pQ)(y)\rangle_0$;
- $D^{x,y}_p(\mathcal R_{x-y}\ell_q)=B_{x-y}(p,q)$, a constant.

*Proof sketch.* Apply VII.3.a with $n=2$: the sum over $k\ne i$ has a single term. On linear polynomials, the resulting contraction is exactly $B_{x-y}(p,q)$.
*Lean:* [`join_crash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L60-L66), [`crash_relation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L96-L100), [`crash_test`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L83-L94).

**Lemma VII.3.c (exhaustion by towers).** For every $P\in\mathcal W$ there is $n_0\ge0$ with the following property. For all $n\ge n_0$ and every real basis $(b_i)_{1\le i\le N}$ of $\mathrm{Tow}_n$, one has $P=\Phi_b(p)$ for some $p\in\mathbb C[Y_1,\dots,Y_N]$.
*Proof sketch.*

- Each variable $X_{(j,a)}$ equals $\ell_r$, where $r$ is the Riesz dual of the $a$-th coordinate functional, placed in order $j$ ([`digit_coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L95-L96)).
- $\ell_r$ is a real linear combination of the $\ell_{b_i}$ once $n>j$.
- Induct on the structure of $P$: constants, sums, and products with one variable.

*Lean:* [`from_large`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L51-L68), [`from_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L37-L46).

### 4.2 The tower Gram form

**Lemma VII.3.d (Hobson's formula in $\mathbb R^4$).** Let $S\in\mathrm{Sol}_j$ and $x\ne0$. Let $S(\partial)$ be the differential operator with symbol $S$, normalized with Taylor coefficients (a factor $1/j!$). Then

$$S(\partial)\Gamma(x)=(-2)^j\,|x|^{-2j}\,S(x)\,\Gamma(x).$$

*Proof sketch.* Induct on $j$. In the step from $j$ to $j+1$, take $S\in\mathrm{Sol}_{j+1}$ and let $S_a\in\mathrm{Sol}_j$ be its partial contraction with $e_a$. Taylor normalization gives $S(\partial)=\frac1{j+1}\sum_a\partial_aS_a(\partial)$ ([`Sol.freeze`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L140-L159)). Apply the induction hypothesis and differentiate:

- the term with the divergence of the partial contractions vanishes, because $S$ is harmonic ([`Sol.freeze_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L164-L172));
- the radial derivative gives $-2(j+1)|x|^{-2(j+2)}\sum_ax_aS_a(x)$, and $\sum_ax_aS_a(x)=S(x)$ ([`freeze_diagonal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L109-L119)). The factor $j+1$ cancels, leaving the required factor $-2$.

*Lean:* [`shell_green`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L122-L152).

**Lemma VII.3.e (the field of a multipole is a Kelvin transform).** For $P\in\mathrm{Sol}_j$ and $z\ne0$, the curvature field $R_P$ produced by $P$ satisfies

$$R_P(z)=s_j\,|z|^{-4}\,(\mathcal R_z\otimes\mathcal R_z)\,P(\check z)=s_j\,|z|^{-2j-4}\,(\mathcal R_z\otimes\mathcal R_z)\,P(z),\qquad \check z=z/|z|^2 .$$

That is, $R_P=s_j\,I^\ast P$, the pull-back of the 2-form $P$ under the inversion $I$, whose differential is $|z|^{-2}\mathcal R_z$.
*Proof sketch.*

- The curvature kernel is a curl-curl of $\Gamma$. Its contraction with $P$ is $(R_P)_{im}=2(\partial_m(D_P)_i-\partial_i(D_P)_m)$, where $(D_P)_i=\sum_a\partial_a(P_{ai}(\partial)\Gamma)$. By VII.3.d,

$$D_P(x)=-2(j+1)(-2)^j(4\pi^2)^{-1}|x|^{-2(j+2)}\,\iota_xP(x)$$

([`divP_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L59-L77)).

- Its curl is computed with $\partial_i(\iota_xP)_m-\partial_m(\iota_xP)_i=(j+2)P_{im}$. This uses Bianchi and Euler; see [`radial_curl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L28-L44).
- Collecting terms gives $s_j|x|^{-2(j+2)}\big(P_{im}-2|x|^{-2}(x_i(\iota_xP)_m-x_m(\iota_xP)_i)\big)$, which is the reflected tensor.

*Lean:* [`curl_kelvin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L82-L109), [`reply_kelvin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L111-L113), [`reply_radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L112-L122), [`strength_sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L51-L55).

**Lemma VII.3.f (shifted towers).**
For $x\ne0$, $j<n$ and $P\in\mathrm{Sol}_j$, define $\sigma_x(P):=(Q_0,\dots,Q_j,0,\dots)\in\mathrm{Tow}_n$ with

$$Q_k:=(s_j/s_k)\,T_k[P](-\check x).$$

Here $T_k[P](a)\in\mathrm{Sol}_k$ is the order-$k$ Taylor coefficient of $P$ at $a$. In particular $Q_j=P$.
For every $y\ne0$, the total field of the shifted tower is

$$\textstyle\sum_kR_{Q_k}(y)=s_j|y|^{-4}(\mathcal R_y\otimes\mathcal R_y)P(\check y-\check x).$$

It vanishes to order $j$ at $y=x$:

$$T_k\big[\textstyle\sum R_{Q_i}\big](x)=0\ \ (k<j),\qquad T_j\big[\textstyle\sum R_{Q_i}\big](x)=s_j|x|^{-2(j+2)}\,\mathcal R_xP .$$

*Proof sketch.*

- Since $\sum_kT_k[P](a)(w)=P(w+a)$ and $R$ is linear, VII.3.e gives the formula for the total field.
- Along the line $y=x+tv$: $\check y-\check x=t\,|x+tv|^{-2}(\mathcal R_xv-t|v|^2\check x)$, which is smooth in $t$.
- By homogeneity the field is $t^j$ times a smooth function whose value at $t=0$ is $s_j|x|^{-2(j+2)}(\mathcal R_xP)(v)$.
- Taylor coefficients of symmetric jets are determined by their diagonal values.

*Lean:* [`shifts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L20-L21), [`towards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L104-L113), [`field_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Translation.lean#L118-L119), [`fields_shift`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L27-L32), [`signal_kelvin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L68-L81), [`invert_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L40-L56), [`signal_lower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L135-L139), [`signal_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L141-L147), [`newLeg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L98-L99).

**Lemma VII.3.g (diagonal Gram form in shifted towers).**
For $x\ne0$, $i,m<n$, $P\in\mathrm{Sol}_i$ and $Q\in\mathrm{Sol}_m$:

$$B_x(\sigma_xP,\sigma_xQ)=\begin{cases}\pi_i(x)\langle P,Q\rangle & i=m,\\ 0 & i\ne m.\end{cases}$$

Hence $B_x(\sigma_xp,\sigma_xq)=\sum_i\pi_i(x)\langle p_i,q_i\rangle$, where $\sigma_xp:=\sum_i\sigma_x(p_i)$.
*Proof sketch.*

- By the response identity (III.16), for $q\in\mathrm{Sol}_k$ placed in order $k$: $B_x(\sigma_xP,q)=(-1)^k\big\langle\mathcal R_xq,\ T_k[\textstyle\sum R_{Q_i}](x)\big\rangle$.
- By VII.3.f this is $0$ for $k<i$, and $(-1)^is_i|x|^{-2(i+2)}\langle\mathcal R_xq,\mathcal R_xP\rangle=\pi_i(x)\langle P,q\rangle$ for $k=i$, since $\mathcal R_x$ is orthogonal.
- If $m<i$, expand $\sigma_xQ$ into components of orders $\le m$; each gives zero. The case $m>i$ follows by symmetry.
- If $m=i$, only the top component $Q$ of $\sigma_xQ$ contributes.

*Lean:* [`slide_sum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L49-L57), [`slide_below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L59-L60), [`slide_top`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L62-L67), [`newLeg_below`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L105-L111), [`newLeg_diag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L113-L121), [`shiftAll_gram`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L126-L133).

**Lemma VII.3.h (VII.3.2(a)).** For every $z\ne0$ and $n\ge0$, $B_z$ is symmetric and positive definite on $\mathrm{Tow}_n$.
*Proof sketch.*

- Symmetry: the kernel is symmetric under exchanging the two probes and replacing $z$ by $-z$. It is also $O(4)$-covariant ([`leg_cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L156-L160)). Apply this with $\mathcal R_zz=-z$ and $\mathcal R_z^2=1$.
- Positivity:
  - $\sigma_z$ is injective, since $B_z(\sigma_zp,\sigma_zp)>0$ for $p\ne0$ by VII.3.g;
  - hence it is bijective, by finite dimension (it is also visibly block unitriangular);
  - so $B_z(p,p)=\sum\pi_j\lVert p'_j\rVert^2>0$ for $p=\sigma_zp'\ne0$.

*Lean:* [`scan_sym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L37-L47), [`towerB_sym`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L90-L94), [`shiftAll_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L135-L141), [`shiftDual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L143-L146), [`towerB_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L150-L154).

### 4.3 From towers to all Wick polynomials

**Lemma VII.3.i (Fock orthogonality).** Let $b$ be as in VII.3.2(b), and let $\alpha,\beta\in\mathbb N^N$. Then, without conjugation,

$$\big\langle\Phi_b(Y^\alpha)(x)\,(\mathcal R_{x-y}\Phi_b(Y^\beta))(y)\big\rangle_0=\delta_{\alpha\beta}\,\alpha!\,d^\alpha .$$

*Proof sketch.*

- Since the $b_k$ are orthogonal, VII.3.b gives $D^{x,y}_{b_i}\,\mathcal R\Phi_b(q)=d_i\,\mathcal R\Phi_b(\partial_{Y_i}q)$ ([`crash_basis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L88-L102)).
- Thus transferring one factor $Y_i$ from the first insertion differentiates the second polynomial and multiplies by $d_i$ ([`aligned_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L104-L109)).
- Induct on $\alpha$, one factor at a time ([`tally_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L44-L52)).
- The base cases are the unit-unit reading $1$ and the zero reading of the unit against a nonconstant monomial ([`aligned_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L81-L84), [`aligned_one_right`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L76-L79)).

This is the factorial orthogonality of Wick monomials.
*Lean:* [`aligned_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L60-L85).

**Lemma VII.3.j (VII.3.2(b)).** The monomials $\Phi_b(Y^\alpha)$ are real ([`bar_mono`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L90-L95)). Sesquilinear extension of VII.3.i then gives $\langle\Phi_bp,\Phi_bq\rangle_{x,y}=\sum_\alpha p_\alpha\overline{q_\alpha}\alpha!d^\alpha$.
*Lean:* [`duplex_script`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L100-L116).

**Lemma VII.3.k (VII.3.1).**
*Proof sketch.*

- (a) Given $P\ne0$, take $n$ from VII.3.c. Take a $B_{x-y}$-orthogonal basis of $\mathrm{Tow}_n$; it exists for a symmetric form, and $d_i>0$ by VII.3.h ([`upright`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L20-L29)). Then $P=\Phi_b(p)$ with $p\ne0$, and $\langle P,P\rangle=\sum|p_\alpha|^2\alpha!d^\alpha>0$.
- (b) Write $P$ and $Q$ in a common basis; the formula of VII.3.j is Hermitian.
- (c) Apply (a) to $\sum a_iV_i$.

*Lean:* [`reflected_positive`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L47-L53), [`script_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L38-L44), [`reflected_symm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L57-L76), [`reflected_pd`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/WickPositive.lean#L80-L97).

### 4.4 Faithfulness and covariance of the free table

**Lemma VII.3.l (VII.3.4(a)).**
*Proof sketch.*

- $\mathrm{sh}_d$ is stable under conjugation and under $O(4)$, because $\omega_d$ intertwines the label operations with $\bar{\ }$ and with substitution ([`sector_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L25-L26), [`sector_rot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L27-L28), [`observe_rot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L56), [`observe_bar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L58)).
- So for $P\in\mathrm{sh}_d$ the one-element family $Q_1=\mathcal R_{x-y}\bar P$ at $(x,y)=(0,e_{\rm t})$ is admissible. Its test value is $\langle P,P\rangle_{0,e_{\rm t}}$ ([`point_probe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L31-L36)), which is positive by VII.3.1 if $P\ne0$.
- The description of the null labels then follows from the identity between free-table readings and these tests (IV.1).

*Lean:* [`no_residual`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L38-L54), [`free_null`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L58-L59), [`exactField`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L64-L65).

**Lemma VII.3.m (VII.3.4(b), (c)).**
*Proof sketch of (b).*

- Suppose $v\ne w$ have the same readings against a basis. By bilinearity, $u=v-w$ has zero reading against every field.
- In particular $u$ has zero reading against $\mathcal R_{x-y}\cdot\bar u\in E_d$ ([`faceTest_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L96-L99)).
- That reading is $\langle\varpi u,\varpi u\rangle_{x,y}>0$, a contradiction.

*Proof sketch of (c).*

- Extend the unit to a complex basis chosen among the images of frame labels. These images are fixed by conjugation ([`labeled`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L29-L69), [`frameRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L71-L83)).
- Its elements carry their weighted degree, with an order-$j$ jet weighted $j+2$, and their length.
- The pair readings are injective by (b).

*Lean:* [`scanner_inj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Columns.lean#L103-L115), [`recorded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/GradedBasis.lean#L41-L49), [`vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Vane.lean#L25-L38).

**Lemma VII.3.n (VII.3.5).**
*Proof sketch.*

- $\omega$ intertwines the label action of $O(4)$ with substitution, via the identity relating rotation of curvature jets to rotation of potential jets ([`radial_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L43-L46)). It intertwines label conjugation with $\bar{\ }$.
- The free moments are $O(4)$-invariant and real (VII.3.3).
- The $O(4)$ action on $E_d$ is transported through $E_d\cong\mathrm{sh}_d$.

*Lean:* [`table_spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LabelTurn.lean#L80-L91), [`ride`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L99-L101).

### 4.5 Degree four: rigidity and the position equations

**Lemma VII.3.o (coordinates on $E_4$).** Assume that $\mathfrak g$ is simple and nonabelian. Let $e$ be the unit vector of coordinate axis $0$. The basis and dual functionals below are from VI.2.

*Basis.* Quadratic products below are Wick-ordered. The space $E_4$ has the basis $\{\star_c\}$, $c\in\{\varnothing\}\cup\{\text{faces}\}$, where:

- $\star_\varnothing=1$;
- $\star_{\{P,Q\}}=\langle F_P,F_Q\rangle$, the invariant contraction of two curvature components, for $P\le Q$ two of the six coordinate planes;
- so $\dim E_4=22$.

*Dual functionals.* The dual basis is $\lambda_\varnothing(v)=\langle v\rangle_0$ and

$$\lambda_{\{P,Q\}}(v)=\frac{m(P,Q)}{\dim\mathfrak g\;\kappa(P)\kappa(Q)}\,\big\langle v(e)\,\langle F_P,F_Q\rangle(0)\big\rangle_0 ,$$

with $m(P,Q)=\tfrac12$ if $P=Q$ and $1$ otherwise, and $\kappa(P)=\kappa_0(P)=\mp\pi^{-2}$.

*Two-point formulas.* For a quadratic index $c=\{P,Q\}$, put $\rho(c)=\dim\mathfrak g\,\kappa(P)\kappa(Q)/m(P,Q)\ne0$. For every $v\in E_4$:

- $\langle v(e)\star_c(0)\rangle_0=\rho(c)\lambda_c(v)$;
- if $\lambda_\varnothing(v)=0$, then also $\langle\star_c(e)v(0)\rangle_0=\rho(c)\lambda_c(v)$.

*Lean:* [`price_tag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L50-L52), [`backwards`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L59-L69), [`rate_ne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L39), [`big_weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L30-L36); inputs [`stand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110), [`separates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L82-L94).

**Lemma VII.3.p (VII.3.6(a)).** Let $B\in\mathrm{Buf}_4$ satisfy the one- and two-point conditions of VII.3.6(a). Put $\mathrm{coeff}(c,c')=\lambda_c(B\star_{c'})$. Then every coefficient vanishes, and so $B=0$.
*Proof sketch.*

- **Unit row and column.**
  - $\mathrm{coeff}(\varnothing,\cdot)=0$ by the one-point condition ([`alone`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L73-L81)).
  - $\mathrm{coeff}(\cdot,\varnothing)=0$ because $B1=0$.
- **Antisymmetry.** The two-point condition with $v=\star_c$, $w=\star_{c'}$ gives, by VII.3.o,

$$\rho(c')\,\mathrm{coeff}(c',c)+\rho(c)\,\mathrm{coeff}(c,c')=0$$

([`cancel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L82-L89)).

- **Different reflection characters.** Reflection of axis $a$ multiplies $\star_{\{P,Q\}}$ by $(-1)^{[a\in P]+[a\in Q]}$ ([`draw_mask`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L33-L34)). If two quadratic indices have different characters of $(\mathbb Z/2)^4$, some reflection separates them, and equivariance of $B$ gives $\mathrm{coeff}=0$ ([`unpaint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L63-L67)).
- **Equal reflection characters.** A finite check over the 21 faces ([`havePath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Chess.lean#L29-L31), decided by computation) finds an involutive axis permutation exchanging $\star_c$ and $\star_{c'}$, up to a common sign. It also shows the two faces are both diagonal or both off-diagonal.
  - Equivariance then gives the symmetry $\mathrm{coeff}(c',c)=\mathrm{coeff}(c,c')$ ([`reflect_path`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L69-L84)).
  - It also gives equal rates, $\rho(c)=\rho(c')$ ([`common_rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L48-L49)).
  - Combined with the antisymmetry: $2\rho(c)\,\mathrm{coeff}(c,c')=0$.
- **Degrees $d<4$:** $E_d=\mathbb C\cdot1$, and buffers kill the unit.

*Lean:* [`coeff_barren`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L90-L105), [`frozen_four`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L107-L113), [`first_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L114-L117), [`orient_transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L60-L62), [`wearer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L74-L80).

**Lemma VII.3.q (VII.3.6(b)).**
*Proof sketch.*

- The *feedback* of a section $(r,p,f)$ is the $B$-derivative at $0$ of $\mathrm{Re}\int f\langle(1+B)p_1\cdots\rangle_0$ ([`feedback`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L58)). It is a linear functional on $\mathrm{Buf}_d$.
- If all feedbacks vanish at $B$, then $B$ is stationary ([`detected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L103-L112)):
  - the profiles $f$ and $if$ give the real and imaginary parts ([`feedback_twist`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L97-L100));
  - the integrand is continuous on $\mathrm{Conf}_r$ ([`visible_cont`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L19-L20)), so it vanishes pointwise.
- The span of all feedbacks lies in the finite-dimensional dual of $\mathrm{Buf}_d$. Pick $k$ sections whose feedbacks span the same subspace; their joint kernel is $0$ ([`finite_detectors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L115-L129)).
- Take a left inverse $g'$ of the resulting injection $\mathrm{Buf}_d\to\mathbb R^k$, and put $g=H\circ g'$ with $H:\mathrm{Buf}_d\cong\mathbb R^m$ a coordinate isomorphism.
- The chart derivative is then $H$ ([`chart_deriv_formula`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L82-L93)).

*Lean:* [`square_of_frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L131-L147).

**Lemma VII.3.r (VII.3.6(c)).**

*The data.*

- $m_Q(k)$ is the tested correlation of the limit theory at scale $r_k$ in the frames $U_k$, on basis fields ([`measured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L15), [`exactMean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L19)).
- The leading free comparison, with derivative order $0$ and no stress slots, gives $m_Q(k)\to w_Q$, the free tested readings ([`measured_tends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L16-L19), [`exact_tape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L42-L53)).

*The hypothesis on $\varphi$.* It consists of four conditions:

- $\varphi$ is a real-analytic implicit solution of $\mathrm{chart}_Q(w,\varphi(w))=\mathrm{chart}_Q(w_Q,0)$ near $w_Q$, with $\varphi(w_Q)=0$. Locally the solution set is the graph of $\varphi$ ([`Reports`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L29-L33)).
- For every integer $L\ge2$, $\pi^{(0)}_Q(L,m)\to w_Q$ as $m\to\infty$.
- For every $L\ge2$ and $p,j\ge0$, eventually in $m$, all order-$j$ coupling derivatives at $0$ of the position equations evaluated on the order-$p$ lattice truncation and its image under $\varphi$ equal those of the constant free value. The threshold may depend on $L,p,j$.
- Some buffers $A_k\to0$ have $1+A_k$ invertible and solve the position equations eventually along $X$. For every clean degree-four system $R$ and $L\ge2$, their corrected tested readings differ by $o(1)$ from $\mathrm{chart}_R(\pi_R^{(0)}(L,k),\varphi(\pi_Q^{(0)}(L,k)))$.

*Proof sketch.*

- $B_k=\varphi(m_Q(k))\to\varphi(w_Q)=0$.
- By local uniqueness of the implicit solution, $B_k=A_k$ eventually. This transfers exact solvability and the leading comparison from $A_k$ to $B_k$.
- The required symmetries and unit identity follow from the eventual compatibility of $U_k$ in VI.2 and the fact that buffers commute with conjugation and signed permutations and kill the unit ([`adjusted_own`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L39-L46), [`adjusted_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L47-L49)).
- Compatibility with degrees $\le3$: $1+B$ is the identity on $E_d\subset E_4$ for $d<4$, because $E_d=\mathbb C\cdot1$ ([`motor_small`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L55-L61)).

The full degree-four position conclusion consists of:

- for every degree, every clean system and every $L\ge2$, the uncorrected tested data minus the order-zero lattice data at spacing $L^{-k}$ tend to $0$; every clean square system admits a map $\varphi$ satisfying the four conditions above;
- a clean square degree-four system $Q$ and such a map $\varphi$ for which VII.3.6(c) holds.

*Lean:* [`residency`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L32-L43), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L29-L30), [`testedMean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L42), [`finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98), [`readJet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Implicit.lean#L22); packaged by [`four_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L49-L53) (VIII.1).

### 4.6 Exclusion of Wick profiles (VII.3.7)

**Lemma VII.3.s (expansions; VII.2).** Let $\mathcal B$ be the real span of $r^a(\log r)^k$ for $a\in\mathbb Z$, $k\in\mathbb N$, on $r>0$. Every integrated mode kernel, and each of the real and imaginary parts of every Wick profile, has an expansion to all orders in $\mathcal B$: for every $N\in\mathbb Z$ there is $u\in\mathcal B$ with $f-u=O(r^N)$ as $r\to0^+$.
*Proof sketch.*

- **Reduction to radial moments.** In polar coordinates, $K_{\mathsf m,q,h}=\tfrac12\big(\int_{S^2}h\big)M_{j,q}$, where

$$M_{j,k}(s)=\int_0^\infty t^{j+2}E^{k-1}e^{-sE}dt,\qquad E=\sqrt{\mathsf m^2+t^2}.$$

- **Relations among the moments.**
  - $M_{j,k}'=-M_{j,k+1}$;
  - $M_{j,k+2}=\mathsf m^2M_{j,k}+M_{j+2,k}$;
  - the Euler identity $sM_{j+2,0}=(j+3)M_{j,1}$, from integration by parts.
  - Together they give $(s^{j+3}M_{j,1})'=-\mathsf m^2s^{j+3}M_{j,0}$.
- **Bootstrap.**
  - Start from $M_{j,0}=O(s^{-j-2})$.
  - If $M_{j,0}$ has an expansion with remainder $O(s^k)$, $k\ge-j-2$, integrating the weighted equation gives one for $M_{j,1}$ with remainder $O(s^{k+1})$.
  - Integrating $M_{j,0}'=-M_{j,1}$ then improves the known remainder for $M_{j,0}$ by at least one power. When the remainder to be integrated has order $s^{-1}$, first weaken it to $O(s^{-2})$; this still suffices for the induction.
  - The explicit power-log terms have primitives in $\mathcal B$; integrating $s^{-1}(\log s)^k$ raises the logarithmic power to $k+1$.
- Products and sums preserve the class.

*Lean:* [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47), [`euler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L69-L88), [`derived`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L99-L105), [`basic_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L106-L121), [`moment_expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Massive.lean#L122-L131), [`Track.moments_expand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125), [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22), [`primitives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Gain.lean#L109-L113).

**Lemma VII.3.t (no power-log law; VII.2).** Let $f:(0,\infty)\to\mathbb R$ and $A\in\mathbb R$. Suppose $f=u+O(1)$ with $u\in\mathcal B$ as $s\to0^+$, and $s^8\log^2(1/s)f(s)\to A$. Then $A=0$.
*Proof sketch.*

- The $O(1)$ part contributes $o(1)$.
- Collect equal power-log terms and discard zero coefficients. Along $s=2^{-n}$, $s^8\log^2(1/s)u(s)=\sum_tc_t\rho_t^n n^{k_t+2}$, with $c_t\ne0$, $\rho_t=2^{-(8+a_t)}$ and the pairs $(\rho_t,k_t)$ distinct. The empty sum has limit $0$.
- Let $t^\ast$ be the lexicographically largest term.
  - If $\rho_{t^\ast}<1$, every term tends to $0$, so $A=0$.
  - Otherwise its positive growth factor $\rho_{t^\ast}^n n^{k_{t^\ast}+2}$ diverges and dominates those of all remaining terms. Dividing by this factor, the left side tends to $0$ while the right side tends to $c_{t^\ast}\ne0$, a contradiction.

*Lean:* [`no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108).

**Lemma VII.3.u (VII.3.7).**
*Proof sketch.*

- (a) If $G_\Theta=W$ on $(0,\delta)$, apply VII.3.t to $\mathrm{Re}\,W$ and the real part of the hypothesis. This gives $A=0$, a contradiction.
- (b) Write $G_\Theta(s)=\int e^{-sp^0}d\mu(p)$, using the spectral measure $\mu$ of $\Theta$.
  - Every compactly supported momentum test $\psi$ has the form $\overline{\widehat f}\,\widehat g$: choose $|\widehat f|=1$ on its support and $\widehat g=\widehat f\,\psi$. Thus the hypothesized product-test identities give equality on all compactly supported momentum tests.
  - Approximate $e^{-sp^0}$ by compactly supported Schwartz tests dominated by it ([`approximate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L24-L38)).
  - Exponential damping is integrable for the trace spectral measure and for every mode product. Dominated convergence on both sides identifies $G_\Theta$ with the profile of the description on $(0,\infty)$ ([`reads`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L40-L54), [`identifies_euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73)).
  - Then apply (a).
- The public form uses the same mode kernels and identifies the asymptotic constant with $3\dim\mathfrak g/\pi^4$.

*Lean:* [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80), [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105), [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44).

### 4.7 The formal lattice perturbation theory

**Definitions VII.3.v.** Fix a finite periodic four-dimensional lattice. The perturbation theory uses inversion-odd link potentials,

$$A(-x-e_\mu,\mu)=-A(x,\mu).$$

Its definitions are:

**Gauge-fixed linearization and Gaussian measure.**

The links are $U=\exp(A)$. The action $S$ is the finite-regulator Wilson term plus the quadratic Feynman gauge-fixing term $\tfrac14\sum_x|\mathrm{div}\,A(x)|^2$ ([`action`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Action.lean#L46)).

The Haar Jacobian $J$ and the normalized Faddeev–Popov determinant $\mathrm{FP}$ are smooth at $0$, with $J(0)=\mathrm{FP}(0)=1$. The latter is the determinant of the gauge-condition derivative on inversion-even site parameters fixed to zero at the root, divided by its flat value ([`Orb.FP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/GaugeFix.lean#L94)). The matrix determinant, logarithmic determinant and inverse estimates come from the matrix calculus listed in the header.

The centered Gaussian probability has covariance equal to the inverse Hessian of this gauge-fixed action at $0$ ([`Orb.data`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Measure.lean#L31)).

**Formal series in the coupling.**

Write $S_j(A)=(j!)^{-1}D^jS(0)[A,\dots,A]$. After the rescaling $A\mapsto gA$, the formal weight is

$$w(g,A)=\exp\!\left(-\sum_{i\ge1}g^iS_{i+2}(A)\right)(J\,\mathrm{FP})(gA),$$

where the last factor denotes its formal Taylor series at $g=0$.

$\mathbb E_0$ is the Gaussian expectation, taken coefficientwise.

The normalized expectation is $\langle f\rangle_{\rm pert}=\mathbb E_0(wf)/\mathbb E_0(w)$ ([`Orb.weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61), [`Orb.expect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L74), [`Orb.normalize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L85)).

Every coefficient is continuous with at most polynomial growth, hence Gaussian-integrable. Since $w(0,A)=1$, the denominator has constant coefficient $1$ and is invertible as a formal series.

**Lattice readers of labels.** Substitute the lattice jet series plus $iZ$ into each polynomial label, where $Z$ is an independent centered real Gaussian jet with the prescribed covariance, and average in $Z$ separately within each insertion. Multiply these averaged insertions and take the normalized formal expectation. The separate auxiliary averages implement Wick subtraction without auxiliary contractions between different insertions ([`Full.column`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L41), [`Full.amplitude`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Blank.lean#L87)).

**Profiles.** The profile is the lattice Riemann sum

$$\textstyle\sum_o h^{4r}f(\iota_h(o))\,\mathrm{amplitude}(o),\qquad h=L^{-m},\ \text{side }4L^{m^2+m+1},$$

where $o$ ranges over $r$ lattice sites and $\iota_h$ takes the chosen integer lifts relative to the quarter-side origin and multiplies them by $h$ ([`Full.profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56)).

The order-zero profiles enter VII.3.r through the convergence theorem of VII.1. Their higher coefficients enter the formal position identities and the degree-four parity assertion assembled in VIII.1.

[`Orb.finite_agreement`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Together.lean#L58-L61) shows that retaining the interaction series, density series and insertions only through coupling order $k$ preserves every normalized coefficient through order $k$. The required action Taylor coefficients extend through order $k+2$.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The main calculation is the simultaneous diagonalization of all jet orders (VII.3.d–h). The Taylor normalization and the sum over ordered form indices determine the Kelvin constants and positive pivots; changing either convention changes the formulas. Recentring at the inverted separation eliminates all lower Taylor coefficients, so positivity follows from a triangular change of basis.

At degree four, the two-point form is indefinite before reflection. Rigidity uses its nonzero diagonal rates together with signed-permutation symmetry: equal reflection characters force symmetric coefficients and equal rates, while the two-point condition forces weighted antisymmetry. Full rotational equivariance of the buffer is unnecessary.

The position comparison is leading-order only. Its formal identities at every coupling order follow from the local implicit equation at a finite regulator; they give no all-order comparison with the interacting theory. The free quotient and its injective columns likewise give no interacting rank bound without the comparison estimates of III.11.

The non-freeness argument is independent of Gram positivity. Its analytic input is the power-log expansion of the massive Laplace moments, including the remainder estimates needed for integration. It excludes inverse-logarithmic leading behavior; logarithms with nonnegative powers already occur in free massive kernels.

<a id="unit-notation"></a>

## 6. Notation

- **object:** on-shell $j$-jets (homogeneous Maxwell solutions)

  **code name:** [`Sol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Solutions.lean#L115)

  **notation:** $\mathrm{Sol}_j$

- **object:** towers of multipoles

  **code name:** [`ProbeTower`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L69)

  **notation:** $\mathrm{Tow}_n$

- **object:** Wick polynomials

  **code name:** [`WickPol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L24), [`Slot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L22)

  **notation:** $\mathcal W=\mathbb C[X_s]$

- **object:** linear polynomial of a tower

  **code name:** [`code`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L16-L23), [`digit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L77)

  **notation:** $\ell_p$

- **object:** encoding in a basis of a tower

  **code name:** [`encode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L25)

  **notation:** $\Phi_b$

- **object:** free moment

  **code name:** [`Wick.moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Wick.lean#L126-L127), [`join`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L28)

  **notation:** $\langle P_1(x_1)\cdots\rangle_0$

- **object:** reflection in $z^\perp$

  **code name:** [`face`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Forms.lean#L103), [`pullSol`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Symbol.lean#L54-L55), [`solO`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Covariance.lean#L159-L163)

  **notation:** $\mathcal R_z$

- **object:** reflected pairing

  **code name:** [`duplex`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L54), [`aligned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Duplex.lean#L49-L52)

  **notation:** $\langle P,Q\rangle_{x,y}$

- **object:** tower Gram form

  **code name:** [`towerB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L71-L77), [`scan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L29-L32)

  **notation:** $B_z$

- **object:** inversion; inverted point

  **code name:** [`inversePoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/LegAct.lean#L110), [`rr`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Harmonic.lean#L25)

  **notation:** $I(z)=\check z=z/\lvert z\rvert^{2}$

- **object:** field of a multipole

  **code name:** [`reply`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/CurlDetect.lean#L24)

  **notation:** $R_P=s_jI^{\ast}P$

- **object:** Kelvin constant; pivot

  **code name:** [`strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Kelvin.lean#L46), [`price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L24)

  **notation:** $s_j$, $\pi_j(z)$

- **object:** shifted tower

  **code name:** [`shifts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Shift.lean#L20-L21), [`newLeg`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L98-L99), [`shiftAll`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PositiveLeg.lean#L123-L124)

  **notation:** $\sigma_z$

- **object:** two-point annihilator

  **code name:** [`crash`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Script.lean#L81), [`extractVar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Removal.lean#L25-L26)

  **notation:** $D^{x,y}_p$, $\partial^{y,y'}_s$

- **object:** Fock weight

  **code name:** [`tally`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/PowerGram.lean#L41)

  **notation:** $\alpha!\,d^\alpha$

- **object:** free-field map of labels; shell sector

  **code name:** [`observable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L66-L67), [`shellSector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Comparator.lean#L64)

  **notation:** $\omega_d$, $\mathrm{sh}_d$

- **object:** field space of the free table; embedding

  **code name:** [`(freeTable F).Field d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74), [`Position.E`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L11), [`writes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/FREE_DETECTOR_ALGEBRA/Rank.lean#L70-L71)

  **notation:** $E_d$, $\varpi_d$

- **object:** buffers; corrected frame

  **code name:** [`buffers`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L31-L40), [`motor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L45), [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Frame.lean#L29-L30)

  **notation:** $\mathrm{Buf}_d$, $U_k(1+B)$

- **object:** stationary buffers vanish

  **code name:** [`Frozen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Detect.lean#L102), [`stationery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L71-L72)

  **notation:** rigidity

- **object:** basis and dual basis of $E_4$

  **code name:** [`stand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L105-L110), [`star`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Pallet.lean#L15), [`portLine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Size.lean#L78-L80), [`coeff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Spin.lean#L59)

  **notation:** $\star_c$, $\lambda_c$, $\mathrm{coeff}(c,c')$

- **object:** rate

  **code name:** [`rate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Rigid/Camera.lean#L37)

  **notation:** $\rho(c)$

- **object:** test system; free readings; chart

  **code name:** [`Conditions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L54-L59), [`white`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L103-L104), [`chart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L69), [`square`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L106)

  **notation:** $Q$, $w_Q$, $\mathrm{chart}_Q$

- **object:** measured tested readings

  **code name:** [`measured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L15), [`exactMean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/RawMean.lean#L19), [`testedMean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Actual.lean#L42)

  **notation:** $m_Q(k)$

- **object:** leading position comparison

  **code name:** [`FourMeters`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L45-L47), [`Resident`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Four.lean#L23-L30), [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L45-L48), [`BoardAttains`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Crest.lean#L26-L34)

  **notation:** (D15)

- **object:** mode, track, Wick profile

  **code name:** [`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L152-L158), [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L162-L164), [`wickProfile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L165-L166), [`atPoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L16)

  **notation:** $K_{\mathsf m,q,h}$, $W$

- **object:** span of $r^a(\log r)^k$; full expansion

  **code name:** [`board`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L23), [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47), [`AtOrder`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L46)

  **notation:** $\mathcal B$

- **object:** trace two-point function

  **code name:** [`traceTwo`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L149), [`euclidean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53)

  **notation:** $G_\Theta(r)$

- **object:** perturbative weight, expectation, normalization

  **code name:** [`Orb.weight`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L61), [`expect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L74), [`normalize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Series.lean#L85)

  **notation:** $w$, $\mathbb E_0$, $\langle\cdot\rangle_{\rm pert}$

- **object:** lattice perturbative profile

  **code name:** [`Full.profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Lattice/Bundles.lean#L55-L56), [`Position.finite`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Position/Board.lean#L98)

  **notation:** $\pi^{(n)}_Q(L,m)$


<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Image versus intrinsic invariant algebra.** The statements use $\mathrm{sh}_d=\omega_d(\mathrm{Label}_d)$ exactly. An intrinsic characterization as all gauge-invariant on-shell polynomials of weight at most $d$ would require a separate surjectivity argument; no such characterization is needed here.
2. **Interacting rank estimates.** The free columns enter the construction of determinant trials in III.11, and the free-null description enters the upper-rank comparison. The estimates that turn these into interacting rank bounds and compatible interacting field spaces are inputs from III.11 and III.12; their proofs are outside this unit's verification.
3. **Continuum Wick subtraction.** The auxiliary imaginary Gaussian average in VII.3.v is the exact lattice definition. Its comparison with continuum Wick-ordered correlations uses VII.1's order-zero profile theorem. The underlying regulator-removal and Wick-subtraction estimates are accepted as VII.1 inputs; their proofs are not checked here.
4. **Further non-freeness statements.** The larger trace-exclusion package also contains exclusions involving embeddings into Maxwell Fock spaces and invariant averages. Their proofs are not covered by VII.3.7, which treats finite mass-shell contraction profiles and their tested two-point identities.

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
