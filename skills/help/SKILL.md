---
description: Explains what CourseForge is and how to use it. Use when the user asks what CourseForge is or how to get started.
---

# courseforge:help

Explains how CourseForge works and the recommended process to use it.

## What to do

Present the following to the user:

---

## What is CourseForge

CourseForge is a Claude Code plugin that guides you through designing, structuring, and writing a course using AI. It breaks the process into small, manageable steps and keeps you in control at every stage.

## How to Use CourseForge

**Always start a session with `courseforge:start`.** The coordinator reads the current state of your course and picks up exactly where you left off — or guides you through the first steps if you're just beginning.

You don't need to remember the order or what comes next. Just run `courseforge:start` at the beginning of every session.

## Available Skills

All other skills are available if you want to jump to something specific, but the coordinator will normally invoke them for you.

**Setup**
- `courseforge:setup` — create the working environment for a new course

**Structure**
- `courseforge:define-course` — audience, goal, and length
- `courseforge:define-scope` — what's in, what's out, prerequisites
- `courseforge:define-modules` — ordered list of modules
- `courseforge:define-lesson-structure` — the anatomy of each lesson

**Design**
- `courseforge:define-branding` — colors, fonts, and logos
- `courseforge:create-templates` — reusable content and slide templates

**Production**
- `courseforge:write-lesson` — full content for a lesson
- `courseforge:build-slides` — slide outline from the lesson content
- `courseforge:write-teacher-guide` — instructor notes for a lesson

**Review**
- `courseforge:review-course` — full course consistency check
- `courseforge:refine` — improve or rewrite a lesson or module

**Export**
- `courseforge:export-slides` — export all slides to .pptx (free, recommended), Gamma, or Markdown. Guides you step by step through whichever path fits your setup.

**Utilities**
- `courseforge:status` — see what has been done and what comes next
- `courseforge:brainstorm` — capture ideas at any point without interrupting the flow

---

After presenting this, ask the user if they have any questions or if they are ready to get started.
