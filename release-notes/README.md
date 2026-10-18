# Per-release notes files

`make build` reads release notes from this directory instead of prompting for them.
Create the files for the version **before** running `make build`. Both are optional.

| File | Used by | Written to | Fallback when missing |
|------|---------|------------|-----------------------|
| `<VERSION>.txt` | `update_metadata` | `updated-metadata.json` → `.notes` | `"Release version <VERSION>"` |
| `<VERSION>.json` | `update_release_notes` | `release-notes.json` (prepended entry) | skipped |

## `<VERSION>.txt`

Plain text, exactly as it should appear to the user. Do **not** wrap it in quotes and do
**not** write `\n` — press Enter for line breaks. The file is read verbatim and jq handles
the JSON escaping.

Convention used so far: two blank lines at the top, then one paragraph per feature with a
leading space, separated by a blank line.

```text


 Feature Name: One or two sentences describing it.

 Another Feature: Description here.

 Fixes: Fix one. Fix two.
```

If you already have notes in the old quoted `"...\n\n..."` form, convert them with:

```bash
jq -r . release-notes/<VERSION>.txt > tmp && mv tmp release-notes/<VERSION>.txt
```

## `<VERSION>.json`

A JSON **array** of sections:

```json
[
  {
    "title": "What's New",
    "items": [
      "Feature one.",
      "Feature two."
    ]
  },
  {
    "title": "Fixes",
    "items": [
      "Fix one."
    ]
  }
]
```

`version` and `date` are added automatically by the Makefile.
Both files are committed alongside the metadata by `update_github`.
