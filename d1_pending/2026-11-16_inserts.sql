-- MinMaxMuscle D1 Inserts - Generated 2026-11-16
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: TT-P34 (Teitur Trophics)
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-16_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-15_inserts.sql)

-- ============================================================
-- PEPTIDE 1: TT-P34
-- Discovery trigger: Targeted neuroprotective/longevity peptide sweep (November 16, 2026).
--   Teitur Trophics announced positive Phase 1 results for TT-P34 in September 2026
--   (Pharmatimes, European Biotechnology). Full data presented October 5, 2026 at the
--   International Congress of Parkinson's Disease and Movement Disorders, Seoul.
--   Phase 1 enrolled 55 healthy volunteers + 12 early Parkinson's patients. Well tolerated.
--   Blood-brain barrier penetration confirmed. CSF lysosomal protein changes observed.
--   Phase 2 planned 2027. TT-P34 is not in any prior discovery log.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'TT-P34',
  'tt-p34',
  'Cognitive & Neuroprotective',
  'Neuroprotective macrocyclic peptide; mitochondrial & lysosomal function; Parkinson''s disease & neurodegeneration; BBB-penetrant; Phase 1 safety and CNS biomarker data published',
  'TT-P34 is an investigational neuroprotective peptide developed by Teitur Trophics, a Copenhagen-based biotech. It is an 11-amino acid macrocyclic peptide derived from SorCS2 — a sortillin-family receptor that regulates BDNF (brain-derived neurotrophic factor) signaling, lysosomal trafficking, and neuronal survival.

Phase 1 Clinical Results (September 2026): Positive topline results from a randomized, double-blind, placebo-controlled study at CHDR Leiden, Netherlands. Part A: 55 healthy volunteers (MAD/SAD). Part B: 12 early Parkinson''s patients (HY 1-2), 50-day dosing. Well tolerated, no DLTs. BBB penetration confirmed by dose-dependent CSF PK. CSF lysosomal protein biomarker changes in most Parkinson''s patients. Safe with levodopa. Phase 2 planned 2027.

Mechanism: Dual: (1) mitochondrial biogenesis restoration — reduces oxidative stress and ATP failure in neurons; (2) lysosomal clearance enhancement — promotes degradation of misfolded proteins and alpha-synuclein aggregates via SorCS2/BDNF signaling. Macrocyclic structure reduces conformational flexibility, lowers polar surface area, enables BBB penetration.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'TT-P34 (Teitur code designation)',
  'Phase 1 Clinical',
  '11-amino acid macrocyclic peptide; derived from SorCS2 (sortillin-family receptor, BDNF signaling); macrocyclic backbone for BBB penetration; once-weekly subcutaneous administration; dual mechanism: mitochondrial biogenesis + lysosomal clearance; developed by Teitur Trophics (Copenhagen, Denmark)',
  'https://pharmatimes.com/news/teitur-reports-positive-early-data-for-parkinsons-peptide-tt-p34/,https://european-biotechnology.com/?p=21723,https://pharmacally.com/tt-p34-phase-1-parkinsons-disease-teitur-trophics/,https://bioxconomy.com/modalities/peptide-therapy-triumphs-in-phase-i-parkinson-s-trials',
  62,
  '2026-11-16',
  NULL
);

-- FAQs: TT-P34
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is TT-P34 and how does it work?',
  'TT-P34 is an 11-amino acid macrocyclic peptide derived from SorCS2, a brain receptor involved in BDNF signaling. It restores mitochondrial function and improves lysosomal clearance — the cellular recycling system that breaks down damaged proteins including alpha-synuclein aggregates in Parkinson''s disease. Its macrocyclic structure enables blood-brain barrier penetration, confirmed by Phase 1 PK analysis.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did the Phase 1 trial for TT-P34 show?',
  'The Phase 1 trial (CHDR Leiden) enrolled 55 healthy volunteers and 12 early-stage Parkinson''s patients. TT-P34 was well tolerated with no dose-limiting toxicities. CSF PK analysis confirmed dose-dependent BBB penetration. Most Parkinson''s patients showed coordinated lysosomal protein changes in CSF — an early target engagement signal. Compatible with levodopa. Phase 2 planned 2027.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is TT-P34 only relevant for Parkinson''s disease, or does it have broader longevity implications?',
  'TT-P34 is in development for Parkinson''s, but its mechanism — restoring mitochondrial function and lysosomal clearance — targets central hallmarks of cellular aging. Both pathways decline in aging neurons and long-lived cells. The confirmed BBB penetration also makes it of interest for broader peptide-based CNS interventions in cognitive aging and neuroinflammation research.'
);

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'tt-p34' AND f.question = 'What is TT-P34 and how does it work?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'tt-p34' AND f.question = 'What did the Phase 1 trial for TT-P34 show?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'tt-p34' AND f.question = 'Is TT-P34 only relevant for Parkinson''s disease, or does it have broader longevity implications?';
