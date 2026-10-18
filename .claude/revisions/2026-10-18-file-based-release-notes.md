# 2026-10-18 — File-based release notes for `make build`

## Problem
`update_metadata` and `update_release_notes` prompted with `read` for the notes text and
the sections JSON array. Large pastes were truncated by the terminal line-input limit,
so long release notes silently lost content.

## Change
- New `NOTES_DIR := release-notes` in `Makefile`.
- `update_metadata` reads `release-notes/<VERSION>.txt` if present (non-empty), else
  falls back to `"Release version <VERSION>"`. No more `printf '%b'` escaping; file
  newlines are used verbatim.
- `update_release_notes` reads `release-notes/<VERSION>.json` via `jq --slurpfile` if
  present, validates it is a JSON array, else skips the `release-notes.json` update.
- `update_github` now also stages `release-notes/` so per-version files are archived
  with each release commit.
- Added `release-notes/README.md` documenting the two file formats.

## Verification
- `make -n update_release_notes` parses.
- Exercised both recipes against scratch copies: file present, file missing, non-array
  JSON rejected. Quotes, backslashes, `$` and blank lines in the `.txt` survive intact.
