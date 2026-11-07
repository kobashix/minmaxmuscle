-- MinMaxMuscle D1 Inserts - Generated 2026-11-07
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Apply in order after all prior pending SQL files (chronological order: 10-29, 11-01, 11-03, 11-05, 11-06, 11-07)
--
-- To apply:
--   Option 1: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-07_inserts.sql
--   Option 2: Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console > paste SQL

-- ============================================================
-- PEPTIDE 1: Setmelanotide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Setmelanotide',
  'setmelanotide',
  'Metabolic & Weight Loss',
  'Melanocortin-4 receptor (MC4R) agonist for genetic and acquired obesity; first treatment for POMC/PCSK1/LEPR deficiency and acquired hypothalamic obesity; FDA approved; AstraZeneca $10B acquisition offer November 2026',
  'Setmelanotide (RM-493, brand name Imcivree) is an 8-amino acid synthetic macrocyclic peptide that selectively activates the melanocortin-4 receptor (MC4R), a G protein-coupled receptor expressed primarily in the hypothalamus that plays a central role in regulating food intake and energy expenditure. It was developed by Rhythm Pharmaceuticals.

Background and Mechanism: MC4R sits at the downstream end of the leptin-melanocortin pathway. When leptin signaling is intact, proopiomelanocortin (POMC) neurons in the hypothalamus release alpha-melanocyte-stimulating hormone (alpha-MSH), which binds MC4R to suppress food intake and increase metabolic rate. In patients with POMC deficiency, PCSK1 deficiency, leptin receptor (LEPR) deficiency, or acquired hypothalamic damage, this signaling chain is broken — resulting in severe, early-onset hyperphagia and morbid obesity that is resistant to behavioral intervention. Setmelanotide bypasses the upstream defect and activates MC4R directly, acting as a synthetic replacement for the missing endogenous signal. This is mechanistically distinct from all GLP-1 receptor agonists, which act on a different hypothalamic signaling pathway.

FDA Approvals (three indications):
1. December 2020: Approved for chronic weight management in adults and pediatric patients ≥6 years with POMC, PCSK1, or LEPR deficiency confirmed by genetic testing.
2. June 2022: Expanded to Bardet-Biedl syndrome (BBS), a rare ciliopathy-associated genetic obesity syndrome.
3. March 2026: Expanded to acquired hypothalamic obesity (AHO) — resulting from damage to hypothalamic structures regulating energy homeostasis (e.g., from craniopharyngioma, surgery, radiation, or traumatic brain injury). This is the first FDA-approved therapy for AHO.

Clinical Evidence:
- POMC/PCSK1/LEPR Phase 3 (Clément et al., NEJM 2020): In POMC-deficiency cohort (n=10), mean body weight reduction of 25.6% at 12 months (p<0.001 vs. placebo). In LEPR-deficiency cohort (n=11), mean reduction of 12.5%. Hunger numeric rating scale (NRS) reduced by >3 points in both cohorts. These are some of the most dramatic weight-loss results in any drug trial for rare obesity, consistent with the mechanistic hypothesis that restoring MC4R signaling completely normalizes energy regulation in MC4R-pathway-deficient patients.
- BBS Phase 3 (BBSOR trial): In 44 BBS patients aged 6 and older, mean body weight change −9.1% vs. +0.3% placebo at 52 weeks (p<0.001). BMI z-score reductions and hunger score improvements were also significant.
- AHO Phase 3 (TRANSCEND trial): 142 adults with acquired hypothalamic obesity; mean placebo-adjusted BMI reduction of 18.4% after one year. This was the pivotal trial leading to the March 2026 FDA approval, the first approved therapy for a condition affecting approximately 50,000 patients in the US.
- Safety profile: Most common adverse effects are injection site reactions, nausea, and skin hyperpigmentation (from mild off-target MC1R activity). Anti-drug antibodies (ADA) were detected in 1.6% of subjects across 5 trials at ≥52 weeks exposure, with no apparent impact on efficacy. No cardiovascular safety signals emerged.

AstraZeneca Acquisition (7-day trigger, November 2026): On November 4-6, 2026, multiple reports confirmed that AstraZeneca made a non-binding offer of approximately $10 billion to acquire Rhythm Pharmaceuticals, to be executed through Alexion, its rare-disease unit. Rhythm shares rose 24-28% on the news. Analyst projections (William Blair) place Imcivree at $3.6 billion in peak sales by 2032, not including potential expansion into Prader-Willi syndrome (Phase 2 ongoing). A bidding war has been suggested. No confirmed deal as of November 7, 2026. The acquisition interest validates what the clinical evidence already demonstrates: a first-in-class peptide drug representing a transformative approach to genetic and acquired obesity — one that fills a gap that GLP-1 drugs do not reach.

Significance: Setmelanotide represents the first approved therapy to directly repair a broken neuroendocrine signaling cascade (leptin → POMC → MC4R) rather than add an external satiety signal. For patients with POMC or LEPR deficiency, whose obesity is caused not by overeating but by the absence of the endogenous fullness signal, setmelanotide is effectively a replacement therapy. The March 2026 AHO approval extends this precision-medicine concept to the tens of thousands of patients who develop hypothalamic obesity after craniopharyngioma or other brain injury.

Research Limitations and Disclaimers: Setmelanotide is approved only for rare genetic or acquired hypothalamic obesity — not for polygenic or common obesity. It is not appropriate for weight management in the general population. Its long-term cardiovascular outcomes have not been established in dedicated CVOT trials. All clinical use requires genetic testing or imaging confirmation of the underlying condition. Research compounds discussed for educational purposes. Not a treatment recommendation. Consult a healthcare provider.',
  'Imcivree, RM-493',
  'FDA Approved',
  '8-amino acid synthetic macrocyclic peptide; MC4R selective agonist; subcutaneous injection; MW ~1023 Da; developed by Rhythm Pharmaceuticals; approved for POMC/PCSK1/LEPR deficiency, Bardet-Biedl syndrome, and acquired hypothalamic obesity',
  'https://www.nejm.org/doi/10.1056/NEJMoa1917544,https://www.fda.gov/drugs/drug-approvals-and-databases/drug-approvals-search-results,https://www.biospace.com/business/coveted-metabolic-gem-rhythm-reportedly-gets-10b-offer-from-astrazeneca,https://www.fiercepharma.com/pharma/astrazeneca-offers-10b-acquire-rhythm-analysts-whisper-bidding-war',
  94,
  '2026-11-07',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Epitalon
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Epitalon',
  'epitalon',
  'Longevity',
  'Synthetic tetrapeptide analog of epithalamin (pineal gland); telomerase activation; rodent lifespan extension 12-24%; HHS enforcement discretion policy October 2026; Elysium Health platform launch November 2026',
  'Epitalon (Ala-Glu-Asp-Gly; also spelled Epithalon or Epithalone) is a synthetic tetrapeptide designed as a functional analog of epithalamin, a naturally occurring polypeptide fraction isolated from bovine pineal gland extracts. It was developed by Professor Vladimir Kh. Khavinson and colleagues at the St. Petersburg Institute of Bioregulation and Gerontology (IBEG), Russia, beginning in the 1980s, as part of a systematic program to identify the minimal active sequences from tissue-specific bioregulator peptides. The native epithalamin was derived from the pineal gland — the brain structure that produces melatonin and plays a central role in circadian rhythm regulation — and the synthetic Ala-Glu-Asp-Gly sequence was identified as the bioactive tetrapeptide.

Mechanism of Action: Epitalon is proposed to act through two complementary pathways:
1. Telomerase activation: In aged and senescent cells, telomerase (the enzyme responsible for extending and maintaining telomere ends on chromosomes) is typically suppressed, allowing telomeres to shorten with successive cell divisions. Telomere shortening is considered a hallmark of cellular aging and a contributor to senescence. Epitalon has been reported in cell culture studies and animal experiments to reactivate telomerase activity in aging cells, potentially allowing partial telomere restoration. If confirmed at clinical scale, this would represent a pharmacological approach to one of the core molecular events in biological aging.
2. Melatonin regulation: Epitalon may normalize the age-related decline in pineal gland function by supporting melatonin synthesis and secretion. Circadian melatonin production typically declines with age; reduced melatonin is associated with sleep disruption, immune dysregulation, and increased oxidative stress.

Evidence Base:
- Rodent lifespan extension (Khavinson lab, IBEG): Multiple studies in various mouse and rat strains reported median lifespan extension of 12-24% in epitalon-treated animals vs. untreated controls. In one experiment with long-lived SAM-R/1 mice, treatment extending to natural death showed both lifespan and reduced spontaneous tumor incidence vs. controls. These studies are from Khavinson''s group and have not been replicated by independent Western laboratories, which is a significant caveat.
- Telomere/telomerase (cell studies): A 2025 Biogerontology paper reported that epitalon influences telomere-maintenance pathway proteins in human cell lines, though it did not establish that lifespan extension or clinical anti-aging effects occur in humans.
- Melatonin regulation (human, placebo-controlled): In a double-blind, placebo-controlled trial of 75 elderly women, treatment with an epithalamin/epitalon preparation produced statistically significant increases in urinary 6-sulfatoxymelatonin — a melatonin metabolite — compared to placebo. This is the strongest human biological effect on record for this compound. It demonstrates a measurable impact on pineal function in humans, though it does not establish clinical aging or longevity outcomes.
- Cancer prevention (rodent): Several Khavinson-group studies observed reduced rates of spontaneous carcinogenesis in epitalon-treated rodents vs. controls. No human cancer trial data exists.
- 2026 Frontiers in Aging review: A 2026 peer-reviewed review in Frontiers in Aging (doi:10.3389/fragi.2026.1790247) covers epitalon within the context of peptide-based anti-aging research, listing rodent lifespan gains of 12-24% and calling for rigorous clinical validation of promising peptide candidates through well-designed trials.

Evidence Limitations: The evidence base for epitalon is dominated by research from Khavinson''s IBEG group at a single institution. No large-scale, peer-reviewed, double-blind, randomized controlled trial of synthetic epitalon has been completed or published in a Western regulatory framework as of November 2026. The telomerase activation hypothesis in humans has not been proven in a clinical trial. The melatonin-related human data, while placebo-controlled, is small and measures a surrogate endpoint (a hormone metabolite), not an aging outcome. Western regulatory bodies have not evaluated or approved epitalon for any indication.

Regulatory Trigger (October/November 2026): On approximately October 28, 2026, HHS issued an Interim Enforcement Discretion Policy covering six research peptides including epitalon, BPC-157, KPV, MOTS-c, Semax, and TB-500. This policy directs FDA not to take enforcement action against state-licensed 503A compounding pharmacies preparing these peptides under defined quality and labeling conditions, pending formal rulemaking. This followed a favorable PCAC recommendation. On November 5-6, 2026, Elysium Health — a longevity science company known for its NR-based supplements — announced plans to offer epitalon through its Elysium Health Rx prescription platform, in what it described as a "first-of-its-kind expert-led study" into epitalon''s safety and mechanism. This is the first formal U.S. wellness/longevity platform to offer epitalon as a compounded prescription peptide.

Significance for the site: Epitalon occupies a unique position in the peptide research landscape: it is one of the few compounds for which a formal telomere-related anti-aging hypothesis has been proposed and tested in controlled (animal) experiments, with peer-reviewed publications in a major aging journal. The fact that a natural peptide fragment of the pineal gland — the master regulator of circadian rhythm — may also influence the cellular machinery of aging (telomeres and telomerase) is a scientifically compelling concept. The HHS enforcement discretion policy and Elysium Health''s launch make November 2026 the moment this compound transitions from obscure Russian research peptide to mainstream U.S. longevity intervention.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'Epithalon, Epithalone, Ala-Glu-Asp-Gly, epithalamin synthetic analog',
  'Research Only',
  '4-amino acid synthetic tetrapeptide (Ala-Glu-Asp-Gly); MW ~390 Da; synthetic analog of epithalamin (bovine pineal extract); developed by V.Kh. Khavinson at IBEG, St. Petersburg, Russia; research compound',
  'https://www.frontiersin.org/journals/aging/articles/10.3389/fragi.2026.1790247/full,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11943447/,https://www.globenewswire.com/news-release/2026/11/05/3396575/0/en/federal-peptide-policy-shift-could-ignite-a-new-wave-of-growth-across-the-164-billion-peptide-market.html,https://www.prnewswire.com/news-releases/elysium-health-expands-access-to-six-additional-peptides-under-new-hhs-policy-302930925.html',
  95,
  '2026-11-07',
  NULL
);

-- ============================================================
-- FAQs: Setmelanotide (3 questions)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How is setmelanotide different from GLP-1 drugs like semaglutide or tirzepatide?',
  'Setmelanotide and GLP-1 receptor agonists target entirely different signaling pathways. GLP-1 drugs work peripherally and centrally to slow gastric emptying, increase satiety signaling, and reduce caloric intake in the general obese population — they work regardless of the underlying cause of obesity. Setmelanotide, by contrast, selectively activates MC4R, the melanocortin receptor that sits at the downstream end of the leptin-melanocortin neuroendocrine axis. It is designed specifically for patients in whom this axis is broken — those with POMC, PCSK1, or LEPR gene mutations, Bardet-Biedl syndrome, or acquired hypothalamic damage. For these patients, GLP-1 drugs provide limited benefit because their obesity is caused not by excess caloric intake per se but by the absence of the endogenous MC4R-activating signal. Setmelanotide replaces that missing signal. It is not approved or appropriate for polygenic or common obesity.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is acquired hypothalamic obesity and why was the 2026 FDA approval significant?',
  'Acquired hypothalamic obesity (AHO) develops when damage to the hypothalamus — often from a craniopharyngioma (a rare brain tumor) and its treatment (surgery, radiation) — destroys the neural circuits that regulate hunger and energy expenditure. Patients with AHO experience severe, treatment-resistant obesity because the hypothalamus can no longer respond to satiety signals like leptin. Prior to the March 2026 FDA approval of setmelanotide for AHO, there was no approved pharmacological treatment for this condition. The TRANSCEND trial (142 adults) demonstrated an 18.4% placebo-adjusted BMI reduction after one year — a clinically meaningful effect for a population that had previously had no approved option. AHO affects an estimated 50,000 patients in the US, most of whom are craniopharyngioma survivors, and the approval represents the first time an FDA-approved mechanism exists to pharmacologically compensate for the loss of hypothalamic MC4R pathway function.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the AstraZeneca acquisition offer for Rhythm and what does it mean for setmelanotide access?',
  'Reports from November 4-6, 2026 describe AstraZeneca making a non-binding ~$10 billion offer to acquire Rhythm Pharmaceuticals through its Alexion rare-disease unit. Neither company has confirmed the offer, and no binding agreement exists as of this writing. If the acquisition proceeds, Imcivree would become part of AstraZeneca''s rare-disease portfolio alongside other Alexion drugs. Analyst projections place Imcivree peak sales at $3.6 billion by 2032, driven by existing approved indications plus a potential expansion into Prader-Willi syndrome (Phase 2 ongoing). For patients, the most important near-term implication would be AstraZeneca''s commercial infrastructure and rare-disease expertise potentially improving global market access and insurance coverage for a drug that currently serves a small but medically underserved population. The drug itself — its indications, mechanism, and evidence base — does not change with any acquisition.'
);

-- ============================================================
-- FAQs: Epitalon (3 questions)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is there human evidence that epitalon extends lifespan or slows aging?',
  'As of November 2026, no completed, peer-reviewed, randomized controlled trial of synthetic epitalon has demonstrated lifespan extension or measurable reduction in aging biomarkers in humans. The human evidence consists of: (1) a small placebo-controlled trial (75 elderly women) showing increased urinary melatonin metabolite levels, confirming a biological effect on pineal/melatonin function; and (2) observational and open-label data from Khavinson''s group in Russia suggesting reduced mortality and morbidity in some treated cohorts vs. historical controls. The lifespan extension data (12-24%) comes from rodent studies, primarily from Khavinson''s IBEG institute, and has not been replicated by independent Western laboratories. A 2025 Biogerontology paper reported telomere-maintenance pathway effects in human cell lines — not in living humans. The 2026 Frontiers in Aging review acknowledges the preclinical promise while calling for rigorous clinical validation. The honest summary: epitalon has a scientifically plausible mechanism, real (if not independently replicated) preclinical data, and one genuine human biological effect in a controlled setting — but no human longevity evidence meeting current Western evidence-based medicine standards.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What does telomerase activation by epitalon actually mean?',
  'Telomerase is an enzyme that extends the repetitive DNA sequences (telomeres) at the ends of chromosomes. Each cell division shortens telomeres slightly; when telomeres become critically short, the cell enters senescence or dies — a process tied to aging and age-related disease. Most differentiated adult cells have suppressed telomerase, so telomeres shorten over decades. Epitalon has been reported in cell culture and animal studies to reactivate telomerase in aging cells, potentially allowing partial telomere lengthening. If this effect translates to humans, it would represent a pharmacological intervention in one of the core molecular hallmarks of aging. However, this hypothesis faces two important caveats. First, the cell culture and animal data are mainly from Khavinson''s group without independent replication. Second, telomerase activation has a theoretically concerning side: cancer cells characteristically maintain telomeres via telomerase activation to achieve replicative immortality. Any pro-telomerase intervention would need careful safety evaluation for cancer risk in long-term human use — a question that existing epitalon data has not resolved. The Khavinson rodent studies found reduced tumor incidence, not increased, but this needs confirmation in a cancer-safety-focused human trial design.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why did the HHS enforce discretion policy in October 2026 specifically cover epitalon?',
  'The October 2026 HHS Interim Enforcement Discretion Policy followed a July 2026 favorable recommendation by FDA''s Pharmacy Compounding Advisory Committee (PCAC) for placement of several peptides on the 503A Bulks List — the list permitting licensed compounding pharmacies to prepare substances without an approved commercial product. The PCAC''s favorable vote was influenced by the existing research literature and the growing clinical interest in these peptides from longevity medicine practitioners who had been using them in research contexts. Epitalon was included based on its years of Khavinson-group research, its defined tetrapeptide structure enabling quality testing, and its decades-long safety record in Russian medical use (epithalamin-based products have been used in Russian geriatric medicine for over 30 years). The policy is not FDA approval, does not establish efficacy for any indication, and can be revisited if safety signals emerge. It allows state-licensed 503A pharmacies to compound epitalon with patient-specific prescriptions, quality-tested ingredients, and safety reporting. This is the regulatory basis for Elysium Health''s November 2026 platform offering.'
);

-- ============================================================
-- Junction table: Peptide_FAQs (run after the above inserts; uses slug-based subquery)
-- ============================================================

-- Setmelanotide FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'setmelanotide'
  AND f.question = 'How is setmelanotide different from GLP-1 drugs like semaglutide or tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'setmelanotide'
  AND f.question = 'What is acquired hypothalamic obesity and why was the 2026 FDA approval significant?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'setmelanotide'
  AND f.question = 'What is the AstraZeneca acquisition offer for Rhythm and what does it mean for setmelanotide access?';

-- Epitalon FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'epitalon'
  AND f.question = 'Is there human evidence that epitalon extends lifespan or slows aging?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'epitalon'
  AND f.question = 'What does telomerase activation by epitalon actually mean?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'epitalon'
  AND f.question = 'Why did the HHS enforce discretion policy in October 2026 specifically cover epitalon?';
