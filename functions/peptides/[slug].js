export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?")
      .bind(slug)
      .first();

    if (!peptide) {
      return Response.redirect(new URL("/peptidesdb", context.request.url), 302);
    }

    const res = await ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url));

    return new HTMLRewriter()
      .on("title", {
        element(el) { el.setInnerContent(`${peptide.peptide_name} | MinMaxMuscle`); }
      })
      .on("#peptide_name", {
        element(el) { el.setInnerContent(peptide.peptide_name ?? ""); }
      })
      .on("#research_summary", {
        element(el) { el.setInnerContent(peptide.research_summary ?? "Summary pending."); }
      })
      .on("#molecular_data", {
        element(el) { el.setInnerContent(peptide.molecular_data ?? "Data pending."); }
      })
      // Maps the "As of" date and Category into the footer area
      .on("footer", {
        element(el) {
          const date = peptide["As of"] || '2026-02-04';
          const cat = peptide.category || 'Research';
          el.setInnerContent(`© MinMaxMuscle | ${cat} | Data Verified: ${date}`, { html: true });
        }
      })
      .transform(res);
  } catch (e) {
    return new Response(`Audit Error: ${e.message}`, { status: 500 });
  }
}