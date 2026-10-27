---
name: get-available-resources
description: Inspect CPU, GPU, memory, disk, or parallel capacity when resource constraints can change a scientific computation or tool choice. Use conditionally before large data, GPU, parallel, or memory-sensitive work; do not run for ordinary calculations.
license: MIT
---

# Available Resources

Run resource detection only when it can change the plan: large data, GPU selection, parallel worker count, out-of-core processing, long simulation, or memory-sensitive model fitting. A quick direct probe is sufficient for small decisions.

Write a resource report only when the project needs a reproducible record of the decision or the user requests it. Otherwise keep the result in the working conversation and use it to choose a tool or configuration.

Report the relevant facts and their impact: available device, memory, disk, worker limit, or missing dependency. Do not treat a resource probe as scientific validation, and do not include generated machine reports in formal deliverables unless requested.
