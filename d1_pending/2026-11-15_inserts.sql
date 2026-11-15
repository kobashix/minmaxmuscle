-- MinMaxMuscle D1 Inserts - Generated 2026-11-15
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: VK2735 (Viking Therapeutics), Berobenatide (Pfizer/Metsera)
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-15_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-14_inserts.sql)

-- ============================================================
-- PEPTIDE 1: VK2735
-- Discovery trigger: ObesityWeek 2026 research sweep (November 15, 2026).
--   Viking Therapeutics' VK2735 has injectable Phase 3 fully enrolled
--   (VANQUISH-1: enrollment completed November 2025; VANQUISH-2: enrollment completed
--   March 26, 2026) and oral Phase 2 VENTURE-Oral completed (12.2% weight loss at 13 weeks,
--   presented ECO 2026 May 12, 2026). Oral Phase 3 planned Q4 2026 / Q1 2027.
--   VK2735 is not in any prior discovery log. Distinct from all 20 previously staged compounds.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'VK2735',
  'vk2735',
  'Metabolic & Weight Loss',
  'Dual GLP-1/GIP receptor agonist peptide from Viking Therapeutics; injectable Phase 3 (VANQUISH-1 and VANQUISH-2 fully enrolled); oral tablet Phase 2 achieved 12.2% weight loss at 13 weeks; oral Phase 3 planned Q4 2026/Q1 2027; subcutaneous weekly and oral daily formulations',
  'VK2735 is an investigational dual agonist peptide targeting both the glucagon-like peptide-1 receptor (GLP-1R) and the glucose-dependent insulinotropic polypeptide receptor (GIPR), developed by Viking Therapeutics. It belongs to the same mechanistic class as tirzepatide (Eli Lilly, FDA-approved 2023), which is the most widely prescribed dual GLP-1/GIP agonist. VK2735 is distinguished by Viking''s claim of a differentiated receptor binding profile optimized for weight loss, though no head-to-head data against tirzepatide have been published. VK2735 is in clinical development in two formulations: a once-weekly subcutaneous (SC) injectable and a once-daily oral tablet — making it one of the few dual agonists pursuing both routes simultaneously.

Mechanism of Action: VK2735 activates the GLP-1 receptor (expressed in the pancreatic beta cells, hypothalamus, brainstem, stomach, and intestinal L-cells) and the GIP receptor (expressed in pancreatic beta cells, adipose tissue, and brain). GLP-1 receptor agonism suppresses appetite via hypothalamic and brainstem circuits, slows gastric emptying, stimulates glucose-dependent insulin secretion, and reduces postprandial glucagon. GIP receptor agonism improves insulin sensitivity, modulates adipogenesis, and potentiates GLP-1-driven insulin secretion synergistically. The dual mechanism drives greater weight loss than GLP-1 receptor agonism alone — demonstrated in tirzepatide''s SURMOUNT trials. VK2735 is designed to maximize this dual-receptor synergy.

Injectable Formulation — Phase 2 (VENTURE): The Phase 2 VENTURE trial (subcutaneous weekly dosing) completed enrollment in 2024 and results were published in The Journal of Obesity. Key results: mean placebo-adjusted body weight reduction of up to 14.7% from baseline after 13 weekly subcutaneous doses. No plateau was observed at 13 weeks, suggesting continued weight loss potential with extended treatment. The safety profile showed that the majority of adverse events were mild to moderate, predominantly gastrointestinal (nausea, constipation), and the drug was well tolerated. The VENTURE trial was not powered or designed to detect rare adverse events; long-term cardiovascular outcome data are not yet available.

Injectable Formulation — Phase 3 (VANQUISH): Viking is running two Phase 3 registration trials for the injectable formulation:
(1) VANQUISH-1: A pivotal 52-week Phase 3 efficacy trial in adults with obesity or overweight with weight-related comorbidity. Enrollment was completed in November 2025.
(2) VANQUISH-2: A 78-week Phase 3 trial in adults with obesity and type 2 diabetes. Viking announced enrollment completion on March 26, 2026. Both VANQUISH studies are expected to complete in 2027.

Oral Formulation — Phase 2 (VENTURE-Oral): Viking conducted a Phase 2 trial of an oral VK2735 tablet formulation (NCT06828055, VENTURE-Oral Dosing). The trial enrolled adults with obesity and was 13 weeks in duration. Top-line results (Viking IR, 2025): once-daily oral VK2735 achieved statistically significant, dose-dependent weight loss from baseline versus placebo in all dose arms evaluated. The highest oral dose achieved 12.2% mean weight loss from baseline at 13 weeks — the best reported result for an oral GLP-1-class peptide at a comparable timepoint among investigational agents not yet approved. For reference, oral semaglutide (Rybelsus/Wegovy pill) achieves approximately 15–17% weight loss at 68 weeks (not 13 weeks), and the oral GLP-1 program represents substantially greater convenience than weekly injections. Discontinuation rates due to adverse events were low and similar between VK2735 and placebo.

The oral Phase 2 full data were presented at the European Congress on Obesity (ECO 2026, May 12, 2026). An end-of-Phase 2 FDA meeting was completed, and Viking announced plans to advance oral VK2735 into Phase 3 development starting in 3Q–4Q26.

Competitive positioning: VK2735 competes directly with tirzepatide (FDA-approved, Lilly), which set the efficacy benchmark for dual GLP-1/GIP agonists. In the oral space, VK2735 competes with oral semaglutide (Wegovy pill, FDA-approved June 2026), ribupatide (Hengrui/Kailera, Phase 2), and orforglipron (Lilly oral small molecule GLP-1 RA, filing pending). VK2735''s oral Phase 2 result of 12.2% at 13 weeks is notably strong for a 13-week timepoint, and if Phase 3 results match, Viking would have a competitive oral obesity drug without the food restrictions required for oral semaglutide. VK2735 is not approved by the FDA or any regulatory authority as of November 2026.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'VK-2735',
  'Phase 3 Clinical',
  'Dual GLP-1R/GIPR peptide agonist; once-weekly subcutaneous injectable and once-daily oral tablet formulations; developed by Viking Therapeutics; injectable Phase 3 (VANQUISH-1 and VANQUISH-2 fully enrolled); oral Phase 2 completed (NCT06828055); oral Phase 3 planned Q4 2026 / Q1 2027; competitive with tirzepatide in mechanism',
  'https://ir.vikingtherapeutics.com/2026-05-12-Viking-Therapeutics-Presents-Data-from-its-13-Week-Phase-2-VENTURE-Oral-Dosing-Trial-of-VK2735-at-European-Congress-on-Obesity-ECO-2026,https://ir.vikingtherapeutics.com/2026-03-26-Viking-Therapeutics-Announces-Completion-of-Enrollment-in-Phase-3-VANQUISH-2-Trial-of-VK2735,https://clinicaltrials.gov/study/NCT06828055,https://www.prnewswire.com/news-releases/viking-therapeutics-announces-positive-top-line-results-from-phase-2-venture-oral-dosing-trial-of-vk2735-tablet-formulation-in-patients-with-obesity-302533355.html,https://vikingtherapeutics.com/wp-content/uploads/2026/05/VANQUISH-1-Phase-3-Trial-with-Enrollment-of-a-Diverse-Population-to-Test-Efficacy-of-Subcutaneous-VK2735-in-Adult-Participants-with-Obesity-or-Overweight-With-Weight-Related-Comorbidity.pdf',
  93,
  '2026-11-15',
  NULL
);

-- ============================================================
-- FAQs: VK2735 (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does VK2735 compare to tirzepatide?',
  'Both VK2735 and tirzepatide (Mounjaro/Zepbound) are dual GLP-1/GIP receptor agonist peptides. Tirzepatide is FDA-approved and in widespread clinical use — SURMOUNT-1 showed up to 22.5% weight loss at 72 weeks. VK2735 is still investigational, and no head-to-head trial has been conducted. The Phase 2 VENTURE injectable trial showed up to 14.7% weight loss at 13 weeks (a shorter timepoint than SURMOUNT-1), which is an encouraging early signal. Viking has claimed a differentiated receptor binding profile, but without published receptor pharmacology or head-to-head data, meaningful comparison is premature. The strategic differentiator Viking is pursuing is the oral formulation: tirzepatide is currently injectable only (as of November 2026), while VK2735''s oral Phase 2 achieved 12.2% weight loss at 13 weeks, with an oral Phase 3 planned for late 2026 or early 2027.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did the oral VK2735 Phase 2 trial show?',
  'The Phase 2 VENTURE-Oral Dosing trial (NCT06828055) tested once-daily oral VK2735 tablets in adults with obesity over 13 weeks. Top-line results announced by Viking: statistically significant, dose-dependent weight loss vs placebo from Week 1 at all doses above 15 mg, with the highest dose achieving 12.2% mean weight loss from baseline at 13 weeks. Discontinuation rates due to adverse events were low and comparable to placebo, with the majority of drug-related adverse events (98%) classified as mild or moderate. The 12.2% figure at 13 weeks is notable because most oral GLP-1-class drugs require substantially longer treatment periods to achieve comparable or greater weight loss (oral semaglutide achieves 15–17% at 68 weeks). Full data were presented at the European Congress on Obesity (ECO 2026, May 12, 2026). Viking has completed an end-of-Phase 2 FDA meeting and plans to begin oral Phase 3 registration studies in Q4 2026 or Q1 2027.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What are the VANQUISH Phase 3 trials testing for VK2735?',
  'Viking is running two Phase 3 trials of the subcutaneous injectable VK2735: VANQUISH-1 (enrollment completed November 2025) is a pivotal 52-week efficacy and safety trial in adults with obesity or overweight with at least one weight-related comorbidity — the standard Phase 3 obesity trial design required for FDA approval. VANQUISH-2 (enrollment completed March 26, 2026) is a 78-week trial in adults with obesity and type 2 diabetes, assessing both weight loss and glycemic outcomes in this subpopulation. Both trials are double-blind and placebo-controlled. Results from VANQUISH-1 and VANQUISH-2 are expected in 2027. If positive, these would form the basis of an NDA submission to the FDA for the injectable formulation. VK2735 injectable is not approved for any indication as of November 2026.'
);

-- ============================================================
-- Junction table: Peptide_FAQs for VK2735
-- ============================================================

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'vk2735'
  AND f.question = 'How does VK2735 compare to tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'vk2735'
  AND f.question = 'What did the oral VK2735 Phase 2 trial show?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'vk2735'
  AND f.question = 'What are the VANQUISH Phase 3 trials testing for VK2735?';


-- ============================================================
-- PEPTIDE 2: Berobenatide
-- Discovery trigger: ObesityWeek 2026 coverage (November 15, 2026).
--   Pfizer/Metsera's berobenatide (PF'3944) is an investigational monthly injectable
--   peptide GLP-1 RA. Phase 2b VESPER-3 (monthly dosing) achieved 12.3% placebo-adjusted
--   weight loss at 28 weeks; VESPER-1 extended arm (weekly) showed 15.9% at 32 weeks
--   (ADA 2026, June 6, 2026). Phase 3 program with 10 trials planned for 2026 and pivotal
--   VESPER-6 enrolling. First-in-class monthly GLP-1 RA peptide seeking obesity NDA.
--   Not in any prior discovery log. Distinct from all 21 previously staged compounds.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Berobenatide',
  'berobenatide',
  'Metabolic & Weight Loss',
  'Potential first-in-class monthly injectable peptide GLP-1 receptor agonist from Pfizer (via Metsera); Phase 2b VESPER-3: 12.3% placebo-adjusted weight loss at 28 weeks (monthly dosing); VESPER-1 extended: 15.9% weight loss at 32 weeks; Phase 3 program with 10 trials planned 2026; pivotal study VESPER-6 enrolling',
  'Berobenatide (also known by its development code PF''3944, formerly classified as a Metsera compound before Pfizer''s acquisition) is an investigational injectable peptide GLP-1 receptor agonist (GLP-1 RA) being developed by Pfizer for the treatment of chronic obesity and overweight with at least one weight-related comorbidity. Its defining pharmacological property is an extended half-life engineered to support once-monthly dosing — a dosing interval no currently approved GLP-1-class drug achieves. If approved, berobenatide would be the first monthly injectable GLP-1 RA for obesity, dramatically reducing the injection burden compared to weekly injectables (semaglutide, tirzepatide) from 52 injections per year to 12.

Background and development history: Berobenatide was developed by Metsera, a metabolic disease biotechnology company, before Pfizer acquired Metsera in a transaction valued at approximately $7–10 billion (sources vary). The acquisition brought Pfizer into the GLP-1 obesity market with a differentiated monthly formulation candidate. Metsera had been building a metabolic peptide portfolio including GLP-1 RA and amylin analog programs; the GLP-1 RA (PF''3944/berobenatide) is the most advanced asset.

Mechanism: Berobenatide is a selective agonist of the GLP-1 receptor (GLP-1R), the same target as semaglutide (Ozempic/Wegovy) and liraglutide (Victoza/Saxenda). GLP-1R agonism drives appetite suppression via hypothalamic and brainstem circuits, slows gastric emptying, enhances glucose-dependent insulin secretion, and suppresses postprandial glucagon. The extended half-life — enabling monthly dosing — is achieved through fatty acid conjugation or structural modification of the GLP-1 peptide backbone, similar to the technology used to extend semaglutide''s half-life to 7 days via fatty acid C-18 chain conjugation; berobenatide uses a next-generation extension approach designed for a >21-day half-life. The specific structural details of berobenatide''s extension chemistry have not been publicly disclosed.

Phase 2b Evidence:

VESPER-1 (weekly dosing, 32-week extension): The VESPER-1 trial studied berobenatide in adults with obesity or overweight without type 2 diabetes. At 32 weeks (8 months), the highest weekly dose arm achieved a mean 15.9% reduction in body weight from baseline. This was presented at the American Diabetes Association (ADA) Scientific Sessions (ADA 2026, June 6, 2026). The results support weekly dosing as the efficacy backbone, and the Phase 2b profile is consistent with the efficacy class expected of a GLP-1 RA (semaglutide achieves ~15% at 68 weeks, so 15.9% at 32 weeks represents comparable or potentially superior efficacy at a shorter timepoint).

VESPER-3 (monthly dosing, Phase 2b): The key differentiation trial. VESPER-3 tested monthly subcutaneous dosing of berobenatide in adults with obesity or overweight without type 2 diabetes. Results (ADA 2026): placebo-adjusted mean weight loss of up to 12.3% at 28 weeks with the 4.8 mg monthly dose. This is a clinically meaningful weight loss for a monthly dosing regimen. For context, once-monthly semaglutide (marketed as "Ozempic Once Monthly" in some international markets) achieves substantially lower weight loss than weekly formulations; berobenatide''s once-monthly efficacy signal is notably stronger. The VESPER-3 monthly result is the primary commercial and clinical justification for Pfizer''s Phase 3 program.

Additional VESPER-3 and program data: Tolerability in VESPER-3 was broadly consistent with the GLP-1 class, with predominantly GI adverse events (nausea, vomiting, constipation). Pfizer described the tolerability profile as favorable and supportive of monthly dosing in the ADA 2026 presentation. At ADA 2026, Pfizer also announced that berobenatide is being studied in the SOLIS-1 Phase 2b trial in combination with an ultra-long-acting amylin analog (PF''3945/MET-233i) — a potential combination analogous to CagriSema (cagrilintide + semaglutide) or EloraTZP (eloralintide + tirzepatide).

Phase 3 Program: Pfizer announced plans for 10 Phase 3 trials of berobenatide in 2026, covering chronic weight management and obesity comorbidities (cardiovascular outcomes, type 2 diabetes, heart failure with preserved ejection fraction, sleep apnea, kidney disease). The pivotal Phase 3 trial, VESPER-6, opened for enrollment in 2026 and will establish the registration dataset for FDA NDA submission. The scale of the Phase 3 program reflects Pfizer''s commercial ambitions and the significant investment required to replicate the cardiovascular outcome and comorbidity benefit claims needed for label differentiation.

Strategic context: Berobenatide enters a crowded GLP-1 market dominated by semaglutide and tirzepatide. Its competitive strategy is dosing convenience — once-monthly vs. once-weekly. If Phase 3 efficacy is 12% or above at the monthly dose, berobenatide would have a clinically meaningful, differentiated profile. The 10-trial Phase 3 program is comparable in scale to Novo Nordisk''s and Lilly''s programs, indicating Pfizer views berobenatide as a potential blockbuster obesity franchise asset. Berobenatide is not approved by the FDA or any regulatory authority as of November 2026.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'PF''3944, PF-06882961, MET-X (Metsera)',
  'Phase 3 Clinical',
  'Long-acting peptide GLP-1 receptor agonist; selective GLP-1R agonist; once-monthly subcutaneous injection; extended half-life engineered for >21-day dosing interval via fatty acid conjugation; developed by Pfizer (acquired from Metsera); 4.8 mg monthly dose used in VESPER-3 Phase 2b; Phase 3 pivotal VESPER-6 enrolling',
  'https://www.businesswire.com/news/home/20260605120877/en/Robust-Phase-2b-Efficacy-and-Favorable-Tolerability-Support-Monthly-Dosing-for-Pfizers-GLP-1-RA-Berobenatide,https://www.hcplive.com/view/berobenatide-monthly-dosing-shows-weight-loss-efficacy-in-vesper-trials-with-john-buse-md-phd,https://managedhealthcareexecutive.com/view/pivotal-trial-is-recruiting-for-monthly-glp-1-for-weight-loss-ada-2026,https://www.biopharmaboardroom.com/news/5/4798/pfizers-berobenatide-advances-toward-phase-3-as-potential-first-monthly-glp-1-therapy.html',
  94,
  '2026-11-15',
  NULL
);

-- ============================================================
-- FAQs: Berobenatide (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How is berobenatide different from weekly semaglutide or tirzepatide?',
  'Berobenatide is a selective GLP-1 receptor agonist (like semaglutide) rather than a dual GLP-1/GIP agonist (like tirzepatide). Its primary differentiator is dosing convenience: berobenatide is engineered for once-monthly subcutaneous injection, while semaglutide (Ozempic/Wegovy) and tirzepatide (Mounjaro/Zepbound) are both once-weekly injectables. The Phase 2b VESPER-3 monthly dosing study showed up to 12.3% placebo-adjusted weight loss at 28 weeks — a meaningful efficacy signal for a monthly regimen. For comparison, weekly semaglutide achieves approximately 15–17% weight loss at 68 weeks; the tradeoff is 12 injections per year vs. 52. If Phase 3 confirms berobenatide''s monthly efficacy, patients who find weekly self-injection burdensome would have a clinically validated monthly alternative. No head-to-head trial against weekly agents has been conducted.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What weight loss did berobenatide achieve in the VESPER-3 trial?',
  'VESPER-3 is the Phase 2b monthly dosing trial of berobenatide. At ADA 2026 (June 2026), Pfizer reported: placebo-adjusted mean weight loss of up to 12.3% at week 28 with the 4.8 mg monthly dose in adults with obesity or overweight without type 2 diabetes. This is a dose-finding result, not a registration-quality Phase 3 result. The VESPER-1 trial, which used weekly dosing, showed a higher magnitude of 15.9% weight loss at 32 weeks — consistent with the expectation that weekly dosing would be more effective than monthly, but the monthly result is notably strong relative to historical benchmarks. Full VESPER-3 data, including dose-response curves, safety data, and responder analyses, were presented at ADA 2026. The Phase 3 pivotal trial VESPER-6 is the registration study; its results will determine whether berobenatide achieves FDA approval.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the Pfizer and Metsera connection for berobenatide?',
  'Berobenatide was originally developed by Metsera, a metabolic disease biotechnology company focused on next-generation obesity and diabetes peptide therapies. Pfizer acquired Metsera in a transaction reported at approximately $7–10 billion (sources vary), bringing berobenatide and the companion amylin analog PF''3945 (MET-233i) into Pfizer''s pipeline. The acquisition reflected Pfizer''s strategic intent to enter the GLP-1 obesity market, which had been dominated by Novo Nordisk and Eli Lilly. Berobenatide''s unique monthly dosing profile was the primary asset Pfizer acquired — a potential commercial differentiator in an increasingly crowded market. Pfizer has committed to a 10-trial Phase 3 program for berobenatide covering both monotherapy and combination approaches, with the pivotal VESPER-6 trial enrolling in 2026. The amylin combination program (berobenatide + PF''3945) is in Phase 2b (SOLIS-1), following the dual-mechanism strategy proven by CagriSema and EloraTZP.'
);

-- ============================================================
-- Junction table: Peptide_FAQs for Berobenatide
-- ============================================================

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'berobenatide'
  AND f.question = 'How is berobenatide different from weekly semaglutide or tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'berobenatide'
  AND f.question = 'What weight loss did berobenatide achieve in the VESPER-3 trial?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'berobenatide'
  AND f.question = 'What is the Pfizer and Metsera connection for berobenatide?';
