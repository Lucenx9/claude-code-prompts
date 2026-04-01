# Claude Code Prompts — Extracted & Organized

> **All content in this repository belongs to [Anthropic](https://www.anthropic.com/).** This is an unofficial extraction for **educational and research purposes only**. Source: [sanbuphy/claude-code-source-code](https://github.com/sanbuphy/claude-code-source-code) — decompiled source of Claude Code v2.1.88.

An organized collection of all prompts, templates, instruction blocks and message builders extracted from the Claude Code source code — Anthropic's official CLI for Claude.

## Structure

```
system/                        → System prompt chain (8 files)
  01-identity.md                  Identity prefixes
  02-intro.md                     Intro + cyber risk
  03-system-rules.md              System behavior rules
  04-doing-tasks.md               Task execution guidelines
  05-actions-care.md              Reversibility / blast radius
  06-using-tools.md               Tool preference steering
  07-tone-and-style.md            Output style + efficiency
  08-environment.md               Env info + knowledge cutoffs

tools/                         → Per-tool prompts (16 files)
  bash.md                         Bash + git commit/PR + sandbox
  file-read.md                    Read
  file-edit.md                    Edit
  file-write.md                   Write
  glob.md                         Glob
  grep.md                         Grep
  agent.md                        Agent tool + fork mode
  web-fetch.md                    WebFetch
  web-search.md                   WebSearch
  ask-user-question.md            AskUserQuestion
  enter-plan-mode.md              EnterPlanMode
  sleep.md                        Sleep
  todo-write.md                   TodoWrite
  tool-search.md                  ToolSearch
  skill.md                        Skill invocation
  send-message.md                 SendMessage
  notebook-edit.md                NotebookEdit

agents/                        → Built-in agent prompts (6 files)
  general-purpose.md              General-purpose agent
  explorer.md                     Explore (read-only, fast)
  planner.md                      Plan (read-only, architect)
  verifier.md                     Verification (adversarial)
  guide.md                        Claude Code Guide
  coordinator.md                  Coordinator mode (multi-worker)

memory/                        → Persistent memory system (3 files)
  memory-types.md                 Four-type taxonomy
  memory-extraction.md            Background extraction prompt
  session-memory.md               Session notes template + update prompt

services/                      → Background service prompts (2 files)
  compact.md                      Context compaction (no-tools)
  magic-docs.md                   Auto-documentation

safety/                        → Safety instructions (2 files)
  cyber-risk.md                   Security boundaries
  undercover.md                   Attribution stripping
```

## Disclaimer

- **Copyright:** All prompts, instructions, and text content are the intellectual property of **Anthropic, PBC**.
- **Source:** Extracted from the decompiled source published at [sanbuphy/claude-code-source-code](https://github.com/sanbuphy/claude-code-source-code).
- **Purpose:** This repository exists solely for **educational purposes** — to study and understand how production AI agent systems are architected.
- **No affiliation:** This project is not affiliated with, endorsed by, or sponsored by Anthropic.
- **License:** The original code is subject to Anthropic's license terms. Refer to the original source for licensing details.

## Stats

- **37 files** across 6 categories
- Covers the full system prompt assembly chain, all major tool descriptions, 5 built-in agents + coordinator mode, the complete memory type taxonomy, and background service prompts
