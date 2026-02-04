export async function onRequest(context) {
  const url = new URL(context.request.url);
  const { pathname } = url;

  // 1. API BYPASS: Absolute priority.
  if (pathname.includes("/api/")) {
    return context.next();
  }

  // 2. CLEAN URL: Map /peptides to your renamed file
  if (pathname === "/peptides" || pathname === "/peptides/") {
    return context.env.ASSETS.fetch(new URL("/peptidesdb.html", url));
  }

  // 3. ASSET BYPASS: Ignore files with dots (css, js, images)
  if (pathname.includes(".")) {
    return context.next();
  }

  return context.next();
}
export async function onRequest(context) {
  const { request, next, env } = context;
  const url = new URL(request.url);

  // Only apply to the homepage
  if (url.pathname === "/" || url.pathname === "/index.html") {
    const res = await next();
    
    // Fetch Master Components
    const [headRes, footRes] = await Promise.all([
      env.ASSETS.fetch(new URL("/header.html", request.url)),
      env.ASSETS.fetch(new URL("/footer.html", request.url))
    ]);

    const headerHtml = await headRes.text();
    const footerHtml = await footRes.text();

    return new HTMLRewriter()
      .on(".site-header", { 
        element(el) { el.setInnerContent(headerHtml, { html: true }); } 
      })
      .on(".site-footer", { 
        element(el) { el.setInnerContent(footerHtml, { html: true }); } 
      })
      .transform(res);
  }

  return next();
}