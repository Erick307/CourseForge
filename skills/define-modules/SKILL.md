---
description: Breaks the course into an ordered list of modules. Proposes a first draft based on the course definition and iterates with the user.
---

# courseforge:define-modules

Breaks the course into an ordered list of modules. Proposes a first draft based on the course definition and scope, then iterates with the user — reordering, renaming, adding, or removing modules — until the structure feels right.

---

## What to do

### Step 1 — Read the prior work

Read `draft/define-course.md` and `draft/define-scope.md`. You need to understand:
- The audience, goal, and length
- What is in scope and out of scope
- The prerequisites

Also read `draft/ideas.md`. If any ideas suggest specific modules, topics, or a particular sequencing approach, surface them to the user before proposing the module list — they may influence the structure significantly.

This is the foundation for proposing a logical module breakdown.

---

### Step 2 — Propose a first draft

Based on the course definition and scope, propose an initial module list. Don't ask the user to come up with modules from scratch — give them something concrete to react to.

For each module, provide:
- A number (01, 02, 03…)
- A short name (2–5 words)
- A one-line description of what the module covers and why it matters in the sequence

Present the list clearly, for example:

```
Module 01 — Getting Started
  Sets up the environment and introduces the core concepts learners need before going further.

Module 02 — Core Workflow
  Walks through the primary workflow end-to-end with a real example.

...
```

When proposing, consider:
- **Sequencing:** Does each module build on the previous one? Can a learner complete module 2 without module 1?
- **Size:** Are the modules roughly comparable in weight? A module that covers 3x more than another may need to be split.
- **Coverage:** Does the full list cover everything in scope — and nothing out of scope?
- **Count:** Does the number of modules feel realistic for the course length? A 4-hour course with 10 modules will have very thin modules. A 20-hour course with 3 modules will have very heavy ones.

---

### Step 3 — Iterate

Ask the user: does this structure make sense, or would they change anything?

Support any of the following operations:
- **Reorder** — move a module up or down
- **Rename** — change a module's name or description
- **Split** — break one module into two
- **Merge** — combine two modules into one
- **Add** — insert a new module
- **Remove** — drop a module

After each change, show the updated full list so the user can see the structure as a whole. Keep iterating until the user confirms the structure is right.

---

### Step 4 — Define lessons per module

Before saving, ask the user to confirm how many lessons each module will have:

> "How many lessons are you planning per module? You can give one number for all modules, or different counts per module. This is used to build the full production checklist — you can always adjust later."

If the user doesn't know yet, suggest: 3–5 lessons per module is a good default for a standard course. They can always add or remove lessons during production.

Once confirmed, record the lesson count per module — you'll use this in Step 5 to populate the production checklist.

---

### Step 5 — Save the draft and update progress

Once the user confirms:

1. Create or update `draft/define-modules.md`:

```markdown
# Define Modules — Draft

## Module List

| # | Name | Lessons | Description |
|---|---|---|---|
| 01 | <name> | <N> | <one-line description> |
| 02 | <name> | <N> | <one-line description> |
| ... | | | |
```

2. Update `draft/progress.md`:
   - Mark **Define Modules** as complete: `- [x] Define Modules`
   - Add `define-modules.md` to the **Draft Files** list

---

### Step 6 — Hand off

Tell the user the module structure is set. Then tell them the next step is to define the internal anatomy of each lesson and ask if they want to continue.

If yes → invoke `courseforge:define-lesson-structure`.
