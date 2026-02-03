export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. EXIT: If it's an API call, let it go to the function file
  if (pathname.startsWith("/api/")) {
    return context.next();
  }

  // 2. EXIT: If it's a static file (css, js, img), let it pass
  if (pathname.includes(".") && !pathname.endsWith(".html")) {
    return context.next();
  }

  // 3. INTERNAL REWRITE: /peptides -> /peptides.html
  // This happens on the server; the browser URL stays /peptides
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptides.html", url));
  }

  // 4. DYNAMIC PAGES: /peptides/bpc-157 -> /peptides/bpc-157.html
  if (pathname.startsWith("/peptides/")) {
    const slug = pathname.split("/")[2];
    if (slug && !slug.endsWith(".html")) {
      return context.env.ASSETS.fetch(new URL(`/peptides/${slug}.html`, url));
    }
  }

  return context.next();
}
