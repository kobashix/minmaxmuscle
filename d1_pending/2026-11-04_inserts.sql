-- MinMaxMuscle D1 Inserts - Generated 2026-11-04
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: uses actual column names from functions/peptides/[slug].js
-- Compounds: Bofanglutide, Enicepatide
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-04_inserts.sql

-- ============================================================
-- PEPTIDE 1: Bofanglutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Bofanglutide',
  'bofanglutide',
  'Metabolic & Weight Loss',
  'Once-monthly GLP-1 receptor agonist for long-term obesity maintenance — Phase 3 GRADUAL-3 positive',
  'Bofanglutide (GZR18) is a long-acting GLP-1 receptor agonist developed by Gan & Lee Pharmaceuticals, notable for its extended half-life that enables once-monthly subcutaneous dosing — a significant convenience advance over weekly GLP-1 agents. GRADUAL-1 Phase 3 (China, N=630, 52 weeks): participants receiving 24 mg biweekly achieved 15.12% mean body weight reduction versus 1.11% placebo; the 48 mg dose arm achieved 18.54% reduction. GRADUAL-2 Phase 3 (China, 52 weeks): active-comparator trial versus Wegovy (semaglutide 2.4 mg weekly) in adults with and without type 2 diabetes; results pending full publication. GRADUAL-3 Phase 3 (maintenance trial, 24 weeks): published November 4, 2026 — once-monthly bofanglutide delivered positive results for maintaining weight-loss achieved during 52 weeks of biweekly dosing, meeting its primary endpoint; the company reports it is the first completed Phase IIIb sequential study globally to demonstrate weight-loss maintenance via transition to monthly dosing in a randomized controlled design. A US Phase 2 study met its primary endpoints (announced June 2026 alongside Chinese Phase 3 readouts), establishing Western-population efficacy and clearing the path toward an IND submission. Safety profile is consistent with the GLP-1 RA class (predominantly mild-to-moderate gastrointestinal adverse events during dose escalation); no new safety signals in GRADUAL-3. Bofanglutide is not approved by the FDA or EMA as of November 2026.',
  'GZR18',
  'Phase 3 Clinical',
  'GLP-1 receptor agonist peptide analog; once-monthly or biweekly subcutaneous injection; developed by Gan & Lee Pharmaceuticals (China); long-acting pharmacokinetic profile enabling Q4W maintenance dosing; research code GZR18',
  'https://www.prnewswire.com/news-releases/a-new-paradigm-for-long-term-weight-management-once-monthly-bofanglutide-maintenance-therapy-delivers-positive-results-in-weight-control-and-maintenance-over-24-weeks--gan--lee-pharmaceuticals-gradual-3-study-meets-its-primary-302928663.html,https://www.prnewswire.com/news-releases/gan--lee-pharmaceuticals-achieves-significant-progress-in-its-dual-pipeline-for-metabolic-diseases--weekly-insulin-ludefen-gzr4-meets-primary-endpoint-in-phase-iii-clinical-trial-in-china-bofanglutide-meets-primary-endpoints--302794945.html',
  88,
  '2026-11-04',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Enicepatide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Enicepatide',
  'enicepatide',
  'Metabolic & Weight Loss',
  'Dual GLP-1/GIP receptor agonist — 22.5% placebo-adjusted weight loss in Phase 2; Phase 3 ENITH initiated',
  'Enicepatide (CT-388, RO7795068) is a once-weekly injectable dual agonist of both GLP-1 and GIP receptors developed by Roche and Genentech. By co-activating GIP receptors alongside GLP-1 receptors, enicepatide builds on the tirzepatide paradigm but with a distinct molecular scaffold from Roche''s proprietary chemical platform. Phase 2 obesity trial (CT-388-103, N=469 adults, 48 weeks): participants on the highest dose (24 mg) achieved a placebo-adjusted mean body weight reduction of 22.5% using the efficacy estimand, or 18.3% using the treatment-regimen estimand; body weight was not plateauing at week 48. Phase 2 type 2 diabetes trial (CT-388-104, N=447 adults, 48 weeks, topline September 22 2026): 24 mg dose produced approximately 15.5% body weight reduction and a 2.65 percentage-point reduction in HbA1c from a baseline of 8.1%, with 2.0% discontinuation rate due to adverse events versus 0.0% in the placebo arm. Phase 3 ENITH program: two Phase 3 obesity trials initiated in 2026, details pending. Roche is also investigating combination strategies — including pairing enicepatide with petrelintide (amylin analog) for additive weight-loss efficacy. Safety profile in both Phase 2 trials was consistent with GLP-1 RA class effects; no new safety signals. Enicepatide is not approved by any regulatory agency as of November 2026.',
  'CT-388, RO7795068',
  'Phase 3 Clinical',
  'Dual GLP-1/GIP receptor agonist peptide; once-weekly subcutaneous injection; developed by Roche and Genentech; Roche proprietary molecular scaffold; research codes CT-388 and RO7795068',
  'https://www.roche.com/media/releases/med-cor-2026-09-22,https://www.pharmexec.com/view/roche-positive-topline-results-phase-ii-study-dual-glp-gip-receptor-agonist',
  87,
  '2026-11-04',
  NULL
);

-- ============================================================
-- FAQs for Bofanglutide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What makes bofanglutide different from weekly GLP-1 drugs like Ozempic?',
  'The key distinction is dosing frequency. Bofanglutide''s long-acting pharmacokinetic design enables subcutaneous injection as infrequently as once per month, compared to weekly injections for semaglutide (Ozempic/Wegovy) and tirzepatide (Mounjaro/Zepbound). The GRADUAL-3 Phase 3 trial, which reported positive results on November 4 2026, showed that transitioning patients from every-two-weeks dosing to once-monthly dosing successfully maintained the weight loss achieved over the initial 52-week phase. Monthly dosing could substantially improve adherence, reduce injection burden, and open the drug to populations who struggle with weekly self-injection schedules. Bofanglutide is a GLP-1 mono-agonist, while tirzepatide adds GIP receptor agonism; the tradeoffs in efficacy vs. tolerability between these mechanisms are still being investigated.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How much weight loss did bofanglutide produce in clinical trials?',
  'In the GRADUAL-1 Phase 3 trial (52 weeks, biweekly dosing in Chinese adults with obesity), participants on 24 mg achieved a mean 15.12% body weight reduction versus 1.11% for placebo, while the 48 mg dose arm achieved 18.54% reduction. A US Phase 2 study also met its primary endpoint, announced June 2026, though specific US efficacy numbers have not yet been published. GRADUAL-3 (Phase 3 maintenance, November 2026) confirmed that the weight loss achieved during biweekly dosing was successfully maintained over 24 weeks of once-monthly administration. Direct comparisons to Wegovy are being evaluated in the ongoing GRADUAL-2 trial.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is bofanglutide approved in the US or Europe?',
  'No. As of November 2026, bofanglutide is investigational. It is in Phase 3 development across multiple trials: GRADUAL-1 and GRADUAL-2 (ongoing, China), and GRADUAL-3 (Phase 3 maintenance, positive readout November 4 2026). A US Phase 2 study met its primary endpoints in June 2026, paving the way for a potential US Phase 3 program and FDA regulatory pathway. The compound is developed by Gan & Lee Pharmaceuticals, a Chinese company, so an FDA NDA submission would follow successful global Phase 3 data. It is not available outside of authorized clinical trials. Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.'
);

-- ============================================================
-- FAQs for Enicepatide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does enicepatide compare to tirzepatide (Mounjaro)?',
  'Both enicepatide and tirzepatide are dual GLP-1/GIP receptor agonists, but they come from different companies (Roche vs. Eli Lilly) and use different molecular scaffolds. Tirzepatide showed approximately 22.5% weight loss in SURMOUNT-1 at 72 weeks (15 mg). Enicepatide''s Phase 2 obesity trial (CT-388-103, 48 weeks) reported 22.5% placebo-adjusted weight loss using the efficacy estimand — broadly comparable, though the trials differ in design, duration, and population. No head-to-head data exists. Enicepatide is in Phase 3 (ENITH program, 2026) while tirzepatide is already FDA-approved. The GIP receptor coactivation is thought to improve tolerability and potentially target adipose tissue directly beyond GLP-1 alone.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What Phase 3 program is Roche running for enicepatide?',
  'Roche''s Phase 3 program for enicepatide is named ENITH. Two Phase 3 obesity trials were initiated in 2026, following the Phase 2 obesity trial (CT-388-103) which showed 22.5% placebo-adjusted weight loss at 48 weeks and the Phase 2 type 2 diabetes trial (CT-388-104) with positive topline results announced September 22 2026. Roche is also exploring combination strategies, pairing enicepatide with petrelintide (Roche''s amylin analog, also in Phase 3) based on preliminary data suggesting additive weight-loss signals through complementary mechanisms. Full ENITH trial registration details and timelines are expected at a major medical conference in early 2027.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What were enicepatide''s results in people with type 2 diabetes?',
  'The CT-388-104 Phase 2 trial (N=447 adults with type 2 diabetes and overweight or obesity, 48 weeks, results September 2026) showed that the 24 mg dose produced approximately 15.5% body weight reduction with no plateau at week 48. HbA1c fell by 2.65 percentage points from a baseline of 8.1%, which is a clinically meaningful improvement in glycemic control. The discontinuation rate due to adverse events was 2.0% in enicepatide arms versus 0.0% in the placebo arm, indicating a favorable safety profile. These results are topline company figures and have not yet been published in a peer-reviewed journal. Research compounds discussed for educational purposes. Not FDA-approved. Consult a healthcare provider before use.'
);

-- ============================================================
-- Peptide_FAQs junction table inserts
-- (requires knowing the auto-generated IDs; apply AFTER FAQs inserted)
-- Use this pattern once IDs are confirmed:
--
-- INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
--   SELECT p.id, f.id FROM Peptides p, FAQs f
--   WHERE p.slug = 'bofanglutide'
--   AND f.question IN (
--     'What makes bofanglutide different from weekly GLP-1 drugs like Ozempic?',
--     'How much weight loss did bofanglutide produce in clinical trials?',
--     'Is bofanglutide approved in the US or Europe?'
--   );
--
-- INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
--   SELECT p.id, f.id FROM Peptides p, FAQs f
--   WHERE p.slug = 'enicepatide'
--   AND f.question IN (
--     'How does enicepatide compare to tirzepatide (Mounjaro)?',
--     'What Phase 3 program is Roche running for enicepatide?',
--     'What were enicepatide''s results in people with type 2 diabetes?'
--   );
-- ============================================================
