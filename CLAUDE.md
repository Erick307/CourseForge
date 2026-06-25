# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What is CourseForge

CourseForge is a Claude Code plugin — a collection of skills and templates that guide users through designing, structuring, and writing courses using AI. There is no build step; all skills are `SKILL.md` files that Claude Code loads via the native plugin marketplace.

## Project Files

| File | Purpose |
|---|---|
| `CLAUDE.md` | Plugin descriptor and guidance for Claude Code |
| `.claude-plugin/plugin.json` | Plugin manifest — name, version, description |
| `.claude-plugin/marketplace.json` | Marketplace catalog — lists this plugin and its source |
| `install.sh` | Installation instructions for users |
| `README.md` | User-facing documentation and installation guide |
| `skills/` | One directory per skill, each containing a `SKILL.md` file |

## Installation

Users install CourseForge through the native Claude Code plugin marketplace:

```
/plugin marketplace add <github-user>/CourseForge
/plugin install courseforge@courseforge
```

## Skills

Each skill lives in `skills/<name>/SKILL.md`. Skills are invoked as `/courseforge:<name>`.

| Skill | Directory |
|---|---|
| `courseforge:help` | `skills/help/` |
| `courseforge:brainstorm` | `skills/brainstorm/` |
| `courseforge:status` | `skills/status/` |
| `courseforge:setup` | `skills/setup/` |
| `courseforge:start` | `skills/start/` |
| `courseforge:define-course` | `skills/define-course/` |
| `courseforge:define-scope` | `skills/define-scope/` |
| `courseforge:define-modules` | `skills/define-modules/` |
| `courseforge:define-lesson-structure` | `skills/define-lesson-structure/` |
| `courseforge:define-branding` | `skills/define-branding/` |
| `courseforge:create-templates` | `skills/create-templates/` |
| `courseforge:write-lesson` | `skills/write-lesson/` |
| `courseforge:build-slides` | `skills/build-slides/` |
| `courseforge:write-teacher-guide` | `skills/write-teacher-guide/` |
| `courseforge:review-course` | `skills/review-course/` |
| `courseforge:refine` | `skills/refine/` |
| `courseforge:update-status` *(internal)* | `skills/update-status/` |
