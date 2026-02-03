export async function onRequest(context) {
  try {
    const { results } = await context.env.DB.prepare(
      "SELECT peptide_name, research_summary, category, slug FROM Peptides ORDER BY rank ASC"
    ).all();

    return new Response(JSON.stringify({ data: results || [] }), {
      headers: {
        "content-type": "application/json; charset=utf-8",
        "Cache-Control": "public, max-age=3600" // Cache for 1 hour
      },
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), { 
      status: 500,
      headers: { "content-type": "application/json" } 
    });
  }
}
