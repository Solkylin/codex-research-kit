---
name: publication-figures
description: Create, interactively refine, or review scientific data figures and multi-panel plots for papers and engineering reports; follow the existing MATLAB, Python, or R data chain and export editable figures.
license: MIT
---

# Publication Figures

Use this skill when the output is a scientific or engineering figure that readers will use as evidence. Route the task by the existing data and toolchain: MATLAB/Simulink data stays in MATLAB when practical, Python data uses Python, and R data uses R. Keep data transformations and plot generation on the selected backend and preserve its source export. Vector layout refinement may then use a suitable editor; preserve the edited vector source as well. Inspect exported results with an available viewer or renderer. Independent rendering checks do not change the data-generation backend.

## Figure contract

Before plotting, state or infer:

- the one-sentence claim the figure should support;
- panel roles and evidence hierarchy;
- audience, medium, physical size, and target journal or venue when known;
- variable semantics, units, sample or replicate structure, missing values, exclusions, and uncertainty definition;
- source-data paths, transformations, and export requirements.

If a target journal is unknown, produce a general publication-quality figure and label journal-specific choices as pending. Do not claim compliance with a venue without checking its official guidance.

## Integrity and design

Preserve raw inputs and meaningful transformations, including filtering, normalization, smoothing, binning, image adjustments, exclusions, seeds, and uncertainty calculations. Never invent, hide, selectively enhance, or silently reconnect data to improve appearance.

Use restrained colors, redundant encodings when helpful, honest axes and scales, clear units, legible typography, and direct labels where they reduce unnecessary legend lookup. For an optional conceptual raster asset, prefer Codex's built-in official `image_gen`; use external image plugins only when requested or when their specialized editing capability is needed. Never use generated images for empirical data, measurements, plotted values, formulas, or evidence-bearing technical diagrams.

Prefer editable vector output such as SVG, PDF, or EPS. Add TIFF or high-resolution PNG when the target requires it. Keep the plotting script and source data with the output when reproducibility or later editing matters.

## Interactive refinement

For direct object selection, dragging, repeated detail changes, or vector composition, read [interactive-refinement.md](references/interactive-refinement.md). Choose the editor by the actual plotting backend and how changes must persist; use the installed local launchers when needed. Ordinary source edits and previews remain sufficient when they complete the request. Keep calculations and data semantics in the source backend while allowing vector layout work in a suitable editor.

## Final QA

Inspect the actual exported file and a rendered preview. Check dimensions, fonts, embedded text, panel labels, axis units, tick labels, error bars, uncertainty notation, contrast, grayscale readability, clipping, transparency, file size, and consistency across panels. For MATLAB and Simulink outputs, keep the project coordinate, unit, and sampling conventions.

The figure and caption contain scientific content and conditions that affect interpretation. They do not contain tool logs, agent roles, internal audit terms, AI identity statements, progress history, or generic defensive wording.

