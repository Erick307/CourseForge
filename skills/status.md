---
name: courseforge:status
description: Shows the current state of the course in progress. Use when the user wants to see what's done and what's next.
---

# courseforge:status

Reads `draft/progress.md` and gives the user a clear, at-a-glance picture of where the course stands: what has been done, what is in progress, and what comes next.

---

## What to do

### Step 1 — Read progress

Read `draft/progress.md`. If the file doesn't exist, tell the user that no course is in progress and suggest running `courseforge:setup` to start one.

---

### Step 2 — Present the status

Show the user a structured summary. Keep it scannable — use checkboxes, not prose.

**Format:**

```
Course: <name>
Phase: <Structure / Design / Production>

── Structure ──────────────────────────
  ✅ Define Course
  ✅ Define Scope
  ⬜ Define Modules
  ⬜ Define Lesson Structure

── Design ─────────────────────────────
  ⬜ Define Branding
  ⬜ Create Templates

── Production ─────────────────────────
  Not started yet

── Notes ──────────────────────────────
  <any open notes from progress.md, or "none">
```

Use ✅ for completed steps and ⬜ for pending ones. If a step is in progress (started but not confirmed), use 🔄.

For Production, list each lesson with its three sub-tasks (Content, Slides, Teacher Guide) once they've been populated.

---

### Step 3 — Name the next step

After the status block, state clearly in one sentence what the next action is.

Example: "The next step is to define the module structure — run `courseforge:define-modules` or `courseforge:start` to continue."

---

### Step 4 — Ask if they want to continue

Ask the user if they want to jump to the next step now or if they just needed the status check.

If they want to continue → invoke `courseforge:start` to resume the coordinator flow.
