-- MinMaxMuscle D1 Insert — 2026-11-18
-- Compound: PRI-002 (Priavoid)
-- Discovery trigger: Priavoid GlobeNewswire press release, November 17, 2026
-- CTAD 2026 (Clinical Trials on Alzheimer's Disease), Boston — Phase 2 PRImus-AD topline
-- Peer-reviewed Phase 1b: PMC11712455 (Alzheimer's Research & Therapy, 2024)
-- Peer-reviewed Phase 2 design: PMC12741198
-- ClinicalTrials: NCT06182085

INSERT OR IGNORE INTO Peptides (name, slug, category, primary_focus, research_summary, nicknames, legal_status, molecular_data, sources, rank, updated_at, forum_topic_url) VALUES (
  'PRI-002',
  'pri-002',
  'Cognitive & Neuroprotective',
  'Alzheimer''s disease / amyloid beta oligomer disaggregation / cognitive decline',
  'PRI-002 is an oral all-D-amino acid peptide developed by Priavoid GmbH (Düsseldorf, Germany) designed to disaggregate and inhibit neurotoxic amyloid beta oligomers (AβOs) — the soluble aggregates implicated in early Alzheimer''s disease pathology. Its backbone is composed entirely of D-amino acids (mirror-image forms of natural L-amino acids), which renders it resistant to proteolytic degradation and enables practical oral bioavailability — a distinction from injectable peptide drugs and IV-administered anti-amyloid antibodies.

Mechanism: PRI-002 binds to and disaggregates small amyloid beta oligomers before they mature into insoluble fibrils or senile plaques. Research models suggest AβOs are the proximal neurotoxic species in early Alzheimer''s disease, impairing synaptic plasticity and triggering neuroinflammation before overt plaque burden accumulates. By targeting the oligomeric form specifically, PRI-002 represents a mechanistically distinct approach from fibril-targeting antibodies like lecanemab (Leqembi) and donanemab (Kisunla).

Clinical Evidence:
Phase 1b (published PMC11712455, Alzheimer''s Research & Therapy, 2024): Safety, tolerability, and pharmacokinetics in MCI and mild AD patients. PRI-002 was well tolerated at all doses evaluated. The phase 1b established the dose range for Phase 2.

Phase 2 PRImus-AD (NCT06182085, n=300, randomized double-blind placebo-controlled): topline results reported at CTAD 2026 (Boston, November 17, 2026). PRI-002 300 mg and 600 mg daily oral for 48–96 weeks vs placebo (1:1:1). Primary outcome: CDR-SB (Clinical Dementia Rating – Sum of Boxes) at week 48 — primary endpoint was not met (not statistically significant). Exploratory data: approximately 19% slowing of cognitive decline on ADAS-Cog13 in the mITT population at week 48; approximately 12% slowing of CDR-SB decline at week 72. ARIA-E rate: 2.2%; ARIA-H rate: 6.7% — markedly lower than anti-amyloid antibodies (lecanemab: ARIA-E 12.6–21.5%; donanemab: ARIA-E 24.1%). Full biomarker analysis (amyloid PET, tau PET, CSF biomarkers) and brain volumetrics expected 2027. Next steps are under evaluation.

Safety Profile: The significantly lower ARIA (amyloid-related imaging abnormalities) incidence relative to anti-amyloid antibodies is a clinically meaningful attribute, particularly for patients who cannot receive MRI monitoring or who have APOE4 carrier status (which increases ARIA risk with antibody therapies). PRI-002''s oral route and low ARIA profile represent the most distinctive safety advantages over the approved standard of care.

Cognition & Longevity Relevance: Alzheimer''s disease and cognitive aging affect nearly 1 in 10 people over 65. The amyloid beta oligomer target is relevant to broader research interest in cognitive preservation, neuroprotection, and longevity. The oral administration and low ARIA incidence may make PRI-002-class peptides more practical than current IV-antibody approaches if efficacy is confirmed in larger or longer trials. The all-D-peptide scaffold itself is a research model for oral peptide drug development applicable beyond neurodegeneration.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  NULL,
  'Phase 2 Clinical',
  'All-D-amino acid peptide (protease-resistant D-peptide scaffold); targets amyloid beta oligomers (AβOs); oral administration; developed by Priavoid GmbH, Düsseldorf, Germany (spin-off from Forschungszentrum Jülich); molecular weight not publicly disclosed; daily oral dosing at 300 mg or 600 mg in Phase 2',
  'https://www.globenewswire.com/news-release/2026/11/17/3404867/0/en/priavoid-announces-topline-phase-2-data-for-oral-all-d-peptide-pri-002-in-alzheimers-disease-at-ctad-2026.html,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11712455/,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12741198/,https://clinicaltrials.gov/study/NCT06182085,https://endpoints.news/priavoids-amyloid-detangling-pill-pri-002-fails-phase-2-study-in-alzheimers/,https://www.biospace.com/press-releases/priavoid-presents-initial-phase-2-data-suggesting-favorable-safety-profile-for-alzheimers-candidate-pri-002-at-ad-pd-2026',
  64,
  '2026-11-18',
  NULL
);

-- FAQs: PRI-002
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is PRI-002 and how does it differ from anti-amyloid antibodies like lecanemab and donanemab?',
  'PRI-002 is a small oral all-D-amino acid peptide that targets soluble amyloid beta oligomers (AβOs) — the toxic early-stage aggregates that impair synaptic function before mature plaques form. Unlike anti-amyloid antibodies such as lecanemab (Leqembi) and donanemab (Kisunla), which are IV-administered biologics given every 2–4 weeks and require regular MRI monitoring for ARIA (amyloid-related imaging abnormalities), PRI-002 is taken as a daily oral tablet. Its all-D-amino acid composition makes it resistant to digestive proteases — the reason conventional peptide drugs cannot be taken orally — enabling gut-stable delivery. ARIA rates in Phase 2 were approximately 2.2% (edema) and 6.7% (microhemorrhage), substantially below the 12–37% rates seen with the IV antibodies. The tradeoff is that PRI-002 did not meet its primary efficacy endpoint in Phase 2 — anti-amyloid antibodies demonstrated statistically significant slowing of decline in their pivotal trials. PRI-002 showed numerical trends but not statistical significance at the primary timepoint.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did the Phase 2 PRImus-AD trial show, and what happens next?',
  'The Phase 2 PRImus-AD trial enrolled 300 patients with mild cognitive impairment (MCI) or mild dementia due to Alzheimer''s disease, randomized 1:1:1 to oral PRI-002 300 mg, 600 mg, or placebo daily for 48–96 weeks. Results presented at CTAD 2026 (November 17, 2026) showed the primary endpoint — CDR-SB improvement at week 48 — was not statistically significant, meaning the trial missed its primary goal. However, exploratory analyses showed approximately 19% slowing of cognitive decline on the ADAS-Cog13 scale (mITT population, week 48) and roughly 12% slowing of CDR-SB at the 72-week mark. Full biomarker data (amyloid PET, tau PET, CSF) and brain volumetric analyses are expected in 2027. Priavoid has not yet announced whether it will pursue Phase 3, modify the program, or seek a development partner. The low ARIA rate is considered a meaningful differentiator if the efficacy signal can be substantiated in a larger or longer trial.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why does the all-D-amino acid composition of PRI-002 matter for oral peptide delivery?',
  'All naturally occurring proteins and peptides in the body are made of L-amino acids — one of two possible mirror-image forms. The digestive system''s proteolytic enzymes (pepsin, trypsin, chymotrypsin, etc.) are exquisitely tailored to cut L-amino acid bonds. D-amino acids are the structural mirror images of L-amino acids; because the enzymes have a fixed three-dimensional active site, they cannot bind and cleave D-amino acid peptide bonds. PRI-002 exploits this stereospecificity: its entire backbone is D-amino acids, so it passes through the gastrointestinal tract largely intact, reaches the bloodstream, and crosses into the brain. This protease-resistance is what makes oral delivery possible — most peptide drugs must be injected because they are digested before absorption. The all-D-peptide scaffold is an active area of research for oral drug development across neurology, oncology, and metabolic disease.'
);

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'pri-002' AND f.question = 'What is PRI-002 and how does it differ from anti-amyloid antibodies like lecanemab and donanemab?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'pri-002' AND f.question = 'What did the Phase 2 PRImus-AD trial show, and what happens next?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'pri-002' AND f.question = 'Why does the all-D-amino acid composition of PRI-002 matter for oral peptide delivery?';
