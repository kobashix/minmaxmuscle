export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    const { results } = await DB.prepare(`
      SELECT s.stack_name, s.goal, s.description, s.rank, p.peptide_name, p.slug AS p_slug, sp.dosage_instruction
      FROM Stacks s JOIN Stack_Peptides sp ON s.id = sp.stack_id JOIN Peptides p ON sp.peptide_id = p.id
      WHERE s.slug = ?
    `).bind(slug).all();

    if (results.length === 0) return new Response("Not Found", { status: 404 });
    const stack = results[0];

    const peptidesHtml = results.map(p => `
      <div class="spec-card">
        <span class="spec-label">Component</span>
        <a href="/peptides/${p.p_slug}" class="spec-value">${p.peptide_name}</a>
        <div class="dosage-info">${p.dosage_instruction}</div>
      </div>`).join("");

    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/stacktemplate.html", context.request.url)),
      ASSETS.fetch(new URL("/header.html", context.request.url)),
      ASSETS.fetch(new URL("/footer.html", context.request.url))
    ]);

    const [headerHtml, footerHtml] = await Promise.all([headRes.text(), footRes.text()]);

    const schema = {
      "@context": "https://schema.org",
      "@type": "ItemList",
      "name": stack.stack_name,
      "description": stack.description,
      "itemListElement": results.map((p, i) => ({ "@type": "ListItem", "position": i + 1, "name": p.peptide_name }))
    };

    return new HTMLRewriter()
      .on("head", { element(el) { el.append(`<script type="application/ld+json">${JSON.stringify(schema)}</script>`, { html: true }); } })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#stack_name", { element(el) { el.setInnerContent(stack.stack_name); } })
      .on("#stack_goal", { element(el) { el.setInnerContent(stack.goal); } })
      .on("#stack_description", { element(el) { el.setInnerContent(stack.description); } })
      .on("#peptide_list", { element(el) { el.setInnerContent(peptidesHtml, { html: true }); } })
      .transform(tempRes);
  } catch (e) { return new Response(e.message, { status: 500 }); }
}