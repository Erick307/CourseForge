---
description: Bird's-eye review of the full course for alignment with goals, audience fit, scope compliance, consistency, and completeness.
---

# courseforge:review-course

Does a bird's-eye review of the full course, checking for consistency, gaps, and alignment with the original goals. Produces a structured list of findings and lets the user decide what to act on.

---

## What to do

### Step 1 — Read the course definition

Read:
- `draft/define-course.md` — audience, goal, length
- `draft/define-scope.md` — in scope, out of scope, prerequisites
- `draft/define-modules.md` — module structure

These are the north star. Everything in the review is measured against them.

---

### Step 2 — Read all produced content

Read every `Content.md` file that exists under `course/`. If slides or teacher guides exist, read those too.

Note which lessons are complete, which are partially done, and which haven't been started.

---

### Step 3 — Run the review

Check the course against five dimensions. For each one, produce a list of specific findings — not general impressions.

**1. Alignment with goals**
Does the full course, as written, actually deliver the learning objective stated in the course definition? Are there lessons that don't serve the goal? Is there a gap where the goal isn't being addressed?

**2. Audience fit**
Is the content written at the right level for the defined audience? Are there sections that assume too much or too little? Does the tone match who the learner is?

**3. Scope compliance**
Does the course stay within the defined scope? Flag any content that covers something listed as out of scope. Flag any in-scope topic that's missing or underdeveloped.

**4. Consistency**
Are the lessons consistent in structure, depth, tone, and voice? Do the sections use the same format across lessons? Does the difficulty level progress logically from lesson to lesson?

**5. Completeness**
Are there any lessons, slides, or teacher guides still missing? Are any sections within lessons thin or left as placeholders?

---

### Step 4 — Present findings

Organize findings into three tiers:

**Critical** — things that undermine the course goal or mislead the learner. Must be fixed.

**Recommended** — things that reduce quality or consistency. Should be fixed before shipping.

**Optional** — nice-to-haves or minor improvements. Fix if time allows.

Present each finding with:
- Which lesson or section it affects
- What the issue is
- A suggested fix

---

### Step 5 — Let the user decide

After presenting findings, ask the user:
- Which issues do they want to address now?
- Are there any findings they disagree with or want to skip?

For each issue the user wants to fix → invoke `courseforge:refine` with the relevant lesson or section.

---

### Step 6 — Wrap up

Once the user has addressed the issues they want to fix (or chosen to skip them), summarize the state of the course:
- How many findings were resolved
- What remains open (if anything)
- Whether the course is ready for final delivery or still needs work
