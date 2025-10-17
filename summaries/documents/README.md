# Documents Directory

This directory contains source files for PDFs that are built and deployed to the website.

## Structure

- **pdf/**: Pre-compiled PDF files that will be copied directly to the uploads directory
- **latex/**: LaTeX source files (.tex) that will be compiled to PDFs during the build process
- **typst/**: Typst source files (.typ) that will be compiled to PDFs during the build process

## Usage

### Adding Pre-compiled PDFs

Place your PDF files directly in the `pdf/` directory:
```
summaries/documents/pdf/MyDocument.pdf
```

### Adding LaTeX Documents

Place your LaTeX source files in the `latex/` directory:
```
summaries/documents/latex/MyDocument.tex
```

The build process will automatically compile them to PDFs using `pdflatex`.

### Adding Typst Documents

Place your Typst source files in the `typst/` directory:
```
summaries/documents/typst/MyDocument.typ
```

The build process will automatically compile them to PDFs using `typst`.

## Build Process

During the GitHub Actions build:
1. LaTeX files are compiled to PDFs using TeX Live
2. Typst files are compiled to PDFs using the Typst compiler
3. All PDFs (pre-compiled and generated) are copied to `website/src/uploads/`
4. The `website/src/uploads/` directory is then copied to the final output by Eleventy
5. Compiled PDFs are also committed back to the repository for version control

## Referencing Documents

After building, PDFs can be referenced in the website with:
```html
<a href="../uploads/MyDocument.pdf">MyDocument</a>
```
