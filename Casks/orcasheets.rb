cask "orcasheets" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.16"
  sha256 arm:   "5f7c7d18ee5fa7cdcb006e0a0d3bd94cb153f6996a63990f5a25842d0a4e56b7",
         intel: "91157027ffe8164866fd2a09f3784cfe3b1414ce1537d4536c9a4cf6a17937ed"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  app "OrcaSheets.app"

end
