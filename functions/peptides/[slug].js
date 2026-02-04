export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const slug = context.params.slug;

  if (!DB) return new Response("D1 Binding Missing", { status: 500 });
  
  try {
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?")
      .bind(slug)
      .first();

    if (!peptide) {
      return Response.redirect(new URL("/peptides", context.request.url), 302);
    }

    const templateResponse = await context.env.ASSETS.fetch(new URL("/peptidetemplate.html", context.request.url));

    return new HTMLRewriter()
      .on("title", {
        element(el) { el.setInnerContent(`${peptide.peptide_name} | MinMaxMuscle`); }
      })
      .on("#peptide_name", {
        element(el) { el.setInnerContent(peptide.peptide_name ?? ""); }
      })
      .on("#research_summary", {
        element(el) { el.setInnerContent(peptide.research_summary ?? ""); }
      })
      .on("#molecular_data", {
        element(el) { el.setInnerContent(peptide.molecular_data ?? ""); }
      })
      .on("#as-of-date", {
        element(el) { el.setInnerContent(`As of: ${peptide["As of"] || '2026-02-03'}`); }
      })
      .transform(templateResponse);
  } catch (error) {
    return new Response(`Query Failed: ${error.message}`, { status: 500 });
  }
}