#!/usr/bin/env python3
"""Generate peptide detail pages from web sources.

Usage:
  python scripts/peptide_scraper.py \
    --config scripts/peptide_sources.json \
    --output-dir generated/peptides \
    --format html

Notes:
- This script is intentionally conservative: it only extracts visible text
  from headings, paragraphs, and list items.
- Always respect source site terms and robots.txt.
"""
from __future__ import annotations

import argparse
import json
import os
import re
import textwrap
import time
import urllib.error
import urllib.request
from dataclasses import dataclass
from html.parser import HTMLParser
from typing import Iterable, List


TEXT_TAGS = {"p", "li"}
HEADING_TAGS = {"h1", "h2", "h3"}


@dataclass
class SourceResult:
    url: str
    text_blocks: List[str]


class TextExtractor(HTMLParser):
    def __init__(self) -> None:
        super().__init__()
        self._capture = False
        self._capture_heading = False
        self.blocks: List[str] = []
        self._buffer: List[str] = []

    def handle_starttag(self, tag: str, attrs: List[tuple[str, str]]) -> None:
        tag = tag.lower()
        if tag in TEXT_TAGS:
            self._capture = True
            self._buffer = []
        elif tag in HEADING_TAGS:
            self._capture_heading = True
            self._buffer = []

    def handle_endtag(self, tag: str) -> None:
        tag = tag.lower()
        if tag in TEXT_TAGS and self._capture:
            self._flush_block()
            self._capture = False
        elif tag in HEADING_TAGS and self._capture_heading:
            self._flush_block(prefix="# ")
            self._capture_heading = False

    def handle_data(self, data: str) -> None:
        if self._capture or self._capture_heading:
            cleaned = re.sub(r"\s+", " ", data.strip())
            if cleaned:
                self._buffer.append(cleaned)

    def _flush_block(self, prefix: str = "") -> None:
        if not self._buffer:
            return
        block = " ".join(self._buffer).strip()
        if block:
            self.blocks.append(f"{prefix}{block}".strip())
        self._buffer = []


def load_config(path: str) -> dict:
    with open(path, "r", encoding="utf-8") as handle:
        return json.load(handle)


def fetch_url(url: str, user_agent: str, timeout: int) -> str:
    req = urllib.request.Request(url, headers={"User-Agent": user_agent})
    with urllib.request.urlopen(req, timeout=timeout) as response:
        charset = response.headers.get_content_charset() or "utf-8"
        return response.read().decode(charset, errors="ignore")


def extract_text(html: str) -> List[str]:
    parser = TextExtractor()
    parser.feed(html)
    return parser.blocks


def normalize_blocks(blocks: Iterable[str]) -> List[str]:
    seen = set()
    cleaned: List[str] = []
    for block in blocks:
        compact = re.sub(r"\s+", " ", block).strip()
        if compact and compact not in seen:
            cleaned.append(compact)
            seen.add(compact)
    return cleaned


def scrape_sources(urls: Iterable[str], user_agent: str, delay: float, timeout: int) -> List[SourceResult]:
    results: List[SourceResult] = []
    for url in urls:
        try:
            html = fetch_url(url, user_agent=user_agent, timeout=timeout)
        except urllib.error.URLError as exc:
            print(f"[warn] Failed to fetch {url}: {exc}")
            results.append(SourceResult(url=url, text_blocks=[]))
            continue
        blocks = normalize_blocks(extract_text(html))
        results.append(SourceResult(url=url, text_blocks=blocks))
        time.sleep(delay)
    return results


def build_markdown(name: str, sources: List[SourceResult]) -> str:
    lines = [f"# {name}", "", "## Summary", "", "This page aggregates public web sources for educational context.", ""]
    for result in sources:
        lines.append(f"## Source: {result.url}")
        lines.append("")
        if result.text_blocks:
            lines.extend([f"- {block}" for block in result.text_blocks])
        else:
            lines.append("- Source could not be fetched or parsed.")
        lines.append("")
    return "\n".join(lines).strip() + "\n"


def build_html(name: str, slug: str, sources: List[SourceResult]) -> str:
    blocks = []
    for result in sources:
        entries = "".join(
            f"<li>{block}</li>" for block in (result.text_blocks or ["Source could not be fetched or parsed."])
        )
        blocks.append(
            textwrap.dedent(
                f"""
                <section class=\"peptide-source\">
                  <h2>Source</h2>
                  <p><a href=\"{result.url}\" rel=\"noopener noreferrer\" target=\"_blank\">{result.url}</a></p>
                  <ul>
                    {entries}
                  </ul>
                </section>
                """
            ).strip()
        )

    body_sections = "\n".join(blocks)
    return textwrap.dedent(
        f"""
        <!DOCTYPE html>
        <html lang=\"en\">
        <head>
          <meta charset=\"UTF-8\" />
          <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
          <title>MinMaxMuscle | {name}</title>
          <meta name=\"description\" content=\"Curated source summaries for {name}.\" />
          <link rel=\"stylesheet\" href=\"../assets/css/style.css\" />
        </head>
        <body>
          <header>
            <div class=\"nav-container\">
              <div class=\"logo\">
                <img src=\"../assets/img/logo.png\" alt=\"MinMaxMuscle Logo\" />
                <span>MINMAXMUSCLE</span>
              </div>
              <nav class=\"desktop-nav\">
                <a href=\"../index.html\">Home</a>
                <a href=\"../training.html\">Training</a>
                <a href=\"../nutrition.html\">Nutrition</a>
                <a href=\"../peptides.html\">Peptides</a>
                <a href=\"../coaching.html\">Coaching</a>
                <a href=\"../contact.html\">Contact</a>
              </nav>
              <div class=\"hamburger\" id=\"hamburger\">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </div>
            <div class=\"mobile-menu\" id=\"mobileMenu\">
              <a href=\"../index.html\">Home</a>
              <a href=\"../training.html\">Training</a>
              <a href=\"../nutrition.html\">Nutrition</a>
              <a href=\"../peptides.html\">Peptides</a>
              <a href=\"../coaching.html\">Coaching</a>
              <a href=\"../contact.html\">Contact</a>
            </div>
          </header>
          <main>
            <section class=\"hero\">
              <h1>{name}</h1>
              <p>Automated source summaries for educational review. Verify claims with qualified professionals.</p>
            </section>
            {body_sections}
            <p class=\"disclaimer-link\"><small>Back to the main peptide list: <a href=\"../peptides.html\">Peptides Overview</a>.</small></p>
          </main>
          <footer>
            © MinMaxMuscle. Discipline builds the body. Systems keep it.
          </footer>
          <script src=\"../assets/js/script.js\"></script>
        </body>
        </html>
        """
    ).strip() + "\n"


def write_output(content: str, output_dir: str, slug: str, fmt: str) -> str:
    os.makedirs(output_dir, exist_ok=True)
    filename = f"{slug}.{fmt}"
    path = os.path.join(output_dir, filename)
    with open(path, "w", encoding="utf-8") as handle:
        handle.write(content)
    return path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Scrape peptide sources into structured pages.")
    parser.add_argument("--config", required=True, help="Path to JSON config with peptides and sources.")
    parser.add_argument("--output-dir", required=True, help="Output directory for generated pages.")
    parser.add_argument("--format", choices=["html", "md"], default="html")
    parser.add_argument("--delay", type=float, default=1.0, help="Delay between requests in seconds.")
    parser.add_argument("--timeout", type=int, default=15)
    parser.add_argument(
        "--user-agent",
        default="MinMaxMusclePeptideBot/1.0 (+https://example.com)",
        help="User agent string for requests.",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    config = load_config(args.config)
    peptides = config.get("peptides", [])
    if not peptides:
        raise SystemExit("Config contains no peptides.")

    for peptide in peptides:
        name = peptide.get("name")
        slug = peptide.get("slug")
        sources = peptide.get("sources", [])
        if not name or not slug or not sources:
            print(f"[warn] Skipping invalid entry: {peptide}")
            continue
        scraped = scrape_sources(sources, user_agent=args.user_agent, delay=args.delay, timeout=args.timeout)
        if args.format == "html":
            content = build_html(name, slug, scraped)
        else:
            content = build_markdown(name, scraped)
        path = write_output(content, args.output_dir, slug, args.format)
        print(f"[ok] Wrote {path}")


if __name__ == "__main__":
    main()
