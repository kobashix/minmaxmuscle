export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. EXIT: API always passes through
  if (pathname.startsWith("/api/")) {
    return context.next();
  }

  // 2. EXIT: If the file is already an HTML file or has an extension, don't rewrite it
  if (pathname.includes(".")) {
    return context.next();
  }

  // 3. REWRITE: /peptides -> peptides.html (Only if not already .html)
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptides.html", url));
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
