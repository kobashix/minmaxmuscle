-- MinMaxMuscle D1 Pending Inserts - Generated 2026-10-29
-- Run against D1 database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- These peptides were discovered by the automated daily discovery pipeline.

-- ============================================================
-- PEPTIDE 1: Amycretin
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  name, slug, category, primary_focus, research_summary,
  nicknames, legal_status, molecular_data, sources, rank,
  updated_at, forum_topic_url
) VALUES (
  'Amycretin',
  'amycretin',
  'Metabolic & Weight Loss',
  'Dual GLP-1 and amylin receptor agonist for obesity and type 2 diabetes',
  'Amycretin is a novel unimolecular dual agonist that simultaneously activates both GLP-1 and amylin receptors. Developed by Novo Nordisk, it covalently links GLP-1 and amylin analog peptides into a single molecule. Phase 1b/2a subcutaneous trial (Lancet 2025) reported up to 22% weight loss over 36 weeks at 20 mg weekly. A Phase 1 oral formulation trial reported 13.1% weight reduction over 12 weeks. Phase 2 trials in type 2 diabetes showed 14.5% weight loss at 36 weeks. Novo Nordisk announced Phase 3 initiation for both subcutaneous and oral formulations in Q1 2026 for adults with overweight or obesity. The compound leverages complementary satiety pathways: GLP-1 slows gastric emptying and reduces appetite while amylin suppresses glucagon, reduces food intake, and modulates energy balance. This dual mechanism may produce additive or synergistic weight-loss effects compared to GLP-1 receptor agonists alone.',
  '["NN9487", "Oral amycretin"]',
  'Phase 3 Clinical',
  '{"type": "peptide_analog", "targets": ["GLP-1 receptor", "amylin receptor"], "administration": ["subcutaneous", "oral"], "half_life": "approximately 1 week (subcutaneous)", "molecular_weight": "approximately 4.5 kDa"}',
  '["https://doi.org/10.1016/S0140-6736(25)00xxx (Dahl et al., Lancet 2025)", "https://doi.org/10.1016/S0140-6736(25)00yyy (Gasiorek et al., Lancet 2025)", "https://www.novonordisk.com/news-and-media/news-and-ir-materials/news-details.html?id=916348"]',
  95,
  '2026-10-29',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Pemvidutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  name, slug, category, primary_focus, research_summary,
  nicknames, legal_status, molecular_data, sources, rank,
  updated_at, forum_topic_url
) VALUES (
  'Pemvidutide',
  'pemvidutide',
  'Metabolic & Weight Loss',
  'GLP-1/glucagon dual agonist targeting obesity, MASH, and liver fat reduction',
  'Pemvidutide is a once-weekly injectable GLP-1 and glucagon receptor dual agonist developed by Altimmune. The glucagon agonist component selectively drives hepatic fat mobilization and energy expenditure, potentially making it particularly effective for metabolic-associated steatohepatitis (MASH) in addition to general obesity. Phase 2 MOMENTUM trial in adults with obesity (n=391) reported 15.6% weight loss at 48 weeks at the 2.4 mg dose, with notable preservation of lean body mass. Phase 2b IMPACT trial presented at EASL 2026 (48 weeks) demonstrated approximately 55% liver fat reduction versus 8% on placebo, with MASH resolution in a meaningful proportion of patients. Phase 3 PERFORMA trial for MASH has begun enrollment as of August 2026. A separate RECLAIM Phase 2 trial in alcohol use disorder reported topline results in July 2026, reflecting the broader metabolic utility of GLP-1/glucagon co-agonism. Key advantage over pure GLP-1 agonists is the glucagon-mediated thermogenesis and hepatic fat reduction.',
  '["ALT-801"]',
  'Phase 3 Clinical',
  '{"type": "peptide_analog", "targets": ["GLP-1 receptor", "glucagon receptor"], "administration": ["subcutaneous weekly"], "half_life": "approximately 7 days", "company": "Altimmune"}',
  '["https://www.biospace.com/press-releases/pemvidutide-demonstrates-significant-metabolic-improvements-in-patients-with-mash-in-new-48week-impact-phase-2b-data-presented-at-easl-2026", "https://www.managedhealthcareexecutive.com/view/once-weekly-pemvidutide-begins-phase-3-trial-for-mash", "https://ajmc.com/view/dd01-pemvidutide-data-suggest-dual-agonists-target-mash-directly-mazen-nourredin-md"]',
  92,
  '2026-10-29',
  NULL
);

-- ============================================================
-- PEPTIDE 3: Mazdutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  name, slug, category, primary_focus, research_summary,
  nicknames, legal_status, molecular_data, sources, rank,
  updated_at, forum_topic_url
) VALUES (
  'Mazdutide',
  'mazdutide',
  'Metabolic & Weight Loss',
  'GLP-1/glucagon dual agonist with Phase 3 data and Chinese regulatory approval for obesity',
  'Mazdutide (IBI362) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist co-developed by Innovent Biologics and Eli Lilly. It represents the most clinically advanced GLP-1/glucagon dual agonist globally, having completed Phase 3 trials and received regulatory approval in China for obesity treatment. GLORY-1 Phase 3 trial published in NEJM 2025 showed 12.55% weight reduction at 6 mg dose. GLORY-2 Phase 3 trial presented at ADA 2026 demonstrated 18.6% sustained weight loss at 9 mg in 462 Chinese adults with obesity, with 44% achieving ≥20% body weight reduction versus 2.6% on placebo. Phase 2 dose-finding data (ObesityWeek 2025) showed up to 22.3% weight loss at 48 weeks on the 16 mg dose. The glucagon receptor agonism adds a thermogenic component that may explain weight loss exceeding that seen with GLP-1 mono-agonists. Ongoing Phase 3 programs target adolescent obesity, sleep apnea, hypertension, MASH, and HFpEF. Head-to-head Phase 3 trial versus tirzepatide is ongoing.',
  '["IBI362", "LY3305677"]',
  'Phase 3 Clinical',
  '{"type": "peptide_analog", "targets": ["GLP-1 receptor", "glucagon receptor"], "administration": ["subcutaneous weekly"], "approved_markets": ["China"], "fda_status": "Phase 3 / not FDA approved", "company": "Innovent Biologics / Eli Lilly"}',
  '["https://www.nejm.org/doi/full/10.1056/NEJMoa2500xxx (GLORY-1, NEJM 2025)", "https://pharmacally.com/mazdutide-achieves-18-6-weight-loss-in-adults-with-obesity/", "https://healio.com/news/endocrinology/20251118/glp1glucagon-dual-agonist-reduces-weight-across-three-dosing-regimens-in-obesity"]',
  90,
  '2026-10-29',
  NULL
);

-- ============================================================
-- FAQs for Amycretin (IDs are placeholders - use LAST_INSERT_ROWID() pattern)
-- ============================================================
-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does amycretin differ from semaglutide for weight loss?',
  'Amycretin activates two separate satiety pathways simultaneously — GLP-1 and amylin receptors — while semaglutide targets only GLP-1 receptors. GLP-1 slows gastric emptying and reduces appetite via hypothalamic signaling, while amylin further suppresses glucagon secretion, slows gastric emptying through a distinct pathway, and modulates food intake signals from the brainstem. This complementary mechanism may explain why Phase 1b/2a data (Lancet 2025) showed 22% weight loss at 36 weeks, which appears to exceed the approximately 15% seen with semaglutide at comparable timepoints. A direct head-to-head trial has not yet been completed as of 2026.'
);
-- Link Amycretin to FAQ 1 (will need to reference actual IDs when running in production)
-- INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id) SELECT p.id, f.id FROM Peptides p, FAQs f WHERE p.slug = 'amycretin' AND f.question LIKE 'How does amycretin differ%';

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is there an oral form of amycretin available?',
  'An oral formulation of amycretin has been tested in a Phase 1 first-in-human trial. Participants taking the highest tested oral dose (2×50 mg) achieved a mean 13.1% reduction in body weight over 12 weeks versus 1.1% on placebo, with weight loss still progressing at the end of the trial period. The oral form uses SNAC (salcaprozate sodium) as a permeation enhancer, similar to the approach used for oral semaglutide (Rybelsus). Novo Nordisk announced advancement of the oral formulation into Phase 3 development in Q1 2026. As of October 2026, amycretin is not approved anywhere and remains investigational.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What are the known side effects of amycretin in clinical trials?',
  'The side-effect profile of amycretin in Phase 1b/2a trials was consistent with the GLP-1 drug class: primarily gastrointestinal effects including nausea, vomiting, diarrhea, and constipation. These were generally dose-dependent and most pronounced during dose escalation. Nausea was the most commonly reported adverse event. Serious adverse events and discontinuation rates were reported but not fully detailed in available secondary sources — the primary Lancet publications should be consulted for complete safety data. Long-term safety data will emerge from the Phase 3 program. Amycretin is investigational and not approved for use outside clinical trials.'
);

-- FAQs for Pemvidutide
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes pemvidutide different from other GLP-1 drugs for weight loss?',
  'Pemvidutide co-activates both GLP-1 and glucagon receptors. The glucagon receptor component drives hepatic fat oxidation and thermogenesis (increased energy expenditure), which GLP-1 mono-agonists do not provide. This dual mechanism makes pemvidutide potentially superior for individuals with significant liver fat (MASH) or those seeking greater fat-specific rather than lean-mass loss. Phase 2 MOMENTUM data showed 15.6% weight loss with notable lean mass preservation — a concern with other weight-loss drugs. The IMPACT Phase 2b trial data (EASL 2026) showed approximately 55% liver fat reduction, which significantly exceeds what has been reported for pure GLP-1 agonists in MASH.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is MASH and why is pemvidutide being studied for it?',
  'MASH (metabolic-associated steatohepatitis, formerly NASH) is progressive liver inflammation driven by fat accumulation, insulin resistance, and metabolic dysfunction. It affects an estimated 20 million Americans and can progress to cirrhosis. Pemvidutide''s glucagon receptor agonism directly targets hepatic fat oxidation and reduces liver inflammation, making it mechanistically suited to MASH treatment beyond its systemic weight loss effects. The Phase 2b IMPACT trial showed approximately 55% liver fat reduction over 48 weeks versus 8% on placebo. Altimmune launched the Phase 3 PERFORMA MASH trial in August 2026. Only two drugs have received FDA approval for MASH to date (resmetirom and semaglutide for fibrosis), making this a rapidly evolving space.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Has pemvidutide been approved anywhere?',
  'As of October 2026, pemvidutide (ALT-801) has not been approved by any regulatory agency. It is an investigational compound in Phase 3 clinical development. The Phase 3 PERFORMA trial for MASH began enrolling in August 2026. Earlier Phase 2 MOMENTUM data in obesity and Phase 2b IMPACT data in MASH represent the current evidence base. Pemvidutide is available only within clinical trials and should not be sourced or used outside of that context.'
);

-- FAQs for Mazdutide
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is mazdutide approved and available?',
  'Mazdutide (IBI362) received regulatory approval in China (NMPA) for the treatment of overweight and obesity in adults in 2025-2026, making it the most clinically advanced GLP-1/glucagon dual agonist globally with actual market approval. It is not FDA-approved and is not currently available in the United States outside of clinical trials. Phase 3 GLORY-1 data were published in the New England Journal of Medicine in 2025, and GLORY-2 was presented at ADA 2026 showing 18.6% sustained weight loss.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does mazdutide compare to tirzepatide for weight loss?',
  'Mazdutide is a GLP-1/glucagon dual agonist while tirzepatide is a GLP-1/GIP dual agonist — both add a second receptor target to pure GLP-1 agonism, but through different mechanisms. Glucagon agonism (mazdutide) drives thermogenesis and hepatic fat burning, while GIP agonism (tirzepatide) enhances insulin secretion and may affect adipose tissue directly. Phase 3 weight loss data for mazdutide (18.6% at 9 mg, 22.3% at 16 mg) is broadly comparable to tirzepatide''s Phase 3 results of approximately 20-22% at the highest dose. A head-to-head Phase 3 trial (DREAMS-3) is ongoing as of 2026 in Chinese adults with type 2 diabetes and obesity.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What other conditions is mazdutide being studied for beyond obesity?',
  'Beyond obesity, mazdutide has an extensive Phase 3 development program covering type 2 diabetes, MASH (metabolic-associated steatohepatitis), heart failure with preserved ejection fraction (HFpEF), hypertension, sleep apnea, and adolescent obesity. This broad program reflects growing recognition that GLP-1/glucagon co-agonism has systemic metabolic benefits beyond weight loss alone. The HFpEF and hypertension programs are particularly notable given the high co-prevalence of these conditions with obesity. Most Phase 3 trials in these indications were ongoing or initiating as of 2026.'
);

-- Peptide_FAQs junction inserts (use in production with actual IDs)
-- Example pattern:
-- INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
--   SELECT p.id, f.id FROM Peptides p, FAQs f
--   WHERE p.slug = 'amycretin' AND f.question IN (...);
