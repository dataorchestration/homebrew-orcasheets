cask "orcasheets" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.16"
  sha256 arm:   "780cd2c4f687f7192e7843cd0936e905a7f6d9f89498e2f7f913705919eaba8d",
         intel: "44d048fc9e5f109151d8c6fa8fc85b2bc2245a8a7a2bb1e8d5bf597aef937476"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  app "OrcaSheets.app"

end
