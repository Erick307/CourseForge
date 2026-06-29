---
description: Guides the user through exporting all course slides. Offers three paths — free local export via pptxgenjs (.pptx), Gamma (paid for 10+ slides), or a Markdown deck as a fallback. Always checks prerequisites before generating anything.
---

# courseforge:export-slides

Entry point for all slide export. Before generating any file, this skill checks the user's environment and lets them choose the export path that works for them. The recommended path is free and requires only Node.js.

---

## Export options

| Option | Tool | Cost | Limit | Output |
|---|---|---|---|---|
| **A — Recommended** | pptxgenjs (local script) | Free | No limit | `.pptx` → upload to Drive/Slides |
| **B — No-code** | Gamma | Free up to 10 slides, then paid | 10 slides free | Hosted presentation |
| **C — Fallback** | Markdown deck | Always free | No limit | `slides.md` navigable file |

---

## What to do

### Step 1 — Verify course is ready for export

Read `draft/progress.md`. Check:
- All modules have `Presentation.md` marked complete in the Production section
- `artifacts/branding.md` exists

If any `Presentation.md` is missing or incomplete, tell the user which lessons are affected and suggest running `courseforge:build-slides` first. Do not continue until the course is ready.

Count the total number of slides across all `Presentation.md` files. Keep this number — you'll need it when presenting options.

---

### Step 2 — Ask which export path they want

Present the three options clearly:

```
Your course has [N] slides. Here are your export options:

A) Free — pptxgenjs (recommended)
   Generates a .pptx file locally. Upload to Google Drive and open with Google Slides.
   Requires Node.js 18+ installed on your machine.
   → Fully branded, all slide types supported, no limits.

B) No-code — Gamma (gamma.app)
   Paste your content into Gamma. It generates a polished presentation in seconds.
   ⚠️  Free plan is limited to 10 slides. Your course has [N] slides — Gamma would
   require a paid plan ($8–15/month) to export all of them.

C) Fallback — Markdown deck
   Generates a slides.md file you can read, share, or convert manually.
   No visual branding — plain structured text. Good if you just need to share content fast.

Which option do you want to use? (A / B / C)
```

Wait for the user's answer before continuing.

---

### Step 3A — If they chose Option A (pptxgenjs)

#### 3A.1 — Check for Node.js automatically

Use the Bash tool to check silently — do not ask the user to do this manually:

```bash
node --version
```

**If Node.js 18+ is found:** proceed directly to 3A.2 without mentioning it to the user.

**If Node.js is missing or below v18:** do NOT just send them to a website. Guide them through installation based on their OS:

---

**Detecting OS:** Use the Bash tool to check:
```bash
uname -s
```
- `Darwin` → macOS
- `Linux` → Linux
- If neither (or Bash unavailable) → assume Windows

---

**macOS install guidance:**

First check if Homebrew is available:
```bash
which brew
```

If Homebrew exists:
```
You need Node.js to generate the slides. I can install it for you with one command:

  brew install node

Want me to run that now? (yes / no)
```
If yes → run `brew install node` via Bash tool, then verify with `node --version`.

If Homebrew is not available:
```
You need Node.js. The easiest way on macOS is:
1. Go to https://nodejs.org
2. Click "LTS" — download the .pkg file
3. Open it and follow the installer (just click Next → Next → Install)
4. Once done, come back here and I'll continue automatically.
```
After they confirm it's installed, verify with `node --version` via Bash tool.

---

**Windows install guidance:**
```
You need Node.js to generate the slides. Here's how to install it:
1. Go to https://nodejs.org
2. Click "LTS" — download the Windows Installer (.msi)
3. Run the installer — click Next → Next → Install (default options are fine)
4. When it finishes, close and reopen your terminal
5. Come back here and I'll continue automatically.
```
After they confirm, verify with `node --version` via Bash tool.

---

**Linux install guidance:**
```bash
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
```
Offer to run these via Bash tool if they consent.

---

Once Node.js is confirmed (regardless of path), proceed to 3A.2 without any further setup questions.

#### 3A.2 — Read and validate source material

Read all `Presentation.md` files across all modules in order:
```
course/Modules/Module_<NN>_<ModuleName>/Lessons/Lesson_<NN>_<LessonName>/Presentation.md
```

**Before continuing, validate each file:**
- Each slide must start with `## Slide NN — [slide-type]: [Title]`
- Each slide must have `**Content:**`, `**Talking points:**`, and `**Timing:**` fields
- Valid slide types: `title`, `module-header`, `content`, `code`, `two-col`, `demo-step`, `takeaway`, `closing`

If any file doesn't follow this format, stop and tell the user exactly which file and which slide has the issue. Suggest running `courseforge:build-slides` again for that lesson to regenerate a valid file.

Read `artifacts/branding.md` to extract hex colors. Verify it has at least `Primary` and `Secondary` color entries — if missing, tell the user to run `courseforge:define-branding` first.

Read `draft/define-course.md` to get the course title.

#### 3A.3 — Copy assets into `artifacts/`

Copy the plugin assets into `artifacts/` so the script can find them at runtime:

```
skills/export-slides/assets/telus-logo.jpg  →  artifacts/telus-logo.jpg
skills/export-slides/assets/module-bg.png   →  artifacts/module-bg.png
```

Use the Read and Write tools to copy the files. Do this before writing the script.

#### 3A.4 — Generate `artifacts/export-to-slides.js`

The script must follow this structure exactly:

**Config block:**
```javascript
const LOGO_PATH = path.join(__dirname, 'telus-logo.jpg');
const MODULE_BG  = path.join(__dirname, 'module-bg.png');
const LOGO_W = 2.6;
const LOGO_H = 0.50;
const LOGO_X = 0.3;        // left-aligned
const LOGO_Y = 0.14;
const CONTENT_TOP = 1.1;   // vertical offset — all content starts below logo
const W = 13.33;            // slide width in inches (widescreen)
const H = 7.5;              // slide height in inches
```

**`addLogo(s, darkBg)` helper:**
- Always adds the logo at top-left (`LOGO_X`, `LOGO_Y`)
- When `darkBg = true`, draws a white rectangle behind the logo first

**`txt(s, text, opts)` wrapper:**
- All text must go through this wrapper — it injects `lang: 'en-US'` into every `addText` call
- This prevents PowerPoint from underlining camelCase, paths, and code tokens as spelling errors

**Slide types:**

| Type | Background | Notes |
|---|---|---|
| `title` | White + primary color left bar | Logo top-left |
| `module-header` | `module-bg.png` image | Logo top-left with white pill behind it |
| `content` | White | Logo top-left, bullets with secondary color markers |
| `code` | White + dark `#1E1E2E` code box | macOS dots decoration, green mono text |
| `two-col` | White + dark `#1E1E2E` code boxes | Red mono left, green mono right |
| `demo-step` | Dark `#1A1A1A` | Logo top-left with white pill |
| `takeaway` | White + secondary color top bar | Centered large text |
| `closing` | White | Numbered items with secondary color square badges |

Colors come from `artifacts/branding.md` — use the hex values from there, not hardcoded values.

**SLIDES array** — each entry shape:
```javascript
{
  type: 'content',
  title: 'Slide title',
  bullets: ['bullet 1', 'bullet 2'],       // content / demo-step
  code: 'code block string',               // code slides
  left: { label: '...', items: [] },       // two-col
  right: { label: '...', items: [] },      // two-col
  step: '1 / 5',                           // demo-step
  items: ['action 1', 'action 2'],         // closing
  notes: 'speaker notes',
}
```

Populate the SLIDES array from all `Presentation.md` files in module order.

**Runtime prompt:**
```javascript
const author = await askQuestion('\n👤 Generated by (name or @github): ');
const fileName = author ? `${COURSE_TITLE} [${author}].pptx` : `${COURSE_TITLE}.pptx`;
```

#### 3A.5 — Verify `artifacts/package.json`

Must declare only `pptxgenjs`:
```json
{
  "dependencies": {
    "pptxgenjs": "^4.0.1"
  }
}
```

#### 3A.6 — Install dependencies automatically

Use the Bash tool to run `npm install` in the artifacts folder — do not ask the user to do this:

```bash
cd <course-folder>/artifacts && npm install
```

If it succeeds: proceed to 3A.7.

If it fails (permissions, network, etc.): show the user the exact error and tell them:
```
npm install failed. Try running this manually in your terminal:

  cd <course-folder>/artifacts
  npm install

Then come back and let me know when it's done.
```

---

#### 3A.7 — Tell the user the one command they need to run

```
Everything is ready. Run this command from your terminal:

  cd <course-folder>/artifacts
  node export-to-slides.js

Enter your name when prompted. The script generates a .pptx file in artifacts/.

Once you have the file:
  1. Open Google Drive
  2. Upload the .pptx
  3. Right-click → Open with → Google Slides

Drive converts it automatically. All slides, branding, and speaker notes are preserved.
```

---

### Step 3B — If they chose Option B (Gamma)

Explain the constraint clearly first:

```
Gamma's free plan supports up to 10 slides. Your course has [N] slides.

If you want to export all [N] slides, you'll need a Gamma paid plan:
  - Starter: ~$8/month
  - Plus: ~$15/month

If you only want to export a subset (e.g. one module or a sample deck of 10 slides),
the free plan works fine.

Do you want to:
  1. Export a sample of up to 10 slides for free
  2. Use a paid Gamma account and export everything
  3. Switch to Option A (free, no limits) or Option C (Markdown fallback)
```

Wait for their answer.

If they want to proceed with Gamma (full or sample):
- Generate `artifacts/gamma-export.md` — a clean Markdown file formatted for Gamma import, with slide titles as H2 headings and bullets as lists
- Tell them to go to gamma.app → New presentation → Import → paste the content
- Note: Gamma import works best with clean Markdown; the file is already formatted for it

---

### Step 3C — If they chose Option C (Markdown fallback)

Generate `artifacts/slides.md` — a structured Markdown file with all slides in order:

```markdown
# [Course Title]

---

## [Slide Title]

[bullets or content]

> Speaker notes: [notes]

---

## [Next Slide Title]
...
```

Tell the user:
```
slides.md has been created in artifacts/. It contains all [N] slides in order with speaker notes.

You can:
- Share it directly as a reference document
- Paste it into any Markdown viewer (Obsidian, Notion, GitHub)
- Use it as source material to build slides manually in any tool
```

---

### Step 4 — Update `draft/progress.md`

Add or update the Export section based on which option was chosen:

**Option A:**
```markdown
### Export
- [x] Export path: pptxgenjs (.pptx)
- [x] export-to-slides.js generated
- [ ] npm install completed
- [ ] .pptx exported
- [ ] Uploaded to Google Drive / Slides
```

**Option B:**
```markdown
### Export
- [x] Export path: Gamma
- [x] gamma-export.md generated
- [ ] Imported into Gamma
- [ ] Presentation published
```

**Option C:**
```markdown
### Export
- [x] Export path: Markdown fallback
- [x] slides.md generated
```

---

## Files produced per option

| Option | Files created in `artifacts/` |
|---|---|
| A — pptxgenjs | `export-to-slides.js`, `package.json`, `telus-logo.jpg`, `module-bg.png` |
| B — Gamma | `gamma-export.md` |
| C — Markdown | `slides.md` |
