# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Pandoc-based personal website deployed to GitHub Pages. Features a resume page with Typst PDF generation and a writing section for blog posts.

## Development Commands

```bash
make all        # Build entire site to _site/
make serve      # Clean, build, and serve locally at http://localhost:8000
make clean      # Remove _site/ directory
make resume     # Build resume HTML + PDF only
make writing    # Build writing section only
make pages      # Build homepage only
make assets     # Copy CSS to _site/
```

## Architecture

- **Content**: Markdown files with YAML frontmatter (`index.md`, `resume/index.md`, `writing/*/index.md`)
- **Templates**: Pandoc HTML templates in `templates/` using `$variable$` syntax
- **Styling**: CSS in `css/`, linked via `--css` flags in Makefile
- **Build**: Makefile orchestrates Pandoc for HTML and Typst for PDF generation
- **Deploy**: GitHub Actions workflow builds on push to main and deploys to GitHub Pages

## Adding New Writing Posts

1. Create `writing/<slug>/index.md` with YAML frontmatter containing `title`
2. Add link to `writing/index.md`
3. Run `make writing` to build
