---
description: Improves or rewrites an existing lesson or module. Can be invoked directly by the user or called from courseforge:review-course to act on a specific finding.
---

# courseforge:refine

Helps the user improve or rewrite an existing lesson or module. Can be invoked directly by the user or called from `courseforge:review-course` to act on a specific finding.

---

## What to do

### Step 1 — Identify what to refine

If invoked from `courseforge:review-course`, the finding already identifies the target. Confirm with the user which file to work on and what the issue is.

If invoked directly by the user, ask:
1. Which lesson or module do they want to refine?
2. What specifically should change — a section, the tone, the examples, the depth, the structure, something else?

Be specific before starting. "Make it better" is not a brief — get a clear direction.

---

### Step 2 — Read the target content

Read the file being refined. Also read:
- `draft/define-course.md` — to keep audience and goal in view
- `artifacts/content-template.md` or `artifacts/slide-template.md` — to check structural compliance
- Adjacent lessons (previous and next) if tone or continuity is the issue

---

### Step 3 — Propose the change

Don't rewrite the whole file by default. Identify the specific section or sections that need to change and propose a revision for those parts only.

Show the user:
- The original version
- The proposed revision
- A brief explanation of what changed and why

If the change is large (e.g., rewriting the full lesson), summarize the approach first and get the user's approval before writing.

---

### Step 4 — Iterate

Ask the user if the revision is right. Adjust based on feedback. Keep iterating until they're satisfied.

If the conversation surfaces new issues in other parts of the file, note them but don't fix them automatically — ask the user if they want to address those too.

---

### Step 5 — Save

Once the user confirms:

1. Update the file in place with the revised content.
2. If ideas or unused content came up during refinement that might be useful later, add them to `draft/ideas.md`.

---

### Step 6 — Hand off

Ask the user what they want to do next:
- Refine something else → stay in `courseforge:refine` with the new target
- Continue production → route to the appropriate production skill
- Review the course → `courseforge:review-course`
