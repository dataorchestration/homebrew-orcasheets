cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.3"
  sha256 arm:   "a4a821501308eb8ccd58a525989ef6f0795011e96cfa614962812ebc85222988",
         intel: "a4ef185edca7a376fa845ad8f874c7a8749cbe98d0755126edf7b14dc172744f"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end