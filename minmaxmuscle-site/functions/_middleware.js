export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. ABSOLUTE API BYPASS (The Circuit Breaker)
  // If the path starts with /api, STOP the middleware immediately.
  if (pathname.startsWith("/api")) {
    return context.next();
  }

  // 2. STATIC ASSET BYPASS
  // Don't process images, scripts, or CSS.
  if (pathname.includes(".") && !pathname.endsWith(".html")) {
    return context.next();
  }

  // 3. CLEAN URL REWRITE: /peptides -> /peptides.html
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptides.html", url));
  }

  // 4. DYNAMIC PEPTIDE PAGES: /peptides/bpc-157 -> /peptides/bpc-157.html
  if (pathname.startsWith("/peptides/")) {
    const slug = pathname.split("/")[2];
    if (slug) {
      // Use internal fetch to avoid browser redirects
      return context.env.ASSETS.fetch(new URL(`/peptides/${slug}.html`, url));
    }
  }

  return context.next();
}
