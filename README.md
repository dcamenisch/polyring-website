# polyring-website

[![Build and Deploy to GitHub Pages](https://github.com/dcamenisch/polyring-website/actions/workflows/node.js.yml/badge.svg)](https://github.com/dcamenisch/polyring-website/actions/workflows/node.js.yml)

Source code for [my personal website](https://n.ethz.ch/~dcamenisch/), that is part of the [Polyring](https://polyring.ch). The website includes a blog, summaries and an about me section.

## Document Management

This repository now supports building PDFs from source files! You can add:

- **Pre-compiled PDFs** in `src/documents/pdf/` - These will be copied directly to the website
- **LaTeX files** (`.tex`) in `src/documents/latex/` - Automatically compiled to PDF during build
- **Typst files** (`.typ`) in `src/documents/typst/` - Automatically compiled to PDF during build

During the GitHub Actions build process:
1. LaTeX files are compiled using TeX Live
2. Typst files are compiled using the Typst compiler
3. All PDFs are copied to `src/uploads/` and then deployed to the website
4. Documents can be referenced in pages with `../uploads/filename.pdf`

See `src/documents/README.md` for detailed usage instructions.

## GitHub Pages Deployment

This website is automatically built and deployed to GitHub Pages using GitHub Actions. Every push to the `main` branch triggers a build and deployment.

The site is available at: https://dcamenisch.github.io/polyring-website/

### Setup

To enable GitHub Pages deployment for this repository:

1. Go to repository Settings → Pages
2. Under "Build and deployment" → Source, select "GitHub Actions"
3. The workflow will automatically deploy on the next push to `main`
