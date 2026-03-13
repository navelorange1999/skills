# Project Design Guide for Practice-Driven Learning

This document defines the principles for designing learning projects that
actually teach. Read it before creating any learning path.

## Table of Contents

1. The Bridge Principle
2. Project Sizing
3. Task Decomposition
4. Thinking Prompts
5. Verification Criteria
6. Anti-Patterns

---

## 1. The Bridge Principle

Every project must bridge two things: **what the learner already knows** and
**what they need to learn**. A project that's entirely in unknown territory
feels impossible; one that's entirely familiar teaches nothing.

The sweet spot: 60-70% of the project uses skills the learner has (or just
acquired in the previous project), while 30-40% requires new knowledge they
must figure out.

When designing a project, explicitly identify:
- **Known territory**: What can the learner already do?
- **New territory**: What must they learn to complete this project?
- **Bridge**: How does the known territory create a scaffold for the new?

Example: A learner who knows synchronous Python (known) builds an async web
crawler (new). The bridge is that they already understand HTTP requests,
loops, and data structures — they just need to learn the async versions.

## 2. Project Sizing

A good learning project takes 2-5 days of focused work. This isn't arbitrary:

- **< 2 days**: Too small to encounter real problems. Tutorial-level.
- **2-5 days**: Long enough to get stuck, debug, and develop mental models.
  Short enough to maintain motivation and see the finish line.
- **> 5 days**: Risk of abandonment. Learner loses sight of the big picture.
  Break into sub-projects if the topic requires more time.

Estimate based on 2-4 hours of focused coding per day (not 8 — learning is
mentally taxing, and the learner likely has other responsibilities).

## 3. Task Decomposition

Break each project into 4-6 tasks. Each task should be:

**Completable in one sitting** (1-3 hours). If a task takes more than half a
day, break it down further.

**Independently testable**. After completing a task, the learner should be able
to run something and see that it works. This creates a loop of
effort → reward that sustains motivation.

**Sequentially building**. Task 2 builds on what Task 1 produced. This creates
a natural dependency that mirrors how real software is built.

**Named by what the learner does**, not what they learn. "Implement retry
with exponential backoff" is better than "Learn about retry strategies".
Action-oriented names reinforce that this is a building exercise.

## 4. Thinking Prompts

Every task should contain at least one thinking prompt — a question that makes
the learner pause and reason about what they're doing instead of just typing.

Good thinking prompts:

- **Why-questions**: "Why does this use a semaphore instead of a mutex?"
- **What-if questions**: "What happens if you remove the \`await\` here?"
- **Comparison questions**: "How is this different from the synchronous version
  you wrote yesterday?"
- **Design questions**: "If you had to support 10x the load, what would break
  first?"
- **Connection questions**: "In the agent framework you'll build later, where
  would this pattern appear?"

Bad thinking prompts:

- "What is X?" (too Googleable, no reasoning required)
- "Can you think of other examples?" (too vague)
- "Is this important?" (yes/no answers don't promote thinking)

## 5. Verification Criteria

Each project needs clear, self-assessable verification criteria. The learner
should be able to determine on their own whether they've truly learned the
material, without needing an external judge.

Three types of verification:

**Behavioral**: "Your crawler can handle 50 concurrent requests without
crashing." This is the most concrete — either it works or it doesn't.

**Explanatory**: "You can explain to someone else why event loops use
cooperative rather than preemptive scheduling." This tests understanding,
not just execution.

**Transfer**: "You can identify where this pattern would be useful in a
different context." This tests whether the knowledge has generalized beyond
the specific project.

Include at least one of each type per project.

## 6. Anti-Patterns

### The Tutorial Trap
"Step 1: Type this. Step 2: Type that." If the learner never has to make a
decision, they're not learning — they're transcribing. Every task should
require at least one design decision from the learner.

### The Iceberg Project
Looks small from the task list, but each task hides enormous complexity.
The learner starts excited and quickly drowns. Better to have 6 explicit
tasks than 3 tasks that each secretly contain 5 sub-tasks.

### The Island Project
Projects that don't connect to anything before or after them. Each project
should reference something learned previously and foreshadow something
coming next. Isolated projects feel arbitrary and forgettable.

### The Perfect Architecture Trap
Encouraging learners to design the "right" architecture before writing any
code. In practice, understanding emerges from iteration. Let the learner
build something messy first, then refactor — that's where the real learning
happens.

### The Completionism Trap
Making every task mandatory. Mark some tasks as "extension" so the learner
can skip them if they already feel confident, or return to them later.
Autonomy over the learning path increases engagement.
