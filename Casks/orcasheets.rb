cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.12.1"
  sha256 arm:   "40648b49b46459861f5bd2e341aab9efbd59b2b9f75f4c37f644d1688df1a627",
         intel: "c41fab497c78a4199ea0ee835422e772071df55d081b1b768d7e0b97599603f6"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end