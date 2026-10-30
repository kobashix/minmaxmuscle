-- MinMaxMuscle D1 Inserts - Generated 2026-10-30
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: Peptides, FAQs, Peptide_FAQs

-- ============================================================
-- PEPTIDE 1: Survodutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Survodutide',
  'survodutide',
  'Metabolic & Weight Loss',
  'GLP-1/glucagon dual agonist; Phase 3 NEJM-published; SYNCHRONIZE-1 and SYNCHRONIZE-2 results 2026',
  'Survodutide (BI 456906) is a once-weekly injectable dual agonist of the GLP-1 receptor (GLP1R) and glucagon receptor (GCGR), co-developed by Boehringer Ingelheim and Zealand Pharma. Structurally derived from oxyntomodulin — an endogenous incretin hormone — survodutide adds thermogenic and hepatic fat-oxidation effects (via glucagon receptor) to the appetite suppression and glycemic benefit of GLP-1 receptor activation. Phase 3 SYNCHRONIZE-1 (no T2D, n=725): 16.6% body weight reduction vs 3.2% placebo at 76 weeks (efficacy estimand); 85.1% achieving ≥5% weight loss; published in The New England Journal of Medicine (ADA 2026 simultaneous release). Phase 3 SYNCHRONIZE-2 (with T2D, ~752 participants): up to 13.1% weight loss vs 3.1% placebo at 76 weeks; HbA1c reduction up to 1.21%; published in NEJM on October 1, 2026 (EASD 2026 simultaneous release). Phase 3 SYNCHRONIZE-MASLD: significant liver fat reduction (Nature Medicine, 2026). SYNCHRONIZE-CVOT (cardiovascular outcomes trial) readout expected Q4 2026. Not yet filed for regulatory approval as of October 2026.',
  'BI 456906',
  'Phase 3 Clinical',
  'Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; derived from oxyntomodulin; ~29 amino acids',
  'https://www.nejm.org/doi/full/10.1056/NEJMoa2607219,https://www.boehringer-ingelheim.com/us/human-health/metabolic-diseases/results-phase-iii-synchronize-1-obesity-trial,https://www.healio.com/news/endocrinology/20261001/survodutide-induces-impressive-amount-of-weight-loss-in-type-2-diabetes-and-obesity',
  88,
  '2026-10-30',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Petrelintide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Petrelintide',
  'petrelintide',
  'Metabolic & Weight Loss',
  'Amylin receptor agonist by Zealand/Roche; best-in-class tolerability; Phase 3 underway',
  'Petrelintide (ZP8396) is a once-weekly injectable amylin receptor agonist developed by Zealand Pharma in partnership with Roche. Unlike GLP-1-class drugs, petrelintide acts exclusively through brainstem amylin receptor pathways to suppress appetite and slow gastric emptying, without directly activating GLP-1 or glucagon receptors. This distinct mechanism profile translates to a markedly better GI tolerability: in Phase 2, gastrointestinal adverse events occurred at rates similar to placebo — a key differentiator from GLP-1 drugs and dual agonists. Phase 2 ZUPREME-1 (obesity, no T2D): 10.7% weight loss vs 1.7% placebo at Week 42 (efficacy estimand); results published in The Lancet Diabetes & Endocrinology (September 29, 2026; EASD 2026). Phase 2 ZUPREME-2 (obesity + T2D, n=220): 9.2% weight loss vs 2.0% placebo at Week 28; HbA1c reduced 0.65% vs placebo increase; discontinuations due to AEs 1.9% (petrelintide) vs 1.7% (placebo) — essentially identical to placebo in GI tolerability. Positive ZUPREME-2 topline announced October 7, 2026. Phase 3 program underway in partnership with Roche.',
  'ZP8396',
  'Phase 3 Clinical',
  'Peptide analog; amylin receptor agonist; once-weekly SC injection; distinct from GLP-1 class; brainstem satiety mechanism',
  'https://www.globenewswire.com/news-release/2026/09/29/3371443/0/en/zealand-pharma-to-present-additional-data-from-phase-2-zupreme-1-trial-for-petrelintide-at-easd-2026-and-announces-publication-of-trial-results-in-the-lancet-diabetes-endocrinology.html,https://www.globenewswire.com/news-release/2026/10/07/3376750/0/en/zealand-pharma-announces-positive-phase-2-zupreme-2-topline-results-for-amylin-analog-petrelintide-in-people-with-overweight-or-obesity-and-type-2-diabetes.html',
  85,
  '2026-10-30',
  NULL
);

-- ============================================================
-- FAQs for Survodutide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does survodutide compare to semaglutide and tirzepatide for weight loss?',
  'Survodutide's Phase 3 SYNCHRONIZE-1 trial (no type 2 diabetes) reported 16.6% mean body weight loss at 76 weeks — comparable to tirzepatide's ~20-22% at higher doses and better than semaglutide's ~15%. In adults with type 2 diabetes (SYNCHRONIZE-2), weight loss was 13.1% vs 3.1% placebo, alongside an HbA1c reduction of up to 1.21%, both published in The New England Journal of Medicine in October 2026. Survodutide adds a glucagon receptor component that drives hepatic fat oxidation, giving it best-in-class liver fat reduction vs pure GLP-1 drugs. No approved agent yet — a regulatory filing has not been announced as of October 2026.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the mechanism of survodutide and why does the glucagon component matter?',
  'Survodutide is a peptide analog derived from oxyntomodulin, an endogenous hormone secreted after eating that naturally activates both GLP-1 (GLP1R) and glucagon (GCGR) receptors. The GLP-1 component suppresses appetite via the hypothalamus and slows gastric emptying. The glucagon receptor component, distinct from the GLP-1 pathway, increases hepatic fat oxidation and thermogenesis — mechanisms not engaged by pure GLP-1 agonists like semaglutide. This dual action explains survodutide's particularly strong results in MASLD (metabolic-associated steatotic liver disease): the SYNCHRONIZE-MASLD trial reported liver fat reduction published in Nature Medicine in 2026. The trade-off is that glucagon receptor agonism can raise blood glucose slightly, so dual agonists must carefully balance the two receptor targets.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is survodutide approved or available anywhere?',
  'No. Survodutide is not FDA-approved, EMA-approved, or approved by any regulatory agency as of October 2026. Boehringer Ingelheim and Zealand Pharma have completed three positive Phase 3 trials (SYNCHRONIZE-1, SYNCHRONIZE-2, and SYNCHRONIZE-MASLD), and a cardiovascular outcomes trial (SYNCHRONIZE-CVOT) readout is expected by end of 2026. A regulatory filing for approval has not been announced publicly. It is available only in authorized clinical trials. Sourcing it from research peptide vendors carries significant risks: no quality control, no established human dosing, and no safety monitoring. Research use only.'
);

-- ============================================================
-- FAQs for Petrelintide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes petrelintide different from GLP-1 drugs like semaglutide?',
  'Petrelintide is a pure amylin receptor agonist — it acts on brainstem amylin receptors to suppress appetite and slow gastric emptying, entirely distinct from the hypothalamic GLP-1 receptor pathway. This mechanistic separation explains its standout tolerability: GI adverse events in ZUPREME-1 and ZUPREME-2 Phase 2 trials occurred at essentially the same rate as placebo, compared to the 30-40% nausea rates commonly seen with GLP-1 agonists. Weight loss in Phase 2 (10.7% in ZUPREME-1, 9.2% in ZUPREME-2) is somewhat lower than GLP-1 agonists at comparable timepoints, but the tolerability profile may make petrelintide suitable for patients who cannot tolerate GLP-1-class drugs, or as a combination partner to enhance efficacy while managing GI side effects. Roche's Phase 3 partnership reflects strong industry confidence in the compound.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Has petrelintide been approved anywhere?',
  'No. Petrelintide is fully investigational as of October 2026. Zealand Pharma published Phase 2 ZUPREME-1 data in The Lancet Diabetes & Endocrinology (September 2026) and announced positive ZUPREME-2 topline results on October 7, 2026. A Phase 3 program is underway, conducted in partnership with Roche. Phase 3 results and regulatory filings will take additional years. Petrelintide is not available commercially, and sourcing it outside of clinical trials carries undetermined risks — it should only be used within approved study protocols.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is petrelintide related to pramlintide or cagrilintide?',
  'All three are amylin analogs, but they are distinct molecules with different pharmacokinetic profiles. Pramlintide (Symlin) is a short-acting amylin analog requiring multiple daily injections; it has FDA approval for type 1 and type 2 diabetes as an adjunct to mealtime insulin, with modest weight effects. Cagrilintide (Novo Nordisk) is a long-acting amylin analog in a once-weekly injectable formulation, currently most studied in the CagriSema combination (cagrilintide + semaglutide). Petrelintide (Zealand/Roche) is a separate once-weekly amylin analog with a distinct chemical structure, developed independently and showing Phase 2 weight loss of 10.7% (ZUPREME-1) with notably better GI tolerability than GLP-1 drugs. They all act on the same amylin receptor but differ in half-life, potency, and clinical profile.'
);

-- ============================================================
-- Peptide_FAQs junction
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'survodutide'
    AND f.question IN (
      'How does survodutide compare to semaglutide and tirzepatide for weight loss?',
      'What is the mechanism of survodutide and why does the glucagon component matter?',
      'Is survodutide approved or available anywhere?'
    );

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'petrelintide'
    AND f.question IN (
      'What makes petrelintide different from GLP-1 drugs like semaglutide?',
      'Has petrelintide been approved anywhere?',
      'Is petrelintide related to pramlintide or cagrilintide?'
    );
