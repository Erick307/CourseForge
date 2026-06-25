# Framework

Processes and working structure to support the creation of a course.

---

## Core Principles

### Man in the Loop

Every skill maintains an active ping-pong with the user. No skill runs silently to completion — at each meaningful step, the skill pauses, shares what it has done or decided, and asks for feedback before moving forward. The user is always in control of the direction.

This means:
- Present work incrementally, not all at once
- Ask for confirmation or input before advancing to the next step
- If something is unclear or has multiple valid paths, surface the options and let the user choose
- Never assume — always check

---

## Working Environment

The working environment for each course is organized into three folders and one tracking file:

### Folders

| Folder | Purpose |
|---|---|
| `draft/` | Stores work-in-progress files. Each step saves its work here while building toward a final result. Once a step is complete, its draft file is removed. Any unused content from that draft is reviewed with the user — if worth keeping, it gets added to `ideas.md`. Fresh ideas from brainstorming or any step are also collected there. Individual ideas are removed from `ideas.md` once they are used for a specific purpose. |
| `course/` | Holds the final course structure with all modules and lessons, following the layout defined in `FinalStructure.md`. |
| `artifacts/` | Stores all design files and templates produced during the creation process: branding references, slide templates, content templates, and other reusable assets. |

### draft/ Contents

| File | Purpose |
|---|---|
| `progress.md` | Tracks the current state of the course (active phase, step status, open notes) and indexes all other files in the folder |
| `ideas.md` | Running list of fresh ideas not tied to the current step — added during brainstorming or captured from unused draft content; entries are removed once used |
| `<step>.md` | One temporary file per active step, created when the step starts and removed once the final result is produced |
