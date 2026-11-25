-- MinMaxMuscle D1 Inserts — 2026-11-25
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: BI 3034701 (Boehringer Ingelheim / Gubra)
-- Discovery trigger: WebSearch — Boehringer Ingelheim/Gubra July 16, 2026 Phase 2 initiation (NCT07662122);
--   first time captured by pipeline despite Phase 2 start in July 2026
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-25_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-24_inserts.sql)

-- ============================================================
-- PEPTIDE: BI 3034701
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'BI 3034701',
  'bi-3034701',
  'Metabolic & Weight Loss',
  'First-in-class triple GLP-1/GIP/NPY2 receptor agonist for obesity; Phase 2 trial (NCT07662122) initiated July 2026 by Boehringer Ingelheim; Gubra-originated peptide with novel central appetite pathway targeting',
  'BI 3034701 is a Gubra-originated, Boehringer Ingelheim-developed investigational peptide designed as a potential first-in-class triple receptor agonist simultaneously targeting the glucagon-like peptide-1 receptor (GLP-1R), glucose-dependent insulinotropic polypeptide receptor (GIPR), and neuropeptide Y type 2 receptor (NPY2R). Its defining innovation relative to the approved dual agonist tirzepatide and investigational dual GLP-1/amylin combinations is the NPY2R component, which recruits a central nervous system satiety and appetite pathway not targeted by any approved obesity drug.

Developer and Origin: BI 3034701 was discovered at Gubra, a Danish specialty biopharma company focused on metabolic disease peptide therapeutics, and was then licensed to Boehringer Ingelheim under a global development and commercialization agreement. Gubra received a EUR 10 million milestone payment upon Phase 2 initiation in July 2026. Boehringer Ingelheim holds worldwide rights.

Mechanism of Action — The NPY2R Distinction: GLP-1R and GIPR are the well-characterized metabolic targets of tirzepatide. GLP-1R agonism drives insulin secretion, delays gastric emptying, and induces satiety via hypothalamic and brainstem pathways. GIPR agonism at relevant obesity doses enhances weight-loss synergy (via mechanisms still being elucidated, potentially including central NPY neuron signaling). The NPY2R component is the novel element. Neuropeptide Y (NPY) is one of the most potent appetite-stimulating molecules in the brain; it acts via the hypothalamic arcuate nucleus and other feeding circuits. The NPY2 receptor is a presynaptic inhibitory autoreceptor: activating NPY2R suppresses NPY release, thereby reducing the central appetite-stimulating drive that opposes GLP-1-mediated satiety. By targeting NPY2R, BI 3034701 aims to suppress hunger not just through peripheral satiety hormones but by directly reducing the central appetite stimulus — a mechanistically complementary approach. Gubra had previously developed the GLP-1/Y2 co-agonist concept, and BI 3034701 appears to represent the full triple-receptor clinical embodiment of that research program.

Preclinical Summary: Gubra''s preclinical platform for NPY2R agonism includes validated animal models demonstrating that NPY2R activation reduces food intake and body weight. The triple GLP-1/GIP/NPY2 combination in preclinical models has not been described in publicly available publications as of November 2026; Boehringer Ingelheim''s Phase 1/2 decision was supported by internal preclinical data not disclosed in full.

Phase 1 Clinical Study (NCT06352437): Phase 1 was initiated in 2024. The trial evaluated the safety, tolerability, and preliminary pharmacodynamics of BI 3034701 in a first-in-human dose-escalation study. Results: Boehringer Ingelheim reported "encouraging Phase I safety and tolerability data" as the basis for advancing to Phase 2. No detailed numerical weight-loss data from Phase 1 have been publicly disclosed. The compound was administered as a subcutaneous injection.

Phase 2 Clinical Trial (NCT07662122) — Initiated July 16, 2026: Boehringer Ingelheim announced Phase 2 initiation on July 16, 2026, triggering the EUR 10M milestone payment to Gubra. The Phase 2 trial is designed as a dose-finding, randomized, double-blind, placebo-controlled study in participants with overweight and obesity. It includes 7 arms (Groups 1–6: different BI 3034701 doses; Group 7: placebo), with all participants receiving dietary counseling and exercise guidance. The trial aims to identify optimal doses for a potential Phase 3 program and to characterize the safety, tolerability, and efficacy signal in a larger patient population. Estimated completion has not been publicly announced; Boehringer has not disclosed a Phase 3 timeline.

Competitive Context: The most direct competitor for the NPY2R concept is Boehringer Ingelheim''s own earlier dual GLP-1/Y2 research at Gubra. Among public competitors, no approved or late-stage drug targets NPY2R for obesity. The broader landscape includes: tirzepatide (dual GLP-1/GIP, FDA-approved), retatrutide (triple GLP-1/GIP/glucagon agonist, Phase 3), and CagriSema (semaglutide + cagrilintide, Phase 3). BI 3034701''s triple mechanism includes central NPY2R targeting that none of these address. If the central appetite-suppression hypothesis holds, BI 3034701 could achieve sustained weight loss with less compensatory hunger increase — one of the primary limitations of current GLP-1-based therapy.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'BI3034701, GLP-1/GIP/NPY2 triple agonist, Gubra triple agonist',
  'Phase 2 Clinical',
  'Peptide; triple agonist at GLP-1R, GIPR, and NPY2R; subcutaneous injection; Gubra-discovered long-acting peptide format; Boehringer Ingelheim global rights; exact molecular weight and sequence not publicly disclosed; peptide-based consistent with Gubra''s peptide platform heritage',
  'https://www.gubra.dk/mfn_news/boehringer-ingelheim-initiates-phase-2-clinical-trial-of-gubra-originated-triple-receptor-agonist-for-people-living-with-overweight-and-obesity/,https://www.boehringer-ingelheim.com/human-health/crm-health/metabolic-health/obesity-potential-first-class-triple-receptor-agonist-phase-2,https://www.biospace.com/press-releases/boehringer-ingelheim-strengthens-obesity-pipeline-as-potential-first-class-triple-receptor-agonist-bi-3034701-enters-phase-ii-development,https://clinicaltrials.gov/study/NCT07662122,https://clinicaltrials.gov/study/NCT06352437',
  73,
  '2026-11-25',
  NULL
);

-- ============================================================
-- FAQs: BI 3034701 (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes BI 3034701''s NPY2 receptor targeting unique in obesity drug development?',
  'BI 3034701 is the first obesity drug in clinical trials to combine GLP-1, GIP, and NPY2 receptor agonism in a single peptide. The NPY2 component is the novel element. Neuropeptide Y (NPY) is the brain''s most potent appetite stimulant — when dieting or weight loss reduces energy intake, the brain compensates by increasing NPY secretion to drive hunger, which is one of the main reasons people struggle to maintain lost weight. NPY2R is a presynaptic autoreceptor: activating it suppresses NPY release from neurons in the arcuate nucleus of the hypothalamus, directly reducing the central appetite drive that counteracts the satiety effects of GLP-1 agonism. No approved drug targets NPY2R. If Boehringer Ingelheim''s hypothesis is correct, adding NPY2R agonism to a GLP-1/GIP backbone could reduce compensatory hunger — a key limitation of current GLP-1 therapies — and potentially sustain weight loss more durably.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What data exists for BI 3034701, and what did Phase 1 show?',
  'BI 3034701 completed a Phase 1 first-in-human dose-escalation study (NCT06352437) initiated in 2024. Boehringer Ingelheim reported "encouraging Phase 1 safety and tolerability data" as the basis for advancing to Phase 2, but no detailed numerical results (weight loss percentages, dose levels, pharmacokinetics) have been publicly disclosed as of November 2026. Phase 2 (NCT07662122) initiated July 16, 2026, as a randomized, double-blind, dose-finding trial across 7 arms in people with overweight and obesity. Phase 2 results are not yet available. The main public evidence supporting the program is: (1) Gubra''s published preclinical work on GLP-1/NPY2 co-agonism, (2) Phase 1 safety clearance, (3) Boehringer Ingelheim''s decision to invest in Phase 2 and pay EUR 10M to Gubra. This is an early-stage compound — investors and researchers should not expect efficacy data until at least 2027–2028.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Who is Gubra and why does their role matter for BI 3034701?',
  'Gubra is a Danish biopharma company founded in 2010 and headquartered in Hørsholm, Denmark, that specializes in developing peptide-based drugs for metabolic diseases. Gubra''s scientific foundation is in GLP-1 biology and neuropeptide pharmacology; they have published extensively on GLP-1/NPY2 co-agonism and have developed multiple proprietary peptide analogs. BI 3034701 originated from Gubra''s research into combining GLP-1R/GIPR agonism with NPY2R targeting, and was then licensed to Boehringer Ingelheim under a global development agreement. Gubra received a EUR 10 million milestone on Phase 2 initiation (July 2026) and retains milestones tied to future development stages. Gubra''s credibility matters because the NPY2R-obesity hypothesis is relatively new in clinical development — Gubra''s published academic work and demonstrated ability to design long-acting peptides that engage NPY2R provides the strongest scientific foundation for the program. Gubra is listed on the Copenhagen Stock Exchange under the ticker GUBRA.'
);

-- ============================================================
-- Link FAQs to Peptide (using subquery to get IDs)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'bi-3034701'
  AND f.question IN (
    'What makes BI 3034701''s NPY2 receptor targeting unique in obesity drug development?',
    'What data exists for BI 3034701, and what did Phase 1 show?',
    'Who is Gubra and why does their role matter for BI 3034701?'
  );
