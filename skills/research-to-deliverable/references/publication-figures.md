# Publication figures

Treat a scientific figure as evidence for a claim. Before drawing, define the one-sentence conclusion, panel roles, audience, data semantics, units, replicate structure, uncertainty definition, target medium, physical size, and target journal or venue when known.

Select the backend from the existing data and toolchain. Use MATLAB for MATLAB/Simulink results, Python for Python data and Matplotlib/Seaborn/Plotly workflows, and R for R data and ggplot2 workflows. Keep data transformations and plot generation on that backend and preserve its source export. Vector composition and layout may follow in a suitable editor without moving the scientific computation; retain the edited vector source too. Use an available independent viewer or renderer to inspect exported results.

Preserve raw data and all meaningful transformations: filtering, normalization, binning, smoothing, exclusions, missing values, image adjustments, random seeds, and uncertainty calculations. Never hide, invent, or selectively enhance data to improve appearance.

Prefer editable vector output such as SVG, PDF, or EPS when supported. Add TIFF or high-resolution PNG only when the target venue requires it. Inspect the exported file for physical dimensions, fonts, embedded text, axis units, tick labels, panel labels, error bars, contrast, grayscale readability, file size, and actual rendering.

Use a restrained palette and redundant encodings where useful. Do not add AI-generated illustrations to empirical figures. Schematic or conceptual images are optional and must be labeled as such. Do not claim journal compliance until the exact journal and article type have been checked against official guidance.

Keep plotting scripts, source data, and final figure files together when the user needs reproducibility. Do not place generation logs, internal review language, or AI identity statements in the figure, caption, or formal manuscript.

## Interactive refinement

Load `publication-figures` for scientific figure creation or refinement. When the user needs direct selection, dragging, repeated fine adjustments, or vector composition, read its [interactive refinement reference](../../publication-figures/references/interactive-refinement.md). Choose by the actual plotting backend and by whether edits should persist as ordinary source code, replayable layout settings, a MATLAB figure/style script, or an editable SVG. Keep the existing source and scientific computation authoritative.

The current local workflow prioritizes Python and MATLAB. Machine-specific launchers and tested versions are maintained in the [toolchain index](../../../docs/toolchain-profile.md); do not add R editors, annotation-feedback infrastructure, or a separate large plotting application to enable this workflow.

