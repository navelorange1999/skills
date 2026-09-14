# Bilingual README Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the current English-only README with a complete, accurate Chinese-and-English introduction to the repository.

**Architecture:** Keep one self-contained `README.md` with a language switcher, a complete Chinese section, and a semantically equivalent English section. Derive every feature claim, path, and command from the current skill definitions, install script, and repository layout.

**Tech Stack:** GitHub Flavored Markdown, Bash verification commands, GitHub Markdown rendering API

---

### Task 1: Establish the README Content Contract

**Files:**
- Test: `README.md` (one-off shell assertions; no test file is added)

- [ ] **Step 1: Run a failing bilingual-structure check**

```bash
for required in \
  '<a id="中文"></a>' \
  '<a id="english"></a>' \
  '## 技能总览' \
  '## Skills at a Glance' \
  '## 贡献指南' \
  '## Contributing'; do
  rg -Fq "$required" README.md || {
    printf 'missing: %s\n' "$required"
    exit 1
  }
done
```

Expected: FAIL on the first missing bilingual marker because the current
README contains only English content.

- [ ] **Step 2: Confirm repository facts before writing**

```bash
find . -mindepth 2 -maxdepth 2 -name SKILL.md -not -path './.git/*' -print
./install.sh --help
```

Expected: three skill definitions and installer help listing `claude`,
`codex`, `--dry-run`, `--force`, and `--help`.

### Task 2: Rewrite the README

**Files:**
- Modify: `README.md`

- [ ] **Step 1: Add the shared title and language navigation**

Use `# Skills` as the single document title, follow it with a bilingual
one-sentence description, and add links to `#中文` and `#english`. Define the
two stable anchors with `<a id="中文"></a>` and `<a id="english"></a>`.

- [ ] **Step 2: Write the complete Chinese section**

Add these sections in order:

1. `## 项目简介`: explain that the repository contains reusable AI agent
   skills and that each skill packages instructions plus optional references
   and agent metadata.
2. `## 设计理念`: describe scoped triggers, repeatable workflows, explicit
   boundaries, and repository-based maintenance without claiming a runtime
   feature not present in the repo.
3. `## 技能总览`: table with the exact directory names
   `learn-by-doing`, `how-to-read-a-book`, and `trading-article-writer`, linked
   to their `SKILL.md` files and summarized by use case.
4. `## 技能详情`: for each skill, list when to use it, the core workflow, and
   its checked-in directory tree. Preserve these boundaries:
   `learn-by-doing` guides learners without handing them full runnable
   solutions; `how-to-read-a-book` supports inspectional, analytical,
   syntopical, and technical reading; `trading-article-writer` separates
   evidence from inference and requires review before publishing.
5. `## 安装`: document all-agent installation, agent-specific installation,
   `--dry-run`, `--force`, and `--help` using commands accepted by
   `install.sh`; include the exact Claude Code and Codex target paths.
6. `## 手动安装`: show symlinks for all three skills without suggesting file
   copies.
7. `## 仓库结构`: show `README.md`, `install.sh`, all three skill directories,
   and the documentation directory.
8. `## 添加新技能`: require `<skill-name>/SKILL.md`, accurate frontmatter,
   scoped instructions, optional `references/` and `agents/`, and README
   updates; note that `install.sh` auto-discovers skill directories.
9. `## 贡献指南`: request focused changes, documentation updates, installer
   dry runs, and valid Markdown.
10. `## 许可证`: state MIT.

- [ ] **Step 3: Write the complete English section**

Mirror the Chinese section as natural English using these headings:

```text
## Overview
## Design Principles
## Skills at a Glance
## Skill Details
## Installation
## Manual Installation
## Repository Structure
## Adding a Skill
## Contributing
## License
```

Keep commands, paths, directory names, links, capabilities, and limitations
identical in meaning to the Chinese section.

- [ ] **Step 4: Run the bilingual-structure check again**

Run the command from Task 1, Step 1.

Expected: PASS with exit code 0 and no missing-marker output.

### Task 3: Verify Rendering and Documented Behavior

**Files:**
- Verify: `README.md`
- Verify: `install.sh`

- [ ] **Step 1: Check Markdown structure and whitespace**

```bash
git diff --check
awk '/^```/{count++} END { print "code_fences=" count; exit count % 2 }' README.md
```

Expected: exit code 0, no whitespace errors, and an even code-fence count.

- [ ] **Step 2: Check every relative Markdown link**

```bash
ruby -e '
text = File.read("README.md")
links = text.scan(/\[[^\]]+\]\((?!https?:|#)([^)]+)\)/).flatten.uniq
missing = links.reject { |path| File.exist?(path) }
abort "Missing links: #{missing.join(", ")}" unless missing.empty?
puts "relative_links=#{links.length}"
'
```

Expected: exit code 0 and a positive relative-link count.

- [ ] **Step 3: Verify installer examples against the script**

```bash
./install.sh --help
./install.sh --dry-run
./install.sh claude --dry-run
./install.sh codex --dry-run
```

Expected: all commands exit 0; dry runs report planned symlinks without
changing the user's skill directories.

- [ ] **Step 4: Render with GitHub's GFM endpoint**

```bash
jq -Rs '{text: ., mode: "gfm", context: "navelorange1999/skills"}' README.md \
  | gh api markdown --method POST --input - \
  | rg -o '<h2|<table|<pre' \
  | sort \
  | uniq -c
```

Expected: rendered HTML contains level-two headings, tables, and preformatted
code blocks.

### Task 4: Publish the Rewrite

**Files:**
- Modify: `README.md`
- Include: `docs/superpowers/plans/2026-09-14-bilingual-readme.md`

- [ ] **Step 1: Review the complete change**

```bash
git status --short
git diff --stat
git diff -- README.md
```

Expected: only the README and this implementation plan are part of the new
work; no skill definition or installer changes.

- [ ] **Step 2: Commit the implementation**

```bash
git add README.md docs/superpowers/plans/2026-09-14-bilingual-readme.md
git commit -m "Rewrite README with bilingual project guide"
```

Expected: one focused commit containing the README rewrite and implementation
plan.

- [ ] **Step 3: Push and confirm the remote commit**

```bash
git push origin master
git rev-parse HEAD
gh api repos/navelorange1999/skills/commits/master --jq .sha
```

Expected: push succeeds and the local and remote commit SHAs match.
