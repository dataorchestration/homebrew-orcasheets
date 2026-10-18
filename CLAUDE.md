# homebrew-orcasheets — Claude Context

Homebrew tap and release-metadata repo for OrcaSheets. Everything is driven by `make build`.

## Release flow (`make build`)

Target chain (each depends on the previous): `gitpull → prompt_version → download_files →
calculate_checksums → update_cask → create_releases → upload_files → update_latest →
update_metadata → update_release_notes → update_github → clean → build`.

- Builds are pulled from `s3://orca-sheets-build/<today's date>/` into `./tmp_builds`.
- `Casks/orcasheets.rb` is generated from `Casks/orcasheets.rb.template`.
- `updated-metadata.json` is the Tauri updater manifest (`.notes`, `.pub_date`, signatures).
- `release-notes.json` is the in-app changelog; newest entry is prepended.

## Release notes convention

Notes are read from files, not prompted (prompting truncated long pastes). Create them
**before** running `make build`:

- `release-notes/<VERSION>.txt` → `updated-metadata.json` `.notes` (fallback: default string)
- `release-notes/<VERSION>.json` → sections array for `release-notes.json` (fallback: skip)

Format details in `release-notes/README.md`. Both files are committed by `update_github`.

## Known quirks

- The `all` target references `create_release` (singular), which does not exist. Use `make build`.
- Temp files `.version` and `.sha256_sums` are created and removed during the run.

## Revisions

See `.claude/revisions/` for the change log.
