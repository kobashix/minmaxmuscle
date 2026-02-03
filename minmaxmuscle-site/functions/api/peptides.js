export async function onRequest(context) {
  try {
    // Explicitly destructure DB from the environment
    const { DB } = context.env;
    
    const { results } = await DB.prepare(
      "SELECT peptide_name, research_summary, category, slug FROM Peptides ORDER BY rank ASC"
    ).all();

    return new Response(JSON.stringify({ data: results || [] }), {
      headers: { 
        "Content-Type": "application/json; charset=utf-8",
        "Access-Control-Allow-Origin": "*" 
      },
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), { 
      status: 500, 
      headers: { "Content-Type": "application/json" } 
    });
  }
}
