export async function onRequest(context) {
  const { DB } = context.env;

  // Check if DB is actually bound
  if (!DB) {
    return new Response(JSON.stringify({ 
      error: "D1 Binding Missing", 
      detail: "Please check your Cloudflare dashboard settings." 
    }), { 
      status: 500, 
      headers: { "Content-Type": "application/json" } 
    });
  }

  try {
    const { results } = await DB.prepare(
      "SELECT peptide_name, research_summary, category, slug FROM Peptides ORDER BY rank ASC"
    ).all();

    return new Response(JSON.stringify({ data: results || [] }), {
      headers: { "Content-Type": "application/json; charset=utf-8" },
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: "Query Failed", detail: error.message }), { 
      status: 500,
      headers: { "Content-Type": "application/json" } 
    });
  }
}