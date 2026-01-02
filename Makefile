SHELL := /bin/bash
CURRENT_DATE := $(shell date +%Y-%m-%d)
SHA_FILE := .sha256_sums
VERSION_FILE := .version

.PHONY: all prompt_version download_files calculate_checksums update_cask create_release upload_files update_latest update_metadata update_github clean build

all: prompt_version download_files calculate_checksums update_cask create_release upload_files update_latest update_metadata update_github clean build

gitpull:
	@echo "Pulling latest changes"
	git pull origin main --rebase

prompt_version: gitpull
	@read -p "Enter the release version (e.g., 2024.8.4): " VERSION; \
	echo "VERSION=$$VERSION" > $(VERSION_FILE)

download_files: prompt_version
	@echo "Downloading files from S3..."
	@mkdir -p ./tmp_builds
	aws s3 cp s3://orca-sheets-build/$(CURRENT_DATE) ./tmp_builds --recursive

calculate_checksums: download_files
	@echo "Calculating checksums..."
	@> $(SHA_FILE)
	@for file in ./tmp_builds/*/*; do \
		if [[ $$file == *"x86_64"* ]]; then \
			shasum -a 256 $$file | awk '{print "APPLE_INTEL_SHA_SUM="$$1}' >> $(SHA_FILE); \
		fi; \
		if [[ $$file == *"arm64"* ]]; then \
			shasum -a 256 $$file | awk '{print "APPLE_M1_SHA_SUM="$$1}' >> $(SHA_FILE); \
		fi; \
	done
	cat $(SHA_FILE)
	@echo "SHA256 sums calculated and stored in $(SHA_FILE)"

update_cask: calculate_checksums
	@echo "Updating Cask file..."
	@source $(VERSION_FILE); \
	source $(SHA_FILE); \
	sed -e "s/VERSION_NUMBER/$$VERSION/g" \
		-e "s/ARM_SHA256/$$APPLE_M1_SHA_SUM/g" \
		-e "s/INTEL_SHA256/$$APPLE_INTEL_SHA_SUM/g" \
		Casks/orcasheets.rb.template > Casks/orcasheets.rb
	@echo "Cask file updated successfully"

create_releases: update_cask
	@echo "Creating GitHub releases..."
	@source $(VERSION_FILE); \
	gh release create $$VERSION -t "OrcaSheets $$VERSION" -n "Release notes for version $$VERSION"; \
	gh release delete latest --yes || true; \
	gh release create latest -t "OrcaSheets Latest ($$VERSION)" -n "This is the latest release of OrcaSheets (version $$VERSION)" --latest


upload_files: create_releases
	@echo "Uploading files to GitHub releases..."
	@source $(VERSION_FILE); \
	for file in ./tmp_builds/*/*; do \
		gh release upload $$VERSION $$file; \
		latest_file=$$(echo $$file | sed "s/$$VERSION/latest/"); \
		cp $$file $$latest_file; \
		gh release upload latest $$latest_file; \
		rm $$latest_file; \
	done

update_latest: upload_files
	@echo "Updating latest release..."
	@source $(VERSION_FILE); \
	gh release edit $$VERSION --latest

update_metadata: update_latest
	@echo "Updating metadata file..."
	@source $(VERSION_FILE); \
	read -p "Enter release notes (press Enter for default): " NOTES; \
	if [ -z "$$NOTES" ]; then \
		NOTES="Release version $$VERSION"; \
	fi; \
	PUB_DATE=$$(date -u +"%Y-%m-%dT%H:%M:%S.000Z"); \
	echo "Reading signature files..."; \
	DARWIN_X86_SIG=""; \
	DARWIN_ARM_SIG=""; \
	LINUX_SIG=""; \
	WINDOWS_SIG=""; \
	for file in ./tmp_builds/*/*; do \
		if [ -f "$$file.sig" ]; then \
			SIG_CONTENT=$$(cat "$$file.sig"); \
			if [[ $$file == *"x86_64"* ]] && [[ $$file == *".app.tar.gz" ]]; then \
				DARWIN_X86_SIG="$$SIG_CONTENT"; \
			elif [[ $$file == *"arm64"* ]] && [[ $$file == *".app.tar.gz" ]]; then \
				DARWIN_ARM_SIG="$$SIG_CONTENT"; \
			elif [[ $$file == *"AppImage"* ]]; then \
				LINUX_SIG="$$SIG_CONTENT"; \
			elif [[ $$file == *".msi.zip" ]]; then \
				WINDOWS_SIG="$$SIG_CONTENT"; \
			fi; \
		fi; \
	done; \
	echo "Updating updated-metadata.json..."; \
	jq --arg version "$$VERSION" \
	   --arg notes "$$NOTES" \
	   --arg pub_date "$$PUB_DATE" \
	   --arg darwin_x86_sig "$$DARWIN_X86_SIG" \
	   --arg darwin_arm_sig "$$DARWIN_ARM_SIG" \
	   --arg linux_sig "$$LINUX_SIG" \
	   --arg windows_sig "$$WINDOWS_SIG" \
	   '.version = $$version | .notes = $$notes | .pub_date = $$pub_date | .platforms["darwin-x86_64"].signature = $$darwin_x86_sig | .platforms["darwin-aarch64"].signature = $$darwin_arm_sig | .platforms["linux-x86_64"].signature = $$linux_sig | .platforms["windows-x86_64"].signature = $$windows_sig' \
	   updated-metadata.json > updated-metadata.json.tmp && mv updated-metadata.json.tmp updated-metadata.json; \
	echo "Metadata file updated successfully"

update_github: update_metadata
	@echo "Updating GitHub..."
	@source $(VERSION_FILE); \
	git add Casks/orcasheets.rb updated-metadata.json; \
	git commit -m "Update OrcaSheets Cask file and metadata for version $$VERSION"; \
	git push

clean: update_github
	@echo "Cleaning up..."
	rm -rf ./tmp_builds
	rm -f $(SHA_FILE) $(VERSION_FILE)


build: clean
	@echo "Build completed successfully"