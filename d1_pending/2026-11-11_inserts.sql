-- MinMaxMuscle D1 Inserts - Generated 2026-11-11
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from prior pending SQL files
-- Apply in order after all prior pending SQL files (chronological order: 10-29, 11-01, 11-03, 11-05, 11-06, 11-07, 11-08, 11-09, 11-11)
--
-- To apply:
--   Option 1: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-11_inserts.sql
--   Option 2: Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console > paste SQL

-- ============================================================
-- PEPTIDE 1: Cagrilintide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Cagrilintide',
  'cagrilintide',
  'Metabolic & Weight Loss',
  'Once-weekly long-acting amylin analog for obesity; Phase 3 REDEFINE 1 (NEJM 2025): 11.8% monotherapy weight loss vs 2.3% placebo at 68 weeks; as CagriSema combo with semaglutide: 20.4–22.7% weight loss Phase 3; FDA NDA filed December 2025; targets distinct satiety pathway from GLP-1 drugs via area postrema amylin receptors',
  'Cagrilintide (INN; development code AM833) is a long-acting, once-weekly amylin receptor agonist developed by Novo Nordisk. It is a 20-amino acid analog of human amylin — a pancreatic hormone co-secreted with insulin — engineered with a fatty acid side chain for albumin binding that extends the native amylin half-life of minutes to approximately 7 days, enabling once-weekly subcutaneous dosing.

Background and Mechanism: Amylin (also called islet amyloid polypeptide, IAPP) is a 37-amino acid peptide hormone secreted by pancreatic beta cells alongside insulin in response to nutrient ingestion. Cagrilintide is a truncated, chemically modified analog that retains amylin receptor activity while adding extended duration of action. It engages a distinct receptor family from GLP-1 drugs:

1. Amylin receptors (AMY1R, AMY2R, AMY3R): These are heterodimers of the calcitonin receptor (CTR) paired with receptor activity-modifying proteins (RAMP1, RAMP2, RAMP3). Amylin receptors are highly expressed in the area postrema (AP) and nucleus tractus solitarius (NTS) in the brainstem — a different neural circuit than the arcuate hypothalamus and vagal afferents that GLP-1 primarily targets.

2. Calcitonin receptor agonism: Through the shared CTR component, cagrilintide also engages calcitonin-receptor-mediated signaling.

3. CGRP receptor agonism: At pharmacological concentrations, cagrilintide binds CGRP receptors (CTR + RAMP1), contributing to vasodilatory and neurological signaling.

The amylin-circuit mechanism is additive to GLP-1R agonism rather than overlapping, which is why the cagrilintide + semaglutide fixed-dose combination (CagriSema) demonstrates substantially greater weight loss than either drug alone.

Physiological actions of amylin receptor agonism include: (1) reduction of food intake via central appetite suppression; (2) slowing of gastric emptying (independent of GLP-1R signaling); (3) suppression of postprandial glucagon secretion; (4) modulation of glucose homeostasis through non-insulin-dependent mechanisms. The combinatorial satiety signaling — both the arcuate/vagal GLP-1 pathway and the brainstem amylin pathway — is the mechanistic basis for the additive efficacy seen in combination.

Phase 3 REDEFINE Program: The REDEFINE program evaluated cagrilintide both as monotherapy and in combination with semaglutide 2.4 mg (CagriSema) across weight management and type 2 diabetes indications. REDEFINE 1 (n > 3,400 adults with obesity, no T2D, 68 weeks, NCT05669755) published in the New England Journal of Medicine (2025) is the definitive Phase 3 anchor for cagrilintide monotherapy:

- Cagrilintide 2.4 mg monotherapy: −11.8% mean body weight reduction vs −2.3% placebo at 68 weeks (placebo-adjusted −9.5%). This represents the first Phase 3 randomized controlled trial of a long-acting amylin analog as monotherapy in obesity — a landmark result for a novel mechanism.
- CagriSema 2.4 mg/2.4 mg arm: −20.4% to −22.7% mean body weight reduction at 68 weeks — a result that rivals the best GLP-1/GIP dual agonists in head-to-head caliber evidence.

Phase 3 REIMAGINE Program in Type 2 Diabetes (2026): Three Lancet-family publications reported CagriSema efficacy in T2D:
- REIMAGINE 1 (Lancet Diabetes & Endocrinology, 2026, 40 weeks): CagriSema reduced HbA1c by −1.8% vs placebo
- REIMAGINE 2 (Lancet Diabetes & Endocrinology, 2026, 68 weeks): HbA1c reduction −1.91%
- REIMAGINE 3 (The Lancet 2026;408(10549):38–51, 40 weeks): HbA1c reduction −2.33% (the strongest of the three)

REIMAGINE 5 / REDEFINE 9 (topline, September 21, 2026): Novo Nordisk announced topline results showing CagriSema 1.0 mg/1.0 mg achieved 12.4% weight loss in T2D and 21.0% in adults with obesity — with REIMAGINE 5 specifically comparing CagriSema to tirzepatide, where CagriSema demonstrated superior weight loss. Full peer-reviewed publication for REIMAGINE 5 is pending as of November 2026.

Regulatory Status: Novo Nordisk filed a New Drug Application (NDA) with the FDA for CagriSema 2.4 mg/2.4 mg for chronic weight management in December 2025, based primarily on REDEFINE 1 and REDEFINE 2 pivotal data. An FDA decision is expected in late 2026 or early 2027. Cagrilintide as a standalone agent is under investigation in the dedicated RENEW Phase 3 program for obesity, initiated in 2026. Neither CagriSema nor standalone cagrilintide is currently FDA-approved.

Clinical Context — November 2026: CagriSema represents the most advanced amylin-mechanism compound in clinical development for obesity. The FDA NDA review makes this a compound of immediate near-term relevance — an approval would create the first FDA-cleared amylin-based weight management therapy since pramlintide (Symlin), a short-acting amylin analog approved for T1D/T2D adjunct use in 2005. Cagrilintide is mechanistically distinct from amycretin (Novo Nordisk''s single-molecule oral GLP-1/amylin fusion peptide, still in Phase 1) — amycretin covalently links GLP-1 and amylin agonism into a single peptide, while cagrilintide is a pure amylin analog combined with semaglutide as a separate drug.

Research Limitations and Disclaimers: Cagrilintide and CagriSema are not FDA-approved or approved anywhere for weight management as of November 2026. REIMAGINE 5 topline results have not been peer-reviewed. Some Phase 3 efficacy figures vary across sources (20.4% vs 22.7% for REDEFINE 1 CagriSema arm) due to differing analysis sets; primary publications should be consulted. The long-term cardiovascular outcomes of CagriSema are under investigation in REDEFINE 3 (American Heart Journal baseline paper, October 2026); results are not yet available. Adverse events across REDEFINE and REIMAGINE programs are consistent with the GLP-1 drug class: nausea, vomiting, diarrhea, and constipation, predominantly during dose titration. Research compounds discussed for educational purposes. Not FDA-approved for human use where applicable. Consult a healthcare provider before use.',
  'AM833, CagriSema component',
  'Phase 3 Clinical',
  'Amylin analog; 20-amino acid truncated human amylin derivative; fatty acid side chain for albumin binding; MW ~2100 Da; once-weekly SC injection; agonist: AMY1R/AMY2R/AMY3R (amylin receptors), calcitonin receptor (CTR), CGRP receptor; half-life ~7 days; developed by Novo Nordisk; CagriSema fixed-dose combination with semaglutide 2.4 mg; doses evaluated in Phase 3: 0.5, 1.0, 2.4 mg weekly',
  'NEJM 2025 (Phase 3 REDEFINE 1 cagrilintide monotherapy and CagriSema arms),Lancet 2026;408(10549):38-51 (REIMAGINE 3 Phase 3 T2D),Lancet Diabetes Endocrinol 2026 (REIMAGINE 1 and 2 Phase 3 T2D),NCT05669755 (REDEFINE 1 ClinicalTrials.gov),GlobalNewsWire 2026-09-21 (REIMAGINE 5 / REDEFINE 9 topline)',
  98,
  '2026-11-11',
  NULL
);

-- ============================================================
-- FAQs: Cagrilintide (3 questions)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How is cagrilintide different from amycretin, semaglutide, and other obesity peptides?',
  'Cagrilintide targets a completely different receptor system than GLP-1 drugs. Semaglutide and liraglutide activate only GLP-1 receptors; tirzepatide adds GIP receptor agonism; retatrutide adds glucagon receptor agonism on top of GLP-1 and GIP. Cagrilintide activates amylin receptors — the same receptors the pancreatic hormone amylin binds — which are concentrated in the area postrema and nucleus tractus solitarius of the brainstem, a distinct neural circuit from the GLP-1-targeted arcuate hypothalamus and vagal pathways. This non-overlapping mechanism makes amylin agonism additive to GLP-1 agonism: when cagrilintide is combined with semaglutide as CagriSema, Phase 3 weight loss reaches 20–22%, well above either drug alone (semaglutide ~15%, cagrilintide ~12%). Amycretin is a different Novo Nordisk compound — a single-molecule oral peptide that chemically fuses GLP-1 and amylin receptor activity into one chain (Phase 1). Cagrilintide is a pure amylin analog injected weekly alongside semaglutide, not fused with it. The two are complementary research directions for the same mechanistic insight.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What do the REDEFINE Phase 3 trials show for cagrilintide?',
  'The REDEFINE program is the most robust Phase 3 evidence for an amylin-based obesity drug ever published. REDEFINE 1 (n > 3,400 adults with obesity, 68 weeks, published New England Journal of Medicine 2025) is the flagship trial. It included three arms: cagrilintide 2.4 mg alone (−11.8% weight loss vs −2.3% placebo, placebo-adjusted −9.5%), semaglutide 2.4 mg alone (approximately −15%), and CagriSema 2.4 mg/2.4 mg combined (−20.4% to −22.7% — consistent with the additive mechanism). These findings make CagriSema the highest-efficacy fixed-dose obesity drug combination in Phase 3 peer-reviewed data as of November 2026, rivaling retatrutide''s triple agonist approach. The REIMAGINE program in type 2 diabetes added three more Phase 3 trials (all published in Lancet-family journals in 2026), showing HbA1c reductions of 1.8–2.3% with CagriSema. Topline REIMAGINE 5 data (September 2026) showed CagriSema superior to tirzepatide for weight loss, though the peer-reviewed publication is pending.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the regulatory and approval timeline for cagrilintide in 2026–2027?',
  'Novo Nordisk submitted a New Drug Application (NDA) to the FDA for CagriSema (cagrilintide 2.4 mg + semaglutide 2.4 mg fixed-dose combination) for chronic weight management in December 2025. An FDA decision is expected in late 2026 or early 2027 — the standard 12-month review window for NDA submissions places it around December 2026 to Q1 2027. If approved, CagriSema would be the first amylin-mechanism weight management drug approved by the FDA since pramlintide (Symlin, 2005). Standalone cagrilintide is under Phase 3 evaluation in the RENEW program for obesity, initiated in 2026, with results likely years away. The safety profile across Phase 3 is consistent with GLP-1-class drugs: primarily GI adverse events (nausea, vomiting, diarrhea) during dose escalation. Neither CagriSema nor standalone cagrilintide is FDA-approved for any indication as of November 2026. Research compounds discussed for educational purposes. Not FDA-approved for human use where applicable. Consult a healthcare provider before use.'
);

-- ============================================================
-- Junction table: Peptide_FAQs (run after the above inserts)
-- ============================================================

-- Cagrilintide FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'cagrilintide'
  AND f.question = 'How is cagrilintide different from amycretin, semaglutide, and other obesity peptides?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'cagrilintide'
  AND f.question = 'What do the REDEFINE Phase 3 trials show for cagrilintide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'cagrilintide'
  AND f.question = 'What is the regulatory and approval timeline for cagrilintide in 2026–2027?';
