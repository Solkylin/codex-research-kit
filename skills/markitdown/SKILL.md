---
name: markitdown
description: Convert supported documents and media to Markdown or extract text for analysis. Use when the user requests conversion, extraction, or a working Markdown representation; do not add diagrams or rewrite content unless requested.
license: MIT
---

# MarkItDown

Preserve source meaning, headings, tables, links, equations, captions, and metadata as far as the format allows. Report conversion limits that affect interpretation, such as OCR uncertainty, missing layout, unsupported embedded objects, or lost annotations.

Use Markdown as a working or process representation by default. If the user requests a formal deliverable, route to the target format skill and inspect the final file instead of treating the Markdown conversion as the finished artifact.

Do not generate diagrams, schematics, summaries, or visual enhancements during conversion unless the user explicitly asks for them. Keep temporary extraction files out of the final delivery directory.
