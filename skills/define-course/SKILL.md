---
description: Defines the three core constraints of the course — audience, goal, and length. First step in the Structure phase.
---

# courseforge:define-course

Guides the user through defining the three core constraints of the course: audience, goal, and length. These three constraints shape everything else — all subsequent steps depend on them being clear and coherent.

---

## What to do

### Step 1 — Check for ideas

Read `draft/ideas.md`. If any ideas are relevant to defining the audience, goal, or length of the course, surface them to the user before asking the constraint questions — they may already have answers there.

If the file is empty or nothing is relevant, skip this without mentioning it.

---

### Step 2 — Set context

Briefly explain to the user what this step is about: defining the three constraints that shape the entire course. Keep it to two or three sentences — don't lecture.

---

### Step 2 — Gather the three constraints

Ask about each constraint one at a time. Wait for the user's answer before moving to the next. Don't ask all three at once.

**Audience**
Ask: Who is this course for? What do they already know coming in, and why are they taking it?

Look for: a specific person or role, their existing knowledge level, and their motivation. If the answer is vague (e.g. "anyone interested in marketing"), push gently for more specificity. A course for everyone is a course for no one.

**Goal**
Ask: What will learners be able to *do* by the end of this course?

Look for: a concrete, observable outcome — not "understand X" but "be able to do X." If the answer is abstract, ask the user to make it more specific. A good goal describes a capability, not a topic.

**Length**
Ask: How much time does the learner have? Are there any constraints on the format (self-paced, live sessions, number of modules)?

Look for: a realistic time estimate. If the goal and length feel mismatched — too ambitious for the time, or too thin for the audience — flag the tension and suggest adjusting one or the other.

---

### Step 3 — Check coherence

Before drafting anything, read back the three constraints together and check that they form a realistic, coherent whole:

- Is the goal achievable in the given time for this audience?
- Is the audience specific enough to write meaningful content?
- Is the length realistic — not too long that it loses people, not too short that the goal can't be met?

If something feels off, name it and suggest a fix. Ask the user to confirm or adjust before moving on.

---

### Step 4 — Draft the course definition

Write a course definition of 2–4 sentences that answers: who, what outcome, and how long. This is the north star for all future decisions.

Example format:
> This course is for [audience] who want to [motivation]. By the end, they will be able to [goal]. It is designed to be completed in [length].

Show it to the user. Ask if it captures what they have in mind, or if anything needs to change. Iterate until they confirm it.

---

### Step 5 — Save the draft and update progress

Once the user confirms the course definition:

1. Create or update `draft/define-course.md` with the confirmed definition and the raw answers for each constraint:

```markdown
# Define Course — Draft

## Course Definition
<2–4 sentence definition>

## Constraints

**Audience:** <answer>
**Goal:** <answer>
**Length:** <answer>
```

2. Update `draft/progress.md`:
   - Mark **Define Course** as complete: `- [x] Define Course`
   - Update the **Description** field under `## Course` with the one-sentence core of the definition
   - Add `define-course.md` to the **Draft Files** list

---

### Step 6 — Hand off

Tell the user the course definition is locked in. Then tell them the next step is to define the scope and ask if they want to continue.

If yes → invoke `courseforge:define-scope`.
