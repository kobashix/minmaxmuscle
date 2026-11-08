-- MinMaxMuscle D1 Inserts - Generated 2026-11-08
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Apply in order after all prior pending SQL files (chronological order: 10-29, 11-01, 11-03, 11-05, 11-06, 11-07, 11-08)
--
-- To apply:
--   Option 1: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-08_inserts.sql
--   Option 2: Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console > paste SQL

-- ============================================================
-- PEPTIDE 1: Retatrutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Retatrutide',
  'retatrutide',
  'Metabolic & Weight Loss',
  'GLP-1/GIP/glucagon triple receptor agonist for obesity; 6 positive Phase 3 trials; up to 28.3% weight loss (highest ever in Phase 3); beats Ozempic 2:1 head-to-head; FDA filing Q1 2027; also effective for knee osteoarthritis and sleep apnea',
  'Retatrutide (LY3437943) is an investigational once-weekly injectable peptide developed by Eli Lilly that simultaneously activates three incretin and metabolic receptors: the GLP-1 receptor (GLP-1R), the glucose-dependent insulinotropic polypeptide receptor (GIPR), and the glucagon receptor (GCGR). It is the first triple agonist to successfully complete Phase 3 clinical trials and the most potent anti-obesity peptide ever evaluated in a large randomized controlled trial, with TRIUMPH-1 reporting up to 28.3% mean body weight reduction at 80 weeks — a figure that exceeds any prior Phase 3 anti-obesity drug result.

Background and Mechanism: The three receptor targets contribute complementary metabolic effects:
1. GLP-1 receptor agonism: Slows gastric emptying, reduces appetite via central satiety signaling, lowers blood glucose by enhancing insulin secretion and suppressing glucagon in a glucose-dependent manner.
2. GIP receptor agonism: Augments incretin-mediated insulin secretion, may enhance GLP-1R signaling through receptor cross-talk, and in combination appears to produce additive adiposity reductions beyond either receptor alone (tirzepatide''s success validates GLP-1/GIP dual agonism).
3. Glucagon receptor agonism: Drives direct hepatic fat oxidation, increases thermogenesis, and enhances energy expenditure independently of reduced caloric intake. The glucagon component is what distinguishes retatrutide from both semaglutide (GLP-1 mono) and tirzepatide (GLP-1/GIP dual) — it adds a third mechanism targeting stored fat utilization and metabolic rate.

TRIUMPH Phase 3 Program (6 positive trials as of November 2026):
- TRIUMPH-1 (obesity without diabetes, n=~2,500): Topline announced May 21, 2026. Retatrutide 12 mg SC weekly delivered mean body weight reduction of 25–28.3% at 80 weeks (the precise figure varies by analysis type; Lilly reported the primary results as 25.0% mean and also cited 28.3% at select doses in some analyses). Notably, 45.3% of TRIUMPH-1 participants on the 12 mg dose lost ≥30% of body weight — a threshold that prior anti-obesity drugs rarely approached even in a minority of patients.
- TRIUMPH-2 (type 2 diabetes with obesity): Topline announced July 23, 2026. Weight reduction 20.8% at 80 weeks. Met all primary and key secondary endpoints including A1C reduction.
- TRIUMPH-3 (severe obesity with cardiovascular disease): Topline announced July 23, 2026. Weight reduction 22.6% at 80 weeks. MACE-5 hazard ratio 0.82 (confidence intervals crossed 1.0, so cardiovascular benefit not conclusively established, but no cardiovascular harm signal).
- TRIUMPH knee osteoarthritis (OA): Positive Phase 3 results for reduction in knee OA pain as a comorbidity of obesity. This is the first obesity drug to demonstrate significant improvement in OA pain as a secondary indication.
- TRIUMPH obstructive sleep apnea (OSA): Positive Phase 3 results for sleep apnea severity reduction.
- TRANSCEND-T2D-2 (head-to-head vs. Ozempic 2 mg; topline October 28, 2026): 1,298 adults with type 2 diabetes randomized 2:2:1 to retatrutide 9 mg, retatrutide 12 mg, or semaglutide (Ozempic) 2 mg. Results: retatrutide 12 mg achieved -20.9% weight (-47.4 lbs) vs. -9.4% weight (-20.9 lbs) for Ozempic — more than double Ozempic''s weight loss. A1C reduction: -2.2% (retatrutide) vs. -1.8% (Ozempic). This was the first prospective head-to-head trial of retatrutide against an approved semaglutide dose, and retatrutide met both the primary endpoint (A1C) and all key secondary endpoints.

Regulatory Status and Plans: Lilly has announced plans to file a Biologics License Application (BLA) with the FDA in Q1 2027. The company said the data package supports initial submissions for obesity, knee osteoarthritis pain, and obstructive sleep apnea. Retatrutide is not approved anywhere as of November 2026.

Safety Profile: Most common adverse events across TRIUMPH trials are consistent with the incretin/glucagon drug class: nausea, vomiting, diarrhea, constipation — predominantly during dose escalation, manageable, and largely dose-dependent. Discontinuation due to adverse events was modestly higher with retatrutide than placebo in TRIUMPH-2 and TRIUMPH-3. No unexpected safety signal has emerged. The cardiovascular outcomes question remains open pending a dedicated CVOT.

Significance: Retatrutide represents the peak clinical achievement of the incretin-glucagon axis approach to metabolic disease. By layering GLP-1R, GIPR, and GCGR activity into a single once-weekly injection, it achieves weight loss of 25–28% — approaching the range of bariatric surgery — with a pharmacological agent. The TRANSCEND-T2D-2 head-to-head data showing more than double the weight loss of the standard approved dose of semaglutide in type 2 diabetes marks a new high-water mark for pharmacological metabolic medicine. The 45.3% of TRIUMPH-1 participants achieving ≥30% weight loss suggests that, at least for some patients, a single peptide drug can achieve surgical-level metabolic benefit. As a triple agonist, its mechanism also informs the science of why combined receptor engagement — GLP-1 + GIP + glucagon — may be synergistically superior to single or dual targeting alone.

Research Limitations and Disclaimers: Retatrutide is not FDA approved. All results are from topline company announcements; full peer-reviewed publications with complete safety data are pending. Long-term cardiovascular outcomes data are not available. TRIUMPH-3 showed a 0.82 MACE-5 hazard ratio with non-significant confidence intervals — cardiovascular benefit is suggested but not established. The head-to-head TRIUMPH-5 trial against tirzepatide (the highest-approved GLP-1/GIP dual agonist) is ongoing and results are expected in late 2026/early 2027. Research compounds discussed for educational purposes. Consult a healthcare provider before clinical decisions.',
  'LY3437943',
  'Phase 3 Clinical',
  'Triple agonist: GLP-1R + GIPR + glucagon receptor; 38-amino acid peptide analog; once-weekly SC injection; developed by Eli Lilly; MW ~4.4 kDa; FDA BLA filing planned Q1 2027',
  'https://investor.lilly.com/news-releases/news-release-details/lillys-triple-agonist-retatrutide-delivered-powerful-weight-loss,https://www.hcplive.com/view/transcend-t2d-2-retatrutide-beats-semaglutide-2-mg-on-a1c-weight-loss,https://www.indianpharmapost.com/clinical-trials/lillys-experimental-weight-loss-drug-beats-ozempic-in-head-to-head-trial-22273,https://www.ajmc.com/view/retatrutide-tops-semaglutide-on-a1c-weight-in-head-to-head-trial',
  96,
  '2026-11-08',
  NULL
);

-- ============================================================
-- FAQs: Retatrutide (3 questions)
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does retatrutide differ from semaglutide and tirzepatide?',
  'Retatrutide adds a third receptor target — the glucagon receptor — on top of the GLP-1R and GIPR targets that tirzepatide hits. Semaglutide targets only GLP-1R. Each additional receptor adds a different metabolic mechanism: GLP-1R provides satiety and glucose control; GIPR augments incretin effects (tirzepatide''s advantage over semaglutide comes primarily from this); glucagon receptor drives direct hepatic fat oxidation and thermogenesis (retatrutide''s additional advantage over tirzepatide). The clinical result is progressively greater weight loss: semaglutide Phase 3 ~15%, tirzepatide Phase 3 ~21%, retatrutide Phase 3 25–28.3%. TRANSCEND-T2D-2 (October 28, 2026) showed retatrutide achieving more than double the weight loss of Ozempic 2 mg in type 2 diabetes. The direct head-to-head TRIUMPH-5 trial versus tirzepatide is ongoing, with results expected in late 2026 or early 2027. None of these are equivalent: they hit overlapping but distinct receptor profiles and may have different optimal patient populations.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What does 28.3% weight loss in TRIUMPH-1 actually mean?',
  'In the TRIUMPH-1 Phase 3 trial (obesity without type 2 diabetes), participants on the 12 mg weekly retatrutide dose lost a mean of approximately 25–28.3% of their starting body weight over 80 weeks. For context: a person starting at 250 lbs (113 kg) would lose 62–70 lbs on average. These figures are the highest ever reported in a Phase 3 anti-obesity drug trial. For comparison, the best available approved drugs prior to retatrutide were tirzepatide (~21% in SURMOUNT-1), semaglutide SC 2.4 mg (~15% in STEP-1), and older agents like phentermine/topiramate (~9%). Perhaps more striking than the mean: 45.3% of retatrutide participants on 12 mg lost ≥30% of body weight — a threshold that approaches the typical range for bariatric surgery (25–35% at one year), suggesting that for many patients retatrutide can achieve pharmacologically what surgery achieves mechanically. These results are from topline Lilly announcements; full peer-reviewed publications are pending, and FDA review will determine whether the drug is approved.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'When will retatrutide be approved and available?',
  'Eli Lilly announced plans to file a Biologics License Application (BLA) with the FDA in Q1 2027, with the data package supporting submissions for obesity, knee osteoarthritis pain, and obstructive sleep apnea. If the FDA accepts the BLA and grants standard review, approval could come in late 2027 or early 2028. If priority review is granted (possible given the magnitude of unmet need), approval could be earlier. The drug is not approved anywhere as of November 2026 and is not available outside of clinical trials. Lilly also plans international submissions; exact timelines depend on regulatory agency decisions. The head-to-head TRIUMPH-5 trial against tirzepatide is expected to report in late 2026 or early 2027 and may influence the commercial and regulatory story, but it is not required for the initial BLA filing.'
);

-- ============================================================
-- Junction table: Peptide_FAQs (run after the above inserts; uses slug-based subquery)
-- ============================================================

-- Retatrutide FAQs
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'retatrutide'
  AND f.question = 'How does retatrutide differ from semaglutide and tirzepatide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'retatrutide'
  AND f.question = 'What does 28.3% weight loss in TRIUMPH-1 actually mean?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'retatrutide'
  AND f.question = 'When will retatrutide be approved and available?';
