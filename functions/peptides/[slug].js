export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const slug = context.params.slug;

  if (!DB) {
    return new Response("D1 Binding Missing", { status: 500 });
  }

  if (!ASSETS) {
    return new Response("ASSETS Binding Missing", { status: 500 });
  }

  try {
    const peptide = await DB.prepare("SELECT * FROM Peptides WHERE slug = ?")
      .bind(slug)
      .first();

    if (!peptide) {
      return new Response("Not Found", { status: 404 });
    }

    const templateUrl = new URL("/peptidetemplate.html", context.request.url);
    const templateResponse = await ASSETS.fetch(
      new Request(templateUrl, context.request)
    );

    if (!templateResponse.ok) {
      return templateResponse;
    }

    return new HTMLRewriter()
      .on("#peptide_name", {
        text(text) {
          text.set(peptide.peptide_name ?? "");
        },
      })
      .on("#research_summary", {
        text(text) {
          text.set(peptide.research_summary ?? "");
        },
      })
      .on("#molecular_data", {
        text(text) {
          text.set(peptide.molecular_data ?? "");
        },
      })
      .transform(templateResponse);
  } catch (error) {
    return new Response("Query Failed", { status: 500 });
  }
}
