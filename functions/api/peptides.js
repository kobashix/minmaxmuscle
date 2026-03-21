export async function onRequest(context) {
  const { env } = context;

  try {
    // 1. Fetch Peptides with joined FAQs
    const pReq = env.DB.prepare(`
      SELECT p.*, 
        GROUP_CONCAT(f.question, '|||') as faq_questions,
        GROUP_CONCAT(f.answer, '|||') as faq_answers
      FROM Peptides p
      LEFT JOIN Peptide_FAQs pf ON p.id = pf.peptide_id
      LEFT JOIN FAQs f ON pf.faq_id = f.id
      GROUP BY p.id
      ORDER BY p.rank ASC
    `).all();

    // 2. Fetch Stacks with joined FAQs
    const sReq = env.DB.prepare(`
      SELECT s.*, 
        GROUP_CONCAT(f.question, '|||') as faq_questions,
        GROUP_CONCAT(f.answer, '|||') as faq_answers
      FROM Stacks s
      LEFT JOIN Stack_FAQs sf ON s.id = sf.stack_id
      LEFT JOIN FAQs f ON sf.faq_id = f.id
      GROUP BY s.id
      ORDER BY s.rank ASC
    `).all();

    // 3. Fetch View_Stack_Details for authoritative dosages
    let mapping = { results: [] };
    try {
      mapping = await env.DB.prepare(`SELECT * FROM View_Stack_Details`).all();
    } catch (e) {
      console.log("View_Stack_Details error:", e);
    }

    const [peptides, stacks] = await Promise.all([pReq, sReq]);

    const pList = peptides.results;
    const sList = stacks.results;
    const links = mapping.results || [];

    // 4. Map Dosages to Stacks
    sList.forEach(stack => {
        const matches = links.filter(l => l.stack_slug === stack.slug);
        
        if (matches.length > 0) {
            stack.component_list = matches.map(m => ({
                name: m.peptide_name,
                slug: m.peptide_slug,
                dosage: m.dosage_instruction
            }));
        } else {
            stack.component_list = [];
        }
    });

    return new Response(JSON.stringify({
      peptides: pList,
      stacks: sList,
      version: "2.0-relational",
      timestamp: new Date().toISOString()
    }), { 
      headers: { 
        "Content-Type": "application/json", 
        "Cache-Control": "no-cache",
        "Access-Control-Allow-Origin": "*"
      } 
    });

  } catch (err) {
    return new Response(JSON.stringify({ error: err.message }), { status: 500 });
  }
}