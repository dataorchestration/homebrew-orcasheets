cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.7.16"
  sha256 arm:   "41c1e1a15c1178fce5e97029a10007d15ff6f8e0449e2c9ca229fd95b877ae74",
         intel: "2f039bae1d64095011acf57fcb176576ee21a98c73242edfdca4546fcfc438da"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end