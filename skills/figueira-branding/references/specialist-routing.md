# Specialist routing

## Objective
Indicate when a gate in this workflow should invoke specialized knowledge/skill/agent instead of being resolved generically inside `figueira-branding`.

## Mapping by gate

| Gate | When to invoke an external specialist | What |
|------|----------------------------------------|------|
| Gate 0 (context/scope) | Whenever the project spans multiple scopes (agency/organization + client) | A scope-resolution skill/routine, if available in the environment, to avoid mixing data between INSTITUTIONAL/CLIENT/PROSPECT |
| Gate 2 (research) | Extensive web/document research, visual survey of competitors | Web search and browser tools, when available |
| Gate 4 (naming) | Naming requires checking domain/trademark availability | Domain tools (e.g., a domain-registration MCP), when available — never declare availability without a real check |
| Gate 6-8 (territories/logo) | Producing final art in a real design tool | Figma MCP, when available and connected by the user |
| Gate 9 (applications) | Applying to the client's real site/store | CMS/hosting MCPs already configured in the environment, always with approval before any publishing |
| Gate 10 (rollout) | Real DNS/domain/hosting change | An available hosting/DNS MCP, only with explicit approval — these are irreversible actions |
| Gate 12 (handoff) | None — this gate is internal to the skill |

## General rule
No routing to an external specialist waives the requirement for explicit approval before irreversible actions (publishing, deploy, domain change, permanent deletion). Routing indicates *which tool to use*, never authorizes skipping approval.

## When not to route
If the required tool/MCP is not connected or authenticated, do not simulate the result — inform the owner that the step depends on an integration that isn't available yet, and continue with whatever can be resolved without it (e.g., proceeding with hypotheses clearly marked as `NO DATA`).
