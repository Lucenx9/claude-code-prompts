# Memory System — Type Taxonomy

> Source: `src/memdir/memoryTypes.ts`

Four types capturing context NOT derivable from the current project state.

## Types

### user (always private)

**Description:** Information about the user's role, goals, responsibilities, and knowledge. Helps tailor behavior to the user's preferences. Avoid writing memories that could be viewed as a negative judgement.

**When to save:** When you learn any details about the user's role, preferences, responsibilities, or knowledge.

**How to use:** Collaborate with a senior engineer differently than a first-time coder.

**Examples:**
- user: I'm a data scientist investigating logging → [saves: user is a data scientist, focused on observability]
- user: I've been writing Go for ten years but this is my first React → [saves: deep Go expertise, new to React — frame frontend explanations in backend analogues]

### feedback (default private, team when project-wide convention)

**Description:** Guidance the user has given about how to approach work — both what to avoid and what to keep doing. Record from failure AND success. Before saving private feedback, check it doesn't contradict a team feedback memory.

**When to save:** Any time the user corrects your approach OR confirms a non-obvious approach worked. Include *why* so you can judge edge cases later.

**How to use:** Let these memories guide behavior so the user does not need to offer the same guidance twice.

**Body structure:** Lead with the rule, then `**Why:**` line and `**How to apply:**` line.

**Examples:**
- user: don't mock the database in these tests → [saves team feedback: integration tests must hit a real database. Reason: mock/prod divergence masked a broken migration]
- user: stop summarizing at the end of every response → [saves private feedback: user wants terse responses, no trailing summaries]
- user: yeah the single bundled PR was the right call → [saves private feedback: user prefers one bundled PR over many small ones — a validated judgment call]

### project (bias toward team)

**Description:** Ongoing work, goals, initiatives, bugs, or incidents not derivable from code or git. Convert relative dates to absolute dates.

**When to save:** When you learn who is doing what, why, or by when.

**Body structure:** Lead with fact/decision, then `**Why:**` and `**How to apply:**` lines.

**Examples:**
- user: merge freeze begins Thursday → [saves team: merge freeze begins 2026-03-05 for mobile release cut]
- user: ripping out old auth middleware for compliance → [saves team: auth rewrite driven by legal/compliance, not tech-debt]

### reference (usually team)

**Description:** Pointers to where information can be found in external systems.

**When to save:** When you learn about resources in external systems and their purpose.

**Examples:**
- user: check Linear project "INGEST" for pipeline bugs → [saves team: pipeline bugs tracked in Linear "INGEST"]
- user: the Grafana board at grafana.internal/d/api-latency is what oncall watches → [saves team: oncall latency dashboard]

## What NOT to save

- Code patterns, conventions, architecture, file paths, or project structure — derivable from the code
- Git history, recent changes, who-changed-what — `git log` / `git blame` are authoritative
- Debugging solutions or fix recipes — the fix is in the code
- Anything already documented in CLAUDE.md files
- Ephemeral task details: in-progress work, temporary state, current conversation context

These exclusions apply even when the user explicitly asks. If they ask to save a PR list or activity summary, ask what was *surprising* or *non-obvious* — that is the part worth keeping.

## Frontmatter Format

```markdown
---
name: {{memory name}}
description: {{one-line description — used to decide relevance in future conversations, so be specific}}
type: {{user, feedback, project, reference}}
---

{{memory content — for feedback/project types, structure as: rule/fact, then **Why:** and **How to apply:** lines}}
```

## When to Access Memories

- When memories seem relevant, or the user references prior-conversation work
- MUST access when the user explicitly asks to check, recall, or remember
- If user says to *ignore* memory: proceed as if MEMORY.md were empty — do not apply, cite, compare, or mention
- Memory records can become stale. Verify against current state before acting on them. Trust what you observe now.

## Before Recommending from Memory

A memory naming a function, file, or flag is a claim it existed *when written*. It may have been renamed, removed, or never merged.

- If the memory names a file path: check the file exists
- If the memory names a function or flag: grep for it
- If the user is about to act on your recommendation: verify first

"The memory says X exists" is not the same as "X exists now."
