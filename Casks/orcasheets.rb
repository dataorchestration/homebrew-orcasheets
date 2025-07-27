cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.7.3"
  sha256 arm:   "f4113a65385437ae7120a757f19b68eaa694484cfff44a4c365f8468fff83e0f",
         intel: "8c4f13257d65bc97c210af30a0be35f40f8a2196ad0a074f14dfec0d0f6bac16"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end