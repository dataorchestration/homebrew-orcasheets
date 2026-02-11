cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.1"
  sha256 arm:   "f7ce73a42c9a9eb7de50404323adca5496b49ac4e9b6dd66e62a2f4493a2564b",
         intel: "9044dee376c97e0044fb276abc766900d15c37365cc4ba69bd3b5cccb94fe7c0"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end