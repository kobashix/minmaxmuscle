#!/usr/bin/env python3
"""
Apply all pending SQL files in d1_pending/ to Cloudflare D1 in chronological order.
Requires: CLOUDFLARE_API_TOKEN env var with d1:write scope.
"""
import os, sys, json, re, glob, time
import urllib.request, urllib.error

ACCOUNT_ID = "5335e62d18861c4b58dbf632be4a73bc"
DB_ID      = "ffdc0a4e-5374-4a7c-bcae-1fb58188a774"
API_TOKEN  = os.environ.get("CLOUDFLARE_API_TOKEN", "")
BASE_URL   = f"https://api.cloudflare.com/client/v4/accounts/{ACCOUNT_ID}/d1/database/{DB_ID}/query"

if not API_TOKEN:
    print("ERROR: CLOUDFLARE_API_TOKEN not set. Add it as a GitHub Actions secret.", file=sys.stderr)
    sys.exit(1)


def cf_query(sql: str) -> dict:
    """Execute a single SQL statement against Cloudflare D1 REST API."""
    payload = json.dumps({"sql": sql}).encode()
    req = urllib.request.Request(
        BASE_URL,
        data=payload,
        headers={
            "Authorization": f"Bearer {API_TOKEN}",
            "Content-Type": "application/json",
        },
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            return json.loads(resp.read())
    except urllib.error.HTTPError as e:
        body = e.read().decode()
        return {"success": False, "errors": [{"message": f"HTTP {e.code}: {body}"}]}
    except Exception as ex:
        return {"success": False, "errors": [{"message": str(ex)}]}


def split_statements(sql: str) -> list[str]:
    """Split SQL into individual statements, respecting single-quoted string literals."""
    stmts, cur, in_str = [], [], False
    i = 0
    while i < len(sql):
        c = sql[i]
        if c == '-' and not in_str and i + 1 < len(sql) and sql[i+1] == '-':
            # Skip line comment
            while i < len(sql) and sql[i] != '\n':
                i += 1
            cur.append('\n')
        elif c == "'" and not in_str:
            in_str = True
            cur.append(c)
        elif c == "'" and in_str:
            cur.append(c)
            if i + 1 < len(sql) and sql[i+1] == "'":
                # Escaped single quote
                cur.append("'")
                i += 2
                continue
            else:
                in_str = False
        elif c == ';' and not in_str:
            stmt = ''.join(cur).strip()
            if stmt:
                stmts.append(stmt)
            cur = []
        else:
            cur.append(c)
        i += 1
    remaining = ''.join(cur).strip()
    if remaining:
        stmts.append(remaining)
    return [s for s in stmts if s and not re.match(r'^\s*$', s)]


def apply_file(path: str) -> tuple[int, int]:
    """Apply a SQL file. Returns (ok_count, error_count)."""
    print(f"\n{'='*60}")
    print(f"Applying: {os.path.basename(path)}")
    print(f"{'='*60}")
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    stmts = split_statements(content)
    print(f"  Statements found: {len(stmts)}")
    ok, errors = 0, 0
    for idx, stmt in enumerate(stmts, 1):
        # Show first 80 chars
        preview = stmt[:80].replace('\n', ' ')
        print(f"  [{idx}/{len(stmts)}] {preview}...")
        result = cf_query(stmt)
        if result.get("success"):
            ok += 1
        else:
            errors += 1
            errs = result.get("errors", [])
            for e in errs:
                msg = e.get("message", str(e))
                # INSERT OR IGNORE conflicts are not errors — ignore "UNIQUE constraint" messages
                if "UNIQUE constraint" in msg or "already exists" in msg.lower():
                    print(f"    SKIP (duplicate): {msg[:100]}")
                    ok += 1
                    errors -= 1
                else:
                    print(f"    ERROR: {msg[:200]}")
        time.sleep(0.1)  # Rate limit: 10 req/s
    print(f"  Result: {ok} ok, {errors} errors")
    return ok, errors


def main():
    sql_files = sorted(glob.glob("d1_pending/*.sql"))
    if not sql_files:
        print("No SQL files found in d1_pending/")
        sys.exit(0)

    print(f"Found {len(sql_files)} SQL file(s) to apply:")
    for f in sql_files:
        print(f"  {f}")

    total_ok, total_errors = 0, 0
    for path in sql_files:
        ok, errors = apply_file(path)
        total_ok += ok
        total_errors += errors

    print(f"\n{'='*60}")
    print(f"DONE — {len(sql_files)} files, {total_ok} statements ok, {total_errors} errors")
    if total_errors > 0:
        sys.exit(1)


if __name__ == "__main__":
    main()
