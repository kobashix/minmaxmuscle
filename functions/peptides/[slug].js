export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?").bind(slug).first();

    if (!peptide) return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);

    const res = await ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url));

    return new HTMLRewriter()
      .on("title", { element(el) { el.setInnerContent(`${peptide.peptide_name} | MinMaxMuscle Research`); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.category || "Research"); } })
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary); } })
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus || "General Research"); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.legal || "Research Only"); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data || "N/A"); } })
      .on("#source_link", { 
          element(el) { 
            el.setAttribute("href", peptide.Sources || "#"); 
            el.setInnerContent(peptide.Sources ? "External Source" : "No Source Linked");
          } 
      })
      .on("#as_of_date", { element(el) { el.setInnerContent(`Data Verified As of: ${peptide["As of"]}`); } })
      .transform(res);

  } catch (e) {
    return new Response(`Error: ${e.message}`, { status: 500 });
  }
}