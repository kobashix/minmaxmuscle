-- MinMaxMuscle D1 Inserts - Generated 2026-11-01
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: uses actual column names from functions/peptides/[slug].js
-- Compounds: Survodutide, Eloralintide
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-01_inserts.sql

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
  'GLP-1/glucagon dual agonist for obesity and MASLD with superior liver fat reduction',
  'Survodutide (BI 456906) is a once-weekly injectable unimolecular dual agonist of GLP-1 and glucagon receptors, developed by Boehringer Ingelheim in partnership with Zealand Pharma. The GLP-1 component reduces appetite and slows gastric emptying while the glucagon receptor agonism drives hepatic fat oxidation, thermogenesis, and energy expenditure — mechanisms that produce greater liver fat reduction than pure GLP-1 agonists. Phase 2 data established 18.7% weight loss at 46 weeks (vs. 2.3% placebo) at the 4.8 mg dose. Phase 3 SYNCHRONIZE-1 (non-diabetic obesity, N=1,033) reported up to 16.6% weight loss at 76 weeks vs. 3.2% placebo using the efficacy estimand; results published simultaneously at ADA 2026 in the New England Journal of Medicine. Phase 3 SYNCHRONIZE-MASLD (N=368) demonstrated 12.2% body weight reduction and >30% liver fat reduction in most participants over 48 weeks; published in Nature Medicine (June 7, 2026). Phase 3 SYNCHRONIZE-2 (obesity with type 2 diabetes) showed 13.1% weight loss vs. 3.1% placebo at 76 weeks, announced October 1, 2026. A cardiovascular outcomes trial (SYNCHRONIZE-CVOT) completed October 2026, results pending. Survodutide is not yet approved by the FDA or EMA as of November 2026.',
  'BI 456906, survodutide',
  'Phase 3 Clinical',
  'Peptide analog; targets GLP-1 receptor (GLP-1R) + glucagon receptor (GCGR); once-weekly subcutaneous injection; co-developed by Boehringer Ingelheim and Zealand Pharma; long-acting half-life designed for weekly dosing',
  'https://pubmed.ncbi.nlm.nih.gov/42822760/,https://www.boehringer-ingelheim.com/us/human-health/metabolic-diseases/results-phase-iii-synchronize-1-obesity-trial,https://www.biopharminternational.com/view/survodutide-reduces-visceral-liver-fat-phase-3-obesity-masld-trials,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9679702/',
  93,
  '2026-11-01',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Eloralintide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Eloralintide',
  'eloralintide',
  'Metabolic & Weight Loss',
  'Selective amylin receptor agonist for obesity — non-GLP-1 mechanism with up to 20% weight loss',
  'Eloralintide (LY3841136) is a once-weekly selective amylin receptor agonist developed by Eli Lilly, representing a distinct class from GLP-1 agonists and GLP-1/amylin dual agonists. Unlike amycretin (which combines GLP-1 and amylin activity), eloralintide acts exclusively via amylin receptors — including calcitonin receptor (CTR) and calcitonin receptor-like receptor (CLR) complexes — modulating satiety through brainstem area postrema circuits and suppressing glucagon secretion. Phase 2 results published in The Lancet (announced November 6, 2025): 263 adults with obesity or overweight without type 2 diabetes; maximum mean bodyweight reduction of 20.1% (–21.3 kg) at 48 weeks at the highest dose vs. 0.4% placebo; weight loss had not plateaued by 48 weeks, suggesting continued efficacy potential. Adverse events were predominantly mild-to-moderate nausea and fatigue. Phase 3 ENLIGHTEN program launched in 2026 with multiple trials: ENLIGHTEN-1 (obesity without T2DM, NCT07321886), ENLIGHTEN-2 (obesity with T2DM, NCT07282600), ENLIGHTEN-3 (obstructive sleep apnea, NCT07369011), and ENLIGHTEN-6 (persistent obesity on background incretin therapy, NCT07392190). A Phase 3 co-formulation study with tirzepatide (EloraTZP) is planned for late 2026. Eloralintide is investigational; not approved by the FDA as of November 2026.',
  'LY3841136, eloralintide',
  'Phase 3 Clinical',
  'Peptide analog; selective amylin receptor agonist (CTR/CLR complex); once-weekly subcutaneous injection; developed by Eli Lilly; distinct from GLP-1 receptor agonists',
  'https://www.sciencedirect.com/science/article/abs/pii/S0140673625021555,https://lilly.gcs-web.com/news-releases/news-release-details/lillys-selective-amylin-agonist-eloralintide-demonstrated,https://clinicaltrials.gov/study/NCT07321886,https://www.drugtopics.com/view/eloralintide-reduces-weight-by-9-5-to-20-1-for-patients-with-obesity',
  91,
  '2026-11-01',
  NULL
);

-- ============================================================
-- FAQs for Survodutide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does survodutide differ from semaglutide and tirzepatide for weight loss?',
  'Survodutide activates both GLP-1 and glucagon receptors simultaneously, a combination that adds energy expenditure and direct hepatic fat oxidation to the appetite suppression of GLP-1 agonism. Semaglutide is a pure GLP-1 agonist. Tirzepatide adds GIP receptor activation to GLP-1. The glucagon receptor component in survodutide is particularly effective at reducing liver fat — Phase 3 SYNCHRONIZE-MASLD showed >30% liver fat reduction in most participants at 48 weeks, published in Nature Medicine (2026). Survodutide's SYNCHRONIZE-1 showed 16.6% weight loss at 76 weeks (NEJM, ADA 2026), comparable to tirzepatide and semaglutide but with a potentially superior liver-specific metabolic profile.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is MASLD and why is survodutide particularly relevant for it?',
  'MASLD stands for Metabolic-Associated Steatotic Liver Disease (formerly NAFLD/NASH), a spectrum of liver conditions driven by excess liver fat accumulation linked to metabolic syndrome, obesity, and insulin resistance. Survodutide''s glucagon receptor component directly stimulates hepatic fatty acid oxidation and reduces de novo lipogenesis, mechanisms that GLP-1 agonists alone do not significantly engage. In SYNCHRONIZE-MASLD (Phase 3, N=368), survodutide achieved 12.2% body weight reduction and >30% liver fat reduction in most participants at 48 weeks vs. 1.0% weight reduction in the placebo arm, with the full results published in Nature Medicine in June 2026. No FDA approval yet, but this profile makes it one of the leading investigational agents for MASLD.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is survodutide safe for people with type 2 diabetes?',
  'Phase 3 SYNCHRONIZE-2 specifically enrolled adults with obesity and type 2 diabetes, reporting 13.1% weight loss vs. 3.1% placebo at 76 weeks (announced October 1, 2026). Safety in this population was consistent with the GLP-1 drug class: nausea, vomiting, and gastrointestinal side effects were most common. The glucagon receptor component theoretically raises a concern about glucagon-driven glucose elevation in diabetes, but this was studied and managed in the trial protocol. Full safety data from peer-reviewed publication of SYNCHRONIZE-2 should be reviewed. Survodutide is not approved by the FDA or EMA as of November 2026 — it is investigational.'
);

-- ============================================================
-- FAQs for Eloralintide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes eloralintide different from amycretin, which also involves amylin?',
  'Both involve amylin receptor signaling, but the mechanism and molecular strategy differ fundamentally. Amycretin (Novo Nordisk, NN9487) is a dual GLP-1 and amylin agonist — a single molecule that simultaneously activates both receptor systems, requiring GLP-1 activity for full efficacy. Eloralintide (LY3841136) is a selective amylin receptor agonist only — it has no GLP-1 activity. This means eloralintide could in principle be combined with GLP-1 drugs (or GLP-1/GIP drugs like tirzepatide) to add amylin pathway satiety on top of existing GLP-1 treatment. The ENLIGHTEN-6 trial specifically studies eloralintide in people already on weekly incretin therapy, and an EloraTZP co-formulation with tirzepatide is planned. Phase 2 Lancet data (2025) showed up to 20.1% weight loss at 48 weeks.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why hasn''t an amylin-only drug been developed before eloralintide?',
  'Pramlintide (Symlin), an injectable amylin analog, was FDA-approved in 2005 for diabetes but required multiple daily injections, limiting adoption for obesity. Eloralintide is engineered for once-weekly dosing by incorporating half-life extension technologies, solving the compliance problem that limited pramlintide. Synthetic amylin analogs also require careful balancing of receptor selectivity at CTR and CLR complexes to optimize efficacy while managing side effects like nausea. Lilly''s Phase 2 data published in The Lancet (2025) suggests the once-weekly approach achieves 20% weight loss without the dosing burden, representing a meaningful technical advance over earlier amylin approaches.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the current status of eloralintide and can I enroll in a trial?',
  'Eloralintide is fully investigational — it is not FDA-approved and not commercially available as of November 2026. Multiple Phase 3 ENLIGHTEN trials are actively recruiting: ENLIGHTEN-1 (obesity without T2DM, NCT07321886) and ENLIGHTEN-2 (obesity with T2DM, NCT07282600) are the primary obesity registrational trials. ENLIGHTEN-3 focuses on obstructive sleep apnea and obesity (NCT07369011), and ENLIGHTEN-6 (NCT07392190) targets people with persistent obesity already on GLP-1 therapy. To check eligibility and enrollment sites, visit ClinicalTrials.gov and search for the NCT numbers above. Participation in clinical research is the only legal access to eloralintide at this time.'
);

-- ============================================================
-- Peptide_FAQs junction: link FAQs to peptides
-- (Run after the above inserts; uses slug-based subquery to match by question)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'survodutide'
  AND f.question = 'How does survodutide differ from semaglutide and tirzepatide for weight loss?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'survodutide'
  AND f.question = 'What is MASLD and why is survodutide particularly relevant for it?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'survodutide'
  AND f.question = 'Is survodutide safe for people with type 2 diabetes?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'eloralintide'
  AND f.question = 'What makes eloralintide different from amycretin, which also involves amylin?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'eloralintide'
  AND f.question = 'Why hasn''t an amylin-only drug been developed before eloralintide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'eloralintide'
  AND f.question = 'What is the current status of eloralintide and can I enroll in a trial?';
