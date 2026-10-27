---
name: exploratory-data-analysis
description: Explore unfamiliar scientific datasets, their structure, missingness, distributions, units, and data quality before choosing an analysis. Use for substantive data exploration; known-schema extraction or plotting does not require a separate EDA report.
license: MIT license
metadata:
    skill-author: K-Dense Inc.
---

# Exploratory Data Analysis

Start from the question the data must answer. Existing schemas, instrument documentation, units and project decisions take precedence over generic format assumptions. A known-schema extraction, single calculation or existing-data plot can proceed directly without a separate exploratory workflow.

## Inspect what changes the analysis

Identify the actual container and format from extension, file header and metadata when needed. For common tables, arrays and MAT files use the established project reader; unfamiliar formats may require one of the references below. Do not load every format reference or install all domain libraries.

Read dimensions, data types, variable semantics, units, sample/replicate structure, missing values and provenance that affect the question. Choose distributions, outliers, duplicates, timing, correlations or image calibration only where meaningful. Preserve raw data, identify exclusions, and distinguish observations from inferred structure.

Use the existing Python/MATLAB/R data chain. Large files can use chunking, memory mapping or a justified sample; report the scope of that sample and do not treat the first records as representative without checking ordering. Resource detection is useful only when capacity can change the method.

## Tools and recovery

Use mature readers and the actual project environment. When a dependency is missing, first check an already available interpreter, relevant specialist tool or alternate compatible reader. Install a narrowly needed library in the appropriate isolated environment only when it has a clear benefit and fits the task authorization. A missing optional package is not a reason to end at installation advice when the requested analysis remains feasible.

Unknown formats warrant a header/metadata check and relevant vendor documentation before asking the user for information that is already in the supplied material. Preserve access restrictions and avoid uploading internal files to public parsers.

## Return the requested result

Provide concrete findings and the data, code, plot, table or report the user needs. Markdown EDA reports, fixed report sections, timestamps and machine logs are optional working artifacts, not the default final deliverable. Use the appropriate format skill for requested PDF, DOCX, PPTX or XLSX and inspect the real output.

For reproducibility retain the relevant source paths, transformations, sampling decisions, seed and dependency information; do not append a full environment report, all-file hashes or generic audit paragraphs.

## Format references and optional automation

Read a format reference only when the format or domain is unfamiliar and the information affects the task. These files describe candidate readers and methods; availability still depends on the current environment.

| Format family | Reference |
| --- | --- |
| Arrays, CSV, Excel, MAT, HDF5 and scientific containers | [general_scientific_formats.md](references/general_scientific_formats.md) |
| Microscopy and medical images | [microscopy_imaging_formats.md](references/microscopy_imaging_formats.md) |
| Spectroscopy and analytical chemistry | [spectroscopy_analytical_formats.md](references/spectroscopy_analytical_formats.md) |
| Chemistry and molecular files | [chemistry_molecular_formats.md](references/chemistry_molecular_formats.md) |
| Bioinformatics and genomics | [bioinformatics_genomics_formats.md](references/bioinformatics_genomics_formats.md) |
| Proteomics and metabolomics | [proteomics_metabolomics_formats.md](references/proteomics_metabolomics_formats.md) |

[eda_analyzer.py](scripts/eda_analyzer.py) and [report_template.md](assets/report_template.md) are optional for a requested EDA report. Resolve their absolute skill paths, inspect the actual reader support and results, and do not treat the format catalogue as proof that the script implements every listed format.
