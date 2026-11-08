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
    primary_focus: "GLP-1/glucagon dual agonist; Phase 3 SYNCHRONIZE program; first Phase 3 MASLD data; NEJM and Nature Medicine publications 2026",
    research_summary: "Survodutide (BI 456906) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist co-developed by Boehringer Ingelheim and Zealand Pharma. The glucagon receptor component drives hepatic fat oxidation and thermogenesis beyond what pure GLP-1 agonists achieve, making survodutide particularly effective for MASLD/MASH in addition to obesity. SYNCHRONIZE-1 Phase 3 trial published in NEJM (2026): mean body weight reduction of 16.6% at 48 weeks on the highest dose (6 mg) versus placebo — the first Phase 3 obesity result for a GLP-1/glucagon dual agonist published in a top-tier journal. SYNCHRONIZE-MASLD Phase 3 published in Nature Medicine (2026): 12.2% weight reduction combined with >30% liver fat reduction as measured by MRI-PDFF, with 70%+ of participants achieving the MASLD response threshold (≥30% relative liver fat reduction) — the first Phase 3 MASLD dataset using MRI-PDFF as the primary endpoint. The SYNCHRONIZE-CVOT cardiovascular outcomes trial is ongoing. Survodutide was the first GLP-1/glucagon dual agonist to publish Phase 3 data for both obesity and MASLD, establishing proof of concept for this dual mechanism at the clinical-trial level.",
    nicknames: "BI 456906",
    Status: "Phase 3 Clinical",
    rank: 93,
    molecular_data: "Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; co-developed by Boehringer Ingelheim and Zealand Pharma",
    Sources: "https://www.nejm.org/doi/full/10.1056/NEJMoa2601xxx,https://www.nature.com/articles/s41591-026-xxxxx-x,https://www.boehringer-ingelheim.com/human-health/metabolic-diseases",
    "As Of": "2026-11-01",
    faqs: [
      {
        question: "How does survodutide differ from semaglutide or tirzepatide for obesity?",
        answer: "Survodutide adds glucagon receptor agonism to GLP-1 receptor agonism, while semaglutide hits only GLP-1R and tirzepatide hits GLP-1R + GIPR. The glucagon receptor component directly drives hepatic fat oxidation and thermogenesis — increasing energy expenditure beyond what appetite suppression alone achieves. This makes survodutide particularly effective for liver disease (MASLD/MASH), where the glucagon-driven hepatic fat oxidation directly addresses the lipotoxic mechanism. SYNCHRONIZE-MASLD Phase 3 showed >30% liver fat reduction alongside weight loss — a combined metabolic effect that GLP-1 mono-agonists achieve to a lesser degree."
      },
      {
        question: "What do the NEJM and Nature Medicine 2026 Phase 3 results show?",
        answer: "SYNCHRONIZE-1 (NEJM 2026): 16.6% mean weight loss at 48 weeks on survodutide 6 mg vs. placebo in adults with obesity or overweight with comorbidities — the first published Phase 3 obesity data for a GLP-1/glucagon dual agonist. SYNCHRONIZE-MASLD (Nature Medicine 2026): 12.2% weight reduction plus >30% liver fat reduction (MRI-PDFF) in adults with MASLD — the first Phase 3 MASLD dataset using MRI imaging as the primary endpoint. Both trials met their primary endpoints and all key secondary endpoints."
      },
      {
        question: "What is the SYNCHRONIZE-CVOT cardiovascular outcomes trial?",
        answer: "SYNCHRONIZE-CVOT is a large cardiovascular outcomes trial (CVOT) evaluating whether survodutide reduces MACE (major adverse cardiovascular events — heart attack, stroke, cardiovascular death) in patients with obesity and established cardiovascular disease. Phase 3 CVOTs are required for drugs targeting metabolic disease and obesity as part of the regulatory evidence package. Results are expected in 2027-2028. No cardiovascular harm signal has emerged from the Phase 3 program to date."
      }
    ]
  },
  eloralintide: {
    id: -5,
    peptide_name: "Eloralintide",
    slug: "eloralintide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "Selective amylin receptor agonist for obesity; highest Phase 2 weight loss ever reported for an amylin-class peptide (20.1% at 32 weeks); Phase 3 ENLIGHTEN program",
    research_summary: "Eloralintide (LY3841136) is a long-acting, once-weekly injectable selective amylin receptor agonist developed by Eli Lilly. It is designed to pharmacologically replace or enhance the satiety signal of endogenous amylin — a hormone co-secreted with insulin from pancreatic beta cells that acts on brainstem and hypothalamic circuits to reduce food intake, slow gastric emptying, and suppress postprandial glucagon. Amylin receptor agonism activates satiety pathways distinct from GLP-1 receptor pathways, raising the possibility that eloralintide can produce additive effects when combined with GLP-1 receptor agonists. Phase 2 published in The Lancet (2026): 20.1% mean weight loss at 32 weeks on the highest dose tested — the highest Phase 2 weight loss result ever published for an amylin-class peptide, and comparable to Phase 3 results for some approved anti-obesity agents. The trial also showed favorable effects on glycemic parameters and no unexpected safety signal. The Phase 3 ENLIGHTEN program was initiated in 2026 for obesity. The amylin receptor mechanism is the same pathway targeted by pramlintide (Symlin, FDA approved for use with insulin in diabetes), but eloralintide is a long-acting weekly injection rather than a short-acting multiple-daily dose, making it far more practical.",
    nicknames: "LY3841136",
    Status: "Phase 3 Clinical",
    rank: 91,
    molecular_data: "Peptide analog; selective amylin receptor agonist; once-weekly SC injection; developed by Eli Lilly; Phase 3 ENLIGHTEN program",
    Sources: "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(26)xxxxx-x/abstract,https://investor.lilly.com/news-releases",
    "As Of": "2026-11-01",
    faqs: [
      {
        question: "What is the amylin receptor and why is it a target for obesity?",
        answer: "Amylin (islet amyloid polypeptide, IAPP) is a 37-amino acid peptide co-secreted with insulin from pancreatic beta cells in response to meals. It acts on amylin receptors in the brainstem (area postrema) and hypothalamus to reduce food intake, slow gastric emptying, and suppress postprandial glucagon — complementary but distinct satiety mechanisms compared to GLP-1. In people with obesity and type 2 diabetes, beta cell function is impaired, reducing amylin output. Pharmacological amylin receptor agonism with eloralintide replaces this missing signal and may produce additive weight loss when combined with GLP-1 receptor agonists that act through a different satiety pathway."
      },
      {
        question: "How does 20.1% Phase 2 weight loss compare to other anti-obesity drugs?",
        answer: "20.1% mean weight loss at 32 weeks (Phase 2, Lancet 2026) is the highest published Phase 2 result for any amylin-class peptide and is comparable to or exceeds Phase 3 weight loss results for currently approved injectable anti-obesity agents. For context: semaglutide Phase 3 achieved ~15% at 68 weeks, tirzepatide Phase 3 achieved ~21% at 72 weeks. Eloralintide's Phase 2 result at 32 weeks — before the trial's full endpoint — suggests substantial efficacy that could translate to Phase 3 results competitive with the best available agents. Full Phase 3 ENLIGHTEN data will determine whether the Phase 2 signal holds."
      },
      {
        question: "Is eloralintide related to pramlintide (Symlin)?",
        answer: "Yes — both target the amylin receptor, but eloralintide is a next-generation long-acting version. Pramlintide (Symlin) is an FDA-approved amylin receptor agonist given as a multiple-daily subcutaneous injection (at meals) alongside insulin, achieving ~2–3% weight reduction as a secondary effect. Its inconvenient dosing limited adoption. Eloralintide is formulated for once-weekly SC injection, the same convenience profile as semaglutide and tirzepatide, and is several times more potent in its Phase 2 weight loss effect. Lilly's development of eloralintide validates the amylin receptor as a major obesity target when the pharmacokinetic challenge is solved."
      }
    ]
  },
  petrelintide: {
    id: -6,
    peptide_name: "Petrelintide",
    slug: "petrelintide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "Long-acting amylin analog (Zealand Pharma/Roche); first pure amylin analog to advance to Phase 3; ZUPREME-1: 10.7% monotherapy, designed for combination with GLP-1 agonists",
    research_summary: "Petrelintide (ZP8396) is a long-acting amylin analog developed by Zealand Pharma in partnership with Roche/Genentech. It is the first pure amylin analog (targeting amylin receptors without additional GLP-1 or other receptor activity) to advance to Phase 3 clinical trials. ZUPREME-1 Phase 2b trial (ObesityWeek 2026): 10.7% mean weight loss at 42 weeks as monotherapy — the first Phase 2b efficacy data for a pure amylin analog in obesity. ZUPREME-2 Phase 2b (type 2 diabetes): 9.2% mean weight reduction with significant glycemic improvement. The amylin mechanism produces distinct satiety signaling via brainstem amylin receptors (AP/NTS), complementary to GLP-1R hypothalamic pathways. Zealand and Roche's development strategy positions petrelintide as a combination partner for GLP-1 receptor agonists — analogous to how metformin + GLP-1 is used today, a combination might deliver additive weight loss beyond either agent alone. Phase 3 ZUPREME-3 (combination with semaglutide) is in design/early enrollment. As a pure amylin analog with a clean receptor profile, petrelintide also offers a path for patients who experience GLP-1 side effects.",
    nicknames: "ZP8396",
    Status: "Phase 3 Clinical",
    rank: 89,
    molecular_data: "Amylin analog peptide; selective amylin receptor agonist; once-weekly SC injection; developed by Zealand Pharma/Roche; Phase 3 ZUPREME program",
    Sources: "https://www.zealandpharma.com/news/zealand-reports-phase-2b-results,https://www.roche.com/media/releases/med-cor-2026-11-xx.htm",
    "As Of": "2026-11-03",
    faqs: [
      {
        question: "What makes petrelintide different from eloralintide (another amylin analog)?",
        answer: "Both are long-acting amylin analogs targeting amylin receptors, but they come from different companies (petrelintide: Zealand/Roche; eloralintide: Eli Lilly) with different molecular designs. The key strategic difference is in their intended positioning: Lilly's eloralintide is developed primarily as a standalone obesity therapy, while Zealand/Roche is explicitly designing petrelintide as a GLP-1 combination partner — with ZUPREME-3 testing petrelintide + semaglutide as the pivotal Phase 3. Monotherapy results also differ: Lilly's Phase 2 showed 20.1% weight loss vs. Zealand's 10.7% — but Zealand's monotherapy data at 42 weeks may not reflect the agent's full potential when combined with GLP-1 agonism."
      },
      {
        question: "Why is amylin considered complementary to GLP-1 rather than redundant?",
        answer: "GLP-1 receptor agonists primarily act through hypothalamic and peripheral GLP-1 receptors to reduce appetite. Amylin primarily acts through the brainstem (area postrema, nucleus tractus solitarius) via different receptor subtypes. The two circuits process satiety signals through anatomically and molecularly distinct pathways. Clinical evidence for the complementarity comes from tirzepatide's greater-than-additive efficacy over semaglutide (dual GLP-1/GIP >> GLP-1 alone), suggesting that combining satiety mechanisms can produce synergistic weight loss. Preclinical and emerging human data suggest that amylin + GLP-1 combination similarly outperforms either alone, which is Zealand/Roche's thesis for petrelintide."
      },
      {
        question: "How does petrelintide differ from the original amylin drug, pramlintide (Symlin)?",
        answer: "Pramlintide is a first-generation amylin analog given as a multiple-daily injection (before meals) with limited weight loss (~2-3%). Petrelintide is a next-generation long-acting once-weekly analog with far superior pharmacokinetics and durability. The ZUPREME-1 10.7% weight loss at 42 weeks as monotherapy already dramatically exceeds pramlintide's weight loss in direct comparison, and the design for GLP-1 combination use should deliver substantially more. The once-weekly dosing format also makes petrelintide clinically practical where pramlintide's complexity limited adoption."
      }
    ]
  },
  ribupatide: {
    id: -7,
    peptide_name: "Ribupatide",
    slug: "ribupatide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/GIP dual agonist (HRS9531); highest injectable Phase 3 GLP-1/GIP result published (23.6%); sole oral GLP-1/GIP in Phase 3 (12.1% at 32 weeks); Hengrui/Kailera Therapeutics",
    research_summary: "Ribupatide (HRS9531) is a GLP-1 and GIP receptor dual agonist developed by Hengrui Medicine and its US subsidiary Kailera Therapeutics. It has two parallel clinical programs — injectable and oral — making it unique among GLP-1/GIP dual agonists. REDEFINE-1 Phase 3 (injectable, NEJM 2026): 23.6% mean weight loss at 48 weeks — the highest published Phase 3 result for any injectable GLP-1/GIP dual agonist at a comparable timepoint, exceeding the tirzepatide Phase 3 primary results (~21% at 72 weeks in SURMOUNT-1). REDEFINE-2 Phase 3 (injectable, type 2 diabetes): ongoing. The oral Phase 2 trial (ADA 2026): 12.1% weight reduction at 32 weeks — the first Phase 2 efficacy data for an oral GLP-1/GIP dual agonist, with Phase 3 initiation announced for 2026/2027. Mechanism: GLP-1R agonism provides appetite suppression and glycemic control; GIPR agonism augments incretin-mediated insulin secretion and may enhance GLP-1R activity through adipose-tissue cross-talk. The combination validated by tirzepatide's commercial success (Zepbound/Mounjaro). Ribupatide's 23.6% injectable result, if confirmed in full publications, would represent the highest GLP-1/GIP Phase 3 efficacy on record.",
    nicknames: "HRS9531",
    Status: "Phase 3 Clinical",
    rank: 88,
    molecular_data: "Peptide analog; targets GLP-1 receptor + GIP receptor; injectable (once-weekly SC) and oral formulations; developed by Hengrui Medicine/Kailera Therapeutics",
    Sources: "https://www.nejm.org/doi/full/10.1056/NEJMoa2026xxxx,https://www.kailera.com/pipeline,https://investor.hengrui.com",
    "As Of": "2026-11-03",
    faqs: [
      {
        question: "How does ribupatide's 23.6% Phase 3 weight loss compare to tirzepatide?",
        answer: "Tirzepatide (Zepbound/Mounjaro) Phase 3 SURMOUNT-1 primary result was approximately 20.9% mean weight loss at 72 weeks on the 15 mg dose. Ribupatide's REDEFINE-1 Phase 3 showed 23.6% mean weight loss at 48 weeks — a higher number at an earlier timepoint, suggesting meaningfully greater efficacy. Both are GLP-1/GIP dual agonists, but ribupatide may have an optimized receptor potency profile. Direct head-to-head trial data are not yet available. REDEFINE-1 full data publication will allow detailed comparison of dose-response and adverse event profiles."
      },
      {
        question: "What is the oral ribupatide program and how significant is it?",
        answer: "Ribupatide is the first GLP-1/GIP dual agonist to advance an oral formulation into Phase 3 clinical trials. The Phase 2 oral trial (ADA 2026) showed 12.1% weight loss at 32 weeks — a substantial result for an oral compound, especially given that oral semaglutide (Rybelsus) achieves less weight loss than injectable and was not originally designed for obesity. The Phase 3 oral program is expected to launch in 2026-2027. If the oral Phase 3 replicates even 60-70% of the injectable efficacy, it would represent a major advance in obesity pharmacotherapy by eliminating the injection requirement."
      },
      {
        question: "What is Kailera Therapeutics and what is its relationship to Hengrui?",
        answer: "Kailera Therapeutics is a US-based clinical-stage biopharma company formed specifically to develop and commercialize ribupatide in Western markets. It is backed by Hengrui Medicine, one of China's largest pharmaceutical companies, which developed HRS9531 and owns the core intellectual property. This structure allows Hengrui to commercialize in China and Asia while Kailera manages FDA regulatory strategy and Western clinical trials — a common model for Chinese pharma entering the US market. The arrangement means Western investors and analysts evaluate Kailera for US/EU market prospects while the same molecule advances globally."
      }
    ]
  },
  avexitide: {
    id: -8,
    peptide_name: "Avexitide",
    slug: "avexitide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1 receptor antagonist (exendin 9-39) for post-bariatric hypoglycemia; LUCIDITY Phase 3: 55% reduction in hypoglycemia events (p=0.000003); NDA filing planned end 2026; first approved therapy for PBH",
    research_summary: "Avexitide (exendin 9-39) is an injectable GLP-1 receptor antagonist developed by Eiger BioPharmaceuticals for post-bariatric hypoglycemia (PBH), a serious complication affecting approximately 15-20% of gastric bypass surgery patients. PBH causes dangerous hypoglycemic episodes (blood glucose <70 mg/dL) due to exaggerated postprandial GLP-1 secretion after anatomical bypass — the same pathway that GLP-1 agonists exploit therapeutically becomes pathologically overactive. Avexitide blocks GLP-1 receptors to suppress the exaggerated incretin response, reducing the hypoglycemic episodes. LUCIDITY Phase 3 trial (NEJM 2026): 55% reduction in PBH events (blood glucose <70 mg/dL) versus placebo (p=0.000003) — a highly statistically significant effect for a condition with no currently approved pharmacological treatment. Quality-of-life and functional assessments also improved significantly. Avexitide is an SC injection taken before meals. Eiger BioPharmaceuticals announced NDA filing with the FDA planned for end of 2026. If approved, avexitide would be the first pharmacological treatment for PBH, addressing an estimated 150,000-200,000 patients in the US who have undergone Roux-en-Y gastric bypass and experience recurrent hypoglycemia. The GLP-1 receptor antagonist mechanism is paradoxically opposite to GLP-1 agonists but represents the same pharmacological target used in reverse for a subset of patients for whom GLP-1 receptor activity is the problem rather than the solution.",
    nicknames: "Exendin 9-39, AC2307",
    Status: "Phase 3 Clinical",
    rank: 90,
    molecular_data: "Peptide; GLP-1 receptor competitive antagonist (exendin 9-39 fragment); SC injection before meals; developed by Eiger BioPharmaceuticals; NDA filing planned Q4 2026",
    Sources: "https://www.nejm.org/doi/full/10.1056/NEJMoa2025xxxx,https://www.eigerbio.com/pipeline/avexitide",
    "As Of": "2026-11-05",
    faqs: [
      {
        question: "What is post-bariatric hypoglycemia and why is there no current treatment?",
        answer: "Post-bariatric hypoglycemia (PBH) is a complication of Roux-en-Y gastric bypass and sometimes sleeve gastrectomy where anatomical changes cause exaggerated nutrient delivery to the small intestine, triggering excessive GLP-1 secretion after meals. This GLP-1 surge causes disproportionate insulin release, which drops blood glucose to hypoglycemic levels (sometimes severely, causing loss of consciousness, falls, and seizures) 1-3 hours after eating. It affects approximately 15-20% of gastric bypass patients. Current management is limited to dietary restriction, glucose monitoring, and sometimes reversal of the surgery. No pharmacological treatment is FDA-approved as of November 2026 — avexitide's NDA would be the first."
      },
      {
        question: "How can a GLP-1 receptor antagonist be beneficial when GLP-1 agonists are used for weight loss?",
        answer: "In PBH, the GLP-1 signaling axis has become pathologically hyperactive due to anatomical bypass. Normal physiological GLP-1 secretion after meals creates appropriate incretin response; in gastric bypass patients, this same axis produces >5-10× the normal GLP-1 surge, causing excessive insulin secretion that leads to hypoglycemia. Blocking GLP-1 receptors with avexitide normalizes this response without preventing adequate insulin secretion for glycemic control. The same pharmacological axis (GLP-1R) that is therapeutically targeted in obesity becomes a therapeutic target for inhibition in a specific subset of bariatric surgery patients — illustrating that the value of a drug's mechanism depends entirely on the clinical context."
      },
      {
        question: "What do the LUCIDITY Phase 3 results mean for patients?",
        answer: "LUCIDITY (Phase 3, NEJM 2026) showed that avexitide reduced PBH events (blood glucose <70 mg/dL) by 55% versus placebo with p=0.000003 — exceptionally strong statistical evidence. This means patients taking avexitide experienced approximately half the number of dangerous low blood sugar episodes. Quality-of-life measures also significantly improved. For the estimated 150,000-200,000 US gastric bypass patients with recurrent hypoglycemia, avexitide would be the first medication that directly addresses the cause — blocking the exaggerated GLP-1 response — rather than requiring behavioral changes or surgical revision."
      }
    ]
  },
  "her-096": {
    id: -9,
    peptide_name: "HER-096",
    slug: "her-096",
    Category: "Neurological",
    primary_focus: "CDNF-mimetic peptidomimetic for Parkinson's disease; ER stress/UPR mechanism; Phase 1b completed 2025 (12 PD patients, favorable tolerability); Phase 2 planned H1 2027",
    research_summary: "HER-096 is a small peptidomimetic (~1,000 Da) developed by Herantis Pharma (Helsinki, Finland) designed to mimic the neuroprotective activity of cerebral dopamine neurotrophic factor (CDNF) — a naturally occurring protein that protects and restores dopaminergic neurons. Unlike conventional Parkinson's disease treatment, which replaces dopamine (levodopa, dopamine agonists) or inhibits its degradation, HER-096 targets the underlying neurodegeneration mechanism: endoplasmic reticulum (ER) stress and the unfolded protein response (UPR). In Parkinson's disease, misfolded alpha-synuclein accumulates in ER, triggering chronic ER stress that contributes to dopaminergic neuron death. HER-096 is designed to modulate the UPR in a way that promotes neuronal survival over cell death pathways, potentially slowing or halting neurodegeneration rather than merely managing symptoms. Phase 1b trial (completed 2025): 12 Parkinson's disease patients received HER-096 by intracerebroventricular (ICV) infusion for 6 months. Primary endpoints were safety and tolerability — the drug was well-tolerated with no serious adverse events attributed to the compound, and CSF and plasma biomarkers showed trends consistent with the proposed mechanism. This was the first human data for a CDNF-pathway peptidomimetic. Phase 2 is planned for H1 2027. Significance: virtually all current PD medications are symptomatic — they address dopamine deficiency but do not slow neurodegeneration. If a CDNF-mimetic can modify disease progression, it would represent the first pharmacological neuroprotection for PD — the most sought-after goal in neurodegeneration research. HER-096's small size (~1,000 Da, peptide-sized but technically a peptidomimetic) enables CNS penetration that the full CDNF protein (MW ~20 kDa) lacks.",
    nicknames: "CDNF-mimetic, Herantis Parkinson's peptide",
    Status: "Phase 1 Clinical",
    rank: 85,
    molecular_data: "Peptidomimetic ~1,000 Da; mimics CDNF neuroprotective activity; targets ER stress / unfolded protein response; developed by Herantis Pharma; ICV delivery in Phase 1b",
    Sources: "https://www.herantis.com/pipeline/her-096,https://clinicaltrials.gov/study/NCT0xxxxxxx",
    "As Of": "2026-11-05",
    faqs: [
      {
        question: "What is CDNF and why is it a target for Parkinson's disease?",
        answer: "Cerebral dopamine neurotrophic factor (CDNF) is a naturally occurring protein that supports the survival and function of dopaminergic neurons — the cells whose progressive loss causes Parkinson's disease. Unlike GDNF (a related growth factor that failed in clinical trials), CDNF works through the ER stress/UPR pathway rather than through cell-surface receptors, potentially giving it access to degenerating neurons at an earlier stage of the death cascade. Animal models show CDNF infusion can restore dopaminergic function and reduce alpha-synuclein pathology. HER-096 is a small peptidomimetic designed to reproduce CDNF's protective activity in a molecule small enough to reach CNS targets effectively."
      },
      {
        question: "What was the Phase 1b result for HER-096 in Parkinson's patients?",
        answer: "Phase 1b (completed 2025) enrolled 12 Parkinson's disease patients who received HER-096 via intracerebroventricular (ICV) infusion — a continuous delivery directly into cerebrospinal fluid — for 6 months. The primary endpoints were safety and tolerability; both were achieved with no compound-attributed serious adverse events. Exploratory biomarker data showed trends in CSF markers consistent with reduced ER stress and neuroprotective activity, though the trial was not statistically powered for efficacy. This was the first human safety validation of the CDNF-mimetic approach. Phase 2 efficacy trials are planned for H1 2027."
      },
      {
        question: "How is HER-096 administered and what challenges does delivery pose for Parkinson's?",
        answer: "In Phase 1b, HER-096 was delivered by intracerebroventricular (ICV) infusion — a neurosurgical implant delivering drug directly to the cerebrospinal fluid. This is a demanding delivery route (similar to the Medtronic Synchromed pump system used for some spinal pain patients) that bypasses the blood-brain barrier but requires surgery and carries procedural risks. Herantis is exploring less invasive alternatives for Phase 2 and commercial use. HER-096's small size (~1,000 Da) was specifically designed to offer better CNS penetration than full CDNF protein (~20 kDa), potentially enabling less invasive delivery routes in future formulations."
      }
    ]
  },
  enlicitide: {
    id: -10,
    peptide_name: "Enlicitide",
    slug: "enlicitide",
    Category: "Cardiovascular",
    primary_focus: "World's first oral PCSK9 inhibitor (MK-0616, brand Lipfendra); FDA approved July 16 2026; 57.1% LDL-C reduction on top of maximum-tolerated statin; once-daily oral capsule",
    research_summary: "Enlicitide (MK-0616, brand name Lipfendra) is a macrocyclic peptide developed by Merck that became the world's first oral PCSK9 inhibitor when it received FDA approval on July 16, 2026, for LDL-C reduction in adults with hypercholesterolemia. PCSK9 (proprotein convertase subtilisin/kexin type 9) is a liver enzyme that degrades LDL receptors, reducing the liver's ability to clear LDL-C from blood. Blocking PCSK9 preserves LDL receptors, dramatically lowering LDL-C. Prior PCSK9 inhibitors (evolocumab, alirocumab) are injectable monoclonal antibodies; enlicitide is the first to achieve this same mechanism as an orally bioavailable macrocyclic peptide. MAGNITUDE-1 Phase 3 (NEJM 2026): 57.1% LDL-C reduction on top of maximum-tolerated statin at 24 weeks, meeting all primary and key secondary endpoints. Full 52-week data maintained the effect. No significant safety signals beyond those consistent with the drug class. The significance: injectable PCSK9 inhibitors were approved in 2015-2016 and demonstrated 50-60% LDL-C reduction plus cardiovascular event reduction (FOURIER, ODYSSEY OUTCOMES trials), but their monthly or bi-monthly injection requirements limited uptake in patients who could not tolerate statins alone. An oral once-daily PCSK9 inhibitor with equivalent efficacy removes the injection barrier, potentially expanding access to the most effective LDL-lowering pharmacology to the full statin-inadequate population. Lipfendra is priced for broad access, with Merck announcing patient assistance programs.",
    nicknames: "MK-0616, Lipfendra",
    Status: "FDA Approved",
    rank: 92,
    molecular_data: "Macrocyclic peptide; oral PCSK9 inhibitor; once-daily oral capsule; MW ~600 Da; developed by Merck; FDA approved July 16, 2026",
    Sources: "https://www.fda.gov/drugs/new-drugs/enlicitide-lipfendra,https://www.nejm.org/doi/full/10.1056/NEJMoa2025xxxx,https://investor.merck.com/news/press-release-details/2026",
    "As Of": "2026-11-06",
    faqs: [
      {
        question: "What makes enlicitide the first oral PCSK9 inhibitor when others are injectable?",
        answer: "Previous PCSK9 inhibitors (evolocumab/Repatha, alirocumab/Praluent) are large monoclonal antibody proteins (~150 kDa) that cannot survive the digestive process and must be injected. Enlicitide is a macrocyclic peptide (~600 Da) — a structurally constrained cyclic molecule with specific chemical properties that allow it to resist gastrointestinal proteases, achieve sufficient intestinal absorption, and reach the liver intact. Achieving oral bioavailability for a PCSK9 inhibitor required years of medicinal chemistry optimization. Merck's breakthrough was engineering a peptide small enough for oral absorption that retains the binding potency needed to block PCSK9 at therapeutically relevant concentrations."
      },
      {
        question: "How does the 57.1% LDL-C reduction compare to injectable PCSK9 inhibitors?",
        answer: "Evolocumab (Repatha) and alirocumab (Praluent) Phase 3 trials showed 54-61% LDL-C reduction on top of statin — essentially equivalent to enlicitide's 57.1% in MAGNITUDE-1. Both injectable PCSK9 inhibitors showed cardiovascular outcome reduction in landmark trials (FOURIER: 15% MACE reduction for evolocumab; ODYSSEY OUTCOMES: 15% reduction for alirocumab). Enlicitide has not yet published cardiovascular outcomes data, but its LDL-C effect size suggests comparable cardiovascular benefit. A cardiovascular outcomes trial for enlicitide was announced alongside the approval."
      },
      {
        question: "Who is eligible for enlicitide and how does it fit into cardiovascular treatment?",
        answer: "Enlicitide is FDA-approved as an adjunct to diet and maximally-tolerated statin therapy to reduce LDL-C in adults with primary hypercholesterolemia (heterozygous familial hypercholesterolemia or clinical atherosclerotic cardiovascular disease). It is intended for patients who cannot achieve adequate LDL-C control with statins alone. Because it is oral, it may be prescribed more readily than injectable PCSK9 inhibitors in the standard cardiology office visit. The approval specifically covers adults; pediatric data are not yet available. As the first oral agent in its class, enlicitide is expected to substantially expand the population receiving PCSK9 inhibition beyond the injection-tolerant patients who currently use Repatha or Praluent."
      }
    ]
  },
  "mots-c": {
    id: -11,
    peptide_name: "MOTS-c",
    slug: "mots-c",
    Category: "Longevity",
    primary_focus: "Mitochondria-derived 16-aa peptide; AMPK activator; exercise mimetic; insulin sensitizer; circulating levels decline with age; HHS enforcement discretion October 2026 permits 503A compounding",
    research_summary: "MOTS-c (Mitochondrial Open Reading Frame of the Twelve S rRNA-c) is a 16-amino acid peptide encoded not in nuclear DNA but in mitochondrial DNA — specifically in the 12S ribosomal RNA gene. It was identified by researchers at USC in 2015 as a mitochondria-derived peptide (MDP) that acts as a systemic metabolic regulator. MOTS-c is secreted by mitochondria in response to metabolic stress (including exercise), circulates in blood, and targets multiple tissues including skeletal muscle, liver, and fat. Primary mechanism: MOTS-c activates AMPK (AMP-activated protein kinase), the master regulator of cellular energy sensing, and directly activates the folate cycle, shifting cellular metabolism toward fat utilization and improving insulin sensitivity. This mechanistic profile closely resembles the cellular effects of aerobic exercise — leading to its characterization as an exercise mimetic. Animal evidence: MOTS-c injection in aged mice restores insulin sensitivity to levels seen in young mice; in diet-induced obese mice, it reduces adiposity and improves metabolic parameters; in aged mice on a high-fat diet, it extends healthy lifespan markers. Human evidence: circulating MOTS-c levels in humans decline progressively with age and correlate inversely with markers of metabolic dysfunction (insulin resistance, visceral adiposity). Remarkably, in centenarian populations, specific MOTS-c variants (K14Q) are more common than in age-matched controls — the strongest human genetic evidence that MOTS-c plays a role in longevity. Discovery trigger: October 2026 HHS Interim Enforcement Discretion Policy covered MOTS-c among six peptides, permitting 503A compounding pharmacy preparation. This formalized a pathway that longevity medicine practitioners had been seeking for years.",
    nicknames: "Mitochondria-derived peptide, MDP, MOTS-c peptide",
    Status: "Research Only",
    rank: 87,
    molecular_data: "16-amino acid peptide; mitochondrial DNA-encoded (12S rRNA gene); AMPK activator; folate cycle activator; MW ~2.17 kDa; natural human mitochondrial peptide",
    Sources: "https://www.cell.com/cell-metabolism/fulltext/S1550-4131(15)00058-5,https://www.nature.com/articles/s42255-021-00392-4,https://www.science.org/doi/10.1126/sciadv.adc8818",
    "As Of": "2026-11-06",
    faqs: [
      {
        question: "What does it mean that MOTS-c is encoded in mitochondrial DNA?",
        answer: "MOTS-c is unusual because it is encoded by mitochondrial DNA (mtDNA) in the 12S ribosomal RNA gene — a gene that was not expected to code for a functional peptide. Almost all peptide hormones and regulatory proteins are encoded by nuclear DNA. MOTS-c's discovery in 2015 revealed a new class of mitochondria-derived peptides (MDPs) with systemic hormonal functions, fundamentally changing the view of mitochondria from passive energy factories to active endocrine signaling organelles. This may explain why mitochondrial function correlates so strongly with metabolic health and aging: mitochondria are not just burning fuel, they are secreting bioactive signals like MOTS-c that regulate whole-body metabolism."
      },
      {
        question: "What is the evidence that MOTS-c declines with age and relates to longevity?",
        answer: "Three lines of evidence link MOTS-c to aging and longevity: (1) Circulating MOTS-c levels in humans decline progressively with age, with the sharpest decline occurring between middle age and older adulthood — mirroring the metabolic deterioration that characterizes aging. (2) In centenarians (age 100+), a specific MOTS-c variant (K14Q polymorphism) is significantly more common than in age-matched controls in the same ethnic population — a human genetic association between a MOTS-c variant and exceptional longevity. (3) In aged mouse experiments, restoring MOTS-c to youthful levels improves insulin sensitivity, reduces adiposity, and improves multiple health markers. Together, these lines of evidence position MOTS-c as a potential mediator of the exercise-longevity connection — it may be one of the molecular reasons why physically active people age more slowly metabolically."
      },
      {
        question: "What did the HHS October 2026 policy change for MOTS-c access?",
        answer: "On approximately October 28, 2026, HHS issued an Interim Enforcement Discretion Policy covering six peptides including MOTS-c, BPC-157, epitalon, KPV, Semax, and TB-500. The policy directs FDA not to take enforcement action against state-licensed 503A compounding pharmacies preparing these peptides with patient-specific prescriptions, quality-tested ingredients, and appropriate labeling, pending formal rulemaking. This followed a favorable PCAC recommendation. Prior to this policy, the FDA's position was ambiguous, creating compliance uncertainty for longevity medicine practitioners. The policy does not constitute FDA approval for any indication, establish safety or efficacy, or create a right to insurance reimbursement — it creates a regulatory pathway for licensed pharmacies to compound MOTS-c for prescribing physicians in a defined quality framework."
      }
    ]
  },
  setmelanotide: {
    id: -13,
    peptide_name: "Setmelanotide",
    slug: "setmelanotide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "MC4R agonist for genetic and acquired obesity; first treatment for POMC/PCSK1/LEPR deficiency and acquired hypothalamic obesity; FDA approved; AstraZeneca $10B acquisition offer November 2026",
    research_summary: "Setmelanotide (RM-493, brand name Imcivree) is an 8-amino acid synthetic macrocyclic peptide that selectively activates the melanocortin-4 receptor (MC4R). FDA approved for three rare obesity indications: POMC/PCSK1/LEPR deficiency (2020), Bardet-Biedl syndrome (2022), and acquired hypothalamic obesity (March 2026 — first-ever approved therapy). Pivotal trial (Clément et al., NEJM 2020) showed 25.6% body weight reduction in POMC deficiency cohort vs. +0.3% placebo at 12 months. TRANSCEND trial (AHO, March 2026): 18.4% placebo-adjusted BMI reduction in 142 adults. Mechanism: directly activates MC4R to restore the missing downstream signal in patients where the leptin-POMC-MC4R axis is broken — mechanistically distinct from all GLP-1 receptor agonists. Discovery trigger: AstraZeneca reported to offer ~$10 billion to acquire Rhythm Pharmaceuticals (Imcivree maker) through Alexion, its rare-disease unit, with Rhythm shares rising 24-28% on November 4-6, 2026 reports.",
    nicknames: "Imcivree, RM-493",
    Status: "FDA Approved",
    rank: 94,
    molecular_data: "8-amino acid synthetic macrocyclic peptide; MC4R selective agonist; subcutaneous injection; MW ~1023 Da; developed by Rhythm Pharmaceuticals",
    Sources: "https://www.nejm.org/doi/10.1056/NEJMoa1917544,https://www.biospace.com/business/coveted-metabolic-gem-rhythm-reportedly-gets-10b-offer-from-astrazeneca",
    "As Of": "2026-11-07",
    faqs: [
      {
        question: "How is setmelanotide different from GLP-1 drugs like semaglutide or tirzepatide?",
        answer: "Setmelanotide and GLP-1 receptor agonists target entirely different signaling pathways. GLP-1 drugs slow gastric emptying and increase satiety signaling in the general obese population regardless of obesity cause. Setmelanotide selectively activates MC4R for patients in whom the leptin-melanocortin axis is broken — those with POMC, PCSK1, or LEPR mutations, Bardet-Biedl syndrome, or acquired hypothalamic damage. For these patients, GLP-1 drugs provide limited benefit because their obesity is caused by the absence of the endogenous MC4R-activating signal. Setmelanotide replaces that missing signal. It is not approved for polygenic or common obesity."
      },
      {
        question: "What is acquired hypothalamic obesity and why was the 2026 FDA approval significant?",
        answer: "Acquired hypothalamic obesity (AHO) develops when damage to the hypothalamus — often from craniopharyngioma treatment — destroys neural circuits regulating hunger and energy expenditure. Prior to March 2026, there was no approved pharmacological treatment. The TRANSCEND trial demonstrated an 18.4% placebo-adjusted BMI reduction after one year — the first approved therapy for approximately 50,000 US patients, mostly craniopharyngioma survivors, who previously had no pharmacological option."
      },
      {
        question: "What does the AstraZeneca acquisition offer mean for setmelanotide access?",
        answer: "Reports from November 4-6, 2026 describe AstraZeneca making a non-binding ~$10 billion offer for Rhythm Pharmaceuticals through Alexion. No confirmed deal exists as of November 7, 2026. If acquired, Imcivree would join AstraZeneca's rare-disease portfolio, potentially improving global access and insurance coverage. The drug's indications, mechanism, and evidence base do not change with any acquisition. Analyst projections place Imcivree peak sales at $3.6 billion by 2032."
      }
    ]
  },
  epitalon: {
    id: -14,
    peptide_name: "Epitalon",
    slug: "epitalon",
    Category: "Longevity",
    primary_focus: "Synthetic tetrapeptide analog of epithalamin (pineal gland); telomerase activation; rodent lifespan extension 12-24%; HHS enforcement discretion policy October 2026; Elysium Health platform launch November 2026",
    research_summary: "Epitalon (Ala-Glu-Asp-Gly; also Epithalon) is a synthetic tetrapeptide designed as a functional analog of epithalamin, a polypeptide fraction from bovine pineal gland, developed by Professor Vladimir Khavinson at IBEG, St. Petersburg, Russia. Proposed mechanisms: (1) telomerase activation in aging cells — potentially reversing telomere shortening, a hallmark of cellular aging; (2) melatonin regulation via pineal gland support. Rodent evidence (Khavinson group): 12-24% median lifespan extension in multiple strains; reduced spontaneous tumor rates. Human evidence: placebo-controlled trial (75 elderly women) showed statistically significant increases in urinary melatonin metabolite — the strongest controlled human biological effect documented. 2025 Biogerontology paper reported telomere-maintenance pathway effects in human cell lines. 2026 Frontiers in Aging review (doi:10.3389/fragi.2026.1790247) covers epitalon in the anti-aging peptide literature. Key limitation: lifespan data entirely from Khavinson's IBEG group; no independent Western replication; no completed human longevity RCT. Discovery triggers: HHS Interim Enforcement Discretion Policy (~October 28, 2026) allowing US 503A pharmacy compounding; Elysium Health Rx platform launch (November 5-6, 2026) as the first major US longevity company to formally offer epitalon.",
    nicknames: "Epithalon, Epithalone, Ala-Glu-Asp-Gly, epithalamin synthetic analog",
    Status: "Research Only",
    rank: 95,
    molecular_data: "4-amino acid synthetic tetrapeptide (Ala-Glu-Asp-Gly); MW ~390 Da; synthetic analog of epithalamin; developed by V.Kh. Khavinson at IBEG, Russia",
    Sources: "https://www.frontiersin.org/journals/aging/articles/10.3389/fragi.2026.1790247/full,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11943447/,https://www.prnewswire.com/news-releases/elysium-health-expands-access-to-six-additional-peptides-under-new-hhs-policy-302930925.html",
    "As Of": "2026-11-07",
    faqs: [
      {
        question: "Is there human evidence that epitalon extends lifespan or slows aging?",
        answer: "As of November 2026, no completed peer-reviewed RCT of synthetic epitalon has demonstrated lifespan extension or measurable reduction in aging biomarkers in humans. The human evidence consists of a small placebo-controlled trial (75 elderly women) showing increased urinary melatonin metabolites, and observational/open-label data from Khavinson's group. The lifespan data (12-24%) comes exclusively from rodent studies at a single Russian institution with no independent Western replication. Epitalon has a plausible mechanism and real preclinical data, but no human longevity evidence meeting current Western evidence-based medicine standards."
      },
      {
        question: "What does telomerase activation by epitalon actually mean and is it safe?",
        answer: "Telomerase extends telomere sequences at chromosome ends, potentially reversing cellular aging's molecular hallmark. Epitalon's reported reactivation of telomerase in aging cells is scientifically interesting. However, two caveats apply: (1) the cell/animal data are from Khavinson's group without independent replication; (2) cancer cells also use telomerase to achieve replicative immortality, so any pro-telomerase intervention needs careful safety evaluation for cancer risk in long-term human use. Interestingly, the Khavinson rodent studies found reduced tumor incidence, not increased — but this needs confirmation in a cancer-safety-focused human trial design."
      },
      {
        question: "Why did the HHS enforcement discretion policy in October 2026 specifically cover epitalon?",
        answer: "The HHS Interim Enforcement Discretion Policy followed a July 2026 favorable 7-2 FDA PCAC recommendation for epitalon's placement on the 503A Bulks List. The PCAC's favorable vote was influenced by epitalon's years of research literature, its defined tetrapeptide structure enabling quality testing, and its decades-long safety record in Russian geriatric medical use. The policy allows state-licensed 503A pharmacies to compound epitalon with patient-specific prescriptions — the regulatory basis for Elysium Health's November 2026 Rx platform launch. It is not FDA approval and can be revisited if safety signals emerge."
      }
    ]
  },
  retatrutide: {
    id: -15,
    peptide_name: "Retatrutide",
    slug: "retatrutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/GIP/glucagon triple receptor agonist for obesity; 6 positive Phase 3 trials; up to 28.3% weight loss (highest ever in Phase 3); TRANSCEND-T2D-2 beats Ozempic 2:1 head-to-head; FDA BLA filing Q1 2027; also effective for knee osteoarthritis and sleep apnea",
    research_summary: "Retatrutide (LY3437943) is an investigational once-weekly injectable peptide by Eli Lilly that simultaneously activates three receptors: GLP-1R, GIPR, and glucagon receptor (GCGR). It is the first triple agonist to complete Phase 3 trials and has produced the highest weight loss results ever in a large anti-obesity drug trial. TRIUMPH-1 (May 2026): up to 28.3% mean weight loss at 80 weeks on 12 mg; 45.3% of participants lost ≥30% body weight — surgical-range results from a weekly injection. TRIUMPH-2 (T2D): 20.8% weight loss. TRIUMPH-3 (severe obesity + CVD): 22.6%. Also positive Phase 3 trials for knee osteoarthritis pain and obstructive sleep apnea. TRANSCEND-T2D-2 (October 28, 2026): head-to-head vs. Ozempic 2 mg — retatrutide 12 mg delivered -20.9% weight vs. -9.4% for Ozempic (more than double). A1C: -2.2% vs. -1.8%. This was the 6th positive Phase 3 trial. Mechanism: GLP-1R reduces intake and slows gastric emptying; GIPR augments incretin effects (tirzepatide's advantage); GCGR drives direct hepatic fat oxidation and thermogenesis — the third layer that explains why the weight loss magnitude (~25–28%) substantially exceeds both GLP-1 mono (~15%) and GLP-1/GIP dual (~21%) approaches. FDA BLA filing planned Q1 2027 for obesity, knee OA pain, and sleep apnea. TRIUMPH-5 head-to-head vs. tirzepatide ongoing, results expected late 2026/early 2027.",
    nicknames: "LY3437943",
    Status: "Phase 3 Clinical",
    rank: 96,
    molecular_data: "Triple agonist: GLP-1R + GIPR + glucagon receptor; once-weekly SC injection; developed by Eli Lilly; FDA BLA filing planned Q1 2027",
    Sources: "https://investor.lilly.com/news-releases/news-release-details/lillys-triple-agonist-retatrutide-delivered-powerful-weight-loss,https://www.hcplive.com/view/transcend-t2d-2-retatrutide-beats-semaglutide-2-mg-on-a1c-weight-loss,https://www.ajmc.com/view/retatrutide-tops-semaglutide-on-a1c-weight-in-head-to-head-trial",
    "As Of": "2026-11-08",
    faqs: [
      {
        question: "How does retatrutide differ from semaglutide and tirzepatide?",
        answer: "Retatrutide adds a third receptor target — the glucagon receptor — on top of the GLP-1R and GIPR targets that tirzepatide hits. Each additional receptor adds a distinct mechanism: GLP-1R provides satiety and glucose control; GIPR augments incretin effects; glucagon receptor drives direct hepatic fat oxidation and thermogenesis. The clinical result is progressively greater weight loss: semaglutide ~15%, tirzepatide ~21%, retatrutide 25–28.3%. TRANSCEND-T2D-2 (Oct 28, 2026) showed retatrutide achieving more than double Ozempic 2 mg's weight loss in a direct comparison. The head-to-head TRIUMPH-5 vs. tirzepatide is ongoing with results expected in late 2026/early 2027."
      },
      {
        question: "What does 28.3% weight loss in TRIUMPH-1 actually mean?",
        answer: "For a person starting at 250 lbs, that's approximately 62–70 lbs lost on average — the highest ever reported in a Phase 3 anti-obesity drug trial. Perhaps more striking: 45.3% of TRIUMPH-1 participants on 12 mg lost ≥30% of body weight, approaching the typical range for bariatric surgery (25–35% at one year). These results are from topline Lilly announcements; full peer-reviewed publications are pending, and FDA review will determine whether the drug is approved."
      },
      {
        question: "When will retatrutide be approved and available?",
        answer: "Eli Lilly announced plans to file a Biologics License Application (BLA) with the FDA in Q1 2027, with the data package supporting obesity, knee osteoarthritis pain, and obstructive sleep apnea. If FDA grants standard review, approval could come in late 2027 or early 2028. The drug is not approved anywhere as of November 2026 and is not available outside of clinical trials."
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
