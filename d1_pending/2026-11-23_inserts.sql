-- MinMaxMuscle D1 Inserts — 2026-11-23
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compound: ASC37i (Ascletis Pharma)
-- Discovery trigger: Ascletis PR Newswire announcement, November 23, 2026
--   "Ascletis Announces Initiation of U.S. Phase I Study of ASC37i, a Potentially
--    First-in-Class Once-Monthly to Once-Quarterly GLP-1R/GIPR/GCGR Triple Peptide
--    Agonist, for the Treatment of Obesity"
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-23_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-18_inserts.sql)

-- ============================================================
-- PEPTIDE: ASC37i
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'ASC37i',
  'asc37i',
  'Metabolic & Weight Loss',
  'Once-monthly to once-quarterly GLP-1R/GIPR/GCGR triple peptide agonist for obesity; Phase 1 FIH US study initiated November 2026 using proprietary SALD/ULAP ultra-long-acting depot formulation',
  'ASC37i is an investigational triple peptide agonist that simultaneously targets the glucagon-like peptide-1 receptor (GLP-1R), glucose-dependent insulinotropic polypeptide receptor (GIPR), and glucagon receptor (GCGR). It was developed by Ascletis Pharma using a proprietary AI-assisted structure-based drug discovery platform combined with their Ultra-Long-Acting Peptide (ULAP) technology and Self-Assembling Lipid Depot (SALD) subcutaneous formulation. On November 23, 2026, Ascletis announced the initiation of a U.S. Phase 1 first-in-human (FIH) clinical study after receiving FDA IND clearance, making ASC37i among the first triple agonists to enter human trials with an ultra-long-acting dosing interval of once monthly to once quarterly.

Mechanistic Background: Triple agonism of GLP-1R, GIPR, and GCGR builds on the proven dual-agonist approach of tirzepatide (GLP-1R/GIPR) and the investigational triple agonist retatrutide (GLP-1R/GIPR/GCGR, Lilly, Phase 3). Adding GCGR agonism to GLP-1R/GIPR activation introduces a third satiety and energy-expenditure mechanism. Glucagon receptor activation drives hepatic glucose output, thermogenesis, and fatty acid oxidation, complementing the appetite suppression and insulin-sensitizing effects of GLP-1 and GIP co-agonism. Triple agonism may also provide additive reductions in liver fat (MASLD/MASH), which is a mechanistic differentiator vs. pure GLP-1 mono-agonists.

The Strategic Differentiator — SALD Depot Formulation: What distinguishes ASC37i from earlier triple agonists (including retatrutide, which requires weekly injections) is its ULAP/SALD platform. The Self-Assembling Lipid Depot technology forms an in situ subcutaneous depot after injection from which the peptide is released slowly at a preprogrammed rate, extending the effective half-life of the peptide to enable once-monthly or potentially once-quarterly subcutaneous dosing. This compares favorably with weekly injection schedules required by all currently approved GLP-1-class drugs (semaglutide, tirzepatide, liraglutide) and would represent a major convenience improvement for patients if clinical safety and efficacy are confirmed. At the time of the announcement, the company stated that ASC37i is classified as a biologic (macromolecule), placing it on the BLA (Biologics License Application) regulatory pathway — which carries twelve years of data exclusivity and statutory protections against pharmacy compounding that small-molecule GLP-1 agonists lack.

Preclinical Evidence: Results from diet-induced obese (DIO) mouse studies and non-human primate (NHP) pharmacokinetics support the SALD formulation and the triple-agonist approach.

Mouse efficacy (DIO model, internal data, presented ObesityWeek 2026 poster and select investor releases):
- In an 11-day head-to-head DIO mouse study, ASC37 (the same compound) showed statistically significant 88% greater relative body weight reduction compared to tirzepatide at the same molar dose of 1 nmol/kg.
- Dose-dependent weight loss of up to 41.5% was observed in DIO mice.
- Weight loss was not associated with disproportionate lean mass loss in reported data, though full body composition analysis in humans is not yet available.

NHP pharmacokinetics:
- Average observed half-life for ASC37 was approximately 7-fold longer than retatrutide in NHP pharmacokinetic studies.
- Retatrutide''s half-life is approximately 6 days (enabling weekly dosing in humans); a 7-fold extension would project to approximately 42 days, supporting monthly or longer dosing intervals.
- These are NHP PK projections; human half-life must be confirmed in Phase 1.

Clinical Program (Phase 1 FIH, US, initiated November 23, 2026):
Trial design: Randomized, double-blind, placebo-controlled Phase 1 study in otherwise healthy adults with obesity (BMI ≥ 30 kg/m²) or overweight (BMI 27–<30 kg/m²) with at least one weight-related comorbidity. Objectives: safety, tolerability, pharmacokinetics, and pharmacodynamics of single and multiple ascending doses of ASC37i administered subcutaneously. The IND clearance followed FDA''s standard 30-day review. No enrollment numbers, trial registration identifier, or expected completion date were disclosed in the announcement.

No human efficacy, safety, or pharmacokinetic results are available as of November 23, 2026.

Regulatory and IP context: Ascletis holds a broad patent portfolio around ULAP-formulated peptide agonists. The BLA pathway is strategic: biologics are excluded from the FDA''s Category 1 503A compounding list that has affected small-molecule GLP-1 agonists (e.g., semaglutide was compounded widely from 2024–2026 during shortage periods). By filing as a biologic, ASC37i would be protected from this risk. Ascletis is a NASDAQ-listed company (ASCL) based in Hangzhou, China, with US clinical operations.

Competitive Landscape: ASC37i competes in the crowded next-generation obesity pipeline alongside Lilly''s retatrutide (GLP-1R/GIPR/GCGR, Phase 3 BLA filing planned Q1 2027) and other long-acting approaches (Prolynx SALD-amylin quarterly amylin agonist, preclinical only; Metsera MET-233i monthly amylin analog, Phase 1 complete; petrelintide monthly amylin, Phase 2b ongoing). The key differentiator is the combination of triple-agonist potency plus ultra-long-acting dosing — which no approved or Phase 3 compound has simultaneously achieved as of Q4 2026. If Phase 1 confirms safety, tolerability, and the projected half-life allowing monthly or quarterly dosing, ASC37i could represent a step-change in dosing convenience for the obesity drug class.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'ASC37',
  'Phase 1 Clinical',
  'GLP-1R/GIPR/GCGR triple peptide agonist biologic; Self-Assembling Lipid Depot (SALD) + Ultra-Long-Acting Peptide (ULAP) formulation; subcutaneous once-monthly to once-quarterly dosing; NHP half-life approximately 7× longer than retatrutide; 41.5% weight loss in DIO mice; BLA pathway; developed by Ascletis Pharma (NASDAQ: ASCL), Hangzhou, China; molecular weight not disclosed',
  'https://www.prnewswire.com/news-releases/ascletis-announces-initiation-of-us-phase-i-study-of-asc37i-a-potentially-first-in-class-once-monthly-to-once-quarterly-glp-1rgiprgcgr-triple-peptide-agonist-for-the-treatment-of-obesity-302947975.html,https://www.rttnews.com/3717093/ascletis-starts-phase-1-study-of-ultra-long-acting-obesity-candidate-stock-up.aspx,https://en.prnasia.com/releases/apac/ascletis-announces-initiation-of-u-s-phase-i-study-of-asc37i-a-potentially-first-in-class-once-monthly-to-once-quarterly-glp-1r-gipr-gcgr-triple-peptide-agonist-for-the-treatment-of-obesity-557704.shtml,https://pharmashots.com/37993/ascletis-asc37i-phase-1-us-obesity-triple-agonist',
  65,
  '2026-11-23',
  NULL
);

-- ============================================================
-- FAQs: ASC37i (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How is ASC37i different from retatrutide if both are triple agonists?',
  'Both ASC37i and retatrutide (Lilly) target GLP-1R, GIPR, and GCGR, but they differ in two key ways. First, formulation and dosing: retatrutide requires weekly subcutaneous injection, while ASC37i uses Ascletis'' proprietary SALD (Self-Assembling Lipid Depot) technology to extend the dosing interval to once monthly or even once quarterly. In non-human primate studies, ASC37i''s half-life was approximately 7-fold longer than retatrutide''s. Second, development stage: retatrutide is in Phase 3 with a BLA filing planned for Q1 2027; ASC37i initiated a Phase 1 first-in-human study in November 2026, so there are no human safety or efficacy data yet. If the extended dosing interval is confirmed in humans, ASC37i would offer a meaningfully different patient experience — quarterly injections vs. weekly — assuming comparable efficacy and safety.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the SALD (Self-Assembling Lipid Depot) technology in ASC37i?',
  'SALD stands for Self-Assembling Lipid Depot, a subcutaneous drug delivery platform developed by Ascletis as part of its Ultra-Long-Acting Peptide (ULAP) technology. After a standard subcutaneous injection, the SALD formulation spontaneously forms an in situ gel or depot at the injection site. The peptide drug is slowly and continuously released from this depot, extending the effective half-life far beyond what the peptide''s intrinsic stability would allow. The rate of release — and therefore the dosing interval — can be tuned by adjusting the lipid composition and linker chemistry. This approach is similar in concept to the hydrogel microsphere platform used by Prolynx for its long-acting amylin programs, and is distinct from the fatty acid protractor approach used in semaglutide and berobenatide to extend half-life via albumin binding. The SALD approach is designed to allow an injection volume of one milliliter or less, which is compatible with patient self-administration via prefilled pen. As of November 2026, SALD''s performance in humans is unproven; Phase 1 will establish whether the projected once-monthly or quarterly dosing interval is achievable.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why does ASC37i use the BLA pathway instead of the NDA pathway?',
  'ASC37i is classified as a biologic because it is a large peptide molecule (above the threshold that the FDA uses to distinguish biologics from small-molecule drugs). Biologics are regulated under the Public Health Service Act and require a Biologics License Application (BLA) rather than a New Drug Application (NDA). The BLA pathway has two practical consequences. First, it confers twelve years of reference product exclusivity from approval, compared to five years for small-molecule drugs — giving ASC37i longer market protection if approved. Second, and strategically important in the current obesity drug market, FDA-regulated compounding pharmacies cannot compound biologic drugs under the 503A or 503B compounding exemptions that allowed widespread compounding of small-molecule GLP-1 agonists (such as semaglutide and tirzepatide) during shortage periods from 2024 to 2026. This BLA classification means that if ASC37i is approved, Ascletis will have exclusive manufacturing rights with no compounding exposure — a significant commercial advantage Lilly and Novo Nordisk lack with their small-molecule GLP-1 candidates. Retatrutide (Lilly) is also a large peptide biologic on the BLA pathway, for the same reasons.'
);

-- ============================================================
-- Peptide_FAQs junction: link the 3 FAQs above to ASC37i
-- NOTE: These INSERT statements depend on the auto-assigned IDs
-- from the FAQs inserts above. Use last_insert_rowid() logic or
-- run as a single transaction with known FAQ IDs if applying manually.
-- For safety, use the query below to look up FAQ IDs after insert:
--   SELECT id FROM FAQs WHERE question LIKE '%retatrutide%' AND question LIKE '%ASC37i%';
--   SELECT id FROM FAQs WHERE question LIKE '%SALD%';
--   SELECT id FROM FAQs WHERE question LIKE '%BLA%ASC37i%';
-- Then:
--   INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id) VALUES (<asc37i_id>, <faq_id>);
-- ============================================================
