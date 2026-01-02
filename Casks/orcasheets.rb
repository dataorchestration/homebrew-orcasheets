cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.2"
  sha256 arm:   "3ce98efcf247c322fab42504054904b19f97a3cf6d7e81e2a6b07142d1469af3",
         intel: "d264474b7b3551623871b7118b5961b070034b8f8411bbe582cbe80ce98f88d3"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end