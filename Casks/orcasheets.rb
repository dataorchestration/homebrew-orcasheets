cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.5"
  sha256 arm:   "8ce0f466d8258c57e0ef88a2c7a527915eaa3c972f6f10d33957a39f905954cf",
         intel: "e8fa2c948f3d2eef86607d89d923e92696fbd9a28c502aedef9b4b580ae89478"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.ai/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end