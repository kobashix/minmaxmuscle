export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    const { results } = await DB.prepare(`
      SELECT s.title, s.goal, s.description, s.rank, p.name, p.slug AS p_slug, sp.dosage_instruction
      FROM Stacks s JOIN Stack_Peptides sp ON s.id = sp.stack_id JOIN Peptides p ON sp.peptide_id = p.id
      WHERE s.slug = ?
    `).bind(slug).all();

    if (results.length === 0) return new Response("Not Found", { status: 404 });
    const stack = results[0];

    const peptidesHtml = results.map(p => `
      <div class="spec-card">
        <span class="spec-label">Component</span>
        <a href="/peptide/${p.p_slug}" class="spec-value">${p.name}</a>
        <div class="dosage-info">${p.dosage_instruction}</div>
      </div>`).join("");

    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/stacktemplate.html", context.request.url)),
      ASSETS.fetch(new URL("/header.html", context.request.url)),
      ASSETS.fetch(new URL("/footer.html", context.request.url))
    ]);

    const [headerHtml, footerHtml] = await Promise.all([headRes.text(), footRes.text()]);

    const baseUrl = new URL(context.request.url).origin;
    const authorSchema = {
      "@type": "Person",
      "name": "Alex 'MinMax' Rivera",
      "jobTitle": "Lead Performance Researcher",
      "url": `${baseUrl}/about`
    };

    const reviewerSchema = {
      "@type": "Person",
      "name": "Dr. Sarah Chen",
      "jobTitle": "Medical Advisory Lead",
      "url": `${baseUrl}/about`
    };

    const schema = {
      "@context": "https://schema.org",
      "@type": ["MedicalWebPage", "ItemList"],
      "name": `${stack.title} Protocol`,
      "description": stack.description,
      "author": authorSchema,
      "publisher": {
        "@type": "Organization",
        "name": "MinMaxMuscle",
        "logo": `${baseUrl}/assets/img/logo.png`
      },
      "editor": authorSchema,
      "reviewedBy": reviewerSchema,
      "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": context.request.url
      },
      "itemListElement": results.map((p, i) => ({ "@type": "ListItem", "position": i + 1, "name": p.name }))
    };

    const forumUrl = `https://blog.minmaxmuscle.com/forum/search/?keywords=${encodeURIComponent(stack.title)}`;

    const pros = [
        "Synergistic biological signaling",
        "Optimized pharmacokinetic alignment",
        "Targeted metabolic pathway focus"
    ];
    const limitations = [
        "Requires precise administration timing",
        "Cumulative cost of protocol components",
        "Advanced cycle monitoring recommended"
    ];

    const prosHtml = pros.map(p => `<li>${p}</li>`).join("");
    const consHtml = limitations.map(l => `<li>${l}</li>`).join("");

    const pageTitle = `${stack.title} Protocol & Cycle Guide | MinMaxMuscle`;
    const pageDesc = `Detailed synergistic protocol analysis for ${stack.title}. Explore molecular pairing, theoretical dosing, benefits, and research data for peak performance.`;

    return new HTMLRewriter()
      .on("head", { element(el) { el.append(`<script type="application/ld+json">${JSON.stringify(schema)}</script>`, { html: true }); } })
      .on("title", { element(el) { el.setInnerContent(pageTitle); } })
      .on("meta[name='description']", { element(el) { el.setAttribute("content", pageDesc); } })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#stack_name", { element(el) { el.setInnerContent(stack.title); } })
      .on("#stack_goal", { element(el) { el.setInnerContent(stack.goal); } })
      .on("#stack_description", { element(el) { el.setInnerContent(stack.description); } })
      .on("#peptide_list", { element(el) { el.setInnerContent(peptidesHtml, { html: true }); } })
      .on("#clinical_pros", { element(el) { el.setInnerContent(prosHtml, { html: true }); } })
      .on("#research_limitations", { element(el) { el.setInnerContent(consHtml, { html: true }); } })
      .on("#forum_cta", { element(el) { el.setAttribute("href", forumUrl); } })
      .on("#spec_rank", { element(el) { el.setInnerContent(`Rank: ${stack.rank}`); } })
      .on("#spec_goal", { element(el) { el.setInnerContent(stack.goal); } })
      .transform(tempRes);
  } catch (e) { return new Response(e.message, { status: 500 }); }
}