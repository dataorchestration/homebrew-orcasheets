cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.3"
  sha256 arm:   "0c1694ea8b2db24a24445b2d4a4f1cf12e7e971d737c69cc1818b4f47a90f369",
         intel: "fca84de64ff4976c325e613c424f02e72bb69a39cb30c8a3a9d84a611f2059ec"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end