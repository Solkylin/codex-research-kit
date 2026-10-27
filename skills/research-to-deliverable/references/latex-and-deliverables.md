# LaTeX and formal deliverables

Choose the format from the audience and the requested use. LaTeX is a formal source-and-rendered-output path; PDF, DOCX, PPTX, and XLSX are formal deliverables when requested. Markdown is the default working-note and process-explanation format unless the user explicitly requests it as the final format.

For Quarto/Pandoc documents, inspect the `.qmd` YAML, executable kernel, citations, and output formats first. Quarto may use the existing XeLaTeX/LuaLaTeX engines for PDF.

Resolve machine entry paths from the [research toolchain index](../../../docs/toolchain-profile.md), using the project's environment first. In this Windows setup, invoke the documented Quarto wrapper explicitly when no project launcher is specified; plain `quarto` on PATH may bypass the configured cache and interpreter defaults. Quarto/Pandoc are executable tools, not required skills.

For standalone LaTeX documents, use the host's native editor and compiler when available and follow its file-opening workflow. For local multi-file projects or templates with local dependencies, inspect the existing TeX toolchain; prefer `xelatex` or `lualatex` for Chinese documents when the template supports them. Preserve `.tex`, `.bib`/`.bbl` as needed, figure sources, and the rendered PDF. Fix blocking compile errors within the actual tool's repair limits, then inspect formulas, fonts, figures, tables, page breaks, references, and cross-references. An unresolved build must be reported at its actual state rather than retried indefinitely.

Use existing Typst CLI for requested Typst documents or an agreed lightweight technical-document path. Preserve `.typ` and required assets with the PDF; do not silently switch an existing LaTeX journal template to Typst. Source files and output formats follow the requested use.

For scanned PDFs, run Tesseract/OCRmyPDF only when OCR is needed, then inspect the searchable PDF and retain the original scan separately.

For DOCX and PPTX, use the format-specific skill and inspect the rendered or opened file. For XLSX, check formulas, recalculation, units, number formats, and key displayed values. For all formats, keep source data and scripts only when they are needed for editing or reproduction.

Formal files contain the content a reader needs: methods, assumptions, equations, sources, errors, applicability, and actual results. Leave out tool logs, agent roles, internal audit phrases, generic disclaimers, and progress history. Do not add placeholder authors, dates, results, or citations.

