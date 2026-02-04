export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  try {
    const { results } = await DB.prepare("SELECT * FROM Stacks ORDER BY rank ASC").all();

    const stacksHtml = results.map(s => `
      <a href="/stacks/${s.slug}" class="stack-card">
        <span class="rank-badge">RANK #${s.rank}</span>
        <span class="stack-goal">${s.goal}</span>
        <h3 class="stack-title">${s.stack_name}</h3>
        <p class="stack-desc">${s.description}</p>
      </a>`).join("");

    const res = await ASSETS.fetch(new URL("/peptide-stacks.html", context.request.url));
    
    const schema = {
      "@context": "https://schema.org",
      "@type": "CollectionPage",
      "name": "MinMaxMuscle Peptide Stacks",
      "mainEntity": { "@type": "ItemList", "itemListElement": results.map((s, i) => ({ "@type": "ListItem", "position": i + 1, "url": `https://minmaxmuscle.com/stacks/${s.slug}` })) }
    };

    return new HTMLRewriter()
      .on("head", { element(el) { el.append(`<script type="application/ld+json">${JSON.stringify(schema)}</script>`, { html: true }); } })
      .on("#stacks_container", { element(el) { el.setInnerContent(stacksHtml, { html: true }); } })
      .transform(res);
  } catch (e) { return new Response(e.message, { status: 500 }); }
}