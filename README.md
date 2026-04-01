# Claude Code Prompts — Extracted & Organized

> **All content in this repository belongs to [Anthropic](https://www.anthropic.com/).** This is an unofficial extraction for **educational and research purposes only**. Source: [sanbuphy/claude-code-source-code](https://github.com/sanbuphy/claude-code-source-code) — decompiled source of Claude Code v2.1.88.

An organized collection of all prompts, templates, instruction blocks and message builders extracted from the Claude Code source code — Anthropic's official CLI for Claude.

## Structure

```
system/          → System prompt (identity, rules, tasks, style, environment)
tools/           → Per-tool prompts (Bash, Read, Edit, Write, Grep, Glob, Agent, ...)
agents/          → Built-in agent prompts (explorer, planner, verifier, coordinator, ...)
memory/          → Persistent memory system (types, extraction, session memory)
services/        → Background service prompts (compact, magic-docs, prompt-suggestion)
safety/          → Safety instructions (cyber-risk, undercover mode)
```

## Disclaimer

- **Copyright:** All prompts, instructions, and text content are the intellectual property of **Anthropic, PBC**.
- **Source:** Extracted from the decompiled source published at [sanbuphy/claude-code-source-code](https://github.com/sanbuphy/claude-code-source-code).
- **Purpose:** This repository exists solely for **educational purposes** — to study and understand how production AI agent systems are architected.
- **No affiliation:** This project is not affiliated with, endorsed by, or sponsored by Anthropic.
- **License:** The original code is subject to Anthropic's license terms. Refer to the original source for licensing details.

## WIP

Extraction in progress. Remaining: tool prompts, built-in agents, memory system, services, safety.
