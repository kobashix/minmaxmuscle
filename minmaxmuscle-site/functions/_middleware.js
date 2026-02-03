export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. ABSOLUTE BYPASS: If the URL has "api" in it, DO NOT TOUCH IT.
  // This forces Cloudflare to look for the file in /functions/api/
  if (pathname.includes("api")) {
    return context.next();
  }

  // 2. INTERNAL REWRITE: serve the database page content at the clean URL
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptidesdb.html", url));
  }

  // 3. DYNAMIC SLUGS: /peptides/bpc-157
  if (pathname.startsWith("/peptides/")) {
    const slug = pathname.split("/")[2];
    if (slug && !slug.includes(".")) {
      return context.env.ASSETS.fetch(new URL(`/peptides/${slug}.html`, url));
    }
  }

  return context.next();
}