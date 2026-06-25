---
description: Creates the content template and slide template that all production work will follow. Run after branding is defined.
---

# courseforge:create-templates

Creates the two reusable templates that all production work will follow: a content template for lesson documents and a slide template for presentations. Both are derived from the lesson structure and branding already defined.

---

## What to do

### Step 1 — Read the prior work

Read:
- `artifacts/lesson-structure.md` — the section anatomy every lesson follows
- `artifacts/branding.md` — colors, fonts, and logo
- `draft/define-modules.md` — to understand the full scope of production ahead
- `draft/ideas.md` — if any ideas relate to document or slide structure, surface them before building the templates

---

### Step 2 — Create the content template

The content template is the structural skeleton for every `Content.md` file that will be written in production. It must reflect the lesson structure exactly.

Build a template with:
- A placeholder for the lesson title
- A placeholder for the learning objective
- One section per element defined in `artifacts/lesson-structure.md`, with a brief instruction note inside each one explaining what to write there

Save to `artifacts/content-template.md`. Example structure:

```markdown
# [Lesson Title]

**Learning Objective:** [What the student can do after this lesson]

---

## [Section 1 Name]
[Instruction: e.g., "Brief review of the previous lesson. 2–3 sentences."]

## [Section 2 Name]
[Instruction: e.g., "Hook — why this lesson matters. Connect to what the learner already knows."]

...
```

Show the template to the user. Ask if the structure is right or if anything needs to change. Iterate until confirmed.

---

### Step 3 — Create the slide template

The slide template defines the types of slides used in every presentation and what each one contains. It is not a visual design — it is a structural outline that ensures consistency across all lessons.

Propose a set of slide types based on the lesson structure. Common types:

- **Title slide** — lesson name, module name
- **Objective slide** — the one thing the learner will be able to do
- **Section header slide** — signals a transition between major sections
- **Content slide** — a key point with supporting explanation or example
- **Example slide** — a worked example or case study
- **Practice slide** — the activity or exercise prompt
- **Summary slide** — 3–5 takeaways
- **What's Next slide** — bridge to the following lesson

For each slide type, define:
- Its purpose
- What content it contains
- Any layout or visual notes (e.g., "full-width image on right, text on left")

Save to `artifacts/slide-template.md`. Example:

```markdown
# Slide Template

## Slide Types

### Title Slide
**Purpose:** Opens the lesson.
**Content:** Lesson title, module name, lesson number.
**Layout:** Centered title, subtitle below, logo bottom right.

### Objective Slide
**Purpose:** Sets expectations for the learner.
**Content:** "By the end of this lesson, you will be able to [objective]."
**Layout:** Single sentence, large text, centered.

...
```

Show the slide template to the user. Ask if it covers what they need or if any slide types should be added, removed, or changed. Iterate until confirmed.

---

### Step 4 — Populate production steps in progress.md

Now that modules and templates are defined, expand the Production section in `draft/progress.md` to list every lesson that needs to be produced.

For each module and each lesson within it, add three checkboxes:

```markdown
### Production

#### Module 01 — <Module Name>
- [ ] Lesson 01 — Content
- [ ] Lesson 01 — Slides
- [ ] Lesson 01 — Teacher Guide
- [ ] Lesson 02 — Content
...
```

Use the module list from `draft/define-modules.md`. If lessons within modules haven't been defined yet, add a placeholder per module and note that lessons will be detailed in the writing step.

---

### Step 5 — Update progress

Update `draft/progress.md`:
- Mark **Create Templates** as complete: `- [x] Create Templates`
- Note that `artifacts/content-template.md` and `artifacts/slide-template.md` have been created

---

### Step 6 — Hand off

Tell the user the templates are ready and production can now begin. Explain that each module will be produced in order: content first, then slides, then teacher guide. Ask if they want to start writing the first lesson.

If yes → invoke `courseforge:write-lesson`.
