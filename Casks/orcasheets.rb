cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.1"
  sha256 arm:   "3997aa843bb60e9b6152050222ba1b54cc569ac03e9a6e75cf37d47ce591cb26",
         intel: "4f3030d4a598aefa52619653fc4188335c1e207f4adb36d306297d52e5c1d0b2"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end