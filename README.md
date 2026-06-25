# CourseForge

A Claude Code plugin for designing, structuring, and writing courses with AI.

CourseForge guides you from a blank page to a fully produced course — audience definition, module structure, lesson content, slides, and instructor guides — through a series of focused, step-by-step skills.

## Requirements

- [Claude Code](https://claude.ai/code) installed and available in your terminal

## Installation

```bash
git clone https://github.com/Erick307/CourseForge.git
cd courseforge
chmod +x install.sh
./install.sh
```

The installer copies the plugin to `~/.claude/plugins/courseforge/` and registers the skills in your global `~/.claude/CLAUDE.md`. After that, the `/courseforge:*` commands are available in any Claude Code session, in any directory.

## Usage

Open a new Claude Code session in the directory where you want to create your course and run:

```
/courseforge:start
```

The coordinator reads your current progress and picks up exactly where you left off — or walks you through setup if this is a new course.

For a full overview of the plugin and all available skills:

```
/courseforge:help
```

## Skills

### Session management
| Skill | What it does |
|---|---|
| `courseforge:start` | Reads progress and routes to the next step — start every session here |
| `courseforge:status` | Shows what's done and what's next |
| `courseforge:brainstorm` | Captures ideas at any point without interrupting the flow |
| `courseforge:help` | Overview of CourseForge and all available skills |

### Setup
| Skill | What it does |
|---|---|
| `courseforge:setup` | Creates the folder structure for a new course |

### Phase 1 — Structure
| Skill | What it does |
|---|---|
| `courseforge:define-course` | Audience, goal, and length |
| `courseforge:define-scope` | In scope, out of scope, prerequisites |
| `courseforge:define-modules` | Ordered module list |
| `courseforge:define-lesson-structure` | Anatomy of each lesson |

### Phase 2 — Design
| Skill | What it does |
|---|---|
| `courseforge:define-branding` | Colors, fonts, and logos |
| `courseforge:create-templates` | Content template and slide template |

### Phase 3 — Production
| Skill | What it does |
|---|---|
| `courseforge:write-lesson` | Full lesson content document |
| `courseforge:build-slides` | Slide outline from lesson content |
| `courseforge:write-teacher-guide` | Instructor notes for a lesson |

### Review
| Skill | What it does |
|---|---|
| `courseforge:review-course` | Full course consistency check |
| `courseforge:refine` | Improve or rewrite a lesson or module |

## Uninstalling

```bash
rm -rf ~/.claude/plugins/courseforge
```

Then open `~/.claude/CLAUDE.md` and remove the `## CourseForge Plugin` section.
