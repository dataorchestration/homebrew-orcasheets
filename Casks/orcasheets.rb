cask "orcasheets" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.14"
  sha256 arm:   "8303002f21e1c09c1c54b1af86bc036e42f8df508271bf7a99fac260e9e0d770",
         intel: "91157027ffe8164866fd2a09f3784cfe3b1414ce1537d4536c9a4cf6a17937ed"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  app "OrcaSheets.app"

end
