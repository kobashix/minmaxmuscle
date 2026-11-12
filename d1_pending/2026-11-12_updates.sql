-- MinMaxMuscle D1 Updates - Generated 2026-11-12
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Run AFTER all prior INSERT files have been applied (chronological order through 2026-11-11_inserts.sql)
-- These are UPDATE statements addressing new evidence published November 12, 2026
--
-- To apply:
--   Option 1: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-12_updates.sql
--   Option 2: Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console > paste SQL

-- ============================================================
-- UPDATE 1: Pemvidutide
-- Trigger: IMPACT Phase 2b 48-week data published in The Lancet Gastroenterology & Hepatology
--          on November 12, 2026 — upgrades from conference presentation to peer-reviewed publication
--          Also: RECLAIM AUD topline results now confirmed (noted in Nov 11 log)
-- ============================================================
UPDATE Peptides
SET
  research_summary = 'Pemvidutide (ALT-801) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist developed by Altimmune. The glucagon component drives hepatic fat oxidation and thermogenesis beyond what pure GLP-1 agonists provide, making it particularly effective for MASH. Phase 2 MOMENTUM trial (obesity): 15.6% weight loss at 48 weeks with notable lean mass preservation. Phase 2b IMPACT trial (MASH): published in The Lancet Gastroenterology & Hepatology (November 12, 2026) — 55% liver fat reduction vs 8% placebo; composite fibrosis endpoint (ELF + LSM) achieved by 32.4% (1.8 mg) vs 3.2% placebo; weight loss 7.5% vs 0.2% placebo. FDA Breakthrough Therapy Designation for MASH. Phase 3 PERFORMA MASH trial enrollment began August 2026. Phase 2 RECLAIM trial (AUD): 42.2% no heavy drinking days vs 17.4% placebo; 38% PEth reduction vs placebo; FDA EOP2 meeting expected December 2026.',
  Sources = 'https://ir.altimmune.com/news-releases/news-release-details/altimmune-announces-publication-impact-phase-2b-48-week-data,https://www.biospace.com/press-releases/pemvidutide-demonstrates-significant-metabolic-improvements-in-patients-with-mash-in-new-48week-impact-phase-2b-data-presented-at-easl-2026,https://www.managedhealthcareexecutive.com/view/once-weekly-pemvidutide-begins-phase-3-trial-for-mash',
  "As Of" = '2026-11-12'
WHERE slug = 'pemvidutide';

-- ============================================================
-- UPDATE 2: DA-1726
-- Trigger: MetaVia press release (November 12, 2026) — statistically significant uric acid
--          reduction (1.47 mg/dL placebo-adjusted) from Phase 1 Part 3B data
-- ============================================================
UPDATE Peptides
SET
  research_summary = 'DA-1726 is an investigational oxyntomodulin (OXM) analog developed by MetaVia Inc. that functions as a dual agonist at the GLP-1 receptor (GLP-1R) and the glucagon receptor (GCGR). Based on the structure of native oxyntomodulin — a 37-amino acid gut-derived peptide — DA-1726 has been engineered for extended half-life supporting once-weekly subcutaneous dosing. Phase 1 Part 3B interim results (Precision Liver Symposium 2026, Denver, November 6, 2026; n=19 — 15 drug, 4 placebo): placebo-adjusted body weight reduction 13.5%; placebo-adjusted liver fat reduction 68% (MRI-PDFF); statistically significant uric acid reduction 1.47 mg/dL (press release November 12, 2026). ObesityWeek 2026 poster (November 14, 2026): "DA-1726 Demonstrates Comparable Weight Loss and Distinct Metabolic Profile Compared With Retatrutide." Full topline Part 3 data expected Q4 2026. Development targets: obesity, MASLD, MASH, MetALD, ALD. Historical context: native oxyntomodulin reduced weight in Phase 1/2 studies (Imperial College London, 2005–2010) but required twice-daily injection; DA-1726 solves the half-life limitation with once-weekly dosing.',
  Sources = 'https://ir.metaviatx.com/news-releases/news-release-details/metavia-announces-poster-presentation-da-1726-obesityweekr-2026,https://www.prnewswire.com/news-releases/metavia-announces-statistically-significant-reduction-in-uric-acid-levels-with-da-1726-in-phase-1-part-3b-clinical-trial-302937759.html,https://www.koreabiomed.com/news/articleView.html?idxno=33767',
  "As Of" = '2026-11-12'
WHERE slug = 'da-1726';
