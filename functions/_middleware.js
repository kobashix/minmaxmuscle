export async function onRequest(context) {
  const { request, next, env } = context;
  const url = new URL(request.url);
  const path = url.pathname;

  // List of pages that need the Master Header/Footer injected
  const masterPages = ["/", "/index.html", "/training.html", "/nutrition.html", "/coaching.html", "/peptidesdb.html", "/contact.html"];

  if (masterPages.includes(path)) {
    const res = await next();
    
    // Fetch Master Components once
    const [headRes, footRes] = await Promise.all([
      env.ASSETS.fetch(new URL("/header.html", request.url)),
      env.ASSETS.fetch(new URL("/footer.html", request.url))
    ]);

    const headerHtml = await headRes.text();
    const footerHtml = await footRes.text();

    return new HTMLRewriter()
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .transform(res);
  }

  return next();
}