# Summaries

[![Build and Deploy to GitHub Pages](https://github.com/dcamenisch/polyring-website/actions/workflows/node.js.yml/badge.svg)](https://github.com/dcamenisch/polyring-website/actions/workflows/node.js.yml)

This repository contains my study summaries and the website to display them. It's part of the [Polyring](https://polyring.ch) webring.

## Repository Structure

- **`summaries/`** - Contains all summary documents organized in a flexible folder structure
  - Create any folder hierarchy you like
  - Add `main.tex` for LaTeX projects
  - Add `main.typ` for Typst projects  
  - Add PDF files directly
- **`website/`** - Contains the website code that displays the summaries

## Document Management

This repository supports a flexible structure for organizing and building summaries:

### Folder Organization

You can organize summaries in any folder structure. For example:

```
summaries/
├── cheatsheets/
│   ├── analysis/
│   │   └── main.tex      # LaTeX project
│   └── linear-algebra/
│       └── main.typ      # Typst project
└── lectures/
    ├── algorithms/
    │   └── main.tex
    └── notes.pdf         # Direct PDF file
```

### LaTeX Projects

Create a folder anywhere in `summaries/` with a `main.tex` file:
- The entire folder is treated as a LaTeX project
- Can include images, additional .tex files, etc.
- Compiled automatically during build
- Output named after the folder path (e.g., `cheatsheets/analysis/` → `cheatsheets-analysis.pdf`)

### Typst Projects

Create a folder anywhere in `summaries/` with a `main.typ` file:
- The entire folder is treated as a Typst project
- Can include images, additional .typ files, etc.
- Compiled automatically during build
- Output named after the folder path (e.g., `lectures/algorithms/` → `lectures-algorithms.pdf`)

### Direct PDF Files

Place PDF files anywhere in `summaries/`:
- Copied directly to the website
- Filename includes the folder path for organization

During the GitHub Actions build process:
1. Script recursively searches `summaries/` for LaTeX projects (`main.tex` files)
2. Script recursively searches `summaries/` for Typst projects (`main.typ` files)
3. LaTeX projects are compiled using TeX Live, Typst projects using Typst compiler
4. All PDFs (compiled and direct) are copied to `website/src/uploads/`
5. Compiled PDFs are committed back to the repository for version control
6. Documents can be referenced in pages with `../uploads/folder-path-filename.pdf`

See `summaries/README.md` for detailed usage instructions and folder structure examples.

## GitHub Pages Deployment

This website is automatically built and deployed to GitHub Pages using GitHub Actions. Every push to the `main` branch triggers a build and deployment.

The site is available at: https://dcamenisch.github.io/summaries/

### Setup

To enable GitHub Pages deployment for this repository:

1. Go to repository Settings → Pages
2. Under "Build and deployment" → Source, select "GitHub Actions"
3. The workflow will automatically deploy on the next push to `main`
