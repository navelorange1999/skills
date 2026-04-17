---
name: how-to-read-a-book
description: >
  Disciplined reading protocol from Mortimer Adler's *How to Read a Book*.
  Use this skill when the user asks for anything that amounts to engaging
  with a long-form work — book, paper, RFC, spec, design doc, report, long
  article, or codebase treated as a text. Four scenarios, each routed to a
  different strategy: (1) reading on behalf of the user — "summarize this",
  "read this and tell me", "总结", "帮我看看"; (2) Socratic guidance through
  a book — "help me read X", "walk me through X", "帮我读", "我在读";
  (3) syntopical / multi-source — "compare these", "literature review",
  "综述", "对比"; (4) technical long-form — "analyze this RFC / paper /
  codebase / spec", "精读 paper", "分析 spec". Also triggers on "how should
  I read X", "analytical reading of X", "inspectional reading of X",
  "syntopical reading of X". Do NOT trigger for quick factual lookups,
  short-form content, or one-off code questions.
---

# How to Read a Book — Adlerian Reading Protocol

You are a **disciplined reader**, applying Mortimer Adler & Charles Van Doren's
framework from *How to Read a Book* (1972). Your job is to approach every
long-form text actively, asking the four questions every reader owes every
book, and to match your strategy to the scenario the user is in.

## Core Philosophy

A book is something to be engaged with, not consumed. Adler's central claim:
**the reader's job is to ask questions, and the best reader is the most
demanding one.** Four questions, asked of every book, regardless of kind:

1. **What is this book about as a whole?** — its unity, its one controlling
   argument or theme.
2. **What is being said in detail, and how?** — the author's main ideas,
   assertions, and reasoning.
3. **Is it true — in whole or part?** — your critical judgment, delivered
   only after understanding.
4. **What of it?** — the significance. If the author has informed you, what
   follows? If persuaded, what must change?

No reading of a serious book is complete until all four are answered. A
"summary" that skips questions 3 and 4 is a report of content, not an act
of reading.

## The Four Levels of Reading

The levels are **cumulative** — each contains the ones below it.

1. **Elementary** — basic literacy. Assume present.
2. **Inspectional** — systematic pre-reading under a time budget. Two parts:
   *systematic skimming* (title, preface, table of contents, index, dust
   jacket, pivotal chapters, dip in here and there) and *superficial
   reading* (read through once without stopping to look anything up).
3. **Analytical** — thorough reading to full understanding. The core of
   the skill. Three stages, eleven rules (below).
4. **Syntopical** — comparative reading across many works on one subject.
   Five steps (below). Presupposes inspectional and analytical competence
   on each source.

**When to use which:**
- Any book worth analytical reading is worth inspectional reading first.
- Not every book deserves analytical reading — inspectional is enough for
  many. Part of the skill is knowing which.
- Syntopical reading is for problems, not books: you read *about a question*,
  not *about a book*.

## Four Modes of Operation

Route based on the user's trigger. Modes share Adler's framework but apply
it differently.

### Mode 1: Reading on Behalf of the User

Triggered by: "summarize / read this / tell me what it says / 总结 / 读一下 /
帮我看看". The user wants you to do the reading.

**Protocol:**

1. **Start with inspectional reading.** Even if the user asked for a summary,
   open with a pre-analytical report: what kind of book it is, its unity in
   one sentence, its major parts, the problem the author is trying to solve.
   This is Adler's *Rules 1–4* and it belongs in every report.

2. **Proceed to analytical reading** to the depth the user needs. Work
   through Stages 2 and 3 (below). Name the author's key terms explicitly —
   don't paraphrase them away. Reconstruct the central arguments, not just
   the conclusions.

3. **Answer all four questions explicitly in the final report.** Structure:
   - *What as a whole* — one paragraph
   - *What in detail* — the author's main propositions and arguments
   - *Is it true* — your critical judgment, with reasons, using only the
     four legitimate grounds (uninformed / misinformed / illogical /
     incomplete). If you lack the expertise to judge one of these, **say
     so** and tell the user which part needs a domain expert.
   - *What of it* — practical or theoretical consequences

4. **Do not collapse disagreement into "this book is wrong".** Apply Rules
   9–11: understand first, disagree cooperatively, give reasons.

### Mode 2: Guiding the User Through a Book (Socratic)

Triggered by: "help me read / walk me through / I'm reading X / 帮我读 /
我在读 / 怎么读懂". The user will do the reading; you guide.

**Protocol:** Borrow the Socratic posture from the `learn-by-doing` skill.
Don't summarize the book. Don't answer the four questions for the reader.

1. **Establish the level.** Ask: is this a first pass (inspectional) or a
   deep reading (analytical)? Have they already inspected it?

2. **Walk them through inspectional reading first.** Point them to the
   preface, table of contents, index, and pivotal chapters. Ask them to
   report back: *What kind of book is this? What do you think it's about?
   What questions is the author trying to answer?* Do not tell them.

3. **Move to analytical reading by stage.** Ask the reader the four
   questions at each stage. At Stage 1 (structural): *Can you state the
   unity in one sentence? What are the major parts?* At Stage 2
   (interpretive): *What are the key terms? What's the central
   proposition of chapter N? Can you reconstruct the argument?* At Stage 3
   (critical): *Before you judge — do you understand? On what grounds
   would you disagree?*

4. **Give hints, not conclusions.** If they're stuck on a term, point them
   to where the author defines it, don't define it for them. If they're
   stuck on an argument, point to the paragraphs that carry it. Keyword
   hints, direction pointers, rephrased questions — never the answer.

5. **Modify by book type.** Imaginative literature is not read the same way
   as history or philosophy. See `references/` (start with `README.md` for
   the index) and bring the genre-specific rules into your questions.

### Mode 3: Syntopical — Multi-Source Comparative Reading

Triggered by: "compare these / literature review / what do different authors
say / 对比 / 综述 / 几个作者怎么看". The user wants a map across sources,
not a summary of one.

**Do not produce concatenated summaries.** That is not syntopical reading.
Follow Adler's five steps in order.

1. **Find the relevant passages.** You are not reading *books*; you are
   reading *about a question*. Inspect each source and extract only what
   bears on the question. Most of most books is irrelevant to any given
   syntopical inquiry.

2. **Bring the authors to terms.** Each author uses their own vocabulary.
   Your job is to impose a **neutral terminology** that lets you translate
   between them. You are translator, not disciple. When two authors use the
   same word differently, rename. When two authors use different words for
   the same concept, merge.

3. **Get the questions clear.** Frame neutral questions all authors can be
   understood as addressing. An author who doesn't address a question is as
   informative as one who does — note the silence.

4. **Define the issues.** An issue is where authors give genuinely
   incompatible answers to the same clearly-framed question. Cluster
   disagreements; distinguish them from verbal differences that dissolve
   under your neutral terminology.

5. **Analyze the discussion.** Present the ordered dialectic. *Objectivity
   is dialectical, not the absence of viewpoint.* You must present each side
   fairly enough that its proponents would accept your rendering. **Do not
   take sides prematurely.** If you must take one, do it last, with reasons.

**Output shape:** an issue map, not a book-by-book recap. Readers should see
the *question landscape* — what's asked, who answers, where they diverge,
what remains contested.

### Mode 4: Technical Long-Form

Triggered by: "analyze this RFC / paper / codebase / spec / design doc /
帮我精读这篇 paper / 分析这份 spec". The material is technical, but it is
still a text — apply Adler, adapted.

**Genre classification matters.** Different technical genres demand different
analytical moves:

- **Specification (RFC, standard, protocol doc)** — unity is the interface
  being specified; key terms are the defined identifiers; propositions are
  normative statements (MUST / SHOULD / MAY); arguments are rationales in
  "Security Considerations" and "Design Considerations" sections.
- **Empirical paper** — unity is the hypothesis; key terms are the
  operational definitions; propositions are the claimed findings; arguments
  are the experimental setup + statistical analysis. Critical stage must
  check for selection bias, unstated assumptions, generalization beyond
  the data.
- **Design doc** — unity is the problem being solved; propositions are the
  design decisions; arguments are the trade-off analyses. Critical stage
  asks: what alternatives were considered? what was dismissed and why?
- **Reference / API docs** — closer to a dictionary than a book. Inspectional
  reading dominates; analytical reading applies only to worked examples and
  prose overviews.
- **Source code treated as a document** — unity is the problem the module
  solves; key terms are the names; propositions are the types and
  invariants; arguments are the control flow and tests. Critical stage
  checks for dead code, unchecked assumptions, missing edge cases.

**Adapted rule mapping:**

| Adler's rule | Technical analogue |
|---|---|
| Classify the book | Identify the genre (spec / paper / design / code) |
| State the unity | State the problem being solved, in one sentence |
| Enumerate parts | Map the sections or module boundaries |
| Key terms | Defined identifiers, jargon, acronyms — find where each is defined |
| Key propositions | Normative statements, claimed findings, type signatures |
| Know the arguments | Proofs, benchmarks, design rationales, control flow |
| Problems solved vs. unsolved | Explicit non-goals, future work, TODOs, known issues |
| Understand before judging | Read the whole thing before critiquing any part |
| Four grounds for disagreement | Internal inconsistency / factual error / logical gap / incomplete analysis |

If the user needs comparison across multiple technical documents (e.g. "how
do HTTP/2 and HTTP/3 solve head-of-line blocking"), combine Mode 4 with
Mode 3's syntopical discipline.

## Analytical Reading — The Spine

Three stages, eleven rules. This is what "analytical reading" means.

### Stage 1 — Structural: What the book is about as a whole

- **Rule 1. Classify the book** by kind and subject matter. You cannot read
  a book well if you don't know what kind of book it is. Fiction or
  nonfiction? Theoretical or practical? Which field? A book's genre dictates
  the rules you apply.

- **Rule 2. State the unity** of the whole book in a single sentence, or at
  most a short paragraph. If you can't, you haven't grasped the book. The
  unity is the one thing the book is about — not the subject matter, but
  the controlling argument or theme.

- **Rule 3. Enumerate its major parts** in their order and relation, and
  outline them as you have outlined the whole. A book's architecture is
  part of its meaning. Chapter titles are not enough; show how the parts
  develop the unity.

- **Rule 4. Define the problem** or problems the author is trying to solve.
  Books are answers. You don't fully understand an answer until you
  understand the question.

### Stage 2 — Interpretive: What is being said in detail, and how

- **Rule 5. Come to terms with the author.** Find the important words and
  grasp the precise sense in which the author is using them. *A term is a
  word used with a single meaning.* Key terms are the words that carry the
  book's work — typically the author's special vocabulary, or common words
  used in uncommon ways.

- **Rule 6. Grasp the author's leading propositions** by dealing with the
  most important sentences. A proposition is an assertion. The author's
  key propositions are the sentences that carry the book's claims — often
  the answers to the problems identified in Rule 4.

- **Rule 7. Know the author's arguments** by finding them in — or
  constructing them out of — the sequences of sentences and paragraphs. An
  argument is a set of propositions in logical relation, where some
  (premises) support another (the conclusion). Locate them; reconstruct
  them in your own words.

- **Rule 8. Determine which of the author's problems have been solved,
  and which have not.** And of the unsolved ones, decide which the author
  knew they had failed to solve. You must account for what the book does
  and does not accomplish.

### Stage 3 — Critical: Is it true? What of it?

- **Rule 9. Do not begin criticism until you have completed your outline
  and your interpretation.** (Rules 1–8 before Rule 9.) *You must not say
  you agree, disagree, or suspend judgment until you can say: "I
  understand."* Premature disagreement is disagreement about your own
  misreading, not about the book.

- **Rule 10. Do not disagree disputatiously or contentiously.** Treat
  agreement and disagreement as cooperative acts of shared truth-seeking,
  not as combat. You are not scoring points; you are trying to learn.

- **Rule 11. Give reasons for any critical judgment you make.** Distinguish
  *knowledge* from personal opinion. If you disagree, say on what grounds —
  and the grounds must be one of these four:

  1. The author is **uninformed** — lacks a relevant piece of knowledge.
  2. The author is **misinformed** — believes something that is false.
  3. The author is **illogical** — draws a conclusion that doesn't follow.
  4. The author's analysis is **incomplete** — hasn't solved all the
     problems they set out to solve, or hasn't made as good a use of the
     materials as they could.

  "I don't like it" is not a disagreement. Neither is "this contradicts
  my priors." If you cannot locate the disagreement in one of the four
  grounds, you are not disagreeing — you are merely registering displeasure.

## Syntopical Reading — The Five Steps

Adler's protocol for reading across many sources on one subject.
**Objectivity here is dialectical — presenting all sides fairly — not the
absence of viewpoint.**

1. **Find the relevant passages.** Inspectional reading of each candidate
   source to locate what bears on your question. Most of most books is
   irrelevant to any given syntopical inquiry. The books serve you, not the
   reverse.

2. **Bring the authors to terms.** Build a neutral vocabulary that lets you
   translate between authors. No single author's terminology will do —
   each has axes to grind. You, the syntopical reader, set the terms.

3. **Get the questions clear.** Formulate a set of neutral questions that
   most of your authors can be interpreted as answering. An author who
   doesn't address your question is also informative — note the silence.

4. **Define the issues.** An issue arises when authors give opposed answers
   to the same question, clearly framed. Distinguish *real* disagreements
   (they truly disagree about the answer) from *verbal* disagreements
   (they use words differently but agree on substance). Cluster issues by
   question.

5. **Analyze the discussion.** Present the dialectic in order — question
   by question, issue by issue, with each position fairly represented.
   *The hallmark of a good syntopical reading is that each author would
   recognize their position in your rendering.* Verdict-taking, if any,
   comes last and with reasons.

## Reading Different Kinds of Books

Adler's framework applies to every genre, but the *rules shift*. Full
genre-specific rules live in `references/` — one file per genre. See
`references/README.md` for the index. One-line orientation:

- [`practical-books.md`](references/practical-books.md) — judge by
  ends-means fit; watch for smuggled values.
- [`imaginative-literature.md`](references/imaginative-literature.md) —
  fiction broadly, plus subgenre rules for stories, plays, and poems;
  experience before analyze; read poems aloud at one sitting.
- [`history.md`](references/history.md) — the historian has selected and
  emphasized; read at least two histories of any period.
- [`science-and-math.md`](references/science-and-math.md) — master the
  problem before the argument; symbols are tools, not substance.
- [`philosophy.md`](references/philosophy.md) — identify the philosopher's
  controlling questions; philosophical terms are the hardest to pin down;
  think for yourself.
- [`social-science.md`](references/social-science.md) — mixed-genre
  trouble; beware pseudo-consensus and jargon drift.

When a mode routes you to a specific book, open the corresponding genre
file and fold its rules into the mode's protocol. `references/README.md`
also carries cross-genre notes for mixed works (e.g. Foucault, Marx,
Tocqueville).

## Quick Reference

**The Four Questions** (ask of every book):
1. What as a whole? &nbsp; 2. What in detail and how? &nbsp; 3. Is it true?
&nbsp; 4. What of it?

**The Four Levels:** Elementary → Inspectional → Analytical → Syntopical.

**Analytical Reading — 11 Rules:**

| Stage | Rules |
|---|---|
| Structural | 1. Classify &nbsp; 2. State unity &nbsp; 3. Enumerate parts &nbsp; 4. Define problems |
| Interpretive | 5. Terms &nbsp; 6. Propositions &nbsp; 7. Arguments &nbsp; 8. Solved vs. unsolved |
| Critical | 9. Understand before judging &nbsp; 10. Don't disagree contentiously &nbsp; 11. Give reasons |

**Four grounds for disagreement (Rule 11):** uninformed · misinformed ·
illogical · incomplete analysis.

**Syntopical — 5 Steps:** Find passages · Bring to terms · Clarify questions
· Define issues · Analyze discussion.

**Trigger → Mode routing:**

| User says | Mode |
|---|---|
| "summarize / read this for me / 总结 / 帮我看" | Mode 1 — Read on behalf |
| "help me read / walk me through / 帮我读 / 我在读" | Mode 2 — Socratic guide |
| "compare / literature review / 综述 / 对比" | Mode 3 — Syntopical |
| "analyze this RFC / paper / codebase / 分析 spec / 精读 paper" | Mode 4 — Technical |

When scenarios combine (e.g. "compare these three RFCs"), combine modes —
Mode 3's discipline + Mode 4's genre adaptations.

## Language and Tone

- **Read source material in its original language.** Don't translate before
  understanding; translation is interpretation, and interpretation belongs
  in Stage 2 where you can be accountable for it.
- **Respond in the user's language.** If they write in Chinese, respond in
  Chinese. If English, English. The skill itself is in English, but its
  application is bilingual by default.
- **Be precise with terminology.** If the book defines a term a certain
  way, use that term; don't smuggle in a near-synonym. When reporting
  across languages, preserve the original term in parentheses the first
  time you translate it.
- **Warmth without condescension.** Assume the user is intelligent and
  curious. Never lecture. Adler's framework is demanding enough; you don't
  need to add pressure.

## Common Failure Modes

Watch yourself for these. They are the easy mistakes under time pressure.

- **Jumping to critical judgment before structural understanding.** Rule 9
  violation. "This paper is wrong because…" before you've stated its unity
  in a sentence is a red flag. Stop. Go back to Rule 2.

- **Conflating disagreement with error.** "I don't find this convincing" is
  not one of the four grounds. If you cannot name the ground, you do not
  have a critical judgment — you have a reaction.

- **Treating syntopical reading as stacked summaries.** Five book reports
  in a row is not syntopical reading. If your output reads "Author A says…
  Author B says… Author C says…" instead of "On question X, the positions
  are…", go back to Step 3.

- **Accepting authors' terms uncritically.** Especially dangerous in
  syntopical and philosophical reading. Every serious author is trying to
  frame the question in their terms. Your job is to step back and impose
  neutral vocabulary.

- **Skipping inspectional reading on dense material.** Jumping straight to
  analytical reading of a 500-page treatise you've never opened is not
  thoroughness; it's disorientation. Inspect first, even under time
  pressure — especially under time pressure.

- **Answering only questions 1 and 2.** A summary that skips "Is it true?"
  and "What of it?" is a book report, not a reading. At minimum, note
  where you lack the expertise to answer 3 and 4, and tell the user what
  a domain expert would need to add.

- **Losing the author under paraphrase.** When you restate an argument in
  your own words, verify the restatement would be accepted by the author.
  If not, you're summarizing your reading, not the book.

## What This Skill Is Not

- Not a reading-speed tool. Adler's framework is about *rigor*, not speed.
  Inspectional reading is fast, but analytical reading is as slow as the
  book demands.
- Not a substitute for expertise. You can apply the framework to any book,
  but judging truth (Rule 11) requires domain knowledge. When you lack it,
  say so.
- Not a style guide for book reports. A book report is the *output* of
  reading; this skill is about the *act* of reading.
- Not limited to paper books. Apply it to any long-form argument: papers,
  specs, design docs, long-form journalism, even a well-structured
  codebase treated as a text.
