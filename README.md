# uponvolume.com

Trevor's personal site and blog. Trader notes, writing, and occasional rants. Lives at [uponvolume.com](https://uponvolume.com).

Built with Jekyll. Deployed to GitHub Pages via GitHub Actions. Site bones cloned from Steph Ango's [stephango.com](https://stephango.com) / [slashpackaging](https://github.com/kepano/slashpackaging) approach — same minimal Jekyll structure, adapted for blog posts (a `notes` collection instead of a `directory` collection) and with topics taxonomy instead of business tags.

## Local dev

```sh
bundle install
bundle exec jekyll serve
# visit http://127.0.0.1:4000
```

## Writing a new post

Add a markdown file to `_notes/`. Filename convention: `YYYY-MM-DD-slug.md`. Frontmatter:

```yaml
---
title: The post title
date: 2026-06-01
topics: [trading, writing]
description: One-line teaser (optional).
---
```

The body is plain markdown.

## Structure

- `_config.yml` — site config
- `_pages/` — static pages (home, writing archive, about, now)
- `_notes/` — blog posts (the writing surface)
- `_layouts/` — Liquid templates (default, index, note, page, tag)
- `_includes/` — head / nav / footer partials
- `_sass/` — style partials (compiled by `styles.scss`)
- `_plugins/` — custom Jekyll plugins (tag pages)
- `styles.scss` — entry point that imports `_sass/` partials
- `feed.json`, `rss.xml` — site feeds
- `CNAME` — points the apex domain at GitHub Pages
- `.github/workflows/deploy.yml` — GitHub Actions deploy (allows custom plugins)

## License

Site content (posts, pages) — all rights reserved.
Site code (layouts, includes, sass) — adapted from [kepano/slashpackaging](https://github.com/kepano/slashpackaging) (MIT). Modifications licensed MIT.
