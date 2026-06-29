---
description: Turns a lesson's content document into a slide-by-slide presentation outline following the slide template.
---

# courseforge:build-slides

Turns a lesson's content document into a slide-by-slide presentation outline, following the slide template defined in `artifacts/`. The result is saved as `Presentation.md` in the lesson's folder.

---

## What to do

### Step 1 — Identify the lesson

Read `draft/progress.md` to find the next lesson that needs slides (earliest unchecked "Slides" item in the Production section).

Tell the user which lesson you're about to build slides for and confirm they want to proceed.

---

### Step 2 — Read the source material

Read:
- `course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/Content.md` — the lesson being converted
- `artifacts/slide-template.md` — the slide types and layout rules to follow
- `artifacts/branding.md` — colors, fonts, and logo for visual notes
- `draft/ideas.md` — if any ideas are relevant to how this lesson should be presented visually, surface them before building the outline

---

### Step 3 — Build the slide outline

Create a slide-by-slide breakdown of the lesson. For each slide:
- State the slide type (from the slide template)
- Write the slide title
- List the key points or content that appear on the slide (bullets, not paragraphs)
- Add a **Visual note** if a diagram, screenshot, or image would strengthen the slide
- Add a **Talking points** note for anything the presenter should say that isn't on the slide
- Add a **Timing** estimate in minutes

Guidelines:
- One idea per slide. If a slide needs more than 4–5 bullets, split it.
- Talking points should elaborate on what's shown — not repeat it word for word
- The first and last slides should always be the Title and What's Next types from the template
- Practice slides should show the activity prompt clearly — the learner reads this slide, then does the task
- Don't turn every sentence from the content document into a bullet — distill to the essential points

---

### Step 4 — Review with the user

Present the full slide outline. Ask the user:
- Does the flow make sense?
- Are there any slides that feel too dense or too thin?
- Any content from the lesson that's missing or shouldn't be there?

Iterate until confirmed.

---

### Step 5 — Save and update progress

Once confirmed:

1. Save the file:
   - Path: `course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/Presentation.md`

2. **Strict format — follow exactly.** The `export-slides` skill parses this file programmatically. Any deviation from this format will break export.

```markdown
# [Lesson Title] — Presentation

## Slide 01 — [slide-type]: [Slide Title]
**Content:**
- [bullet]
- [bullet]

**Visual note:** [description or "none"]
**Talking points:** [what to say beyond what's on the slide]
**Timing:** [X min]

---

## Slide 02 — [slide-type]: [Slide Title]
...
```

**Rules:**
- Each slide starts with `## Slide NN — [slide-type]: [Title]` (zero-padded number, then exact type slug, then colon, then title)
- Valid slide types: `title`, `module-header`, `content`, `code`, `two-col`, `demo-step`, `takeaway`, `closing`
- `**Content:**` section is always present, even if empty (write `none` if no bullets)
- `**Talking points:**` and `**Timing:**` are always present
- Slides are separated by `---`
- No extra blank lines before `## Slide`

3. Update `draft/progress.md`:
   - Mark the lesson's Slides step as complete: `- [x] Lesson NN — Slides`

---

### Step 6 — Hand off

Ask the user what they want to do next:
- Teacher guide for this lesson → `courseforge:write-teacher-guide`
- Content for the next lesson → `courseforge:write-lesson`
- Review the full course → `courseforge:review-course`
- Let the coordinator decide → `courseforge:start`
- Something else → ask for clarification, then route accordingly
