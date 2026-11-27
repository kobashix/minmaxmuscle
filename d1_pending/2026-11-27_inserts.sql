-- MinMaxMuscle D1 Inserts — 2026-11-27
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: 8M2D (Cenna Biosciences / Nubytide)
-- Discovery trigger: WebSearch — FDA IND clearance June 2026 for Phase 1a/1b Alzheimer's peptide trial
--   (NCT07568041); first capture by pipeline November 27, 2026
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-27_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-25_inserts.sql)

-- ============================================================
-- PEPTIDE: 8M2D (Nubytide)
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  '8M2D',
  '8m2d',
  'Cognitive & Neuroprotective',
  'First-in-class amyloid precursor protein (APP)-targeting peptide designed to prevent Aβ production rather than clear plaques; FDA IND cleared June 2026; Phase 1a/1b trial (NCT07568041) in healthy volunteers and early Alzheimer''s patients',
  '8M2D (brand name: Nubytide; earlier academic designation: P8) is a first-in-class synthetic peptide developed by Cenna Biosciences that targets the amyloid precursor protein (APP) to prevent amyloid-beta (Aβ) production, contrasting fundamentally with every currently approved Alzheimer''s therapy, which works by clearing plaques that have already formed.

What is 8M2D?: Every currently approved amyloid-targeting Alzheimer''s drug — lecanemab (Leqembi), donanemab (Kisunla) — is a monoclonal antibody that binds and removes existing amyloid plaques. 8M2D takes the opposite approach: it is designed to act upstream, binding to APP before secretase cleavage can generate the amyloidogenic Aβ42 and Aβ40 fragments. Cenna Biosciences calls this a "production-blocking" rather than "clearance" mechanism. The peptide is administered subcutaneously.

Mechanism of Action: APP (amyloid precursor protein) is a transmembrane glycoprotein that undergoes sequential proteolytic cleavage. In the amyloidogenic pathway, beta-secretase (BACE1) cleaves APP to generate a C-terminal fragment (C99), which is then cleaved by the gamma-secretase complex (presenilin-1/2) to release Aβ peptides. 8M2D is designed to bind the APP ectodomain to prevent APP from engaging BACE1, thus reducing amyloidogenic cleavage at the source. Because the drug does not engage immune effectors or cause plaque clearance via antibody-dependent phagocytosis, it is not expected to trigger amyloid-related imaging abnormalities (ARIA — edema or microhemorrhages) — the main serious adverse effect limiting the approved anti-amyloid antibodies. Additionally, the drug aims to reduce inflammation and tau pathology as downstream consequences of reduced Aβ load, though this has only been assessed preclinically.

Preclinical Data: Cenna Biosciences'' preclinical program in transgenic Alzheimer''s mouse models demonstrated that subcutaneous administration of 8M2D achieved effective brain penetration and reduced Aβ levels. The company reports reduction in Aβ42, inflammation, and tau markers in preclinical settings. These findings supported the FDA''s acceptance of the IND. Full preclinical data have not been published in a peer-reviewed journal as of November 2026; the FDA IND clearance implies regulatory acceptance of the safety and pharmacology data package.

Phase 1a/1b Clinical Trial (NCT07568041): FDA cleared the IND for 8M2D in June 2026. ClinicalTrials.gov registration NCT07568041 was filed for a two-stage Phase 1 trial. Phase 1a is a randomized, double-blind, placebo-controlled single ascending dose (SAD) and multiple ascending dose (MAD) study in healthy volunteers, with safety and tolerability as the primary endpoint. Phase 1b is an open-label, multiple-dose study in participants with early Alzheimer''s disease, also with safety and tolerability as the primary endpoint. The trial''s estimated start date was September 15, 2026, and the company expected to dose its first participant in late 2026.

Competitive Context and Scientific Significance: If 8M2D''s production-blocking mechanism is validated clinically, it would represent a genuinely different approach to Alzheimer''s disease from the approved antibody therapies. BACE1 inhibitors (verubecestat, lanabecestat, atabecestat) pursued the same upstream strategy but were discontinued due to dose-limiting cognitive side effects from broad BACE1 inhibition. 8M2D''s peptide-based, APP-binding approach aims to block amyloidogenic APP processing without directly inhibiting BACE1 — the company argues this selectivity avoids the off-target substrate issues that ended the small-molecule BACE1 inhibitor programs. No human efficacy or safety data have yet been reported.

Research compounds discussed for educational purposes. Not FDA-approved for human use where applicable. Consult a healthcare provider before use.',
  'Nubytide, P8, 8M2D peptide',
  'Phase 1 Clinical',
  'Peptide; amyloid precursor protein (APP) ectodomain binder; subcutaneous administration; first-in-class production-blocking mechanism vs. clearance; developer: Cenna Biosciences (La Jolla, CA); molecular weight and amino acid sequence not publicly disclosed; designed to cross blood-brain barrier after SC injection; ClinicalTrials.gov: NCT07568041; IND cleared: June 2026',
  'https://www.biospace.com/press-releases/cenna-biosciences-receives-fda-clearance-to-begin-phase-1a-1b-clinical-trial-of-8m2d-a-first-in-class-peptide-designed-to-stop-the-production-of-amyloid-in-alzheimers-disease,https://clinicaltrials.gov/study/NCT07568041,https://allsci.com/news/clinical-trials/cenna-biosciences-amyloid-beta-targeting-peptide-8m2d-to-enters-clinical-testing-for-early-alzheimers/,https://nextgenbiomed.lifesciencexchange.com/market-insight/nubytide-a-novel-alzheimers-peptide-tackling-the-cause-of-amyloid-plaques,https://cennabiosciences.com/',
  74,
  '2026-11-27',
  NULL
);

-- ============================================================
-- FAQs: 8M2D (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does 8M2D differ from approved Alzheimer''s drugs like lecanemab and donanemab?',
  'Lecanemab (Leqembi) and donanemab (Kisunla) are monoclonal antibodies that work by clearing amyloid plaques that have already formed in the brain. They engage the immune system to remove existing aggregates — a mechanism that can cause amyloid-related imaging abnormalities (ARIA), including brain swelling and microhemorrhages. 8M2D takes the opposite approach: it is designed to prevent amyloid from being produced in the first place by binding the amyloid precursor protein (APP) before secretase enzymes can cleave it into the toxic Aβ fragments. Because 8M2D does not cause immune-mediated plaque clearance, Cenna Biosciences expects it to avoid ARIA. If this hypothesis holds in humans, 8M2D could be safer to use at higher doses and potentially used earlier in disease course — even in pre-symptomatic patients — before plaque accumulation becomes significant.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What stage of development is 8M2D in and when might we see human data?',
  'The FDA cleared 8M2D''s IND application in June 2026, authorizing a Phase 1a/1b clinical trial (NCT07568041). Phase 1a tests safety and tolerability in healthy volunteers using a single and multiple ascending dose design. Phase 1b tests multiple doses in people with early Alzheimer''s disease, also prioritizing safety. The company expected to dose its first participant in late 2026. Phase 1 readouts — confirming the drug is safe and that it reaches the brain — are the near-term milestone. Efficacy signals (Aβ reduction in cerebrospinal fluid or on PET imaging) may emerge from Phase 1b, but a full picture of therapeutic efficacy would require Phase 2 trials. Human efficacy data are unlikely before 2028 at the earliest.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is 8M2D (Nubytide) available for research or as a research compound?',
  '8M2D is an investigational drug undergoing Phase 1 clinical trials and is not commercially available. It is administered only under strict clinical trial protocols to enrolled participants. Unlike some compounds in this database that exist in the research peptide market, 8M2D has not been reported as available from compounding pharmacies or research chemical suppliers as of November 2026. Access is limited to participants enrolled at registered trial sites under the FDA-approved IND. No research-grade synthesis of 8M2D has been publicly described, and the amino acid sequence has not been disclosed in public literature, making unauthorized replication or procurement unlikely.'
);

-- ============================================================
-- Link FAQs to Peptide (using subquery to get IDs)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = '8m2d'
  AND f.question IN (
    'How does 8M2D differ from approved Alzheimer''s drugs like lecanemab and donanemab?',
    'What stage of development is 8M2D in and when might we see human data?',
    'Is 8M2D (Nubytide) available for research or as a research compound?'
  );
