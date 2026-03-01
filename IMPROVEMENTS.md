# Source Files Improvement Suggestions

This document contains recommendations for enhancing the templates and examples in the `src` folder.

## Overview

The current collection provides solid foundational content. The suggestions below aim to:
1. Fill gaps in coverage
2. Improve consistency
3. Add practical depth

---

## Structural Improvements

### 1. Add a README.md for the src folder
**Priority: High** ✅ **COMPLETED**

Created comprehensive `README.md` that includes:
- Explanation of XSP and VCO Framework
- Numbering convention (001-026) and flat structure rationale
- Files grouped by category with descriptions (Foundations, Techniques, Specifications, Safety, Use Cases, Templates, Operations)
- All example files documented (009.x, 017.x, 018.x, 019.x, 020.x, 026.x, 004.x)
- Suggested reading order for newcomers, production use, PII handling, chatbots, and tool use
- Model-specific usage guides (ChatGPT, Claude, Perplexity, Qwen, Gemini, Local models)
- Best practices and contributing guidelines

### 2. Standardize file naming
**Priority: Medium**

Current inconsistency:
- Some files use hyphens: `017.baseline-template.xml`
- Some use underscores in content but hyphens in names
- Consider: `017.baseline-template.xml` → `017-baseline-template.xml` for URL-friendliness

### 3. Add category prefixes or subdirectories
**Status: DECLINED** — Flat structure kept intentionally

The flat structure with numbered prefixes was retained because:
- Everything visible at a glance without navigating folders
- Easy to copy/reference files by number
- Numbered prefixes already provide implicit ordering and grouping
- Categories are documented in README.md as logical groupings

The original suggestion:
```
src/
├── foundations/       (001-003)
├── techniques/        (004-011)
├── specifications/    (012, 020)
├── safety/           (013, 019, 022, 025)
├── use-cases/        (014-016)
├── templates/        (017-018)
└── operations/       (021, 023-024)
```

---

## Content Improvements

### 4. Expand the few-shot examples file (009)
**Priority: High** ✅ **COMPLETED**

Created comprehensive few-shot example files:
- `009.few-shot-examples.xml` - Base template with annotation patterns
- `009.1.few-shot-code-review-classification.xml` - Technical: Code review categorization
- `009.2.few-shot-journal-mood-analysis.xml` - Personal: Journal mood analysis
- `009.3.few-shot-brand-voice-matching.xml` - Marketing: Brand voice consistency
- `009.4.few-shot-receipt-extraction.xml` - Business: Receipt data extraction
- `009.5.few-shot-customer-intent-classification.xml` - Support: Customer intent classification

Coverage includes:
- Standard, edge case, and negative examples
- Annotations explaining why each example was chosen
- Different example types per domain

### 5. Add versioning example
**Priority: Medium** ✅ **COMPLETED**

Created `024.prompt-versioning.xml` demonstrating:
- Semantic versioning adapted for prompts (MAJOR.MINOR.PATCH)
- Structured changelog format with migration notes
- A/B testing annotations with experiment tracking
- Rollback markers with automatic triggers
- Implementation notes for deployment workflows

### 6. Add multi-turn / conversation example
**Priority: Medium** ✅ **COMPLETED**

Created comprehensive multi-turn conversation handling:
- `026.multi-turn-context.xml` - Complete template with four history strategies
- `026.1.multi-turn-tech-support.xml` - Technical: database debugging with sliding window
- `026.2.multi-turn-coaching.xml` - Personal dev: career coaching with summarized history
- `026.3.multi-turn-sales-consultation.xml` - Sales: B2B qualification with selective history

Coverage includes:
- Full history, sliding window, summarization, and selective inclusion strategies
- Key references for resolving callbacks ("the error from before")
- Conversation policies for safety and continuity
- Topic shift detection and handling
- Preventing instruction injection from historical turns

### 7. Expand the tool use example (004)
**Priority: Medium** ✅ **COMPLETED**

Expanded `004.tool-use-example.xml` to comprehensive template and created examples:
- `004.tool-use-example.xml` - Complete template with tool declaration, invocation constraints, result handling, error recovery, multi-tool coordination, and safety guardrails
- `004.1.tool-use-code-assistant.xml` - Technical: Code analysis with linter, tests, type checker
- `004.2.tool-use-research-assistant.xml` - Personal dev: Web/academic search with note-taking
- `004.3.tool-use-data-analyst.xml` - Business: Database queries, visualizations, reports

Coverage includes:
- Tool availability declaration with parameters, returns, side effects
- Invocation constraints (when to use, when NOT to use)
- Tool-specific constraints and confirmation policies
- Result handling (success, empty, partial, error scenarios)
- Error recovery handlers for common failure modes
- Multi-tool coordination patterns (search-then-act, parallel, conditional)
- Safety guardrails for tool use

---

## Template Improvements

### 8. Baseline template (017) enhancements
**Priority: Low** ✅ **COMPLETED**

Enhanced `017.baseline-template.xml` with:
- Clear separation of core vs. optional sections
- Commented-out optional sections ready to uncomment:
  - `<role>`: Persona and expertise definition
  - `<language>`: Multi-language support (input/output languages)
  - `<audience>`: Target reader specification
  - `<examples>`: Few-shot demonstrations
  - `<checks>`: Self-verification steps
  - `<pii_policy>`: PII handling rules
  - `<tool_constraints>`: Function calling rules
  - `<source_policy>`: Factual claims handling
  - `<instruction_precedence>`: Conflict resolution
- Usage guide with best practices
- Cross-references to detailed templates (009, 025, 004, 018)

### 9. Longform template (018) - add length guidance
**Priority: Medium** ✅ **COMPLETED**

Enhanced `018.longform-template.xml` `<length>` section with:
- Word count guidance (minimum, maximum, ideal range with flexibility note)
- Section balance policies (no section >30%, none <10%)
- Approximate percentage distribution across sections
- Quality signals (what to prefer, what to avoid)
- Depth requirements per section type
- General principle for paragraph-level decisions

---

## Safety & Guardrails Improvements

### 10. Add PII handling example
**Priority: High** ✅ **COMPLETED**

Created comprehensive PII handling examples:
- `025.pii-handling.xml` - Complete PII handling template with redaction patterns, output constraints, uncertainty handling, and audit logging
- `013.1.guardrails-pii.xml` - PII protection guardrails with response patterns and escalation rules
- `015.1.extraction-pii-redaction.xml` - Information extraction with PII redaction example

Coverage includes:
- Pre-processing redaction with placeholder conventions
- Output constraints at multiple priority levels
- Handling uncertain/ambiguous PII
- Defense-in-depth implementation notes
- Regulatory considerations (GDPR, CCPA, HIPAA)

### 11. Expand prompt injection defense (019)
**Priority: Medium** ✅ **COMPLETED**

Expanded `019.prompt-injection-defense.xml` to comprehensive 6-layer defense template and created examples:
- `019.prompt-injection-defense.xml` - Complete template covering structural isolation, instruction hierarchy, input marking, output constraints, detection patterns, graceful failure
- `019.1.injection-indirect-document.xml` - Technical: Document processing with hidden injection defense
- `019.2.injection-defense-layers.xml` - Technical: Customer support chatbot showing all six defense layers

Coverage includes:
- Direct injection defense (explicit override attempts)
- Indirect injection defense (malicious content in documents)
- Authority impersonation prevention
- Prompt extraction protection
- Detection patterns with severity levels
- Defense-in-depth stack (application, prompt, model layers)
- Added Technique #10 to Book.md covering injection defense comprehensively

---

## Documentation Improvements

### 12. Add JSON schema for common patterns
**Priority: Medium** ✅ **COMPLETED**

Created `schema/` directory with JSON schemas for:
- `schema/prompt-structure.schema.json` - Core prompt structure (task, context, constraints, input, output, metadata)
- `schema/output-contract.schema.json` - Output contracts (format, required sections, length, validation rules)
- `schema/constraints.schema.json` - Constraint definitions (categories, priorities, enforcement, testability)
- `schema/README.md` - Usage guide with Node.js, Python, and VS Code integration examples

Enables tooling (linting, validation, IDE autocomplete) and serves as formal documentation of patterns.

### 13. Add anti-patterns document
**Priority: Medium** ✅ **COMPLETED**

Added comprehensive anti-patterns section to Book.md (Governance section) covering:
- Anti-Pattern 1: Tag Sprawl
- Anti-Pattern 2: Over-Specification
- Anti-Pattern 3: Constraint Conflicts
- Anti-Pattern 4: Empty Section Accumulation
- Anti-Pattern 5: Cargo Cult Structure
- Anti-Pattern 6: Premature Formalization
- Anti-Pattern 7: Ignoring the Model's Capabilities
- Anti-Pattern 8: Nesting Overkill
- Anti-Pattern 9: Example Overload
- Anti-Pattern 10: Security Theater
- Anti-Pattern 11: Pseudo-Programming

Each pattern includes BAD/GOOD examples, failure analysis, and recovery guidance.
Also includes diagnostic symptoms table and recovery path checklist.

---

## New Examples Needed

### 14. Domain-specific templates
**Priority: Low** ✅ **COMPLETED**

Added comprehensive domain-specific templates appendix to Book.md covering:
- **Legal Document Review Template**: Risk flagging, clause quoting, attorney questions, missing provisions detection
- **Customer Support Response Template**: Brand voice, policy enforcement, escalation handling, internal notes
- **Data Analysis Report Template**: Statistical rigor, methodology transparency, confidence levels, limitations
- **Template Selection Guide**: When to use which template, adaptation guidelines

Each template includes complete XML structure with metadata, constraints, output contracts, and error handling.

### 15. Error handling patterns
**Priority: Medium** ✅ **COMPLETED**

Added comprehensive error handling section to Book.md (Governance section) covering:
- **Graceful Degradation**: Priority-based constraint relaxation, partial success handling, no-results policies
- **Uncertainty Expression**: Calibrated confidence levels, distinguishing fact/inference/speculation, structured confidence output
- **Fallback Behavior**: Input validation fallbacks, missing info defaults, ambiguity resolution strategies, service degradation handling
- **Error Response Formatting**: Standardized error structure with error codes, partial results, recovery suggestions

Includes complete example showing all patterns integrated in a financial report analysis prompt.

---

## Implementation Priority

| Priority | Items | Effort |
|----------|-------|--------|
| High | ~~1~~ ✅, ~~4~~ ✅, ~~10~~ ✅ | Medium |
| Medium | 2, ~~5~~ ✅, ~~6~~ ✅, ~~7~~ ✅, ~~9~~ ✅, ~~11~~ ✅, ~~12~~ ✅, ~~13~~ ✅, ~~15~~ ✅ | Medium-High |
| Low | ~~8~~ ✅, ~~14~~ ✅ | Low |
| Declined | ~~3~~ (flat structure preferred) | — |

---

## Files Added in This Review

The following example files were added to demonstrate practical usage:

### Few-Shot Examples (009.x)
- `009.few-shot-examples.xml` - Base template with annotation patterns
- `009.1.few-shot-code-review-classification.xml` - Technical: Code review categorization
- `009.2.few-shot-journal-mood-analysis.xml` - Personal: Journal mood analysis
- `009.3.few-shot-brand-voice-matching.xml` - Marketing: Brand voice consistency
- `009.4.few-shot-receipt-extraction.xml` - Business: Receipt data extraction
- `009.5.few-shot-customer-intent-classification.xml` - Support: Customer intent classification

### Baseline Template Examples (017.x)
- `017.1.baseline-api-documentation.xml` - Technical: API documentation generation
- `017.2.baseline-goal-breakdown.xml` - Personal dev: Goal planning
- `017.3.baseline-email-campaign.xml` - Marketing: Email sequence generation

### Longform Template Examples (018.x)
- `018.1.longform-microservices.xml` - Technical: Architecture deep-dive
- `018.2.longform-deep-work.xml` - Personal dev: Productivity practices
- `018.3.longform-content-strategy.xml` - Marketing: B2B content strategy

### Output Contract Examples (020.x)
- `020.1.output-contract-code-review.xml` - Technical: Structured code review
- `020.2.output-contract-habit-tracker.xml` - Personal dev: Weekly review analysis
- `020.3.output-contract-social-content.xml` - Marketing: Social media content batch

### PII Handling Examples (013.1, 015.1, 025)
- `025.pii-handling.xml` - Comprehensive PII handling template with all patterns
- `013.1.guardrails-pii.xml` - PII protection guardrails and response patterns
- `015.1.extraction-pii-redaction.xml` - Data extraction with PII redaction

### Multi-Turn Conversation Examples (026.x)
- `026.multi-turn-context.xml` - Complete template with four history management strategies
- `026.1.multi-turn-tech-support.xml` - Technical: Database debugging with sliding window
- `026.2.multi-turn-coaching.xml` - Personal dev: Career coaching with summarized history
- `026.3.multi-turn-sales-consultation.xml` - Marketing: B2B sales with selective history

### Tool Use Examples (004.x)
- `004.tool-use-example.xml` - Expanded to comprehensive template with all patterns
- `004.1.tool-use-code-assistant.xml` - Technical: Code analysis with linter, tests, type checker
- `004.2.tool-use-research-assistant.xml` - Personal dev: Web/academic search, note-taking
- `004.3.tool-use-data-analyst.xml` - Business: Database queries, visualizations, reports

Each example includes:
- Filled-in values (not just placeholders)
- Realistic context and constraints
- Complete output contract with schema
- Example outputs demonstrating the expected format

### Prompt Injection Defense Examples (019.x)
- `019.prompt-injection-defense.xml` - Expanded to comprehensive 6-layer defense template
- `019.1.injection-indirect-document.xml` - Document processing with hidden injection defense
- `019.2.injection-defense-layers.xml` - Customer support chatbot showing all defense layers

### JSON Schemas (schema/)
- `schema/README.md` - Usage guide with integration examples
- `schema/prompt-structure.schema.json` - Core prompt structure validation
- `schema/output-contract.schema.json` - Output contract validation
- `schema/constraints.schema.json` - Constraint definitions validation
