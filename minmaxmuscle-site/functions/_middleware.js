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