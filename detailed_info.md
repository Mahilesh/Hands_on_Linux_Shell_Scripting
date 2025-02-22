# Understanding the Command: `host -l gspt.net | grep -E 'lvsldtdockapp[0-9]+a\.gspt\.net'`

## 1. `host -l gspt.net`
- `host` → A command used for DNS lookup.
- `-l` → Lists all domain records (may require permission).
- `gspt.net` → The domain being queried.

## 2. `|` (Pipe)
- Takes the output of `host -l gspt.net` and passes it as input to `grep`.

## 3. `grep -E 'lvsldtdockapp[0-9]+a\.gspt\.net'`
- `grep` → A command used to search text patterns.
- `-E` → Enables extended regular expressions (ERE), allowing more advanced pattern matching.

## 4. `'lvsldtdockapp[0-9]+a\.gspt\.net'` (Regex Pattern)

| **Part**               | **Explanation** |
|------------------------|----------------|
| `lvsldtdockapp`       | Matches the exact text "lvsldtdockapp". |
| `[0-9]+`              | Matches one or more digits (0-9). |
| `a`                   | Matches the lowercase letter "a" directly after the digits. |
| `\.`                  | Matches a literal dot (.) (escaped using `\` because `.` is a special character in regex). |
| `gspt`                | Matches the exact text "gspt". |
| `\.`                  | Matches another literal dot (.). |
| `net`                 | Matches the exact text "net". |

## Summary of What It Matches
This command extracts lines containing:
- `"lvsldtdockapp"` followed by a number (0-9).
- The letter `"a"`.
- Ending with `".gspt.net"`.

# Understanding the Command: `chmod o+r file`

This command is used to modify the permissions of a file in Linux. It grants **read** permission to **others** (users who are not the owner or part of the file's group).

## Breakdown of the Command:

| **Part**  | **Meaning** |
|-----------|------------|
| `chmod`   | Stands for **"change mode"**. It is a command used to modify file permissions. |
| `o`       | Represents **others** (users who are not the owner or part of the file's group). |
| `+`       | Adds a permission to the specified user category (`o` for others in this case). |
| `r`       | Represents the **read** permission (allows reading the contents of the file). |
| `file`    | The name of the file whose permissions are being modified. |

## What It Does:
- Grants **read (`r`) permission** to **others (`o`)**. This means non-owner and non-group users can now **read** the contents of the file.

### Example Usage:

```bash
chmod o+r file.txt

ls -l file.txt
# -rw-r--r-- 1 user user 1234 Feb 6 12:00 file.txt
```

