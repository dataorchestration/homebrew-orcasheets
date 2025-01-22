cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.1.2"
  sha256 arm:   "8af6a51529780b2041ac4087869fa95fa59f177aa0bf91307bdd414332029c5a",
         intel: "901c2f3e73bc9d94d0695ab2b58e0d6f1c1fcf7f35a2cc707c4ba3cefd3c4a75"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end