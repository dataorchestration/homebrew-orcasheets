cask "orcasheets" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.16"
  sha256 arm:   "73b7b27999a729087ac13d4664771856311d2b5e71ef262fd73c859f5627d446",
         intel: "91157027ffe8164866fd2a09f3784cfe3b1414ce1537d4536c9a4cf6a17937ed"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  app "OrcaSheets.app"

end
