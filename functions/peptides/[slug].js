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

    const peptideName = peptide.peptide_name ?? "Peptide";
    const researchSummary = peptide.research_summary ?? "No summary available yet.";
    const molecularData = peptide.molecular_data ?? "Molecular data coming soon.";

    return new HTMLRewriter()
      .on("title", {
        element(element) {
          element.setInnerContent(`MinMaxMuscle | ${peptideName}`);
        },
      })
      .on("#peptide_name", {
        element(element) {
          element.setInnerContent(peptideName);
        },
      })
      .on("#research_summary", {
        element(element) {
          element.setInnerContent(researchSummary);
        },
      })
      .on("#molecular_data", {
        element(element) {
          element.setInnerContent(molecularData);
        },
      })
      .transform(templateResponse);
  } catch (error) {
    return new Response("Query Failed", { status: 500 });
  }
}
