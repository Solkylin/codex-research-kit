# Mathematical modeling

Start with the object being modeled: variables, domains, units, quantifiers, assumptions, and the exact claim to establish. Separate definitions, known results, derivations, numerical evidence, estimates, and conjectures.

Choose the lightest method that can settle the claim:

- use a known theorem when its hypotheses match;
- use symbolic algebra for identities, simplification, and exact conditions;
- use special cases or counterexamples to test universal claims;
- use numerical experiments to explore behavior, not to replace a proof;
- use independent derivations or implementations when a decisive result is fragile.

Check only relevant failure modes: division by zero, sign conventions, noncommutativity, domain restrictions, limit exchanges, boundary conditions, dimensional consistency, conditioning, convergence, and constraints. Keep assumptions beside the result they support.

For optimization, estimation, and control models, state objective, decision variables, constraints, scaling, initialization, solver, stopping rule, and whether the result is local, global, empirical, or illustrative. Preserve units and meaningful precision.

The deliverable should show the reasoning a reader needs to use the result. It should not include hidden chain-of-thought, tool logs, agent coordination, or generic audit language.

