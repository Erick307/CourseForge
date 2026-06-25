---
name: courseforge:define-lesson-structure
description: Defines the internal anatomy of a lesson — the sequence of sections every lesson will follow. The result becomes the standard template for all lessons.
---

# courseforge:define-lesson-structure

Helps the user define the internal anatomy of a lesson — the sequence of sections every lesson will follow. The result becomes the standard template all lessons are built from during production.

---

## What to do

### Step 1 — Read the prior work

Read `draft/define-course.md` and `draft/define-modules.md`. Understanding the course goal, audience, and module structure will help you propose a lesson anatomy that fits the course style.

Also read `draft/ideas.md`. If any ideas relate to lesson format, activities, or the internal structure of lessons, surface them to the user before proposing the default anatomy — they may want something different from the standard template.

---

### Step 2 — Propose a default lesson structure

Don't ask the user to invent a structure from scratch — propose one based on the course type and audience. A good default for most courses:

1. **Recap** — Brief review of what was covered in the previous lesson
2. **Introduction** — Hook: why this lesson matters, what the learner will be able to do by the end
3. **Content** — The main explanation, broken into logical sections with examples
4. **Practice** — An exercise or activity the learner completes
5. **Summary** — 3–5 key takeaways
6. **What's Next** — Bridge to the following lesson

Present this as a starting point. Explain each section briefly — what it's for, roughly how long it should be.

---

### Step 3 — Iterate

Ask the user: does this structure fit the course, or should anything change?

Consider context-specific adjustments:
- A highly practical course might need more practice sections or a project checkpoint
- A short course might skip the Recap to save time
- A course with assessments might add a Quiz section at the end of each lesson
- A live-delivery course might need discussion prompts between sections

Support adding, removing, renaming, reordering, or splitting sections. After each change, show the updated structure. Keep iterating until the user confirms it.

---

### Step 4 — Save and update progress

Once the user confirms:

1. Save the lesson structure to `artifacts/lesson-structure.md`:

```markdown
# Lesson Structure

The standard anatomy of every lesson in this course.

## Sections

1. **<Section Name>** — <one-line description of purpose>
2. **<Section Name>** — <one-line description of purpose>
...

## Notes
<Any guidance on timing, tone, or special cases>
```

2. Update `draft/progress.md`:
   - Mark **Define Lesson Structure** as complete: `- [x] Define Lesson Structure`
   - Add `artifacts/lesson-structure.md` to the **Draft Files** list

---

### Step 5 — Hand off

Tell the user the lesson structure is locked in and will be used as the template for all lessons. Then tell them the next step is to establish the visual identity of the course and ask if they want to continue.

If yes → invoke `courseforge:define-branding`.
