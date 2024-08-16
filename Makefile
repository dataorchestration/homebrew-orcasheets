SHELL := /bin/bash
CURRENT_DATE := $(shell date +%Y-%m-%d)
SHA_FILE := .sha256_sums
VERSION_FILE := .version

.PHONY: all prompt_version download_files calculate_checksums update_cask create_release upload_files update_latest update_github clean build

all: prompt_version download_files calculate_checksums update_cask create_release upload_files update_latest update_github clean build

prompt_version:
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

create_release: update_cask
	@echo "Creating GitHub release..."
	@source $(VERSION_FILE); \
	gh release create $$VERSION -t "OrcaSheets $$VERSION" -n "Release notes for version $$VERSION"

upload_files: create_release
	@echo "Uploading files to GitHub release..."
	@source $(VERSION_FILE); \
	for file in ./tmp_builds/*/*; do \
		gh release upload $$VERSION $$file; \
	done

update_latest: upload_files
	@echo "Updating latest release..."
	@source $(VERSION_FILE); \
	gh release edit $$VERSION --latest

update_github: update_latest
	@echo "Updating GitHub..."
	@source $(VERSION_FILE); \
	git add Casks/orcasheets.rb
	git commit -m "Update OrcaSheets Cask file for version $$VERSION"
	git push

clean: update_github
	@echo "Cleaning up..."
	rm -rf ./tmp_builds
	rm -f $(SHA_FILE) $(VERSION_FILE)


build: clean
	@echo "Build completed successfully"