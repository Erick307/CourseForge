#!/usr/bin/env bash
set -euo pipefail

PLUGIN_DIR="$HOME/.claude/plugins/courseforge"
GLOBAL_CLAUDE="$HOME/.claude/CLAUDE.md"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing CourseForge to $PLUGIN_DIR..."

# Create plugin directory
mkdir -p "$PLUGIN_DIR/skills"

# Copy plugin files
cp "$SCRIPT_DIR/CLAUDE.md" "$PLUGIN_DIR/"
cp "$SCRIPT_DIR/plugin.json" "$PLUGIN_DIR/"
cp "$SCRIPT_DIR/skills/"*.md "$PLUGIN_DIR/skills/"

# Ensure global CLAUDE.md exists
mkdir -p "$HOME/.claude"
touch "$GLOBAL_CLAUDE"

# Add plugin block if not already present
if grep -q "courseforge" "$GLOBAL_CLAUDE" 2>/dev/null; then
  echo "CourseForge entry already found in $GLOBAL_CLAUDE — skipping."
else
  cat >> "$GLOBAL_CLAUDE" << 'BLOCK'

---

## CourseForge Plugin

CourseForge is installed at `~/.claude/plugins/courseforge/`. It is a skill-based plugin for designing, structuring, and writing courses with AI.

When any of the following skills is invoked, read the corresponding file from `~/.claude/plugins/courseforge/skills/` and follow its instructions exactly.

| Skill | File |
|---|---|
| `courseforge:help` | `skills/help.md` |
| `courseforge:brainstorm` | `skills/brainstorm.md` |
| `courseforge:status` | `skills/status.md` |
| `courseforge:setup` | `skills/setup.md` |
| `courseforge:start` | `skills/start.md` |
| `courseforge:define-course` | `skills/define-course.md` |
| `courseforge:define-scope` | `skills/define-scope.md` |
| `courseforge:define-modules` | `skills/define-modules.md` |
| `courseforge:define-lesson-structure` | `skills/define-lesson-structure.md` |
| `courseforge:define-branding` | `skills/define-branding.md` |
| `courseforge:create-templates` | `skills/create-templates.md` |
| `courseforge:write-lesson` | `skills/write-lesson.md` |
| `courseforge:build-slides` | `skills/build-slides.md` |
| `courseforge:write-teacher-guide` | `skills/write-teacher-guide.md` |
| `courseforge:review-course` | `skills/review-course.md` |
| `courseforge:refine` | `skills/refine.md` |

Always start a CourseForge session with `/courseforge:start`. Run `/courseforge:help` for a full overview.
BLOCK
  echo "CourseForge block added to $GLOBAL_CLAUDE"
fi

echo ""
echo "CourseForge installed successfully."
echo "Skills are now available as /courseforge:* commands in any Claude Code session."
echo ""
echo "Get started: /courseforge:help"
