# Computational experiment

Define the decision the experiment must support before selecting code or plots. Record only the inputs needed to reproduce and interpret that decision: source data, preprocessing, parameters, units, random seeds, solver or sampler, tolerances, hardware or resource choices that affect the result, and output locations.

Prefer an existing project toolchain and a small decisive experiment. Use a baseline, analytical special case, residual, conservation check, sensitivity analysis, or independent implementation when it can change the conclusion. Do not run full environment discovery, generate a resource report, or rebuild dependencies unless that choice affects feasibility or reproducibility.

For stochastic work, preserve seed and sampling settings. For optimization and simulation, report convergence or failure conditions and the actual constraint or residual behavior. For plots, retain the source data and generation script and label uncertainty, exclusions, transformations, and units.

A script completing successfully is not evidence that the scientific conclusion is correct. Compare outputs with the property the task requires, then present the result and its conditions in the formal deliverable.

