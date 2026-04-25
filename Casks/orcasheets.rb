cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.4.2"
  sha256 arm:   "2fec4a6ec8069ed9f9998c1d71143194dafb3d5d56592cc3c7da42979abbc299",
         intel: "2712aac8a600c29cd0081bae3740b66cca3e7d4d65954a4db1a80c1957f3e6e2"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end