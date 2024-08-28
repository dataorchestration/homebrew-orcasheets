cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"


  version "2024.8.6"
  sha256 arm:   "c7e78fe40dfd1a1612b3510230d65670773afb0d8f407e929b9578e2b6774b25",
         intel: "65f638742a6045222f5bc9260d231031c68d83b9628281e7479e4763e90d0873"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end