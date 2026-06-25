---
description: Creates the working environment for a new course. Use when starting a brand-new course from scratch.
---

# courseforge:setup

Creates the working environment for a new course. Sets up the folder structure and initializes `draft/progress.md` so the coordinator can track state from the first session onward.

---

## What to do

### Step 1 — Ask for the course name

Ask the user for a working title for the course. Explain that it doesn't need to be final — it's just used to name the working folder.

Wait for their answer before proceeding.

---

### Step 2 — Create the folder structure

Using the course name (converted to a folder-safe format: lowercase, spaces replaced with hyphens), create the following structure in the current working directory:

```
<course-name>/
├── draft/
│   ├── progress.md
│   └── ideas.md
├── course/
└── artifacts/
```

Create all folders and both files. The `course/` and `artifacts/` folders start empty.

---

### Step 3 — Initialize `draft/progress.md`

Write `progress.md` with the following structure. Fill in the course name; leave all steps as not started.

```markdown
# Course Progress

## Course
**Name:** <course name>
**Description:** Not yet defined

## Phase
Structure

## Steps

### Structure
- [ ] Define Course
- [ ] Define Scope
- [ ] Define Modules
- [ ] Define Lesson Structure

### Design
- [ ] Define Branding
- [ ] Create Templates

### Production
*(populated once modules and lessons are defined)*

## Notes
*(none)*

## Draft Files
*(none)*
```

---

### Step 4 — Initialize `draft/ideas.md`

Write `ideas.md` with the following structure:

```markdown
# Ideas

A running list of ideas captured during the course creation process. Entries are removed once they are used for a specific purpose.

---

*(no ideas yet)*
```

---

### Step 5 — Confirm and hand off

Tell the user the environment is ready. Show them the folder structure that was created. Then tell them the next step is to define the course and ask if they want to continue.

If yes → invoke `courseforge:define-course`.
