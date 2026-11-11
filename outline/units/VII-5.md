# VII.5. Asymptotic freedom of the running coupling

*Part VII — Identification as Yang–Mills.*

Relates the running coupling to its leading logarithmic asymptotic under the construction hypotheses.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VII-5.md) · [← Previous: VII.4](VII-4.md) · [Next: VII.6 →](VII-6.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

**Reading scope.** The coupling result is in `YM/Pert/Asymptotics`; the allocation also includes auxiliary algebra and limit lemmas from other folders, as explained below.

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/Pert/Asymptotics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics), [`YM/Extra/WEAK_SCALING_ACTLAW`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW), [`YM/TraceExtension/Foundation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation), [`YM/TraceExtension/Soot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot). **Size:** 232 lines, 43 declarations.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

For VII.5.1–3, let $G\subset U(q)$ be compact, $q\ge1$. Write $2b_0=\kappa_G=11C_{\mathfrak g}/(24\pi^2)$, $a_m=(\prod_{k<m}b_k)^{-1}$, $s_m=\log(1/a_m)$, with odd $b_k\ge3$. The trajectory has inverse couplings $\beta_{N,p,m}$, bare endpoint $\beta_{N,p}=\beta_{N,p,N}$, reference value $\beta_{N,p,0}=\bar\beta>0$, and $g_{N,p,m}=\beta_{N,p,m}^{-1/2}$. Simple means real simple and nonabelian. The running clause says that for every $\varepsilon>0$, eventually in $m$,
$$|\beta_{N,p,m}-(\bar\beta+2b_0s_m)|\le\varepsilon s_m$$
uniformly for $N\ge m$ and $p\in\mathbb N$.

**Proposition VII.5.1.** If the family satisfies the construction conditions (II.2), then for every $\varepsilon>0$ there is $m_0\ge1$ such that
$$\left|\beta_{N,p,m}/s_m-2b_0\right|<\varepsilon\qquad(m\ge m_0,\ N\ge m,\ p\in\mathbb N).$$
*Status:* theorem; only the running clause is used, without simplicity. *Lean:* [`YM.Pert.Asymptotics.zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30).

**Corollary VII.5.2.** Under the construction conditions and simplicity of $\mathfrak g$, the Wilson family satisfies (Reg1): for every $\varepsilon>0$ there is $N_0\ge1$ such that $|\beta_{N,p}/s_N-b_*|<\varepsilon$ for all $N\ge N_0$ and $p\in\mathbb N$, where $b_*=2b_0>0$.
*Status:* theorem in VIII.1. *Lean:* [`YangMills.regular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/HierarchyBridge.lean#L16-L25).

**Proposition VII.5.3.** Under the same hypotheses, for any lattice-level and volume sequences $(N_i),(k_i)$ with $i\le N_i$ eventually,
$$g_{N_i,k_i,i}\sqrt{s_i}\longrightarrow(2b_0)^{-1/2},\qquad g_{N_i,k_i,i}^2s_i\longrightarrow(2b_0)^{-1}.$$
*Status:* theorem; the second limit follows by squaring. *Lean:* [`YM.Pert.Asymptotics.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48).

For VII.5.4–5, $\mathcal F_d,\mathcal F_d^\circ$ are finite-dimensional complex label spaces of degree at most $d$ in Euclidean hierarchies on $S$ and its free Maxwell comparison table, on the same reference labels. Derivative plans have inclusions $\iota_{d\to e}$ and derivatives $\partial_{d,a}$. Exact compatibility means preserving inclusions, signed permutations $\Gamma_4$, conjugation and units.

**Proposition VII.5.4.** Fix the free Maxwell data of VI.2, including the finite separating tests and boundary, polynomial and internal-rotation conditions. Its plan $W$ satisfies the inclusion, derivative and orientation axioms; $J^\circ$ satisfies Ward identities with translation part $\kappa\partial^W$ and rotation part $\kappa$ times the infinitesimal rotation action, where $\kappa\ne0$ and $\partial^W_4\ne0$. Let $V$ satisfy the inclusion and derivative axioms. Suppose $J\in\mathcal F_4^{4\times4}$ is symmetric, real, $\Gamma_4$-covariant and satisfies $\sum_a\partial^V_{4,a}J_{ab}=0$ for every $b$, and $(J,p,Y)$ satisfies the local Ward identities. If some $c\in\mathbb R$ satisfies $p_{4,a}=c\partial^V_{4,a}$ for all $a=1,\ldots,4$, there exist $D,N,M\in\mathbb N$, $R_0\ge1$ such that $c/\xi_k\to\kappa$ for every tracking scaling sequence at every level $(n,d,j,R)\ge(N,D,M,R_0)$ componentwise (VI.1). Also, for any hierarchy and local Ward identities, $p\ne0$ implies $J\ne0$.
A scaling sequence has complex-linear isomorphisms $U_k(d):\mathcal F_d^\circ\to\mathcal F_d$, positive strictly decreasing $r_k\to0$ and $\xi_k>0$. Tracking $(V,W,J)$ at $(n,d,j,R)$ requires exact compatibility through $\max(d,4)$, convergence of transported correlations at $r_kx$ for each fixed list of at most $n$ fields of degrees at most $d$, to the free correlations, with all Fréchet derivatives through order $j$, uniformly on $\{x:\|x\|\le R,\ \|x_a-x_b\|_\infty\ge R^{-1}\ (a\ne b)\}$, and $\xi_k^{-1}r_k^4U_k(4)^{-1}J_{ab}\to J^\circ_{ab}$.

*Status:* theorems. *Lean:* [`YM.Extra.WeakScaling.tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54), [`flux_nontrivial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Criteria.lean#L64-L70).

**Proposition VII.5.5.** Let $V,W$ satisfy the inclusion and orientation axioms. For every $d$ there is a complex-linear, $\Gamma_4$-equivariant, conjugation-preserving retraction $P_d$ of $\iota^W_d:=\iota^W_{d\to d+1}$. For any complex-linear isomorphisms $A_d:\mathcal F_d^\circ\to\mathcal F_d$, define
$$X_0=A_0,\qquad X_{d+1}=\iota^V_dX_dP_d+A_{d+1}(1-\iota^W_dP_d).$$
Fix $D\in\mathbb N$. If $A_d$ preserve symmetries and units for $d\le D$, then $X_d$ are exactly compatible through degree $D$. For sequences of such isomorphisms $A_d^{(k)}$ satisfying $(A_{d+1}^{(k)})^{-1}\iota^V_dA_d^{(k)}v\to\iota^W_dv$ for every $d<D,v$, one has $(A_d^{(k)})^{-1}X_d^{(k)}\to1$ in operator norm for every $d\le D$. These $X_d^{(k)}$ are eventually bijective; replacing nonbijective terms by $A_d^{(k)}$ gives isomorphisms $\widetilde X_d^{(k)}$ with $(A_d^{(k)})^{-1}\widetilde X_d^{(k)}v\to v$. If the original frames preserve symmetries and units through $D$, the replacements are eventually exactly compatible simultaneously through $D$.
*Status:* theorem. *Lean:* [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`adjusted_exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L80-L102), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129), [`relative`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L144-L148).

**Proposition VII.5.6.** Along any filter: (a) for an injective linear map $f:E\to X$ between finite-dimensional real normed spaces, $f(a_y)\to f(e)$ implies $a_y\to e$; (b) continuous real-linear maps $f_y,g:(\mathbb R^4)^n\to\mathbb C$ satisfy $f_y\to g$ in operator norm if $f_y(e_{i,a})\to g(e_{i,a})$ at all $4n$ coordinate vectors.
*Status:* theorem. *Lean:* [`norm_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L44-L51), [`norm_fit_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L63-L70).

**Definition VII.5.7.** In gauge-invariant radial-jet polynomials, with curvature weight 2 and derivatives adding 1, for $t\in\mathbb R^4$ set
$$\mathfrak s=\tfrac14\sum_{i,j}\langle F_{ij},F_{ij}\rangle,\quad T^{(t)}_{ab}=\delta_{ab}\bigl(t_0\mathbf1+t_1\sum_i\langle F_{ai},F_{ai}\rangle+4t_2\mathfrak s\bigr)+(1-\delta_{ab})t_3\sum_i\langle F_{ai},F_{bi}\rangle.$$
Here $F,\partial F$ are linear curls of degree-0 and degree-1 radial Taylor coefficients. These are polynomial identities before quotienting by null fields. Put $T^{\mathrm{can}}=T^{(0,1,-1/4,1)}$, $\mu^1_b=\sum_i\langle F_{bi},\partial_bF_{bi}\rangle$, $\mu^2_b=\sum_{i,j}\langle F_{ij},\partial_bF_{ij}\rangle$, $E_b=\sum_{a,i}\langle F_{bi},\partial_aF_{ai}\rangle$, and, for $w\in\mathbb R^3$,
$$\beta(w)=w_0\mu^1+w_1\mu^2+w_2E,\quad\delta(w)=\beta(2(w_0-w_2),2w_1+w_2/2,w_2).$$
Both $\mu^1,\mu^2$ belong to the real space $\mathcal R_1$ of real, $\Gamma_4$-covariant vectors of degree at most 5. Every degree-0 radial jet is realised by a constant-curvature free Maxwell field with affine potential.
*Status:* definitions and two lemmas. *Lean:* [`raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L70), [`basisV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L63-L66), [`bareVector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L33), [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50).

**Definition VII.5.8.** Fix a family, nondecreasing $K:\mathbb N\to\mathbb R$ with $K\ge1$, degree $d$, stages $\ell_d\le k\le N$, volume $p$, and $u\in\mathbb R$. The sharp read-out bound asserts $u\|c_k\|_1\le4(1+n_k)w$ for every $w\ge0$ and every chain of insertion presentations $A_i$ at the origin, with coefficient vectors $c_i$, remainder costs $q_i$ and densities $\mathcal D_i$, satisfying the admissibility conditions of III.12 (regular and forced remainders, with square-root forced allowance), $c_{\ell_d}=0$, and, for every $\ell_d\le i<k$,
$$\begin{aligned}
\mathcal D_i&=b_i^d\mathcal T^{(i)}_{\beta_{N,p,i+1}}\mathcal D_{i+1},\\
\|c_i-B_iS_ic_{i+1}\|_1&\le b_i^{-3/8}(\|Pc_{i+1}\|_1+q_{i+1}),\\
q_i&\le K_i\|PS_ic_{i+1}\|_1+b_i^{-3/8}q_{i+1}.
\end{aligned}$$
For each $\ell_d\le i<k$, costs $q_i,q_{i+1}$ are nonnegative and $B_i$ is a complex-linear automorphism commuting with $P$, with $\|B_i^{\pm1}c\|_1\le K_i\|c\|_1$ for every $c$. For $\ell_d\le i\le k$, the admissible remainder cost is at most $q_i$, and $q_k\le w+n_k(w+\|c_k\|_1)$.
*Status:* definition. *Lean:* [`YM.MergeProof.Accent.SharpRead`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot/Skein.lean#L26).

<a id="unit-inputs"></a>

## 2. What it uses

- I.1: Casimir positivity and divergent logarithmic scales ([`Schedule.divergent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L117-L120)); II.2, III.1–2: construction conditions, selected histories and shooting ([`YM.Family.Makes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L44-L62)).
- III.7, III.9: one-loop shift and coupling reset.
- IV.1, VI.1–2: hierarchies, derivative plans, Ward identities, A04–A05 and free Maxwell data ([`MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170)); III.12: insertion estimates.
- Standard results: Cesàro summation, continuity of square root and reciprocal, Maschke averaging, finite-dimensional continuity and openness of invertibility.

<a id="unit-strategy"></a>

## 3. Strategy

The inverse coupling follows a linear reference trajectory in logarithmic scale. Uniform one-step errors sum to $o(s_m)$ around $\bar\beta+2b_0s_m$. Division by $s_m\to\infty$ removes the reference coupling. The auxiliary arguments compare two limits proportional to the same nonzero derivative, which determines the stress normalisation. Averaged retractions split each inclusion; correcting frames recursively on the included subspace makes compatibility exact, while the relative correction tends to the identity.

<a id="unit-steps"></a>

## 4. Steps

1. Given $\beta_{N,p,0}=\bar\beta$ and transfer errors bounded by $\delta_{m+1}$ with $\delta_{m+1}/\log b_m\le J(m+1)^{-2}\to0$, summation gives the uniform running clause. Split off a finite initial segment and bound the remaining error by a small multiple of $s_m$ (III.2). [`trajectory`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L23-L53).
2. Divide by $s_m$; specialise to $m=N$ for (Reg1), and use continuity of inverse square root for VII.5.3; positivity uses simplicity. [`zeroUp_bound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L15-L30), [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48).
3. A04–A05 give derivative and Ward limits; a linear functional nonzero on $\partial^W_4$ extracts $c/\xi_k\to\kappa$. [`tracks_ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L43-L54).
4. Average retractions over $\Gamma_4$ and conjugation; the recursive correction preserves inclusions and tends to the original frames in relative operator norm, ensuring eventual invertibility. [`retraction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L35-L55), [`perturb_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L113-L129).
5. At the polynomial level, sign cancellation gives covariance of $\mu^1,\mu^2$; constant curvature realises every degree-0 jet on a Maxwell solution. [`momentum1_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L28-L34), [`shell_affine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L43-L50).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

The analytic work lies upstream in the one-loop estimate, coupling reset and shooting. This unit establishes the leading lattice logarithm; the main theorem retains only a positive slope through (Reg1).

<a id="unit-notation"></a>

## 6. Notation

$C_{\mathfrak g}$ is the Casimir for $\langle X,Y\rangle=-q^{-1}\mathrm{Re}\,\mathrm{tr}(XY)$. For an orthonormal basis $(e_i)$, $C_{\mathfrak g}=-(\dim\mathfrak g)^{-1}\sum_i\mathrm{tr}_{\mathfrak g}((\mathrm{ad}\,e_i)^2)$, with value 0 if $\mathfrak g=0$. In VII.5.8, $\ell_d$ is the family’s reference stage, $P$ removes the unit coordinate, $\|c\|_1=\sum_\alpha|c_\alpha|$, $(S_ic)_\alpha=b_i^{d-d_\alpha}c_\alpha$, $K_i=K(J(i+1))$; $n_k$ is the column number. Here $d_\alpha$ is label weight and $J$ the scale-stage index. In VII.5.4, $\xi_k>0$ is stress normalisation.

<a id="unit-limitations"></a>

## 7. What remains unexplained

The one-loop integral belongs to III.7. A declaration establishing cutoff removal, infinite-volume limits and comparison with a coupling from continuum correlations has not been identified (tentative). Tracking-sequence existence belongs to VI.1 and VII.1; the read-out bound requires upstream one-step hypotheses.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VII-5.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [IV.1](IV-1.md), [I.1](I-1.md), [III.16](III-16.md), [VI.1](VI-1.md), [II.1](II-1.md).

**Referenced by:** [VII.2](VII-2.md).

## Lean source

**Source allocation:** 232 attributed lines; 43 line-counted declarations; 43 assigned declaration names. Of the assigned names, 43 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Extra/WEAK_SCALING_ACTLAW/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW) — 162 lines.
- work package [`YM/TraceExtension/Foundation/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation) — 37 lines.
- work package [`YM/Pert/Asymptotics/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics) — 18 lines.
- proof of [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48) — 14 lines.
- work package [`YM/TraceExtension/Soot/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Soot) — 1 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`YangMills.WilsonRegularity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/ChallengeSpec.lean#L12-L22)
- [`Duet.Woke`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L115-L127)
- [`direction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Loan.lean#L65-L69)
- [`Lighthouse.Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42)
- [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48)
- [`Pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69)
- [`carry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L44-L45)
- [`aisle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57)
- [`DiffPlan`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22)
- [`StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97)
- [`perturb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L106-L108)
- [`Near`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L110-L111)
- [`eventually_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L131-L135)
- [`rotateChart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L137-L140)
- [`rotate_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L142-L143)
- [`Graded`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L171-L172)
- [`averaged_cov`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L27-L32)
- [`adjusted`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L61-L66)
- [`Exact`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L72-L76)
- [`adjusted_succ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Adjust.lean#L78-L79)
- [`components`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Analysis.lean#L55-L60)
- [`scale_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L28-L39)
- [`kappa_sign`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Orientation.lean#L56-L70)
- [`Free`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Extra/WEAK_SCALING_ACTLAW/Station.lean#L28)
- [`YM.FullVolume.stretching`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/FullVolume/Region.lean#L28-L30)
- [`trace_adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L140-L158)
- [`casimir_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L160-L172)
- [`slopeConstant_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Casimir.lean#L174-L176)
- [`YM.Gauge.casimir`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L180-L182)
- [`slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)
- [`Schedule.scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L115)
- [`Schedule.a`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Lattice/Scale.lean#L99)
- [`Maxwell.equationIdeal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Maxwell/Equation.lean#L72)
- [`Directed.links`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Band.lean#L57-L63)
- [`Kin.Planned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/PCalc/Loop.lean#L93-L115)
- [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L13)
- [`b0_normalizes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L14)
- [`regulatorRun`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L35)
- [`YM.Pert.ratio`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L62-L66)
- [`YM.Pert.centered_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Weak.lean#L82-L116)
- [`RawOne`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L53)
- [`eom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L105)
- [`stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L177-L181)
- [`weyl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L187)
- [`pair`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L50-L51)
- [`pairDeriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L57-L58)
- [`Conv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L213-L218)
- [`Transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L223-L227)
- [`Running`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L229-L230)
- [`YM.RG.History.Selected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L234-L240)
- [`hatBeta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG/History.lean#L79)
- [`YM.SharpGram.Weak.Portfolio.tune_grades`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Weak/Compatible.lean#L140-L159)
- [`Recipe.races`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Race.lean#L67-L82)
- [`successful`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shoot/Reach.lean#L156-L159)
- [`Family.beta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Construction.lean#L38)
- [`Format`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L52-L61)
- [`remBound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Source/Insertion.lean#L63-L68)
- [`Spin.comparator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L38)
- [`mere`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88)
- [`coordinates1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L112-L124)
- [`momentum2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L14)
- [`momentum1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L16)
- [`sumPerm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L17-L20)
- [`momentum2_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L21-L24)
- [`momentum2_mem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L25-L27)
- [`shell_quadratic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L52-L61)
- [`through_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Caps.lean#L96-L110)
- [`proj3`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L31)
- [`mat3`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L32)
- [`euler`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L38-L52)
- [`bareCoordinates`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L54-L63)
- [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66)
- [`mechanical_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69)
- [`conformal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L71-L72)
- [`eom_vector_raw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L73-L74)
- [`rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80)
- [`rho_eom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L85-L88)
- [`attain`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Earn.lean#L22-L52)
- [`YM.Trace.Terrace.Sceptre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Knell.lean#L62-L66)
- [`Lease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22)
- [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183)
- [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-5-1"></a>

- **K-VII.5.1** [`comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Pert/Asymptotics/RawAxis.lean#L36-L48) *(key result)* — The running regulator coefficient times the square root of log inverse lattice spacing tends to 1/sqrt(2 b0), giving the leading-log asymptotics of the running coupling.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)
