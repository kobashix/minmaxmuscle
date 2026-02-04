export async function onRequest(context) {
  const { DB } = context.env;
  const baseUrl = "https://minmaxmuscle.com";

  // 1. Static Pages
  const staticPages = [
    "",
    "/training.html",
    "/nutrition.html",
    "/peptidesdb.html",
    "/peptide-stacks.html",
    "/coaching.html",
    "/contact.html"
  ];

  try {
    // 2. Fetch Dynamic Slugs from D1
    const [peptides, stacks] = await Promise.all([
      DB.prepare("SELECT slug FROM Peptides").all(),
      DB.prepare("SELECT slug FROM Stacks").all()
    ]);

    // 3. Construct XML
    let xml = `<?xml version="1.0" encoding="UTF-8"?>`;
    xml += `<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">`;

    // Add Static
    staticPages.forEach(path => {
      xml += `<url><loc>${baseUrl}${path}</loc><changefreq>weekly</changefreq></url>`;
    });

    // Add Peptides
    peptides.results.forEach(p => {
      xml += `<url><loc>${baseUrl}/peptides/${p.slug}</loc><changefreq>monthly</changefreq></url>`;
    });

    // Add Stacks
    stacks.results.forEach(s => {
      xml += `<url><loc>${baseUrl}/stacks/${s.slug}</loc><changefreq>monthly</changefreq></url>`;
    });

    xml += `</urlset>`;

    return new Response(xml, {
      headers: {
        "Content-Type": "application/xml",
        "Cache-Control": "public, max-age=86400" // Cache for 24 hours
      }
    });
  } catch (e) {
    return new Response(`Sitemap Error: ${e.message}`, { status: 500 });
  }
}