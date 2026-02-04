export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // Fetch Stack + All Peptides inside it via the View
    const { results } = await DB.prepare(`
      SELECT * FROM View_Stack_Details WHERE stack_slug = ?
    `).bind(slug).all();

    if (results.length === 0) return new Response("Stack not found", { status: 404 });

    const stack = results[0]; // Stack metadata
    const peptidesHtml = results.map(p => `
      <div class="spec-card">
        <span class="spec-label">Peptide</span>
        <a href="/peptides/${p.peptide_slug}" class="spec-value" style="color:#007bff;">${p.peptide_name}</a>
        <p style="font-size:0.8rem; color:#888; margin-top:5px;">${p.dosage_instruction || ''}</p>
      </div>
    `).join("");

    const res = await ASSETS.fetch(new URL("/stacktemplate.html", context.request.url));

    return new HTMLRewriter()
      .on("#stack_name", { element(el) { el.setInnerContent(stack.stack_name); } })
      .on("#stack_goal", { element(el) { el.setInnerContent(stack.goal); } })
      .on("#peptide_list", { element(el) { el.setInnerContent(peptidesHtml, { html: true }); } })
      .transform(res);

  } catch (e) {
    return new Response(e.message, { status: 500 });
  }
}