cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.2"
  sha256 arm:   "bb4d11504e0e61faff74ae626374e888f7b2c954dac7b5b5a8670c6bd72d917e",
         intel: "0d27798ee2ca0e2e6a08b47bc17d52c7dc5de69b62f826d5ab0a3d172a7d9ce3"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end