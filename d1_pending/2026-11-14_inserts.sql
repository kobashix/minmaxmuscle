-- MinMaxMuscle D1 Inserts - Generated 2026-11-14
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: actual column names confirmed from functions/peptides/[slug].js
-- Compounds: ABBV-295, Cyclized Hexapeptide-9 (CHP-9)
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-14_inserts.sql
-- Or via Cloudflare Dashboard > D1 > ffdc0a4e-5374-4a7c-bcae-1fb58188a774 > Console
-- NOTE: Run AFTER all prior INSERT files (chronological order through 2026-11-13_inserts.sql)

-- ============================================================
-- PEPTIDE 1: ABBV-295
-- Discovery trigger: Never previously evaluated. EASD 2026 press release (September 30, 2026)
--   confirms Phase 1 MAD study data: up to 9.8% weight loss at 12 weeks, half-life ~11-12 days.
--   Gubra milestone announcement (August 2026) confirms Phase 2 (NCT07752979) initiated August 4, 2026.
--   Novel amylin analog not yet staged on site. Distinct from cagrilintide (Novo Nordisk) and
--   eloralintide (Lilly) already staged. AbbVie/Gubra collaboration makes this a major pharma
--   amylin program deserving independent coverage.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'ABBV-295',
  'abbv-295',
  'Metabolic & Weight Loss',
  'Long-acting amylin receptor agonist for obesity; Phase 2 initiated August 2026 (NCT07752979); Phase 1: up to 9.8% weight loss at 12 weeks; half-life ~11–12 days enables biweekly or monthly dosing; AbbVie/Gubra collaboration',
  'ABBV-295 is an investigational long-acting amylin analog being developed by AbbVie in collaboration with Gubra (Gubra development code: GUB-014295). It was discovered using Gubra''s streaMLine platform, a proprietary peptide engineering technology, and licensed to AbbVie in a March 2025 global development and commercialization agreement under which AbbVie leads all clinical activities while Gubra receives milestone payments and royalties.

Mechanism of Action: ABBV-295 activates amylin receptors and calcitonin receptors — a receptor family distinct from GLP-1 receptors (the target of semaglutide, liraglutide, and tirzepatide). Amylin receptors (AMY1R, AMY2R, AMY3R) are heterodimers of the calcitonin receptor (CTR) paired with receptor activity-modifying proteins (RAMPs). They are highly expressed in the area postrema (AP) and nucleus tractus solitarius (NTS) of the brainstem — a satiety circuit that operates independently of the GLP-1-targeted arcuate hypothalamus. This mechanistic non-overlap means amylin agonism can be additive to GLP-1 or GIP receptor agonism, which is the rationale for combination programs across the obesity drug class (e.g., CagriSema, EloraTZP). ABBV-295 itself is a pure amylin analog, not a combination molecule.

The defining pharmacokinetic feature of ABBV-295 is its extended half-life of approximately 11 to 12 days — longer than cagrilintide (~7 days, once-weekly Novo Nordisk amylin analog) and eloralintide (once-weekly Lilly amylin analog). This extended half-life is what enables AbbVie to test dosing intervals beyond the standard weekly regimen: the Phase 2 arms evaluate 4 mg weekly, 6 mg weekly, 14 mg weekly, 14 mg every other week, and 8 mg monthly — with the monthly arm being particularly notable as the longest dosing interval tested in an amylin-class obesity drug.

Phase 1 Multiple Ascending Dose (MAD) Study: Detailed Phase 1 data were presented by AbbVie at EASD 2026 (European Association for the Study of Diabetes; September 30, 2026, Barcelona). The MAD study (Part 2B/2C) enrolled 60 participants. Key findings: (1) Dose-dependent weight loss: up to 9.8% mean body weight reduction after 12 to 13 weeks of once-weekly dosing, compared to 0.3% placebo (placebo-adjusted ~9.5%). This compares favorably to other amylin analogs at equivalent early timepoints. (2) Extended half-life: observed half-life of approximately 11 to 12 days in the MAD population. (3) Tolerability: adverse events were predominantly GI (nausea 33.3% vs 20.0% placebo; diarrhea 20.0% vs 0.0% placebo). No treatment-related serious adverse events were reported. (4) Pharmacokinetics support less-frequent dosing: flat, predictable PK profile consistent with the design goals of biweekly and monthly formulations. A limitation of this Phase 1 cohort is that participants were predominantly male (88%) with a mean BMI below 30 kg/m², which may not reflect the Phase 2 target population.

Phase 2 Trial (NCT07752979): Gubra announced on August 2026 that AbbVie had initiated the Phase 2 trial, triggering a USD 50 million milestone payment to Gubra. The trial is titled "A Phase 2 Dose-Finding Study to Assess the Safety and Efficacy of ABBV-295 in Adults With Obesity or Overweight With Weight-Related Comorbidities." Design: randomized, double-blind, placebo-controlled, 52-week treatment period, N=360 enrolled across the United States. Primary endpoint: percentage change in body weight from baseline to week 32. Dose arms: 4 mg weekly, 6 mg weekly, 14 mg weekly, 14 mg every 2 weeks, 8 mg monthly. This design is unusual for an obesity Phase 2 in that it simultaneously tests three dosing frequencies, which could reduce the number of subsequent bridging studies if less-frequent intervals are adequately powered.

Competitive positioning: Three amylin analogs are now in Phase 2 or later: cagrilintide (Novo Nordisk, NDA under FDA review as part of CagriSema, decision expected late 2026/Q1 2027), eloralintide (Eli Lilly, Phase 3 ENLIGHTEN program launched 2026), and ABBV-295 (AbbVie/Gubra, Phase 2 initiated August 2026). Each has a distinct half-life and dosing interval profile. ABBV-295 is the latest entrant and has the longest published half-life (~11–12 days vs. ~7 days for cagrilintide), making the monthly dosing investigation a potential market differentiator if efficacy and safety are confirmed. ABBV-295 is not approved by the FDA or any regulatory authority as of November 2026.',
  'GUB-014295',
  'Phase 2 Clinical',
  'Amylin analog peptide; long-acting; half-life ~11–12 days; subcutaneous injection; amylin receptor agonist (AMY1R/AMY2R/AMY3R) and calcitonin receptor (CTR) agonist; discovered via Gubra streaMLine platform; developed by AbbVie (licensee from Gubra, March 2025); once-weekly, biweekly, and monthly dosing arms in Phase 2',
  'https://news.abbvie.com/2026-09-30-AbbVie-Presents-Detailed-Phase-1-Data-for-ABBV-295,-a-Long-Acting-Amylin-Analog,-Demonstrating-Favorable-Tolerability-and-Pharmacokinetic-Profile-at-EASD-2026,https://www.gubra.dk/mfn_news/gubra-announces-achievement-of-milestone-from-abbvie-following-initiation-of-a-phase-2-clinical-trial-of-abbv-295-a-long-acting-amylin-analog/,https://clinicaltrials.gov/study/NCT07752979,https://nordiclifescience.org/?p=100059',
  91,
  '2026-11-14',
  NULL
);

-- ============================================================
-- FAQs: ABBV-295 (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How is ABBV-295 different from cagrilintide and eloralintide?',
  'All three are long-acting amylin receptor agonists for obesity, but they differ in half-life and origin. Cagrilintide (Novo Nordisk AM833) has a half-life of approximately 7 days, enabling once-weekly dosing; it is the most clinically advanced, with Phase 3 data published (REDEFINE 1, NEJM 2025) and an FDA NDA under review for the CagriSema combination. Eloralintide (Eli Lilly LY3841136) is also once-weekly, with Phase 3 ENLIGHTEN trials launched in 2026 after Lancet Phase 2 results showing up to 20.1% weight loss at 48 weeks. ABBV-295 (AbbVie/Gubra) has the longest published half-life at approximately 11–12 days, which is the rationale for its Phase 2 testing monthly and biweekly dosing intervals — a potential convenience advantage over weekly injectables. All three are investigational in the United States and are not approved for clinical use as monotherapy agents for obesity.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What weight loss results did ABBV-295 achieve in Phase 1?',
  'In AbbVie''s Phase 1 multiple-ascending-dose (MAD) study (Part 2B/2C, 60 participants, presented at EASD 2026, September 30, 2026), ABBV-295 achieved up to 9.8% mean body weight reduction after 12 to 13 weeks of once-weekly dosing, compared to 0.3% for placebo (approximately 9.5% placebo-adjusted). This is a Phase 1 result, not a Phase 3 result, so it reflects a small, short-duration study in a predominantly male (88%) cohort with a mean BMI below 30 — meaning participants were not obese by standard criteria. These numbers cannot be directly compared to Phase 3 trials for other drugs. The Phase 2 trial (NCT07752979, N=360, 52-week treatment, primary endpoint at week 32) will provide the first adequately powered efficacy and safety data to inform clinical potential.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why would monthly dosing matter for an obesity drug?',
  'Most injectable GLP-1-class obesity drugs require weekly self-administration (semaglutide, tirzepatide, cagrilintide, eloralintide). Weekly injections improve on daily insulin, but monthly dosing would represent a significant reduction in injection burden — twelve injections per year instead of fifty-two. For people who are needle-averse, have dexterity challenges, or simply find weekly adherence difficult, a monthly regimen could meaningfully improve real-world persistence with treatment. ABBV-295''s half-life of ~11–12 days is the pharmacokinetic basis for testing biweekly and monthly arms in Phase 2 (NCT07752979). Whether monthly dosing achieves comparable efficacy to weekly dosing — the key question — will be answered by Phase 2 results. If confirmed, AbbVie would have a differentiated product profile relative to all other amylin analogs currently in development.'
);

-- ============================================================
-- Junction table: Peptide_FAQs for ABBV-295
-- ============================================================

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'abbv-295'
  AND f.question = 'How is ABBV-295 different from cagrilintide and eloralintide?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'abbv-295'
  AND f.question = 'What weight loss results did ABBV-295 achieve in Phase 1?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'abbv-295'
  AND f.question = 'Why would monthly dosing matter for an obesity drug?';


-- ============================================================
-- PEPTIDE 2: Cyclized Hexapeptide-9 (CHP-9)
-- Discovery trigger: WebSearch surfaces PMC12207714 — a randomized, double-blinded,
--   active- and vehicle-controlled clinical trial published in Journal of Cosmetic Dermatology
--   (Wiley, DOI 10.1111/jocd.70290) indexed on PubMed (PMID 40586182), June/July 2025.
--   CHP-9 was previously evaluated (November 8–10 runs) and rejected for insufficient data.
--   This peer-reviewed RCT constitutes the clinical evidence required for qualification.
--   It is now re-evaluated and qualifies. Distinct from all 18 prior staged compounds.
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Cyclized Hexapeptide-9',
  'cyclized-hexapeptide-9',
  'Skin & Hair Health',
  'Topical anti-aging cosmetic peptide; randomized double-blinded clinical trial (2025) outperforms retinol on wrinkle area, number, roughness, and skin hydration; agonizes integrin β4 to stimulate dermal-epidermal junction proteins',
  'Cyclized Hexapeptide-9, abbreviated CHP-9, is a topical cosmetic peptide designed to address visible signs of skin aging including fine lines, wrinkles, and reduced skin hydration. It is a structurally modified, cyclized form of the linear hexapeptide known as Hexapeptide-9. The cyclization — forming a ring structure by linking the N- and C-termini — is a deliberate peptide engineering strategy that confers enhanced protease resistance (reducing enzymatic degradation in the skin) and improved skin permeability compared to the linear precursor. These modifications are intended to increase the effective exposure of the active peptide at target receptors in the dermis.

Mechanism of Action: CHP-9 targets integrin β4, a subunit of the integrin α6β4 receptor expressed on basal keratinocytes at the dermal-epidermal junction (DEJ). Integrin α6β4 anchors the epidermis to the basement membrane and signals through hemidesmosome complexes that govern keratinocyte proliferation, migration, and survival. In a cell-based study reported in the clinical trial publication, CHP-9 increased the expression of integrin β4 by approximately 6-fold compared to the linear hexapeptide-9. This receptor upregulation cascades into downstream effects including: (1) stimulation of laminin-5 (laminin-332) and type IV collagen, the main DEJ components; (2) enhancement of skin barrier function via improved DEJ integrity; (3) improved water retention consistent with enhanced barrier competence. The mechanism is distinct from retinoid signaling (vitamin A receptor pathways, the target of retinol), which explains why CHP-9 and retinol can have complementary rather than redundant effects, and why CHP-9 may succeed where retinol causes irritation.

Clinical Trial (PMC12207714 / PMID 40586182): A randomized, double-blinded, active- and vehicle-controlled clinical trial was published in the Journal of Cosmetic Dermatology (Wiley, DOI: 10.1111/jocd.70290), indexed on PubMed in June/July 2025 (PMID 40586182). This is a peer-reviewed journal trial, not a press release or company white paper. Study design: Participants were randomized to receive either a CHP-9 formulation, a retinol-equivalent concentration formulation (active control), or a vehicle (inactive control). The trial was double-blinded, meaning neither participants nor assessors knew which treatment was applied. Primary outcomes included quantitative skin parameters: wrinkle number, wrinkle area, and wrinkle roughness (crow''s feet and forehead), as well as skin hydration (absolute hydration values) and skin barrier parameters. Assessment was conducted at multiple time points across approximately 56 days.

Key results: CHP-9 reduced crow''s feet and forehead wrinkles across all three quantitative measures (number, area, roughness) at Day 56. Retinol reduced wrinkle area in crow''s feet and both number and area in forehead wrinkles but did not reach significance for roughness. The key superiority finding: except for the roughness of crow''s feet, CHP-9 demonstrated significantly larger effect sizes than retinol on all other measured outcomes. At Day 56, the absolute value of skin hydration was significantly higher in the CHP-9 group than in the retinol group. A time-course dynamic was noted: CHP-9 effects started weaker relative to retinol at earlier time points but continued to increase through Day 56, eventually exceeding retinol — consistent with a mechanism that requires structural remodeling (DEJ protein upregulation) rather than the more immediate surface effects of retinol. The trial presents CHP-9 as a potentially superior alternative to retinol for skin anti-aging, particularly relevant for people who experience retinol irritation (retinoid dermatitis) or are pregnant and must avoid retinoids.

Limitations and context: The full trial sample size and funding source were not retrieved in this research run. The comparison is against a single retinol concentration arm; retinol potency varies substantially by formulation, and head-to-head outcomes depend on the specific formulation used. The trial duration of approximately 56 days is relatively short for evaluating deeper collagen remodeling outcomes. The vehicle control arm confirms that the effects exceed placebo, but only retinol comparisons are discussed here. CHP-9 is a cosmetic ingredient; it is used in topical skin care formulations and is not classified as a drug by the FDA.

As a cosmetic peptide, CHP-9 is not subject to pharmaceutical regulatory approval pathways. It is commercially available in skin care formulations from multiple suppliers. Its Cosmetic Grade classification reflects this regulatory pathway. Research compounds discussed for educational purposes. Not FDA-approved for human use as a drug. Consult a dermatologist before use.',
  'CHP-9',
  'Cosmetic Grade',
  'Cyclized hexapeptide; 6-amino acid ring structure (cyclized N- to C-terminus); integrin β4 agonist; enhanced protease resistance vs linear hexapeptide-9; improved transdermal permeability; topical application; stimulates laminin-332 and type IV collagen at dermal-epidermal junction',
  'https://pubmed.ncbi.nlm.nih.gov/40586182/,https://pmc.ncbi.nlm.nih.gov/articles/PMC12207714/,https://onlinelibrary.wiley.com/doi/10.1111/jocd.70290',
  92,
  '2026-11-14',
  NULL
);

-- ============================================================
-- FAQs: Cyclized Hexapeptide-9 (3 questions)
-- ============================================================

-- FAQ 1
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does CHP-9 compare to retinol for anti-aging?',
  'A 2025 randomized, double-blinded clinical trial (PMC12207714 / PMID 40586182, Journal of Cosmetic Dermatology) directly compared cyclized hexapeptide-9 (CHP-9) against retinol as an active control over approximately 56 days. The key finding: CHP-9 reduced crow''s feet and forehead wrinkles on all three quantitative measures (number, area, and roughness), while retinol improved area in crow''s feet and number and area in forehead wrinkles but not roughness. With the exception of crow''s feet roughness, CHP-9 showed significantly larger effect magnitudes than retinol on all other measured outcomes. Skin hydration was also significantly higher with CHP-9 at Day 56. An important dynamic: CHP-9 started more slowly (effects smaller than retinol at early time points) but continued to build, eventually exceeding retinol by the final assessment — consistent with a mechanism requiring structural remodeling at the dermal-epidermal junction. For people who cannot tolerate retinol (retinoid dermatitis, pregnancy), CHP-9 represents a clinically validated alternative.'
);

-- FAQ 2
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why is CHP-9 "cyclized" and what does that mean?',
  'Standard peptides are linear chains of amino acids with a free N-terminus (amino end) and C-terminus (carboxyl end). Cyclization forms a covalent bond between these ends, creating a ring structure. For skin care peptides, cyclization offers two practical benefits: (1) Enhanced protease stability — the ring structure has no free termini for exopeptidases to cleave, making the peptide more resistant to enzymatic degradation in the skin. This extends the active half-life of the peptide on and in the skin. (2) Improved skin permeability — the ring conformation may adopt a more compact 3D structure that facilitates passage through the stratum corneum (the outer skin barrier). The result is higher effective peptide concentration at the dermal-epidermal junction, where integrin β4 receptors are expressed. The cyclic design is why CHP-9 can stimulate integrin β4 expression at approximately 6-fold higher levels than the linear hexapeptide-9 from which it was derived.'
);

-- FAQ 3
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is integrin β4 and why does targeting it reduce wrinkles?',
  'Integrin β4 is a cell surface receptor subunit that pairs with integrin α6 to form the α6β4 integrin complex, the core structural anchor of hemidesmosomes at the dermal-epidermal junction (DEJ). The DEJ is the zone between the epidermis (outer skin layer) and the dermis (deeper connective tissue). It is composed of laminin-332 (laminin-5), type IV collagen, nidogen, and perlecan — proteins that maintain skin cohesion, elasticity, and water retention. As skin ages, DEJ proteins degrade: the DEJ flattens, rete ridges diminish, and the epidermis loses its mechanical anchor to the dermis. This manifests as fine lines, loss of firmness, and reduced hydration. By stimulating integrin β4 expression (CHP-9 increases it approximately 6-fold in cell studies), CHP-9 triggers upregulation of laminin-332 and type IV collagen at the DEJ — essentially stimulating the structural components that reinforce skin architecture. This explains why CHP-9''s clinical trial effects built progressively over 56 days rather than acting rapidly like a surface moisturizer: the mechanism involves protein synthesis at the DEJ, which takes weeks to manifest as visible wrinkle reduction.'
);

-- ============================================================
-- Junction table: Peptide_FAQs for Cyclized Hexapeptide-9
-- ============================================================

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'cyclized-hexapeptide-9'
  AND f.question = 'How does CHP-9 compare to retinol for anti-aging?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'cyclized-hexapeptide-9'
  AND f.question = 'Why is CHP-9 "cyclized" and what does that mean?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
SELECT p.id, f.id FROM Peptides p, FAQs f
WHERE p.slug = 'cyclized-hexapeptide-9'
  AND f.question = 'What is integrin β4 and why does targeting it reduce wrinkles?';
