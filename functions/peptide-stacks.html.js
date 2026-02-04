export async function onRequest(context) {
  const { DB, ASSETS } = context.env;

  try {
    // 1. Fetch all stacks from D1
    const { results } = await DB.prepare("SELECT * FROM Stacks ORDER BY rank ASC").all();

    // 2. Build the HTML cards
    const stacksHtml = results.length > 0 
      ? results.map(s => `
          <a href="/stacks/${s.slug}" class="stack-card">
            <span class="rank-badge">RANK #${s.rank}</span>
            <span class="stack-goal">${s.goal || 'General Research'}</span>
            <h3 class="stack-title">${s.stack_name}</h3>
            <p class="stack-desc">${s.description || 'View detailed protocol specifications.'}</p>
            <span style="color: #28a745; font-weight: bold; font-size: 0.8rem;">View Stack Details →</span>
          </a>
        `).join("")
      : `<div style="grid-column: 1/-1; text-align: center; color: #666;">No stacks found in database.</div>`;

    // 3. Get the shell
    const res = await ASSETS.fetch(new URL("/peptide-stacks.html", context.request.url));

    return new HTMLRewriter()
      .on("#stacks_container", { 
        element(el) { el.setInnerContent(stacksHtml, { html: true }); } 
      })
      .transform(res);

  } catch (e) {
    return new Response(`Stack Engine Error: ${e.message}`, { status: 500 });
  }
}