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
  const { DB, ASSETS } = context.env;
  const baseUrl = new URL(context.request.url).origin;

  const pageRes = await ASSETS.fetch(new URL("/peptidesdb.html", baseUrl));

  let peptides = [];
  try {
    const { results } = await DB.prepare(
      "SELECT peptide_name, research_summary, Category as category, slug FROM Peptides ORDER BY rank ASC"
    ).all();
    const dbSlugs = new Set((results || []).map(r => r.slug));
    peptides = [
      ...(results || []),
      ...STATIC_PEPTIDES.filter(p => !dbSlugs.has(p.slug))
    ];
  } catch (e) {
    peptides = STATIC_PEPTIDES;
  }

  const listHtml = peptides.map(p => `
    <li>
      <h3><a class="peptide-link" href="/peptides/${p.slug}">${p.peptide_name}</a></h3>
      <p>${p.research_summary || "No summary available."}</p>
      <span class="peptide-tag">${p.category || "Research"}</span>
    </li>
  `).join("");

  const listSchema = {
    "@context": "https://schema.org",
    "@type": "ItemList",
    "name": "Peptide Research Directory",
    "description": "Popularity-ranked peptide research reference database covering GLP-1 agonists, recovery, and performance compounds.",
    "url": "https://minmaxmuscle.com/peptidesdb.html",
    "numberOfItems": peptides.length,
    "itemListElement": peptides.map((p, i) => ({
      "@type": "ListItem",
      "position": i + 1,
      "name": p.peptide_name,
      "url": `https://minmaxmuscle.com/peptides/${p.slug}`
    }))
  };

  const metaDesc = `Browse ${peptides.length}+ research peptides ranked by popularity. Educational reference for GLP-1 agonists, fat loss, recovery, and performance compounds.`;

  return new HTMLRewriter()
    .on("title", { element(el) { el.setInnerContent("Peptide Research Directory | MinMaxMuscle"); } })
    .on("head", {
      element(el) {
        el.append(`<meta name="description" content="${metaDesc}">`, { html: true });
        el.append(`<meta property="og:title" content="Peptide Research Directory | MinMaxMuscle">`, { html: true });
        el.append(`<meta property="og:description" content="${metaDesc}">`, { html: true });
        el.append(`<meta property="og:url" content="https://minmaxmuscle.com/peptidesdb.html">`, { html: true });
        el.append(`<meta property="og:type" content="website">`, { html: true });
        el.append(`<meta property="og:site_name" content="MinMaxMuscle">`, { html: true });
        el.append(`<meta name="twitter:card" content="summary_large_image">`, { html: true });
        el.append(`<link rel="canonical" href="https://minmaxmuscle.com/peptidesdb.html">`, { html: true });
        el.append(`<script type="application/ld+json">${JSON.stringify(listSchema)}</script>`, { html: true });
      }
    })
    .on("#peptideStatus", { element(el) { el.setAttribute("style", "display:none"); } })
    .on("#peptideList", { element(el) { el.setInnerContent(listHtml, { html: true }); } })
    .transform(pageRes);
}
