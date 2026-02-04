export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?").bind(slug).first();
    if (!peptide) return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);

    // Fetch related peptides
    const related = await DB.prepare(
      "SELECT peptide_name, slug FROM Peptides WHERE Category = ? AND slug != ? ORDER BY rank ASC LIMIT 5"
    ).bind(peptide.Category, slug).all();

    const relatedHtml = related.results.map(p => 
      `<li><a href="/peptides/${p.slug}">${p.peptide_name}</a></li>`
    ).join("");

    // Fetch Template + Master Header/Footer
    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url)),
      ASSETS.fetch(new URL("/header.html", context.request.url)),
      ASSETS.fetch(new URL("/footer.html", context.request.url))
    ]);

    const [headerHtml, footerHtml] = await Promise.all([headRes.text(), footRes.text()]);

    return new HTMLRewriter()
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || "Research"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary); } })
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.legal); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data); } })
      .on("#related_list", { element(el) { el.setInnerContent(relatedHtml, { html: true }); } })
      .on("#as_of_date", { element(el) { el.setInnerContent(`Data Verified: ${peptide["As Of"]}`); } })
      .transform(tempRes);

  } catch (e) {
    return new Response(e.message, { status: 500 });
  }
}