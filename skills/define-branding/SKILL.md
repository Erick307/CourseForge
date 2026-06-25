---
description: Establishes the visual identity of the course — colors, fonts, and logos. Produces a branding reference used by all subsequent design steps.
---

# courseforge:define-branding

Guides the user through establishing the visual identity of the course: colors, fonts, and any brand marks or logos. The result is a branding reference saved to `artifacts/` that all subsequent design steps use.

---

## What to do

### Step 1 — Check for ideas

Read `draft/ideas.md`. If any ideas relate to visual identity, tone, or the look and feel of the course, surface them to the user before asking about brand — they may have captured a reference or direction they want to follow.

If nothing is relevant, skip without mentioning it.

---

### Step 2 — Ask about existing brand

First ask: does the user have an existing brand to follow (e.g., a company, school, or personal brand), or are they creating the visual identity from scratch?

- **Existing brand:** Ask them to describe or share the brand guidelines — colors, fonts, logos. Work from what they give you.
- **From scratch:** Guide them through each element below.

---

### Step 2 — Define colors

Ask for:
- **Primary color** — the dominant color used for headings, buttons, key elements
- **Secondary color** — used for accents, highlights, or supporting elements
- **Background color** — the base color for slides and documents (white, off-white, dark, etc.)
- **Text color** — default color for body text

If they don't have specific hex values, ask them to describe the feeling or aesthetic they're going for (e.g., professional and muted, bold and energetic, clean and minimal). Suggest a palette that matches and give them the hex values. Ask if those work.

---

### Step 3 — Define fonts

Ask for:
- **Heading font** — used for titles, module names, section headers
- **Body font** — used for all running text

If they don't know which fonts to use, suggest a pairing based on the color palette and course tone. Common reliable pairings: Inter + Inter, Montserrat + Open Sans, Playfair Display + Lato. Ask if they approve.

---

### Step 4 — Define logos and brand marks

Ask: is there a logo, course mark, or any icon to include in materials?

If yes — ask for a description or file reference. Note it in the branding file.
If no — skip this section.

---

### Step 5 — Review and confirm

Present the full branding summary to the user:

```
Primary color: #XXXXXX
Secondary color: #XXXXXX
Background: #XXXXXX
Text: #XXXXXX

Heading font: <Font Name>
Body font: <Font Name>

Logo: <description or "none">
```

Ask if this is correct or if anything needs adjusting. Iterate until confirmed.

---

### Step 6 — Save and update progress

Once confirmed:

1. Save to `artifacts/branding.md`:

```markdown
# Branding Reference

## Colors
| Role | Hex |
|---|---|
| Primary | #XXXXXX |
| Secondary | #XXXXXX |
| Background | #XXXXXX |
| Text | #XXXXXX |

## Fonts
| Role | Font |
|---|---|
| Heading | <Font Name> |
| Body | <Font Name> |

## Logo
<Description or "None">

## Notes
<Any usage guidance>
```

2. Update `draft/progress.md`:
   - Mark **Define Branding** as complete: `- [x] Define Branding`

---

### Step 7 — Hand off

Tell the user the branding is set and will be applied to all course materials. Then tell them the next step is to create the content and slide templates and ask if they want to continue.

If yes → invoke `courseforge:create-templates`.
