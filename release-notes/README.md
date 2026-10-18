# Per-release notes files

`make build` reads release notes from this directory instead of prompting for them.
Create the files for the version **before** running `make build`. Both are optional.

| File | Used by | Written to | Fallback when missing |
|------|---------|------------|-----------------------|
| `<VERSION>.txt` | `update_metadata` | `updated-metadata.json` → `.notes` | `"Release version <VERSION>"` |
| `<VERSION>.json` | `update_release_notes` | `release-notes.json` (prepended entry) | skipped |

## `<VERSION>.txt`

Plain text. Newlines are kept as-is (no `\n` escaping needed).

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
