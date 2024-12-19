cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.12.2"
  sha256 arm:   "fe9c85228652af9f7abfaf5bf9354e3bf287d76397ddac7ce5e22b528125f3d4",
         intel: "57ac68db28179e71ea583f34ada8a1b537e02df7f2081a4fe5fec4678697094e"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end