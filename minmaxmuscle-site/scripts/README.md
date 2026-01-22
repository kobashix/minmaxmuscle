# Peptide Scraper Bot

This script generates per-peptide pages by scraping **your provided source URLs** and extracting
publicly visible text blocks (headings, paragraphs, list items). It is intentionally conservative and
avoids heavy parsing or aggressive crawling.

## Usage

```bash
python scripts/peptide_scraper.py \
  --config scripts/peptide_sources.json \
  --output-dir generated/peptides \
  --format html
```

## Config

Update `scripts/peptide_sources.json` with the peptides you want and the sources you want to use.
Each entry should include a `name`, `slug`, and a list of `sources` URLs.

```json
{
  "peptides": [
    {
      "name": "Semaglutide",
      "slug": "semaglutide",
      "sources": [
        "https://en.wikipedia.org/wiki/Semaglutide"
      ]
    }
  ]
}
```

## Notes

- Always respect each site’s terms of service and robots.txt policies.
- The output is a starting point that should be reviewed and edited for accuracy.
- Generated HTML includes the site navigation and a back-link to the Peptides overview.
