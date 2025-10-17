# Summaries

[![Build and Deploy to GitHub Pages](https://github.com/dcamenisch/polyring-website/actions/workflows/node.js.yml/badge.svg)](https://github.com/dcamenisch/polyring-website/actions/workflows/node.js.yml)

This repository contains my study summaries and the website to display them. It's part of the [Polyring](https://polyring.ch) webring.

## Repository Structure

- **`summaries/`** - Contains all summary documents (PDFs, LaTeX, and Typst source files)
- **`website/`** - Contains the website code that displays the summaries

## Document Management

This repository supports building PDFs from source files! You can add:

- **Pre-compiled PDFs** in `summaries/documents/pdf/` - These will be copied directly to the website
- **LaTeX files** (`.tex`) in `summaries/documents/latex/` - Automatically compiled to PDF during build
- **Typst files** (`.typ`) in `summaries/documents/typst/` - Automatically compiled to PDF during build

During the GitHub Actions build process:
1. LaTeX files are compiled using TeX Live
2. Typst files are compiled using the Typst compiler
3. All PDFs are copied to `website/src/uploads/` and then deployed to the website
4. Compiled PDFs are committed back to the repository for version control
5. Documents can be referenced in pages with `../uploads/filename.pdf`

See `summaries/documents/README.md` for detailed usage instructions.

## GitHub Pages Deployment

This website is automatically built and deployed to GitHub Pages using GitHub Actions. Every push to the `main` branch triggers a build and deployment.

The site is available at: https://dcamenisch.github.io/summaries/

### Setup

To enable GitHub Pages deployment for this repository:

1. Go to repository Settings → Pages
2. Under "Build and deployment" → Source, select "GitHub Actions"
3. The workflow will automatically deploy on the next push to `main`
