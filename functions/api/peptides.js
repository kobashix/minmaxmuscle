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