---
description: The session coordinator. Reads current progress and guides the user to the next step. Always start a CourseForge session with this skill.
---

# courseforge:start

The coordinator skill. Reads `draft/progress.md` to understand the current state of the course and actively guides the user to the next step, invoking the appropriate skill to keep the process moving forward.

---

## What to do

### Step 1 — Read the current state

Check whether `draft/progress.md` exists in the working directory.

**If `draft/progress.md` does not exist:**

There is no course in progress. Greet the user with a short welcome message that explains what CourseForge does and how the process works:

```
Welcome to CourseForge — an AI-guided plugin for creating courses from scratch.

Here's how it works:
  1. You define the course structure (audience, modules, lesson anatomy)
  2. You establish the visual design (branding, templates)
  3. You write the content lesson by lesson (content, slides, instructor notes)
  4. You review and export — a ready-to-present .pptx in one command

Everything is guided step by step. You don't need to remember what comes next.

Let's start by setting up your course folder.
```

Then invoke `courseforge:setup`.

**If `draft/progress.md` exists:**

Read it fully. Extract:
- The course name and a one-line description (if defined)
- The current phase (Structure / Design / Production)
- Which steps are complete, in progress, or not started
- Any open notes or blockers
- The `Language` field — respond in that language for the entire session. If the field is missing, default to English.

---

### Step 2 — Present the current state

Show the user a brief summary of where things stand. Keep it short — two or three sentences plus a status list. For example:

> **Course:** Intro to Product Management
> **Phase:** Structure
>
> - ✅ Define Course
> - ✅ Define Scope
> - ⬜ Define Modules ← next
> - ⬜ Define Lesson Structure

Then state clearly what the next step is and why.

---

### Step 3 — Ask and act

Ask the user if they want to continue with the next step, or if they have something else in mind.

If they want to continue → invoke the appropriate skill for the next step (see routing table below).

If they want something else → listen and route accordingly. If they name a specific skill, invoke it. If they describe what they want, identify the best skill and confirm before invoking.

---

## Routing table

Use the current state from `progress.md` to determine which skill to invoke next.

| State | Next skill |
|---|---|
| No progress file | `courseforge:setup` |
| Setup done, course not defined | `courseforge:define-course` |
| Course defined, scope not defined | `courseforge:define-scope` |
| Scope defined, modules not defined | `courseforge:define-modules` |
| Modules defined, lesson structure not defined | `courseforge:define-lesson-structure` |
| Lesson structure defined, branding not defined | `courseforge:define-branding` |
| Branding defined, templates not created | `courseforge:create-templates` |
| Templates created, lessons remaining | `courseforge:write-lesson` (next unwritten lesson) |
| All lessons written, slides remaining | `courseforge:build-slides` (next lesson without slides) |
| All slides built, teacher guides remaining | `courseforge:write-teacher-guide` (next lesson without a guide) |
| All production complete | suggest `courseforge:review-course` |

---

## Principles

- Never skip ahead without the user's confirmation.
- If `progress.md` has open notes or a blocker flagged, surface it before moving on.
- If the state is ambiguous or the file is incomplete, ask the user to clarify rather than guessing.
- Always end with a clear question or prompt — never leave the user wondering what to do next.
