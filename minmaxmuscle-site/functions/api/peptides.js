export async function onRequest(context) {
  try {
    // Destructure DB from env
    const { DB } = context.env;

    const { results } = await DB.prepare(
      "SELECT peptide_name, research_summary, category, slug FROM Peptides ORDER BY rank ASC"
    ).all();

    return new Response(JSON.stringify({ data: results || [] }), {
      headers: {
        "Content-Type": "application/json; charset=utf-8",
        "Cache-Control": "no-store"
      },
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: "D1 Error", detail: error.message }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }
}