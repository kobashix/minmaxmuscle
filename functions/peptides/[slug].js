export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // 1. Fetch Primary Peptide Data
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?").bind(slug).first();
    if (!peptide) return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);

    // 2. Fetch Linked FAQs (The Join)
    // This query pulls any FAQ associated with this peptide through the junction table
// ... existing DB logic ...
const faqs = await DB.prepare(`
  SELECT f.question, f.answer, f.citation_url 
  FROM FAQs f
  JOIN Peptide_FAQs pf ON f.id = pf.faq_id
  WHERE pf.peptide_id = ?
`).bind(peptide.id).all();

const faqHtml = faqs.results.map(f => `
  <div class="faq-item" style="margin-bottom: 2rem;">
    <h4>${f.question}</h4>
    <p>${f.answer}</p>
    <a href="${f.citation_url}" target="_blank" style="font-size: 0.8rem; color: #007bff;">[Source: Peer-Reviewed Research]</a>
  </div>
`).join("");

// ... in the HTMLRewriter ...
  .on("#legal_status", { element(el) { el.setInnerContent(peptide.Status || "Research Only"); } }) // Map Status to the UI slot

    // 3. Fetch Related Peptides
    const related = await DB.prepare(
      "SELECT peptide_name, slug FROM Peptides WHERE Category = ? AND slug != ? LIMIT 5"
    ).bind(peptide.Category, slug).all();

    // 4. HTML Preparation
    const relatedHtml = related.results.map(p => 
      `<li><a href="/peptides/${p.slug}">${p.peptide_name}</a></li>`
    ).join("");

    const faqHtml = faqs.results.map(f => `
      <div class="faq-item" style="margin-bottom: 1.5rem; border-bottom: 1px solid #222; padding-bottom: 1rem;">
        <h4 style="color: #007bff; margin-bottom: 0.5rem;">${f.question}</h4>
        <p style="color: #ccc; line-height: 1.6;">${f.answer}</p>
      </div>
    `).join("");

    // 5. Asset Fetching (Absolute Pathing)
    const baseUrl = new URL(context.request.url).origin;
    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/peptidetemplate.html", baseUrl)),
      ASSETS.fetch(new URL("/header.html", baseUrl)),
      ASSETS.fetch(new URL("/footer.html", baseUrl))
    ]);

    const [headerHtml, footerHtml] = await Promise.all([headRes.text(), footRes.text()]);

    // 6. JSON-LD Schema Construction (SEO Powerhouse)
    const mainSchema = {
      "@context": "https://schema.org",
      "@type": "MedicalEntity",
      "name": peptide.peptide_name,
      "description": peptide.research_summary,
      "category": peptide.Category
    };

    const faqSchema = {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": faqs.results.map(f => ({
        "@type": "Question",
        "name": f.question,
        "acceptedAnswer": { "@type": "Answer", "text": f.answer }
      }))
    };

const sourceUrls = peptide.Sources ? peptide.Sources.split(',') : [];
const sourceLinksHtml = sourceUrls.map((url, index) => 
  `<a href="${url.trim()}" target="_blank" style="color: #007bff; text-decoration: underline;">[Citation ${index + 1}]</a>`
).join(' ');

    // 7. HTMLRewriter Injection
    return new HTMLRewriter()
      .on("head", { 
        element(el) { 
          el.append(`<script type="application/ld+json">${JSON.stringify(mainSchema)}</script>`, { html: true });
          el.append(`<script type="application/ld+json">${JSON.stringify(faqSchema)}</script>`, { html: true });
        } 
      })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || "Research"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary); } })
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.Status || "Research Only"); } })
      .on("#source_link", { element(el) { el.setInnerContent(sourceLinksHtml, { html: true }); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data || "N/A"); } })
      .on("#related_list", { element(el) { el.setInnerContent(relatedHtml, { html: true }); } })
      .on("#faq_container", { element(el) { el.setInnerContent(faqHtml, { html: true }); } }) // FAQ Injection Point
      .on("#as_of_date", { element(el) { el.setInnerContent(`Verified: ${peptide["As Of"] || '2026-02-06'}`); } })
      .transform(tempRes);

  } catch (e) {
    return new Response(`Peptide FAQ Engine Error: ${e.message}`, { status: 500 });
  }
}