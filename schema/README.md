# JSON Schemas for XML-Structured Prompting

This directory contains JSON schemas that define the structure of common XSP patterns. These schemas enable:

- **Validation**: Check that prompts conform to expected structure
- **IDE Support**: Autocomplete and inline documentation in editors
- **Linting**: Build custom rules on top of structural validation
- **Documentation**: Schemas serve as formal specification of patterns

## Available Schemas

### `prompt-structure.schema.json`
The core prompt structure schema. Defines the foundational elements that most prompts should include:
- `task`: What the model should do
- `context`: Background information
- `constraints`: Rules that must be followed
- `input`: Content to process
- `output_format`: How to structure the response

### `output-contract.schema.json`
Schema for defining output contracts - the specification of what the model must return. Supports both human-readable and machine-readable contracts:
- Format specification (markdown, JSON, prose)
- Required sections/fields
- Type constraints
- Validation rules

### `constraints.schema.json`
Schema for defining structured constraints. Enables categorization and prioritization:
- Constraint categories (content, safety, scope, format)
- Priority levels (critical, high, medium, low)
- Unique identifiers for tracking
- Enforcement metadata

## Usage

### With JSON Schema Validator (Node.js)
```javascript
const Ajv = require('ajv');
const promptSchema = require('./prompt-structure.schema.json');

const ajv = new Ajv();
const validate = ajv.compile(promptSchema);

const promptData = {
  task: "Summarize the document",
  constraints: [
    { content: "Maximum 200 words", priority: "high" }
  ],
  output_format: { type: "prose", max_length: 200 }
};

const valid = validate(promptData);
if (!valid) console.log(validate.errors);
```

### With Python (jsonschema)
```python
import json
from jsonschema import validate, ValidationError

with open('prompt-structure.schema.json') as f:
    schema = json.load(f)

prompt_data = {
    "task": "Summarize the document",
    "constraints": [
        {"content": "Maximum 200 words", "priority": "high"}
    ],
    "output_format": {"type": "prose", "max_length": 200}
}

try:
    validate(instance=prompt_data, schema=schema)
    print("Valid prompt structure")
except ValidationError as e:
    print(f"Invalid: {e.message}")
```

### VS Code Integration
Add to `.vscode/settings.json`:
```json
{
  "json.schemas": [
    {
      "fileMatch": ["**/prompts/**/*.json"],
      "url": "./src/schema/prompt-structure.schema.json"
    }
  ]
}
```

## Converting XML to JSON for Validation

While XSP uses XML as the source format, you can extract the logical structure to JSON for validation:

```python
import xml.etree.ElementTree as ET
import json

def xml_prompt_to_json(xml_string):
    """Extract validatable structure from XML prompt."""
    root = ET.fromstring(xml_string)

    return {
        "task": root.findtext("task", "").strip(),
        "context": root.findtext("context", "").strip(),
        "constraints": [
            {
                "content": c.text.strip() if c.text else "",
                "id": c.get("id"),
                "priority": c.get("priority", "medium"),
                "category": c.get("category")
            }
            for c in root.findall(".//constraint")
        ],
        "output_format": extract_output_format(root.find("output_format"))
    }
```

## Schema Design Principles

1. **Minimal Required Fields**: Only `task` is strictly required; other fields enhance clarity
2. **Flexible Constraints**: Constraints can be simple strings or structured objects
3. **Extensible**: Additional properties are allowed for domain-specific extensions
4. **Self-Documenting**: Descriptions explain purpose and usage

## Extending the Schemas

For domain-specific needs, extend rather than modify:

```json
{
  "$ref": "prompt-structure.schema.json",
  "properties": {
    "regulatory_context": {
      "type": "object",
      "description": "Domain-specific regulatory requirements",
      "properties": {
        "jurisdiction": { "type": "string" },
        "applicable_regulations": { "type": "array", "items": { "type": "string" } }
      }
    }
  }
}
```
