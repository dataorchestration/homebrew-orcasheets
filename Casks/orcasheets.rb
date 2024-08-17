cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.5"
  sha256 arm:   "c58825a2215265c573fd54936431b7cf9ca23751b5b9cd0cabc1db3ec8f7d9f4",
         intel: "344c114ba4ca4f828ed766637811242321ddadefe6b389e341dd571894d16a70"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end