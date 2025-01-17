cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.1.1"
  sha256 arm:   "14bbe487e7122c9effaccf05a0163849871e7d55ec5459e4c1eae51cb637866f",
         intel: "80b350066877cbd0cc7320b29db156c6895d6acea6e46426504f5cba47f26dbf"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end