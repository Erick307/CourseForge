---
description: Creates the instructor-facing notes for a lesson — facilitation tips, common mistakes, differentiation guidance, and Q&A prep.
---

# courseforge:write-teacher-guide

Creates the instructor-facing notes for a specific lesson. The teacher guide is not shared with students — it helps the instructor deliver the lesson confidently and handle common situations.

---

## What to do

### Step 1 — Identify the lesson

Read `draft/progress.md` to find the next lesson that needs a teacher guide (earliest unchecked "Teacher Guide" item in the Production section).

Tell the user which lesson you're about to write the guide for and confirm they want to proceed.

---

### Step 2 — Read the source material

Read:
- `course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/Content.md`
- `course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/Presentation.md` (if it exists)
- `draft/define-course.md` — audience context
- `draft/ideas.md` — if any ideas relate to facilitation, common mistakes, or instructor notes for this lesson, incorporate them into the guide

---

### Step 3 — Ask about known instructor pain points

Before writing, ask the user:
1. Are there any concepts in this lesson that are typically hard to explain or that learners tend to misunderstand?
2. Are there any parts of the lesson where timing tends to be an issue?
3. Any known questions learners frequently ask about this content?

If the user doesn't know yet, proceed without this input — the guide can be updated later with `courseforge:refine`.

---

### Step 4 — Write the teacher guide

Write the full guide covering all six sections:

**Lesson Summary**
A 3–5 sentence recap of what the lesson teaches and why it matters. Gives the instructor a quick mental refresh before delivering.

**Common Mistakes**
A list of specific misconceptions or errors that learners make with this content. For each one: name the mistake, explain why it happens, and suggest how to address it.

**Facilitation Tips**
Practical advice for delivering the lesson: how to pace it, which sections to slow down on, how to make a concept land through analogy or demo, when to pause for questions.

**Differentiation**
Suggestions for two groups:
- *Learners who are ahead:* extension ideas, deeper questions, optional challenges
- *Learners who are struggling:* simpler explanations, alternative analogies, reduced-scope versions of the practice

**Materials Needed**
A checklist of everything the instructor needs before starting the lesson: tools, links, accounts, printed materials, demo files, etc.

**Q&A Prep**
A list of likely questions with suggested answers. Focus on questions that are either hard to answer on the spot or that often derail the flow.

---

### Step 5 — Review with the user

Show the completed guide. Ask if anything is missing or should be adjusted. Iterate until confirmed.

---

### Step 6 — Save and update progress

Once confirmed:

1. Save the file:
   - Path: `course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/TeacherGuide.md`

2. Update `draft/progress.md`:
   - Mark the lesson's Teacher Guide step as complete: `- [x] Lesson NN — Teacher Guide`

---

### Step 7 — Hand off

Ask the user what they want to do next:
- Content for the next lesson → `courseforge:write-lesson`
- Review the full course → `courseforge:review-course`
- Something else → route accordingly
