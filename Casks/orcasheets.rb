cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.12.1"
  sha256 arm:   "e6084848c49a2561edd37c48ca719f46c47b621de59dd988899d57c946943857",
         intel: "427c0cc463e55f15f0ca72600199fc3e1e52ba9d2f0ac94dd19c9ee389ccf474"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end