---
name: trading-article-writer
description: Use when drafting or revising a personal investment blog post, Trading article, market thesis, trade journal, or Chankay Trading post, especially when evidence, security selection, catalysts, disconfirmers, monitoring rules, or Mermaid diagrams must be turned into a publishable narrative.
---

# Trading Article Writer

## Purpose

Turn investment research into a clear first-person essay. Preserve uncertainty: separate reported facts, derived conclusions, and the author's trading rules. The article should explain how the author thinks, not imitate a brokerage recommendation.

## Workflow

1. Recover the user's relevant prior research when available. Do not expose private position size, cost basis, or account details unless the user explicitly asks to publish them.
2. Identify the central tension and state the thesis near the opening. Prefer one memorable argument over a survey of everything known.
3. Verify time-sensitive market, company, policy, tax, and financial facts. Attach an as-of date and link material claims to primary sources when possible. Label estimates and subjective scores.
4. Build a narrative around evidence, interpretation, trade expression, catalysts, disconfirmers, and monitoring. Use headings only when they improve the reading rhythm.
5. Choose Mermaid diagrams by semantic fit. Read [references/mermaid-editorial-guide.md](references/mermaid-editorial-guide.md) whenever the article will contain diagrams.
6. Deliver a review package: title, excerpt, slug, primary tag, and complete Markdown body. Default `primaryTag` to `Trading` for trading articles.

## Editorial Rules

- Lead with the conclusion or tension; do not open with generic industry background.
- Explain why the market may be wrong, what must happen next, and what would prove the thesis wrong.
- Distinguish a core expression, a convex or event-driven expression, and a vehicle-selection decision when relevant.
- Do not invent targets, probabilities, portfolio weights, or precision. Clearly mark illustrative assumptions.
- End with monitoring evidence or conditional action rules, followed by the standard disclaimer footer below.
- Keep prose usable without the diagrams; every diagram must sharpen a relationship rather than decorate the page.

## Standard Disclaimer Footer

End every finished Trading article with a Markdown horizontal rule, a blank line, and one italicized disclaimer paragraph. Do not add a `免责声明` heading or render the paragraph as a blockquote.

Use this Chinese default:

```markdown
---

*本文仅记录个人研究框架和条件判断，不构成任何投资建议、收益承诺或证券买卖依据。文中雷达图及 A/H 区间均为作者的定性研究工具，不代表客观评级。市场和公司情况可能变化，投资者应独立核实信息并自行承担风险。*
```

Adapt only the sentence describing the article's research tools when the article does not contain radar charts or A/H ranges. Name the tools actually used, such as backtests, valuation ranges, scenario analysis, or trend charts. Preserve the meaning, order, and visual format of the other sentences. For other languages, translate the footer faithfully and keep the same horizontal-rule-plus-italic-paragraph structure.

## Review and Publishing Gate

Drafting never authorizes publishing. Show the complete article first. Call a CMS or production MCP only after the user explicitly approves publication. Approval covers the reviewed version only; show material revisions again. Before a write, resolve the exact tag and slug, avoid duplicates, and preserve localization requirements. Report the created draft or published document without exposing credentials.

## Quick Check

- One clear thesis and an explicit as-of date
- Material facts sourced; inference and opinion visibly distinct
- Diagram types varied and semantically appropriate
- Diagram titles and labels proofread against the article terminology
- Company and instrument choices tied to different risks
- Catalysts, disconfirmers, and monitoring rules included
- No unsupported allocations or accidental personal disclosure
- Standard horizontal-rule and italic disclaimer footer present
- Full review before any external write

## Common Mistakes

- Repeating flowcharts for every section
- Turning subjective radar or quadrant coordinates into apparent facts
- Using a pie chart for an invented portfolio allocation
- Treating a cheaper security as diversification of the same underlying exposure
- Adding a disclaimer heading, blockquote, or plain paragraph instead of the standard footer
- Publishing after a vague acknowledgment instead of explicit approval
