-- MinMaxMuscle D1 Inserts - Generated 2026-11-06
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: Enlicitide, MOTS-c
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-06_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console

-- ============================================================
-- PEPTIDE 1: Enlicitide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Enlicitide',
  'enlicitide',
  'Cardiovascular & Anti-inflammatory',
  'First FDA-approved oral PCSK9 inhibitor; macrocyclic peptide blocking PCSK9-LDR interaction; 57% LDL-C reduction at 24 weeks in Phase 3; FDA approved July 16, 2026 as Lipfendra',
  'Enlicitide (MK-0616, brand name Lipfendra) is a first-in-class, once-daily oral macrocyclic peptide that inhibits proprotein convertase subtilisin/kexin type 9 (PCSK9), a serine protease responsible for degrading LDL receptors on hepatocytes. By directly binding PCSK9 and preventing its interaction with the LDL receptor (LDLR), enlicitide leaves more LDLRs available on the liver cell surface to clear LDL particles from the bloodstream. This is mechanistically identical to the injectable PCSK9 antibodies evolocumab (Repatha) and alirocumab (Praluent) — blocking PCSK9 activity to upregulate LDLR — but enlicitide achieves this via an oral small cyclic peptide formulated with sodium caprate (a medium-chain fatty acid) to enhance intestinal absorption and bioavailability. The macrocyclic peptide format occupies a pharmacological space between small molecules and biologics: more target-specific than traditional small molecules, but orally bioavailable unlike antibodies or large peptides.

Enlicitide was developed by Merck and received FDA approval on July 16, 2026, under the brand name Lipfendra, as the first oral PCSK9 inhibitor to reach market. Its approval was based on two pivotal Phase 3 trials in the CORALreef program, with simultaneous publication in the New England Journal of Medicine (PMID: 41879224). It was awarded the FDA Commissioner''s National Priority Voucher in December 2025, which accelerated its review timeline.

Clinical Evidence:

CORALreef Lipids (Phase 3, NCT05952856): 2,909 adults with hypercholesterolemia on maximally tolerated statin therapy; 2:1 randomization to enlicitide 20 mg daily or placebo for 52 weeks.
- Primary endpoint (week 24): Mean LDL-C reduction of 57.1% with enlicitide vs. +3.0% with placebo; adjusted between-group difference of −55.8 percentage points (p<0.001).
- Efficacy maintained through 52 weeks with no attenuation or plateau observed.
- Safety: Diarrhea and dizziness numerically more frequent on enlicitide; discontinuation rates low and comparable to placebo arm.

CORALreef HeFH (Phase 3): Adults with heterozygous familial hypercholesterolemia.
- Between-group LDL-C reduction: 59.4% vs. placebo at primary endpoint timepoint.
- Consistent with Lipids trial efficacy and safety profile.

AHA 2026 Context: The American Heart Association Scientific Sessions (November 6-9, 2026, Chicago) includes presentations on oral PCSK9 and cardiovascular outcomes data, bringing enlicitide into the 7-day discovery window alongside the ongoing survodutide SYNCHRONIZE-CVOT data expected to be presented at this meeting.

Cardiovascular outcomes trial: A cardiovascular outcomes trial (CORALreef CVOT) is ongoing; results are not yet available. Enlicitide''s approval was based on lipid-lowering efficacy as a surrogate endpoint. Cardiovascular event reduction has not yet been demonstrated, which is a key caveat in clinical interpretation.

Significance: Enlicitide fills a major unmet need for the ~30 million Americans who are statin-intolerant or cannot achieve LDL targets with statins alone but are unwilling or unable to self-inject. Its oral administration — once daily at home — contrasts with evolocumab and alirocumab, which require subcutaneous injection every 2–4 weeks. This accessibility advantage may dramatically expand the treatable population for high-risk cardiovascular patients who have rejected injectable therapies.

Enlicitide is FDA-approved (Lipfendra) for adults with hypercholesterolemia including heterozygous familial hypercholesterolemia, as an adjunct to diet and maximally tolerated statin therapy.',
  'MK-0616, enlicitide decanoate, Lipfendra',
  'FDA Approved',
  'Macrocyclic peptide; PCSK9 inhibitor; oral formulation with sodium caprate for intestinal absorption; once-daily 20 mg tablet; MW ~1,200 Da (approximate); cyclic peptide scaffold; developed by Merck; FDA-approved July 16, 2026 as Lipfendra',
  'https://www.tctmd.com/news/fda-approves-enlicitide-oral-pcsk9-inhibitor-ldl-lowering,https://www.nejm.org/doi/full/10.1056/NEJMoa2511002,https://finance.yahoo.com/healthcare/articles/merck-lipfendra-enlicitide-first-only-104500842.html,https://www.ajmc.com/view/fda-approves-enlicitide-first-oral-pcsk9-for-high-cholesterol,https://www.pharmacytimes.com/view/aha-2026-insights-on-oral-pcsk9-survodutide-and-hf-care-come-to-chicago',
  92,
  '2026-11-06',
  NULL
);

-- ============================================================
-- PEPTIDE 2: MOTS-c
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'MOTS-c',
  'mots-c',
  'Immune & Longevity',
  'Mitochondria-derived 16-amino acid peptide encoded in 12S rRNA; activates AMPK independent of AMP/ATP; exercise mimetic; insulin sensitizer; natural levels decline with age and T2D; FDA PCAC favorable vote July 2026; HHS enforcement discretion policy October 2026',
  'MOTS-c (Mitochondrial Open Reading Frame of the 12S rRNA-c) is a 16-amino acid peptide encoded not by nuclear DNA but by the mitochondrial genome — specifically within the small ribosomal RNA gene (12S rRNA) of human mitochondrial DNA. It was discovered in 2015 by Dr. Pinchas Cohen and colleagues at the USC Leonard Davis School of Gerontology (Lee et al., Cell Metabolism, 2015), making it a founding member of a new class of signaling molecules called mitochondria-derived peptides (MDPs). Unlike the vast majority of peptide hormones, MOTS-c''s coding sequence has been conserved across species from C. elegans to humans, suggesting strong evolutionary pressure for its function.

Mechanism of Action: MOTS-c activates AMPK (AMP-activated protein kinase), the master metabolic energy sensor, via a pathway distinct from the canonical AMP/ATP ratio mechanism. Specifically, MOTS-c accumulates in the nucleus during metabolic stress and directly activates the antioxidant response element (ARE) pathway via Nrf2, in addition to stimulating AICAR-independent AMPK activation in skeletal muscle. This results in increased glucose uptake, enhanced fatty acid oxidation, improved insulin sensitivity, and reduced oxidative stress — an integrated metabolic improvement package. In stressed conditions (high fat diet, aging, T2D), MOTS-c expression is suppressed; exogenous MOTS-c supplementation reverses these deficits in preclinical models.

Key Preclinical Evidence (peer-reviewed):
- Insulin sensitivity: In HFD-fed mice, MOTS-c injection significantly improved insulin tolerance tests and reduced adiposity. Euglycemic hyperinsulinemic clamps confirmed increased insulin-mediated glucose disposal (Lee et al., Cell Metabolism, 2015).
- Exercise mimetic: Aging mice given MOTS-c showed improved running capacity and grip strength comparable to exercise training, without formal exercise intervention. This positions MOTS-c as one of the first pharmacological candidates to replicate aspects of exercise physiology (Kim et al., Cell Metabolism, 2018).
- Lifespan extension: MOTS-c extended median lifespan by approximately 11% in aged male mice when treatment began at 23 months — a late-life intervention study published in Nature Communications.
- Aging signal: In a human cross-sectional study (Reynolds et al., Nature Communications, 2021), MOTS-c levels rose ~12-fold in skeletal muscle and ~1.6-fold in blood after acute exercise in young males; levels were significantly lower in older adults and T2D patients, establishing it as an exercise-responsive, age-declining metabolic regulator in humans.

Human Clinical Status: No completed randomized controlled trial of exogenous MOTS-c has been published in humans as of November 2026. The MOTS-MET trial (NCT07505745) is a planned Phase 2a, 12-week, placebo-controlled study in 120 adults with prediabetes or obesity/overweight, testing subcutaneous MOTS-c injection; results are not expected before 2027.

Regulatory Trigger (October 2026): The FDA''s Pharmacy Compounding Advisory Committee (PCAC) voted 7-2 to recommend MOTS-c for placement on the 503A Bulks List at its July 23-24, 2026 meeting — the list that permits licensed compounding pharmacies to prepare substances for patient use without a commercial approved product. Following this favorable advisory vote, HHS issued an Interim Enforcement Discretion Policy (approximately October 28, 2026) directing FDA not to take enforcement action against state-licensed pharmacies compounding products containing MOTS-c and five other peptides (BPC-157, KPV, TB-500, Epitalon, Semax), subject to quality and labeling conditions. This policy shift — the subject of a November 5, 2026 GlobalNewswire release on the "$164 billion peptide market" — directly expands compounding access to MOTS-c for the first time.

Significance for the site: MOTS-c represents a genuinely novel category: a peptide that the body''s own mitochondria produce and release as a metabolic stress signal, with exercise-responsive, insulin-sensitizing, and lifespan-extending properties that parallel (and may partially explain) the benefits of physical exercise. For a site audience engaged with performance and longevity, the concept that there is a measurable "exercise molecule" that declines with age and can be supplemented is scientifically compelling — and the HHS policy shift is the event making this practical to discuss at a clinical level.

MOTS-c is a Research Only compound; no FDA-approved product exists. The HHS enforcement discretion policy allows compounding pharmacy dispensing under specific conditions but does not constitute FDA approval or authorization for self-administration.',
  'Mitochondrial Open Reading Frame of the 12S rRNA-c, MOTS-C, MDP (mitochondria-derived peptide)',
  'Research Only',
  '16 amino acids; MW ~2.17 kDa; sequence: MRWQEMGYIFYPRKLR; encoded in human mitochondrial 12S rRNA gene (m.956T>C region); subcutaneous injection in research; nucleus-penetrant under metabolic stress; AMPK activator; Nrf2/ARE pathway; discovered by Pinchas Cohen lab, USC, 2015',
  'https://www.cell.com/cell-metabolism/fulltext/S1550-4131(15)00061-5,https://www.nature.com/articles/s41467-021-26459-2,https://www.bipc.com/fda-advisory-committee-voted-yes-on-six-peptides-now-what-the-regulatory-road-ahead,https://www.bipc.com/compounding-peptides-what-compounding-pharmacies-need-to-know-about-the-hhs-interim-enforcement-discretion-policy-for-six-peptides,https://www.globenewswire.com/news-release/2026/11/05/3396575/0/en/federal-peptide-policy-shift-could-ignite-a-new-wave-of-growth-across-the-164-billion-peptide-market',
  93,
  '2026-11-06',
  NULL
);

-- ============================================================
-- FAQs for Enlicitide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes enlicitide different from injectable PCSK9 inhibitors like evolocumab or alirocumab?',
  'Enlicitide (Lipfendra), evolocumab (Repatha), and alirocumab (Praluent) all block PCSK9 to upregulate LDL receptors on liver cells — but their delivery formats and molecular structures are entirely different. Evolocumab and alirocumab are monoclonal antibodies (~150 kDa) that must be injected subcutaneously every 2–4 weeks because antibodies cannot survive the gastrointestinal tract. Enlicitide is a small macrocyclic peptide (~1,200 Da) formulated with sodium caprate to enhance intestinal absorption, allowing it to be taken as a once-daily oral tablet. The LDL-lowering efficacy is comparable: enlicitide achieved 57% LDL reduction in Phase 3 vs. roughly 60–70% reductions seen with injectable PCSK9 antibodies. The clinical significance of enlicitide is primarily its oral delivery — it removes the injection barrier that has limited PCSK9 inhibitor adoption. For the ~30 million statin-intolerant patients who have rejected injectables, an oral option may dramatically expand PCSK9 inhibitor use in clinical practice.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How was enlicitide engineered to be absorbed orally as a peptide?',
  'Oral bioavailability of peptides is typically very low because the gastrointestinal tract''s enzymes rapidly cleave peptide bonds and the intestinal epithelium has limited permeability to large polar molecules. Enlicitide overcomes these barriers through two design strategies: (1) Macrocyclization — the peptide''s N- and C-termini are covalently linked to form a ring structure, which restricts the conformational flexibility that protease enzymes require to access peptide bonds; this dramatically improves proteolytic stability. (2) Sodium caprate co-formulation — sodium caprate (a C10 medium-chain fatty acid) is included in the tablet formulation to transiently and reversibly open tight junctions between intestinal epithelial cells and increase paracellular and transcellular peptide permeation. This formulation approach was validated in Phase 1 studies that confirmed measurable PCSK9 inhibition and LDL reduction after oral dosing. The result is a once-daily oral tablet that achieves systemic drug levels sufficient for PCSK9 inhibition without injection. This formulation strategy represents a broader template for making peptide therapeutics orally bioavailable.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Does enlicitide reduce cardiovascular events, not just LDL numbers?',
  'As of the November 2026 FDA approval, enlicitide was approved on the basis of LDL-C reduction as a validated surrogate endpoint — not on a demonstrated reduction in heart attacks, strokes, or cardiovascular deaths. Its Phase 3 CORALreef Lipids and CORALreef HeFH trials measured LDL-lowering efficacy; cardiovascular event data are being collected in an ongoing cardiovascular outcomes trial (CVOT), with results not yet available. This is an important clinical caveat: LDL reduction is strongly associated with cardiovascular event reduction based on decades of statin, ezetimibe, and injectable PCSK9 inhibitor data, but enlicitide''s CVOT will be needed to confirm this translates to hard endpoint benefit. The FDA approved it via the surrogate endpoint pathway given the class evidence from other PCSK9 inhibitors that showed both LDL-lowering and CV event reduction (evolocumab in FOURIER, alirocumab in ODYSSEY). For cardiologists and patients, the expectation is that a 57% LDL reduction should produce cardiovascular benefit consistent with the LDL hypothesis, but the data are pending.'
);

-- ============================================================
-- FAQs for MOTS-c
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is MOTS-c and why is it called a mitochondria-derived peptide?',
  'MOTS-c is a 16-amino acid peptide whose coding sequence is located inside the mitochondrial genome, not the nuclear genome — specifically within the 12S ribosomal RNA gene of human mitochondrial DNA. This makes MOTS-c a member of a newly discovered class of signaling molecules called mitochondria-derived peptides (MDPs). For most of the 20th century, it was thought that the mitochondrial genome only encoded the core subunits of the respiratory chain complexes and two ribosomal RNAs. The discovery by Pinchas Cohen''s lab at USC (Cell Metabolism, 2015) that a small open reading frame inside the 12S rRNA gene encodes a secreted signaling peptide reframed our understanding of the mitochondrial genome: it is not just a powerhouse gene, but also a source of peptide hormones that communicate the mitochondria''s metabolic state to the rest of the cell and to systemic circulation. MOTS-c is now one of several identified MDPs (others include humanin, SHLPs 1-6), each with distinct signaling functions — but MOTS-c is the most studied in the context of exercise, metabolism, and lifespan.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did the FDA advisory committee vote in July 2026 mean for MOTS-c access?',
  'The FDA''s Pharmacy Compounding Advisory Committee (PCAC) voted 7-2 on July 24, 2026 to recommend placing MOTS-c on the 503A Bulks List. If finalized, this would permit FDA-registered compounding pharmacies to legally prepare MOTS-c for patient use even though no commercial FDA-approved MOTS-c product exists. Following this favorable vote, HHS issued an Interim Enforcement Discretion Policy (approximately October 28, 2026) directing FDA not to take enforcement action against state-licensed pharmacies compounding MOTS-c (and five other peptides: BPC-157, KPV, TB-500, Epitalon, Semax) under specific quality and labeling conditions. This is a significant policy shift: prior to this policy, compounding pharmacies faced legal uncertainty about MOTS-c. After it, compounding pharmacies can produce MOTS-c for patient prescriptions with reduced regulatory risk. It does NOT mean MOTS-c is FDA-approved — it has no approved indication, no approved product, and no completed Phase 2 efficacy trial. The policy removes a compounding access barrier; it does not establish clinical efficacy or safety in humans.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the strongest human evidence for MOTS-c''s metabolic effects?',
  'The strongest direct human evidence for MOTS-c''s metabolic role is observational, not interventional. Reynolds et al. (Nature Communications, 2021) measured MOTS-c levels in skeletal muscle biopsies and blood from 10 healthy young men before and after acute exercise. MOTS-c levels rose approximately 12-fold in skeletal muscle and 1.6-fold in circulation after exercise — confirming that the human body increases MOTS-c production in response to physical activity. Separately, cross-sectional studies show that plasma MOTS-c levels are significantly lower in older adults compared to young adults, and lower in type 2 diabetes patients compared to age-matched controls. These observational data establish MOTS-c as an exercise-responsive, age-declining metabolic signal in humans. What they do NOT establish is that injecting exogenous MOTS-c into humans reproduces the metabolic benefits seen in mice. No completed randomized controlled trial of exogenous MOTS-c supplementation in humans has been published as of November 2026. The MOTS-MET trial (Phase 2a, 120 adults with prediabetes, 12-week, recruiting) is designed to answer this question, with results expected in 2027. The human evidence base, while scientifically compelling, is currently at the mechanistic/observational stage.'
);

-- ============================================================
-- Peptide_FAQs junction table inserts for Enlicitide
-- (Run after the above inserts; uses slug-based subquery)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'enlicitide'
  AND f.question = 'What makes enlicitide different from injectable PCSK9 inhibitors like evolocumab or alirocumab?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'enlicitide'
  AND f.question = 'How was enlicitide engineered to be absorbed orally as a peptide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'enlicitide'
  AND f.question = 'Does enlicitide reduce cardiovascular events, not just LDL numbers?';

-- ============================================================
-- Peptide_FAQs junction table inserts for MOTS-c
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'mots-c'
  AND f.question = 'What is MOTS-c and why is it called a mitochondria-derived peptide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'mots-c'
  AND f.question = 'What did the FDA advisory committee vote in July 2026 mean for MOTS-c access?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'mots-c'
  AND f.question = 'What is the strongest human evidence for MOTS-c''s metabolic effects?';
