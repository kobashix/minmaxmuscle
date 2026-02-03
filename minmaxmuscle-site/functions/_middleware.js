export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  if (pathname.startsWith("/api/")) {
    return context.next();
  }

  if (pathname === "/peptides" || pathname === "/peptides/") {
    url.pathname = "/peptides.html";
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
