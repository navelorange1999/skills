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

## Usage

These skills are designed to work with Claude's skill system. Add them to your \`.claude/skills/\` directory or reference them in your Claude configuration.

## License

MIT
