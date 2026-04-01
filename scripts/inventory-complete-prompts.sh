#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_SOURCE_REPO="$(cd "$SCRIPT_DIR/../.." && pwd)/claude-code-complete"
SOURCE_REPO="${1:-${SOURCE_REPO:-$DEFAULT_SOURCE_REPO}}"

if [[ ! -d "$SOURCE_REPO" ]]; then
  echo "error: source repo not found: $SOURCE_REPO" >&2
  echo "usage: scripts/inventory-complete-prompts.sh [/path/to/claude-code-complete]" >&2
  echo "or set SOURCE_REPO=/path/to/claude-code-complete" >&2
  exit 1
fi

cd "$SOURCE_REPO"

echo "# Prompt-related source inventory"
echo "source_repo=$SOURCE_REPO"
echo

echo "## Core system and safety"
rg --files | rg '^src/constants/(prompts|system|cyberRiskInstruction)\.ts$|^src/coordinator/coordinatorMode\.ts$|^src/utils/undercover\.ts$|^src/memdir/memoryTypes\.ts$' | sort
echo

echo "## Primary tool prompts"
rg --files | rg '^src/tools/[^/]+/prompt\.(ts|txt)$' | sort
echo

echo "## Service prompt builders"
rg --files | rg '^src/services/.*/prompts\.ts$|^src/services/compact/prompt\.ts$' | sort
echo

echo "## Built-in agents"
rg --files | rg '^src/tools/AgentTool/built-in/.*Agent\.ts$' | sort
echo

echo "## Nested/internal prompt variants"
rg --files | rg '^src/tools/AgentTool/built-in/src/tools/.+/prompt\.(ts|txt)$|^src/services/compact/src/tools/.+/prompt\.(ts|txt)$|^src/utils/src/tools/.+/prompt\.(ts|txt)$' | sort
echo

echo "## Other prompt-bearing sources"
rg --files | rg '^src/buddy/prompt\.ts$|^src/utils/ultraplan/prompt\.txt$' | sort
