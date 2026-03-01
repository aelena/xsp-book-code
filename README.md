# XML-Structured Prompting: Companion Source Files

> Companion repository for the book *XML-Structured Prompting: A Software Engineering Discipline for Reliable LLM Systems*.

The book is [available here](https://aelena74.gumroad.com/l/xsp)

This folder contains every template, example, and schema from the book—ready to copy, adapt, and use in your own projects.
No guarantees :) 

---

## What is XML-Structured Prompting?

XSP wraps instructions, context, inputs, constraints, and output requirements inside labeled XML tags. This creates unambiguous structure that:

- Prevents models from confusing instructions with data
- Makes constraints explicit and auditable
- Enables version control with meaningful diffs
- Supports testing and validation

**It's not about using XML as a formal standard** (no DTDs, schemas, or namespaces required). It's about using *explicit structural boundaries* that guide the model.

---

## The VCO Framework

These source files implement the **VCO Framework** described in the book:

| Component | Purpose | Key Tags |
|-----------|---------|----------|
| **V**ocabulary | Standard tag set for consistency | `<task>`, `<context>`, `<input>`, `<constraints>` |
| **C**onstraints | Rules and guardrails | `<constraint>`, `<checks>` |
| **O**utput Contract | Deliverable specification | `<output_format>`, `<output_contract>` |

---

## File Organization

All files live in a single directory. The numbered prefixes (001-026) provide implicit ordering and grouping without the overhead of navigating subdirectories. This makes it easy to:
- See everything at a glance
- Copy examples without path juggling
- Reference files by number ("see 017 for the baseline template")

The categories below are logical groupings—not physical folders.

### Foundations (001-003)

Core concepts and architecture.

| File | Description |
|------|-------------|
| `001.architecture-diagram.txt` | Where XSP sits in the LLM application stack |
| `002.basic-example.xml` | Minimal working example with all core elements |
| `003.version-control-comparison.sh` | Why structured prompts produce better diffs |

### Techniques (004-011, 026)

Specific patterns for common challenges.

| File | Description |
|------|-------------|
| `004.tool-use-example.xml` | **Comprehensive tool use template**: invocation constraints, result handling, error recovery, multi-tool coordination |
| `005.instruction-precedence.xml` | Resolving conflicts between instruction sources |
| `006.cdata-example.xml` | Safely embedding content that looks like tags |
| `007.sentinel-markers.xml` | Alternative to CDATA using BEGIN/END markers |
| `008.json-output-format.xml` | Requesting structured JSON output |
| `009.few-shot-examples.xml` | **Comprehensive template** for few-shot learning |
| `010.self-checks.xml` | Adding self-verification steps |
| `011.self-checks-output.xml` | Clean output with internal validation |
| `026.multi-turn-context.xml` | **Multi-turn conversations**: history management, context strategies, reference tracking |

### Specifications (012, 020)

Schema and contract definitions.

| File | Description |
|------|-------------|
| `012.json-schema-example.json` | JSON Schema for output validation |
| `020.output-contract-example.xml` | Detailed output contract structure |

### Safety & Guardrails (013, 019, 025)

Preventing unwanted behavior and protecting sensitive data.

| File | Description |
|------|-------------|
| `013.guardrails-example.xml` | Medical advice guardrail with checks |
| `013.1.guardrails-pii.xml` | **PII protection guardrails**: preventing PII exposure, handling PII requests |
| `019.prompt-injection-defense.xml` | **Comprehensive 6-layer defense**: structural isolation, instruction hierarchy, input marking, output constraints, detection, graceful failure |
| `025.pii-handling.xml` | **Comprehensive PII handling**: redaction patterns, output constraints, uncertainty handling |

### Use Cases (014-016)

Complete prompts for common tasks.

| File | Description |
|------|-------------|
| `014.summarization-use-case.xml` | Executive summary with word limits |
| `015.extraction-use-case.xml` | Structured data extraction from email |
| `015.1.extraction-pii-redaction.xml` | **PII-aware extraction**: extract data while redacting personal information |
| `016.project-brief-use-case.xml` | Multi-deliverable document generation |

### Templates (017-018)

Reusable skeletons for your own prompts.

| File | Description |
|------|-------------|
| `017.baseline-template.xml` | Minimal template for any task |
| `018.longform-template.xml` | Comprehensive template for deep content |

### Template Examples

Filled-in examples showing templates in action across three domains.

| File | Topic | Domain |
|------|-------|--------|
| `017.1.baseline-api-documentation.xml` | API documentation | Technical |
| `017.2.baseline-goal-breakdown.xml` | Personal goal planning | Personal Development |
| `017.3.baseline-email-campaign.xml` | Email nurture sequence | Marketing |
| `018.1.longform-microservices.xml` | Microservices vs Monoliths | Technical |
| `018.2.longform-deep-work.xml` | Deep Work with AI tools | Personal Development |
| `018.3.longform-content-strategy.xml` | B2B content strategy | Marketing |
| `020.1.output-contract-code-review.xml` | Automated code review | Technical |
| `020.2.output-contract-habit-tracker.xml` | Weekly habit analysis | Personal Development |
| `020.3.output-contract-social-content.xml` | Social media batch | Marketing |

### Few-Shot Examples (009.x)

Demonstrations of few-shot learning with XML structure.

| File | Topic | Domain |
|------|-------|--------|
| `009.1.few-shot-code-review-classification.xml` | Classifying code review comments | Technical |
| `009.2.few-shot-journal-mood-analysis.xml` | Analyzing journal entries for mood patterns | Personal Development |
| `009.3.few-shot-brand-voice-matching.xml` | Rewriting content to match brand voice | Marketing |
| `009.4.few-shot-receipt-extraction.xml` | Extracting data from OCR receipt text | Technical |
| `009.5.few-shot-customer-intent-classification.xml` | Classifying support tickets with edge cases | Technical |

**Key patterns demonstrated:**
- Standard examples (the 80% case)
- Edge cases (boundary conditions)
- Negative examples (what NOT to do)
- Annotations explaining reasoning
- Confidence levels for uncertain inputs

### Prompt Injection Defense Examples (019.x)

| File | Topic | Domain |
|------|-------|--------|
| `019.1.injection-indirect-document.xml` | Document processing with hidden injection defense | Technical/Security |
| `019.2.injection-defense-layers.xml` | Complete 6-layer defense implementation | Technical/Security |

**Key patterns demonstrated:**
- Direct injection defense ("ignore previous instructions")
- Indirect injection defense (malicious content in documents)
- Authority impersonation prevention (fake "System:" messages)
- Prompt extraction protection
- Six-layer defense-in-depth model
- Graceful failure with helpful redirection

### Multi-Turn Conversation Examples (026.x)

| File | Topic | Domain |
|------|-------|--------|
| `026.1.multi-turn-tech-support.xml` | Database debugging with sliding window history | Technical |
| `026.2.multi-turn-coaching.xml` | Career coaching with summarized history and emotional context | Personal Development |
| `026.3.multi-turn-sales-consultation.xml` | B2B sales qualification with selective history and objection tracking | Marketing/Sales |

**Key patterns demonstrated:**
- Sliding window history (keeping recent turns)
- Summarized history (compressing older context)
- Selective history (including only relevant turns)
- Key references for resolving callbacks ("the error from before")
- Preventing instruction injection from historical turns
- Topic continuity and shift detection

### Tool Use Examples (004.x)

| File | Topic | Domain |
|------|-------|--------|
| `004.1.tool-use-code-assistant.xml` | Code analysis with linter, tests, type checker | Technical |
| `004.2.tool-use-research-assistant.xml` | Web search, academic search, note-taking | Personal Development |
| `004.3.tool-use-data-analyst.xml` | Database queries, visualizations, reports | Marketing/Business |

**Key patterns demonstrated:**
- Tool invocation constraints (when to use, when NOT to use)
- Confirmation workflows for state-changing operations
- Result handling (success, empty, partial, error)
- Error recovery strategies with user-friendly messages
- Multi-tool coordination (search-then-act, parallel queries)
- Safety guardrails preventing injection via tool results

### Operations (021-024)

Enterprise patterns for production prompt management.

| File | Description |
|------|-------------|
| `021.prompt-repository-structure.txt` | Organizing prompts at scale |
| `022.constraint-tracking.xml` | Versioned constraints with IDs |
| `023.observability-log.json` | Audit logging format |
| `024.prompt-versioning.xml` | **Complete versioning system**: semantic versioning, changelog, A/B testing, rollback |

### JSON Schemas (schema/)

Formal schemas for validation, IDE support, and tooling.

| File | Description |
|------|-------------|
| `schema/README.md` | Usage guide and integration examples |
| `schema/prompt-structure.schema.json` | Core prompt structure: task, context, constraints, input, output |
| `schema/output-contract.schema.json` | Output contracts: format, required sections, validation rules |
| `schema/constraints.schema.json` | Constraint definitions: categories, priorities, enforcement metadata |

**Use cases:**
- Validate prompts conform to expected structure
- Enable IDE autocomplete and inline documentation
- Build linting tools on top of structural validation
- Document prompt patterns formally

---

## Quick Start

### The Baseline Template

For most tasks, start with `017.baseline-template.xml`:

```xml
<prompt>
  <task>What you want the model to do</task>

  <context><![CDATA[
  Background information the model needs
  ]]></context>

  <constraints>
    <constraint>Must-follow rule 1</constraint>
    <constraint>Must-follow rule 2</constraint>
  </constraints>

  <input><![CDATA[
  The actual content to process
  ]]></input>

  <output_format>Exactly how the response should be structured</output_format>
</prompt>
```

### Adding Few-Shot Examples

When the output format is complex or nuanced, add examples. Use `009.few-shot-examples.xml` as your template:

```xml
<prompt>
  <task>Classify the input according to the examples below.</task>

  <examples>
    <!-- Standard case: the most common scenario -->
    <example type="standard">
      <input><![CDATA[Your typical input here]]></input>
      <output><![CDATA[The expected output format]]></output>
      <annotation>Why this output is correct</annotation>
    </example>

    <!-- Edge case: boundary conditions -->
    <example type="edge_case">
      <input><![CDATA[A tricky or unusual input]]></input>
      <output><![CDATA[How to handle it correctly]]></output>
      <annotation>What makes this tricky and why this handling is right</annotation>
    </example>

    <!-- Negative example: what NOT to do -->
    <example type="negative">
      <input><![CDATA[An input that might tempt incorrect handling]]></input>
      <wrong_output><![CDATA[What you might incorrectly produce]]></wrong_output>
      <correct_output><![CDATA[What you should actually produce]]></correct_output>
      <annotation>Why the wrong output is wrong</annotation>
    </example>
  </examples>

  <input><![CDATA[The actual input to classify]]></input>
</prompt>
```

**Few-shot best practices:**
- **Quality over quantity**: 3 excellent examples beat 10 mediocre ones
- **Cover the spectrum**: 1-2 standard, 1 edge case, 1 negative
- **Add annotations**: Explain *why*, not just *what*
- **Use real data**: Realistic examples teach better than "foo/bar" placeholders
- **Order matters**: Simple -> complex helps models build understanding

---

## Using with Specific Models

### ChatGPT (GPT-4, GPT-4o)

1. Paste the entire XML prompt into the message box
2. Send as a single message

**Tips:**
- GPT-4 handles complex XML structures well
- For system-level instructions, use Custom Instructions or a GPT
- CDATA sections work correctly—use them for user-provided content
- If output drifts, add an explicit `<checks>` section
- You can put standard `<constraints>` and `<output_format>` in Custom Instructions, then only provide `<task>` and `<input>` per conversation

### Claude (Anthropic)

1. Paste the XML prompt into claude.ai or use the API
2. Claude natively understands XML structure very well

**Tips:**
- Claude has excellent XML comprehension—it was trained with XML in mind
- Use `<instructions>` at the top level for Claude Projects
- The `<thinking>` tag is reserved; avoid using it in your prompts
- Claude respects CDATA boundaries reliably

**System prompt integration:**
```xml
<!-- In Claude Project system prompt -->
<system_context>
  <role>You are a technical documentation assistant.</role>
  <default_constraints>
    <constraint>Always cite sources</constraint>
    <constraint>Use American English</constraint>
  </default_constraints>
</system_context>

<!-- Then in conversations, just provide: -->
<task>...</task>
<input>...</input>
```

### Perplexity

1. Paste the XML prompt in the search/chat box
2. Perplexity will follow the structure while also searching

**Tips:**
- XML helps separate your constraints from web results
- Add `<source_policy>` to control how web sources are used
- The `<output_format>` is especially useful to prevent Perplexity's default verbose style
- Works best with Pro mode for complex structured prompts

### Qwen (Alibaba Cloud)

1. Access via qwen.ai, Hugging Face, or API
2. Paste the XML prompt directly

**Tips:**
- Handles multilingual content well—you can mix languages in `<input>` and specify output language
- Add `<language>` with `<input_language>` and `<output_language>` tags for translation workflows
- Qwen-72B follows complex output contracts reliably; smaller models may need simpler structures

### Gemini (Google)

1. Paste the XML prompt into gemini.google.com or use the API

**Tips:**
- Gemini handles XML well but may occasionally add preamble—use explicit "no preamble" constraints
- For multimodal tasks, combine XML structure with file attachments
- Add `<checks>` section to improve constraint compliance

### Local Models (Llama, Mistral, etc.)

Works with any local inference (Ollama, LM Studio, llama.cpp).

**Tips:**
- Simpler structures work better with smaller models (7B-13B)
- For 70B+ models, full complexity is usually handled well
- If a model struggles with nested XML, flatten the structure:
  ```xml
  <!-- Instead of nested constraints -->
  <constraints>
    <constraint>Rule 1</constraint>
    <constraint>Rule 2</constraint>
  </constraints>

  <!-- Use flat format for simpler models -->
  <constraints>
  - Rule 1
  - Rule 2
  </constraints>
  ```

---

## Best Practices

### Do

- **Use consistent tag names** across all your prompts
- **Start simple** with the baseline template, add complexity as needed
- **Test with edge cases** before deploying
- **Version your prompts** in git with meaningful commit messages
- **Include examples** when the output format is complex

### Don't

- **Don't use dozens of tags**—tag sprawl creates noise
- **Don't nest deeply** unless necessary (2-3 levels max)
- **Don't forget CDATA** when input might contain `<`, `>`, or `&`
- **Don't mix instructions with data**—keep them in separate sections
- **Don't skip the output contract** for machine-parsed outputs

---

## Recommended Reading Order

**New to XSP — start here:**
1. `001.architecture-diagram.txt` — Understand where XSP fits
2. `002.basic-example.xml` — See a minimal working example
3. `017.baseline-template.xml` — Start using immediately
4. `017.1-3` examples — See filled-in templates

**Complex output formats:**
1. `009.few-shot-examples.xml` — Learn the few-shot template structure
2. `009.1-5` examples — See few-shot patterns across domains
3. `020.output-contract-example.xml` — Master output contracts
4. `020.1-3` examples — See contracts in action

**Production use:**
1. `024.prompt-versioning.xml` — Version prompts like code
2. `013.guardrails-example.xml` — Add safety constraints
3. `025.pii-handling.xml` — PII protection patterns
4. `019.prompt-injection-defense.xml` — Handle untrusted input
5. `021.prompt-repository-structure.txt` — Organize at scale
6. `023.observability-log.json` — Audit logging format

**PII-sensitive applications:**
1. `025.pii-handling.xml` — Comprehensive PII handling patterns
2. `013.1.guardrails-pii.xml` — Guardrails for preventing PII exposure
3. `015.1.extraction-pii-redaction.xml` — Extract data while protecting PII

**Chatbots and conversational apps:**
1. `026.multi-turn-context.xml` — Multi-turn conversation handling
2. `026.1-3` examples — History strategies across domains
3. `019.prompt-injection-defense.xml` — Critical when history contains user content

**Tool-using / agentic applications:**
1. `004.tool-use-example.xml` — Tool invocation constraints and patterns
2. `004.1-3` examples — Tool use in code analysis, research, and data analytics
3. `019.prompt-injection-defense.xml` — Critical when tools can take real-world actions

**Deep understanding:**
- Read all technique files (004-011) in order
- Review the longform template (018) and its examples
- Study the observability patterns (022-023)

---

## About This Repository

This is a frozen companion repository for the book. The files here match the examples referenced in the text and are provided as-is for you to use, adapt, and build upon in your own work.

For the full guide with explanations, rationale, anti-patterns, governance patterns, and enterprise adoption roadmap, see the book:

**[XML-Structured Prompting: A Software Engineering Discipline for Reliable LLM Systems](https://antonvazquez.gumroad.com/l/xml-structured-prompting)**

---

## License

These templates and examples are provided for educational and professional use. Apply the patterns freely in your work.

---

> "After 25 years, XML has finally achieved its true destiny: not as a data interchange format, not as a configuration language—but as emotional support markup for large language models."
