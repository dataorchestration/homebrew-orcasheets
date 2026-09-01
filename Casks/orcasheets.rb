cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.9.1"
  sha256 arm:   "738bfb8c5150cf981f686c99fa99ca5c46bebe75d5dc49f272edd1b36aeaaf85",
         intel: "39999bed0a035d7d8d41be2100bb57c81efaae2b7d2b0748e48fa1a2787315a7"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end