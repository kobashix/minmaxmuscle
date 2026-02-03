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

  if (pathname === "/peptidesdb" || pathname === "/peptidesdb/") {
    url.pathname = "/peptidesdb.html";
    return context.next(new Request(url.toString(), context.request));
  }

  if (pathname.startsWith("/peptides/")) {
    if (pathname.endsWith(".html")) {
      const cleanPath = pathname.replace(/\.html$/, "");
      return Response.redirect(new URL(cleanPath, url), 301);
    }

    const slug = pathname.replace(/^\/peptides\//, "").replace(/\/$/, "");
    if (!slug) {
      return context.next();
    }

    url.pathname = `/peptides/${slug}.html`;
    return context.next(new Request(url.toString(), context.request));
  }

  return context.next();
}
