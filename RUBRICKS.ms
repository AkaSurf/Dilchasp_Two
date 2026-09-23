# Evaluation Rubrics

This document describes the scoring model used by the deck evaluation reports.

## Score Model

Each submission is scored out of 100 points:

- Proposal evaluation: 70 points
- Presentation deck evaluation: 30 points
- Additional deck-quality penalty: deducted from the total when a deck-wide communication problem is present

Each criterion receives a normalized score from 0 to 100. Its weighted points are calculated as:

`weighted points = criterion score / 100 * criterion weight`

`final score = proposal points + deck points - additional penalty`

The final score is rounded to two decimal places. The proposal and deck subtotals shown in a report include the weights listed below; a deck-quality penalty is applied separately.

## Proposal Rubrics

Proposal criteria account for 70 points.

| Criterion | Weight | What is evaluated |
| --- | ---: | --- |
| Problem statement alignment | 20 | Coverage of the stated problem, required capabilities, users, constraints, expected outcomes, and domain-specific requirements. |
| Solution clarity | 20 | Clarity of the proposed mechanism, end-to-end workflow, inputs, outputs, interfaces, scope boundaries, and supporting explanation. |
| Technical feasibility | 15 | Technical architecture, technology choices, implementation plan, resources, dependencies, risks, and mitigation strategies. |
| Innovation | 10 | Meaningful differentiation, originality, and problem-specific value beyond generic or existing approaches. |
| Prototype evidence | 5 | Evidence of an implemented fragment, working workflow, observable output, prototype, mock-up, or other credible validation. |

### Proposal Guidance

- Full credit requires specific, evidence-backed coverage rather than a list of claims.
- A conceptual idea can receive solution and technical points without receiving full prototype points.
- Prototype claims without visible or descriptive evidence should not receive full prototype credit.
- Missing implementation detail, resource planning, risk mitigation, or required features limits the relevant criterion only.

## Deck Rubrics

Presentation deck criteria account for 30 points.

| Criterion | Weight | What is evaluated |
| --- | ---: | --- |
| Text visual balance | 8 | Whether text and visuals support each other without excessive text, unexplained visuals, or overloaded slides. |
| Content structure | 5 | Organization, headings, conciseness, precision, paragraph density, filler, and logical section structure. |
| Readability | 5 | Font size, contrast, hierarchy, title coverage, legibility inside diagrams, overlap, and clipping. |
| Narrative flow | 4 | Progression from problem through solution, build or implementation, evidence, impact, conclusion, and next steps. |
| Visual relevance coherence | 5 | Relevance, explanatory usefulness, semantic coherence, labeling, and consistency of visuals with the surrounding content. |
| Layout space usage | 3 | Alignment, grouping, purposeful whitespace, density consistency, and unobstructed content. |

### Deck Guidance

- Decorative or generic imagery does not receive full visual relevance credit without explanatory value.
- Small text, dense paragraphs, and crowded diagrams affect readability and may also affect balance or layout.
- The same issue may affect more than one criterion only when it produces distinct criterion-level effects.
- Visual evaluation does not infer AI authorship from appearance.

## Additional Deck-Quality Penalty

An additional penalty may be applied for a deck-wide communication problem that is not adequately represented by the individual criteria. Examples include:

- Persistent extremely small text or dense text blocks across the deck.
- A distracting watermark or artifact on every slide.
- A deck-wide presentation defect that materially harms communication.

The penalty is recorded separately as `Additional deck-quality penalty` and deducted from the final total. A penalty of `0.00` means no additional deck-wide penalty was applied.

## Evidence and Missing Information

Reports may record native objects, native assets, rendered slides, OCR records, diagram records, vision records, external links, and warnings as evidence coverage.

- Evidence is assessed at the criterion level.
- Missing evidence does not create an automatic blanket deduction across every criterion.
- A missing item lowers only the criterion or criteria that depend on it.
- Unsupported claims should not be treated as equivalent to demonstrated evidence.
- A warning is recorded as evidence metadata and is not automatically a point deduction.

## Qualitative Report Sections

These sections explain the score but do not add separate points:

- Top Strengths: strongest observed criteria or evidence.
- Main Deductions: criterion-specific weaknesses and evidence gaps, optionally with slide references.
- Verdict: concise explanation of the final result and main limiting factor.
- Evidence Coverage: inventory of available evaluation evidence.

## Statuses and Ranking

| Status | Meaning |
| --- | --- |
| scored | A complete numeric final score is available. |
| review | A complete numeric score is unavailable and requires review or re-evaluation. |
| failed | Download, extraction, source-format, or problem-statement processing failed before scoring. |

Numeric submissions are ranked within their problem statement by final score, descending. Ties share a rank. Submissions without a complete numeric score remain in processing exceptions until their evaluation can be completed.

The reports use these result buckets where applicable:

- `B - Strong`
- `C - Promising`
- `D - Needs work`

Buckets summarize the evaluation outcome and are not additional scoring criteria.

## Manual Review Triggers

Manual attention is required when any of the following occurs:

- A required criterion has `REVIEW` or `N/A` instead of a numeric score.
- The evaluation service times out or returns an incomplete result.
- The source deck cannot be downloaded or extracted.
- The source format is unsupported.
- The problem statement is missing or remains `UNASSIGNED`.

Manual scoring should use the same criteria and weights above, and the resulting score should be checked against the weighted-score calculation before ranking.
