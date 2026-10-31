-- MinMaxMuscle D1 Inserts - Generated 2026-10-31
-- Schema based on actual functions/peptides/[slug].js column names

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
  'GLP-1/glucagon dual agonist for obesity and MASH with NEJM-published Phase 3 efficacy',
  'Survodutide (BI 456906) is a once-weekly injectable dual agonist of the GLP-1 and glucagon receptors, developed by Boehringer Ingelheim and Zealand Pharma. As an oxyntomodulin-like analog, it simultaneously activates both receptor systems: the GLP-1 component suppresses appetite and slows gastric emptying via hypothalamic circuits, while the glucagon component drives hepatic fat oxidation, increases thermogenesis in adipose tissue, and reduces ectopic lipid accumulation in the liver. Phase 3 SYNCHRONIZE-1 (obesity, no T2D): 16.6% mean body weight reduction at 76 weeks vs 3.2% placebo; data published in the New England Journal of Medicine. Phase 3 SYNCHRONIZE-2 (obesity with T2D, results October 2026): up to 13.1% weight loss at 76 weeks vs placebo, meeting both co-primary endpoints. Phase 3 SYNCHRONIZE-MASLD: targeted liver and visceral fat reduction in adults with metabolic steatohepatitis, meeting primary endpoints. An ongoing cardiovascular outcomes trial (SYNCHRONIZE-CVOT) is expected to report later in 2026 or 2027. The glucagon receptor agonism is the key differentiator from GLP-1 mono-agonists like semaglutide: it directly targets hepatic lipotoxicity and thermogenesis, making survodutide particularly relevant for patients with MASH or elevated liver fat. Boehringer Ingelheim is expected to file for regulatory approval following the SYNCHRONIZE program completion.',
  'BI 456906, BI456906',
  'Phase 3 Clinical',
  'Oxyntomodulin-like peptide analog; dual GLP-1 receptor + glucagon receptor agonist; once-weekly subcutaneous injection; dose range 0.6-6.0 mg; ~7-day half-life',
  'https://www.nejm.org/doi/10.1056/NEJMoa2503823,https://www.ajmc.com/view/dual-agonist-survodutide-delivers-up-to-13-1-weight-loss-in-t2d,https://pmc.ncbi.nlm.nih.gov/articles/PMC12925197',
  88,
  '2026-10-31',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Olatorepatide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Olatorepatide',
  'olatorepatide',
  'Metabolic & Weight Loss',
  'Dual-biased GLP-1/GIP receptor agonist for obesity; Phase 3 LIGHTEN data and China NDA accepted',
  'Olatorepatide (HS-20094) is a once-weekly injectable dual-biased GLP-1 and GIP (gastric inhibitory polypeptide) receptor agonist developed by Hansoh Pharmaceutical. Phase 3 LIGHTEN trial (presented at EASD 2026, Milan): olatorepatide 15 mg achieved 19.3% mean body weight reduction at 48 weeks vs 2.5% for placebo (efficacy estimand) in a 604-participant trial. Under the treatment-regimen estimand, weight losses were 11.8%, 17.0%, and 18.7% for the 5 mg, 10 mg, and 15 mg dose groups respectively. GI tolerability was favorable: nausea 7.8%, vomiting 4.9%, diarrhea 16.9%, constipation 5.1%, with no early discontinuations due to olatorepatide-related adverse events. In June 2026, China NMPA accepted the NDA for olatorepatide injection for long-term weight management in adults with overweight or obesity. In December 2025, Regeneron licensed ex-Greater China rights and planned a global Phase 3 registrational program. MW ~5020.63 Da, formula C235H357N49O72. GIP receptor co-agonism complements GLP-1 effects by further reducing food intake, enhancing insulin sensitivity, and potentially preserving lean mass.',
  'HS-20094',
  'Phase 3 Clinical',
  'Peptide GLP-1/GIP dual-biased receptor agonist; MW ~5020.63 Da; formula C235H357N49O72; once-weekly subcutaneous injection; doses 5-15 mg tested in Phase 3',
  'https://www.webdisclosure.com/press-release/193-weight-loss-at-week-48-phase-data-of-olatorepatide-hansohs-dualbiased-glp1gip-agonist-presented-at-easd-DXlO26IS9vw,https://investor.regeneron.com/news-releases/news-release-details/olatorepatide-obesity-treatment-licensed-regeneron-demonstrates,https://www.medchemexpress.com/olatorepatide.html',
  85,
  '2026-10-31',
  NULL
);

-- ============================================================
-- FAQs: Survodutide (3 FAQs)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does survodutide compare to semaglutide for weight loss?',
  'Phase 3 SYNCHRONIZE-1 data showed survodutide achieving 16.6% mean body weight loss at 76 weeks vs 3.2% for placebo. Semaglutide 2.4 mg (Wegovy) demonstrated approximately 15% weight loss in the STEP-1 trial. Survodutide''s glucagon co-agonism adds hepatic fat oxidation and thermogenesis on top of GLP-1 satiety signaling, which may offer advantages for patients with elevated liver fat or MASH. No head-to-head trials published. Research compounds discussed for educational purposes only.'
);
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes survodutide''s mechanism different from other GLP-1 agonists?',
  'Survodutide is an oxyntomodulin analog that simultaneously activates both GLP-1 and glucagon receptors. The GLP-1 component reduces appetite and slows gastric emptying. The glucagon component drives hepatic fat oxidation, increases thermogenesis in liver and adipose tissue, and directly targets ectopic lipid accumulation — benefits that pure GLP-1 agonists do not provide.'
);
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is survodutide approved for clinical use?',
  'No. As of October 2026, survodutide remains investigational and is not approved in any major market. Phase 3 SYNCHRONIZE-1 results were published in the New England Journal of Medicine and Phase 3 SYNCHRONIZE-2 results were announced in October 2026. Boehringer Ingelheim is expected to file a regulatory application. Research compounds discussed for educational purposes. Consult a healthcare provider before use.'
);

-- Link Survodutide FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'survodutide'
  AND f.question IN (
    'How does survodutide compare to semaglutide for weight loss?',
    'What makes survodutide''s mechanism different from other GLP-1 agonists?',
    'Is survodutide approved for clinical use?'
  );

-- ============================================================
-- FAQs: Olatorepatide (3 FAQs)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What does dual-biased mean in the context of olatorepatide?',
  'Hansoh describes olatorepatide as a dual-biased GLP-1/GIP agonist, referring to its selective engagement of specific downstream signaling pathways within both receptors. Biased agonism may preserve desired metabolic effects while potentially reducing side effects. Phase 3 LIGHTEN data showed favorable GI tolerability with no drug-related early discontinuations. Research compounds discussed for educational purposes only.'
);
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does olatorepatide compare to tirzepatide?',
  'Both target GLP-1 and GIP receptors. Olatorepatide Phase 3 LIGHTEN reported up to 19.3% weight loss at 48 weeks in Chinese participants. Tirzepatide SURMOUNT-1 showed approximately 20.9% at 72 weeks. No head-to-head trial has been conducted. The biased agonism of olatorepatide requires further comparative study. Research compounds discussed for educational purposes only.'
);
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is olatorepatide current regulatory status?',
  'In June 2026, China NMPA accepted olatorepatide NDA for long-term weight management in adults with overweight or obesity. Regeneron licensed ex-Greater China rights in December 2025 and announced plans for a global Phase 3 program. Not approved in the US or Europe as of October 2026. Research compounds discussed for educational purposes. Consult a healthcare provider before use.'
);

-- Link Olatorepatide FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'olatorepatide'
  AND f.question IN (
    'What does dual-biased mean in the context of olatorepatide?',
    'How does olatorepatide compare to tirzepatide?',
    'What is olatorepatide current regulatory status?'
  );
