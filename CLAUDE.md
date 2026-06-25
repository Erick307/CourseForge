# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What is CourseForge

CourseForge is a Claude Code plugin — a collection of skills and templates that guide users through designing, structuring, and writing courses using AI. There is no build step; all skills are `.md` files that Claude Code loads directly.

## Project Files

| File | Purpose |
|---|---|
| `CLAUDE.md` | Plugin descriptor and skill index for Claude Code |
| `plugin.json` | Plugin manifest — name, version, and skill list |
| `install.sh` | Installation script — registers the plugin globally |
| `README.md` | User-facing documentation and installation guide |
| `skills/` | One `.md` file per skill — the executable units of the plugin |

## Skills

| Skill | File |
|---|---|
| `courseforge:help` | `skills/help.md` |
| `courseforge:brainstorm` | `skills/brainstorm.md` |
| `courseforge:status` | `skills/status.md` |
| `courseforge:setup` | `skills/setup.md` |
| `courseforge:start` | `skills/start.md` |
| `courseforge:define-course` | `skills/define-course.md` |
| `courseforge:define-scope` | `skills/define-scope.md` |
| `courseforge:define-modules` | `skills/define-modules.md` |
| `courseforge:define-lesson-structure` | `skills/define-lesson-structure.md` |
| `courseforge:define-branding` | `skills/define-branding.md` |
| `courseforge:create-templates` | `skills/create-templates.md` |
| `courseforge:write-lesson` | `skills/write-lesson.md` |
| `courseforge:build-slides` | `skills/build-slides.md` |
| `courseforge:write-teacher-guide` | `skills/write-teacher-guide.md` |
| `courseforge:review-course` | `skills/review-course.md` |
| `courseforge:refine` | `skills/refine.md` |
| `courseforge:update-status` *(internal)* | `skills/update-status.md` |
