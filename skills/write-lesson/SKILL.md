---
description: Writes the full content document for a lesson following the content template. Use during the Production phase for each lesson in order.
---

# courseforge:write-lesson

Writes the full content document for a specific lesson, following the content template defined in `artifacts/`. The result is saved as `Content.md` in the lesson's folder within `course/`.

---

## What to do

### Step 1 — Identify the lesson

Read `draft/progress.md` to find the next lesson that needs a content document written (earliest unchecked "Content" item in the Production section).

Tell the user which lesson you're about to write and ask if they want to proceed with that one or jump to a different lesson.

---

### Step 2 — Read the context

Before writing anything, read:
- `artifacts/content-template.md` — the structure every lesson follows
- `draft/define-course.md` — audience, goal, length
- `draft/define-scope.md` — what's in and out of scope
- `draft/define-modules.md` — where this lesson sits in the larger structure
- `artifacts/lesson-structure.md` — section purposes and guidance
- `draft/ideas.md` — check if there are any ideas relevant to this lesson

If a previous lesson's `Content.md` exists, read it to maintain consistent voice and level.

---

### Step 3 — Ask for lesson details

Ask the user:
1. What is the learning objective for this lesson? (What will the learner be able to do after completing it?)
2. Are there any specific concepts, examples, or exercises they want included?
3. Any constraints on tone, depth, or length for this lesson?

If the user wants Claude to decide, propose answers to each question based on the module description and course context, and ask for confirmation before writing.

---

### Step 4 — Write the lesson

Using the content template as the structure, write the full lesson document. Fill every section completely — no placeholders.

Guidelines:
- Write for the defined audience: match their knowledge level and vocabulary
- Every claim should be explained, not just stated
- Examples should be concrete and relevant to the audience
- The Practice section should have a clear, doable task — not a vague instruction
- The Summary should capture the 3–5 most important takeaways, not just repeat headings
- The What's Next section should name the next lesson and explain the connection

---

### Step 5 — Review with the user

Present the completed lesson. Ask the user to review it and share any feedback.

Common things to iterate on:
- Depth: too shallow or too detailed for the audience?
- Examples: do they land, or should they be replaced?
- Practice: is the activity clear and appropriately scoped?
- Tone: does it match the course voice?

Make changes based on feedback and show the updated version. Keep iterating until the user is satisfied.

---

### Step 6 — Save and update progress

Once confirmed:

1. Create the lesson folder and save the file:
   - Path: `course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/Content.md`
   - Use zero-padded numbers (01, 02, etc.) and CamelCase for names

2. Update `draft/progress.md`:
   - Mark the lesson's Content step as complete: `- [x] Lesson NN — Content`

---

### Step 7 — Hand off

Tell the user the content document is saved. Ask if they want to continue with the slides for this lesson, the teacher guide, or move on to the next lesson's content.

Route based on their answer:
- Slides for this lesson → `courseforge:build-slides`
- Teacher guide for this lesson → `courseforge:write-teacher-guide`
- Next lesson's content → `courseforge:write-lesson`
- Review the full course → `courseforge:review-course`
- Let the coordinator decide → `courseforge:start`
- Something else → ask for clarification, then route accordingly
