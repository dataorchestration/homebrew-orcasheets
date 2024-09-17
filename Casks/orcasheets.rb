cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.7"
  sha256 arm:   "8c4621d447531238d57e7ab63a88abccbf0c021a5fbf064dad8bb70b27815e45",
         intel: "500d5ae54d45161efa50b3f8eb61838c96ade3721b875a5e399172b48c1de105"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end