export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // 1. Get the Data
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?").bind(slug).first();
    
    // 2. If no peptide found, redirect to the main DB page instead of showing a 404
    if (!peptide) {
      return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);
    }

    // 3. Fetch Related Peptides
    const related = await DB.prepare(
      "SELECT peptide_name, slug FROM Peptides WHERE Category = ? AND slug != ? LIMIT 5"
    ).bind(peptide.Category, slug).all();

    const relatedHtml = related.results.map(p => 
      `<li><a href="/peptides/${p.slug}">${p.peptide_name}</a></li>`
    ).join("");

    // 4. Fetch the Master Assets
    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url)),
      ASSETS.fetch(new URL("/header.html", context.request.url)),
      ASSETS.fetch(new URL("/footer.html", context.request.url))
    ]);

    const headerHtml = await headRes.text();
    const footerHtml = await footRes.text();

    // 5. Build JSON-LD
    const schema = {
      "@context": "https://schema.org",
      "@type": "MedicalEntity",
      "name": peptide.peptide_name,
      "description": peptide.research_summary
    };

    // 6. Inject and Return
    return new HTMLRewriter()
      .on("head", { element(el) { el.append(`<script type="application/ld+json">${JSON.stringify(schema)}</script>`, { html: true }); } })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary); } })
      // Make sure these IDs exist in your peptidetemplate.html
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || "Research"); } })
      .on("#related_list", { element(el) { el.setInnerContent(relatedHtml, { html: true }); } })
      .transform(tempRes);

  } catch (e) {
    return new Response(`Peptide Link Error: ${e.message}`, { status: 500 });
  }
}