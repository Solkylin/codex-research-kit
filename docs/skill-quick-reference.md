# Skill quick reference

## Main entry

- `research-to-deliverable`: multi-step research, mathematics, engineering, evidence synthesis and formal delivery. It is the only implicit entrypoint in this package.

## Explicit support skills

- `publication-figures`: scientific data figures, uncertainty, panels, vector export and figure quality.
- `docling`: complex PDF and document structure extraction.
- `technical-presentations`: evidence-to-slide organization, narration and editable technical presentations.

## Route by object

| Object | Select | Preserve |
|---|---|---|
| Paper, standard or current fact | research lookup and literature methods | original source and citation chain |
| Equation or model | mathematical modeling reference and symbolic tool | definitions, units, assumptions and derivation |
| Dataset or simulation | computational experiment reference and matching backend | parameters, seeds, transforms and results |
| Scientific figure | publication figures plus Python/MATLAB/R backend | data source, script and editable export |
| Complex PDF | docling when structure changes the result | page mapping and original-page checks |
| PPTX or technical talk | technical presentations plus target-format tool | evidence links, editable objects and rendered deck |
| LaTeX/Quarto/Pandoc | deliverable reference plus target format skill | source, bibliography, assets and final file |
| MATLAB/Simulink | narrow MATLAB/Simulink skill and `matlab-control` only for live sessions | model/source, session state and numerical evidence |

## Tool selection

1. Inspect the current environment and the project profile.
2. Choose the narrowest tool that can satisfy the completion criteria.
3. Call or execute the selected tool; a skill name or cached plugin is not evidence of execution.
4. Check the result at the level that matters: source, calculation, rendered artifact or live behavior.
5. Keep process records outside formal deliverables.
