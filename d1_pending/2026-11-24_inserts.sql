-- MinMaxMuscle D1 Inserts — 2026-11-24
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: MET-233i (PF-08653945) | LSALT Peptide (Metablok)
-- Discovery triggers:
--   MET-233i: Pfizer Q1 2026 pipeline (Phase 2b SOLIS-1); watchlist graduation Nov 24, 2026
--   LSALT: Arch Biopartners press release November 24, 2026 — Duke University (first US site) joins Phase II CS-AKI trial
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-24_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-23_inserts.sql)

-- ============================================================
-- PEPTIDE 1: MET-233i (PF-08653945)
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'MET-233i',
  'met-233i',
  'Metabolic & Weight Loss',
  'Once-monthly amylin/calcitonin dual receptor agonist for obesity; Phase 2b SOLIS-1 trial ongoing (Pfizer, formerly Metsera); 8.4% weight loss in Phase 1',
  'MET-233i (now recoded PF-08653945 following Pfizer''s acquisition of Metsera in November 2025) is a long-acting synthetic amylin analogue that functions as a dual agonist at the amylin receptor and calcitonin receptor. Its defining pharmacological feature is a half-life of approximately 19 days in humans — derived from Phase 1 pharmacokinetics — which enables a once-monthly subcutaneous dosing interval. This positions MET-233i in the emerging class of ultra-long-acting obesity peptides alongside ASC37i, Prolynx amylin program, and petrelintide, all of which target monthly or longer dosing cycles.

Mechanism of Action: Amylin is a co-secreted pancreatic peptide hormone released alongside insulin in response to meals. Its primary physiological roles are suppression of postprandial glucagon secretion, slowing of gastric emptying, and reduction of food intake via centrally mediated satiety signaling through the area postrema and nucleus tractus solitarius in the brainstem. These mechanisms are anatomically and pharmacologically distinct from the hypothalamic GLP-1 circuits targeted by semaglutide and tirzepatide, which is why amylin agonists produce additive weight loss when combined with GLP-1 receptor agonists. The calcitonin receptor component contributes to bone metabolism signaling; its role in metabolic efficacy is still being characterized. Metsera engineered MET-233i''s long half-life through peptide backbone modifications and proprietary formulation chemistry — not a fatty acid conjugate approach (which characterizes semaglutide''s once-weekly half-life extension), suggesting a distinct structural differentiator.

Phase 1 Clinical Results (Metsera, 2025 topline): A single-ascending-dose and multiple-ascending-dose Phase 1 study enrolled 80 adults with overweight or obesity (BMI ≥ 27 kg/m², without type 2 diabetes). The primary endpoint was safety and tolerability; secondary endpoints included pharmacokinetics and pharmacodynamics (body weight change). Key results: at the 1.2 mg dose, placebo-subtracted weight loss reached 8.4% at Day 36. Dose-dependent weight reduction was observed across cohorts. The compound was well-tolerated; most adverse events were mild gastrointestinal (nausea, decreased appetite), consistent with the amylin/calcitonin receptor class. Observed half-life of approximately 19 days confirmed the once-monthly dosing hypothesis. No serious adverse events leading to discontinuation were reported in publicly available summaries.

Phase 2b SOLIS-1 Trial (NCT07575932): Pfizer is conducting a Phase 2b, randomized, double-blind, placebo-controlled study of MET-233i (PF-08653945) in adults with obesity or overweight. The trial enrolls approximately 940 participants across three arms: MET-233i monotherapy, MET-233i plus berobenatide (Pfizer''s once-monthly GLP-1 receptor agonist, formerly MET-097i), and placebo. This combination arm is of particular scientific interest because it represents the first clinical test of a monthly amylin + monthly GLP-1 combination — a fully monthly injectable regimen targeting two complementary satiety pathways with a single monthly visit. Estimated primary completion: August 2027. The primary endpoint is percent change in body weight from baseline to Week 52. No interim or topline data have been published as of November 2026.

Pfizer Pipeline Context: Pfizer''s Q1 2026 pipeline update (released May 5, 2026) lists MET-233i as a Phase 2 New Molecular Entity in Chronic Weight Management. The Metsera acquisition was completed in November 2025 for an undisclosed sum following a reported competitive bidding process against Novo Nordisk. Pfizer''s strategy appears to position MET-233i as the monthly amylin component of a future fixed-dose combination with berobenatide — competing directly with Novo Nordisk''s CagriSema (cagrilintide + semaglutide) if SOLIS-1 demonstrates sufficient efficacy.

Competitive Landscape: Among monthly amylin programs: petrelintide (Roche/Zealand) is in Phase 3 mono; eloralintide (Structure/Lilly) showed 23.3% weight loss in combination with tirzepatide at ObesityWeek 2026 (Phase 2). MET-233i''s 8.4% weight loss at Day 36 (single-dose PK window) is an early snapshot; the monotherapy maximum-effect data at steady-state monthly dosing will only come from SOLIS-1. The GLP-1 combination arm is the SOLIS-1 signal the market most anticipates.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'MET-233, PF-08653945, PF-3945',
  'Phase 2 Clinical',
  'Amylin/calcitonin dual receptor agonist; ~19-day human half-life; once-monthly subcutaneous injection; large peptide biologic; developed by Metsera (Hangzhou/South San Francisco); acquired by Pfizer November 2025; recoded PF-08653945; NME status; molecular weight not publicly disclosed',
  'https://cdn.pfizer.com/pfizercom/product-pipeline/Q1%202026%20Pipeline%20Update_vFinal_0.pdf,https://klarityresearch.com/what-is-met-233i-pf-08653945-the-monthly-amylin-peptide-being-developed-alone-and-with-glp-1/,https://trial.medpath.com/news/metsera-s-met-233i-achieves-8-4-weight-loss-in-phase-1-trial-enabling-first-monthly-amylin-glp-1-combination,https://www.bioworld.com/articles/720983-metseras-long-acting-amylin-analogue-delivers-in-phase-i,https://clinicaltrials.gov/study/NCT07575932',
  72,
  '2026-11-24',
  NULL
);

-- ============================================================
-- FAQs: MET-233i (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does MET-233i differ from semaglutide and tirzepatide as a weight-loss peptide?',
  'MET-233i (PF-08653945) works through an entirely different receptor pathway than semaglutide and tirzepatide. Semaglutide is a GLP-1 receptor agonist; tirzepatide adds GIP receptor agonism. Both act primarily via hypothalamic neurons that express GLP-1 receptors. MET-233i is an amylin/calcitonin receptor agonist — it suppresses appetite and food intake via the area postrema and nucleus tractus solitarius in the brainstem, which largely lacks GLP-1 receptors. Because the pathways are distinct, amylin agonists and GLP-1 agonists show additive effects in combination studies. Pfizer''s SOLIS-1 trial is specifically testing MET-233i plus berobenatide (a monthly GLP-1 agonist) for this additive benefit. The other key difference is dosing interval: MET-233i has a ~19-day half-life enabling once-monthly injections vs. weekly injections for semaglutide and tirzepatide.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What did MET-233i Phase 1 results actually show?',
  'Metsera reported topline Phase 1 data in 2025. The study enrolled 80 adults with overweight or obesity (BMI ≥ 27 kg/m²) without type 2 diabetes. At the 1.2 mg dose, placebo-subtracted weight loss reached 8.4% at Day 36 — a pharmacokinetic window that represents early response before steady-state monthly dosing is achieved. Dose-dependent weight reduction was observed across all cohorts. The ~19-day human half-life confirmed that once-monthly dosing is feasible. Tolerability was acceptable; GI side effects (nausea, decreased appetite) were the most common, consistent with the amylin/calcitonin agonist class. No serious adverse events were reported. These results led directly to Pfizer''s decision to advance MET-233i into the Phase 2b SOLIS-1 trial.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why did Pfizer acquire Metsera and what does that mean for MET-233i development?',
  'Pfizer acquired Metsera in November 2025 for an undisclosed sum, outbidding Novo Nordisk in a competitive process. The strategic rationale: Pfizer needed a credible once-monthly obesity portfolio to compete with weekly-dosing leaders semaglutide (Novo) and tirzepatide (Lilly), and Metsera offered two key assets — MET-233i (monthly amylin) and MET-097i (monthly GLP-1 agonist, now berobenatide). Together, these two Metsera assets give Pfizer a potential fully monthly amylin + GLP-1 combination — a dosing convenience story that no approved obesity drug can currently match. For MET-233i specifically, Pfizer''s backing means substantially greater Phase 2b/3 trial resources and a clear regulatory and commercial path, but also means timelines are now tied to Pfizer''s portfolio priorities. The drug''s code has changed from MET-233i to PF-08653945 on the Pfizer pipeline, though the compound itself is unchanged.'
);

-- ============================================================
-- Link FAQs to Peptide (using subquery to get IDs)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'met-233i'
  AND f.question IN (
    'How does MET-233i differ from semaglutide and tirzepatide as a weight-loss peptide?',
    'What did MET-233i Phase 1 results actually show?',
    'Why did Pfizer acquire Metsera and what does that mean for MET-233i development?'
  );


-- ============================================================
-- PEPTIDE 2: LSALT Peptide (Metablok)
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'LSALT Peptide',
  'lsalt',
  'Cardiovascular & Anti-inflammatory',
  'First-in-class DPEP1-inhibitor peptide for prevention of acute kidney injury; Phase II cardiac surgery trial (Arch Biopartners / Metablok); first US site joined November 24, 2026',
  'LSALT peptide (trade name Metablok) is a first-in-class synthetic peptide developed by Arch Biopartners (TSXV: ARCH.V) that targets dipeptidase-1 (DPEP1), a cell-surface enzyme expressed on the microvasculature endothelium of the kidneys, lungs, and other organs. DPEP1 was identified as a novel leukocyte adhesion receptor in landmark research published in Cell (2019) and Science Advances, establishing the mechanistic rationale for LSALT as a kidney-protective anti-inflammatory therapeutic.

Scientific Background — DPEP1 and Kidney Injury: Acute kidney injury (AKI) is defined as a sudden decrease in kidney function and is associated with high mortality in surgical and critically ill patients. The most common cause in hospital settings is ischemia-reperfusion injury (IRI): when blood flow to the kidney is temporarily reduced (ischemia) and then restored (reperfusion), a cascade of neutrophil and monocyte adhesion to kidney microvasculature triggers oxidative stress, inflammation, and tubular cell death. The Cell paper (Rajan et al., 2019) identified DPEP1 — previously known only as a metabolic enzyme — as a critical adhesion molecule that neutrophils and monocytes use to bind the kidney endothelium during this inflammatory cascade. Blocking DPEP1 prevented leukocyte adhesion and dramatically reduced kidney injury in mouse IRI models. LSALT peptide was designed to block this DPEP1-mediated adhesion pathway.

The Arch DPEP1 framework distinguishes two independent pathways to kidney damage: (1) leukocyte-driven inflammation via DPEP1 adhesion (blocked by LSALT) and (2) direct tubular toxicity from drugs/contrast agents via proximal tubule DPEP1 activity (addressed by cilastatin, Arch''s separate program). LSALT targets pathway 1 — the inflammatory IRI mechanism — making it relevant to surgical AKI, sepsis-associated AKI, and potentially other inflammatory kidney injury contexts.

Preclinical Evidence: Mouse kidney IRI models published in Cell (2019) and Science Advances demonstrated that LSALT peptide administration significantly reduced leukocyte adhesion to kidney microvasculature, attenuated inflammatory cytokine release, and preserved kidney function vs. vehicle controls. Arch has also published intravital microscopy videos showing real-time reduction in LSALT-treated vs. untreated kidney microvasculature inflammation. These are company-associated publications; independent replication in peer-reviewed literature provides additional credibility.

Phase I Clinical Study: LSALT completed a Phase I first-in-human safety study. The compound was found safe and tolerable in healthy volunteers; no serious adverse events were reported. This established the safety baseline required to advance to Phase II.

Phase II CS-AKI Trial (NCT05879432): The pivotal study is a randomized, double-blind, placebo-controlled Phase II trial targeting 240 participants (120 LSALT / 120 placebo). Enrolled patients: adults undergoing on-pump cardiac surgery — the highest-risk surgical population for perioperative AKI (cardiac surgery-associated AKI affects 20–30% of patients). LSALT is administered intravenously at the time of surgery as a renoprotective intervention. Primary endpoint: prevention or attenuation of AKI as defined by KDIGO creatinine criteria. Sites: initially four Canadian sites (St. Michael''s Hospital, Toronto General / UHN among others). On November 24, 2026, Arch announced that Duke University School of Medicine became the fifth North American site and the first US site. Enrollment is ongoing; completion date has not been publicly announced.

COVID-19 AKI Study (NCT04402957, completed): During the pandemic, LSALT was also evaluated in a separate completed trial for prevention of ARDS and AKI in COVID-19 patients, demonstrating the platform''s adaptability to different IRI/inflammation contexts.

Competitive Landscape: There is no approved drug to prevent perioperative AKI; standard of care remains fluid management and avoidance of nephrotoxins. DPEP1 inhibition is a novel mechanism with no approved competitor. If Phase II succeeds, LSALT would be the first specifically approved renal anti-inflammatory protective therapy. The indication (cardiac surgery AKI) affects approximately 1–2 million patients annually in the US and Canada, representing a significant unmet need.

Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.',
  'Metablok',
  'Phase 2 Clinical',
  'Synthetic peptide; DPEP1 (dipeptidase-1) inhibitor; intravenous perioperative administration; blocks neutrophil/monocyte adhesion to kidney microvasculature; first-in-class anti-inflammatory renoprotective peptide; developed by Arch Biopartners (TSXV: ARCH.V, OTCQB: ACHFF.US), Toronto; molecular sequence proprietary',
  'https://archbiopartners.com/our-science/lsaltpeptide/,https://clinicaltrials.gov/study/NCT05879432,https://www.globenewswire.com/news-release/2026/11/24/3409159/0/en/arch-biopartners-announces-first-u-s-site-to-join-the-phase-ii-trial-for-lsalt-peptide-targeting-cardiac-surgery-associated-acute-kidney-injury.html,https://www.clinicaltrialsarena.com/news/arch-phase-ii-cs-aki/',
  42,
  '2026-11-24',
  NULL
);

-- ============================================================
-- FAQs: LSALT Peptide (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is DPEP1 and why does blocking it protect the kidneys?',
  'DPEP1 (dipeptidase-1) is a cell-surface enzyme found on kidney microvasculature endothelial cells. Research published in Cell (2019) discovered that DPEP1 acts as an adhesion receptor for neutrophils and monocytes — white blood cells that patrol the bloodstream and trigger inflammation. During ischemia-reperfusion injury (IRI), which occurs when blood flow is temporarily cut off and then restored (such as during on-pump cardiac surgery), neutrophils and monocytes flood the kidney and bind to DPEP1 on the vessel wall. This adhesion triggers an inflammatory cascade: oxidative stress, cytokine release, and tubular cell death that together define acute kidney injury. LSALT peptide was designed to block the DPEP1 adhesion site, physically preventing leukocytes from attaching. In mouse IRI models, LSALT reduced leukocyte adhesion, lowered inflammatory markers, and preserved kidney function. The elegance of the target is that DPEP1 is highly expressed in kidney vasculature but less expressed elsewhere, giving LSALT inherent tissue specificity.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Who is at risk for cardiac surgery-associated AKI and why does it matter?',
  'Cardiac surgery-associated acute kidney injury (CS-AKI) occurs in 20–30% of patients undergoing heart surgery on cardiopulmonary bypass (on-pump). It is one of the most common and serious complications of cardiac surgery. The mechanism includes both ischemia-reperfusion injury (the pump temporarily bypasses normal circulation) and hemodilution, inflammation from contact with the bypass circuit, and microemboli. Patients who develop CS-AKI have significantly higher rates of 30-day mortality, prolonged ICU and hospital stays, increased risk of progressing to chronic kidney disease, and higher lifetime cardiovascular risk. Despite this, there is currently no FDA-approved drug to prevent CS-AKI — standard of care is supportive. If LSALT''s Phase II trial succeeds, it would fill a major gap in perioperative medicine. The unmet need is estimated at 1–2 million at-risk cardiac surgery patients per year in North America.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is LSALT only for cardiac surgery or could it apply to other types of kidney injury?',
  'The current Phase II trial (NCT05879432) is focused specifically on cardiac surgery-associated AKI because that population provides the most controlled, predictable ischemia-reperfusion event — making it ideal for a proof-of-concept trial. However, the DPEP1 mechanism is not exclusive to cardiac surgery. DPEP1-mediated leukocyte adhesion is a general feature of kidney ischemia-reperfusion injury regardless of cause. Arch Biopartners previously ran a completed trial of LSALT in COVID-19 patients at risk for ARDS and AKI (NCT04402957), demonstrating the platform''s flexibility. Other potential applications include contrast-induced AKI (from imaging procedures), transplant-associated IRI (a major cause of delayed graft function), and sepsis-associated AKI. These would all require separate clinical trials. The CS-AKI Phase II is the company''s pivotal path to initial approval; a positive result would likely trigger expanded indication trials. For now, all applications remain investigational.'
);

-- ============================================================
-- Link FAQs to LSALT Peptide
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'lsalt'
  AND f.question IN (
    'What is DPEP1 and why does blocking it protect the kidneys?',
    'Who is at risk for cardiac surgery-associated AKI and why does it matter?',
    'Is LSALT only for cardiac surgery or could it apply to other types of kidney injury?'
  );
