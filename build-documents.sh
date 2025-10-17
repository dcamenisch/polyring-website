#!/bin/bash

# Build script for compiling LaTeX and Typst documents to PDFs
# This script is run during the GitHub Actions build process

set -e  # Exit on any error

echo "Starting document build process..."

# Create the uploads directory if it doesn't exist
mkdir -p src/uploads

# Function to compile LaTeX files
compile_latex() {
    local latex_dir="src/documents/latex"
    if [ -d "$latex_dir" ]; then
        # Use a safer glob pattern check
        shopt -s nullglob
        local tex_files=("$latex_dir"/*.tex)
        shopt -u nullglob
        
        if [ ${#tex_files[@]} -gt 0 ]; then
            echo "Compiling LaTeX files..."
            for tex_file in "${tex_files[@]}"; do
                filename=$(basename "$tex_file" .tex)
                echo "  Compiling $filename.tex..."
                
                # Run pdflatex twice to resolve references
                # Redirect output to /dev/null to reduce noise, but show errors
                cd "$latex_dir"
                pdflatex -interaction=nonstopmode "$filename.tex" > /dev/null || {
                    echo "    Warning: First pass of pdflatex failed for $filename.tex"
                }
                pdflatex -interaction=nonstopmode "$filename.tex" > /dev/null || {
                    echo "    Warning: Second pass of pdflatex failed for $filename.tex"
                }
                cd - > /dev/null
                
                # Move the PDF to uploads directory
                if [ -f "$latex_dir/$filename.pdf" ]; then
                    mv "$latex_dir/$filename.pdf" "src/uploads/$filename.pdf"
                    echo "    ✓ Created src/uploads/$filename.pdf"
                else
                    echo "    ✗ Failed to create PDF from $filename.tex"
                fi
                
                # Clean up auxiliary files
                rm -f "$latex_dir/$filename".{aux,log,out,toc,lof,lot,fls,fdb_latexmk,synctex.gz}
            done
        else
            echo "No LaTeX files found in $latex_dir"
        fi
    else
        echo "LaTeX directory $latex_dir does not exist"
    fi
}

# Function to compile Typst files
compile_typst() {
    local typst_dir="src/documents/typst"
    if [ -d "$typst_dir" ]; then
        # Use a safer glob pattern check
        shopt -s nullglob
        local typ_files=("$typst_dir"/*.typ)
        shopt -u nullglob
        
        if [ ${#typ_files[@]} -gt 0 ]; then
            echo "Compiling Typst files..."
            for typ_file in "${typ_files[@]}"; do
                filename=$(basename "$typ_file" .typ)
                echo "  Compiling $filename.typ..."
                
                # Compile Typst file to PDF
                typst compile "$typ_file" "src/uploads/$filename.pdf" || {
                    echo "    ✗ Failed to compile $filename.typ"
                    continue
                }
                
                echo "    ✓ Created src/uploads/$filename.pdf"
            done
        else
            echo "No Typst files found in $typst_dir"
        fi
    else
        echo "Typst directory $typst_dir does not exist"
    fi
}

# Function to copy pre-compiled PDFs
copy_pdfs() {
    local pdf_dir="src/documents/pdf"
    if [ -d "$pdf_dir" ]; then
        # Use a safer glob pattern check
        shopt -s nullglob
        local pdf_files=("$pdf_dir"/*.pdf)
        shopt -u nullglob
        
        if [ ${#pdf_files[@]} -gt 0 ]; then
            echo "Copying pre-compiled PDFs..."
            for pdf_file in "${pdf_files[@]}"; do
                filename=$(basename "$pdf_file")
                cp "$pdf_file" "src/uploads/$filename"
                echo "  ✓ Copied $filename to src/uploads/"
            done
        else
            echo "No pre-compiled PDFs found in $pdf_dir"
        fi
    else
        echo "PDF directory $pdf_dir does not exist"
    fi
}

# Run all build steps
copy_pdfs
compile_latex
compile_typst

echo ""
echo "Document build complete!"
echo "Files in src/uploads/:"
ls -lh src/uploads/ 2>/dev/null || echo "  (empty)"
