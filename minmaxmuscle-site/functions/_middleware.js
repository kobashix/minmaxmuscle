export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  if (url.pathname.startsWith("/api/")) {
    return context.next();
  }

  if (pathname === "/api/peptides" || pathname === "/api/peptides/") {
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

  if (pathname === "/peptides" || pathname === "/peptides/") {
    url.pathname = "/peptidesdb.html";
    return context.next(new Request(url.toString(), context.request));
  }

  // 4. DYNAMIC SLUGS: /peptides/bpc-157 -> /peptides/bpc-157.html
  if (pathname.startsWith("/peptides/")) {
    const segments = pathname.split("/").filter(Boolean); // ["peptides", "slug"]
    const slug = segments[1];
    
    if (slug) {
      return context.env.ASSETS.fetch(new URL(`/peptides/${slug}.html`, url));
    }
  }

  return context.next();
}
