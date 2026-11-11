# VII.2. The trace of the stress tensor and the trace anomaly

*Part VII — Identification as Yang–Mills.*

Explains the centered trace two-point asymptotic and the resulting exclusions under the stated comparison hypotheses.

**Status: edited.** Checked against the linked Lean and edited; the local limitations still apply. [Status meanings](../../data/README.md#outline-status).

[Overview](../README.md) · [All units](../units.md) · [← Previous: VII.1](VII-1.md) · [Next: VII.3 →](VII-3.md)

[Results](#unit-results) · [Inputs](#unit-inputs) · [Strategy](#unit-strategy) · [Proof steps](#unit-steps) · [Notation](#unit-notation) · [What remains unexplained](#unit-limitations) · [Code dependencies](#code-dependencies) · [Lean source](#lean-source) · [Key statements](#key-statements)

<details>
<summary>Source inventory and conventions</summary>

**Part:** VII, identification as Yang–Mills. **Lean:** [`YM/TraceExtension`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension) (namespaces `YM.TraceExtension` and `YM.Trace`). The folder splits as follows:

- the centered trace and its spectral measure: the top-level files `Centered`, `WilsonTrace`, `LogScaling`, `ConeLaplace`, `Dyadic`, `Belfry`, `Agora`, `Endpoint`;
- the renormalization-group proof of the anomaly: `Chart`, `Slate`, `Shelves`, `Terrace`, `Margin`, `Loft`, `Lamp`, `Det`, `Perfect`, `Anchor`, `Cask`, `Shepherd`, with the auxiliary folders `Zn`, `Weir`, `Pills`, `Turret`, `Wicket`, `Fen`, `Swift`, `Filch`, `Quince`, `Pi`, `Xo`;
- the short-distance law: `Verse` and `Foundation`;
- the exclusions: `Wick` and `Fock`;
- a position-space variant: `Atlas`, `Pith`, `Sundial`, `Link`.

The unit also contains [`FreeRanks.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean), the specification [`HeadlineSpec.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean), [`ManuscriptTraceTests.lean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean) and small pieces of `YM/Integration` and `YM/RG08/Calendar`.

**Size:** 20,681 lines. The argument headed by [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68) and the argument headed by [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35) are the two main RG arguments.

**Conventions.** $G$ is a compact matrix group with simple nonabelian Lie algebra $\mathfrak g$; $\dim\mathfrak g$ is the real dimension. $C_A$ is the adjoint Casimir of I.1, defined by $-\mathrm{tr}(\mathrm{ad}_x\mathrm{ad}_y)=C_A\langle x,y\rangle$. The constants are
$$\kappa_G=\frac{11\,C_A}{24\pi^2},\qquad b_0=\frac{\kappa_G}{2}=\frac{11\,C_A}{48\pi^2},\qquad d_2=-\frac{\kappa_G}{4}=-\frac{b_0}{2},\qquad A_G=12\Big(\frac{d_2}{b_0}\Big)^2\frac{\dim\mathfrak g}{\pi^4}=\frac{3\dim\mathfrak g}{\pi^4}.$$
$\kappa_G$ is the slope of the coupling schedule $\hat\beta_k=\bar\beta+\kappa_G\log(1/a_k)$ of the renormalization group (RG) at level $k$ (II.2, III.9). Write $g(r)^2=\beta(r)^{-1}$ for the running coupling in free-field normalization.

- Unless other hypotheses are stated, fix the reconstructed theory supplied by a final record $F$ (VIII.1), over a Wilson family $C$, an extraction order $f$ and a limit table $S$.
- $F_d$ is the space of degree-$d$ field labels; $\langle\cdot\rangle_{\xi_*}$ is the one-point function of the selected phase.
- $T=(T_{\mu\nu})$ is the Ward-normalized stress tensor of VI.1.
- $\mathsf F$ is the free Maxwell table (the two constructions listed in §6 coincide by definition): $\dim\mathfrak g$ independent free Maxwell fields, with propagator $\langle A A\rangle=1/(4\pi^2|x|^2)$.
- $\mathcal O\in\mathsf F_4$ is the Wick-ordered label $\tfrac14\sum_{a,\mu,\nu}F^a_{\mu\nu}F^a_{\mu\nu}$, and $T^{\rm free}$ is the traceless free Maxwell stress tensor.
- $G_\Theta(r)=S^{\xi_*}\big(\Theta(-\tfrac r2e_0)\,\Theta(\tfrac r2e_0)\big)$ is the time-axis two-point function of the selected phase.

</details>

<a id="unit-results"></a>

## 1. What this unit proves

The unit defines the centered trace $\Theta$ and proves four results about it:

- the trace anomaly at the level of fields: at scale $r$, $\Theta$ equals $-\kappa_G\beta(r)^{-1}\mathcal O+o(\beta(r)^{-1})$, where $\beta(r)\sim\kappa_G\log(1/r)$ is the running inverse coupling;
- the resulting short-distance law $r^8\log^2(1/r)\,G_\Theta(r)\to 3\dim\mathfrak g/\pi^4$, and the corresponding law for the spectral measure;
- the uniqueness (rank one) of the conserved stress tensor;
- two exclusions of free-field descriptions.

Most of the lines prove the field-level anomaly, Proposition VII.2.4. That proof is a renormalization-group argument: a lattice Ward identity is transported through the block-spin steps, and a one-loop computation fixes the coefficient.

**Proposition VII.2.1 (the centered trace).** Let
$$\Theta:=\sum_\mu T_{\mu\mu}-\Big\langle\sum_\mu T_{\mu\mu}\Big\rangle_{\xi_*}\mathbf 1\in F_4 .$$
(a) $\langle\Theta\rangle_{\xi_*}=0$. $\Theta$ is real, invariant under every $K\in O(4)$ for the rotation action of VI.1, and fixed by the time-reflection adjoint. The same holds for the trace centered in any phase table respecting $S$.

(b) In the reconstructed Wightman theory of the selected phase, the pinned field label $\iota(\Theta)$ is fixed by the conjugation $J$ and by the Lorentz group. Moreover $\langle\Omega,\Phi_\Theta(f)\Omega\rangle=0$ for every Schwartz $f$.

(c) For every Schwartz test $f$, as an identity on the common invariant field domain, $\Phi_\Theta(f)=\Phi_{\sum_\mu T_{\mu\mu}}(f)-\big\langle\sum_\mu T_{\mu\mu}\big\rangle_{\xi_*}\big(\int f\big)\,\mathrm{id}$.

(d) If $r^8\log^2(1/r)\,G_\Theta(r)\to A>0$, then $\iota(\Theta)\neq0$.

*Status:* theorem. It uses the conservation, reality and tensoriality of $T$ and the rotation laws (VI.1), and the reconstruction (V.2–V.3).
*Lean:*

- definitions: [`stressTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17), [`centerIn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L63), [`theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64), [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48);
- (a): [`centerIn_vac`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L66-L67), [`trace_real`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L69-L71), [`trace_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L73-L74), [`trace_adj`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L76-L78);
- (b): [`self_adjoint`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L58-L59), [`pinned_scalar`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L61-L63) with [`scalar_rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L80-L106), [`pinned_centered`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L65-L67) with [`vev_boundary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L16-L41);
- (c): [`center_field`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link/Identity.lean#L158-L161);
- (d): [`nonzero_strength`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Grand.lean#L23-L27);
- public form: the zero-expectation and field-identification clauses of [`TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120), i.e. (T1).

**Proposition VII.2.2 (spectral representation).** There is a unique positive measure $\mu_\Theta$ on $\mathbb R^4$ with the following properties.

- It has tempered growth: there are $C_\mu\ge0$ and $k\in\mathbb N_0$ such that $\mu_\Theta\{p:p_0\le R\}\le C_\mu R^k$ for every $R\ge1$.
- It is supported in the closed forward cone $\bar V_+$ and is Lorentz invariant.
- $e^{-sp_0}\mu_\Theta$ is finite for $s>0$, and $G_\Theta(s)=\int e^{-sp_0}\,d\mu_\Theta(p)$ for $s>0$.
- For every Schwartz $\varphi$, the spectral measure of the translation group in $\Phi_\Theta(\varphi)\Omega$ is $|\hat\varphi|^2\mu_\Theta$.
- For every Schwartz test $\phi$ on $(\mathbb R^4)^2$, the Wightman function $W_2(\Theta,\Theta)(\phi)$ equals $\int\widehat\phi^{\,\rm wave}\,d\mu_\Theta$.

In particular $G_\Theta$ is real, nonnegative and nonincreasing on $(0,\infty)$.

*Status:* theorem: the Källén–Lehmann representation, obtained from the spectral theorem for the translations of the reconstruction (V.2–V.3).
*Lean:* [`TraceSpectrum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94), [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119), [`monotone_axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L13-L21).

**Proposition VII.2.3 (one-loop certificates along every filter).** Let $G$ be simple and let $C$ be the Wilson family issued by run data satisfying the RG construction hypotheses of §2, item 4, including the chosen bounded block-spin run. Let $\mathcal L$ be any filter on $\mathbb N\times\mathbb N$ along which both coordinates tend to infinity. Then there are work items $t=(t_{k,N,p})$, that is, level-5 lattice data at RG level $k$ for the pair $(N,p)$ of spacing and volume indices, with the following property. For all large $k$ and $\mathcal L$-eventually in $(N,p)$, the lattice certificate of §6 holds at $(k,N,p)$. In particular the Ward dart $J=t_{k,N,p}.J$ (Lemma VII.2.d), a lattice stress tensor with its Ward identity at level $k$, satisfies for every color index $q$
$$\big|\mathrm{midPay}_q(J)-(-12\kappa_G)\big|\le\hat\beta_k^{-100}.$$
Here $\mathrm{midPay}_q$ is the real coefficient selector applied to the Haar divergence of the displacement field rooted at the origin; its exact definition is [`midPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L38).

*Status:* theorem. It is used by III.2 to choose the run and as a hypothesis of VII.2.4.
*Lean:* [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35), [`Grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L16), [`WorthB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L30-L40).

**Proposition VII.2.4 (the gallery property: the anomaly at the level of fields).** Assume the following:

- $C$ satisfies the Wilson consistency conditions of II.1, and $G$ is simple;
- the quantitative RG and scaling-sequence hypotheses of §2, items 4 and 9, hold; the auxiliary iteration depths $n_k$ are eventually at least $2$, and a sequence $z_d$ bounds every generator budget of degree at most $d$ and satisfies the degree-$d$ scaling estimates;
- $f$ is an extraction order and $\mathcal L$ is an ultrafilter on $\mathbb N^2$ finer than the fuse filter of $f$;
- the work items $t$ of VII.2.3 satisfy the certificate along $\mathcal L$.

Then the following property holds. For every limit table $S$ along $f$ with ordered Wilson convergence, a Euclidean hierarchy, point limits, the cell hypothesis and corrected rank estimates, and every field algebra on $S$ satisfying the derivative, rotation, conservation and Ward laws, there exist:

- limits $Z$ of the RG data along $\mathcal L$: $Z.\beta(k)=\lim_{\mathcal L}\beta_{N,p}(k)$, the renormalized inverse coupling at level $k$, with $\hat\beta_k/2\le Z.\beta(k)\le2\hat\beta_k$, together with the limits of the label transfers;
- a free Maxwell hierarchy $\mathsf a$ on $\mathsf F$,

such that the following two statements hold.

(i) Let $(r_i,U_i)$ be a scaling sequence of $S$ that approaches $\mathsf a$, with the RG lifts and pointwise lattice limits of VII.6. Write $k_i\to\infty$ for its base levels and $\ell_i$ for the later readout levels selected by these data. Here $r_i\downarrow0$, the $U_i:\mathsf F_d\to F_d$ are complex-linear identifications that eventually preserve the unit, reality and signed coordinate actions in each degree, and their rescaled correlations approach the free hierarchy. Set $w_i:=Z.\beta(\ell_i)$. Then:

- $w_i\to\infty$ and $\log(1/r_i)/w_i\to\kappa_G^{-1}$;
- $r_i^4\,U_i^{-1}\mathring T_{\mu\nu}\to T^{\rm free}_{\mu\nu}$, where $\mathring T$ is $T$ centered in $S$;
- for every phase table $T'$ with a hierarchy respecting $S$, there are real sequences $d_i,e_i$ such that the trace $\Theta_{T'}$ centered in $T'$ satisfies, eventually,
$$r_i^4\,U_i^{-1}\Theta_{T'}=e_i\,\mathbf 1+4d_i\,\mathcal O,\qquad w_i d_i\to d_2,\quad w_ie_i\to0,$$
hence $w_i\,r_i^4U_i^{-1}\Theta_{T'}\to4d_2\,\mathcal O=-\kappa_G\,\mathcal O$.

(ii) Every sequence $s_j>0$ with $s_j\to0$ has a subsequence that is the scale sequence of a scaling sequence satisfying (i).

Thus the rescaled trace has leading term $-\kappa_G g(r)^2\mathcal O$. In canonically normalized field-strength notation, this is the one-loop term $\frac{\beta_{\mathrm{RG}}(g)}{2g}F^a_{\mu\nu}F^a_{\mu\nu}$, with $\beta_{\mathrm{RG}}(g)=-b_0g^3+o(g^3)$. The precise field statement is the sequence limit above.

*Status:* theorem. Its hypotheses are data of the construction run. They are discharged in III.2: in [`plentifulWithPrediction`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/RG05Preconstruction/Bardo.lean), for each $f$ one takes an ultrafilter $\mathcal L$ finer than the fuse filter of $f$, the work items of VII.2.3, and the gallery assembly. The result is recorded as [`Funded.gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/R2I/Campaign/Accepted.lean#L93-L95) (VIII.1).
*Lean:* [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56), [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44), [`Scribe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L52-L59), [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68).

**Proposition VII.2.5 (short-distance law and spectral law).** Let $G$ be simple, and suppose the gallery property holds for $(C,f)$. Then:

(a) $\displaystyle\lim_{r\downarrow0}r^8\log^2(1/r)\,G_\Theta(r)=A_G=\frac{3\dim\mathfrak g}{\pi^4}>0$, as a limit in $\mathbb C$.

(b) As $\rho\to\infty$,
$$\rho^{-8}\log^2\!\rho\int\varphi(p/\rho)\,d\mu_\Theta(p)\to\frac{A_G}{1536\pi}\int_{V_+}(p^2)^2\,\varphi(p)\,d^4p,$$
for continuous compactly supported $\varphi$ and for Schwartz $\varphi$. Here $p^2=p_0^2-|\vec p|^2$; the measure on the right has Laplace transform $A_Gs^{-8}$. More explicitly, put $\phi_\rho(x,y)=\rho^8\phi(\rho x,\rho y)$ and $\widehat\phi^{\,\mathrm{wave}}(p)=\int e^{i p\cdot(y-x)}\phi(x,y)\,d^4x\,d^4y$, in the Fourier convention of VII.2.2. Then $\rho^{-8}\log^2\rho\,W_2(\Theta,\Theta)(\phi_\rho)$ tends to the same cone integral with $\varphi=\widehat\phi^{\,\mathrm{wave}}$.

*Status:* theorem under the gallery property; (b) uses only (a) and VII.2.2. The final short-distance and spectral conclusions are filed in VIII.1.
*Lean:*

- (a): [`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88), [`EuclideanAsymptotic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75), [`award`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41), [`award_pos`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L23-L27);
- (b): [`compact_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L151-L157), [`spectral_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L163-L167), [`relative_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L203-L213), [`joint_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222);
- bundles: [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L16-L30) and [`crest_ready`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L31-L37), [`HighEnergy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L67-L82);
- public form: the amplitude identity and [`publicTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L35-L44), i.e. (T2), (T3).

**Proposition VII.2.6 (the conserved stress tensor is unique).** Let $\mathcal K(S)$ be the real space of symmetric tensors $(B_{\mu\nu})$ in $F_4$ that are real, centered with respect to $S$, and covariant under signed coordinate permutations. For a derivative plan satisfying the derivative laws and the orientation condition, let $\mathrm{div}:\mathcal K(S)\to\mathcal V(S)$ be the current divergence, where $\mathcal V(S)$ consists of real degree-$5$ vectors covariant under signed coordinate permutations.

(a) (free) For $G$ simple, the free Maxwell hierarchy on $\mathsf F$ and a derivative plan satisfying the derivative laws and the orientation condition: $\mathrm{div}$ is onto and $\dim\ker\mathrm{div}=1$.

(b) (interacting) In the setting of VII.2.4(i), $\dim\ker\mathrm{div}=1$ on $\mathcal K(S)$; moreover $\dim\mathcal K(S)=3$ and the target of $\mathrm{div}$ is two-dimensional.

*Status:* theorem. (b) is the uniqueness statement of the assessment, §7.1. It is used in VII.2.4 to identify $T$ with the tensor constructed from the RG.
*Lean:* [`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165) (from [`free_closure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L83-L113)), [`ranking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L41-L51), the rank clause of [`ChoiceK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L53-L55).

**Proposition VII.2.7 (no finite Wick profile).** Suppose $r^8\log^2(1/r)\,G_\Theta(r)\to A$ with $A>0$.

(a) Let $W(r)=\sum_\alpha c_\alpha\prod_\beta K_{m_{\alpha\beta},q_{\alpha\beta},h_{\alpha\beta}}(r)$ be any finite combination, with $c_\alpha\in\mathbb C$, where
$$K_{m,q,h}(r)=\int_{\mathbb R^3}\frac{E_m(p)^q\,h(p)}{2E_m(p)}\,e^{-rE_m(p)}\,dp,\qquad E_m=\sqrt{m^2+|p|^2},$$
with $m\ge0$, $q\in\mathbb N_0$, and $h:\mathbb R^3\to\mathbb R$ continuous and positively homogeneous of degree $j\in\mathbb N_0$. Then for every $\delta>0$ there is $r\in(0,\delta)$ with $G_\Theta(r)\ne W(r)$.

(b) No such collection reproduces the Wightman two-point function of $\Theta$ through its mass-shell expression on all product tests $\varphi\otimes\psi$ whose wave transform has compact support. The same holds for the Wick contraction of two finite polynomial fields from any palette of free-field modes.

*Status:* theorem. (a) uses only the law; (b) also uses VII.2.2. The internal class is the public class of Definition 1.15 field by field ([`profile_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/TraceBridge.lean#L19-L23)). With VII.2.5 this gives (T4). The proof is also described in VII.3.
*Lean:* [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80), [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105), [`wick_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Palette.lean#L130-L133), [`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L23-L29), [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L90-L92).

**Proposition VII.2.8 (no relatively local realization in free-photon Fock space).** Suppose the law of VII.2.7 holds with $A>0$. For every $m\in\mathbb N_0$, let $\mathcal F_m$ be the Fock space of $m$ species of free photons, realized by symmetric transverse ("physical") wave functions of on-shell momenta. Let $U:\mathcal H\to\mathcal F_m$ be a complex-linear isometry from the reconstructed space of the selected phase with:

- $U\Omega=\Omega_{\mathcal F}$;
- image in physical waves;
- $U$ intertwines the translations with multiplication by $e^{ib\cdot p_{\rm tot}}$.

Then there are a compactly supported smooth scalar test $f$ and compactly supported smooth tests $h_c:\mathbb R^4\to\mathbb R^3$, $1\le c\le m$, each causally separated from $f$, such that
$$\langle W(-h)\Omega_{\mathcal F},\,U\Phi_\Theta(f)\Omega\rangle\neq\langle U\Phi_\Theta(\bar f)\Omega,\,W(h)\Omega_{\mathcal F}\rangle ,$$
where $W(h)\Omega_{\mathcal F}$ is the coherent state defined in §6. Equality for all such pairs would hold if $\Phi_\Theta(f)$ commuted with the free Weyl operators localized spacelike to $f$.

The same conclusion holds in two variants:

- with any bounded self-adjoint operator fixing $U\mathcal H$ applied to both coherent vectors;
- with an average over a probability family of maps that preserve inner products of physical waves and fix $U\mathcal H$; for every $r>0$, this variant has tests supported in open sets $Q,W$ with $\bar Q\subset B(0,r)$ and $\bar Q-\bar W$ spacelike, with $f$ supported in $Q$ and every component of $h$ in $W$.

*Status:* theorem. These are the free-photon and averaged free-photon clauses of the trace-exclusion specification; the final conclusions are filed in VIII.1.
*Lean:* [`Comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L23-L27), [`Nfl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L32-L35), [`excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L46-L49), [`saturate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44), [`excludes_projected`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L51-L70), [`smell`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Occult.lean#L12-L21), [`regions_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Regions.lean#L36-L38).

**Proposition VII.2.9 (position-space coefficient; supplementary).** For every simple $G$, every block-spin kernel parameter $b>0$ and every prescribed extraction order $p$, there are a consistent Wilson family $C$ with that kernel parameter and a refinement $f$ of $p$ for which final records exist and the following holds for every final record $F$ over $(C,f)$.

There are a free hierarchy, coupling limits $Z$ and an ultrafilter such that admissible degree-$4$ position-space frames exist. For every such pair of frames $P(s),P'(s):\mathsf F_4\to F_4$, with a window cutoff $\chi$, there are real functions $\kappa,d,e$ such that, for all sufficiently small $s>0$,
$$P'(s)^{-1}(s^4T_{\mu\nu})=\kappa(s)T^{\rm free}_{\mu\nu}+d(s)\delta_{\mu\nu}\mathcal O+e(s)\delta_{\mu\nu}\mathbf1,\qquad \kappa(s)\to1.$$
Admissibility means that $P$ has the position-space Gram normalization, branch and angular alignment, and convergence of all prescribed finite off-diagonal jets; $P'$ is obtained from $P$ by positive rescaling of the centered scalar sector and its centered complement, fixing the unit, with the two shell tests normalized to their free values. These conditions are specified by the frame predicate linked below.

For every coupling function $g$ that is eventually positive and satisfies $\log(1/s)g(s)^2\to\kappa_G^{-1}$,
$$\frac{d(s)}{g(s)^2}\to d_2.$$
The coupling $g_X$ defined by the position-space tests satisfies $g_X/g_W\to1$, where $g_W$ is the Wilson coupling from $Z$, and obeys the stronger estimate
$$d(s)-d_2g_X(s)^2=O(g_X(s)^4).$$
Here the free scalar is exactly $\mathcal O$. Centering gives the exact identity $s^4\Theta=4d(s)\,\mathrm{center}_{\xi_*}(P'(s)\mathcal O)$ for sufficiently small $s>0$.

*Proof sketch.* Subsequence compactness gives position-space frames at every sufficiently small scale. The two positive sector rescalings tend to $1$ and impose the shell normalizations. Put $B_0\ne0$ for the common normalized shell value and $Q(s)$ for the remaining shell readout, which has a finite limit. Conservation and the Ward identity give $d=d_2g_X^2\kappa$ and $\kappa-1=-dQ/B_0$. Since $d/g_X^2\to d_2$, these identities imply $\kappa-1=O(g_X^2)$ and then $d-d_2g_X^2=O(g_X^4)$. The Wilson comparison is established before the definition of $g_X$ by computing the same divergence diagnostic in Wilson normalization.

*Status:* theorem for the family and refinement supplied by the supplementary construction.
*Lean:* [`meterQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Noon.lean#L50-L83) *(proof read; frame-existence inputs statement only)*; [`main`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L155-L161), [`XScheme`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L29-L34), [`ShellNorm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial/Shade.lean#L20-L22); the stress clause of [`Result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120), [`FieldComparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L37-L64), [`odd_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas/Crash.lean#L33-L36), [`Measures`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith/Wall.lean#L13-L14).

<a id="unit-inputs"></a>

## 2. What it uses

**Inputs from other units.**

1. *Gauge data* (I.1): the Casimir $C_A>0$ and $\kappa_G>0$ ([`slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184)); simplicity; a nontrivial color space.
2. *Coupling schedule* (II.2, III.9): $\hat\beta_k=\bar\beta+\kappa_G\log(1/a_k)$, with $\hat\beta_k\to\infty$ ([`hrate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lyre.lean#L8)). The actual couplings follow the schedule: $Z.\beta(k)/\hat\beta_k\to1$ ([`gamut`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L89-L95), [`Barry`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Bang.lean#L23-L37)).
3. *The one-loop integral* (III.7): with infrared mass $\mu\in(0,1]$, the one-loop momentum integral has coefficient $-\kappa_G\log(1/\mu)$ up to a bounded error ([`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408)).
4. *The RG step* (III.4–III.15):
   - the stationary background, criticality and fourth-order classical matching of actions (III.6–III.7): [`encamp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/Joint/Gauge.lean#L219-L220);
   - cluster and polymer bounds (III.5, III.8) and determinant budgets (III.4, III.11);
   - the bounded block-spin run, eventual level estimates, classical and determinant bounds, support conditions, and small-field and large-field estimates. The exact run predicates are listed in §6.

   These hypotheses are discharged when the run is chosen in III.2.

5. *Infinite volume* (IV.1): the extraction order and its fuse filter, point limits, [`CellHyp`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Packing.lean#L68-L79), and the chessboard root tests on centered chambers.
6. *Phases and reconstruction* (V.1–V.3): the selected phase; the analytic continuation and its boundary values; the spectral measure of the translations; the Lorentz action and the conjugation $J$. All of this is packaged in [`Final`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L64-L73).
7. *Field algebra and stress tensor* (VI.1): the derivative plan, the rotation laws (including that rotations and boosts generate the Lorentz group), and the stress tensor with its conservation, tensoriality and Ward identities ([`Locals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Spec/Closed.lean#L34-L43)).
8. *Free Maxwell model* (VI.2, VII.1, VII.3):
   - the free table $\mathsf F$ and its Wick calculus;
   - the free stress tensors ([`materialB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L50), [`Litpay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Auth.lean#L30-L34));
   - the normalization $\langle\mathcal O(x)\mathcal O(y)\rangle=3\dim\mathfrak g/(\pi^4|x-y|^8)$ ([`wick_norm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Constant.lean#L38-L52), proved by an explicit curl computation);
   - convergence of rescaled two-point functions at lattice-rounded points ([`rainbow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L51-L63)).
9. *Scaling sequences* (VII.6): scaling sequences approaching the free hierarchy ([`StarPath`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L19-L23), [`Gondola`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L18-L21)) exist along a subsequence of any positive null sequence ([`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31), [`gravity`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Gondola.lean#L22-L28)).

**Standard mathematics.**

- The trace-anomaly mechanism (Adler–Collins–Duncan, Phys. Rev. D 15 (1977); Collins–Duncan–Joglekar, Phys. Rev. D 16 (1977); Nielsen, Nucl. Phys. B 120 (1977)) and the background-field one-loop beta function ('t Hooft 1973; Abbott, Nucl. Phys. B 185 (1981)).
- The Källén–Lehmann representation and the spectral theorem for the translation group (Reed–Simon II, §IX.8; Glimm–Jaffe, ch. 19).
- The identity theorem for holomorphic functions in tube domains.
- Laplace transforms of positive measures, continuity theorems and Tauberian monotonicity (Feller II, §XIII.1–5; Widder, *The Laplace Transform*).
- Fock space, Weyl operators and coherent states (Reed–Simon II, §X.7; Bratteli–Robinson II, §5.2).
- Simultaneous eigenvector decomposition for commuting operators annihilated by polynomials with distinct real roots.
- Lattice difference operators and finite-difference stencils of order 8.

**Imported constants and assumptions.** $\kappa_G$, $b_0$ and $d_2$ are defined from $C_A$ ([`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L60)), so $\kappa_G=2b_0$ and $d_2=-b_0/2$ are identities by definition ([`beta_eq`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L61), [`force_b`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L63)). The value $\kappa_G$ enters the proofs in two independent places:

- as the slope of the coupling schedule (input 2);
- as the logarithmic coefficient of the one-loop integral (input 3).

The amplitude $3\dim\mathfrak g/\pi^4$ depends on these two being equal (§5). The gallery property is a hypothesis of VII.2.5; it is discharged for the constructed family in III.2, so the trace data must be carried by the family chosen in the ultraviolet construction.

<a id="unit-strategy"></a>

## 3. Strategy

*Physical picture and the approach taken.* Classically the Yang–Mills stress tensor is traceless. The running coupling produces a nonzero trace after renormalization. It characterizes $T$ by two properties: uniqueness (the conserved admissible tensors form a line, VII.2.6) and the Ward normalization. At each scale $r_i$ it builds three lattice tensors $T_i^{(B)}=\mathrm{tub}_i(B)$ from the reference tensors $B=L,\Delta,\Xi$: the free Maxwell stress $L$, the pure-trace tensor $\Delta_{\mu\nu}=\delta_{\mu\nu}\mathcal O$, and a third traceless tensor $\Xi$.

The candidate is $X_i=w_iT_i^{(L)}+c_{i,0}T_i^{(\Xi)}+c_{i,1}T_i^{(\Delta)}$, where $w_i\sim\beta(r_i)$. The suitably rescaled divergence of the canonical part $w_iT_i^{(L)}$, tested by $\rho$, tends to $-\kappa_G$. Conservation forces $c_{i,1}\to-\kappa_G/4=d_2$. Uniqueness makes $X_i$ a multiple of the centered stress tensor; the Ward normalization makes that multiple tend to $1$. The weighted trace therefore satisfies $w_i\,\mathrm{tr}(r_i^4U_i^{-1}X_i)\to4d_2\mathcal O$. Combining this with $w_i\sim\kappa_G\log(1/r_i)$ gives the leading rescaled trace $-\mathcal O/\log(1/r_i)$.

*The one-loop input.* The value $-\kappa_G$ comes from a lattice Ward identity at a single RG level, a "dart". A dart is a lattice stress tensor whose divergence equals the first variation of the action along a displacement field, through fourth order in the field. Darts at a given level are obtained from finer levels by block-spin transport. The transport preserves the Ward identity, because the first variations of the fine and coarse effective actions agree to fourth order; errors contract by $\frac12$ per step. The level-5 "payoff" of the dart is then compared with the infrared-regulated one-loop effective action,
$$\tfrac12\log\det(\text{gauge Hessian}+\mu^2)-\log\det(\text{ghost operator}+\mu^2).$$
Its normalized quadratic momentum coefficient has the logarithmic term $-\kappa_G\log(1/\mu)$ per plane, $12$ ordered planes in total. A mean-value argument in $\log\mu$ turns this pole into the limit $-12\kappa_G$ for the payoff. This is Balaban's renormalization-group framework (III) together with a background-field one-loop computation; what is specific here is that the anomaly coefficient is extracted from the Ward identity carried along the RG flow.

*From fields to the law, and the exclusions.* By free-field convergence (VII.1), the two-point function of $w_ir_i^4U_i^{-1}\Theta$ converges to $(4d_2)^2\cdot3\dim\mathfrak g/(\pi^4|x|^8)$, and $\log(1/r_i)/w_i\to1/\kappa_G$. Rotation and translation invariance move the points to the time axis. Monotonicity of $G_\Theta$ in the separation removes the lattice rounding of points. Finally, every positive null sequence has a good subsequence, which upgrades the subsequential limit to $r\downarrow0$. A Tauberian argument transfers the law to the spectral measure. The exclusions use only the law and $\mu_\Theta$:

- every finite Wick profile expands in integer powers and nonnegative powers of logarithms, which are incompatible with $r^{-8}\log^{-2}(1/r)$;
- a relatively local Fock realization forces each $n$-photon amplitude to split into eigencomponents of the commuting momentum-doubling maps, with total scaling degree at most $3$; this bounds $\mu_\Theta\{p_0\le R\}$ by $R^7$, against $R^8/\log^2R$.

<a id="unit-steps"></a>

## 4. Steps

### 4.1 The centered trace and its spectral measure

**Lemma VII.2.a (centering and symmetry).** The map $v\mapsto\langle v\rangle$ is linear with $\langle\mathbf 1\rangle=1$, so $\langle\Theta\rangle=0$. Reality and $O(4)$ invariance follow from those of $T$: contracting the tensorial law with $KK^{\mathsf T}=1$ gives $\sum_aK_{ia}K_{ja}=\delta_{ij}$. Time-reflection invariance follows from reality and rotation invariance. For Lorentz invariance of $\iota(\Theta)$, the Lorentz group is generated by spatial rotations and axis boosts. Along a boost, $t\mapsto\mathrm{boost}(t)\iota(\Theta)$ solves the linear ODE $\dot y=-iX_{0a}y$, and the generator annihilates $\iota(\Theta)$ because $\Theta$ is rotation invariant. Uniqueness of solutions of the ODE gives invariance.
*Lean:* [`trace_turn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L73-L74), [`scalar_rail`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L80-L106).

**Lemma VII.2.b (zero Wightman vacuum expectation).** For a centered label, the one-point function continued to complex times is holomorphic and vanishes on the Euclidean slice, so it vanishes identically by the identity theorem. Its boundary value, the Wightman one-point function, is therefore $0$.
*Lean:* [`vev_boundary`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L16-L41).

**Lemma VII.2.c (spectral measure).** The boundary realization (V.2) assigns a positive spectral measure to the label $\iota(\Theta)$. Smearing the field with $\varphi$ gives a Hilbert-space vector whose translation spectral measure is $|\hat\varphi|^2\mu_\Theta$.

- The spectrum condition gives support in $\bar V_+$; the boundary estimates give tempered growth and the polynomial energy budget.
- Lorentz invariance comes from Lemma VII.2.a.
- The Laplace formula comes from continuing $G_\Theta(2s)$ to the boundary pairing at imaginary time ([`continuation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L69-L78)).
- Uniqueness holds because $\mu$ is determined by the integrals $\int|\hat\varphi|^2d\mu$.

Monotonicity holds because $e^{-sp_0}$ decreases in $s$ on $\bar V_+$.
*Lean:* [`traceSpectrum_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L99-L119), [`monotone_axis`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L13-L21). *(proof read at the top level; the boundary spectral lemmas are inputs from V.2)*

### 4.2 Ward darts and their transport through the RG

**Lemma VII.2.d (sound darts and the block-spin step).** A dart on a torus of side $f$ consists of site-indexed functions and vector fields: a tensor $J_{ab}$, a displacement field $Y_a$ on link configurations, scalar entries $E_a,Q_a$, and scalar entries $\mathrm{tw}_{abi}$. It is *sound* if:

- the scalar entries are analytic and gauge invariant near the identity configuration, with zero constant and linear terms; the displacement fields are analytic and gauge covariant and vanish at the identity;
- $\sum_aJ_{aa}=\sum_a\partial_aQ_a$ and $J_{ab}-J_{ba}=\sum_i\partial_i\mathrm{tw}_{abi}$, with lattice differences $\partial$;
- the Ward relation holds: $\sum_a\partial_aJ_{ab}-E_b$ agrees through fourth order at zero field with the first variation of the action in the direction $Y_b$.

The block-spin map takes a dart at the fine level to one at the coarse level, by block averaging of inherited jets scaled by $L^k$ with $k=3,4,5$. It preserves soundness, under the criticality, branch, bound, positive price-gap and classical-matching hypotheses of III.6–III.7. The mechanism is fourth-order matching of first variations: along an analytic coarse direction $Y$ with $Y(0)=0$, the derivative of the coarse action at the stationary background in the direction $Y$ agrees through fourth order with the derivative of the fine action in the lifted direction. This follows by the chain rule through the stationary background map.
*Lean:* [`Dart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L22-L27), [`Dart.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L82-L90), [`Dart.down`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L75-L80), [`Sound.balance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L110-L141); [`aroma_transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Wicker.lean#L37-L46), [`recoup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Relay.lean#L143-L160).

**Lemma VII.2.e (darts with prescribed precision).** Under the bounded-run and eventual level hypotheses of VII.2.3, for all large levels $k$, every $\varepsilon>0$ and every filter along which $N\to\infty$ and the lattice side at each fixed level tends to infinity, the following holds eventually. There is a sound dart at level $k$ for the actual configuration with these properties:

- its jets obey the size bounds;
- its tested second derivatives are within $\varepsilon$ of the tree-level values: total differential weight at most $4$ for $J$ and at most $5$ for $Y$; the derivatives of $E$ of orders $2$–$4$ have size at most $\varepsilon$.

*Proof sketch.* Choose $i$ with $2^{-(i+1)}C(\hat\beta_k)<\varepsilon$, where $C(\hat\beta_k)$ bounds the finitely many relevant derivative orders. Darts at level $k$ are obtained by transporting darts from level $k+i+1$ through $i+1$ steps. Each step multiplies the deviation from tree level by at most $\frac12$. The resulting geometric bound is converted into the required estimates.
*Lean:* [`treasury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L46-L64), [`cash_viz`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L38-L40); [`through`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Flo.lean#L41-L46), [`pay_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Native.lean#L81-L88).

### 4.3 The one-loop slope

**Lemma VII.2.f (logarithmic pole).** Let $\Gamma_\mu(U)=\frac12\log\det(\mathcal H(U)+MM^{\mathsf T}+\mu^2)-\log\det(\mathcal G(U)+\mu^2)$ be the infrared-regulated one-loop effective action of a single RG level. Here $\mathcal H$ is the Hessian of the action, $MM^{\mathsf T}$ the gauge-fixing term, and $\mathcal G$ the ghost operator. Let $R_\mu=\sum_{d\ne i}y_{di}(\Gamma_\mu)$, where $y_{di}$ is the quadratic color-$q$, polarization-$i$ momentum test in direction $d$, divided by the number of sites. It applies the centered second difference to the quadratic field derivative at the opposite momenta $\pm h e_d$, with the factor $h^{-2}$, where $h=2\pi/f$ for torus side $f$. For a sequence of lattices of side $\to\infty$ satisfying the uniform covariance, resolvent and action bounds of the one-loop comparison (the predicates in §6), there is $C'$ such that for every $\mu\in(0,1]$, eventually,
$$\big|\mathrm{Re}\,R_\mu+12\,\kappa_G\log(1/\mu)\big|\le C'.$$
*Proof sketch.* By symmetry all $12$ planes contribute equally. The $(0,1)$ coefficient converges, along the sequence, to a momentum integral whose $\log(1/\mu)$ coefficient is $-\kappa_G$ up to a bounded error ([`absoluteGeode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Next/STATIONARY/OneLoop/MomentumIntegral.lean#L346-L408), III.7).
*Lean:* [`slopeL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Samen.lean#L23-L42), [`marke`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L62), [`ridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L9) *(proof read; [`effect`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Skis.lean#L12-L24), [`banana`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Drifts.lean#L32-L35), [`payday`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L32-L47), [`jury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Gondola.lean#L31-L35) statement only; the momentum selector is defined in §6)*.

**Lemma VII.2.g (from the pole to a value: mean-value extraction).** The function $R$ satisfies $\mu\,\partial_\mu R_\mu=-\mathrm{seaD}_\mu$, where $\mathrm{seaD}_\mu=\mu^2\sum_{d\ne i}u_{di}(\mu)$ and $u_{di}$ collects the same normalized momentum tests of $-\mathrm{tr}(\mathcal H+MM^{\mathsf T}+\mu^2)^{-1}+2\,\mathrm{tr}(\mathcal G+\mu^2)^{-1}$ (from $\partial_\mu\log\det(F+\mu^2)=2\mu\,\mathrm{tr}(F+\mu^2)^{-1}$). By Lemma VII.2.f, $x\mapsto\mathrm{Re}\,R_{e^x}-12\kappa_Gx$ is bounded by $C'$ eventually for each fixed $x\le0$. For every $a<b\le0$, the mean value theorem on $[a,b]$ then gives $\mu_w\in[e^a,e^b]$ with $|\mathrm{Re}\,\mathrm{seaD}_{\mu_w}-(-12\kappa_G)|\le 2C'/(b-a)$ eventually.
*Lean:* [`ridge_deriv`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L47-L60), [`coastMark`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L13-L30).

**Lemma VII.2.h (the payoff converges to $-12\kappa_G$).** Under the operator bounds of VII.2.f, take translation-covariant sound darts $B_w$ on sides $g(w)\to\infty$, with a fixed positive decay parameter, uniform jet bounds and precision errors $0\le\varepsilon_w\le1$ tending to $0$. Let $X_w$ be the summed normalized momentum test of the Haar divergence of their rooted displacement fields. Then $\mathrm{Re}\,X_w\to-12\kappa_G$; the difference between the finite-momentum test and the Taylor selector, including its quadratic correction, tends to $0$, so $\mathrm{midPay}_q(B_w)\to-12\kappa_G$.
*Proof sketch.* For every fixed $0<b'\le c\le1$ and every choice $\mu_w\in[b',c]$, the Ward relation gives $X_w=\mathrm{seaD}_{\mu_w}+\mu_w^2K_w(\mu_w)+o(1)$ with $|\mu_w^2K_w(\mu_w)|\le B'\mu_w$ eventually, where $B'$ is independent of the fixed regulator interval. Here $K_w$ is a trace of resolvents paired with the linearized displacement and ghost terms. The regulated Ward identity yields the decomposition; its other action-variation and precision terms vanish in the period limit. Choose $u\le0$ with $B'e^u\le\varepsilon/4$, then $C$ with $2C'/C\le\varepsilon/4$, and apply Lemma VII.2.g on $[u-C,u]$.
*Lean:* [`awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53), [`midAwake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L40-L52); [`saga`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pious.lean#L97-L127), [`crest_v`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Peak.lean#L15-L29) *(proof read; their analytic inputs statement only)*; [`fawn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pine.lean#L11-L39).

**Lemma VII.2.i (uniform certificates; proof of VII.2.3).**

1. At a fixed level $k$, fix a positive decay parameter and a uniform jet bound. For every $\delta>0$ there are a precision tolerance $\eta>0$ and a volume threshold $T$ such that every translation-covariant dart satisfying those bounds with precision $\eta$, with $N>k$ and $p\ge T$, has $|\mathrm{midPay}-(-12\kappa_G)|\le\delta$. The proof is by contradiction: a sequence of counterexamples with $p\to\infty$ contradicts Lemma VII.2.h.
2. Average the darts of Lemma VII.2.e over lattice translations. The bounds are preserved, so this gives darts with payoff accuracy $\varepsilon$ for all large $k$, eventually along every filter for which $N,p\to\infty$.
3. With $\varepsilon=\hat\beta_k^{-100}$ and the remaining stage, support, cluster and coefficient bounds, the work items are chosen by choice along $\mathcal L$.

*Lean:* [`wire_mid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L13-L28), [`dewWt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L31-L44), [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35). *(proof read; stage and certificate-supply inputs statement only)*

### 4.4 From the slope to the coefficient of the trace

**Notation.** Fix the run data and a scaling sequence as in VII.2.4(i). All statements in §§4.4–4.5 have these hypotheses. Write $\hat\beta_i=\hat\beta_{\ell_i}$, $E_i=\exp(\frac15(\log\log\hat\beta_i)^2)$ and $R_i=\exp(\frac16(\log\log\hat\beta_i)^2)$.

- *Reference tensors.* The centered, real degree-$4$ free tensors covariant under signed coordinate permutations form a family $\mathrm{st}(w)$, $w\in\mathbb R^3$, with $\mathrm{tr}\,\mathrm{st}(w)=4(w_0+4w_1)\mathcal O$ ([`mechanical_trace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L67-L69)). The three reference tensors are $L=\mathrm{st}(-(1,-\frac14,1))=T^{\rm free}$, $\Delta=\mathrm{st}(0,\frac14,0)=\delta_{\mu\nu}\mathcal O$ and $\Xi=\mathrm{st}(0,0,1)$.
- *The functional $\rho$.* On raw degree-$5$ divergence labels, before quotienting by the Maxwell equations, $\rho(\nabla_{\rm raw}\mathrm{st}(w))=-4(w_0+4w_1)$ ([`rho_vector`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L81-L84)). It annihilates the Maxwell equation direction. Below, $\rho(B)$ abbreviates $\rho(\nabla_{\rm raw}B)$, so $\rho(L)=\rho(\Xi)=0$ and $\rho(\Delta)=-4$. Explicitly, $\Xi_{\mu\mu}=0$ and $\Xi_{\mu\nu}=\sum_{a,c}:F^c_{\mu a}F^c_{\nu a}:$ for $\mu\ne\nu$.
- *Lattice-built tensors.* $\mathrm{tub}_i(B)\in\mathcal K(S)$, for $B\in\{L,\Delta,\Xi\}$, are built from the work items at the readout level $\ell_i$.
- *Rescaled divergence.* Eventually, $K_i:=w_ir_i^5\,U_i^{-1}\circ\mathrm{div}$ ([`Optics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L40-L44)).
- *Rescaling of tensors.* $\mathrm{Ph}_i:=w_ir_i^4U_i^{-1}$.

**Lemma VII.2.j (the divergence vector of the dart).** Let $\Sigma_k$ be the level-5 coefficient vector of the divergence of the dart's stress tensor at level $k$, normalized by the coupling limits and taken along $\mathcal L$. Then eventually $\|\Sigma_k\|\le c\,e^{\frac16(\log\log\hat\beta_k)^2}$, which grows more slowly than every positive power of $\hat\beta_k$, and $\rho(\Sigma_k)\to-\kappa_G$.
*Proof sketch.* At each $(k,N,p)$ the revised readout decomposes into the payoff term $\mathrm{midPay}/12$ plus terms bounded by a fixed multiple of $e^{-(\log\log\hat\beta_k)^2}$ and $\hat\beta_k^{-30}$. Passing to the ultrafilter limit adds a coefficient-transfer error $O(e^{-\frac14(\log\log\hat\beta_k)^2})$. The certificate of VII.2.3 then gives $|\mathrm{midPay}/12+\kappa_G|\le\hat\beta_k^{-100}/12$.
For the three reference tensors, the analogous raw vectors converge to $\nabla_{\rm raw}L$, $\nabla_{\rm raw}\Delta$ and $\nabla_{\rm raw}\Xi$, at rate $o(e^{-\frac15(\log\log\hat\beta)^2})$ after applying $\rho$.
*Lean:* [`penumbra`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Pony.lean#L30-L65), [`brass`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Beans.lean#L16-L42); [`tiara`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L33-L53), [`diadem`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Limit.lean#L54-L62), [`article`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L32-L46).

**Lemma VII.2.k (divergences at scale $r_i$).** There are linear maps $s_i$ from the fixed raw coefficient space to $\mathcal V(\mathsf F)$, converging to the free projection $s$, and functionals $\mu_i$ on $\mathcal V(\mathsf F)$ with $\|\mu_i\|\le c$ eventually, such that $E_i\|\mu_i\circ s_i-\rho\|\to0$ in operator norm, where $\rho$ is expressed in the lattice coefficient coordinates. With these:

- $w_iK_i(\mathrm{tub}_iL)-s_i(\Sigma_{\ell_i})\to0$, hence $\mu_i\big(w_iK_i(\mathrm{tub}_iL)\big)\to-\kappa_G$;
- $\|w_iK_i(\mathrm{tub}_iL)\|\le CR_i$ eventually;
- for $B=\Delta,\Xi$: $K_i(\mathrm{tub}_iB)\to\mathrm{div}^{\rm free}B$ and $E_i\big(\mu_i(K_i\mathrm{tub}_iB)-\rho(B)\big)\to0$.

*Inputs.*

- The lattice-to-continuum remainders are $o(\hat\beta_i^{-p})$ for every $p\in\mathbb N_0$. This rests on the stage estimates and on the cluster bounds, which are the RG estimates of III.5 and III.8 run once more on the trace observables.
- Lattice observables are identified with continuum labels by two tools. Pullback along centered chambers: if a lattice observable differs from the local representative of $v_k$ by a chamber-interior term with fast chessboard root, then its correlations with displaced spectators agree with those of the limit of $v_k$ up to a fast error. Eighth-order difference stencils: the lattice stencil of an observable converges to the continuum derivative of its limit.

*Lean:* [`pairingD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L45-L55), [`sizeQ'`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L57-L61), [`transferX`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L63-L77), [`beater`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L61-L68), [`mere`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L75-L88). The following are statement only: [`Prosper`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L27-L30), [`rungs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L62-L68), [`legacy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L59-L61), [`hullage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Phantom.lean#L37-L50), [`gapC`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L57-L59), [`crestship`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Ell.lean#L59-L82), [`touring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Toil.lean#L29-L56), [`trod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Heli.lean#L39-L51), [`small_means`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Terrain.lean#L26-L51), [`expire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Mortal.lean#L37-L43), [`lay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Common.lean#L17-L54), [`welfare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Spindle.lean#L46-L51), [`garnet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Folly.lean#L38-L61), [`quaff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Votive.lean#L42-L67), [`from_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Book.lean#L33-L76), [`axis_advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Derivative.lean#L80-L115), [`differentiation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Bleed.lean#L81-L144).

**Lemma VII.2.l (the coefficients of the improvement terms).** There are $c_i\in\mathbb R^2$ and $C\ge0$ such that, eventually:

- $\|c_i\|\le C\,R_i$;
- $f_i:c\mapsto c_0K_i(\mathrm{tub}_i\Xi)+c_1K_i(\mathrm{tub}_i\Delta)$ is bijective;
- $w_iK_i(\mathrm{tub}_iL)+f_i(c_i)=0$.

Moreover $c_{i,1}\to-\kappa_G/4=d_2$.
*Proof sketch.*

1. The maps $f_i$ converge to $c\mapsto c_0\,\mathrm{div}\,\Xi+c_1\,\mathrm{div}\,\Delta$, which is bijective for simple $G$. Hence $f_i$ is eventually bijective with uniformly bounded inverse.
2. Set $c_i=-f_i^{-1}\big(w_iK_i(\mathrm{tub}_iL)\big)$.
3. Apply $\mu_i$ to the balance relation and use Lemma VII.2.k:
$$4c_{i,1}=\mu_i\big(w_iK_i\mathrm{tub}_iL\big)+c_{i,0}\,\mu_i(K_i\mathrm{tub}_i\Xi)+c_{i,1}\big(\mu_i(K_i\mathrm{tub}_i\Delta)+4\big)\to-\kappa_G .$$
The last two terms tend to $0$ because $|c_{i,j}|\le CR_i$ and $R_i/E_i\to0$.

*Lean:* [`formulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L53-L78), [`wend`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L45-L58), [`quill`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Limits.lean#L68-L80).

**Lemma VII.2.m (the conserved candidate).** Let $X_i:=w_i\,\mathrm{tub}_iL+c_{i,0}\,\mathrm{tub}_i\Xi+c_{i,1}\,\mathrm{tub}_i\Delta$. Then:

- $X_i$ is conserved eventually, since $K_iX_i=0$ and $K_i$ vanishes exactly on conserved tensors;
- $r_i^4U_i^{-1}X_i\to T^{\rm free}$, because $\mathrm{Ph}_i\,\mathrm{tub}_iL\to T^{\rm free}$ and $c_i/w_i\to0$;
- $w_i\,\mathrm{tr}\big(r_i^4U_i^{-1}X_i\big)\to4d_2\,\mathcal O$, because for $B\in\{L,\Xi\}$ the trace of $\mathrm{Ph}_i\,\mathrm{tub}_iB$ is $o(\hat\beta^{-p})$ for every $p$, while $\mathrm{tr}\,\mathrm{Ph}_i\,\mathrm{tub}_i\Delta\to4\mathcal O$.

*Lean:* [`serene`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L64-L65), [`yields`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L69-L80), [`blossoms`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L82-L95), [`sum_delta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L51-L53); [`aprilA`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L51-L55); [`nearing_h`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L65-L71), [`muteP`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L73-L77) *(proof read at the top; inputs statement only)*.

**Lemma VII.2.n (identification with $T$; proof of VII.2.6).**

- *Rank.* The free side gives $\mathrm{div}$ onto with one-dimensional kernel; this is reduced by linear algebra to the free closure map. Eventually $K_i\circ(c\mapsto c_0\mathrm{tub}_i\Xi+c_1\mathrm{tub}_i\Delta)$ is onto the two-dimensional target, and $\ker K_i=\ker\mathrm{div}$. Since $\dim\mathcal K(S)=\dim\mathcal K(\mathsf F)$, a dimension count gives $\dim\ker\mathrm{div}=1$ on $\mathcal K(S)$.
- *Identification.* Hence eventually $X_i=v_i\mathring T$ for real $v_i$.
- *Normalization.* Choose a free observer $o$ and a label $u$ with $o(\partial_b u)\ne0$. The rescaled Ward flux $r_i\,\mathrm{flux}_b(\mathring T)$ tested against $U_iu$ converges to $o(\partial_bu)$, and the same flux for $X_i$ converges to the free value. Comparing the two limits gives $v_i\to1$.
- *Conclusion.* $r_i^4U_i^{-1}\mathring T\to T^{\rm free}$ and $w_i\,\mathrm{tr}(r_i^4U_i^{-1}\mathring T)\to4d_2\mathcal O$.

*Lean:* [`ranking`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L41-L51), [`reveals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L58-L65), [`year_spec`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/North.lean#L28-L65), [`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165); [`free_closure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L83-L113); the Ward-flux comparison inputs *(statement only; VI.1)*.

**Lemma VII.2.o (the field-level anomaly; proof of VII.2.4).**

1. *Centering is invisible at short distance.* For any phase table $T'$, $\Theta_{T'}=\mathrm{tr}\,\mathring T-x\,\mathbf 1$ for some constant $x$. Since $w_ir_i^4\to0$, the term $x\mathbf 1$ disappears after rescaling. This gives $w_ir_i^4U_i^{-1}\Theta_{T'}\to4d_2\mathcal O$.
2. *Form of $\Theta$.* $\Theta_{T'}$ is a real $O(4)$-scalar. Eventually $U_i^{-1}$ maps it into the real degree-$4$ free labels fixed by signed coordinate permutations, which are spanned by $\mathbf 1$ and $\mathcal O$. This gives the stated form with coefficients $e_i,d_i$. The two basis labels are linearly independent; applying their coordinate functionals to the limit gives $w_ie_i\to0$ and $w_id_i\to d_2$.
3. *Clock.* $\log(1/r_i)/w_i\to\kappa_G^{-1}$ holds because $r_i=a_{k_i}m_i$ with $\log m_i=o(\hat\beta_{k_i})$, $\hat\beta_k=\bar\beta+\kappa_G\log(1/a_k)$, and $w_i/\hat\beta_{k_i}\to1$.
4. *Gallery property.* The free Maxwell comparison supplies the hierarchy $\mathsf a$ and its Ward-normalized stress tensor; compactness along the ultrafilter supplies $Z$. The preceding conclusions apply to every compatible scaling sequence. The subsequence statement comes from VII.6.

*Lean:* [`july`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L79-L84), [`shift_unit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L69-L72), [`leaderB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L41-L51), [`zoom_BQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L42-L62), [`band_cost`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Orr.lean#L73-L76), [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68), [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56); [`payload`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Scalar.lean#L72-L81), [`styling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L72-L75).

### 4.5 The short-distance law

**Lemma VII.2.p (law along an anomaly sequence at fixed configurations).** Let $x=(x_0,x_1)$ have distinct coordinates in every axis and lie in the interior of the fixed scaling window with bound $100$. Let $x^{(i)}\to x$ be its lattice roundings at level $i$. Then
$$r_i^8\log^2(1/r_i)\;G_\Theta\big(r_i|x_0^{(i)}-x_1^{(i)}|\big)\to\frac{A_G}{|x_0-x_1|^8}.$$
*Proof sketch.*

1. Write $U_i(a_i)=w_ir_i^4\Theta$, where $a_i=U_i^{-1}(w_ir_i^4\Theta)$.
2. The two-point function in degree 4 is quadratic, $\langle(pu)(pu)\rangle=p^2\langle uu\rangle$.
3. By $O(4)$ and translation invariance, any pair of points is moved to the time axis, so the left side equals $(\log(1/r_i)/w_i)^2\,S^{\xi_*}\big(U_ia_i(r_ix_0^{(i)})\,U_ia_i(r_ix_1^{(i)})\big)$.
4. Since $a_i\to4d_2\mathcal O$, the free-field convergence and the normalization of $\mathcal O$ give the limit $\kappa_G^{-2}(4d_2)^2\cdot3\dim\mathfrak g/(\pi^4|x_0-x_1|^8)=A_G/|x_0-x_1|^8$.

*Lean:* [`tagline`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L50-L69), [`axis_shape`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L18-L37), [`wick_norm`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Constant.lean#L38-L52); [`rainbow`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L51-L63), [`rounds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Round.lean#L16-L23) *(proof read at the top)*.

**Lemma VII.2.q (removing the rounding; the full limit).**

1. *Removing the rounding.* Take $x=(0,(\frac s2,\frac s2,\frac s2,\frac s2))$ with $s\in(\frac12,2)$, so that $|x_0-x_1|=s$. Since $G_\Theta$ is nonincreasing (VII.2.2) and the rounded separations tend to $s$:
   - $\liminf_i r_i^8\log^2(1/r_i)\,G_\Theta(r_i)\ge A_Gs^{-8}$ for $1<s<2$;
   - $\limsup_i r_i^8\log^2(1/r_i)\,G_\Theta(r_i)\le A_Gs^{-8}$ for $1/2<s<1$.

   Letting $s\to1$ gives the limit $A_G$ along $(r_i)$.

2. *The full limit.* If the law failed as $r\downarrow0$, there would be a null sequence avoiding a neighbourhood of $A_G$. By VII.2.4(ii), a subsequence satisfies the field-level anomaly, which contradicts step 1.

*Lean:* [`border`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L52-L76), [`outside`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Cape.lean#L77-L88).

**Lemma VII.2.r (Tauberian step; proof of VII.2.5(b)).** Suppose VII.2.2 holds and $r^8\log^2(1/r)G_\Theta(r)\to A\ge0$. Let $\nu_\rho:=\rho^{-8}\log^2\rho\;\mu_\Theta(\rho\,\cdot)$. By Lorentz invariance, the Laplace transforms $\int e^{-u\cdot p}d\nu_\rho$ for $u$ in the open forward cone reduce to time-axis values. The law then gives their convergence to $A(u^2)^{-4}$, the Laplace transform of $\frac{A}{1536\pi}(p^2)^2\mathbf 1_{V_+}d^4p$. The law also gives a uniform energy budget $\nu_\rho\{p_0\le R\}\le CR^8$ for all $R\ge1$ and all sufficiently large $\rho$, with one constant $C$. Laplace convergence gives convergence on continuous compactly supported tests. The uniform polynomial growth bound controls the tails of Schwartz tests and extends the limit to that class.
*Lean:* [`transform_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L93-L106), [`rescaled_energy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L120-L141), [`compact_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L151-L157), [`joint_limit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L216-L222); [`laplace_schwartz`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LaplaceSchwartz.lean#L89-L99), [`cone_laplace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L137-L150).

### 4.6 Exclusions

**Lemma VII.2.s (power–logarithm expansions cannot carry the law).** Suppose $f=u+O(1)$ as $s\downarrow0$, where $u$ is a finite real combination of $s^a\log^k s$ with $a\in\mathbb Z$ and $k\in\mathbb N_0$, and suppose $s^8\log^2(1/s)\,f(s)\to A$. Then $A=0$.
*Proof sketch.* The $O(1)$ part contributes $s^8\log^2(1/s)\cdot O(1)\to0$. Along $s=2^{-n}$, $s^8\log^2(1/s)\,u(s)$ is a combination of $c_t\,\rho_t^{\,n}n^{k_t+2}$ with $\rho_t=2^{-(8+a_t)}$. Every term has a factor $n^{k_t+2}$ with $k_t+2\ge2$, so no term tends to a nonzero constant. Collect equal pairs $(a_t,k_t)$, discard zero coefficients, and order the remaining terms lexicographically by $(\rho_t,k_t+2)$. If the leading term has $\rho_t<1$, all terms tend to $0$. Otherwise the leading term diverges and dominates the others, so a finite limit is impossible unless its coefficient vanishes.
*Lean:* [`no_powerlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Log.lean#L96-L108).

**Lemma VII.2.t (Wick profiles expand; proof of VII.2.7).**

- *Expansion.* Each mode kernel $K_{m,q,h}$ has an expansion to all orders in $\{s^a\log^ks\}$. The class is closed under products and sums, so $\mathrm{Re}\,W$ has the form required in Lemma VII.2.s; part (a) follows. Equality on $(0,\delta)$ is formulated as eventual equality as $s\downarrow0$.
- *Part (b).* If the Wightman function equals the mass-shell expression on all products with compactly supported wave transform, their wave transforms include every compactly supported Schwartz momentum test, so $\int\psi\,d\mu_\Theta$ equals the mass-shell expression for every compactly supported $\psi$. Compactly supported Schwartz $w_n\to e^{-sp_0}$, dominated by $e^{-sp_0}$, together with dominated convergence on both sides, give $G_\Theta(s)=W(s)$ for $s>0$. The palette version reduces to the collection version.

*Lean:* [`Expands`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Expansion.lean#L47), [`moments_expand`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L116-L125), [`real_profile`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L18-L22), [`identifies_euclid`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L62-L73), [`polynomial_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L86-L105). *(proof read; the single-mode expansion not read)*

**Lemma VII.2.u (Fock sectors; proof of VII.2.8).** Assume the positive short-distance law of VII.2.8 and a comparison $U$ satisfying its relative-locality identity.

1. *Sector decomposition.* By translation covariance, $U\Phi_\Theta(\varphi)\Omega=\hat\varphi(p_{\rm tot})\,Y$ for fixed measurable sector amplitudes $Y=(Y_{n,s})$, which need not form a square-integrable vector before smearing. Hence $\mu_\Theta$ is the image of $\sum_{n,s}|Y_{n,s}|^2\,d(\text{photon measures})$ under total momentum, and $\mu_\Theta\{p_0\le R\}=\sum_{n,s}\mathrm{mass}(Y_{n,s};\{\sum|k_j|\le R\})$.
2. *Evaporation.* The mass of $Y_{n,s}$ on the box $\{|k_j|\le2^J\text{ for all }j\}$ is at most $\mu_\Theta\{p_0\le(n+1)2^J\}$. By the law, $2^{-8J}$ times this tends to $0$.
3. *Dilation polynomials.* Relative locality gives equality of the forward and adjoint sector pairings when each test is supported spacelike to the origin. Approximate identities in time show that the Cauchy data of their difference are supported at the spatial origin. A distribution supported at one point has finite jet order. If $D_j$ doubles the $j$th momentum, these jet bounds and mass-shell uniqueness give, for some $K$, $\prod_{a=0}^{K-1}(D_j-2^{a-1})Y_{n,s}=0$ in every slot. The roots are distinct and the $D_j$ commute, so $Y_{n,s}$ is a finite sum of joint eigencomponents.
4. *Finitely many sectors.* A joint eigencomponent with slot degrees $a_j$ has box mass proportional to $R^{2\sum_j a_j}$ at dyadic radii $R$. Evaporation excludes $\sum_j a_j\ge4$. A component with any $a_j=0$ vanishes by local square integrability near zero momentum. Thus every nonzero component has $a_j\ge1$, so $Y_{n,s}=0$ for $n\ge4$. The remaining components have box mass at most $C_{n,s}2^{6i}$ at radius $2^i$.
5. *Contradiction.* Summing over the finitely many sectors with $n\le3$ gives $\mu_\Theta\{p_0\le2^k\}\le D\,2^{7k}$. Multiply this bound by $R^{-8}\log^2R$: it tends to zero. The spectral law instead gives a positive limit against a nonnegative compact test supported in $\{0<p_0<1,\ p^2>0\}$, a contradiction.

*Lean:* [`form_exists`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Form.lean#L27-L39), [`parts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weight.lean#L76-L78), [`burn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L15-L20), [`consumes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L22-L27), [`finite_particles`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L29-L32), [`saturate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44), [`local_eigen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/SpectrumGap.lean#L108-L112); [`local_position`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/VacuumLocal.lean#L95-L139), [`cauchy_point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/TimeData.lean#L86-L115), [`binds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Branches.lean#L133-L136), [`splitParts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Eigen.lean#L44-L83), [`log_high`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L23-L38), [`does_not_fit`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Dyadic.lean#L65-L82) *(proof read; the point-support and analytic uniqueness inputs are not expanded here)*.

<a id="unit-difficulty"></a>

## 5. Where the difficulty lies

*Hard.* Three pieces carry the mathematics, and all three are needed for the exact constant.

- The transport of the lattice Ward identity through the RG with fourth-order matching (VII.2.d–e).
- The one-loop pole with coefficient exactly $\kappa_G$ (VII.2.f, using III.7), and its conversion into a value by the mean-value argument (VII.2.g–h).
- The control of lattice-to-continuum remainders to $o(\hat\beta^{-p})$ for every $p$ (VII.2.k). The trace must be controlled after multiplication by the inverse coupling. The separate coefficient errors have the slower exponential rates displayed in VII.2.k. The bounds on $c_i$ grow like $e^{\frac16(\log\log\hat\beta)^2}$ and are beaten by decay factors $e^{-\frac15(\log\log\hat\beta)^2}$.

The identification of the explicit conserved tensor with $T$ (VII.2.n) is short once the rank-one statement and the Ward normalization are available.

*Routine.*

- Centering and the symmetries of $\Theta$.
- The passage from subsequential limits at rounded points to the full limit (monotonicity and the subsequence principle).
- The Tauberian step.
- The Wick exclusion.

The Fock exclusion also needs a distributional argument: relative locality yields point-supported Cauchy data, which force polynomial identities for momentum doubling. The growth comparison alone does not supply this step.

*Unusual or worth checking.*

1. *Logic of dependence.* The law is derived from the gallery property, which is established while the ultraviolet run is chosen (III.2): the same Wilson family must carry the trace certificates. The exclusions are proved from the law, not independently. Their public form combines the two.
2. *The cancellation of $b_0$ is a consistency check, not a tautology.* The identities $\kappa_G=2b_0$ and $d_2=-\kappa_G/4$ are definitions. The content is:
   - $c_{i,1}\to-\kappa_G/4$, where $\kappa_G$ comes from the one-loop integral (VII.2.f);
   - $\log(1/r)/w\to1/\kappa_G$, where $\kappa_G$ is the slope of the coupling schedule.

   Only because both are $\kappa_G$ is the amplitude $A_G=(4d_2/\kappa_G)^2\cdot3\dim\mathfrak g/\pi^4=3\dim\mathfrak g/\pi^4$, independent of $C_A$. Had the one-loop slope differed from the schedule, the amplitude would differ by the square of their ratio.

3. *Geometry of the points.* The law is first obtained at the generic configuration $(0,\frac s2(1,1,1,1))$, as the lattice machinery requires distinct coordinates in each axis. It is then rotated to the time axis, which uses the full $O(4)$ invariance of $\Theta$ from VI.1.
4. *Precision.* The payoff certificate is accurate to $\hat\beta_k^{-100}$, much more than the argument needs.
5. *Scope of the exclusions.* The Wick class is exactly the public finite-profile class. The conclusion does not exclude continuous-mass generalized free fields. The Fock comparison is tested through vacuum matrix elements with coherent states; it gives an obstruction to relative locality with free photons under the stated embedding hypotheses.

<a id="unit-notation"></a>

## 6. Notation

- **object:** trace of the stress tensor

  **code name:** [`stressTrace`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L17)

  **notation:** $\sum_\mu T_{\mu\mu}$

- **object:** one-point function in a table

  **code name:** [`euclideanVEV`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L34)

  **notation:** $\langle v\rangle_{\xi}$

- **object:** centered trace, its pinned label

  **code name:** [`theta`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Centered.lean#L64), [`center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L48), [`pinned`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L49)

  **notation:** $\Theta$, $\Theta_{T'}$, $\iota(\Theta)$

- **object:** time-axis two-point function

  **code name:** [`euclidean`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L53)

  **notation:** $G_\Theta(r)$

- **object:** spectral measure

  **code name:** [`TraceSpectrum`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/WilsonTrace.lean#L83-L94)

  **notation:** $\mu_\Theta$

- **object:** cone measure

  **code name:** [`coneMeasure`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/ConeLaplace.lean#L57)

  **notation:** $\frac{A}{1536\pi}(p^2)^2\mathbf 1_{V_+}d^4p$

- **object:** scale factor

  **code name:** [`Zlog`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L20), [`clue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L39)

  **notation:** $\rho^{-8}\log^2\rho$; $r^8\log^2(1/r)$

- **object:** slope, one-loop coefficient, force

  **code name:** [`slopeConstant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Gauge/Colors.lean#L184), [`b0`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L60), [`d2`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L62)

  **notation:** $\kappa_G$, $b_0$, $d_2$

- **object:** amplitude; payoff constant

  **code name:** [`award`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse/Day.lean#L41); [`landPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L9)

  **notation:** $A_G$; $-12\kappa_G$

- **object:** free table; $\frac14F^2$ label

  **code name:** [`Climb.Bel`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L20), [`Cells.standard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Cells/Corrected.lean#L22); [`OScale`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L50), [`square4`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L66)

  **notation:** $\mathsf F$; $\mathcal O$

- **object:** free tensors, divergence functional

  **code name:** [`materialB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Pear.lean#L50), [`BornZ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L27), [`rho`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Foundation/Dilate.lean#L78-L80), [`Lease`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Lease.lean#L22)

  **notation:** $T^{\rm free}=L$, $\Delta$, $\Xi$; $\rho$

- **object:** scaling sequence; coupling limits

  **code name:** [`Climb.Scaling`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Climb/Cells.lean#L24-L31) ($r_i$, $U_i$); [`Arch`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Dusk.lean#L65-L67), [`BQ`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Dray.lean#L42)

  **notation:** $(r_i,U_i)$; $Z.\beta(k)$, $w_i$

- **object:** rescaled fields

  **code name:** [`ZoomValue`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Nectar.lean#L64), [`Year`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L55), `Phase4`, [`Optics`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves/Lore.lean#L40-L44)

  **notation:** $U_i^{-1}(w_ir_i^4\,\cdot)$, $r_i^4U_i^{-1}$, $\mathrm{Ph}_i$, $K_i$

- **object:** lattice-built tensors; candidate

  **code name:** [`tub`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Token.lean#L59), [`pollen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L48); [`Cloak`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Stage.lean#L61)

  **notation:** $\mathrm{tub}_i(B)$; $X_i$

- **object:** divergence vector of the dart

  **code name:** [`Shine5`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L49)

  **notation:** $\Sigma_k$

- **object:** lattice Ward dart; precision

  **code name:** [`Dart`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L22-L27), [`Dart.Sound`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Badge.lean#L82-L90); [`Viz`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L15-L23)

  **notation:** dart $(J,Y,E,Q,\mathrm{tw})$

- **object:** regulated one-loop action and coefficient

  **code name:** [`marke`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L62), [`ridge`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Fluent.lean#L9), [`seaD`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L10)

  **notation:** $\Gamma_\mu$, $R_\mu$, $\mathrm{seaD}_\mu$

- **object:** payoff of a dart

  **code name:** [`midPay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L38), [`Holt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L37)

  **notation:** $\mathrm{midPay}_q$

- **object:** work items and certificate

  **code name:** [`Work items`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L15), [`Grant`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L16), [`WorthB`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Ansel.lean#L30-L40)

  **notation:** certificates along $\mathcal L$

- **object:** slowly varying rates

  **code name:** [`Wave`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn/Have.lean#L10), [`AgeK`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Look.lean#L10)

  **notation:** $e^{a(\log\log\hat\beta_k)^2}$

- **object:** field-level anomaly; its bundle

  **code name:** [`Scribe`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L52-L59), [`Gallery`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L41-L44)

  **notation:** Scribe property; gallery property

- **object:** short-distance law

  **code name:** [`EuclideanAsymptotic`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/LogScaling.lean#L74-L75)

  **notation:** $r^8\log^2(1/r)G_\Theta(r)\to A$

- **object:** Wick modes and tracks

  **code name:** [`Mode`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L23-L29), [`Track`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/PolynomialField.lean#L90-L92)

  **notation:** $K_{m,q,h}$, $\prod_\beta K$

- **object:** Fock comparison; relative locality

  **code name:** [`Comparison`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L23-L27), [`Nfl`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Identify.lean#L32-L35), [`Ambient`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Space.lean#L111), [`coherent`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Weyl.lean#L119)

  **notation:** $U:\mathcal H\to\mathcal F_m$; $W(h)\Omega_{\mathcal F}$

- **object:** output bundles

  **code name:** [`TraceExclusions`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative/HeadlineSpec.lean#L84-L120), [`Crest`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Belfry.lean#L16-L30), [`Result`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Endpoint.lean#L99-L120), [`Tests`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration/ManuscriptTraceTests.lean#L62-L75)

  **notation:** (T1)–(T4) and internal variants


For the coefficient selectors, let $M_{iq}^H(p_1,p_2)$ be the quadratic field derivative of $H$ at zero, complexified and evaluated on two plane waves of polarization $i$ and color $q$, using the rooted trigonometric interpolation. Write $[t^j]$ for the Taylor coefficient, including $1/j!$. For the rooted displacement $Y_b(0)$, set $D_b(z)=\mathrm{tr}(\mathrm{tidal}(Y_b(0))(\exp z))$, with the exponential applied linkwise. Let $\Lambda$ be the set of lattice sites and let $\mathrm{i}=\sqrt{-1}$. Then the payoff is exactly
$$\mathrm{midPay}_q=\mathrm{Re}\sum_{d\ne i}\left(\mathrm{i}\sum_b[u^2v]M_{iq}^{D_b}(u e_d,-u e_d+v e_b)-\frac12[t^2]M_{iq}^{D_i}(t e_d,-t e_d)\right).$$
The cubic momentum coefficient is extracted from the quadratic field derivative. The one-loop selector is
$$y_{di}(H)=\frac{M_{iq}^H(h e_d,-h e_d)-2M_{iq}^H(0,0)+M_{iq}^H(-h e_d,h e_d)}{2h^2\,\mathrm{card}\,\Lambda},\qquad h=2\pi/f.$$

*Lean:* [`lush`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det/Port.lean#L69), [`molt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Cake.lean#L63), [`neap`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Keg.lean#L11), [`pia`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L20), [`Deb`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Taps.lean#L31-L34), [`cob`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Lock.lean#L21), [`yard`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Tips.lean#L12).

For the Fock tests, $h=(h_c^a)_{1\le c\le m,\,1\le a\le3}$ is a list of real scalar spacetime tests. Its one-particle wave is
$$\eta_c^a(k)=|k|\sum_b\left(\delta_{ab}-\frac{k_a k_b}{|k|^2}\right)\widehat h_c^b(|k|,k),\qquad d\nu(k)=\frac{d^3k}{2|k|}.$$
The coherent vector has $n$-particle component $e^{-\|\eta\|^2/2}\mathrm{i}^n\eta^{\otimes n}/\sqrt{n!}$. The value at $k=0$ is irrelevant to $\nu$.

The run predicates used in VII.2.3 are `Bolt`, `Bandage`, `Nest`, `Vigil`, `Acclaim` and `supportQ`; those used in VII.2.4 are `PostT`, `Stock.Tabs`, `Scrim`, `Sceptre`, `supportQ`, `Moonlit` and `auraQ`, together with `Binding`, `HaarBudget`, `ChartRatio`, the generator bounds and `FiresSky`. The one-loop hypotheses in VII.2.f–h are `Cred` and `Flare`. Their parameters and dependencies are those of the fixed run and operator data.

<a id="unit-limitations"></a>

## 7. What remains unexplained
1. **Transport and one-loop estimates.** The statements of the fourth-order first-variation transfer and the quantitative contraction through successive RG steps were checked, but their proofs were not read in full. The same limitation applies to the covariance and resolvent estimates feeding the one-loop pole. The proof sketches use these as inputs from III.4–III.11.
2. **Remainder estimates.** The stage, cluster and chamber-pullback estimates listed after VII.2.k were checked as statements, including their scale, degree, support and separation restrictions. Their detailed proofs, and the construction of the fast bounds behind the trace estimate, remain to be expanded. The slowly decaying coefficient errors and the remainders smaller than every inverse power are distinct estimates.
3. **Wick expansion.** The finite-profile reduction and the incompatibility with the trace law were checked. The all-orders expansion of a single massive mode is used as a theorem; its proof was not read.
4. **Distributional inputs to the Fock exclusion.** The reductions through remote tests, equal-time data, momentum-doubling identities, eigenvector splitting and dyadic growth were read. The finite-order theorem for point-supported distributions and the analytic uniqueness results used in those reductions remain inputs; their full proofs were not audited here.
5. **Position-space frames.** The scalar identification, frame quantifiers, shell normalization and the $O(g_X^4)$ deduction were checked. The full existence proof for the position-space Gram and angular alignment, and the detailed formulas for the two shell observables, remain to be expanded from the frame definitions. Proposition VII.2.9 concerns the family and extraction refinement supplied by the supplementary construction.
6. **Unit boundaries.** The declaration table places the spectral measure, the final short-distance steps and the Fock conclusion in VIII.1, the scaling-sequence existence results in VII.6, and the logarithmic momentum integral in III.7. Their mathematical roles are described here. The remaining integration and RG bookkeeping records are outside the proof sketches in this unit.

## Code dependencies

**Code dependencies (from the compiled Lean).** These lists follow references between declarations allocated to units; they can include shared definitions, record fields and alternative constructions. They are not a mathematical reading order. Only unit pairs with at least 25 references are shown; see the [counting rules](../../data/README.md#code-dependencies).

**References to:** [I.1](I-1.md), [III.1](III-1.md), [III.7](III-7.md), [III.16](III-16.md), [IV.1](IV-1.md), [II.1](II-1.md), [VI.1](VI-1.md), [III.6](III-6.md), [III.11](III-11.md), [V.2](V-2.md), [VI.2](VI-2.md), [VIII.1](VIII-1.md), [II.2](II-2.md), [III.9](III-9.md), [III.10](III-10.md), [III.8](III-8.md), [VII.6](VII-6.md), [VII.1](VII-1.md), [VII.5](VII-5.md), [III.3](III-3.md), [V.1](V-1.md), [III.2](III-2.md), [III.4](III-4.md).

**Referenced by:** [III.2](III-2.md), [VIII.1](VIII-1.md).

## Lean source

**Source allocation:** 20,681 attributed lines; 3,833 line-counted declarations; 5,055 assigned declaration names. Of the assigned names, 4,879 are in the compiled closure of the seventeen headline results. These quantities have [different scopes](../../data/README.md#counting-scopes).

The folders and result chains below are source inventories. Their line counts cover each whole group, including any share allocated to another unit; percentages use attributed lines plus one per assigned name. They need not sum to the unit total.

- proof of [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68) and the results it chains to — 6,437 lines.
- proof of [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35) and the results it chains to — 6,036 lines.
- work package [`YM/TraceExtension/Fock/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock), with [`YM/TraceExtension/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension), [`YM/TraceExtension/Wick/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick), [`YM/TraceExtension/Atlas/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Atlas), [`YM/TraceExtension/Chart/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart), [`YM/TraceExtension/Pith/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pith), [`YM/TraceExtension/Sundial/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Sundial), [`YM/TraceExtension/Verse/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Verse), [`YM/TraceExtension/Link/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Link) — 3,581 lines.
- work package [`YM/TraceExtension/Perfect/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect) — 1,298 lines.
- work package [`YM/TraceExtension/Filch/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Filch) — 536 lines.
- work package [`YM/TraceExtension/Det/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Det) — 438 lines.
- work package [`YM/TraceExtension/Shepherd/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd) — 366 lines.
- work package [`YM/TraceExtension/Lamp/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp) — 284 lines.
- work package [`YM/TraceExtension/Pi/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pi) — 216 lines.
- work package [`YM/TraceExtension/Terrace/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace) — 196 lines.
- work package [`YM/TraceExtension/Turret/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Turret) — 162 lines.
- work package [`YM/TraceExtension/Zn/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Zn) — 155 lines.
- work package [`YM/TraceExtension/Weir/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Weir) — 100 lines.
- work package [`YM/TraceExtension/Fen/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fen) — 98 lines.
- work package [`YM/TraceExtension/Quince/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Quince) — 93 lines.
- work package [`YM/Integration/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Integration) — 80 lines.
- work package [`YM/TraceExtension/Xo/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Xo) — 79 lines.
- work package [`YM/RG08/Calendar/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/RG08/Calendar) — 74 lines.
- work package [`YM/TraceExtension/Cask/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask) — 73 lines.
- work package [`YM/TraceExtension/Wicket/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wicket) — 69 lines.
- work package [`YM/TraceExtension/Swift/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Swift) — 65 lines.
- work package [`YM/Nonperturbative/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Nonperturbative) — 64 lines.
- work package [`YM/TraceExtension/Margin/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin) — 51 lines.
- proof of [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) — 40 lines.
- work package [`YM/TraceExtension/Shunt/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shunt) — 32 lines.
- work package [`YM/TraceExtension/Pills/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Pills) — 29 lines.
- work package [`YM/TraceExtension/Loft/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft) — 21 lines.
- work package [`YM/TraceExtension/Anchor/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor) — 4 lines.
- work package [`YM/TraceExtension/Slate/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate) — 3 lines.
- work package [`YM/TraceExtension/Shelves/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shelves) — 1 lines.

## Key statements

In the selected statement order. **K-** identifiers name this generated list; proposition and lemma numbers in the outline are separate. Each sentence is an automatically drafted summary of a Lean statement; follow its link for the exact hypotheses and conclusion. The outline status does not certify these summaries. *Main result* and *key result* describe importance, not correctness. Full names are in the [statement table](../../data/key-statements.tsv).

<a id="k-vii-2-1"></a>

- **K-VII.2.1** [`cauchy_point`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/TimeData.lean#L86-L115) *(numbered result)* — Under the paired-adjoint identity on remote tests, the Cauchy data vanish on test functions compactly supported away from the origin.

<a id="k-vii-2-2"></a>

- **K-VII.2.2** [`splitParts`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Eigen.lean#L44-L83) *(numbered result)* — An element of a submodule stable under dilations that is killed by the relevant polynomials lies in the span of the joint generalized eigen-components.

<a id="k-vii-2-3"></a>

- **K-VII.2.3** [`from_center`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Book.lean#L33-L76) *(key result)* — Coarse observables pulled back along centered chambers with funding certificates produce late physical equivalence.

<a id="k-vii-2-4"></a>

- **K-VII.2.4** [`axis_advance`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Derivative.lean#L80-L115) *(numbered result)* — For a fixed stencil width, the finite-difference approximation of the derivative along an axis has error at most C'‖v‖x^8, uniformly over labels.

<a id="k-vii-2-5"></a>

- **K-VII.2.5** [`differentiation`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Anchor/Bleed.lean#L81-L144) *(key result)* — If lattice observables converge to fields and their finite-difference stencils match, then the continuum derivative of the limit equals the limit of the next-order fields, up to a fast-decaying error.

<a id="k-vii-2-6"></a>

- **K-VII.2.6** [`recoup`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Relay.lean#L143-L160) *(key result)* — The directional Ward lift is price-matched: derivatives of the fine relay and coarse maps agree to fourth order along analytic perturbations vanishing at the origin.

<a id="k-vii-2-7"></a>

- **K-VII.2.7** [`aroma_transfer`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Wicker.lean#L37-L46) *(key result)* — Under criticality, bounds and classical matching, the inherited aroma jets of the two descriptions agree to fourth order at zero.

<a id="k-vii-2-8"></a>

- **K-VII.2.8** [`binds`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Branches.lean#L133-L136) *(key result)* — A tempered wave with equal paired and adjoint values on remote tests is annihilated by a power of the dilation operator in every momentum slot.

<a id="k-vii-2-9"></a>

- **K-VII.2.9** [`gang`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Line.lean#L49-L56) *(key result)* — The gallery property holds for the cell hypothesis data.

<a id="k-vii-2-10"></a>

- **K-VII.2.10** [`free_rank`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/Further/PHYSICAL_PERIOD_LIMIT_F933/FreeRanks.lean#L159-L165) *(key result)* — The current divergence map is surjective with one-dimensional kernel for a simple gauge group under the derivative tests.

<a id="k-vii-2-11"></a>

- **K-VII.2.11** [`Store_l`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Time.lean#L63-L68) *(numbered result)* — Given a transport datum for the cell hypothesis, a certain scribe property is obtained.

<a id="k-vii-2-12"></a>

- **K-VII.2.12** [`agenda`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Margin/Stand.lean#L23-L35) *(numbered result)* — Along a filter on pairs of naturals tending to infinity in both coordinates, a certain package of limits holds.

<a id="k-vii-2-13"></a>

- **K-VII.2.13** [`dewWt`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Prise.lean#L31-L44) *(key result)* — For large k, along any pair of sequences tending to infinity, an eventual estimate holds for the Wilson-type specialization of the weighted quantity.

<a id="k-vii-2-14"></a>

- **K-VII.2.14** [`reveals`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Masts.lean#L58-L65) *(key result)* — The choice property for the data holds.

<a id="k-vii-2-15"></a>

- **K-VII.2.15** [`midAwake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Leaf.lean#L40-L52) *(key result)* — Under the scene, flare and credibility hypotheses, the intermediate-scale payoff converges to the limiting payoff constant for simple gauge groups.

<a id="k-vii-2-16"></a>

- **K-VII.2.16** [`legacy`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L59-L61) *(key result)* — For every power p, the scaled sequence H^p times s_i of the medium tends to zero.

<a id="k-vii-2-17"></a>

- **K-VII.2.17** [`hullage`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Phantom.lean#L37-L50) *(key result)* — There exists a mission (limit object) realizing the origin-coordinate sequence of core fields along the sequence of sides.

<a id="k-vii-2-18"></a>

- **K-VII.2.18** [`crestship`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Ell.lean#L59-L82) *(numbered result)* — For large stage index, a crest estimate holds uniformly in parameters p and N.

<a id="k-vii-2-19"></a>

- **K-VII.2.19** [`treasury`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Pallas.lean#L46-L64) *(main result)* — For all large levels k, along any filter where path lengths and sides tend to infinity, eventually there exist darts at level k satisfying an ε-quantitative property.

<a id="k-vii-2-20"></a>

- **K-VII.2.20** [`through`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Flo.lean#L41-L46) *(key result)* — If nonempty embers exist from level m onward and the path lengths exceed m+n+1, there exist sound darts at level m with the saving property over n+1 levels.

<a id="k-vii-2-21"></a>

- **K-VII.2.21** [`pay_step`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Perfect/Native.lean#L81-L88) *(key result)* — There exists a family of sound darts at the given level achieving a prescribed saving at each step of the construction.

<a id="k-vii-2-22"></a>

- **K-VII.2.22** [`touring`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Toil.lean#L29-L56) *(numbered result)* — Under an aura hypothesis on the terrace levels, a stage estimate holds for all large i uniformly.

<a id="k-vii-2-23"></a>

- **K-VII.2.23** [`trod`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Heli.lean#L39-L51) *(numbered result)* — Under the aura condition at level l, eventually in i a statement about the associated index holds.

<a id="k-vii-2-24"></a>

- **K-VII.2.24** [`saturate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/Conclude.lean#L33-L44) *(main result)* — Contradiction: the assumed fixed vacuum situation is impossible (False is derived).

<a id="k-vii-2-25"></a>

- **K-VII.2.25** [`garnet`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Folly.lean#L38-L61) *(key result)* — Under expense, separation and weight hypotheses, the root test of the back-transported lens function is bounded by an exponential over w_m squared.

<a id="k-vii-2-26"></a>

- **K-VII.2.26** [`local_eigen`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/SpectrumGap.lean#L108-L112) *(key result)* — A tempered wave satisfying evaporation and a pairing–adjoint identity on remote probes vanishes for n≥4 and has a width property, a spectral-gap-type conclusion.

<a id="k-vii-2-27"></a>

- **K-VII.2.27** [`awake`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Awake.lean#L32-L53) *(key result)* — Along the limiting sequence, a regularized trace quantity built from the field converges to the limiting land payoff constant of the gauge group.

<a id="k-vii-2-28"></a>

- **K-VII.2.28** [`quaff`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Votive.lean#L42-L67) *(key result)* — Given a decked bound at scale k and matching tile data, the root test of the pulled-back function at level J is bounded by an exponential in the ratio-powered treasury over w_m squared.

<a id="k-vii-2-29"></a>

- **K-VII.2.29** [`saga`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pious.lean#L97-L127) *(key result)* — Under scene and flare hypotheses, the trace functional has an asymptotic expansion given by the leading mu-squared term plus corrections.

<a id="k-vii-2-30"></a>

- **K-VII.2.30** [`formulate`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Chart/Laurel.lean#L53-L78) *(key result)* — There exist coefficient sequences with bounded norm, bijective composite and a balance relation, whose first component converges to the force constant of G.

<a id="k-vii-2-31"></a>

- **K-VII.2.31** [`small_means`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Terrain.lean#L26-L51) *(key result)* — For rescaled vectors approximating the swale, the polynomially weighted sequence tends to zero.

<a id="k-vii-2-32"></a>

- **K-VII.2.32** [`local_position`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Fock/VacuumLocal.lean#L95-L139) *(key result)* — Vacuum locality: for remote probes, the paired and adjoint evaluations of the vacuum wave functions agree in relative position variables.

<a id="k-vii-2-33"></a>

- **K-VII.2.33** [`article`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Spite.lean#L32-L46) *(key result)* — For each index and epsilon, eventually most parameter pairs admit a nearby vector whose orbits at both levels coincide with prescribed ones and which preserve the rho-value.

<a id="k-vii-2-34"></a>

- **K-VII.2.34** [`euclidean_excludes`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Wick/Refute.lean#L75-L80) *(key result)* — A Euclidean field with the asymptotic behavior cannot agree eventually in the past with any finite polynomial field description.

<a id="k-vii-2-35"></a>

- **K-VII.2.35** [`welfare`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Shepherd/Spindle.lean#L46-L51) *(key result)* — Separated clusters with bounded cover number and bounded functions satisfying an expense hypothesis yield the decked estimate for the associated configuration.

<a id="k-vii-2-36"></a>

- **K-VII.2.36** [`lay`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Cask/Common.lean#L17-L54) *(key result)* — Under separation, cover-number, decay and hit hypotheses on a cluster family, the associated expansion satisfies a decked (bounded-activity) estimate.

<a id="k-vii-2-37"></a>

- **K-VII.2.37** [`slopeL`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Loft/Samen.lean#L23-L42) *(key result)* — For a simple gauge group, the regulated quantity has a logarithmic pole whose coefficient is 12 times the slope constant, up to a bounded error uniform in the cutoff scale.

<a id="k-vii-2-38"></a>

- **K-VII.2.38** [`penumbra`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Pony.lean#L30-L65) *(key result)* — The shine sequence is bounded by a constant times a controlling rate and its linear functional converges to minus the slope constant.

<a id="k-vii-2-39"></a>

- **K-VII.2.39** [`fawn`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Lamp/Pine.lean#L11-L39) *(key result)* — Along a filter, the coboundary-type observable built from the lush field of the scene converges (in the Rose sense) to a scaled lens observable.

<a id="k-vii-2-40"></a>

- **K-VII.2.40** [`rungs`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/Garnet.lean#L62-L68) *(key result)* — The sequence s satisfies the Prosper property relative to the given data.

<a id="k-vii-2-41"></a>

- **K-VII.2.41** [`expire`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Terrace/Mortal.lean#L37-L43) *(key result)* — For large i, the Wilson moment of a backward-transported function is bounded by U plus V times support size times exp(-2 prism(hatBeta)).

<a id="k-vii-2-42"></a>

- **K-VII.2.42** [`pages`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Slate/April.lean#L65-L71) *(key result)* — For large scale and large side length, any admissible configuration satisfying the matching conditions has its limiting vector within epsilon of a fixed target vector.


[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)
