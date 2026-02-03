export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. BYPASS API: Let /api/peptides.js handle itself
  if (pathname.startsWith("/api/")) {
    return context.next();
  }

  // 2. REWRITE: /peptides -> /peptides.html
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptides.html", url));
  }

  // 3. DYNAMIC SLUGS: /peptides/bpc-157 -> /peptides/bpc-157.html
  if (pathname.startsWith("/peptides/")) {
    const slug = pathname.split("/")[2];
    if (slug) {
      return context.env.ASSETS.fetch(new URL(`/peptides/${slug}.html`, url));
    }
  }

  return context.next();
}
