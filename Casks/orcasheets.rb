cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.10.1"
  sha256 arm:   "0965090ffce4ba814cc2543799f54f7bae5e73cbe42782948fe5f5675fd78f7c",
         intel: "7c22cffe265c436f87805273ba7cf8b6542315e789f651136bbf786c6eceea58"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end