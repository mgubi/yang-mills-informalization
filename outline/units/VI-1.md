# VI.1. Ward identities, the rotation action and the conserved stress tensor

*Part VI — Symmetry: stress tensor and Ward identities.*

Turns Ward identities into symmetry actions and a conserved stress tensor on the limit theory.

**Status: edited.** Condensed from the unit's detailed notes, which were checked against the linked Lean in two rounds and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [Detailed notes](../notes/VI-1.md) · [← Previous: V.3](V-3.md) · [Next: VI.2 →](VI-2.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VI, symmetry: stress tensor and Ward identities. **Lean:** [`YM/Bid/Town.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean), [`YM/Next/ROTATIONS`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS), [`YM/Ward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward), [`YM/Spin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin). **Size:** approximately 7,704 assigned lines, plus 6,100 of collinear flux estimates.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

Except for group statements, assume $S$ satisfies the Euclidean axioms: permutation symmetry, empty normalisation, unit deletion, translation invariance, $B_4$- and conjugation-covariance, coordinate reflection positivity for point words and smeared tests, smoothness, and for each arity, labels and derivative order $j$, constants $C\ge0,A\in\mathbb N$ with $\|D^jS(x)\|\le Cr^{-A}$ whenever $0<r\le1$ and maximum-norm separation is at least $r$, uniformly in positions. The plan consists of complex-linear maps $\partial_a:F_d\to F_{d+1}$. Its three laws are: derivative law $S(\dots,\partial_av_k,\dots;x)=\partial_{x_k^a}S(v;x)$, inclusion law $S(\dots,\iota v_k,\dots)=S(v;x)$, and orientation: inclusions commute with $M,\Gamma$, derivatives commute with $\Gamma$, and $M_\sigma\partial_b=\sum_a\sigma_{ab}\partial_aM_\sigma$.

The raw maps are complex-linear $p_a:F_d\to F_{d+1}$ and real-linear $Y:\mathfrak{so}(4)\to\mathrm{End}_{\mathbb C}F_d$; spin rows $T$ have the latter type. Write (R) for: $J_{ab}\in F_4$ is symmetric, $\Gamma$-real, $\sum_a\partial_aJ_{ab}=0$ in $F_5$, $M_\sigma J_{ab}=\sum_{ij}\sigma_{ia}\sigma_{jb}J_{ij}$, and $(J;p,Y)$ obeys the stress laws. For every separated $(x_0,\dots,x_n)$, labels $B,q$, and real $\chi\in C_c^\infty$ equal to $1$ near $x_0$ with closed support excluding the other points, these laws for $(J;P,A)$ are
$$-\sum_{a,b}\int\partial_a\chi(y)V_b(y)S(J_{ab}(y),B(x_0),q)\,dy=\begin{cases}S(P_jB(x_0),q),&V=e_j,\\S(A_KB(x_0),q),&V=K(y-x_0).\end{cases}$$
All identities concern separated insertions; no contact term is evaluated. Define
$$\mathcal W_K[T,P](q;x)=\sum_i\left[S(\dots,T_Kq_i,\dots;x)+\sum_b(Kx_i)_bS(\dots,P_bq_i,\dots;x)\right],\qquad\mathcal W_K[T]=\mathcal W_K[T,\partial].$$

**Proposition VI.1.1.** Assume the derivative and orientation laws and (R). For every arity $n$, degree $d$, coordinate axis $\mathbb Re_l$, every $x\in\mathrm{Conf}_n$ on that axis, all tags $q$ and $K\in\mathfrak{so}(4)$, $\mathcal W_K[Y,p](q;x)=0$. For every $j\ne l$ and $v_1,\dots,v_n\in F_d$, $\sum_iS(\dots,p_jv_i,\dots;x)=0$. *Status:* theorem. *Lean:* [`Outer.outer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L114-L121), [`Bid.LineSum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L35-L36).

**Proposition VI.1.2.** Assume all three plan laws, the ultraviolet record and free-Maxwell data of §2. There exists real $c\ne0$, independent of degree and axis, with $p_a=c\partial_a$ on every $F_d$. For all degrees, axes and $K$, the rows $D=c^{-1}Y$ satisfy (C) $\partial_bD_K+\sum_iK_{ib}\partial_i=D_K\partial_b$ and (L) $\mathcal W_K[D]=0$ on every coordinate axis, for all labels and $K$. *Status:* theorem. *Lean:* [`Bid.pressured`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L49-L59), [`Bid.formed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L61-L78).

**Proposition VI.1.3.** Assume the derivative law and spin rows $T$ satisfying (C),(L). Then $\mathcal W_K[T](q;x)=0$ for every arity, separated configuration, tags and $K$. *Status:* theorem. *Lean:* [`Ward.global`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139).

**Proposition VI.1.4.** Assume the inclusion and derivative laws, VI.1.3's conclusion, and compatibility of $T$: it commutes with $\Gamma,\iota$, kills $\mathbf1$, and $M_\sigma T_K=T_{\sigma K\sigma^{-1}}M_\sigma$. Assume internal row erasure: for some $N$, every $d\ge N$, and every alternating real-bilinear family $\Delta(u,v)\in\mathrm{End}_{\mathbb C}F_d$ that is $\Gamma$-real, covariant under determinant-one signed permutations, kills $\mathbf1$ and preserves every $\iota_{e\to d}(F_e)$, $e\le d$, vanishing insertion sums for all words, separated configurations and $u,v$ imply $\Delta=0$. Then $[T_u,T_v]=T_{[u,v]}$ for all $d,u,v$. *Status:* theorem; erasure is proved here. *Lean:* [`Work.A08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247).

**Proposition VI.1.5.** Under VI.1.2's hypotheses, for every $d$ there is a complex-linear isomorphism $V_d:F_d^{\rm free}\to F_d$ intertwining $M,\Gamma$ and satisfying $D_KV_d=V_d\mathcal L_K^{\rm free}$ for every $K$. Thus $R_d=V_dR_d^{\rm free}V_d^{-1}$ is a continuous $O(4)$ representation, equals $M$ on $B_4$, commutes with $\Gamma$, has generators $D$ satisfying the global Ward identity of VI.1.3. The $V_d$ are chosen independently across degrees. Such an action with specified generators is a rotation port. *Status:* theorem. *Lean:* [`Bid.services`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L124-L157).

**Proposition VI.1.6.** Assume the inclusion and derivative laws and a rotation port $R$ with generators $T$ satisfying VI.1.3's global Ward identity. For all $k\in O(4)$, tags and separated $x$, $S(R(k)v;kx)=S(v;x)$. Moreover $R$ fixes $\mathbf1$, commutes with inclusions, retains the port properties, and $R_{d+1}(k)\partial_av=\sum_i k_{ia}\partial_iR_d(k)v$ for every $d,a,v$. *Status:* theorem. *Lean:* [`Work.A14.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420).

**Proposition VI.1.7.** Assume the derivative law, a covariant rotation action satisfying VI.1.6's laws, (R), $p=c\partial$ with $c\ne0$, and generators $c^{-1}Y$. There exists symmetric, real, divergence-free $J'$ with $R_4(k)J'_{ab}=\sum_{ij}k_{ia}k_{jb}J'_{ij}$ for every $k$, satisfying the stress laws with $(P,A)=(\partial,c^{-1}Y)$. The translation shell, Ward identity (13), therefore equals $\partial_{x_0^b}S(B(x_0),q)$ for every window and labels. *Status:* theorem. *Lean:* [`Work.A15.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192).

**Proposition VI.1.8.** Spatial rotations and coordinate boosts generate $SO^+(1,3)$. Under VI.1.2's hypotheses, choose $V,R,J'$ as above: $B_d(\Lambda)=V_dB_d^{\rm free}(\Lambda)V_d^{-1}$ commutes with every inclusion $F_d\hookrightarrow F_e$, $d\le e$, for every $\Lambda$. These actions give a representation on the union, continuous on each $F_d$, equal to $R_d$ on spatial rotations and commuting with $M_{\theta_t}\Gamma$. For every $d$, spatial $i$ and $v\in F_d$, its boost derivative at zero is $-iD_{K^{(3i)}}v$. *Status:* theorems. *Lean:* [`Work.A16.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L91-L101), [`Work.A17.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L88-L101), [`Spin.reach`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L39-L74).

**Proposition VI.1.9.** Given §2's free data, infrared triple and ultraviolet record, all six assembly clauses hold: raw compatibility, normalisation, rotation descent, covariance, averaged stress laws, and Lorentz compatibility. With the inclusion and derivative laws, there exist $c,(V_d),J'$ satisfying VI.1.2 and VI.1.5–8, all three plan laws and the resulting local field laws. *Status:* conditional theorem. *Lean:* [`Outer.commission`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS.lean#L126-L131), [`Commission.picks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L45-L53).

<a id="unit-inputs"></a>

## 2. What it uses

- IV.1: limit table [`Table.Hierarchy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Words.lean#L141-L148), differential plan, commuting derivatives and injective inclusions.
- V.1: [`OS.Chamber`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L57-L61), OS Hilbert spaces, contraction semigroups and joint spectral measures, constructed from the axioms.
- VI.2: [`Org.MaxwellData`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L159-L170); free plan, covariant rotation and Lorentz actions, stress laws for $(J^{\rm free};\kappa\partial^{\rm free},\kappa\mathcal L^{\rm free})$ with $\kappa\ne0$, derivatives nonzero on $F^{\rm free}_4$, generator relations, Casimir polynomials and row erasure. At every sufficiently large degree, finitely many collinear readouts have common kernel $\mathbb R\partial^{\rm free}$ within the free vector-map space. Their producers assume the gauge group simple.
- VI.2 and III.11: [`Org.IR`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L172-L175) and [`Org.UV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L177-L186), including (R), orientation, lattice/extraction data, corrected-field bounds, grid approximations and weak scaling comparison of correlation jets and stress with the free table.
- Weak comparison means: for every arity bound $N$, degree bound $d$, derivative bound $m$ and $R\ge1$, there exist $r_k\downarrow0$, $\xi_k>0$ and complex-linear isomorphisms $U_{k,e}:F_e^{\rm free}\to F_e$. Through degree $\max(d,4)$ these intertwine $M,\Gamma$, units and inclusions; for $n\le N$, degrees $\le d$ and $j\le m$, $D_y^jS(U_kv;r_ky)\to D^jS^{\rm free}(v;y)$ uniformly where $\|y\|\le R$ and separation is at least $R^{-1}$. Also $\xi_k^{-1}r_k^4U_{k,4}^{-1}J_{ab}\to J_{ab}^{\rm free}$ for every $a,b$. The system may depend on all four bounds.
- Standard results: spectral theorem, holomorphic semigroups, analytic vectors, analytic identity theorem, Haar averaging, Cartan–Dieudonné, Givens rotations, McWeeny purification and linear ODE uniqueness.

<a id="unit-strategy"></a>

## 3. Strategy

Conservation turns shell laws into collinear Ward identities; free comparison fixes their normalisation. Positivity converts collinear two-point jets into analytic OS vectors, allowing propagation to every separated configuration. Exact intertwiners transport the free rotations; covariance then gives compatibility across degrees. Rescaling and averaging give the tensorial stress, and boost ODE uniqueness gives Lorentz compatibility.

<a id="unit-steps"></a>

## 4. Steps

1. Moving the centre inside a fixed window gives $\partial_bY_K+\sum_cK_{cb}p_c=Y_K\partial_b$ and $\partial_bp_i=p_i\partial_b$ by differentiating its shell laws. [`Work.A02.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307).
2. Cutoffs of widths $\lambda^{100},\lambda^{150},\lambda^{300}$ cancel two terms by stress symmetry; reflection positivity and spectral estimates bound the exterior flux by $O(\lambda^{-1})$, giving the collinear identity without a mass gap or clustering. [`Outer.blows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L105-L114). *(supporting analysis partly read)*
3. Finite free collinear tests have a one-dimensional kernel; persistence of rank under scaling forces $p=c\partial$. [`Climb.extends_form`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L98-L111).
4. Analytic comparison determines two-point jets; positivity gives factorial vector-derivative bounds. Extreme-point moves and density propagate vanishing angular sums. [`Analysis.blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96), [`Ward.global`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139).
5. Free row erasure removes the bracket defect. Relative-Casimir projection and iteration $x\mapsto3x^2-2x^3$ produce exact intertwiners: the compressed defect satisfies perfect commutator relations, which force sufficiently small operators to vanish. [`Work.A08.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247), [`Spin.meet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L134-L157).
6. Group generation integrates covariance; Haar averaging of $c^{-1}J$ preserves the stress laws. Boost ODE uniqueness proves compatibility across degrees. [`Work.A14.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420), [`Work.A15.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192), [`run_boost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L70-L84).

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

Diagonal stress components require a conservation estimate beyond reflection-parity arguments. Vanishing smooth jets alone do not justify continuation; positivity supplies analyticity. Exact intertwiners identify the required $O(4)$ action and signed permutations.

<a id="unit-notation"></a>

## 6. Notation

$S$: correlation table; $F_d$: finite-dimensional complex label spaces of degree $\le d$ modulo null labels; $\iota$: inclusions; $\mathbf1$: unit; $B_4,M$: signed permutations and their action; $\Gamma$: conjugation; $\mathrm{Conf}_n$: distinct points in $\mathbb R^4$. $K\in\mathfrak{so}(4)$ is real skew, with $[u,v]=uv-vu$ and $K^{(ba)}=E_{ba}-E_{ab}$; time is axis $3$, and $\theta_t$ reverses it. $\lambda=e^k$ is the cutoff scale.

<a id="unit-limitations"></a>

## 7. What remains unexplained

Supporting flux analysis, including contact-extension normalisation, was not checked fully (probable). The ultraviolet hypotheses of the input producers are not discharged here. Centring of $J'$ is not proved here; neither sign of $c,\kappa$ is specified. Lean elaboration and transitive axiom dependencies were not checked.

Detailed notes: the full account of this unit, with proof sketches for every step, is on the [detailed notes page](../notes/VI-1.md).

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [IV.1](IV-1.md), [III.16](III-16.md), [V.2](V-2.md), [V.1](V-1.md), [VIII.1](VIII-1.md), [III.10](III-10.md).

**Referenced by:** [VIII.1](VIII-1.md), [VII.2](VII-2.md), [VI.2](VI-2.md), [V.2](V-2.md), [V.3](V-3.md), [III.6](III-6.md), [III.10](III-10.md), [III.11](III-11.md), [VII.5](VII-5.md), [V.1](V-1.md), [VII.3](VII-3.md), [III.9](III-9.md), [VII.6](VII-6.md), [VII.1](VII-1.md).

## Lean source

**Source allocation:** 7,704 attributed lines; 1,014 line-counted declarations; 1,306 assigned declaration names. Of the assigned names, 1,261 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- work package [`YM/Work/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work) (in part, 24%) — 11,420 lines.
- work package [`YM/Ward/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward) — 1,127 lines.
- work package [`YM/Push/STRESS_FLUX/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX) — 1,063 lines.
- work package [`YM/Spin/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin), with [`YM/Climb/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb) — 667 lines.
- work package [`YM/Shift/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Shift) — 618 lines.
- work package [`YM/Work/A01/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01) — 436 lines.
- work package [`YM/Work/A05/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05) — 384 lines.
- work package [`YM/Work/A15/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15) — 317 lines.
- work package [`YM/Next/BOUNDARY/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/BOUNDARY) — 272 lines.
- work package [`YM/Axis/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Axis) — 93 lines.

### Additional source locations

Further pinned locations for the definitions and comparisons discussed in this unit.

- [`YM/Bid/Angular.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean)
- [`Bid.A14`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L105-L107)
- [`Bid.A15`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L109-L112)
- [`Bid.A16`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L116)
- [`Bid.A17`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L118-L119)
- [`Bid.Hyper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L16-L20)
- [`Bid.ShellCom`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L27-L29)
- [`Bid.Watches`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L43-L46)
- [`Bid.ConLap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L48-L49)
- [`Bid.Brackets`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L74)
- [`Bid.A08`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Angular.lean#L76-L78)
- [`Bid.imaginary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L102-L122)
- [`Bid.Miles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L13-L15)
- [`Bid.station`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L159-L168)
- [`Bid.witnessing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L33-L39)
- [`Bid.currencies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Bid/Town.lean#L80-L90)
- [`Climb.Lighthouse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L24-L29)
- [`Goes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L34-L42)
- [`Climb.Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L44-L48)
- [`Climb.ActLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L50-L51)
- [`Climb.comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L53-L63)
- [`Climb.Pre`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L66-L69)
- [`Climb.localTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L72-L74)
- [`Climb.Crystal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L83-L87)
- [`Climb.Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20)
- [`Climb.Parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L58)
- [`Colors`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L66-L87)
- [`Climb.ColorLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L89-L91)
- [`Climb.native`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L93-L96)
- [`Climb.transverse`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Peaks.lean#L57)
- [`Climb.Ens`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L101-L104)
- [`aisle`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L49-L57)
- [`Select`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Tests.lean#L95-L99)
- [`rise`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L20-L22)
- [`Inclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L58-L60)
- [`DiffPlan.Derivatives`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L61-L64)
- [`Orientation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Differential.lean#L66-L72)
- [`Tag`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Lift.lean#L66)
- [`unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L100)
- [`mirror`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L138-L140)
- [`conj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L142-L144)
- [`Field d`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Null.lean#L74)
- [`Rotation.Laws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L31-L42)
- [`Rotation.Oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L46-L48)
- [`Table.Stress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L57)
- [`Conserved`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L59-L62)
- [`Table.Tensorial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L64-L66)
- [`RawTensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L68-L70)
- [`Window`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L72-L73)
- [`shellGrad`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L79-L81)
- [`shellSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L84-L86)
- [`Table.StressLaws`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Euclid/Stress.lean#L90-L97)
- [`Boundary.Spins`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L22-L24)
- [`Boundary.Spins.Descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Fields/Star.lean#L26-L35)
- [`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165)
- [`Acme.readyA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/Emanate.lean#L15-L30)
- [`Acme.shells_law`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/MergeProof/West/Orange.lean#L33-L63)
- [`Maxwell.Free.maxwell_supplies`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/MAXWELL/Lit.lean#L45-L48)
- [`fuel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Budget.lean#L15)
- [`Mass.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Mass.lean)
- [`point_moment`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Moments.lean#L228-L243)
- [`Patch.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean)
- [`petal`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Patch.lean#L72)
- [`budget_lock`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Pivot.lean#L59-L72)
- [`sands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L40-L64)
- [`paid_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L66-L82)
- [`Outer.flux_value`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/River.lean#L84-L113)
- [`Outer.miles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L123)
- [`vane`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L14)
- [`vane_home`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L21-L27)
- [`draught_river`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L31-L48)
- [`drained`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L49-L56)
- [`axisTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L57-L67)
- [`fullTurn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L83-L96)
- [`stagger`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Route.lean#L98-L108)
- [`alternate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Switch.lean#L145-L160)
- [`Tunnel.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Tunnel.lean)
- [`exterior_size`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Vanishing.lean#L68-L120)
- [`Yard.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean)
- [`pick_price`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L49-L77)
- [`collimated`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/ROTATIONS/Yard.lean#L84-L103)
- [`OS.realization`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/OS/Dynamics.lean#L106-L107)
- [`Org.Winds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L141-L146)
- [`Org.erases`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Input.lean#L149-L152)
- [`YM/Org/Twist.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean)
- [`Org.mill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L17)
- [`Org.Tab`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L19-L24)
- [`Org.Commission`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Org/Twist.lean#L29-L43)
- [`bilinear_invariant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Color.lean#L79-L91)
- [`finrank_two`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L129-L167)
- [`finrank_one`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Counts.lean#L190-L231)
- [`div_kernel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L177-L184)
- [`stress_bijective`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/FreeTests.lean#L227-L235)
- [`stress_tensor`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Push/STRESS_FLUX/Polynomial.lean#L202-L214)
- [`Signed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Space/Index.lean#L23-L26)
- [`Spec.Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43)
- [`enough`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L27-L38)
- [`Spin.run`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L21-L22)
- [`Spin.wand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L24-L25)
- [`Spin.transmits`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Floor.lean#L30-L37)
- [`Spin.rectify`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L25-L69)
- [`stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Isolates.lean#L72-L98)
- [`Spin.Port`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L13-L19)
- [`Spin.morph`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L22-L24)
- [`Spin.produces`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L26-L47)
- [`Spin.team`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Lands.lean#L50-L69)
- [`effect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L21)
- [`wave`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L57)
- [`Spin.Works`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L68-L71)
- [`Tracks`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L74-L75)
- [`realize`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Shape.lean#L77-L93)
- [`Spin.Tilt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L116-L122)
- [`Spin.rel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L35)
- [`change`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L44)
- [`realH`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L50-L52)
- [`Spin.fine`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Sheets.lean#L55-L64)
- [`FreeStress.fire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/UVNext/FREE_STRESS_CERTIFICATE/Choose.lean#L137-L150)
- [`park1`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L36-L53)
- [`pushes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L57-L74)
- [`line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L86-L108)
- [`htQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L115-L128)
- [`solves`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L130-L174)
- [`Ward.Q`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L89-L90)
- [`last_adv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L102-L121)
- [`first_adv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L131-L153)
- [`Ward.higher`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Extreme.lean#L23-L69)
- [`swing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L33-L43)
- [`Ward.radial`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L54-L68)
- [`Analysis.represents`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L19-L41)
- [`bud`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L46-L74)
- [`Ward.jet_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Motion.lean#L31-L42)
- [`PDE.sure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/PDE.lean#L121-L141)
- [`responds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L102-L118)
- [`blooms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L120-L133)
- [`advancing`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L137-L158)
- [`Ward.spot`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L55)
- [`link`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Plants.lean#L64-L73)
- [`builds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rate.lean#L93-L102)
- [`Ward.sigma`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L73-L97)
- [`Ward.realized`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Rows.lean#L99-L116)
- [`Ward.ac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L138-L143)
- [`Ward.SpinRows`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L17)
- [`Ward.angular`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L25-L27)
- [`Ward.commutes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L29-L30)
- [`Ward.Collinear`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L34-L35)
- [`Ward.traverses`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Sum.lean#L92-L136)
- [`Ward.channel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L15-L26)
- [`Ward.Still`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L45)
- [`Ward.stood`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L60-L71)
- [`Walk`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L75-L78)
- [`translation_color`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L27-L76)
- [`angular_hyper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L78-L112)
- [`flux_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L183-L203)
- [`flux_mirror`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Mirror.lean#L161-L194)
- [`deriv_shellSpin`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L213-L259)
- [`stable`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L37-L48)
- [`full_jet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L152-L186)
- [`all_line`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L51-L80)
- [`row_D`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L83-L103)
- [`Work.A04.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A04.lean#L163-L183)
- [`Work.A05.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05.lean#L95-L121)
- [`recover_on`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Read.lean#L70-L81)
- [`integrate_sheet_scale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A05/Window.lean#L158-L172)
- [`transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L243-L285)
- [`defect_winds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L192-L205)
- [`defect_ward`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L209-L230)
- [`orbital_comm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L62-L68)
- [`orbit_twice`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L91-L107)
- [`Work.A09.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A09.lean#L85-L90)
- [`Work.A10.answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A10.lean#L113-L115)
- [`reflection_conjugate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L151-L174)
- [`cov_parameter`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L245-L261)
- [`Work.A14.oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L277-L292)
- [`unit_fixed`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L310-L325)
- [`vectorLaw`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L364-L398)
- [`tensorial_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L117-L118)
- [`conserved_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L134-L154)
- [`normalize_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L22-L41)
- [`averageStress`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L86)
- [`exists_rest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A16.lean#L82-L89)
- [`rise_generator`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A17.lean#L57-L68)

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vi-1-1"></a>

- **K-VI.1.1** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A13.lean#L191-L200) *(key result)* — The orthogonal group's action is generated algebraically by the relevant elementary motions, giving the actual orthogonal-group structure.

<a id="k-vi-1-2"></a>

- **K-VI.1.2** [`blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Ket.lean#L76-L96) *(key result)* — A smooth Hilbert-valued function whose inner-product kernel is a function of the difference with analytic Taylor series at 0 is real-analytic everywhere.

<a id="k-vi-1-3"></a>

- **K-VI.1.3** [`onto`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spin/Close.lean#L42-L70) *(numbered result)* — An idempotent limit lying in a closed subring can be approximated by idempotents in the subring commuting with the given sequences and annihilated by them.

<a id="k-vi-1-4"></a>

- **K-VI.1.4** [`laws_of_oriented`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L403-L415) *(numbered result)* — An oriented rotation satisfying the spin port compatibility obeys the rotation laws for the hierarchy.

<a id="k-vi-1-5"></a>

- **K-VI.1.5** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A02.lean#L272-L307) *(key result)* — The bid A02 holds: the center can be moved inside a fixed cutoff.

<a id="k-vi-1-6"></a>

- **K-VI.1.6** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A14.lean#L417-L420) *(key result)* — The rotation laws are derived from the configuration-space Ward identity.

<a id="k-vi-1-7"></a>

- **K-VI.1.7** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A08.lean#L232-L247) *(key result)* — Actual Lie brackets are recovered after Ward propagation.

<a id="k-vi-1-8"></a>

- **K-VI.1.8** [`rotate_flux`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15/Transfer.lean#L124-L168) *(numbered result)* — Rotating a stress by an orthogonal element preserves the D and Lie flux laws.

<a id="k-vi-1-9"></a>

- **K-VI.1.9** [`fires`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Genuine.lean#L72-L81) *(key result)* — If a two-point function's Taylor series at zero matches an analytic germ, the singleton-singleton row is real-analytic in the offset along a transverse direction.

<a id="k-vi-1-10"></a>

- **K-VI.1.10** [`pure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Circles.lean#L179-L209) *(key result)* — Along transverse axes, the spot function of a point moved in direction b is real-analytic.

<a id="k-vi-1-11"></a>

- **K-VI.1.11** [`along`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Walk.lean#L79-L84) *(key result)* — If the Ward value condition holds at the endpoint of a walk, it holds at the starting point.

<a id="k-vi-1-12"></a>

- **K-VI.1.12** [`global`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Ward/Axis.lean#L130-L139) *(main result)* — Under the hierarchy, differential-plan, derivative, commutation and collinearity hypotheses, the full Ward values hold at every configuration of distinct points.

<a id="k-vi-1-13"></a>

- **K-VI.1.13** [`cutoff_zero`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01/Conserve.lean#L154-L181) *(numbered result)* — For a conserved current and a Killing vector, integrating the current against the gradient of a compactly supported cutoff away from the word's points gives zero.

<a id="k-vi-1-14"></a>

- **K-VI.1.14** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A01.lean#L115-L117) *(key result)* — The compatibility properties of both raw shell maps hold.

<a id="k-vi-1-15"></a>

- **K-VI.1.15** [`stressLaws_average`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L156-L183) *(key result)* — Averaging a stress tensor over rotations preserves the flux laws.

<a id="k-vi-1-16"></a>

- **K-VI.1.16** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A15.lean#L187-L192) *(key result)* — The unnormalized stress can be averaged and renormalized to a conserved, tensorial stress satisfying the flux laws.

<a id="k-vi-1-17"></a>

- **K-VI.1.17** [`descends`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Beams.lean#L90-L98) *(numbered result)* — Given weak comparator matrices satisfying the crystal condition, a descent consumer produces rotation-compatible data from the hypothesised tilt.

<a id="k-vi-1-18"></a>

- **K-VI.1.18** [`Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31) *(numbered result)* — A bundled data structure packaging scaling maps compatible with a table of data.

<a id="k-vi-1-19"></a>

- **K-VI.1.19** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A12.lean#L323-L336) *(key result)* — The A12 statement: existence of the limiting Casimir selection polynomial for the relevant family.

<a id="k-vi-1-20"></a>

- **K-VI.1.20** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A07.lean#L287-L289) *(key result)* — The bid A07 statement, obtained by applying the transfer lemma.

<a id="k-vi-1-21"></a>

- **K-VI.1.21** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A06.lean#L236-L256) *(key result)* — The finite collinear Ward test matrix transport statement (bid A06) holds.

<a id="k-vi-1-22"></a>

- **K-VI.1.22** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A03.lean#L197-L202) *(key result)* — All positional jets of transverse-component vector Ward tests are as required.

<a id="k-vi-1-23"></a>

- **K-VI.1.23** [`answer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Work/A11.lean#L199-L206) *(key result)* — The reality and signed-subgroup properties of the wave polynomial (bid A11) hold.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)
