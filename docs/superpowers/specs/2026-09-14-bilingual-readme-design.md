# Bilingual README Redesign

## Goal

Rewrite the repository README as a complete, easy-to-scan introduction for
both Chinese- and English-speaking visitors. The document must accurately
describe the repository as it exists today and help a first-time visitor
understand, choose, install, and contribute a skill.

## Audience

- People discovering reusable AI agent skills for the first time
- Claude Code and Codex users who want to install one or more skills
- Contributors who want to add another skill to the repository

## Language Structure

Keep both complete translations in `README.md`:

1. A compact language switcher at the top links to the Chinese and English
   sections.
2. The complete Chinese section appears first.
3. The complete English section follows and mirrors the same information and
   ordering.

This structure favors uninterrupted reading in either language over
line-by-line comparison.

## Content Structure

Each language section will contain:

1. Project overview and design principles
2. A table summarizing the three current skills
3. A detailed introduction to each skill, including use cases, capabilities,
   and repository structure
4. Quick-start installation commands
5. Supported agents and target directories
6. Manual installation instructions
7. Repository layout and the convention for adding a skill
8. A concise contribution guide
9. License information

## Source of Truth

All claims and examples must be derived from the current repository:

- `learn-by-doing/SKILL.md`
- `how-to-read-a-book/SKILL.md`
- `trading-article-writer/SKILL.md`
- `install.sh`
- The checked-in directory layout

The README will not advertise unsupported agents, commands, automation, or
publishing behavior.

## Presentation Rules

- Use short paragraphs, tables, lists, and fenced code blocks for scanability.
- Preserve exact skill directory names and installation commands.
- Use relative links so skill definitions and references are navigable on
  GitHub.
- Keep Chinese and English sections semantically equivalent, while favoring
  natural phrasing over literal translation.
- Avoid decorative badges and screenshots that would add maintenance burden.

## Scope

Only `README.md` changes during implementation. Skill definitions,
installation behavior, and repository code remain unchanged.

## Verification

Before publishing the rewrite:

- Render the document through GitHub's GFM Markdown endpoint.
- Confirm headings, tables, code blocks, and internal links are recognized.
- Run `./install.sh --help` and `./install.sh --dry-run` to verify documented
  commands still match the script.
- Check the final diff for formatting errors and unintended file changes.

## Acceptance Criteria

- A visitor can switch directly to either complete language section.
- All three skills are accurately summarized and linked.
- Installation paths and command examples match `install.sh`.
- Adding a new skill is explained without implying extra tooling.
- GitHub renders the README without malformed blocks or broken relative links.
