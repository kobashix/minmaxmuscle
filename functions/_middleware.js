export async function onRequest(context) {
  const { request, next, env } = context;
  const url = new URL(request.url);
  const path = url.pathname;

  // 1. Define the pages that get the Header/Footer injection
  const isMasterPage = [
    "/", 
    "/index.html", 
    "/training.html", 
    "/nutrition.html", 
    "/coaching.html", 
    "/peptidesdb.html", 
    "/peptide-stacks.html", 
    "/contact.html"
  ].includes(path) || path.startsWith("/peptides/") || path.startsWith("/stacks/");

  // 2. If it's a match, run the injection
  if (isMasterPage) {
    const res = await next();
    
    // Safety check: fetch components
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

  // 3. Otherwise, just proceed
  return next();
}