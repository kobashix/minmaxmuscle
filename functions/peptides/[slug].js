export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // 1. Get the data
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?").bind(slug).first();

    // 2. If no peptide found, go back to the list
    if (!peptide) return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);

    // 3. Get the template
    const res = await ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url));

    // 4. Map the Data (Case-Insensitive Handling)
    return new HTMLRewriter()
      .on("title", { element(el) { el.setInnerContent(`${peptide.peptide_name} | MinMaxMuscle`); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name || ""); } })
      
      // FIXED: Handles "Category" (Big C) from your DB
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || peptide.category || "Research"); } })
      
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary || "Summary loading..."); } })
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus || "General Research"); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.legal || peptide.Status || "Research Only"); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank || 0)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data || "N/A"); } })
      
      // FIXED: Handles "Sources" (Big S)
      .on("#source_link", { 
          element(el) { 
            const link = peptide.Sources || peptide.sources || "#";
            el.setAttribute("href", link); 
            el.setInnerContent(link !== "#" ? "View Primary Citation" : "No Source Linked");
          } 
      })
      
      // FIXED: Handles "As Of" (Spaces/Caps)
      .on("#as_of_date", { element(el) { el.setInnerContent(`Data Verified: ${peptide["As Of"] || peptide["As of"] || '2026-02-04'}`); } })
      .transform(res);

  } catch (e) {
    return new Response(`Engine Error: ${e.message}`, { status: 500 });
  }
}