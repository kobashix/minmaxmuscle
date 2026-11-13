-- MinMaxMuscle D1 Inserts - Generated 2026-11-13
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: Enicepatide
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-13_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-12_updates.sql)

-- ============================================================
-- PEPTIDE 1: Enicepatide (CT-388 / RO7795068)
-- Discovery trigger: ObesityWeek 2026 preview coverage (November 13, 2026) surfaces
--   ZYNERGY combination trial with petrelintide (not yet recruiting, November 2026 start).
--   Phase 2 obesity results (22.7% weight loss, 48 weeks) confirmed June 2026;
--   Phase 2 T2D results (15.5% weight loss, 48 weeks) announced September 22, 2026.
--   Phase 3 ENITH-1 and ENITH-2 trials confirmed recruiting.
--   Not previously staged. Qualifies as novel compound with Phase 2+ human data.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Enicepatide',
  'enicepatide',
  'Metabolic & Weight Loss',
  'Once-weekly GLP-1/GIP biased dual agonist (Roche/Carmot CT-388); 22.7% mean weight loss at 48 weeks in Phase 2 obesity; Phase 3 ENITH trials underway',
  'Enicepatide (also known as CT-388 and RO7795068) is an investigational once-weekly subcutaneous peptide agonist that simultaneously activates the GLP-1 receptor (GLP-1R) and the glucose-dependent insulinotropic polypeptide receptor (GIPR). It was developed by Carmot Therapeutics using their Triple Peptide Chemotype Approach (TPCA), a platform for designing multi-receptor peptide agonists, and acquired by Roche in December 2023. A key design feature distinguishes enicepatide from tirzepatide (Mounjaro/Zepbound), the first approved GLP-1/GIP dual agonist: enicepatide is engineered as a biased agonist with minimized β-arrestin recruitment on both receptors. β-arrestin signaling mediates receptor internalization and some side effects; reducing it while maintaining G-protein signaling (the therapeutic pathway) may improve the duration of receptor engagement and tolerability profile. Tirzepatide is also a biased agonist, but with a different bias profile; enicepatide represents a distinct molecule with its own receptor pharmacology.

Phase 2 (non-diabetic obesity, N=~500): Results from the Phase 2 dose-finding trial in adults with overweight or obesity without type 2 diabetes showed up to 22.7% mean body weight reduction at 48 weeks at the highest dose. Approximately 26% of participants receiving the highest dose lost ≥30% of their body weight. Discontinuations due to adverse events: 5.9% (enicepatide) vs. 1.3% (placebo). Adverse events were predominantly gastrointestinal and consistent with the GLP-1 drug class (nausea, vomiting, diarrhea). This trial demonstrated efficacy numerically comparable to or above Phase 2 tirzepatide weight-loss data, though direct cross-trial comparison is not valid due to different populations, durations, and dose structures. The June 2026 approximate disclosure was followed by the full readout.

Phase 2 (obesity + type 2 diabetes, NCT07351058, N=447): Roche announced positive results on September 22, 2026 (Roche ad hoc release, Art. 53 LR). At the highest 24 mg dose: mean weight loss of 15.5% at 48 weeks; approximately 62% of participants achieved HbA1c levels below 5.7% (indicating a near-normoglycemic response in a T2DM population). The 15.5% figure is lower than the non-diabetic trial, which is consistent with other GLP-1-class drugs in which T2DM populations lose somewhat less weight. The glycemic benefit — 62% achieving HbA1c < 5.7% — is clinically remarkable and positions enicepatide as a potential best-in-class option for obesity complicated by type 2 diabetes.

Phase 3 program: Two Phase 3 trials have been initiated: ENITH-1 (adults with overweight or obesity without T2DM; NCT07351045) and ENITH-2 (adults with overweight or obesity and T2DM; NCT07351058). These registrational trials will determine regulatory approval. No completion dates have been published.

Combination program: Roche and Zealand Pharma have planned the ZYNERGY Phase 2 trial combining enicepatide with petrelintide (amylin analog) in adults with obesity. The trial (NCT07589686) is listed as "not yet recruiting" with an estimated start of November 2026. The scientific rationale is to simultaneously engage GLP-1 receptors, GIP receptors, and amylin receptors — three mechanistically distinct satiety pathways — potentially yielding additive or synergistic weight loss beyond any dual-receptor agent.

Enicepatide is investigational; it is not approved by the FDA or any regulatory authority as of November 2026.',
  'CT-388, RO7795068',
  'Phase 3 Clinical',
  'Peptide GLP-1/GIP biased dual receptor agonist; minimized β-arrestin recruitment on both GLP-1R and GIPR; once-weekly subcutaneous injection; developed by Carmot Therapeutics (CT-388) using TPCA platform; acquired by Roche December 2023; CAS 2919675-94-6',
  'https://www.roche.com/media/releases/med-cor-2026-09-22,https://finance.yahoo.com/healthcare/articles/roche-obesity-drug-enicepatide-delivers-134248476.html,https://www.yahoo.com/news/science/articles/roche-obesity-drug-helps-patients-233112132.html,https://clinicaltrials.gov/study/NCT07351058,https://clinicaltrials.gov/study/NCT07589686',
  90,
  '2026-11-13',
  NULL
);

-- ============================================================
-- FAQs: Enicepatide (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does enicepatide differ from tirzepatide?',
  'Both enicepatide (Roche/Carmot CT-388) and tirzepatide (Lilly, Mounjaro/Zepbound) are GLP-1/GIP dual receptor agonists, but they are distinct peptides with different molecular designs. The key pharmacological difference is bias profile: enicepatide is specifically engineered to minimize β-arrestin recruitment on both receptors, while tirzepatide has its own bias characteristics. β-arrestin mediates receptor internalization and may contribute to some side effects; reducing it while preserving G-protein signaling (the primary therapeutic pathway) is a design strategy aimed at longer effective receptor engagement and potentially improved tolerability. In terms of efficacy, enicepatide Phase 2 data showed 22.7% mean weight loss at 48 weeks in obesity (vs. tirzepatide Phase 3 ~21% at 72 weeks in SURMOUNT-1) — these figures come from different-duration trials, so no direct conclusion is valid. Both compounds are in Phase 3 registration trials; whether enicepatide offers superior efficacy, tolerability, or cardiovascular outcomes over tirzepatide will only be answered by head-to-head trials, none of which are currently announced.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the ZYNERGY trial combining enicepatide with petrelintide?',
  'ZYNERGY (NCT07589686) is a Phase 2 dose-finding study evaluating the combination of enicepatide (Roche''s GLP-1/GIP dual agonist) with petrelintide (Zealand Pharma''s once-weekly amylin analog). It is sponsored by Roche in collaboration with Zealand and was listed as "not yet recruiting" with an estimated start of November 2026. The scientific rationale is mechanistic non-overlap: enicepatide engages GLP-1 receptors (hypothalamic and brainstem satiety signaling) and GIP receptors (adipocyte insulin sensitivity and thermogenesis), while petrelintide engages amylin receptors in the brainstem area postrema — a structurally and functionally distinct satiety circuit. The three-receptor combination (GLP-1R + GIPR + amylin receptor) mirrors the logic of Eli Lilly''s EloraTZP program (eloralintide + tirzepatide) and could potentially achieve 30%+ weight loss if the pathways add synergistically. Neither drug is approved; this combination trial is very early stage.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'When will enicepatide be approved and available?',
  'Enicepatide is not approved anywhere as of November 2026. Phase 3 ENITH-1 and ENITH-2 trials are recruiting, but no primary completion dates have been published, and typical Phase 3 obesity trials run 60–80+ weeks after full enrollment. If Roche maintains the development timeline and results are positive, an initial NDA/BLA filing might occur around 2027–2028, with potential approval in 2028 or later — a speculative estimate based on the current stage. These timelines are uncertain: enrollment pace, interim efficacy signals, any safety findings, and regulatory review timelines all affect them. Enicepatide is not expected to be commercially available for several years, and it will not be available outside of clinical trials before approval.'
);

-- ============================================================
-- Junction table: Peptide_FAQs
-- ============================================================

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'enicepatide'
  AND f.question = 'How does enicepatide differ from tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'enicepatide'
  AND f.question = 'What is the ZYNERGY trial combining enicepatide with petrelintide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'enicepatide'
  AND f.question = 'When will enicepatide be approved and available?';
