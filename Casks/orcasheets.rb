cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.2.2"
  sha256 arm:   "0ad29abe491e7a5982eb3ccb20b1b817bb5daf8c9189c04e028a30453c3dc927",
         intel: "b8fc75c54ce0829edbbffb2ab52c8391be7547160f430da18acd76bdbe748c5a"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end