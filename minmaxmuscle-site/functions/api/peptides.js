export async function onRequest(context) {
  try {
    const { results } = await context.env.DB.prepare(
      "SELECT peptide_name, research_summary, category, slug FROM Peptides ORDER BY rank ASC"
    ).all();

    return new Response(JSON.stringify({ data: results || [] }), {
      headers: {
        "content-type": "application/json; charset=utf-8",
      },
    });
  } catch (error) {
    console.log("D1 query failed:", error);
    return new Response(
      JSON.stringify({
        data: [],
        error: "Failed to load peptides.",
        detail: error?.message || String(error),
      }),
      {
      status: 500,
      headers: {
        "content-type": "application/json; charset=utf-8",
      },
      }
    );
  }
}
