cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.9"
  sha256 arm:   "6def544bd8a97872131c9923a7178fb7a9380826e2c7d79b14334eaf45dd9051",
         intel: "e3de1be847de7061c8f167c28640933020a2a02873fb5f2fc947c7152d5985e9"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end