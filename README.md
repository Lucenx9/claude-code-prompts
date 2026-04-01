# Claude Code Prompts — Extracted & Organized

> **All content in this repository belongs to [Anthropic](https://www.anthropic.com/).** This is an unofficial extraction for **educational and research purposes only**.
>
> This repo started from [sanbuphy/claude-code-source-code](https://github.com/sanbuphy/claude-code-source-code), a decompiled partial source dump. A more authoritative local reference is now available at `/home/simone/claude-code-complete`, which is a full monorepo clone with executable source, internal `packages/@ant/*`, and the prompt builders used by the real app.

An organized collection of all prompts, templates, instruction blocks and message builders extracted from the Claude Code source code — Anthropic's official CLI for Claude.

## Status

- The markdown files in this repo are a curated extraction snapshot, not a canonical mirror of the full source tree.
- When `/home/simone/claude-code-complete` is available, use that repo as the primary source of truth.
- See `SOURCE_MAP.md` for the current mapping from these markdown files to the monorepo source files.
- Use `scripts/inventory-complete-prompts.sh` to inventory prompt-related source files in the full repo.
- The current extraction now includes a first pass of additional unique tool prompts from the complete monorepo; stub files and nested/internal prompt variants are still intentionally excluded.

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

tools/                         → Per-tool prompts (33 files)
  brief.md                        SendUserMessage / Brief
  config.md                       Configuration settings
  bash.md                         Bash + git commit/PR + sandbox
  enter-worktree.md               Start isolated worktree session
  exit-worktree.md                Exit worktree session
  file-read.md                    Read
  file-edit.md                    Edit
  file-write.md                   Write
  glob.md                         Glob
  grep.md                         Grep
  list-mcp-resources.md           List MCP resources
  lsp.md                          Language Server Protocol
  powershell.md                   PowerShell shell tool
  read-mcp-resource.md            Read one MCP resource
  remote-trigger.md               Remote scheduled agents API
  task-create.md                  Create task list items
  task-get.md                     Get task details
  task-list.md                    List task items
  task-stop.md                    Stop background tasks
  task-update.md                  Update task items
  team-create.md                  Create swarm/team context
  team-delete.md                  Delete swarm/team context
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
- **Initial source:** Extracted from the decompiled source published at [sanbuphy/claude-code-source-code](https://github.com/sanbuphy/claude-code-source-code).
- **Preferred source:** When available, use `/home/simone/claude-code-complete` as the canonical local reference instead of the decompiled dump.
- **Purpose:** This repository exists solely for **educational purposes** — to study and understand how production AI agent systems are architected.
- **No affiliation:** This project is not affiliated with, endorsed by, or sponsored by Anthropic.
- **License:** The original code is subject to Anthropic's license terms. Refer to the original source for licensing details.

## Stats

- **54 files** across 6 categories
- Covers the full system prompt assembly chain, 33 tool prompts, 5 built-in agents + coordinator mode, the complete memory type taxonomy, and background service prompts
- The full monorepo currently contains at least **70** `prompt.(ts|txt)` files plus **5** `prompts.ts` builders, so coverage here should be treated as partial until regenerated from the complete repo
