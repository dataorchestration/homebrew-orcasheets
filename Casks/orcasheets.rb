cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.5.1"
  sha256 arm:   "1bf59ba32114c7823ef06e54424d837c667c10fe60f71daf84f9c1563d495f82",
         intel: "8a29226874c4e5c15e04c5dff2508784d10552b0f9d62171dbe4e0d92167ea5e"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end