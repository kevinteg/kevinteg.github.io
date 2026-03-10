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

## Local Development Workflow

To preview changes locally with proper CSS and asset loading:

```bash
# Option 1: Use make serve (rebuilds and starts server)
make serve
# Then open http://localhost:8000

# Option 2: Manual (if server already running)
make all
# Refresh browser at http://localhost:8000

# Option 3: Start server in background
cd _site && python3 -m http.server 8000 &
```

**Important**: Don't open `_site/index.html` directly via `file://` — absolute paths like `/css/main.css` won't resolve. Always use a local server.

## Interactive Editing Approach

For content like the resume, use an iterative conversation:

1. **Provide raw content** — dump work history, accomplishments, details
2. **Let Claude draft** — get an initial structure and wording
3. **Refine interactively** — give specific feedback like:
   - "Change X to Y"
   - "Remove this section"
   - "This is unclear, try rewording"
   - "Make this more concise"
4. **Build and preview** — `make resume && open _site/resume/resume.pdf`
5. **Repeat** — keep tweaking until satisfied

This works well for resumes, bios, and any content where tone and wording matter. Focus on *what* to say; let Claude handle formatting, Typst syntax, CSS, etc.

## Pandoc + HTML Notes

When mixing raw HTML with Markdown (e.g., for custom layouts):

- **Add blank lines** around HTML blocks — Pandoc needs them to parse correctly
- Use `hide-nav: true` in frontmatter to hide navigation on specific pages
- Raw HTML classes (like `class="hero"`) pass through to output and can be styled via CSS
