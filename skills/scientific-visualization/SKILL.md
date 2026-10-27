---
name: scientific-visualization
description: Implement Python scientific-figure layouts, styles, palettes, and exports with Matplotlib, Seaborn, or Plotly. Use for concrete plotting implementation; publication-figures owns the scientific figure contract and interactive-editor routing.
license: MIT license
metadata:
    skill-author: K-Dense Inc.
---

# Python Scientific Visualization

Use this skill for Python plotting implementation after selecting the actual backend. `publication-figures` owns scientific meaning, target size, editable delivery, and interactive refinement. MATLAB and R data remain on their existing toolchains; this is not a second general orchestration workflow.

## Select the implementation

- Matplotlib gives direct control of axes, artists, layout and vector export. Use explicit figure/axes handles when a task has multiple plots.
- Seaborn provides statistical plots on Matplotlib. Choose axes-level functions for an existing multi-panel figure and figure-level functions for faceting; do not create an unintended extra figure.
- Preserve existing Plotly figures, traces and layout when interactivity or the project uses that backend. HTML/Figure JSON and static exports serve different delivery needs; verify any required static-export runtime before selecting it.
- Direct selection, dragging or repeated detail edits route through `publication-figures` and its interactive-refinement reference. Do not substitute another code-only redraw when the user needs an editor or a persistent editable layout.

## Styling and statistics

Use the project's template and the actual final display size. Apply restrained palettes, redundant encodings, readable labels, appropriate scales and panel alignment. Units belong on physical quantities; dimensionless variables need their scientific definition, not invented units.

Error bars, confidence intervals, significance markers, smoothing, aggregation and exclusions follow the actual data and analysis. State uncertainty definitions and samples when relevant; do not add statistical decorations to deterministic curves or manufacture tests to fill a checklist. Keep meaningful color encodings and three-dimensional data when they are required by the scientific question.

Bundled journal styles and requirement tables are historical presets and examples. They do not establish current venue compliance. When a venue is specified, consult its current official guidance and adapt parameters; do not infer compliance from applying a style name. No universal font, figure width or DPI applies to every output.

## Export and inspect

Keep the plotting script and source data. Prefer an appropriate vector format for line art. Raster dimensions and effective PPI depend on the final physical size; a Plotly scale factor alone is not a DPI guarantee. Vector output itself has no single raster DPI, though embedded images still have effective resolution.

For editable Matplotlib SVG text, use `svg.fonttype='none'` when appropriate; preserve text and embed supported fonts in PDF instead of automatically outlining all lettering. Inspect the exported file and its rendered appearance for clipping, missing glyphs, legends, panel alignment and the properties actually changed. Recompute scientific results only when the underlying inputs or method changed.

## Reuse existing resources when useful

Resolve these paths relative to this skill directory, not the project working directory. Inspect the actual helper interface before calling it; the scripts are optional implementations, not required execution steps or independent proofs of journal compliance.

| Need | Resource |
| --- | --- |
| Matplotlib layout and concrete plot examples | [matplotlib_examples.md](references/matplotlib_examples.md) |
| Palette design and contrast options | [color_palettes.md](references/color_palettes.md), [color_palettes.py](assets/color_palettes.py) |
| Reusable style configuration | [style_presets.py](scripts/style_presets.py), existing `.mplstyle` files in `assets/` |
| Multi-format export or size inspection | [figure_export.py](scripts/figure_export.py) |
| Historical production checklists | [publication_guidelines.md](references/publication_guidelines.md), [journal_requirements.md](references/journal_requirements.md); use only relevant implementation material, replacing outdated or universalized requirements with the current project contract |

For a small plot, native plotting-library calls are often sufficient. Load only resources that change the implementation and return the requested editable source and actual figure files.
