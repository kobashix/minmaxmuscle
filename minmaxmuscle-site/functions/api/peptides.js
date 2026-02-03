export async function onRequest({ env }) {
  try {
    const { results } = await env.DB.prepare(
      "SELECT peptide_name, research_summary, category, slug FROM Peptides"
    ).all();

    return new Response(JSON.stringify({ data: results || [] }), {
      headers: {
        "content-type": "application/json; charset=utf-8",
      },
    });
  } catch (error) {
    return new Response(JSON.stringify({ data: [], error: "Failed to load peptides." }), {
      status: 500,
      headers: {
        "content-type": "application/json; charset=utf-8",
      },
    });
  }
}
