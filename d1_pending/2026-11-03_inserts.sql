-- MinMaxMuscle D1 Inserts - Generated 2026-11-03
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: Petrelintide, Ribupatide
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-03_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console

-- ============================================================
-- PEPTIDE 1: Petrelintide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Petrelintide',
  'petrelintide',
  'Metabolic & Weight Loss',
  'Once-weekly amylin analog for obesity and T2DM; dual Phase 2 evidence; Phase 3 program initiated',
  'Petrelintide (ZP8396) is a long-acting amylin analog developed by Zealand Pharma in collaboration with Roche and Genentech for the treatment of obesity and type 2 diabetes. It is designed to mimic the natural hormone amylin, which is co-secreted with insulin by pancreatic beta cells and signals satiety through the brainstem (area postrema), suppresses glucagon secretion, and slows gastric emptying — satiety pathways distinct from those engaged by GLP-1 receptor agonists. The molecule is engineered for once-weekly subcutaneous administration through half-life extension, overcoming the multi-daily-injection requirement of the earlier amylin analog pramlintide (Symlin).

Phase 2 ZUPREME-1 (N=493 adults with overweight or obesity without diabetes, US; announced March 5, 2026 by Roche/Genentech): up to 10.7% mean weight loss from baseline at week 42 vs. 1.7% placebo. Side effects were similar to placebo; nausea rates were lower than in Phase 1b; no GI-related discontinuations at the maximally effective dose; discontinuation rate 4.8% petrelintide vs. 4.9% placebo. The favorable tolerability profile is a key differentiator from earlier amylin-class compounds.

Phase 2 ZUPREME-2 (N=220 US adults with obesity and type 2 diabetes; announced October 7, 2026 by Zealand Pharma): up to 9.2% mean weight loss from baseline at week 28 (range across arms: 7.4–9.2%) vs. 2.0% placebo; placebo-adjusted HbA1c reduction of 0.61–0.88%. Met primary endpoint. Discontinuation for GI events: 1.9% petrelintide vs. 1.7% placebo — confirming the tolerability signal from ZUPREME-1 in a diabetic population. Full data to be presented at a scientific conference (Q4 2026/Q1 2027).

Phase 3 program: Zealand and Roche have initiated ZUPREME-3, ZUPREME-4, and ZUPREME-5, targeting approximately 7,000 participants across obesity (with and without T2DM) and MASH indications. A Phase 2 combination trial of petrelintide with Roche''s GLP-1/GIP dual agonist enicepatide (CT-388) is planned for initiation in H2 2026, targeting additive weight loss by engaging both amylin and incretin pathways simultaneously.

Petrelintide is investigational; not approved by the FDA or any regulatory agency as of November 2026.',
  'ZP8396',
  'Phase 3 Clinical',
  'Peptide analog; amylin receptor agonist (CTR/CLR complex); once-weekly subcutaneous injection; developed by Zealand Pharma / Roche / Genentech; long-acting half-life by structural modification',
  'https://www.roche.com/media/releases/med-cor-2026-03-05,https://www.hcplive.com/view/zupreme-2-petrelintide-outperforms-placebo-for-weight-loss-in-t2d-and-obesity,https://www.biopharminternational.com/view/petrelintide-primary-endpoint-obesity-type-2-diabetes,https://en.wikipedia.org/wiki/Petrelintide',
  89,
  '2026-11-03',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Ribupatide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Ribupatide',
  'ribupatide',
  'Metabolic & Weight Loss',
  'Oral and injectable GLP-1/GIP dual agonist; first oral incretinomimetic in Phase 3; up to 23.6% weight loss',
  'Ribupatide (HRS9531) is a once-weekly GLP-1 and GIP receptor dual agonist developed by Hengrui Pharma in collaboration with Kailera Therapeutics. It targets the same dual-receptor mechanism as tirzepatide (Mounjaro/Zepbound) but is being developed in both injectable and oral (pill) formulations — the oral form would be the first oral GLP-1/GIP dual agonist to reach Phase 3. GIP receptor agonism is believed to enhance adipocyte insulin sensitivity and thermogenesis beyond what GLP-1 agonism alone provides, contributing to the weight loss seen with both semaglutide/GIP combinations (tirzepatide) and ribupatide.

Injectable Phase 3 (global): Ribupatide once-weekly injection is in global Phase 3 trials. A China Phase 2/3 trial reported mean weight loss of 23.6% at 36 weeks — among the highest Phase 3 weight-loss figures reported for any investigational agent.

Oral Phase 2 (China): The oral ribupatide (HRS9531 tablet) Phase 2 trial (NCT06841445, N=166 adults with obesity, BMI ≥28, without T2DM) reported positive topline data with up to 12.1% mean weight loss vs. 2.3% placebo at 26 weeks. Up to 38.6% of participants on the oral form achieved ≥15% body weight reduction. Weight loss had not plateaued at 26 weeks. Full data were presented at ADA 2026 (American Diabetes Association Scientific Sessions). Hengrui plans a China Phase 3 for oral ribupatide; Kailera plans to initiate a global Phase 2 for the oral form in 2026, with global Phase 3 targeted for H1 2027. A safety profile consistent with GLP-1-class therapies was reported (predominantly nausea, well tolerated).

The oral formulation is particularly notable for patient convenience: current approved incretinomimetics require weekly injections (semaglutide, tirzepatide) or daily oral tablets with significant food/timing restrictions (oral semaglutide, Rybelsus). An oral once-daily or once-weekly GLP-1/GIP pill achieving >12% weight loss at 26 weeks would represent a meaningful advance in patient-accessible obesity treatment.

Ribupatide is investigational as an oral form; no country has yet approved the oral ribupatide formulation as of November 2026. The injectable form is in Phase 3.',
  'HRS9531',
  'Phase 3 Clinical',
  'Peptide analog; GLP-1 receptor + GIP receptor dual agonist; once-weekly injectable (Phase 3) and oral tablet (Phase 2); developed by Hengrui Pharma / Kailera Therapeutics',
  'https://investors.kailera.com/news-releases/news-release-details/kailera-therapeutics-and-hengrui-pharma-report-positive-topline,https://www.hcplive.com/view/ribupatide-an-oral-dual-glp-1-gip-achieves-weight-loss-in-phase-2-obesity-trial,https://finance.yahoo.com/sectors/healthcare/articles/hengrui-pharma-kailera-therapeutics-present-233200840.html,https://www.biospace.com/drug-development/kailera-hengrui-push-oral-glp-1-gip-pill-to-phase-3-after-clearing-mid-stage-china-study',
  88,
  '2026-11-03',
  NULL
);

-- ============================================================
-- FAQs for Petrelintide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does petrelintide compare to eloralintide — both are amylin analogs for obesity?',
  'Petrelintide (ZP8396, Zealand/Roche) and eloralintide (LY3841136, Eli Lilly) are both once-weekly selective amylin receptor agonists for obesity, making them the two most advanced amylin-only drugs in the pipeline. The key differences are developer, molecular structure, and clinical data depth. Petrelintide has completed TWO Phase 2 trials: ZUPREME-1 (non-diabetic obesity, up to 10.7% at 42 weeks) and ZUPREME-2 (obesity + T2DM, up to 9.2% at 28 weeks), with Phase 3 ZUPREME-3/4/5 initiated. Eloralintide has completed one Phase 2 (Lancet 2025, up to 20.1% at 48 weeks) with Phase 3 ENLIGHTEN program starting. Eloralintide''s Phase 2 weight loss (20.1%) appears higher than petrelintide''s (10.7%), but the trials differ in duration (48 vs. 42 weeks), population, and dose levels, making direct comparison unreliable. Petrelintide is distinguished by an exceptionally clean tolerability profile — 4.8% GI discontinuation vs. 4.9% placebo in ZUPREME-1, essentially indistinguishable from placebo. Both are in Phase 3 as of late 2026 with no head-to-head trial announced.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why is petrelintide being combined with enicepatide (CT-388)?',
  'Enicepatide (CT-388) is Roche''s investigational GLP-1/GIP dual receptor agonist — the same dual-incretin mechanism as tirzepatide but developed by Roche. Petrelintide acts via amylin receptors, a completely separate satiety pathway from incretin receptors. Combining the two drugs engages three receptor systems simultaneously: GLP-1, GIP, and amylin. The scientific rationale is that each pathway drives satiety via distinct neural and hormonal circuits (hypothalamic GLP-1 signaling, adipocyte GIP effects, and brainstem area postrema amylin signaling), so their combination may produce additive or synergistic weight loss beyond what any single- or dual-agonist can achieve. This is the same logic behind Eli Lilly''s EloraTZP trial combining eloralintide with tirzepatide. If the combination demonstrates significantly greater weight loss (e.g. >25-30%), it could represent the next generation of obesity pharmacotherapy. The petrelintide + CT-388 Phase 2 trial was planned for initiation in H2 2026.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is petrelintide''s status in type 2 diabetes?',
  'ZUPREME-2 specifically enrolled 220 adults with obesity and type 2 diabetes in the US, reporting up to 9.2% weight loss at 28 weeks and a placebo-adjusted HbA1c reduction of 0.61–0.88% — confirming that petrelintide has both weight-loss and glycemic effects in T2DM. The HbA1c reduction is consistent with amylin''s known role in suppressing postprandial glucagon secretion and slowing gastric emptying. This makes petrelintide relevant for the large overlap population of people with both obesity and type 2 diabetes. The Phase 3 ZUPREME program (ZUPREME-3, -4, -5, targeting ~7,000 participants) likely includes a T2DM + obesity trial arm. Full ZUPREME-2 data are expected to be presented at a scientific conference in Q4 2026 or Q1 2027. Petrelintide is not approved for diabetes or obesity treatment as of November 2026.'
);

-- ============================================================
-- FAQs for Ribupatide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does ribupatide differ from tirzepatide (Mounjaro/Zepbound) if both target GLP-1 and GIP?',
  'Ribupatide (HRS9531) and tirzepatide both activate GLP-1 and GIP receptors, but are distinct molecular entities from different developers (Hengrui/Kailera vs. Eli Lilly) with different receptor binding profiles, pharmacokinetics, and formulation strategies. The critical differentiator is delivery: ribupatide is being developed in both injectable and oral pill forms, while tirzepatide is injection-only as of 2026. The oral GLP-1/GIP pill format would represent a major convenience advancement for the millions of patients who prefer oral medications. Phase 2 China data for oral ribupatide showed up to 12.1% weight loss at 26 weeks with weight loss not yet plateaued, suggesting the trajectory matches injectable efficacy. The injectable ribupatide Phase 3 showed 23.6% weight loss at 36 weeks, competitive with the highest tirzepatide doses. Direct head-to-head trials have not been conducted. An oral once-weekly GLP-1/GIP dual agonist in Phase 3 would be a first-in-class achievement.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the current status of oral ribupatide — when might it reach patients?',
  'As of November 2026, oral ribupatide has positive Phase 2 data from China (NCT06841445, presented at ADA 2026) showing up to 12.1% weight loss in 26 weeks. Hengrui plans to advance to Phase 3 in China. Kailera Therapeutics plans to initiate a global Phase 2 for the oral form with results expected in 2027, followed by global Phase 3 targeted for H1 2027. Assuming a global Phase 3 starts in H1 2027 and runs for 52–72 weeks (standard for obesity trials), topline results would not be expected before 2028-2029, with FDA review and approval at the earliest in 2029-2030. This is a 3-4 year horizon for most patients. In the meantime, the injectable ribupatide may reach certain markets sooner — the China injectable program is further advanced. Ribupatide is not approved anywhere in any form as of November 2026; access is limited to authorized clinical trials.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What weight loss did ribupatide achieve and how does it compare to other GLP-1 drugs?',
  'For the oral form (HRS9531 pill, Phase 2 China): up to 12.1% mean weight loss at 26 weeks, with 38.6% of participants achieving ≥15% body weight reduction. Weight loss was still progressing at 26 weeks. For the injectable form (Phase 3 China data): 23.6% mean weight loss at 36 weeks, which is broadly comparable to tirzepatide''s highest-dose Phase 3 results (~20-22% at 72 weeks) on a shorter timeline. For context: injectable semaglutide (Wegovy) achieves approximately 14.9% at 68 weeks; tirzepatide (Zepbound) achieves up to 22.5% at 72 weeks at highest dose. Oral ribupatide at 12.1% in only 26 weeks, with plateau not yet reached, suggests it could approach injectable-level efficacy — which no oral GLP-1 drug has demonstrated to date. Oral semaglutide (Rybelsus/OASIS trials) reached ~16.6% at 64 weeks at 50 mg. These are encouraging comparisons but not direct head-to-head data; trial populations, doses, durations, and definitions of weight loss endpoints differ.'
);

-- ============================================================
-- Peptide_FAQs junction: link FAQs to peptides
-- (Run after the above inserts; uses slug-based subquery)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'petrelintide'
    AND f.question IN (
      'How does petrelintide compare to eloralintide — both are amylin analogs for obesity?',
      'Why is petrelintide being combined with enicepatide (CT-388)?',
      'What is petrelintide''s status in type 2 diabetes?'
    );

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'ribupatide'
    AND f.question IN (
      'How does ribupatide differ from tirzepatide (Mounjaro/Zepbound) if both target GLP-1 and GIP?',
      'What is the current status of oral ribupatide — when might it reach patients?',
      'What weight loss did ribupatide achieve and how does it compare to other GLP-1 drugs?'
    );
