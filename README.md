# Claude Code Prompts — Extracted & Organized

> **All content in this repository belongs to [Anthropic](https://www.anthropic.com/).** This is an unofficial extraction for **educational and research purposes only**. Source: [anthropics/claude-code](https://github.com/anthropics/claude-code) on GitHub.

Raccolta organizzata di tutti i prompt, template, instruction block e message builder estratti dal codice sorgente di Claude Code — il CLI ufficiale di Anthropic per Claude.

## Struttura

```
system/          → System prompt (identità, regole, task, stile, environment)
tools/           → Prompt per ogni tool (Bash, Read, Edit, Write, Grep, Glob, Agent, ...)
agents/          → Prompt dei built-in agent (explorer, planner, verifier, coordinator, ...)
memory/          → Sistema di memoria persistente (tipi, estrazione, session memory)
services/        → Prompt dei servizi background (compact, magic-docs, prompt-suggestion)
safety/          → Istruzioni di sicurezza (cyber-risk, undercover mode)
```

## Disclaimer

- **Copyright:** All prompts, instructions, and text content are the intellectual property of **Anthropic, PBC**.
- **Source:** Extracted from the publicly available repository [anthropics/claude-code](https://github.com/anthropics/claude-code).
- **Purpose:** This repository exists solely for **educational purposes** — to study and understand how production AI agent systems are structured.
- **No affiliation:** This project is not affiliated with, endorsed by, or sponsored by Anthropic.
- **License:** The original source code is subject to Anthropic's license terms. Refer to the [original repository](https://github.com/anthropics/claude-code) for licensing details.

## WIP

Estrazione in corso. Mancano ancora: tool prompt rimanenti, agent built-in, memory system, services, safety.
