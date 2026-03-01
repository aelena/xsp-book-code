# Without structure: hard to understand what changed
- prompt_v1 = "Summarize the document. Keep it brief. No invented facts. Output JSON with keys..."
- prompt_v2 = "Summarize the document for executives. Keep it under 200 words. No invented facts..."
# With XML structure: crystal clear
- Changed <audience> from general to "executives"
- Changed <constraints> from implicit to explicit "Max 200 words"

