# Log Analysis

## Overview
Logs are vital for understanding system behavior, diagnosing issues, and monitoring events.  
Linux provides powerful text-processing tools like **grep**, **awk**, and **sed** to filter and analyze logs efficiently.

---

## Key Concepts
- Logs are typically stored in `/var/log/`.
- **grep** filters log entries.
- **awk** extracts structured fields.
- **sed** modifies or sanitizes text.

---

## Commands Practiced

| Command | Description |
|----------|-------------|
| `grep -i error Linux_2k.log` | Finds all lines containing “error” |
| `awk '{print $1, $2, $3}' Linux_2k.log` | Extracts timestamps and log levels |
| `sed -E 's/[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+/[REDACTED]/g' Linux_2k.log` | Replaces IP addresses with `[REDACTED]` |
| `sort | uniq -c | sort -nr | head -10` | Displays the 10 most frequent log entries |

---

## Notes
- Combine tools for powerful pipelines, e.g.:  
  ```bash
  grep "ERROR" Linux_2k.log | awk '{print $1, $2, $5}' | sort | uniq -c | sort -nr

---

#Reflection

- Practiced filtering and summarizing logs.
- Learned to extract meaningful insights from unstructured data.
- Understood the importance of log redaction and analysis in security and monitoring.
