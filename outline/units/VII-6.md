# VII.6. Scaling variants and fixed-field estimates

*Part VII — Identification as Yang–Mills.* 4,205 lines of Lean in 374 declarations used by the main theorem.

**What this unit contains** (automatic summary from the Lean statements and documentation; the outline of its proof is in preparation).

Variants of another unit estimates with scales varying along the sequence; extraction of a subsequence of scales with a scaling-limit path (`MergeProof.East.wakesSky`). [guess: serves the free Maxwell scaling sequence r_k -> 0]

Single statement (`SharpGram.inletFirst`): projected input of grade at most 3 supplies the required fixed-field estimate. Used by the main theorem; role unclear (appears to feed trace/phase comparison).

**Builds on:** [III.11](III-11.md), [II.2](II-2.md), [III.1](III-1.md), [II.1](II-1.md), [I.1](I-1.md), [IV.1](IV-1.md), [VI.2](VI-2.md), [III.4](III-4.md), [III.16](III-16.md), [III.10](III-10.md).

**Used by:** [III.2](III-2.md), [VII.2](VII-2.md), [VIII.1](VIII-1.md).

## Lean source

The work packages (folders of the Lean source) and the chains of large results that make up this unit.

| content | lines |
|---|---|
| proof of [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31) and the results it chains to | 3,601 |
| work package [`YM/TraceExtension/Prom/`](https://github.com/yang-mills-group/OpenAI-YM-20261028/tree/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom) | 561 |
| proof of [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) | 43 |

## Key statements

In dependency order. Each sentence is a plain-language summary of the Lean statement written by an AI reader; follow the link for the exact statement. *Main result* and *key result* are the readers' judgement of importance.

- **VII.6.1** [`laminateSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Port/Rail.lean#L95-L127) *(key result)* — A nonlinear observable bound on the actual stencil: given sufficient pose and payments, the observable is valid on the fine patch and close to the critical bias on the coarse field.
- **VII.6.2** [`pays_sky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Running.lean#L25-L31) *(main result)* — If the firing property holds in all dimensions under simple group, scrim, and dimension-above hypotheses, then for any sequence of scales tending to zero there is a subsequence along which a scaling limit star-path exists.
- **VII.6.3** [`wakesSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Zoom/Boats.lean#L75-L87) *(key result)* — From the firing property one extracts a subsequence of scales and vanes with checked properties and radii equal to the prescribed decreasing scales.
- **VII.6.4** [`earningsSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Tael.lean#L56-L91) *(key result)* — Variant of the earnings estimate allowing parameters that vary with the sequence index within bounds.
- **VII.6.5** [`y_readySky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Lys.lean#L51-L71) *(numbered result)* — A dynamic-stop variant of the readiness estimate bounding a root-test quantity by a budget.
- **VII.6.6** [`lava_vSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Orion/Reach.lean#L34-L50) *(key result)* — The uniform endpoint estimate on compact sets holds for the dynamic-stops poised notion.
- **VII.6.7** [`attireSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Delft.lean#L30-L38) *(numbered result)* — Under spacing, fit and stake hypotheses, a surviving-configuration property (Chast) holds for the dynamic-stops variant.
- **VII.6.8** [`sweepSky`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/TraceExtension/Prom/Front/West/Karin.lean#L34-L57) *(key result)* — Under support conditions, the tray functions are integrable and the assembled functional differs from the reference platter by at most the summed budget grantS.
- **VII.6.9** [`inletFirst`](https://github.com/yang-mills-group/OpenAI-YM-20261028/blob/3456e5e75cf8d4cd558955a5c7638fba2d68f464/YM/SharpGram/Clauses.lean#L126-L129) *(major result)* — For inputs of grade at most three, the projected input supplies the required fixed-field estimate.

[All units](../units.md) · [Overview of the proof](../README.md) · [Repository](../../README.md)
