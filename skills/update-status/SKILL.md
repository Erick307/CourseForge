---
description: Internal skill. Reference for how to update draft/progress.md correctly. Not invoked by the user directly.
---

# courseforge:update-status

Internal skill. Not invoked by the user directly — called by other skills at the end of each step to keep `draft/progress.md` accurate and up to date.

---

## What to do

This skill is a reference for how to update `draft/progress.md` correctly. Other skills should follow this pattern when they update progress.

---

### Updating a step to complete

Find the step's checkbox in the appropriate phase section and change it from unchecked to checked:

```
- [ ] Define Course   →   - [x] Define Course
```

---

### Updating the current phase

When all steps in a phase are complete, update the `## Phase` field to the next phase:

```
Structure → Design → Production
```

---

### Updating the course description

After `courseforge:define-course` runs, update the Description field under `## Course`:

```markdown
## Course
**Name:** <course name>
**Description:** <one-sentence summary of the course goal>
```

---

### Adding a draft file

When a step produces a new file (in `draft/` or `artifacts/`), add it to the Draft Files section:

```markdown
## Draft Files
- `draft/define-course.md` — course definition and constraints
- `artifacts/branding.md` — color palette, fonts, logo
```

---

### Populating the Production section

After `courseforge:create-templates` runs, replace the Production placeholder with the full lesson checklist. For each module and each lesson:

```markdown
### Production

#### Module 01 — <Module Name>
- [ ] Lesson 01 — <Lesson Name> — Content
- [ ] Lesson 01 — <Lesson Name> — Slides
- [ ] Lesson 01 — <Lesson Name> — Teacher Guide
- [ ] Lesson 02 — <Lesson Name> — Content
...
```

---

### Adding a note

If a step surfaces an open question or blocker, add it to the Notes section:

```markdown
## Notes
- [2026-06-24] User wants to revisit Module 3 scope after writing Lesson 1
```

Remove notes once they are resolved.
