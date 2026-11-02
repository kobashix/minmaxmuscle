-- MinMaxMuscle D1 Inserts - Generated 2026-11-02
-- Database: ffdc0a4e-5374-4a7c-bcae-1fb58188a774
-- Schema: uses actual column names from functions/peptides/[slug].js
-- Compounds: Maridebart Cafraglutide, Cyclized Hexapeptide-9
-- Apply via: wrangler d1 execute ffdc0a4e-5374-4a7c-bcae-1fb58188a774 --file d1_pending/2026-11-02_inserts.sql

-- ============================================================
-- PEPTIDE 1: Maridebart cafraglutide
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Maridebart cafraglutide',
  'maridebart-cafraglutide',
  'Metabolic & Weight Loss',
  'Once-monthly GLP-1R agonist / GIPR antagonist antibody-peptide conjugate for obesity — unique monthly dosing in obesity pipeline',
  'Maridebart cafraglutide (AMG 133, trade name MariTide) is a novel bispecific antibody-peptide conjugate developed by Amgen that combines a fully human anti-GIP receptor (GIPR) antagonist antibody with two GLP-1 receptor agonist peptide analogs covalently conjugated to the antibody backbone. The antibody component blocks the GIP receptor (GIPR antagonism), while the two attached GLP-1 peptides activate GLP-1 receptors. This dual mechanism—combined with the antibody''s long 21-day half-life—enables once-monthly subcutaneous dosing, a dosing frequency unique among obesity therapeutics in the 2026 pipeline. Phase 2 results published in the New England Journal of Medicine (Jastreboff et al., 2025): 592 adults randomized across 11 dose groups in two cohorts. In the obesity-without-diabetes cohort, participants achieved approximately 12.3%–16.2% body weight reduction at 52 weeks vs. –2.5% placebo (treatment-policy estimand); under the efficacy estimand (excluding data after discontinuation) values reached approximately 16%–20% at the highest doses, with weight loss trajectories not yet plateaued at 52 weeks. In the obesity-plus-type-2-diabetes cohort, weight loss was approximately 8.4%–12.3% at 52 weeks with HbA1c reductions of 1.2–1.6 percentage points. Phase 3 MARITIME program initiated: MARITIME-1 (obesity without T2DM, NCT06858839), MARITIME-3-J (Japan, NCT06987695), MARITIME-HF (heart failure with preserved ejection fraction, NCT07037459), MARITIME-CV (cardiovascular outcomes, NCT07037433), and a head-to-head vs. semaglutide in T2DM (NCT07866066). Maridebart cafraglutide is investigational; not FDA-approved as of November 2026. Note: this is a peptide-antibody conjugate, not a pure synthetic peptide; it shares characteristics of both biologics and peptide therapeutics.',
  'AMG 133, MariTide',
  'Phase 3 Clinical',
  'Antibody-peptide conjugate; GLP-1 receptor agonist + GIPR antagonist; once-monthly subcutaneous injection; 21-day half-life from antibody component; 2 GLP-1 peptide analogs per antibody molecule; developed by Amgen',
  'https://www.nejm.org/doi/full/10.1056/NEJMoa2502553,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10896721/,https://clinicaltrials.gov/study/NCT06858839,https://www.amgen.com/stories/2026/05/the-story-of-maridebart-cafraglutide',
  88,
  '2026-11-02',
  NULL
);

-- ============================================================
-- PEPTIDE 2: Cyclized Hexapeptide-9
-- ============================================================
INSERT OR IGNORE INTO Peptides (
  peptide_name, slug, Category, primary_focus, research_summary,
  nicknames, Status, molecular_data, Sources, rank, "As Of", forum_topic_url
) VALUES (
  'Cyclized Hexapeptide-9',
  'cyclized-hexapeptide-9',
  'Skin & Hair Health',
  'Topical skin anti-aging peptide — outperforms retinol in published RCT for wrinkles, elasticity, pigmentation and barrier function',
  'Cyclized Hexapeptide-9 (CHP-9, INCI: Hexapeptide-9) is a synthetic cosmetic peptide consisting of six amino acids in a cyclized (ring) conformation that enhances stability and dermal penetration compared to linear analogs. It is designed to stimulate collagen and elastin synthesis in fibroblasts, inhibit matrix metalloproteinases (MMPs) responsible for extracellular matrix degradation, and promote epidermal cell turnover—the same biological pathways targeted by retinol but through a receptor-mediated rather than retinoic acid receptor pathway. CHP-9 carries a distinct advantage over retinol in that it does not produce retinoid-associated skin irritation, peeling, or photosensitivity, allowing twice-daily use and combination with other actives. Published clinical evidence: Chang et al., 2025, Journal of Cosmetic Dermatology (PMC12207714, PubMed 40586182)—a randomized, double-blinded, vehicle- and active-controlled trial in healthy volunteers with aging skin. Participants applied 0.002% CHP-9 serum, 0.002% retinol serum, or vehicle serum twice daily for 56 days. CHP-9 demonstrated statistically superior improvement over retinol across all measured endpoints except the roughness of crow''s feet wrinkles (where both were equivalent): including forehead and crow''s feet wrinkle count, wrinkle area and roughness, periorbital and nasolabial skin elasticity, skin pigmentation (UV spot area), and transepidermal water loss (barrier repair). Time-dependent augmentation of CHP-9 effect was observed: potency relative to retinol increased progressively from Day 28 to Day 56, suggesting cumulative benefit with continued use. Study was funded by a cosmetic manufacturer (Shanghai Kans Biotech affiliation noted); independent replication is pending. CHP-9 is not a pharmaceutical drug, does not require FDA approval, and is commercially available in cosmetic formulations. Legal status: Cosmetic Grade.',
  'CHP-9, Hexapeptide-9',
  'Cosmetic Grade',
  'Cyclized hexapeptide; topical cosmetic peptide; collagen stimulation + MMP inhibition; 0.002% serum concentration in published trial; cyclized conformation for enhanced stability; INCI name: Hexapeptide-9',
  'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12207714/,https://pubmed.ncbi.nlm.nih.gov/40586182/,https://onlinelibrary.wiley.com/doi/10.1111/jocd.70290',
  62,
  '2026-11-02',
  NULL
);

-- ============================================================
-- FAQs for Maridebart cafraglutide
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Why can maridebart cafraglutide be injected once a month instead of once a week like other obesity drugs?',
  'The monthly dosing comes from maridebart cafraglutide''s unique molecular structure: it is not a pure peptide but an antibody-peptide conjugate, specifically a human anti-GIPR antibody with two GLP-1 agonist peptide analogs attached. The antibody portion has a natural half-life of approximately 21 days — roughly three times longer than the half-lives of weekly peptides like semaglutide or tirzepatide. This extended pharmacokinetics allows the GLP-1 peptide payloads attached to the antibody to remain active at therapeutic concentrations for the full month between injections. No other obesity drug approved or in advanced development as of November 2026 offers monthly dosing, which could represent a meaningful compliance and convenience advantage.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What were the actual weight loss results from the maridebart cafraglutide Phase 2 NEJM trial?',
  'The Phase 2 trial (Jastreboff et al., NEJM, 2025) enrolled 592 adults across 11 dose groups in two cohorts. In the non-diabetic obesity cohort, participants receiving the highest doses lost approximately 16% of body weight by the treatment-policy estimand at 52 weeks, versus –2.5% placebo. Under the efficacy estimand (which excludes data collected after treatment discontinuation, capturing the drug''s full biological effect), weight loss reached approximately 16%–20% at the highest doses. Importantly, weight loss was still declining — not plateaued — at 52 weeks, suggesting continued efficacy potential with longer treatment. In the type 2 diabetes cohort, weight loss was approximately 8.4%–12.3% with HbA1c reductions of 1.2–1.6 percentage points. Phase 3 MARITIME results will determine whether these figures hold at a larger scale.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Is maridebart cafraglutide a peptide or an antibody — and does it belong on a peptide research site?',
  'Maridebart cafraglutide is technically a bispecific antibody-peptide conjugate: it has an antibody backbone for half-life and GIPR blockade, with peptide components providing GLP-1 receptor agonism. It occupies a molecular middle ground between traditional small peptides and monoclonal antibodies. The compound is widely discussed and tracked in peptide-focused research communities because its pharmacological activity is partly driven by the GLP-1 agonist peptides it carries, and its development trajectory sits alongside other GLP-1 class peptide drugs. We include it here with this structural note to provide context. It is not a simple synthetic peptide like BPC-157 or a peptide hormone analog like semaglutide, but its peptide payload and receptor-agonism mechanism make it relevant to researchers following the peptide therapeutics landscape.'
);

-- ============================================================
-- FAQs for Cyclized Hexapeptide-9
-- ============================================================
INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'How does cyclized hexapeptide-9 compare to retinol for reducing wrinkles?',
  'A 56-day randomized double-blind clinical trial published in the Journal of Cosmetic Dermatology (Chang et al., 2025, PMC12207714) directly compared 0.002% CHP-9 serum, 0.002% retinol serum, and vehicle, applied twice daily to adults with aging skin. CHP-9 outperformed retinol on all measured endpoints except crow''s feet roughness (equivalent): forehead and crow''s feet wrinkle count, wrinkle area and roughness, skin elasticity at orbital and nasolabial areas, UV spot pigmentation, and skin barrier function (transepidermal water loss). The advantage grew over time — CHP-9''s relative superiority was larger at Day 56 than at Day 28. Both were tested at the same low 0.002% concentration; CHP-9 does not carry retinol''s associated irritation, peeling, or photosensitivity, allowing twice-daily use without the tolerance-building protocol often required with retinoids.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'What is the mechanism of action of cyclized hexapeptide-9 for skin anti-aging?',
  'Cyclized Hexapeptide-9 works through three interlocking mechanisms in skin tissue. First, it stimulates collagen (primarily Type I and III) and elastin synthesis in dermal fibroblasts by activating fibroblast receptors linked to TGF-β signaling pathways. Second, it inhibits matrix metalloproteinases (MMPs), particularly MMP-1 (collagenase) and MMP-3 (stromelysin), which are enzymes that break down collagen and elastin — the root cause of skin aging-related loss of firmness. Third, its cyclized conformation (ring structure) improves stability against enzymatic degradation in the skin and enhances penetration into the dermis compared to a linear hexapeptide of the same sequence. Unlike retinol, which acts through nuclear retinoic acid receptors (RARs) and carries systemic-like irritation potential topically, CHP-9''s receptor-mediated surface action minimizes irritation risk.'
);

INSERT OR IGNORE INTO FAQs (question, answer) VALUES (
  'Can I use cyclized hexapeptide-9 products now, or is it investigational like most peptides on this site?',
  'Cyclized Hexapeptide-9 is a cosmetic-grade ingredient — it is not classified as a pharmaceutical drug and does not require FDA approval for sale. It is already commercially available in anti-aging serums and skincare products, primarily in formulations marketed by cosmetic manufacturers, particularly in Asia (the 2025 clinical trial was conducted in part with a product by Shanghai Kans Biotech). Unlike the investigational pharmaceutical peptides documented elsewhere on this site (which require clinical trial participation for access), CHP-9 can be purchased in over-the-counter skincare products. When selecting a product, look for Hexapeptide-9 in the INCI ingredient list, and prioritize formulations that list it in the top half of the ingredient list. The published trial used a 0.002% concentration; most commercial products target a similar range. The evidence base is a single industry-affiliated RCT; independent replication is ongoing.'
);

-- ============================================================
-- Peptide_FAQs junction: link FAQs to peptides
-- (Run after above inserts; uses slug-based subquery to match by question)
-- ============================================================
INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'maridebart-cafraglutide'
  AND f.question = 'Why can maridebart cafraglutide be injected once a month instead of once a week like other obesity drugs?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'maridebart-cafraglutide'
  AND f.question = 'What were the actual weight loss results from the maridebart cafraglutide Phase 2 NEJM trial?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'maridebart-cafraglutide'
  AND f.question = 'Is maridebart cafraglutide a peptide or an antibody — and does it belong on a peptide research site?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'cyclized-hexapeptide-9'
  AND f.question = 'How does cyclized hexapeptide-9 compare to retinol for reducing wrinkles?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'cyclized-hexapeptide-9'
  AND f.question = 'What is the mechanism of action of cyclized hexapeptide-9 for skin anti-aging?';

INSERT OR IGNORE INTO Peptide_FAQs (peptide_id, faq_id)
  SELECT p.id, f.id FROM Peptides p, FAQs f
  WHERE p.slug = 'cyclized-hexapeptide-9'
  AND f.question = 'Can I use cyclized hexapeptide-9 products now, or is it investigational like most peptides on this site?';
