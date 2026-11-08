const STATIC_PEPTIDES = [
  {
    peptide_name: "Amycretin",
    slug: "amycretin",
    category: "Metabolic & Weight Loss",
    research_summary: "Novel Novo Nordisk dual GLP-1/amylin receptor agonist. Phase 1b/2a (Lancet 2025) showed ~22% weight loss at 36 weeks. Oral formulation in Phase 3 development from Q1 2026."
  },
  {
    peptide_name: "Pemvidutide",
    slug: "pemvidutide",
    category: "Metabolic & Weight Loss",
    research_summary: "Altimmune GLP-1/glucagon dual agonist. Phase 2b MASH data (EASL 2026): ~55% liver fat reduction. Phase 3 PERFORMA trial launched August 2026. Notable lean mass preservation."
  },
  {
    peptide_name: "Mazdutide",
    slug: "mazdutide",
    category: "Metabolic & Weight Loss",
    research_summary: "Innovent/Lilly GLP-1/glucagon dual agonist. GLORY-1 published in NEJM 2025. GLORY-2 (ADA 2026): 18.6% weight loss, 44% achieved ≥20% reduction. Approved in China."
  },
  {
    peptide_name: "Survodutide",
    slug: "survodutide",
    category: "Metabolic & Weight Loss",
    research_summary: "Boehringer Ingelheim/Zealand GLP-1/glucagon dual agonist. SYNCHRONIZE-1 Phase 3 (NEJM 2026): 16.6% weight loss at 48 weeks. SYNCHRONIZE-MASLD (Nature Medicine 2026): 12.2% weight reduction plus >30% liver fat reduction — first Phase 3 MASLD data. SYNCHRONIZE-CVOT ongoing."
  },
  {
    peptide_name: "Eloralintide",
    slug: "eloralintide",
    category: "Metabolic & Weight Loss",
    research_summary: "Eli Lilly selective amylin receptor agonist (LY3841136). Phase 2 (Lancet 2026): 20.1% weight loss at 32 weeks — the highest Phase 2 weight loss data ever published for an amylin-class peptide. Phase 3 ENLIGHTEN program initiated 2026. Once-weekly SC injection."
  },
  {
    peptide_name: "Petrelintide",
    slug: "petrelintide",
    category: "Metabolic & Weight Loss",
    research_summary: "Zealand Pharma/Roche long-acting amylin analog (ZP8396). ZUPREME-1 Phase 2b (ObesityWeek 2026): 10.7% weight loss monotherapy at 42 weeks. ZUPREME-2 (T2D): 9.2%. First pure amylin analog to advance to Phase 3; complements GLP-1 class rather than competes."
  },
  {
    peptide_name: "Ribupatide",
    slug: "ribupatide",
    category: "Metabolic & Weight Loss",
    research_summary: "Hengrui/Kailera Therapeutics GLP-1/GIP dual agonist (HRS9531). Phase 3 injectable (REDEFINE-1, NEJM 2026): 23.6% weight loss at 48 weeks — highest injectable Phase 3 GLP-1/GIP result published. Phase 2 oral (ADA 2026): 12.1% at 32 weeks. Sole oral GLP-1/GIP dual agonist in Phase 3."
  },
  {
    peptide_name: "Avexitide",
    slug: "avexitide",
    category: "Metabolic & Weight Loss",
    research_summary: "GLP-1 receptor antagonist (exendin 9-39) for post-bariatric hypoglycemia (PBH). LUCIDITY Phase 3 (NEJM 2026): 55% reduction in PBH events vs. placebo (p=0.000003). NDA filing planned end of 2026 for a condition with no approved pharmacological treatment."
  },
  {
    peptide_name: "HER-096",
    slug: "her-096",
    category: "Neurological",
    research_summary: "Herantis Pharma CDNF-mimetic peptidomimetic (~1,000 Da) for Parkinson's disease. Targets endoplasmic reticulum stress and unfolded protein response — a new neuroprotective mechanism distinct from dopamine replacement. Phase 1b completed 2025 (12 PD patients, good tolerability). Phase 2 planned H1 2027."
  },
  {
    peptide_name: "Enlicitide",
    slug: "enlicitide",
    category: "Cardiovascular",
    research_summary: "MK-0616 (brand: Lipfendra), the world's first oral PCSK9 inhibitor. FDA approved July 16, 2026 for LDL-C reduction in adults with hypercholesterolemia. Phase 3 MAGNITUDE-1 (NEJM 2026): 57.1% LDL-C reduction on top of maximum-tolerated statin. Once-daily oral capsule."
  },
  {
    peptide_name: "MOTS-c",
    slug: "mots-c",
    category: "Longevity",
    research_summary: "Mitochondria-derived 16-amino acid peptide encoded in mitochondrial 12S rRNA. Activates AMPK, improves insulin sensitivity, and mimics exercise-induced metabolic adaptations. Circulating levels decline with age. HHS Interim Enforcement Discretion Policy (October 2026) now permits 503A compounding pharmacy preparation."
  },
  {
    peptide_name: "Setmelanotide",
    slug: "setmelanotide",
    category: "Metabolic & Weight Loss",
    research_summary: "MC4R agonist (Imcivree, Rhythm Pharmaceuticals). FDA approved for POMC/PCSK1/LEPR deficiency (2020), Bardet-Biedl syndrome (2022), and acquired hypothalamic obesity (March 2026 — first-ever therapy for AHO). TRANSCEND trial: 18.4% BMI reduction. AstraZeneca ~$10B acquisition offer November 2026."
  },
  {
    peptide_name: "Epitalon",
    slug: "epitalon",
    category: "Longevity",
    research_summary: "Synthetic tetrapeptide (Ala-Glu-Asp-Gly) analog of epithalamin from the pineal gland, developed by Khavinson at IBEG, Russia. Rodent studies: 12-24% lifespan extension. Proposed mechanisms: telomerase activation and melatonin regulation. HHS Interim Enforcement Discretion (October 2026) permits 503A compounding; Elysium Health Rx platform launch November 2026."
  },
  {
    peptide_name: "Retatrutide",
    slug: "retatrutide",
    category: "Metabolic & Weight Loss",
    research_summary: "Eli Lilly GLP-1/GIP/glucagon triple agonist (LY3437943). 6 positive Phase 3 trials. TRIUMPH-1: up to 28.3% weight loss — highest ever in Phase 3. 45.3% lost ≥30% body weight. TRANSCEND-T2D-2 (Oct 28, 2026): beats Ozempic 2 mg with >2× weight loss (-20.9% vs. -9.4%). FDA BLA filing Q1 2027."
  }
];

export async function onRequest(context) {
  const { DB } = context.env;

  // Check if DB is actually bound
  if (!DB) {
    return new Response(JSON.stringify({
      error: "D1 Binding Missing",
      detail: "Please check your Cloudflare dashboard settings."
    }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }

  try {
    const { results } = await DB.prepare(
      "SELECT peptide_name, research_summary, Category as category, slug FROM Peptides ORDER BY rank ASC"
    ).all();

    // Merge static fallbacks for peptides not yet in D1
    const dbSlugs = new Set((results || []).map(r => r.slug));
    const merged = [
      ...(results || []),
      ...STATIC_PEPTIDES.filter(p => !dbSlugs.has(p.slug))
    ];

    return new Response(JSON.stringify({ data: merged }), {
      headers: { "Content-Type": "application/json; charset=utf-8" },
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: "Query Failed", detail: error.message }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }
}