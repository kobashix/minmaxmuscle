-- MinMaxMuscle D1 Inserts - Generated 2026-11-17
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: PT-00114 (Protagenic Therapeutics)
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-17_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-16_inserts.sql)

-- ============================================================
-- PEPTIDE 1: PT-00114 (TCAP-1 analog)
-- Discovery trigger: November 11, 2026 — Protagenic Therapeutics announced a private
--   placement of up to $5M to advance PT-00114 into its first U.S. clinical trial for
--   Generalized Anxiety Disorder (GAD). FDA pre-IND feedback (August 20, 2026) confirmed
--   no deficiencies blocking an IND submission. Ex-US Phase 1 single-ascending-dose and
--   multiple-ascending-dose studies in healthy volunteers completed by December 2025 with
--   positive topline safety results (well-tolerated, no SAEs). Peer-reviewed preclinical
--   data published in Behavioural Pharmacology (2026), plus foundational TCAP-1 papers by
--   Al Chawaf et al. (2007) and Tan et al. (2008). First CRH-inhibiting peptide in the
--   discovery pipeline. Not in any prior discovery log.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'PT-00114',
  'pt-00114',
  'Cognitive & Neuroprotective',
  'Synthetic 41-aa TCAP-1 analog; CRH inhibitor; HPA axis / cortisol modulation; stress, anxiety, PTSD; completed Phase 1 ex-US (healthy volunteers); first-class CRF-pathway neuropeptide',
  'PT-00114 is a synthetic 41-amino acid analog of TCAP-1 (teneurin C-terminal associated peptide-1), a naturally occurring neuropeptide involved in regulating the brain''s stress response via the corticotropin-releasing factor (CRF) pathway. It is in development by Protagenic Therapeutics (NASDAQ: PTIX), a University of Toronto spinout.

Mechanism of Action: PT-00114 acts as a CRH (corticotropin-releasing hormone) inhibitor. Natural TCAP-1 modulates the HPA (hypothalamic-pituitary-adrenal) axis by blunting CRF-driven signaling at the receptor level, reducing downstream cortisol release and its behavioral consequences. It also acts via latrophilins (ADGRL/CIRL family GPCRs) — adhesion-associated G-protein-coupled receptors linked to synaptic organization and stress-circuit plasticity. Unlike benzodiazepines (which suppress GABA-A receptors broadly) or SSRIs (which flood serotonin synapses globally), PT-00114 targets the CRF pathway specifically, reducing the initiating signal in the stress cascade rather than dampening it downstream.

Peer-Reviewed Preclinical Evidence: Al Chawaf et al. (2007, Behavioural Brain Research): 5 days of IV TCAP-1 injections significantly decreased CRF-induced anxiety in both the open field test and elevated plus maze in rodents. Tan et al. (2008, Psychoneuroendocrinology): TCAP-1 blocked CRF-induced increases in acoustic startle responses — an objective measure of fear sensitization. A 2026 study published in Behavioural Pharmacology: Two days of PT-00114 treatment reduced plasma corticosterone levels and attenuated anxiety-like behavior in a chronic stress model; center-field time increased 282% vs. controls (p=0.031). Effects were not replicated by a standard CRF1 receptor antagonist in the same model, suggesting a broader or distinct site of action.

Clinical Development: Ex-US Phase 1 single-ascending-dose (SAD) and multiple-ascending-dose (MAD) studies conducted in healthy volunteers at Nuvisan GmbH (Neu-Ulm, Germany) through September 2025. Positive topline safety results announced December 9, 2025: all cohorts completed dosing, well-tolerated, no serious adverse events. FDA pre-IND Type B meeting feedback (August 20, 2026): no deficiencies noted; FDA confirmed no clinical hold issues for the planned 3-part Phase 1/2a program in Generalized Anxiety Disorder (GAD). IND submission targeted Q1 2027; first patient dosing targeted Q2 2027. Prior guidance (2025) described Phase 2 for PTSD as a parallel track. AdisInsight (August 2025) lists PT-00114 as Phase 1/2 for GAD and Phase 2 for PTSD.

Fitness & Longevity Relevance: Cortisol dysregulation caused by CRF pathway overactivation drives muscle catabolism, impaired post-exercise recovery, visceral fat accumulation, insulin resistance, disrupted sleep architecture, and accelerated cognitive decline — all core performance and longevity concerns. PT-00114 targets the upstream CRF signal rather than the global downstream stress response, making it mechanistically distinct from existing anxiolytics. For athletes and high-performance individuals, chronically elevated cortisol is a recognized barrier to adaptation. A selective CRF pathway peptide offers a research model for HPA-axis normalization without the sedation, dependence, or blunted hormonal response associated with GABA-A agonists.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'TCAP-1, teneurin C-terminal associated peptide-1 (parent natural peptide)',
  'Phase 1 Clinical',
  '41-amino acid synthetic analog of natural TCAP-1 neuropeptide; derived from the C-terminus of teneurin-1 (TENM1); acts as CRH inhibitor via CRF pathway modulation and latrophilin (ADGRL1/2) GPCRs; estimated MW ~4.7 kDa; subcutaneous administration; developed by Protagenic Therapeutics (NASDAQ: PTIX), University of Toronto origin; ex-US Phase 1 conducted at Nuvisan GmbH, Neu-Ulm, Germany (CTIS: 2024-519316-13-00)',
  'https://www.biospace.com/press-releases/protagenic-therapeutics-advances-pt00114-into-multiple-dose-phase-1-trial-positioning-for-phase-2-in-stress-mood-disorders,https://www.biospace.com/press-releases/protagenic-therapeutics-announces-private-placement-of-up-to-5-million-to-advance-pt00114-into-its-first-u-s-clinical-trial-in-generalized-anxiety-disorder,https://www.stocktitan.net/news/PTIX/results-from-phase-1-multiple-dose-study-of-pt00114.html,https://en.wikipedia.org/wiki/PT-00114,https://www.psychiatrictimes.com/view/fda-feedback-paves-way-for-new-ind-filing-for-pt00114-in-generalized-anxiety-disorder',
  63,
  '2026-11-17',
  NULL
);

-- FAQs: PT-00114
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is PT-00114 and how is it different from existing anxiety treatments?',
  'PT-00114 is a synthetic 41-amino acid analog of TCAP-1, a naturally occurring brain neuropeptide that modulates the CRF (corticotropin-releasing factor) stress pathway. Unlike benzodiazepines (which broadly suppress the GABA-A system, causing sedation and dependence) or SSRIs (which flood serotonin synapses globally), PT-00114 targets the upstream CRF signal — the initiating hormone in the HPA axis stress cascade. By inhibiting CRH, it reduces the trigger for cortisol release and downstream anxiety rather than blunting the entire stress response. This selectivity could make it less sedating and habit-forming, though human evidence is still in early stages.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did the Phase 1 trial for PT-00114 show?',
  'The ex-US Phase 1 single-ascending-dose (SAD) and multiple-ascending-dose (MAD) studies were conducted in healthy volunteers at Nuvisan GmbH in Germany (registered as CTIS 2024-519316-13-00). Protagenic Therapeutics reported positive topline safety results on December 9, 2025: all planned dosing cohorts completed with no serious adverse events and no clinically significant safety findings. These results supported the company''s subsequent FDA pre-IND submission for a U.S. Phase 1/2a trial in Generalized Anxiety Disorder (GAD). The FDA responded in August 2026 with no deficiencies noted, clearing the path for an IND filing targeted for Q1 2027.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why is PT-00114 relevant to fitness, body composition, and longevity?',
  'The CRF/cortisol pathway is a central regulator of body composition and longevity. Chronically elevated cortisol — driven by CRF overactivation — accelerates muscle protein breakdown (catabolism), promotes visceral fat accumulation and insulin resistance, disrupts sleep architecture, blunts growth hormone secretion, and impairs immune function. All of these are well-documented performance and longevity liabilities. PT-00114''s mechanism specifically targets CRH to reduce this upstream hormonal cascade. Research interest from the fitness and longevity community centers on whether selective CRF-pathway inhibition can normalize HPA-axis function without the side effects (sedation, cortisol rebound, hormonal blunting) seen with broad-spectrum anxiolytics. The peer-reviewed preclinical data showing reduced corticosterone in chronically stressed rodents is the foundation of that interest.'
);

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'pt-00114' AND f.question = 'What is PT-00114 and how is it different from existing anxiety treatments?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'pt-00114' AND f.question = 'What did the Phase 1 trial for PT-00114 show?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'pt-00114' AND f.question = 'Why is PT-00114 relevant to fitness, body composition, and longevity?';
