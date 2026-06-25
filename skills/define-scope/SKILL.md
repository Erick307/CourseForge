---
description: Sets the course boundaries — what's in scope, out of scope, and what learners must already know before starting.
---

# courseforge:define-scope

Deepens the course definition by setting explicit boundaries: what the course covers, what it does not cover, and what the learner must already know before starting.

---

## What to do

### Step 1 — Read the prior work

Read `draft/define-course.md` to ground this step in the decisions already made. The scope must serve the audience and goal defined there — keep those in mind throughout.

Also read `draft/ideas.md`. If any ideas are relevant to what should be in or out of scope, or to prerequisites, surface them to the user before asking the scope questions — they may already point to boundaries worth making explicit.

---

### Step 2 — Define what's in scope

Ask the user: what topics, skills, or concepts will this course explicitly cover?

Encourage them to be specific. A good scope list names the things a learner can point to and say "this course taught me that." If the user lists broad areas, ask them to break each one down one level further.

Aim for 4–8 items. More than that is usually a sign the goal needs to be narrowed.

---

### Step 3 — Define what's out of scope

Ask the user: what is explicitly *not* covered — even if it's related or adjacent to the topic?

Explain why this matters: naming what's out of scope prevents drift during production and sets clear expectations for learners. It's not about cutting corners — it's about protecting the goal.

Push for at least 2–3 items. If the user struggles, prompt them: "Is there anything a learner might expect to find here that you're deliberately leaving out?"

---

### Step 4 — Define prerequisites

Ask the user: what must the learner already know or be able to do before starting this course?

Look for concrete knowledge or skills, not just vague levels ("intermediate"). If they say "some programming experience," ask: which language? What concepts? Can they write a loop? Deploy code?

If the course has no prerequisites (truly beginner-level), confirm that explicitly — don't leave it undefined.

---

### Step 5 — Check alignment

Read back the full picture: the course definition, the in-scope list, the out-of-scope list, and the prerequisites together. Check for:

- **Gaps:** Is anything obviously missing from the scope given the goal?
- **Contradictions:** Does anything in scope conflict with the stated goal or audience?
- **Scope creep:** Are there items that sound useful but don't actually serve the goal? Name them and ask if they should move to out-of-scope.
- **Prerequisites vs. audience:** Do the prerequisites match who the audience actually is?

Surface any issues and resolve them with the user before moving on.

---

### Step 6 — Save the draft and update progress

Once the user confirms:

1. Create or update `draft/define-scope.md`:

```markdown
# Define Scope — Draft

## In Scope
- <item>
- <item>
- ...

## Out of Scope
- <item>
- <item>
- ...

## Prerequisites
- <item>
- <item>
- ...
```

2. Update `draft/progress.md`:
   - Mark **Define Scope** as complete: `- [x] Define Scope`
   - Add `define-scope.md` to the **Draft Files** list

---

### Step 7 — Hand off

Tell the user the scope is defined. Then tell them the next step is to break the course into modules and ask if they want to continue.

If yes → invoke `courseforge:define-modules`.
