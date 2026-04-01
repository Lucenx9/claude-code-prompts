# Tool Prompt — Config

> Source: `src/tools/ConfigTool/prompt.ts` — `generatePrompt()`

## Description

```
Get or set Claude Code configuration settings.
```

## Prompt Template

This prompt is generated dynamically from the runtime settings registry (`SUPPORTED_SETTINGS`) and model options. The static template is:

```
Get or set Claude Code configuration settings.

  View or change Claude Code settings. Use when the user requests configuration changes, asks about current settings, or when adjusting a setting would benefit them.

## Usage
- **Get current value:** Omit the "value" parameter
- **Set new value:** Include the "value" parameter

## Configurable settings list
The following settings are available for you to change:

### Global Settings (stored in ~/.claude.json)
[dynamic list generated from SUPPORTED_SETTINGS where source === "global"]

### Project Settings (stored in settings.json)
[dynamic list generated from SUPPORTED_SETTINGS where source === "project"]

## Model
[dynamic list generated from getModelOptions(), with fallback:
- model - Override the default model (sonnet, opus, haiku, best, or full model ID)]

## Examples
- Get theme: { "setting": "theme" }
- Set dark theme: { "setting": "theme", "value": "dark" }
- Enable vim mode: { "setting": "editorMode", "value": "vim" }
- Enable verbose: { "setting": "verbose", "value": true }
- Change model: { "setting": "model", "value": "opus" }
- Change permission mode: { "setting": "permissions.defaultMode", "value": "plan" }
```
