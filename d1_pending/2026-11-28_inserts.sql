-- MinMaxMuscle D1 Inserts — 2026-11-28
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: Elamipretide (SS-31 / Forzinity)
-- Discovery trigger: WebSearch — FDA accelerated approval September 19, 2025 for Barth syndrome;
--   new 2026 Circ Heart Fail publication on HFpEF skeletal muscle; not previously staged
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-28_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files in chronological order through 2026-11-27_inserts.sql

-- ============================================================
-- PEPTIDE: Elamipretide (SS-31 / Forzinity)
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Elamipretide (SS-31)',
  'elamipretide',
  'Repair & Recovery',
  'Mitochondrial inner membrane stabilization via cardiolipin binding; FDA-approved for Barth syndrome (skeletal muscle weakness); research interest in cardiac repair, age-related sarcopenia, and cellular longevity',
  'Elamipretide is a synthetic tetrapeptide (D-Arg-Dmt-Lys-Phe-NH2) that targets the inner mitochondrial membrane by binding to cardiolipin — a unique phospholipid that stabilizes the cristae structure where ATP production occurs. It is the first FDA-approved peptide treatment for Barth syndrome (brand name: Forzinity, accelerated approval granted September 19, 2025) and represents the first regulatory validation of the mitochondrial cardiolipin-targeting strategy in human disease. Prior to FDA approval it was known in research literature as SS-31 (Szeto-Schiller 31), MTP-131, and Bendavia.

What is Elamipretide?: Elamipretide is a cell-permeable, mitochondria-targeted tetrapeptide originally developed through the laboratory of Hazel Shen and Richard Schiller at Cornell University. It preferentially concentrates in the inner mitochondrial membrane, binding cardiolipin to stabilize cristae architecture and maintain optimal spacing and function of the respiratory chain complexes (I, III, IV) and ATP synthase (Complex V). Dysfunctional cristae architecture is a shared pathology in many disease states — Barth syndrome, heart failure, aging-related sarcopenia, ischemia-reperfusion injury — making cardiolipin-targeted peptides broadly relevant despite narrow current approval.

FDA Approval (Barth Syndrome): The FDA granted accelerated approval to elamipretide hydrochloride (Forzinity, 40 mg/mL subcutaneous injection) on September 19, 2025, for improving muscle strength in patients with Barth syndrome weighing ≥30 kg. Barth syndrome is a rare X-linked mitochondrial disorder caused by mutations in the TAFAZZIN gene, which encodes an enzyme responsible for cardiolipin remodeling; the resulting cardiolipin deficiency impairs mitochondrial energy production in cardiac and skeletal muscle. The approval was based on the Phase 2/3 TAZPOWER crossover trial (NCT02616081), which enrolled 12 male patients aged 12–35 with genetically-confirmed Barth syndrome and demonstrated significant improvement in knee extensor peak work (the primary endpoint) versus placebo. The accelerated approval pathway requires confirmatory trials to verify clinical benefit.

Mechanism of Action: (1) Elamipretide enters mitochondria via its alternating aromatic/cationic motif, independent of mitochondrial membrane potential — a key advantage in diseased mitochondria that have lost their transmembrane gradient. (2) The 2'',6''-dimethyltyrosine (Dmt) residue at position 2 reduces reactive oxygen species (ROS) through electron scavenging. (3) Binding to cardiolipin in the inner membrane stabilizes the cristae junction, keeping electron transport chain (ETC) complexes in their supercomplexes (Complexes I+III+IV, known as the respirasome). (4) By maintaining ETC supercomplex assembly, the peptide improves electron flow efficiency, reduces electron leak, and increases ATP yield per oxygen consumed. This mechanism is fundamentally different from antioxidant supplements (which scavenge ROS downstream), CoQ10 (which shuttles electrons but does not anchor the ETC architecture), or NAD+ precursors (which raise substrate availability but do not address structural ETC inefficiency).

Clinical Evidence — Barth Syndrome: The TAZPOWER study showed statistically significant improvement in the primary endpoint (knee extensor peak work) for elamipretide over placebo in a double-blind crossover design. Open-label extension data reported sustained benefits at 168 weeks. A prior Phase 2 MMPOWER study in mitochondrial myopathy patients did not meet its primary functional endpoints, illustrating that the evidence is currently strongest in Barth syndrome specifically.

Clinical Evidence — Heart Failure: Multiple Phase 1/2 studies have explored elamipretide in heart failure. A randomized human trial (IDDEA-HF) in patients with heart failure with reduced ejection fraction (HFrEF) demonstrated no serious adverse events from intravenous infusion and showed favorable changes in left ventricular end-diastolic and end-systolic volumes at higher doses, though the NT-proBNP primary endpoint was not met. A mechanistic study on explanted failing human hearts demonstrated that elamipretide significantly improved mitochondrial respiration efficiency ex vivo, providing direct human tissue evidence for the drug''s mechanism.

New 2026 Data — HFpEF and Skeletal Muscle: A 2026 study published in Circulation: Heart Failure (Heidelberg University group) tested elamipretide in a rat model of heart failure with preserved ejection fraction (HFpEF), demonstrating improved skeletal muscle performance. HFpEF is the dominant form of heart failure in older adults and is characterized by exercise intolerance due in part to skeletal muscle mitochondrial dysfunction — a target well-matched to elamipretide''s mechanism.

Aging and Longevity Research: In aged mouse studies, elamipretide preserved cardiac and skeletal muscle function without detectable changes in tissue epigenetic or transcriptomic aging markers (suggesting a functional, not epigenetic, mechanism). Stealth BioTherapeutics has indicated interest in additional indications including acute kidney injury, Leber hereditary optic neuropathy, and broader age-related conditions.

Availability and Status: Elamipretide is commercially available as Forzinity (Stealth BioTherapeutics) for Barth syndrome under FDA accelerated approval. It is not approved for heart failure, aging, or athletic performance. It is not available from compounding pharmacies or as a research peptide in a form suitable for human use outside of clinical trials.

Research compounds discussed for educational purposes. Not FDA-approved for human use where applicable. Consult a healthcare provider before use.',
  'SS-31, Forzinity, MTP-131, Bendavia, Szeto-Schiller 31, elamipretide hydrochloride',
  'FDA Approved',
  'Formula: H-D-Arg-Dmt-Lys-Phe-NH2 (tetrapeptide); molecular weight: 648.8 Da; Dmt = 2'',6''-dimethyltyrosine; CAS: 736992-21-5; route: subcutaneous injection (Forzinity: 40 mg/mL); dose in Barth syndrome: 40 mg SC once daily; half-life: ~4 hours (SC); mitochondria-penetrating via alternating aromatic-cationic motif; cell-permeable independent of membrane potential; manufacturer: Stealth BioTherapeutics; FDA NDA: 215244',
  'https://www.fda.gov/news-events/press-announcements/fda-grants-accelerated-approval-first-treatment-barth-syndrome,https://clinicaltrials.gov/study/NCT02616081 (TAZPOWER),https://heibib.ub.uni-heidelberg.de/search/Record/1983246263 (Circ Heart Fail 2026 HFpEF),https://pmc.ncbi.nlm.nih.gov/articles/PMC11565897 (aging mouse),https://pmc.ncbi.nlm.nih.gov/articles/PMC6437430 (failing human heart mitochondria),https://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=146bf34c-76f2-48db-ac07-fb29cce2cd75',
  75,
  '2026-11-28',
  NULL
);

-- ============================================================
-- FAQs: Elamipretide (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is elamipretide (SS-31) FDA approved, and for what?',
  'Yes. The FDA granted accelerated approval to elamipretide (brand name Forzinity) on September 19, 2025, making it the first approved treatment for Barth syndrome — a rare X-linked genetic condition caused by mutations in the TAFAZZIN gene that cause cardiolipin deficiency, leading to severe cardiac and skeletal muscle weakness, usually in males from birth. The approval is specifically for patients weighing at least 30 kg, given as a 40 mg daily subcutaneous injection. The accelerated approval was based on improvements in knee extensor muscle strength in the TAZPOWER crossover trial (n=12). Forzinity is not approved for heart failure, aging, athletic performance, or any other condition. Continued approval depends on confirmatory clinical trials confirming that the knee strength improvement translates to meaningful patient benefit such as improved exercise capacity or activities of daily living.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does elamipretide differ from CoQ10 or NAD+ supplements as a mitochondrial support compound?',
  'The key difference is structural versus biochemical. CoQ10 (ubiquinone) acts as a mobile electron carrier shuttling electrons between respiratory chain complexes — it increases substrate availability for the ETC but does not address the architecture of the chain itself. NAD+ precursors (NMN, NR) raise intracellular NAD+ to support multiple metabolic enzymes, particularly sirtuins and PARPs, but they also work upstream of the actual electron transport process. Elamipretide operates at a more fundamental structural level: it binds cardiolipin in the inner mitochondrial membrane and stabilizes the cristae junctions that keep electron transport chain complexes I, III, and IV organized into functional supercomplexes called the respirasome. When these supercomplexes disassemble — which happens in Barth syndrome, heart failure, aging, and ischemia — electron leak and ROS production increase while ATP yield per oxygen consumed falls. By stabilizing the supercomplex architecture, elamipretide improves electron channeling efficiency at the source. Additionally, it penetrates mitochondria without requiring a healthy transmembrane potential, meaning it works in already-damaged mitochondria where CoQ10 and NAD+-dependent pathways may be less effective.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What other conditions is elamipretide being studied for beyond Barth syndrome?',
  'The research program for elamipretide spans several areas beyond its approved Barth syndrome indication. In heart failure, two completed studies (IDDEA-HF in HFrEF; a 2026 preclinical HFpEF model) have demonstrated mechanistic evidence of benefit, though the HFrEF human trial did not meet its NT-proBNP primary endpoint. In aging, studies in aged mice demonstrated preserved cardiac and skeletal muscle function without detectable epigenetic aging changes, raising interest in sarcopenia and functional decline. In kidney disease, preclinical ischemia-reperfusion injury models showed significant protection. In neurology, Leber hereditary optic neuropathy (LHON) — another mitochondrial disease — has been explored in early-phase studies. As of November 2026, no human longevity or healthy-aging trials are registered for elamipretide on ClinicalTrials.gov. Its broad mechanistic relevance across any condition involving mitochondrial cristae dysfunction makes it one of the more scientifically credible longevity-adjacent peptides in development, though human evidence outside Barth syndrome remains limited.'
);

-- ============================================================
-- Link FAQs to Peptide (using subquery to get IDs)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'elamipretide'
  AND f.question IN (
    'Is elamipretide (SS-31) FDA approved, and for what?',
    'How does elamipretide differ from CoQ10 or NAD+ supplements as a mitochondrial support compound?',
    'What other conditions is elamipretide being studied for beyond Barth syndrome?'
  );
