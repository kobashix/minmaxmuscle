#!/usr/bin/env python3
"""
Publish all pending WordPress blog posts from wp_pending/*.json.
Skips posts whose slug already exists. Reports results.
"""
import os, sys, json, glob, base64, time
import urllib.request, urllib.error, urllib.parse

WP_URL   = os.environ.get("WP_URL", "https://blog.minmaxmuscle.com")
WP_USER  = os.environ.get("WP_USER", "drew@teqh.com")
WP_PASS  = os.environ.get("WP_APP_PASSWORD", "")
if not WP_PASS:
    print("ERROR: WP_APP_PASSWORD not set. Add it as a GitHub Actions secret.", file=sys.stderr)
    sys.exit(1)
AUTH     = base64.b64encode(f"{WP_USER}:{WP_PASS}".encode()).decode()
HEADERS  = {"Authorization": f"Basic {AUTH}", "Content-Type": "application/json"}

_category_cache: dict[str, int] = {}
_tag_cache: dict[str, int] = {}


def wp_request(method: str, path: str, data: dict | None = None) -> tuple[int, dict | list]:
    url = f"{WP_URL}/wp-json/wp/v2/{path}"
    payload = json.dumps(data).encode() if data else None
    req = urllib.request.Request(url, data=payload, headers=HEADERS, method=method)
    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            return resp.status, json.loads(resp.read())
    except urllib.error.HTTPError as e:
        body = e.read().decode()
        try:
            return e.code, json.loads(body)
        except Exception:
            return e.code, {"message": body}
    except Exception as ex:
        return 0, {"message": str(ex)}


def get_category_id(slug: str) -> int | None:
    if slug in _category_cache:
        return _category_cache[slug]
    status, data = wp_request("GET", f"categories?slug={slug}&per_page=1")
    if status == 200 and isinstance(data, list) and data:
        _category_cache[slug] = data[0]["id"]
        return data[0]["id"]
    # Create it
    name = slug.replace("-", " ").title()
    status, data = wp_request("POST", "categories", {"name": name, "slug": slug})
    if status in (200, 201) and "id" in data:
        _category_cache[slug] = data["id"]
        return data["id"]
    print(f"    WARN: Could not get/create category '{slug}': {data.get('message','')}")
    return None


def get_tag_id(name: str) -> int | None:
    slug = name.lower().replace(" ", "-")
    if slug in _tag_cache:
        return _tag_cache[slug]
    status, data = wp_request("GET", f"tags?search={urllib.parse.quote(name)}&per_page=5")
    if status == 200 and isinstance(data, list):
        for t in data:
            if t["name"].lower() == name.lower():
                _tag_cache[slug] = t["id"]
                return t["id"]
    # Create
    status, data = wp_request("POST", "tags", {"name": name})
    if status in (200, 201) and "id" in data:
        _tag_cache[slug] = data["id"]
        return data["id"]
    return None


def post_exists(post_slug: str) -> bool:
    status, data = wp_request("GET", f"posts?slug={post_slug}&per_page=1&status=any")
    return status == 200 and isinstance(data, list) and len(data) > 0


def publish_post(post_data: dict) -> tuple[bool, str]:
    post_slug = post_data.get("slug", "")
    title     = post_data.get("title", "")
    content   = post_data.get("content", "")
    excerpt   = post_data.get("excerpt", "")
    status    = post_data.get("status", "publish")

    # Category IDs — accept both "categories" and "categories_slug" keys
    cat_slugs = post_data.get("categories") or post_data.get("categories_slug") or ["peptides"]
    cat_ids = [cid for s in cat_slugs if (cid := get_category_id(s)) is not None]

    # Tag IDs
    tag_names = post_data.get("tags", [])
    tag_ids   = [tid for n in tag_names if (tid := get_tag_id(n)) is not None]

    if post_exists(post_slug):
        return False, f"SKIP — slug '{post_slug}' already exists"

    payload = {
        "title":   title,
        "slug":    post_slug,
        "content": content,
        "excerpt": excerpt,
        "status":  status,
    }
    if cat_ids:
        payload["categories"] = cat_ids
    if tag_ids:
        payload["tags"] = tag_ids

    http_status, resp = wp_request("POST", "posts", payload)
    if http_status in (200, 201):
        link = resp.get("link", resp.get("guid", {}).get("rendered", ""))
        return True, f"Published → {link}"
    return False, f"ERROR {http_status}: {resp.get('message', str(resp))[:200]}"


def main():
    json_files = sorted(glob.glob("wp_pending/*.json"))
    if not json_files:
        print("No JSON files found in wp_pending/")
        sys.exit(0)

    print(f"Found {len(json_files)} post(s) to publish:")
    for f in json_files:
        print(f"  {f}")

    published, skipped, errors = 0, 0, 0
    published_links = []

    for path in json_files:
        filename = os.path.basename(path)
        print(f"\n--- {filename}")
        with open(path, 'r', encoding='utf-8') as f:
            try:
                data = json.load(f)
            except json.JSONDecodeError as e:
                print(f"  ERROR parsing JSON: {e}")
                errors += 1
                continue

        title = data.get("title", filename)[:80]
        print(f"  Title: {title}")
        ok, msg = publish_post(data)
        print(f"  {msg}")

        if ok:
            published += 1
            published_links.append(msg.replace("Published → ", ""))
        elif msg.startswith("SKIP"):
            skipped += 1
        else:
            errors += 1

        time.sleep(0.5)  # Avoid rate limits

    print(f"\n{'='*60}")
    print(f"DONE — {published} published, {skipped} skipped (existing), {errors} errors")
    if published_links:
        print("\nPublished URLs:")
        for url in published_links:
            print(f"  {url}")

    if errors > 0:
        sys.exit(1)


if __name__ == "__main__":
    main()
