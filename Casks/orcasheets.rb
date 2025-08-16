cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.8.1"
  sha256 arm:   "f0b5ac3de9a792e134341ba4f70067d88fef824cbff4582a42531569dd978643",
         intel: "7634a1519e60f6b942a645fbe2eaf981d4a846ee4c241062d8d154e8c83d24c1"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end