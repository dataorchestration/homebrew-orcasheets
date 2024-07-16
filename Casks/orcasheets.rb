cask "orcasheets" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.16"
  sha256 arm:   "2e14af595c5da463d7ae8777aa1c9411f6cf93c67608c080b2f15eb572a96224",
         intel: "91157027ffe8164866fd2a09f3784cfe3b1414ce1537d4536c9a4cf6a17937ed"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  app "OrcaSheets.app"

end
