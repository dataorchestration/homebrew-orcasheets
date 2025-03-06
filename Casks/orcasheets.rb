cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.3.3"
  sha256 arm:   "a74cc1ee9249e8b0f69f24c0a39abd1c689258be70c6c519ebf61795f3fc8024",
         intel: "030364c500f43b86985f49c8c070200e06322529042565e5488302c420fb682d"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end