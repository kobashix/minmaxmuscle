-- MinMaxMuscle D1 Inserts - Generated 2026-11-09
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from d1_pending/2026-11-08_inserts.sql
-- Apply in order after all prior pending SQL files (chronological order: 10-29, 11-01, 11-03, 11-05, 11-06, 11-07, 11-08, 11-09)
--
-- To apply:
--   Option 1: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-09_inserts.sql
--   Option 2: Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console > paste SQL

-- ============================================================
-- PEPTIDE 1: DA-1726
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'DA-1726',
  'da-1726',
  'Metabolic & Weight Loss',
  'Oxyntomodulin analog; dual GLP-1R/GCGR agonist for obesity and MASLD/MASH; Phase 1 interim: 13.5% weight loss and 68% liver fat reduction; once-weekly subcutaneous; unique dual-axis: appetite suppression + hepatic fat oxidation',
  'DA-1726 is an investigational oxyntomodulin (OXM) analog developed by MetaVia Inc. that functions as a dual agonist at the GLP-1 receptor (GLP-1R) and the glucagon receptor (GCGR). Based on the structure of native oxyntomodulin — a 37-amino acid gut-derived peptide that naturally engages both receptors — DA-1726 has been engineered for extended half-life supporting once-weekly subcutaneous dosing.

Background and Mechanism: Oxyntomodulin is a proglucagon-derived peptide that is naturally secreted from intestinal L-cells alongside GLP-1 and PYY in response to nutrient intake. Its dual receptor activity gives it complementary metabolic effects:

1. GLP-1 receptor agonism: Reduces appetite by acting on hypothalamic satiety circuits, slows gastric emptying, and stimulates glucose-dependent insulin secretion. This is the same receptor activated by semaglutide and other GLP-1 drugs — the cornerstone of the modern obesity pharmacotherapy.

2. Glucagon receptor agonism: Directly activates hepatic fat oxidation (beta-oxidation), increases thermogenesis and basal energy expenditure, and drives hepatic steatosis reduction. The glucagon receptor component is what distinguishes DA-1726 from pure GLP-1 agonists for the liver disease indication — glucagon receptor agonism is specifically anti-steatotic in the liver, making it mechanistically well-suited to MASLD and MASH.

The dual mechanism creates complementary effects on body weight: the GLP-1R component reduces caloric intake, while the GCGR component increases fat utilization, both contributing to the significant weight loss observed in early trials.

Phase 1 Clinical Program (November 2026): MetaVia completed Phase 1 Part 1 (single ascending dose) and Part 2 (multiple ascending dose) establishing safety, tolerability, and pharmacokinetic profile. The company then advanced to Phase 1 Part 3, which incorporates longer dosing periods and metabolic endpoints.

Part 3B Interim Results (Precision Liver Symposium 2026, Denver, November 6, 2026): The most recent data presentation included an interim analysis of 19 participants (15 on DA-1726, 4 on placebo) across doses of 48 mg and 64 mg per week:
- Placebo-adjusted body weight reduction: 13.5%
- Placebo-adjusted liver fat reduction: 68% (assessed by MRI-PDFF)

For a Phase 1 trial — which is typically designed only to test safety and dosing — producing 13.5% weight loss and 68% liver fat reduction as metabolic readouts is striking. The liver fat reduction figure is especially notable for the MASLD/MASH indication.

Part 3 Topline Data Timeline: MetaVia stated that all active Part 3 participants had reached their target doses of 48 mg or 64 mg by July 2026, and that topline Part 3 data remain on track for Q4 2026.

ObesityWeek 2026 (November 14, 2026 — upcoming): MetaVia announced an abstract accepted for a poster presentation titled "DA-1726 Demonstrates Comparable Weight Loss and Distinct Metabolic Profile Compared With Retatrutide" — a comparison to Lilly's triple agonist, the Phase 3 leader in obesity pharmacology.

Planned Development Scope: MetaVia is developing DA-1726 for:
- Obesity (primary weight-loss indication)
- MASLD (metabolic dysfunction-associated steatotic liver disease)
- MASH (metabolic dysfunction-associated steatohepatitis)
- MetALD (MASLD with increased alcohol intake)
- ALD (alcohol-related liver disease)

The liver disease program distinguishes DA-1726 from most weight-loss peptides — the glucagon receptor agonism directly addresses hepatic steatosis through a mechanism orthogonal to the GLP-1 component.

Historical Context: Native oxyntomodulin has been studied as a weight-loss agent in several Phase 1/2 human trials going back to 2005–2010 (Imperial College London studies), which consistently showed weight and appetite reductions but were limited by its short half-life requiring twice-daily injection. DA-1726 is the first engineered long-acting OXM analog to reach Phase 1 with once-weekly dosing — solving the half-life problem that prevented earlier OXM development.

Safety Profile (Phase 1): The safety profile observed in Phase 1 is described as consistent with the drug class (GLP-1/glucagon dual agonist): primarily GI-related adverse events during titration. The company reported favorable safety and tolerability at ObesityWeek 2025 and reiterated a consistent profile in Phase 1 Part 3.

Significance: DA-1726 enters the obesity/metabolic space at a moment of intense competition, but its dual GLP-1R/GCGR mechanism — derived from native oxyntomodulin — is mechanistically distinct from pure GLP-1 agonists (semaglutide), GLP-1/GIP duals (tirzepatide, VK2735), and GLP-1/GIP/glucagon triples (retatrutide). The compound''s specific emphasis on liver fat reduction (68% at interim Phase 1) gives it a differentiated profile for the growing MASLD/MASH indication, where multiple Phase 2/3 trials are now expected. If topline Q4 2026 data confirm the interim metabolic profile, DA-1726 would rank among the most promising oxyntomodulin-class peptides in human development.

Research Limitations and Disclaimers: DA-1726 is not FDA approved or approved anywhere as of November 2026. All data are from early-stage (Phase 1) clinical evaluation. The interim results presented at the Precision Liver Symposium 2026 included only 19 participants — a very small sample. Efficacy signals in Phase 1 require confirmation in larger Phase 2/3 randomized controlled trials. The 13.5% weight loss and 68% liver fat figures are placebo-adjusted estimates from an interim analysis and subject to revision. The ObesityWeek 2026 comparison to retatrutide is a poster abstract; the full data are not yet available. Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'OXM-002, MetaVia obesity peptide',
  'Phase 1 Clinical',
  'Oxyntomodulin (OXM) analog; 37-amino acid proglucagon-derived peptide engineered for extended half-life; dual agonist: GLP-1 receptor + glucagon receptor; once-weekly SC injection; developed by MetaVia Inc. (South Korea/US); doses evaluated: 48 mg and 64 mg weekly in Phase 1 Part 3',
  'https://ir.metaviatx.com/news-releases/news-release-details/metavia-announces-poster-presentation-da-1726-obesityweekr-2026,https://www.koreabiomed.com/news/articleView.html?idxno=33767,https://www.prnewswire.com/news-releases/metavia-announces-poster-presentation-on-da-1726-at-obesityweek-2026-302932700.html',
  97,
  '2026-11-09',
  NULL
);

-- ============================================================
-- FAQs: DA-1726 (3 questions)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is DA-1726 and how does it work differently from semaglutide or tirzepatide?',
  'DA-1726 is an engineered analog of oxyntomodulin (OXM), a naturally occurring gut peptide that activates both the GLP-1 receptor and the glucagon receptor. Semaglutide activates only GLP-1R; tirzepatide activates GLP-1R and GIP receptor (GIPR). DA-1726 targets a different second receptor — the glucagon receptor — rather than the GIP receptor. This matters because glucagon receptor agonism directly drives hepatic fat oxidation and thermogenesis (increasing energy expenditure), which is mechanistically well-matched to liver disease (MASLD/MASH) as well as obesity. While tirzepatide''s GIP component augments incretin signaling and adipose tissue effects, DA-1726''s glucagon component addresses the liver''s fat processing directly. The result at interim Phase 1 was 68% placebo-adjusted liver fat reduction alongside 13.5% weight loss — a liver fat reduction figure that rivals or exceeds many compounds specifically being developed for MASH.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did the DA-1726 Phase 1 results show, and are they reliable?',
  'At the Precision Liver Symposium 2026 in Denver (November 6, 2026), MetaVia presented interim Part 3B results from 19 participants (15 on DA-1726, 4 on placebo). The placebo-adjusted results were: 13.5% body weight reduction and 68% liver fat reduction (by MRI-PDFF). These are impressive numbers for Phase 1, but several caveats apply: (1) The sample size is very small — 15 patients on drug, 4 on placebo. Results from trials this small frequently do not replicate in larger studies. (2) These are Phase 1 interim data — the primary goal of Phase 1 is safety assessment, not efficacy measurement; efficacy signals at this stage need Phase 2/3 confirmation. (3) The figures are placebo-adjusted estimates from a preliminary analysis. That said, a 68% liver fat reduction in Phase 1 is a strong early efficacy signal, particularly because the placebo adjustment removes diet-and-lifestyle confounding. Full topline Phase 1 data are expected in Q4 2026, and Part 3B completion will likely be needed before Phase 2 initiation.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What diseases is DA-1726 being developed to treat?',
  'MetaVia is developing DA-1726 for five related metabolic conditions: (1) Obesity — the primary weight-loss indication; (2) MASLD (metabolic dysfunction-associated steatotic liver disease) — the new umbrella term for fatty liver disease linked to metabolic syndrome; (3) MASH (metabolic dysfunction-associated steatohepatitis) — the progressive inflammatory form of MASLD with fibrosis risk; (4) MetALD — MASLD with concomitant significant alcohol intake; (5) ALD (alcohol-related liver disease). The glucagon receptor agonism in DA-1726 is particularly well-suited to liver disease because GCGR agonism directly drives hepatic fat oxidation — removing fat from the liver through a mechanism orthogonal to calorie restriction. The 68% liver fat reduction at Phase 1 interim supports this mechanistic rationale. As of November 2026, no liver-specific drug has been fully approved for MASH by the FDA, though resmetirom (Rezdiffra) received accelerated approval in March 2024. If Phase 2/3 data confirm the Phase 1 liver fat signal, DA-1726 could be a significant entrant in the increasingly competitive MASH pipeline.'
);

-- ============================================================
-- Junction table: Peptide_FAQs (run after the above inserts; uses slug-based subquery)
-- ============================================================

-- DA-1726 FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'da-1726'
  AND f.question = 'What is DA-1726 and how does it work differently from semaglutide or tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'da-1726'
  AND f.question = 'What did the DA-1726 Phase 1 results show, and are they reliable?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'da-1726'
  AND f.question = 'What diseases is DA-1726 being developed to treat?';
