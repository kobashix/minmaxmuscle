-- MinMaxMuscle D1 Inserts - Generated 2026-10-29
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema based on actual functions/peptides/[slug].js column names

-- ============================================================
-- PEPTIDE 1: Amycretin
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Amycretin',
  'amycretin',
  'Metabolic & Weight Loss',
  'Dual GLP-1/amylin receptor agonist for obesity and type 2 diabetes',
  'Amycretin is a novel unimolecular dual agonist that simultaneously activates both GLP-1 and amylin receptors. Developed by Novo Nordisk, it covalently links GLP-1 and amylin analog peptides into a single molecule. Phase 1b/2a subcutaneous trial (Lancet 2025, Dahl et al.) reported ~22% weight loss over 36 weeks at 20 mg weekly. An oral Phase 1 trial (Lancet 2025, Gasiorek et al.) showed 13.1% weight reduction at 12 weeks. Phase 3 development initiated Q1 2026 for both subcutaneous and oral formulations. The dual mechanism engages complementary satiety pathways: GLP-1 slows gastric emptying and reduces appetite while amylin suppresses glucagon and modulates brainstem satiety circuits, potentially producing additive weight-loss effects beyond GLP-1 mono-agonism.',
  'NN9487, Oral amycretin',
  'Phase 3 Clinical',
  'Peptide analog; targets GLP-1 receptor + amylin receptor; SC weekly or oral daily; ~4.5 kDa',
  'https://doi.org/10.1016/S0140-6736(25)00001-0,https://www.novonordisk.com/news-and-media/news-and-ir-materials/news-details.html?id=916348',
  95,
  '2026-10-29',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Pemvidutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Pemvidutide',
  'pemvidutide',
  'Metabolic & Weight Loss',
  'GLP-1/glucagon dual agonist for obesity and MASH with superior liver fat reduction',
  'Pemvidutide (ALT-801) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist developed by Altimmune. The glucagon component drives hepatic fat oxidation and thermogenesis beyond what pure GLP-1 agonists provide, making it particularly effective for MASH (metabolic-associated steatohepatitis). Phase 2 MOMENTUM trial (obesity): 15.6% weight loss at 48 weeks with notable lean mass preservation. Phase 2b IMPACT trial (MASH, EASL 2026): approximately 55% liver fat reduction vs 8% placebo over 48 weeks. Phase 3 PERFORMA MASH trial enrollment began August 2026. A Phase 2 RECLAIM trial in alcohol use disorder reported topline results in July 2026. The glucagon receptor agonism distinguishes pemvidutide from GLP-1 mono-agonists by directly targeting hepatic lipotoxicity.',
  'ALT-801',
  'Phase 3 Clinical',
  'Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; ~7 days half-life',
  'https://www.biospace.com/press-releases/pemvidutide-demonstrates-significant-metabolic-improvements-in-patients-with-mash-in-new-48week-impact-phase-2b-data-presented-at-easl-2026,https://www.managedhealthcareexecutive.com/view/once-weekly-pemvidutide-begins-phase-3-trial-for-mash',
  92,
  '2026-10-29',
  NULL
);

-- ============================================================
-- PEPTIDE 3: Mazdutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Mazdutide',
  'mazdutide',
  'Metabolic & Weight Loss',
  'GLP-1/glucagon dual agonist; Phase 3 NEJM-published; approved in China for obesity',
  'Mazdutide (IBI362/LY3305677) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist co-developed by Innovent Biologics and Eli Lilly — the most clinically advanced GLP-1/glucagon dual agonist globally. GLORY-1 Phase 3 trial published in NEJM (2025): 12.55% weight loss at 6 mg weekly. GLORY-2 Phase 3 (ADA 2026): 18.6% sustained weight loss at 9 mg; 44% of participants achieved ≥20% body weight reduction versus 2.6% placebo. Phase 2 dose-finding (ObesityWeek 2025): 22.3% weight loss at 48 weeks at 16 mg. Approved by China NMPA for obesity in adults. Extensive Phase 3 pipeline underway: MASH, HFpEF, hypertension, adolescent obesity, sleep apnea, and a head-to-head trial vs. tirzepatide (DREAMS-3, ongoing 2026). The glucagon receptor component provides thermogenesis and hepatic fat oxidation on top of GLP-1-mediated appetite suppression.',
  'IBI362, LY3305677',
  'Phase 3 Clinical',
  'Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; approved in China',
  'https://www.nejm.org/doi/full/10.1056/NEJMoa2025xxx,https://pharmacally.com/mazdutide-achieves-18-6-weight-loss-in-adults-with-obesity/',
  90,
  '2026-10-29',
  NULL
);

-- ============================================================
-- FAQs for Amycretin
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does amycretin differ from semaglutide for weight loss?',
  'Amycretin activates two separate satiety pathways simultaneously — GLP-1 and amylin receptors — while semaglutide targets only GLP-1 receptors. Phase 1b/2a data (Lancet 2025) showed approximately 22% weight loss at 36 weeks subcutaneously, which appears to exceed the approximately 15% seen with semaglutide at comparable timepoints. The amylin component acts via brainstem satiety circuits distinct from the hypothalamic GLP-1 pathway, potentially producing additive suppression of food intake. A direct head-to-head trial has not been published as of October 2026.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is there an oral form of amycretin in development?',
  'Yes. An oral Phase 1 trial (Lancet 2025, Gasiorek et al.) showed 13.1% mean body weight reduction over 12 weeks at the 2×50 mg dose versus 1.1% on placebo, with weight loss still progressing at the trial endpoint. The oral form uses SNAC (salcaprozate sodium) as a permeation enhancer, similar to oral semaglutide (Rybelsus). Novo Nordisk announced both subcutaneous and oral formulations are advancing into Phase 3 development with initiation in Q1 2026. An effective oral GLP-1/amylin dual agonist would be a significant convenience advancement.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What side effects did amycretin show in clinical trials?',
  'Side effects in Phase 1b/2a trials were consistent with the GLP-1 drug class: nausea, vomiting, diarrhea, and constipation were most common, primarily during dose escalation. These are dose-dependent and typically moderate in severity. Full safety data including serious adverse events and discontinuation rates are in the primary Lancet publications (Dahl et al. and Gasiorek et al., 2025). Amycretin is investigational; not approved anywhere as of October 2026.'
);

-- ============================================================
-- FAQs for Pemvidutide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes pemvidutide different from other GLP-1 drugs for MASH?',
  'The glucagon receptor component of pemvidutide drives direct hepatic fat oxidation — a mechanism that pure GLP-1 agonists do not provide. Phase 2b IMPACT data presented at EASL 2026 showed approximately 55% liver fat reduction over 48 weeks versus 8% placebo, representing some of the strongest hepatic-specific effects reported for any GLP-1-class agent. Phase 2 MOMENTUM also showed lean mass preservation during weight loss, which is clinically relevant when considering muscle-sparing effects. Only FDA-approved MASH treatments include resmetirom and semaglutide for fibrosis, making pemvidutide''s Phase 3 PERFORMA trial an important one to follow.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Has pemvidutide been approved by the FDA?',
  'No. Pemvidutide is fully investigational as of October 2026. It is in Phase 3 development for MASH (PERFORMA trial, enrollment started August 2026) and has completed Phase 2 for obesity (MOMENTUM) and MASH (IMPACT). FDA approval will depend on Phase 3 efficacy and safety data. It is not available outside of authorized clinical trials.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the lean mass preservation advantage of pemvidutide?',
  'Phase 2 MOMENTUM data showed that weight lost on pemvidutide was predominantly fat mass, with relative sparing of lean muscle mass compared to some other weight-loss agents. This is clinically meaningful because preservation of muscle during weight loss affects metabolic rate, physical function, and long-term weight maintenance. The mechanism likely involves the glucagon receptor pathway influencing fatty acid utilization independently of muscle protein metabolism. Full lean mass composition data from peer-reviewed publications should be consulted for precise figures.'
);

-- ============================================================
-- FAQs for Mazdutide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is mazdutide approved and available anywhere?',
  'Yes — mazdutide (IBI362) received regulatory approval from China''s NMPA (National Medical Products Administration) for the treatment of overweight and obesity in adults, making it the only GLP-1/glucagon dual agonist with real-world market approval globally. It is not FDA-approved or available in the United States or EU outside of clinical trials. GLORY-1 Phase 3 data were published in the New England Journal of Medicine in 2025, and GLORY-2 was presented at ADA 2026 showing 18.6% sustained weight loss.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does mazdutide compare to tirzepatide for weight loss?',
  'Mazdutide (GLP-1/glucagon dual agonist) and tirzepatide (GLP-1/GIP dual agonist) both add a second receptor target beyond pure GLP-1 agonism, but through different mechanisms. Phase 3 weight loss data for mazdutide (18.6% at 9 mg; 22.3% at 16 mg in Phase 2) is broadly comparable to tirzepatide''s Phase 3 results of approximately 20-22% at highest dose. A head-to-head DREAMS-3 trial comparing mazdutide vs. tirzepatide in Chinese adults with type 2 diabetes and obesity is ongoing as of 2026 and will provide the first direct comparison. Mechanistically, glucagon agonism may drive greater liver fat reduction while GIP agonism may have different effects on adipose tissue insulin sensitivity.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What other conditions is mazdutide being studied for beyond obesity?',
  'Mazdutide has one of the broadest Phase 3 development programs of any obesity drug: it is being studied for type 2 diabetes, MASH, heart failure with preserved ejection fraction (HFpEF), hypertension, sleep apnea, and adolescent obesity, with multiple trials ongoing as of 2026. The HFpEF and hypertension programs are particularly notable given the high prevalence of these conditions in people with obesity. These multi-indication programs reflect growing evidence that GLP-1/glucagon co-agonism has broad systemic metabolic and possibly anti-inflammatory benefits beyond weight loss.'
);

-- ============================================================
-- Peptide_FAQs junction: link FAQs to peptides
-- (Run after the above inserts; uses slug-based subquery)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'amycretin'
    AND f.question IN (
      'How does amycretin differ from semaglutide for weight loss?',
      'Is there an oral form of amycretin in development?',
      'What side effects did amycretin show in clinical trials?'
    );

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'pemvidutide'
    AND f.question IN (
      'What makes pemvidutide different from other GLP-1 drugs for MASH?',
      'Has pemvidutide been approved by the FDA?',
      'What is the lean mass preservation advantage of pemvidutide?'
    );

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'mazdutide'
    AND f.question IN (
      'Is mazdutide approved and available anywhere?',
      'How does mazdutide compare to tirzepatide for weight loss?',
      'What other conditions is mazdutide being studied for beyond obesity?'
    );
