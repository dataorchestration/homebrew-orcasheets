cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.4.1"
  sha256 arm:   "ec07034bf91b23db46f6472f3978ca2198f66798319978db720dc94237048fa8",
         intel: "f8fd9cbf3c0bc18f18c85193c642842709a666740cb81b566ceee85c1405a521"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end