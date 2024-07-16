cask "orcasheets" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.16"
  sha256 arm:   "17751340a0f29544e40fc9c4347a179a4e42bbb435c1fb8bc67f485a668188ed",
         intel: "91157027ffe8164866fd2a09f3784cfe3b1414ce1537d4536c9a4cf6a17937ed"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  app "OrcaSheets.app"

end
