15. To grep only the entries ending with 0*a (like 01a, 02a, 03a, etc.), you can use the following command:
```
host -l gspt.net | grep -E 'lvsldtdockapp[0-9]+a\.gspt\.net'
```
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

### **Example Matches**
