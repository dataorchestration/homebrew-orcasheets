cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.8"
  sha256 arm:   "ab3270fb45866ff48261fb11d267981c435e32667663775df3b6c45a90a22327",
         intel: "77ee99a157b518719e4598f8668a5d6aea3bffb109ba77be9d242b6a08590979"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end