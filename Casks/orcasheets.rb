cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.4.3"
  sha256 arm:   "9ac94f2f94b668184bba576d281722b85b4c457d6c58e8cd8b61a32f7c55cc2b",
         intel: ""

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end