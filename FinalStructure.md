# CourseForge — Final Output Structure

This document defines the canonical file and folder structure for any course produced with CourseForge.

---

## Top-Level Layout

```
CourseTitle/
├── Course.md
└── Modules/
    ├── Module_01_<ModuleName>/
    │   ├── Module.md
    │   └── Lessons/
    │       ├── Lesson_01_<LessonName>/
    │       │   ├── Content.md
    │       │   ├── Presentation.md
    │       │   └── TeacherGuide.md
    │       ├── Lesson_02_<LessonName>/
    │       │   ├── Content.md
    │       │   ├── Presentation.md
    │       │   └── TeacherGuide.md
    │       └── ...
    ├── Module_02_<ModuleName>/
    │   ├── Module.md
    │   └── Lessons/
    │       └── ...
    └── ...
```

---

## File Definitions

### `Course.md` — Course Definition

The single source of truth for the entire course.

| Section | Description |
|---|---|
| **Title** | Full course name |
| **Tagline** | One-sentence hook |
| **Description** | 2–3 paragraph overview of the course |
| **Target Audience** | Who this course is for; assumed background |
| **Prerequisites** | Skills or knowledge required before starting |
| **Goals** | High-level outcomes the course delivers |
| **Learning Objectives** | Measurable skills the student will have by the end |
| **Scope** | What is covered and what is explicitly out of scope |
| **Index** | Ordered list of all modules and their lessons |
| **Duration** | Estimated total time to complete |
| **Assessment Strategy** | How learning is validated across the course |

---

### `Module.md` — Module Definition

One per module. Mirrors the course definition at the module level.

| Section | Description |
|---|---|
| **Title** | Module name |
| **Description** | What this module covers and why it matters |
| **Learning Objective** | The single skill or understanding unlocked by completing this module |
| **Lessons** | Ordered list of lessons in this module |
| **Duration** | Estimated time to complete the module |
| **Assessment** | Quiz, project, or activity that closes the module |

---

### `Content.md` — Lesson Content

The core instructional document for the lesson. Written for the student.

| Section | Description |
|---|---|
| **Title** | Lesson name |
| **Learning Objective** | What the student can do after this lesson |
| **Introduction** | Hook and context — why this lesson matters |
| **Body** | Main explanation, broken into logical sections with examples |
| **Practice** | Exercise or activity the student completes |
| **Summary** | Key takeaways in 3–5 bullet points |
| **What's Next** | Bridge to the following lesson |

---

### `Presentation.md` — Lesson Presentation

Slide-by-slide outline for delivering the lesson in a live or recorded format.

| Section | Description |
|---|---|
| **Slide outline** | One entry per slide: title + talking points |
| **Visuals** | Notes on diagrams, screenshots, or demos per slide |
| **Timing** | Suggested time per slide or section |
| **Discussion Prompts** | Questions to pose to the audience at key moments |

---

### `TeacherGuide.md` — Teacher Support

Internal document for the instructor. Not shared with students.

| Section | Description |
|---|---|
| **Lesson Summary** | Quick recap of what this lesson teaches |
| **Common Mistakes** | Misconceptions or errors students frequently make |
| **Facilitation Tips** | How to pace, explain, or demonstrate key concepts |
| **Differentiation** | Suggestions for advanced students or those who need more support |
| **Materials Needed** | Tools, links, or resources required to deliver the lesson |
| **Q&A Prep** | Anticipated questions and suggested answers |
