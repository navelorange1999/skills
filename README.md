# Skills

A collection of reusable Claude skills for practice-driven learning and development.

## Available Skills

### learn-by-doing

A practice-driven technical learning guide that creates project-based learning paths. Instead of passively reading docs, learners build real things to acquire knowledge.

**Key features:**

- Designs hands-on projects that teach through building
- Strict Socratic guidance — no code output, only questions and hints
- Progressive chapter-based roadmaps with 2-5 day projects
- Embedded thinking prompts and self-assessable verification criteria
- Supports both English and Chinese

**Structure:**

\`\`\`
learn-by-doing/
├── SKILL.md                         # Main skill definition
└── references/
    └── project-design-guide.md      # Project design principles
\`\`\`

### how-to-read-a-book

A disciplined reading protocol distilled from Mortimer Adler & Charles Van Doren's *How to Read a Book* (1972). Applies the full Adlerian framework — four levels of reading, analytical reading's three stages and eleven rules, syntopical reading's five steps, and genre-specific rules — to any long-form text: books, papers, RFCs, specs, design docs, even source code treated as a document.

**Key features:**

- Four operating modes with distinct strategies: reading on behalf of the user, Socratic guidance through a book, syntopical multi-source comparison, and technical long-form analysis (RFCs/papers/codebases)
- Complete preservation of Adler's framework — eleven analytical rules, five syntopical steps, four grounds for disagreement (uninformed / misinformed / illogical / incomplete analysis)
- Genre-specific rules for practical books, imaginative literature, stories / plays / poems, history, science & math, philosophy, and social science
- Bilingual trigger words — reads source material in its original language, responds in the user's language
- Trigger → mode routing table for composite scenarios (e.g., "compare these three RFCs" → syntopical + technical)

**Structure:**

\`\`\`
how-to-read-a-book/
├── SKILL.md                         # Main skill: philosophy, 4 modes, 11 rules, 5 steps
└── references/
    ├── README.md                    # Index + cross-genre notes
    ├── practical-books.md
    ├── imaginative-literature.md    # Includes stories, plays, poems
    ├── history.md
    ├── science-and-math.md
    ├── philosophy.md
    └── social-science.md
\`\`\`

### trading-article-writer

An evidence-led writing workflow for personal investment blogs, market theses,
trade journals, and Chankay Trading posts. It turns research into a publishable
first-person narrative while preserving uncertainty and requiring explicit
review before any CMS publication.

**Key features:**

- Separates reported facts, derived conclusions, and personal trading rules
- Covers thesis, trade expression, catalysts, disconfirmers, and monitoring
- Selects Mermaid diagrams by meaning instead of repeating flowcharts
- Prevents unsupported targets, allocations, and accidental position disclosure
- Produces review-ready title, excerpt, slug, tag, and Markdown content
- Requires explicit approval before any external publishing action

**Structure:**

\`\`\`
trading-article-writer/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    └── mermaid-editorial-guide.md
\`\`\`

## Usage

### One-command install

Run `./install.sh` from the repo root to symlink every skill into your
agent's skill directory. Symlinks are used so `git pull` updates propagate
automatically — no copy, no drift.

\`\`\`
./install.sh                   # install to all supported agents
./install.sh claude            # install to Claude Code only
./install.sh claude codex      # install to both explicitly
./install.sh --dry-run         # show what would happen, change nothing
./install.sh --force           # replace stale symlinks
./install.sh --help
\`\`\`

Supported agents and their skill directories:

| Agent | Target |
|---|---|
| `claude` | `~/.claude/skills/` |
| `codex` | `~/.agents/skills/` |

The script auto-discovers every `<skill-name>/SKILL.md` in this repo.
Re-running is safe (idempotent): already-correct links are left alone,
non-symlinks are refused, and stale symlinks require `--force`.

### Manual install

If you'd rather not run the script, just symlink the skill directories
yourself:

\`\`\`
ln -s "$(pwd)/learn-by-doing"       ~/.claude/skills/learn-by-doing
ln -s "$(pwd)/how-to-read-a-book"   ~/.claude/skills/how-to-read-a-book
ln -s "$(pwd)/trading-article-writer" ~/.agents/skills/trading-article-writer
\`\`\`

## License

MIT
