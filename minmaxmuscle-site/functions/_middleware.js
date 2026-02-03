export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. SPECIFIC API ROUTE: Handle the D1 Fetch first
  if (pathname === "/api/peptides" || pathname === "/api/peptides/") {
    try {
      const { results } = await context.env.DB.prepare(
        "SELECT peptide_name, research_summary, category, slug FROM Peptides ORDER BY rank ASC"
      ).all();
      return new Response(JSON.stringify({ data: results || [] }), {
        headers: { "content-type": "application/json; charset=utf-8" },
      });
    } catch (error) {
      return new Response(JSON.stringify({ data: [], error: error.message }), {
        status: 500,
        headers: { "content-type": "application/json" },
      });
    }
  }

  // 2. GENERIC API BYPASS: Let other /api/ calls through without rewriting
  if (pathname.startsWith("/api/")) {
    return context.next();
  }

  // 3. CLEAN URL LOGIC: /peptides -> /peptides.html
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptides.html", url));
  }

  // 4. DYNAMIC SLUGS: /peptides/bpc-157 -> /peptides/bpc-157.html
  if (pathname.startsWith("/peptides/")) {
    if (pathname.endsWith(".html")) {
      return Response.redirect(new URL(pathname.replace(/\.html$/, ""), url), 301);
    }
    const slug = pathname.split("/")[2];
    if (slug) {
      return context.env.ASSETS.fetch(new URL(`/peptides/${slug}.html`, url));
    }
  }

  return context.next();
}
