# Skills

面向 AI 助手的可复用技能集合 · A collection of reusable skills for AI agents

[中文](#中文) · [English](#english)

---

<a id="中文"></a>

## 项目简介

这个仓库收录了一组可复用的 AI Agent 技能，用于把通用助手转变为具备明确方法、工作流和边界的专业协作者。目前的技能覆盖实践驱动学习、长篇内容阅读，以及个人投资文章写作。

每个技能都以独立目录维护，并至少包含一个 `SKILL.md`。技能还可以携带参考资料、Agent 配置和其他配套资源，因此它既是一段提示词，也是一套可以持续维护、版本化和复用的工作方法。

## 设计理念

- **触发明确**：说明技能适合什么任务，也说明哪些任务不应触发它。
- **流程可复用**：把高质量工作拆成稳定步骤、检查点和交付标准。
- **边界清晰**：记录安全要求、拒绝项和需要人工确认的操作。
- **资料就近维护**：将方法说明、参考资料和 Agent 元数据放在同一技能目录中。
- **更新无漂移**：安装脚本使用符号链接；拉取仓库更新后，已安装技能会同步更新。

## 技能总览

| 技能 | 适合的任务 | 核心方法 |
|---|---|---|
| [`learn-by-doing`](learn-by-doing/SKILL.md) | 学习技术主题、制定实践路线、批改学习项目、练习中答疑 | 以真实项目驱动学习，通过苏格拉底式提问和渐进提示帮助学习者独立解决问题 |
| [`how-to-read-a-book`](how-to-read-a-book/SKILL.md) | 阅读或总结书籍、论文、RFC、设计文档、报告及代码库 | 运用检视阅读、分析阅读、主题阅读和面向技术材料的阅读框架 |
| [`trading-article-writer`](trading-article-writer/SKILL.md) | 撰写或修改个人投资博客、市场观点、交易复盘和 Trading 文章 | 区分事实、推论和个人规则，围绕论点、催化剂、证伪条件与监控指标组织文章 |

## 技能详情

### `learn-by-doing`

适用于“我想学习某项技术”“帮我制定学习路线”“检查我的练习”或学习过程中遇到困难的场景。

它会：

- 根据学习者的基础、目标、时间和技术栈设计路线；
- 将主题拆成 3–5 个递进章节，每章包含 2–3 个真实、可完成的项目；
- 为项目生成任务清单、思考题、精选文档和可自检的验收标准；
- 在练习阶段通过提问、提示和资料指引逐步缩小问题范围；
- 在批改阶段运行并核对作品，在文件内留下有优先级的反馈；
- 保留必要的学习阻力，不直接代写完整可运行答案。

```text
learn-by-doing/
├── SKILL.md
└── references/
    └── project-design-guide.md
```

### `how-to-read-a-book`

适用于代读与总结、陪伴式阅读、多来源比较，以及对论文、规范、设计文档或代码库的技术精读。

它会：

- 先判断材料类型和阅读目标，再选择合适的阅读层级；
- 用“整体讲什么、细节如何展开、是否成立、意义何在”四个问题组织理解；
- 按结构、解释、批判三个阶段执行分析阅读；
- 在多来源任务中统一术语、明确问题、识别真正分歧并构建议题地图；
- 针对实践类书籍、文学、历史、科学与数学、哲学和社会科学采用不同规则；
- 在 RFC、论文、设计文档和代码库等技术材料上使用相应的分析方法。

```text
how-to-read-a-book/
├── SKILL.md
└── references/
    ├── README.md
    ├── practical-books.md
    ├── imaginative-literature.md
    ├── history.md
    ├── science-and-math.md
    ├── philosophy.md
    └── social-science.md
```

### `trading-article-writer`

适用于把投资研究整理成个人投资博客、市场论点、交易日志或可审阅的 Trading 文章。

它会：

- 提炼文章的核心矛盾，并尽早陈述主要论点；
- 核验时效性事实，区分已报道事实、推导结论和个人交易规则；
- 组织交易表达、催化剂、证伪条件和后续监控证据；
- 根据语义选择 Mermaid 图，而不是用图表装饰文章；
- 生成标题、摘要、slug、主标签和完整 Markdown 正文；
- 在任何 CMS 发布动作前展示完整文章并要求明确批准。

```text
trading-article-writer/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    └── mermaid-editorial-guide.md
```

## 安装

先克隆仓库并进入目录：

```bash
git clone https://github.com/navelorange1999/skills.git
cd skills
```

安装全部技能到所有受支持的 Agent：

```bash
./install.sh
```

也可以指定 Agent 或安装选项：

```bash
./install.sh claude            # 仅安装到 Claude Code
./install.sh codex             # 仅安装到 Codex
./install.sh claude codex      # 明确安装到两者
./install.sh --dry-run         # 仅显示计划执行的操作
./install.sh --force           # 替换指向错误位置的旧符号链接
./install.sh --help            # 查看帮助
```

| Agent | 安装目录 |
|---|---|
| Claude Code | `~/.claude/skills/` |
| Codex | `~/.agents/skills/` |

安装脚本会自动发现所有包含 `SKILL.md` 的一级子目录，并为每个技能创建符号链接。重复运行是安全的：正确的链接会保留；普通文件或目录不会被覆盖；旧链接只有在使用 `--force` 时才会替换。

## 手动安装

如果不使用安装脚本，可以手动创建符号链接。以下示例安装当前全部技能。

Claude Code：

```bash
mkdir -p ~/.claude/skills
ln -s "$(pwd)/learn-by-doing" ~/.claude/skills/learn-by-doing
ln -s "$(pwd)/how-to-read-a-book" ~/.claude/skills/how-to-read-a-book
ln -s "$(pwd)/trading-article-writer" ~/.claude/skills/trading-article-writer
```

Codex：

```bash
mkdir -p ~/.agents/skills
ln -s "$(pwd)/learn-by-doing" ~/.agents/skills/learn-by-doing
ln -s "$(pwd)/how-to-read-a-book" ~/.agents/skills/how-to-read-a-book
ln -s "$(pwd)/trading-article-writer" ~/.agents/skills/trading-article-writer
```

## 仓库结构

```text
skills/
├── README.md
├── install.sh
├── learn-by-doing/
│   ├── SKILL.md
│   └── references/
├── how-to-read-a-book/
│   ├── SKILL.md
│   └── references/
├── trading-article-writer/
│   ├── SKILL.md
│   ├── agents/
│   └── references/
└── docs/
    └── superpowers/
        ├── specs/
        └── plans/
```

## 添加新技能

1. 新建 `<skill-name>/` 目录，并添加 `<skill-name>/SKILL.md`。
2. 在 `SKILL.md` 的 frontmatter 中提供准确的 `name` 和 `description`，明确触发条件及适用边界。
3. 将较长的方法说明或领域资料放入可选的 `references/`，将 Agent 元数据放入可选的 `agents/`。
4. 保持技能聚焦于一个清晰目标，写明工作流、检查项和需要人工确认的操作。
5. 在本 README 的中英文部分同步补充技能介绍。
6. 运行 `./install.sh --dry-run`；安装脚本会自动发现新的技能目录，无需维护固定清单。

## 贡献指南

欢迎提交 Issue 或 Pull Request。请让每次改动保持聚焦，并在提交前确认：

- 技能描述、触发条件和实际行为一致；
- 新增或修改的参考资料已被正确链接；
- README 的中英文内容同步更新；
- `./install.sh --dry-run` 能识别所有技能；
- Markdown 表格、代码块和相对链接可以正常渲染。

## 许可证

MIT

---

<a id="english"></a>

## Overview

This repository contains reusable AI agent skills that turn a general-purpose assistant into a specialized collaborator with an explicit method, workflow, and set of boundaries. The current collection covers practice-driven learning, long-form reading, and personal investment writing.

Each skill lives in its own directory and contains at least one `SKILL.md`. A skill may also include references, agent configuration, and other supporting resources, making it more than a prompt: it is a maintainable, versioned, reusable way of working.

## Design Principles

- **Explicit triggers:** State which tasks should activate a skill and which should not.
- **Repeatable workflows:** Turn high-quality work into stable steps, checkpoints, and delivery standards.
- **Clear boundaries:** Record safety requirements, refusal conditions, and actions that require human approval.
- **Colocated resources:** Keep instructions, references, and agent metadata together in the skill directory.
- **Drift-free updates:** The installer uses symlinks, so installed skills follow updates after the repository is pulled.

## Skills at a Glance

| Skill | Best for | Core approach |
|---|---|---|
| [`learn-by-doing`](learn-by-doing/SKILL.md) | Learning a technical topic, creating a practice roadmap, reviewing exercises, and getting unstuck | Teach through real projects, Socratic questions, and progressive hints so learners solve problems themselves |
| [`how-to-read-a-book`](how-to-read-a-book/SKILL.md) | Reading or summarizing books, papers, RFCs, design documents, reports, and codebases | Apply inspectional, analytical, syntopical, and technical reading frameworks |
| [`trading-article-writer`](trading-article-writer/SKILL.md) | Drafting or revising personal investment blogs, market theses, trade journals, and Trading articles | Separate evidence, inference, and personal rules; organize around thesis, catalysts, disconfirmers, and monitoring |

## Skill Details

### `learn-by-doing`

Use this skill when someone wants to learn a technical subject, build a learning roadmap, review completed exercises, or work through a blocker during practice.

It will:

- assess the learner's background, goal, available time, and preferred stack;
- divide a topic into 3–5 progressive chapters with 2–3 realistic, scoped projects per chapter;
- generate project checklists, thinking prompts, selected documentation, and self-verifiable success criteria;
- narrow problems through questions, hints, and reading guidance during practice;
- run and inspect completed work, leaving prioritized feedback directly in the relevant files; and
- preserve productive struggle instead of writing a complete runnable solution for the learner.

```text
learn-by-doing/
├── SKILL.md
└── references/
    └── project-design-guide.md
```

### `how-to-read-a-book`

Use this skill for delegated reading and summaries, guided reading, multi-source comparison, and technical analysis of papers, specifications, design documents, or codebases.

It will:

- classify the material and reading goal before choosing the appropriate level of reading;
- organize understanding around four questions: what the work says as a whole, how it says it in detail, whether it is true, and why it matters;
- conduct analytical reading through structural, interpretive, and critical stages;
- normalize terminology, clarify questions, identify real disagreements, and build an issue map across sources;
- adapt its method for practical books, literature, history, science and mathematics, philosophy, and social science; and
- apply genre-specific analysis to RFCs, papers, design documents, and source code.

```text
how-to-read-a-book/
├── SKILL.md
└── references/
    ├── README.md
    ├── practical-books.md
    ├── imaginative-literature.md
    ├── history.md
    ├── science-and-math.md
    ├── philosophy.md
    └── social-science.md
```

### `trading-article-writer`

Use this skill to turn investment research into a personal investment post, market thesis, trade journal, or review-ready Trading article.

It will:

- identify the central tension and state the main thesis early;
- verify time-sensitive facts and separate reported evidence, derived conclusions, and personal trading rules;
- organize trade expression, catalysts, disconfirmers, and evidence to monitor;
- choose Mermaid diagrams for their meaning rather than as decoration;
- produce a title, excerpt, slug, primary tag, and complete Markdown article; and
- show the complete article and require explicit approval before any CMS publishing action.

```text
trading-article-writer/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    └── mermaid-editorial-guide.md
```

## Installation

Clone the repository and enter its directory:

```bash
git clone https://github.com/navelorange1999/skills.git
cd skills
```

Install every skill for all supported agents:

```bash
./install.sh
```

You can also select an agent or installation option:

```bash
./install.sh claude            # install for Claude Code only
./install.sh codex             # install for Codex only
./install.sh claude codex      # explicitly install for both
./install.sh --dry-run         # show planned operations without changing anything
./install.sh --force           # replace stale symlinks that point elsewhere
./install.sh --help            # show help
```

| Agent | Target directory |
|---|---|
| Claude Code | `~/.claude/skills/` |
| Codex | `~/.agents/skills/` |

The installer discovers every top-level directory containing `SKILL.md` and creates a symlink for each skill. Re-running it is safe: correct links are preserved, regular files and directories are never overwritten, and stale links are replaced only with `--force`.

## Manual Installation

If you prefer not to use the installer, create the symlinks manually. The following examples install every current skill.

Claude Code:

```bash
mkdir -p ~/.claude/skills
ln -s "$(pwd)/learn-by-doing" ~/.claude/skills/learn-by-doing
ln -s "$(pwd)/how-to-read-a-book" ~/.claude/skills/how-to-read-a-book
ln -s "$(pwd)/trading-article-writer" ~/.claude/skills/trading-article-writer
```

Codex:

```bash
mkdir -p ~/.agents/skills
ln -s "$(pwd)/learn-by-doing" ~/.agents/skills/learn-by-doing
ln -s "$(pwd)/how-to-read-a-book" ~/.agents/skills/how-to-read-a-book
ln -s "$(pwd)/trading-article-writer" ~/.agents/skills/trading-article-writer
```

## Repository Structure

```text
skills/
├── README.md
├── install.sh
├── learn-by-doing/
│   ├── SKILL.md
│   └── references/
├── how-to-read-a-book/
│   ├── SKILL.md
│   └── references/
├── trading-article-writer/
│   ├── SKILL.md
│   ├── agents/
│   └── references/
└── docs/
    └── superpowers/
        ├── specs/
        └── plans/
```

## Adding a Skill

1. Create `<skill-name>/` and add `<skill-name>/SKILL.md`.
2. Provide accurate `name` and `description` frontmatter, including clear triggers and scope boundaries.
3. Put longer methods or domain material in an optional `references/` directory and agent metadata in an optional `agents/` directory.
4. Keep the skill focused on one clear goal, with an explicit workflow, checks, and human-approval gates where needed.
5. Add the skill to both language sections of this README.
6. Run `./install.sh --dry-run`. The installer discovers the new directory automatically, so there is no fixed skill list to maintain.

## Contributing

Issues and pull requests are welcome. Keep each change focused and confirm the following before submitting:

- The skill description and triggers match its actual behavior.
- New or changed references are linked correctly.
- The Chinese and English README sections remain in sync.
- `./install.sh --dry-run` discovers every skill.
- Markdown tables, code blocks, and relative links render correctly.

## License

MIT
