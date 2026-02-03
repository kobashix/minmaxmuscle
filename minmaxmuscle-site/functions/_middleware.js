export async function onRequest(context) {
  const url = new URL(context.request.url);

  // 1. API BYPASS: Let the specific function files handle these
  if (url.pathname.startsWith('/api/')) {
    return context.next();
  }

  // 2. YOUR EXISTING CLEAN URL LOGIC
  if (url.pathname === "/peptides") {
    return context.env.ASSETS.fetch(new URL("/peptides.html", url));
  }

  return context.next();
}
