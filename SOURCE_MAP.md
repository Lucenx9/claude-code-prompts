# Source Map

This repository is a markdown extraction layer. The preferred local source of truth is:

- `/home/simone/claude-code-complete`

The mapping below points each extracted markdown file to the canonical file in the complete monorepo. Some extracted markdown files are assembled from multiple functions or constants rather than a single raw string.

## System

- `system/01-identity.md` -> `src/constants/system.ts`
- `system/02-intro.md` -> `src/constants/prompts.ts` (`getSimpleIntroSection`) + `src/constants/cyberRiskInstruction.ts`
- `system/03-system-rules.md` -> `src/constants/prompts.ts` (`getSimpleSystemSection`)
- `system/04-doing-tasks.md` -> `src/constants/prompts.ts` (`getSimpleDoingTasksSection`)
- `system/05-actions-care.md` -> `src/constants/prompts.ts` (`getActionsSection`)
- `system/06-using-tools.md` -> `src/constants/prompts.ts` (`getUsingYourToolsSection`)
- `system/07-tone-and-style.md` -> `src/constants/prompts.ts` (`getSimpleToneAndStyleSection`, `getOutputEfficiencySection`)
- `system/08-environment.md` -> `src/constants/prompts.ts` (`computeSimpleEnvInfo`, `getKnowledgeCutoff`)

## Tools

- `tools/bash.md` -> `src/tools/BashTool/prompt.ts`
- `tools/brief.md` -> `src/tools/BriefTool/prompt.ts`
- `tools/config.md` -> `src/tools/ConfigTool/prompt.ts`
- `tools/enter-worktree.md` -> `src/tools/EnterWorktreeTool/prompt.ts`
- `tools/exit-worktree.md` -> `src/tools/ExitWorktreeTool/prompt.ts`
- `tools/file-read.md` -> `src/tools/FileReadTool/prompt.ts`
- `tools/file-edit.md` -> `src/tools/FileEditTool/prompt.ts`
- `tools/file-write.md` -> `src/tools/FileWriteTool/prompt.ts`
- `tools/glob.md` -> `src/tools/GlobTool/prompt.ts`
- `tools/grep.md` -> `src/tools/GrepTool/prompt.ts`
- `tools/list-mcp-resources.md` -> `src/tools/ListMcpResourcesTool/prompt.ts`
- `tools/lsp.md` -> `src/tools/LSPTool/prompt.ts`
- `tools/powershell.md` -> `src/tools/PowerShellTool/prompt.ts`
- `tools/read-mcp-resource.md` -> `src/tools/ReadMcpResourceTool/prompt.ts`
- `tools/remote-trigger.md` -> `src/tools/RemoteTriggerTool/prompt.ts`
- `tools/task-create.md` -> `src/tools/TaskCreateTool/prompt.ts`
- `tools/task-get.md` -> `src/tools/TaskGetTool/prompt.ts`
- `tools/task-list.md` -> `src/tools/TaskListTool/prompt.ts`
- `tools/task-stop.md` -> `src/tools/TaskStopTool/prompt.ts`
- `tools/task-update.md` -> `src/tools/TaskUpdateTool/prompt.ts`
- `tools/team-create.md` -> `src/tools/TeamCreateTool/prompt.ts`
- `tools/team-delete.md` -> `src/tools/TeamDeleteTool/prompt.ts`
- `tools/agent.md` -> `src/tools/AgentTool/prompt.ts`
- `tools/web-fetch.md` -> `src/tools/WebFetchTool/prompt.ts`
- `tools/web-search.md` -> `src/tools/WebSearchTool/prompt.ts`
- `tools/ask-user-question.md` -> `src/tools/AskUserQuestionTool/prompt.ts`
- `tools/enter-plan-mode.md` -> `src/tools/EnterPlanModeTool/prompt.ts`
- `tools/sleep.md` -> `src/tools/SleepTool/prompt.ts`
- `tools/todo-write.md` -> `src/tools/TodoWriteTool/prompt.ts`
- `tools/tool-search.md` -> `src/tools/ToolSearchTool/prompt.ts`
- `tools/skill.md` -> `src/tools/SkillTool/prompt.ts`
- `tools/send-message.md` -> `src/tools/SendMessageTool/prompt.ts`
- `tools/notebook-edit.md` -> `src/tools/NotebookEditTool/prompt.ts`

## Agents

- `agents/general-purpose.md` -> `src/tools/AgentTool/built-in/generalPurposeAgent.ts`
- `agents/explorer.md` -> `src/tools/AgentTool/built-in/exploreAgent.ts`
- `agents/planner.md` -> `src/tools/AgentTool/built-in/planAgent.ts`
- `agents/verifier.md` -> `src/tools/AgentTool/built-in/verificationAgent.ts`
- `agents/guide.md` -> `src/tools/AgentTool/built-in/claudeCodeGuideAgent.ts`
- `agents/coordinator.md` -> `src/coordinator/coordinatorMode.ts`

## Memory

- `memory/memory-extraction.md` -> `src/services/extractMemories/prompts.ts`
- `memory/session-memory.md` -> `src/services/SessionMemory/prompts.ts`
- `memory/memory-types.md` -> `src/memdir/memoryTypes.ts`

## Services

- `services/compact.md` -> `src/services/compact/prompt.ts`
- `services/magic-docs.md` -> `src/services/MagicDocs/prompts.ts`

## Safety

- `safety/cyber-risk.md` -> `src/constants/cyberRiskInstruction.ts`
- `safety/undercover.md` -> `src/utils/undercover.ts`

## Important Gaps

The complete monorepo still exposes more prompt-bearing sources than are currently represented here. Notable remaining gaps include:

- Tool slots that are empty or stubbed in this snapshot, such as `src/tools/MCPTool/prompt.ts`, `src/tools/SnipTool/prompt.ts`, `src/tools/TerminalCaptureTool/prompt.ts`, `src/tools/SendUserFileTool/prompt.ts`, and `src/tools/DiscoverSkillsTool/prompt.ts`
- Extra prompt-bearing sources such as `src/buddy/prompt.ts`
- Internal variants under `src/services/compact/src/tools/*`, `src/utils/src/tools/*`, and `src/tools/AgentTool/built-in/src/tools/*`

If this repo is regenerated, it should target the complete monorepo first and treat the decompiled source only as a fallback.
