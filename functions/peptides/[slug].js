export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // 1. Get the Main Peptide Data
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?").bind(slug).first();

    if (!peptide) return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);

    // 2. Get Related Peptides (Same Category, excluding current one)
    const related = await DB.prepare(
      "SELECT peptide_name, slug, rank FROM Peptides WHERE Category = ? AND slug != ? ORDER BY rank ASC LIMIT 5"
    ).bind(peptide.Category, slug).all();

    // 3. Generate the HTML for the "Related" list
    const relatedHtml = related.results.length > 0 
      ? related.results.map(p => 
          `<li><a href="/peptides/${p.slug}" style="color: #007bff; text-decoration: none;">${p.peptide_name}</a> <span style="font-size:0.8em; color:#666;">(#${p.rank})</span></li>`
        ).join("")
      : "<li style='color:#666;'>No related peptides found.</li>";

    // 4. Fetch Template
    const res = await ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url));

    // 5. Inject Data
    return new HTMLRewriter()
      .on("title", { element(el) { el.setInnerContent(`${peptide.peptide_name} | MinMaxMuscle`); } })
      
      // FIXED: Forces Category and Summary to show up
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || "Research"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary || "Summary pending."); } })
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      
      // Specs
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus || "General Research"); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.legal || "Research Only"); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data || "N/A"); } })
      
      // Footer Data
      .on("#source_link", { 
          element(el) { 
            const link = peptide.Sources || "#";
            el.setAttribute("href", link);
            el.setInnerContent(link !== "#" ? "View Primary Citation" : "No Citation Linked");
          } 
      })
      .on("#as_of_date", { element(el) { el.setInnerContent(`Data Verified: ${peptide["As Of"] || '2026-02-04'}`); } })

      // NEW: Inject the Related Peptides List
      .on("#related_list", { element(el) { el.setInnerContent(relatedHtml, { html: true }); } })
      
      .transform(res);

  } catch (e) {
    return new Response(`Error: ${e.message}`, { status: 500 });
  }
}