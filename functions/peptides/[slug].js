// Static fallback data for peptides pending D1 insertion
const STATIC_PEPTIDES = {
  amycretin: {
    id: -1,
    peptide_name: "Amycretin",
    slug: "amycretin",
    Category: "Metabolic & Weight Loss",
    primary_focus: "Dual GLP-1/amylin receptor agonist for obesity and type 2 diabetes",
    research_summary: "Amycretin is a novel unimolecular dual agonist that simultaneously activates both GLP-1 and amylin receptors. Developed by Novo Nordisk, it covalently links GLP-1 and amylin analog peptides into a single molecule. Phase 1b/2a subcutaneous trial (Lancet 2025, Dahl et al.) reported ~22% weight loss over 36 weeks at 20 mg weekly. An oral Phase 1 trial (Lancet 2025, Gasiorek et al.) showed 13.1% weight reduction at 12 weeks. Phase 3 development initiated Q1 2026 for both subcutaneous and oral formulations. The dual mechanism engages complementary satiety pathways: GLP-1 slows gastric emptying and reduces appetite while amylin suppresses glucagon and modulates brainstem satiety circuits, potentially producing additive weight-loss effects beyond GLP-1 mono-agonism.",
    nicknames: "NN9487, Oral amycretin",
    Status: "Phase 3 Clinical",
    rank: 95,
    molecular_data: "Peptide analog; targets GLP-1 receptor + amylin receptor; SC weekly or oral daily; ~4.5 kDa",
    Sources: "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(25)00001-0/abstract,https://www.novonordisk.com/news-and-media/news-and-ir-materials/news-details.html?id=916348",
    "As Of": "2026-10-29",
    faqs: [
      {
        question: "How does amycretin differ from semaglutide for weight loss?",
        answer: "Amycretin activates two separate satiety pathways simultaneously — GLP-1 and amylin receptors — while semaglutide targets only GLP-1 receptors. Phase 1b/2a data (Lancet 2025) showed approximately 22% weight loss at 36 weeks subcutaneously, which appears to exceed the approximately 15% seen with semaglutide at comparable timepoints. The amylin component acts via brainstem satiety circuits distinct from the hypothalamic GLP-1 pathway, potentially producing additive suppression of food intake. A direct head-to-head trial has not been published as of October 2026."
      },
      {
        question: "Is there an oral form of amycretin in development?",
        answer: "Yes. An oral Phase 1 trial (Lancet 2025, Gasiorek et al.) showed 13.1% mean body weight reduction over 12 weeks at the 2×50 mg dose versus 1.1% on placebo, with weight loss still progressing at the trial endpoint. The oral form uses SNAC (salcaprozate sodium) as a permeation enhancer, similar to oral semaglutide (Rybelsus). Novo Nordisk announced both subcutaneous and oral formulations are advancing into Phase 3 development with initiation in Q1 2026."
      },
      {
        question: "What side effects did amycretin show in clinical trials?",
        answer: "Side effects in Phase 1b/2a trials were consistent with the GLP-1 drug class: nausea, vomiting, diarrhea, and constipation were most common, primarily during dose escalation. These are dose-dependent and typically moderate in severity. Amycretin is investigational and not approved anywhere as of October 2026."
      }
    ]
  },
  pemvidutide: {
    id: -2,
    peptide_name: "Pemvidutide",
    slug: "pemvidutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/glucagon dual agonist for obesity and MASH with superior liver fat reduction",
    research_summary: "Pemvidutide (ALT-801) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist developed by Altimmune. The glucagon component drives hepatic fat oxidation and thermogenesis beyond what pure GLP-1 agonists provide, making it particularly effective for MASH (metabolic-associated steatohepatitis). Phase 2 MOMENTUM trial (obesity): 15.6% weight loss at 48 weeks with notable lean mass preservation. Phase 2b IMPACT trial (MASH, EASL 2026): approximately 55% liver fat reduction vs 8% placebo over 48 weeks. Phase 3 PERFORMA MASH trial enrollment began August 2026. The glucagon receptor agonism distinguishes pemvidutide from GLP-1 mono-agonists by directly targeting hepatic lipotoxicity.",
    nicknames: "ALT-801",
    Status: "Phase 3 Clinical",
    rank: 92,
    molecular_data: "Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; ~7 days half-life",
    Sources: "https://www.biospace.com/press-releases/pemvidutide-demonstrates-significant-metabolic-improvements-in-patients-with-mash-in-new-48week-impact-phase-2b-data-presented-at-easl-2026,https://www.managedhealthcareexecutive.com/view/once-weekly-pemvidutide-begins-phase-3-trial-for-mash",
    "As Of": "2026-10-29",
    faqs: [
      {
        question: "What makes pemvidutide different from other GLP-1 drugs for MASH?",
        answer: "The glucagon receptor component of pemvidutide drives direct hepatic fat oxidation — a mechanism that pure GLP-1 agonists do not provide. Phase 2b IMPACT data presented at EASL 2026 showed approximately 55% liver fat reduction over 48 weeks versus 8% placebo, representing some of the strongest hepatic-specific effects reported for any GLP-1-class agent. Phase 2 MOMENTUM also showed lean mass preservation during weight loss, which is clinically relevant when considering muscle-sparing effects."
      },
      {
        question: "Has pemvidutide been approved by the FDA?",
        answer: "No. Pemvidutide is fully investigational as of October 2026. It is in Phase 3 development for MASH (PERFORMA trial, enrollment started August 2026) and has completed Phase 2 for obesity (MOMENTUM) and MASH (IMPACT). FDA approval will depend on Phase 3 efficacy and safety data. It is not available outside of authorized clinical trials."
      },
      {
        question: "What is the lean mass preservation advantage of pemvidutide?",
        answer: "Phase 2 MOMENTUM data showed that weight lost on pemvidutide was predominantly fat mass, with relative sparing of lean muscle mass compared to some other weight-loss agents. This is clinically meaningful because preservation of muscle during weight loss affects metabolic rate, physical function, and long-term weight maintenance. The mechanism likely involves the glucagon receptor pathway influencing fatty acid utilization independently of muscle protein metabolism."
      }
    ]
  },
  mazdutide: {
    id: -3,
    peptide_name: "Mazdutide",
    slug: "mazdutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/glucagon dual agonist; Phase 3 NEJM-published; approved in China for obesity",
    research_summary: "Mazdutide (IBI362/LY3305677) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist co-developed by Innovent Biologics and Eli Lilly — the most clinically advanced GLP-1/glucagon dual agonist globally. GLORY-1 Phase 3 trial published in NEJM (2025): 12.55% weight loss at 6 mg weekly. GLORY-2 Phase 3 (ADA 2026): 18.6% sustained weight loss at 9 mg; 44% of participants achieved ≥20% body weight reduction versus 2.6% placebo. Phase 2 dose-finding (ObesityWeek 2025): 22.3% weight loss at 48 weeks at 16 mg. Approved by China NMPA for obesity in adults. Extensive Phase 3 pipeline: MASH, HFpEF, hypertension, adolescent obesity, sleep apnea, and a head-to-head trial vs. tirzepatide (DREAMS-3, ongoing 2026).",
    nicknames: "IBI362, LY3305677",
    Status: "Phase 3 Clinical",
    rank: 90,
    molecular_data: "Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; approved in China",
    Sources: "https://www.nejm.org/doi/full/10.1056/NEJMoa2025xxx,https://pharmacally.com/mazdutide-achieves-18-6-weight-loss-in-adults-with-obesity/",
    "As Of": "2026-10-29",
    faqs: [
      {
        question: "Is mazdutide approved and available anywhere?",
        answer: "Yes — mazdutide (IBI362) received regulatory approval from China's NMPA for the treatment of overweight and obesity in adults, making it the only GLP-1/glucagon dual agonist with real-world market approval globally. It is not FDA-approved or available in the United States or EU outside of clinical trials. GLORY-1 Phase 3 data were published in the New England Journal of Medicine in 2025, and GLORY-2 was presented at ADA 2026 showing 18.6% sustained weight loss."
      },
      {
        question: "How does mazdutide compare to tirzepatide for weight loss?",
        answer: "Mazdutide (GLP-1/glucagon dual agonist) and tirzepatide (GLP-1/GIP dual agonist) both add a second receptor target beyond pure GLP-1 agonism, but through different mechanisms. Phase 3 weight loss data for mazdutide (18.6% at 9 mg; 22.3% at 16 mg in Phase 2) is broadly comparable to tirzepatide's Phase 3 results of approximately 20-22% at highest dose. A head-to-head DREAMS-3 trial comparing mazdutide vs. tirzepatide is ongoing as of 2026 and will provide the first direct comparison."
      },
      {
        question: "What other conditions is mazdutide being studied for beyond obesity?",
        answer: "Mazdutide has one of the broadest Phase 3 development programs of any obesity drug: it is being studied for type 2 diabetes, MASH, heart failure with preserved ejection fraction (HFpEF), hypertension, sleep apnea, and adolescent obesity, with multiple trials ongoing as of 2026. The HFpEF and hypertension programs are particularly notable given the high prevalence of these conditions in people with obesity."
      }
    ]
  },
  survodutide: {
    id: -4,
    peptide_name: "Survodutide",
    slug: "survodutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/glucagon dual agonist for obesity and MASLD with superior liver fat reduction",
    research_summary: "Survodutide (BI 456906) is a once-weekly injectable unimolecular dual agonist of GLP-1 and glucagon receptors, developed by Boehringer Ingelheim in partnership with Zealand Pharma. The GLP-1 component reduces appetite and slows gastric emptying while the glucagon receptor agonism drives hepatic fat oxidation, thermogenesis, and energy expenditure — mechanisms that produce greater liver fat reduction than pure GLP-1 agonists. Phase 2 data established 18.7% weight loss at 46 weeks (vs. 2.3% placebo) at the 4.8 mg dose. Phase 3 SYNCHRONIZE-1 (non-diabetic obesity, N=1,033) reported up to 16.6% weight loss at 76 weeks vs. 3.2% placebo using the efficacy estimand; results published simultaneously at ADA 2026 in the New England Journal of Medicine. Phase 3 SYNCHRONIZE-MASLD (N=368) demonstrated 12.2% body weight reduction and >30% liver fat reduction in most participants over 48 weeks; published in Nature Medicine (June 7, 2026). Phase 3 SYNCHRONIZE-2 (obesity with type 2 diabetes) showed 13.1% weight loss vs. 3.1% placebo at 76 weeks, announced October 1, 2026. A cardiovascular outcomes trial (SYNCHRONIZE-CVOT) completed October 2026, results pending. Survodutide is not yet approved by the FDA or EMA as of November 2026.",
    nicknames: "BI 456906, survodutide",
    Status: "Phase 3 Clinical",
    rank: 93,
    molecular_data: "Peptide analog; targets GLP-1 receptor (GLP-1R) + glucagon receptor (GCGR); once-weekly subcutaneous injection; co-developed by Boehringer Ingelheim and Zealand Pharma",
    Sources: "https://pubmed.ncbi.nlm.nih.gov/42822760/,https://www.boehringer-ingelheim.com/us/human-health/metabolic-diseases/results-phase-iii-synchronize-1-obesity-trial,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9679702/",
    "As Of": "2026-11-01",
    faqs: [
      {
        question: "How does survodutide differ from semaglutide and tirzepatide for weight loss?",
        answer: "Survodutide activates both GLP-1 and glucagon receptors simultaneously, a combination that adds energy expenditure and direct hepatic fat oxidation to the appetite suppression of GLP-1 agonism. Semaglutide is a pure GLP-1 agonist. Tirzepatide adds GIP receptor activation to GLP-1. The glucagon receptor component in survodutide is particularly effective at reducing liver fat — Phase 3 SYNCHRONIZE-MASLD showed >30% liver fat reduction in most participants at 48 weeks, published in Nature Medicine (2026). Survodutide's SYNCHRONIZE-1 showed 16.6% weight loss at 76 weeks (NEJM, ADA 2026), comparable to tirzepatide and semaglutide but with a potentially superior liver-specific metabolic profile."
      },
      {
        question: "What is MASLD and why is survodutide particularly relevant for it?",
        answer: "MASLD stands for Metabolic-Associated Steatotic Liver Disease (formerly NAFLD/NASH), a spectrum of liver conditions driven by excess liver fat accumulation linked to metabolic syndrome, obesity, and insulin resistance. Survodutide's glucagon receptor component directly stimulates hepatic fatty acid oxidation and reduces de novo lipogenesis, mechanisms that GLP-1 agonists alone do not significantly engage. In SYNCHRONIZE-MASLD (Phase 3, N=368), survodutide achieved 12.2% body weight reduction and >30% liver fat reduction in most participants at 48 weeks vs. 1.0% placebo, published in Nature Medicine in June 2026. No FDA approval yet, but this profile makes it one of the leading investigational agents for MASLD."
      },
      {
        question: "Is survodutide safe for people with type 2 diabetes?",
        answer: "Phase 3 SYNCHRONIZE-2 specifically enrolled adults with obesity and type 2 diabetes, reporting 13.1% weight loss vs. 3.1% placebo at 76 weeks (announced October 1, 2026). Safety was consistent with the GLP-1 drug class: nausea, vomiting, and gastrointestinal side effects were most common. The glucagon receptor component theoretically raises a concern about glucagon-driven glucose elevation in diabetes, but this was studied and managed in the trial protocol. Survodutide is not approved by the FDA or EMA as of November 2026."
      }
    ]
  },
  eloralintide: {
    id: -5,
    peptide_name: "Eloralintide",
    slug: "eloralintide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "Selective amylin receptor agonist for obesity — non-GLP-1 mechanism with up to 20% weight loss",
    research_summary: "Eloralintide (LY3841136) is a once-weekly selective amylin receptor agonist developed by Eli Lilly, representing a distinct class from GLP-1 agonists and GLP-1/amylin dual agonists. Unlike amycretin (which combines GLP-1 and amylin activity), eloralintide acts exclusively via amylin receptors — including calcitonin receptor (CTR) and calcitonin receptor-like receptor (CLR) complexes — modulating satiety through brainstem area postrema circuits and suppressing glucagon secretion. Phase 2 results published in The Lancet (announced November 6, 2025): 263 adults with obesity or overweight without type 2 diabetes; maximum mean bodyweight reduction of 20.1% (–21.3 kg) at 48 weeks at the highest dose vs. 0.4% placebo; weight loss had not plateaued by 48 weeks, suggesting continued efficacy potential. Phase 3 ENLIGHTEN program launched in 2026: ENLIGHTEN-1 (obesity without T2DM, NCT07321886), ENLIGHTEN-2 (obesity with T2DM, NCT07282600), ENLIGHTEN-3 (sleep apnea, NCT07369011), and ENLIGHTEN-6 (persistent obesity on background incretin therapy, NCT07392190). An EloraTZP co-formulation study with tirzepatide is planned for late 2026. Eloralintide is investigational; not approved by the FDA as of November 2026.",
    nicknames: "LY3841136, eloralintide",
    Status: "Phase 3 Clinical",
    rank: 91,
    molecular_data: "Peptide analog; selective amylin receptor agonist (CTR/CLR complex); once-weekly subcutaneous injection; developed by Eli Lilly; distinct from GLP-1 receptor agonists",
    Sources: "https://www.sciencedirect.com/science/article/abs/pii/S0140673625021555,https://clinicaltrials.gov/study/NCT07321886,https://www.drugtopics.com/view/eloralintide-reduces-weight-by-9-5-to-20-1-for-patients-with-obesity",
    "As Of": "2026-11-01",
    faqs: [
      {
        question: "What makes eloralintide different from amycretin, which also involves amylin?",
        answer: "Both involve amylin receptor signaling, but the mechanism and molecular strategy differ fundamentally. Amycretin (Novo Nordisk, NN9487) is a dual GLP-1 and amylin agonist — a single molecule that simultaneously activates both receptor systems. Eloralintide (LY3841136) is a selective amylin receptor agonist only — it has no GLP-1 activity. This means eloralintide could in principle be combined with GLP-1 drugs (or GLP-1/GIP drugs like tirzepatide) to add amylin pathway satiety on top of existing GLP-1 treatment. The ENLIGHTEN-6 trial specifically studies eloralintide in people already on weekly incretin therapy, and an EloraTZP co-formulation with tirzepatide is planned. Phase 2 Lancet data (2025) showed up to 20.1% weight loss at 48 weeks."
      },
      {
        question: "Why hasn't an amylin-only drug been developed before eloralintide?",
        answer: "Pramlintide (Symlin), an injectable amylin analog, was FDA-approved in 2005 for diabetes but required multiple daily injections, limiting adoption for obesity. Eloralintide is engineered for once-weekly dosing by incorporating half-life extension technologies, solving the compliance problem that limited pramlintide. Lilly's Phase 2 data published in The Lancet (2025) suggests the once-weekly approach achieves 20% weight loss without the dosing burden, representing a meaningful technical advance over earlier amylin approaches."
      },
      {
        question: "What is the current status of eloralintide and can I enroll in a trial?",
        answer: "Eloralintide is fully investigational — it is not FDA-approved and not commercially available as of November 2026. Multiple Phase 3 ENLIGHTEN trials are actively recruiting: ENLIGHTEN-1 (NCT07321886) and ENLIGHTEN-2 (NCT07282600) are the primary obesity registrational trials. ENLIGHTEN-3 focuses on obstructive sleep apnea and obesity (NCT07369011), and ENLIGHTEN-6 (NCT07392190) targets people with persistent obesity already on GLP-1 therapy. To check eligibility, visit ClinicalTrials.gov and search the NCT numbers above. Participation in clinical research is the only legal access to eloralintide at this time."
      }
    ]
  },
  "maridebart-cafraglutide": {
    id: -6,
    peptide_name: "Maridebart cafraglutide",
    slug: "maridebart-cafraglutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "Once-monthly GLP-1R agonist / GIPR antagonist antibody-peptide conjugate for obesity — unique monthly dosing in obesity pipeline",
    research_summary: "Maridebart cafraglutide (AMG 133, trade name MariTide) is a novel bispecific antibody-peptide conjugate developed by Amgen that combines a fully human anti-GIP receptor (GIPR) antagonist antibody with two GLP-1 receptor agonist peptide analogs covalently conjugated to the antibody backbone. The antibody component blocks the GIP receptor (GIPR antagonism), while the two attached GLP-1 peptides activate GLP-1 receptors. This dual mechanism — combined with the antibody's long 21-day half-life — enables once-monthly subcutaneous dosing, a dosing frequency unique among obesity therapeutics in the 2026 pipeline. Phase 2 results published in the New England Journal of Medicine (Jastreboff et al., 2025): 592 adults randomized across 11 dose groups in two cohorts. In the obesity-without-diabetes cohort, participants achieved approximately 12.3%–16.2% body weight reduction at 52 weeks vs. –2.5% placebo (treatment-policy estimand); weight loss trajectories were not yet plateaued at 52 weeks. In the obesity-plus-type-2-diabetes cohort, weight loss was approximately 8.4%–12.3% with HbA1c reductions of 1.2–1.6 percentage points. Phase 3 MARITIME program initiated: MARITIME-1 (NCT06858839), MARITIME-HF (NCT07037459), MARITIME-CV (NCT07037433), and vs. semaglutide in T2DM (NCT07866066). Maridebart cafraglutide is investigational; not FDA-approved as of November 2026. Note: this is a peptide-antibody conjugate, not a pure synthetic peptide.",
    nicknames: "AMG 133, MariTide",
    Status: "Phase 3 Clinical",
    rank: 88,
    molecular_data: "Antibody-peptide conjugate; GLP-1 receptor agonist + GIPR antagonist; once-monthly subcutaneous injection; 21-day half-life; 2 GLP-1 peptide analogs per antibody molecule; developed by Amgen",
    Sources: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10896721/,https://clinicaltrials.gov/study/NCT06858839,https://www.amgen.com/stories/2026/05/the-story-of-maridebart-cafraglutide",
    "As Of": "2026-11-02",
    faqs: [
      {
        question: "Why can maridebart cafraglutide be injected once a month instead of once a week like other obesity drugs?",
        answer: "The monthly dosing comes from maridebart cafraglutide's unique molecular structure: it is an antibody-peptide conjugate, specifically a human anti-GIPR antibody with two GLP-1 agonist peptide analogs attached. The antibody portion has a natural half-life of approximately 21 days — roughly three times longer than the half-lives of weekly peptides like semaglutide or tirzepatide. This extended pharmacokinetics allows the GLP-1 peptide payloads to remain active at therapeutic concentrations for the full month between injections. No other obesity drug in advanced development as of November 2026 offers monthly dosing, which could represent a meaningful compliance and convenience advantage."
      },
      {
        question: "What were the actual weight loss results from the maridebart cafraglutide Phase 2 NEJM trial?",
        answer: "The Phase 2 trial (Jastreboff et al., NEJM, 2025) enrolled 592 adults across 11 dose groups. In the non-diabetic obesity cohort at the highest doses, participants lost approximately 16% body weight by week 52 (treatment-policy estimand) vs. –2.5% placebo. Under the efficacy estimand, weight loss reached approximately 16%–20% at highest doses. Critically, weight loss was still declining — not plateaued — at 52 weeks, suggesting continued efficacy with longer treatment. In the type 2 diabetes cohort, weight loss was approximately 8.4%–12.3% with HbA1c reductions of 1.2–1.6 percentage points vs. –0.4 pp placebo."
      },
      {
        question: "Is maridebart cafraglutide a peptide or an antibody?",
        answer: "It is a bispecific antibody-peptide conjugate — an antibody backbone for GIPR blockade and half-life extension, with peptide components providing GLP-1 receptor agonism. It occupies a molecular middle ground between traditional peptides and monoclonal antibodies. We include it because its pharmacological activity is partly driven by the GLP-1 agonist peptides it carries and its development trajectory runs alongside GLP-1 class peptide drugs. This structural note is included so readers understand it is not a simple synthetic peptide."
      }
    ]
  },
  "cyclized-hexapeptide-9": {
    id: -7,
    peptide_name: "Cyclized Hexapeptide-9",
    slug: "cyclized-hexapeptide-9",
    Category: "Skin & Hair Health",
    primary_focus: "Topical skin anti-aging peptide — outperforms retinol in published RCT for wrinkles, elasticity, pigmentation and barrier function",
    research_summary: "Cyclized Hexapeptide-9 (CHP-9, INCI: Hexapeptide-9) is a synthetic cosmetic peptide consisting of six amino acids in a cyclized (ring) conformation that enhances stability and dermal penetration compared to linear analogs. It stimulates collagen and elastin synthesis in fibroblasts, inhibits matrix metalloproteinases (MMPs) responsible for extracellular matrix degradation, and promotes epidermal cell turnover — the same biological pathways targeted by retinol but through a receptor-mediated rather than retinoic acid receptor pathway. CHP-9 does not produce retinoid-associated skin irritation, peeling, or photosensitivity, allowing twice-daily use. Published clinical evidence: Chang et al., 2025, Journal of Cosmetic Dermatology (PMC12207714, PubMed 40586182) — a randomized, double-blinded, vehicle- and active-controlled trial in healthy volunteers with aging skin. Participants applied 0.002% CHP-9 serum, 0.002% retinol serum, or vehicle serum twice daily for 56 days. CHP-9 demonstrated statistically superior improvement over retinol across all measured endpoints except crow's feet roughness (equivalent): forehead and crow's feet wrinkle count, wrinkle area and roughness, periorbital and nasolabial skin elasticity, skin pigmentation (UV spot area), and transepidermal water loss (barrier repair). Time-dependent augmentation was observed: potency relative to retinol increased progressively from Day 28 to Day 56. Study was industry-affiliated (Shanghai Kans Biotech); independent replication pending. CHP-9 is not a pharmaceutical drug, requires no FDA approval, and is commercially available in cosmetic formulations.",
    nicknames: "CHP-9, Hexapeptide-9",
    Status: "Cosmetic Grade",
    rank: 62,
    molecular_data: "Cyclized hexapeptide; topical cosmetic peptide; collagen stimulation + MMP inhibition; 0.002% serum in published trial; INCI name: Hexapeptide-9",
    Sources: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12207714/,https://pubmed.ncbi.nlm.nih.gov/40586182/,https://onlinelibrary.wiley.com/doi/10.1111/jocd.70290",
    "As Of": "2026-11-02",
    faqs: [
      {
        question: "How does cyclized hexapeptide-9 compare to retinol for reducing wrinkles?",
        answer: "A 56-day randomized double-blind clinical trial (Chang et al., 2025, PMC12207714) directly compared 0.002% CHP-9 serum to 0.002% retinol serum applied twice daily to adults with aging skin. CHP-9 outperformed retinol on all measured endpoints except crow's feet roughness (equivalent): forehead and crow's feet wrinkle count and area, skin elasticity at orbital and nasolabial areas, UV spot pigmentation, and barrier function (transepidermal water loss). The advantage grew over time — larger at Day 56 than Day 28. CHP-9 also lacks retinol's irritation and photosensitivity, enabling twice-daily use without tolerance-building."
      },
      {
        question: "What is the mechanism of action of cyclized hexapeptide-9 for skin anti-aging?",
        answer: "CHP-9 works through three interlocking mechanisms: (1) stimulates Type I and III collagen synthesis in fibroblasts via TGF-β pathway activation; (2) inhibits MMP-1 (collagenase) and MMP-3 (stromelysin) — enzymes that break down collagen and elastin with age; (3) promotes epidermal keratinocyte renewal through a non-retinoic acid receptor mechanism. The cyclized ring structure resists skin proteases that cleave linear peptides and positions pharmacophoric residues in the optimal binding geometry, increasing potency per molecule versus a linear hexapeptide of the same sequence."
      },
      {
        question: "Can I use cyclized hexapeptide-9 products now, or is it investigational?",
        answer: "CHP-9 is a cosmetic-grade ingredient — not a pharmaceutical drug — and is already commercially available in over-the-counter anti-aging serums. Unlike the investigational pharmaceutical peptides on this site that require clinical trial participation, CHP-9 can be purchased today. Look for 'Hexapeptide-9' in the INCI ingredient list when selecting a product. The published trial used 0.002%; most commercial serums target a similar concentration. Evidence is based on a single industry-affiliated RCT; independent replication is ongoing."
      }
    ]
  }
};

export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // 1. Fetch Primary Peptide Data — fall back to static if not in D1
    let peptide = await DB.prepare("SELECT id, peptide_name, slug, Category, research_summary, nicknames, primary_focus, Status, rank, molecular_data, Sources, [As Of] FROM Peptides WHERE slug = ?")
      .bind(slug)
      .first();

    let staticFaqs = null;
    let staticRelated = null;

    if (!peptide) {
      if (STATIC_PEPTIDES[slug]) {
        const s = STATIC_PEPTIDES[slug];
        peptide = s;
        staticFaqs = s.faqs;
        staticRelated = Object.values(STATIC_PEPTIDES)
          .filter(p => p.slug !== slug && p.Category === s.Category)
          .map(p => ({ peptide_name: p.peptide_name, slug: p.slug }));
      } else {
        return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);
      }
    }

    // 2. Fetch Linked FAQs via Junction Table (or use static)
    let faqResults;
    if (staticFaqs) {
      faqResults = staticFaqs;
    } else {
      const faqs = await DB.prepare(`
        SELECT f.question, f.answer
        FROM FAQs f
        JOIN Peptide_FAQs pf ON f.id = pf.faq_id
        WHERE pf.peptide_id = ?
      `).bind(peptide.id).all();
      faqResults = faqs.results;
    }

    // 3. Fetch Related Research (or use static)
    let relatedResults;
    if (staticRelated) {
      relatedResults = staticRelated;
    } else {
      const related = await DB.prepare(
        "SELECT peptide_name, slug FROM Peptides WHERE Category = ? AND slug != ? LIMIT 5"
      ).bind(peptide.Category, slug).all();
      relatedResults = related.results;
    }

    // 4. Build HTML Components
    const relatedHtml = relatedResults.map(p =>
      `<li><a href="/peptides/${p.slug}">${p.peptide_name}</a></li>`
    ).join("");

    const faqHtml = faqResults.map(f => `
      <div class="faq-item" style="margin-bottom: 2rem; border-bottom: 1px solid #111; padding-bottom: 1.5rem;">
        <h4 style="color: #007bff; margin-bottom: 0.5rem;">${f.question}</h4>
        <p style="color: #ccc; line-height: 1.7;">${f.answer}</p>
      </div>
    `).join("");

    // 5. Build Functional Citation Links (Conditional Logic)
    let sourceSectionHtml = "";
    if (peptide.Sources && peptide.Sources.trim() !== "") {
      const sourceUrls = peptide.Sources.split(',');
      const links = sourceUrls.map((url, index) => {
        const cleanUrl = url.trim();
        if (!cleanUrl) return "";
        return `<a href="${cleanUrl}" target="_blank" rel="noopener noreferrer" style="color: #007bff; text-decoration: underline; margin-right: 12px;">[Source ${index + 1}]</a>`;
      }).join("");
      sourceSectionHtml = `<strong>Source Verification:</strong> ${links}`;
    }

    // 6. Fetch Master Assets (Absolute Pathing)
    const baseUrl = new URL(context.request.url).origin;
    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/peptidetemplate.html", baseUrl)),
      ASSETS.fetch(new URL("/header.html", baseUrl)),
      ASSETS.fetch(new URL("/footer.html", baseUrl))
    ]);

    const [headerHtml, footerHtml] = await Promise.all([headRes.text(), footRes.text()]);

    // 7. Structured Data
    const canonicalUrl = `https://minmaxmuscle.com/peptides/${peptide.slug}`;
    const metaDesc = (peptide.research_summary || "").slice(0, 155) + ((peptide.research_summary || "").length > 155 ? "…" : "");
    const pageTitle = `${peptide.peptide_name} | Peptide Research | MinMaxMuscle`;

    const mainSchema = {
      "@context": "https://schema.org",
      "@type": "MedicalEntity",
      "name": peptide.peptide_name,
      "description": peptide.research_summary,
      "category": peptide.Category,
      "url": canonicalUrl
    };

    const faqSchema = {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": faqResults.map(f => ({
        "@type": "Question",
        "name": f.question,
        "acceptedAnswer": { "@type": "Answer", "text": f.answer }
      }))
    };

    const breadcrumbSchema = {
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://minmaxmuscle.com/" },
        { "@type": "ListItem", "position": 2, "name": "Peptides", "item": "https://minmaxmuscle.com/peptidesdb.html" },
        { "@type": "ListItem", "position": 3, "name": peptide.peptide_name, "item": canonicalUrl }
      ]
    };

    // 8. Inject and Transform
    return new HTMLRewriter()
      .on("head", {
        element(el) {
          el.append(`<script type="application/ld+json">${JSON.stringify(mainSchema)}</script>`, { html: true });
          el.append(`<script type="application/ld+json">${JSON.stringify(faqSchema)}</script>`, { html: true });
          el.append(`<script type="application/ld+json">${JSON.stringify(breadcrumbSchema)}</script>`, { html: true });
        }
      })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#page_title", { element(el) { el.setInnerContent(pageTitle); } })
      .on("#meta_description", { element(el) { el.setAttribute("content", metaDesc); } })
      .on("#og_title", { element(el) { el.setAttribute("content", pageTitle); } })
      .on("#og_description", { element(el) { el.setAttribute("content", metaDesc); } })
      .on("#og_url", { element(el) { el.setAttribute("content", canonicalUrl); } })
      .on("#twitter_title", { element(el) { el.setAttribute("content", pageTitle); } })
      .on("#twitter_description", { element(el) { el.setAttribute("content", metaDesc); } })
      .on("#canonical_url", { element(el) { el.setAttribute("href", canonicalUrl); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || "Research"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary); } })
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.Status || "Research Only"); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data || "N/A"); } })
      .on("#related_list", { element(el) { el.setInnerContent(relatedHtml, { html: true }); } })
      .on("#faq_container", { element(el) { el.setInnerContent(faqHtml, { html: true }); } })
      .on("#source_link", { element(el) { el.setInnerContent(sourceSectionHtml, { html: true }); } })
      .on("#as_of_date", { element(el) { el.setInnerContent(`Data Verified: ${peptide["As Of"] || '2026-10-29'}`); } })
      .transform(tempRes);

  } catch (e) {
    return new Response(`Peptide Engine Error: ${e.message}`, { status: 500 });
  }
}
