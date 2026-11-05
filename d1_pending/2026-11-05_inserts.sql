-- MinMaxMuscle D1 Inserts - Generated 2026-11-05
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: Avexitide, HER-096
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-05_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console

-- ============================================================
-- PEPTIDE 1: Avexitide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Avexitide',
  'avexitide',
  'Metabolic & Weight Loss',
  'GLP-1 receptor antagonist peptide; first potential FDA-approved therapy for post-bariatric hypoglycemia; Phase 3 LUCIDITY: 55% reduction in severe hypoglycemic events (p=0.000003)',
  'Avexitide (exendin 9-39) is a 31-amino acid competitive antagonist of the GLP-1 receptor, structurally derived from exendin-4 — the same Gila monster peptide that inspired exenatide — by truncation of the first eight N-terminal residues. Removing those eight residues converts the molecule from a full GLP-1R agonist into a potent competitive antagonist: it occupies the receptor without activating the downstream Gs/cAMP/PKA insulin-secretion cascade. This is the pharmacological inverse of GLP-1 agonists like semaglutide and liraglutide.

The clinical application is post-bariatric hypoglycemia (PBH), a serious metabolic complication affecting up to 20% of patients after Roux-en-Y gastric bypass and sleeve gastrectomy. Following surgery, the altered gastrointestinal anatomy drives exaggerated postprandial GLP-1 release, causing runaway insulin secretion and life-threatening hypoglycemia (blood glucose <54 mg/dL; Level 2/3 events). PBH has no FDA-approved pharmacological treatment as of 2026; management relies on dietary restriction, continuous glucose monitoring, and off-label somatostatin analogs.

Phase 3 LUCIDITY trial (NCT06747468): Multicenter, randomized, double-blind, placebo-controlled, 16-week trial enrolling 78 adults with PBH after RYGB across 21 US sites. Avexitide 90 mg subcutaneous injection once daily.
- Primary endpoint: Composite rate of Level 2 (glucose <54 mg/dL) and Level 3 (severe, requiring assistance) hypoglycemic events over 16 weeks — ACHIEVED (55% reduction vs. placebo; p=0.000003).
- All secondary endpoints met: statistically significant reductions in Level 2 events by SMBG, Level 2 events by CGM, and Level 3 events individually.
- Safety: Majority of adverse events mild-to-moderate; no serious adverse events related to avexitide treatment.
- Regulatory path: Amylyx plans NDA submission to FDA by end of 2026. Full data to be presented at ObesityWeek 2026 (November 15, 2026, San Antonio, TX).
- 32-week open-label extension ongoing.

Avexitide represents a conceptually novel category for the MinMaxMuscle audience: a GLP-1 pathway compound that works by blocking, not activating, GLP-1 receptors. It illustrates that the GLP-1 axis can be therapeutically modulated in both directions — agonism for obesity/T2DM, antagonism to prevent the hypoglycemia that can paradoxically result from obesity surgery. If approved, it would be the first approved pharmacotherapy for PBH.

Avexitide is investigational; not approved by the FDA or any regulatory agency as of November 2026.',
  'exendin 9-39, AMLX-0140',
  'Phase 3 Clinical',
  '31-amino acid peptide; truncated exendin-4 (residues 9-39); competitive GLP-1 receptor antagonist; MW ~3,370 Da; subcutaneous injection (90 mg once daily in Phase 3); developed by Amylyx Pharmaceuticals (AMLX)',
  'https://www.amylyx.com/news/amylyx-pharmaceuticals-announces-positive-topline-results-from-phase-3-lucidity-clinical-trial-of-avexitide-in-post-bariatric-hypoglycemia,https://clinicaltrials.gov/study/NCT06747468,https://www.hcplive.com/view/avexitide-reduces-hypoglycemic-events-in-phase-3-lucidity-trial-for-pbh,https://www.patientcareonline.com/view/avexitide-reduced-hypoglycemic-events-in-phase-3-post-bariatric-hypoglycemia-trial,https://www.stocktitan.net/news/AMLX/amylyx-pharmaceuticals-reports-third-quarter-2026-financial-6hbk5jn6vamo.html',
  90,
  '2026-11-05',
  NULL
);

-- ============================================================
-- PEPTIDE 2: HER-096
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'HER-096',
  'her-096',
  'Cognitive & Neuroprotective',
  'Brain-penetrating CDNF-mimetic peptidomimetic for Parkinson''s disease; subcutaneous administration crosses blood-brain barrier; Phase 1b completed; Phase 2 initiating H1 2027',
  'HER-096 is a ~1,000 Da retro-inverso-isomerized peptidomimetic developed by Herantis Pharma (Helsinki, Finland) as a potential disease-modifying therapy for Parkinson''s disease. Its sequence is derived from the C-terminal domain of CDNF (cerebral dopamine neurotrophic factor), a neuroprotective protein highly expressed in endoplasmic reticulum-stressed cells and vital for maintaining dopaminergic neuron survival in the substantia nigra.

Native CDNF has shown promise in Parkinson''s preclinical models but requires direct intraparenchymal brain delivery due to its molecular weight and blood-brain barrier impermeability. HER-096 overcomes this limitation through two key design features: (1) retro-inverso isomerization, which reverses the amino acid backbone direction and uses D-amino acids to resist proteolytic degradation, extending systemic half-life after subcutaneous injection; (2) the resulting conformation retains the neuroprotective binding activity of native CDNF while acquiring the size and charge profile to cross the blood-brain barrier passively.

Mechanism: Preclinical studies show HER-096 suppresses the ER stress mediators serine-724 phosphorylated IRE1α (active form) and nuclear ATF6, both markers of unfolded protein response (UPR) overactivation that contributes to dopaminergic neuron loss in Parkinson''s. It also alleviates neuroinflammation in the affected midbrain regions. This multimodal neuroprotective action — ER stress modulation plus anti-neuroinflammatory effects — differentiates HER-096 from symptomatic dopamine-replacement therapies like levodopa, which do not modify disease progression.

Clinical development:
- Phase 1a (healthy volunteers): Single subcutaneous doses up to 300 mg were safe and well tolerated; PK profile suitable for twice-weekly dosing.
- Phase 1b (Parkinson''s patients, twice-weekly 300 mg SC, completed 2025): Positive topline results reported October 2025. Early biological signals detected: target engagement in dopaminergic neurons. The dose and regimen were confirmed suitable for Phase 2.
- Phase 2 (planned): ~100 early-stage Parkinson''s patients; 9-month double-blind placebo-controlled treatment followed by 6-month open-label; primary endpoints include motor and cognitive biomarkers via Indivi digital biomarker platform. CTA submission targeted Q4 2026; first dosing anticipated H1 2027. Funded with €8 million EU Horizon grant.
- November 5, 2026: Herantis published press release stating newly peer-reviewed clinical evidence from an independent study validates the HER-096 Phase 2 design.

HER-096 would be the first subcutaneously administered, blood-brain-barrier-penetrating peptidomimetic in Phase 2 for Parkinson''s disease if the Phase 2 proceeds as planned. No existing Parkinson''s drug has been shown to definitively slow or halt disease progression in a Phase 3 trial; HER-096''s mechanism targets upstream neuronal death pathways (ER stress/UPR), making it a credible disease-modification candidate.

HER-096 is investigational; not approved by any regulatory agency as of November 2026.',
  'CDNF mimetic, HER096',
  'Phase 1 Clinical',
  '~1,000 Da retro-inverso-isomerized peptidomimetic; derived from C-terminal domain of CDNF; subcutaneous administration; blood-brain barrier penetrant; targets IRE1α/ATF6 ER stress pathway; twice-weekly 300 mg SC in Phase 1b; developed by Herantis Pharma (Helsinki, Finland)',
  'https://www.globenewswire.com/news-release/2026/11/05/3396281/0/en/herantis-pharma-newly-published-clinical-evidence-validates-her-096-phase-2-study-design.html,https://pmc.ncbi.nlm.nih.gov/articles/PMC11438334/,https://www.globenewswire.com/news-release/2025/10/07/3162855/0/en/Herantis-Pharma-presents-positive-topline-data-for-HER-096-in-Phase-1b-trial-for-people-living-with-Parkinson-s-disease.html,https://finance.yahoo.com/news/inside-information-herantis-pharma-selected-153500654.html,https://parkinsonsnewstoday.com/news/her-096-trial-data-show-early-biological-signals-parkinsons/',
  91,
  '2026-11-05',
  NULL
);

-- ============================================================
-- FAQs for Avexitide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is post-bariatric hypoglycemia and why does avexitide help?',
  'Post-bariatric hypoglycemia (PBH) is a metabolic complication affecting up to 20% of people after Roux-en-Y gastric bypass. The altered gut anatomy causes exaggerated postprandial GLP-1 secretion, which triggers excessive insulin release from the pancreas, driving blood glucose dangerously low (below 54 mg/dL) 1–3 hours after meals. Symptoms range from sweating and confusion to seizures or loss of consciousness. Avexitide works by blocking the GLP-1 receptor — without activating it — which dampens the excessive GLP-1-driven insulin surge at the source. In the Phase 3 LUCIDITY trial, avexitide 90 mg SC daily reduced severe hypoglycemic events by 55% vs. placebo (p=0.000003). It is the pharmacological opposite of GLP-1 agonists like semaglutide: same receptor, opposite action, different clinical purpose.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How is avexitide different from semaglutide or tirzepatide?',
  'Semaglutide (Ozempic/Wegovy) and tirzepatide (Mounjaro/Zepbound) are GLP-1 receptor AGONISTS — they activate the GLP-1 receptor to stimulate insulin secretion, suppress glucagon, and promote satiety, used for obesity and type 2 diabetes. Avexitide is a GLP-1 receptor ANTAGONIST — it binds the same receptor but blocks it, suppressing GLP-1-driven insulin secretion. The two classes have opposite primary effects: agonists lower blood sugar and promote weight loss; avexitide is used specifically to prevent dangerously low blood sugar in post-bariatric patients. This makes avexitide a companion compound to the GLP-1 agonist family rather than a competitor — the same molecular pathway engineered for a different clinical need.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is avexitide appropriate for people without bariatric surgery history?',
  'No. In the research context, avexitide is specifically studied for post-bariatric hypoglycemia (PBH), a complication unique to gastric bypass and related surgeries. For people without bariatric surgery history, GLP-1 antagonism would be expected to worsen glucose control rather than help it. The GLP-1 receptor exists specifically to stimulate beneficial insulin secretion after meals; blocking it in a healthy metabolic context would impair normal insulin response. Avexitide is not under investigation for weight loss, obesity, or type 2 diabetes — its NDA (expected Q4 2026) would, if approved, be specifically for PBH. Research peptide buyers seeking weight management compounds should look at the GLP-1 agonists (semaglutide, retatrutide) or amylin analogs (petrelintide, eloralintide) covered elsewhere on this site.'
);

-- ============================================================
-- FAQs for HER-096
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes HER-096 different from existing Parkinson''s treatments?',
  'All currently approved Parkinson''s drugs — levodopa, dopamine agonists, MAO-B inhibitors — are symptomatic: they replace or mimic lost dopamine signaling to reduce tremor and rigidity, but they do not stop dopaminergic neurons from continuing to die. HER-096 targets a completely different mechanism: it mimics CDNF (cerebral dopamine neurotrophic factor) to suppress ER stress and unfolded protein response (UPR) overactivation in dopaminergic neurons. ER stress is an early upstream event in Parkinson''s neurodegeneration; reducing it may preserve the neurons that dopamine-replacement drugs merely compensate for. If Phase 2 confirms target engagement and neuroprotection signals, HER-096 would be a disease-modifying therapy — something that actually slows or stops Parkinson''s progression — which no approved drug has achieved in a confirmed Phase 3 trial. It is also the first BBB-penetrant peptidomimetic of CDNF, eliminating the need for neurosurgical brain infusions required with native CDNF delivery.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does HER-096 get from a subcutaneous injection into the brain?',
  'HER-096 is engineered as a retro-inverso-isomerized peptidomimetic, meaning its amino acid sequence is reversed and uses D-amino acids (mirror-image forms) instead of the natural L-amino acids. This design serves two purposes: (1) D-amino acids resist natural proteolytic enzymes (which only cleave L-peptide bonds), dramatically extending the half-life of the molecule in the bloodstream after subcutaneous injection; (2) the resulting molecular geometry — roughly 1,000 Da with specific charge and lipophilicity — allows passive transcytosis across the blood-brain barrier, something native CDNF protein (~15,000 Da) cannot do. Preclinical data confirmed BBB penetration by showing measurable target engagement (reduced pIRE1α and nuclear ATF6) specifically in substantia nigra dopamine neurons after peripheral dosing — effects not attributable to systemic changes. Phase 1b dosing twice-weekly by subcutaneous injection confirmed this was pharmacologically viable in Parkinson''s patients.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What stage is HER-096 in and when will we know if it works?',
  'As of November 2026, HER-096 has completed Phase 1a (healthy volunteers, single-dose safety) and Phase 1b (Parkinson''s patients, multi-dose 300 mg twice-weekly SC, completed 2025). Phase 1b showed early biological signals of target engagement — a promising but non-definitive result. The Phase 2 proof-of-concept trial (n~100 early-stage Parkinson''s patients; 9-month double-blind + 6-month open-label; digital + clinical endpoints) is in final preparation: Clinical Trial Application submission is targeted for Q4 2026, with first patient dosing anticipated in H1 2027. The Phase 2 is fully funded in part by an €8 million EU Horizon grant. If Phase 2 meets its primary endpoints — motor/cognitive biomarkers and digital signal detection — a decision on Phase 3 would likely follow in 2028–2029. The Phase 2 is not powered to show a clinical benefit large enough to support approval; it is a proof-of-concept study to confirm target engagement and define the Phase 3 design. We won''t have definitive efficacy data for several years, but Phase 2 will be a critical signal.'
);

-- ============================================================
-- Peptide_FAQs junction table inserts for Avexitide
-- (Run after the above inserts; uses slug-based subquery)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'avexitide'
  AND f.question = 'What is post-bariatric hypoglycemia and why does avexitide help?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'avexitide'
  AND f.question = 'How is avexitide different from semaglutide or tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'avexitide'
  AND f.question = 'Is avexitide appropriate for people without bariatric surgery history?';

-- ============================================================
-- Peptide_FAQs junction table inserts for HER-096
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'her-096'
  AND f.question = 'What makes HER-096 different from existing Parkinson''s treatments?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'her-096'
  AND f.question = 'How does HER-096 get from a subcutaneous injection into the brain?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'her-096'
  AND f.question = 'What stage is HER-096 in and when will we know if it works?';
