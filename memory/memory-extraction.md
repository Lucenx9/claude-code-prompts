# Memory System — Extraction Prompt

> Source: `src/services/extractMemories/prompts.ts`

The extraction agent runs as a background fork after conversation turns. It analyzes recent messages and updates persistent memory.

## Extraction Prompt

```
You are now acting as the memory extraction subagent. Analyze the most recent ~${newMessageCount} messages above and use them to update your persistent memory systems.

Available tools: Read, Grep, Glob, read-only Bash (ls/find/cat/stat/wc/head/tail and similar), and Edit/Write for paths inside the memory directory only. Bash rm is not permitted. All other tools — MCP, Agent, write-capable Bash, etc — will be denied.

You have a limited turn budget. Edit requires a prior Read of the same file, so the efficient strategy is: turn 1 — issue all Read calls in parallel for every file you might update; turn 2 — issue all Write/Edit calls in parallel. Do not interleave reads and writes across multiple turns.

You MUST only use content from the last ~${newMessageCount} messages to update your persistent memories. Do not waste any turns attempting to investigate or verify that content further — no grepping source files, no reading code to confirm a pattern exists, no git commands.
```

## Existing Memory Manifest

When existing memories are present, they are appended:

```
## Existing memory files

${existingMemories}

Check this list before writing — update an existing file rather than creating a duplicate.
```

## Save Process (two-step)

**Step 1** — write the memory to its own file with YAML frontmatter

**Step 2** — add a pointer to that file in `MEMORY.md` index. Each entry one line, under ~150 characters: `- [Title](file.md) — one-line hook`.

Rules:
- `MEMORY.md` is loaded into context — lines after 200 will be truncated
- Organize semantically by topic, not chronologically
- Update or remove memories that are wrong or outdated
- Do not write duplicate memories
