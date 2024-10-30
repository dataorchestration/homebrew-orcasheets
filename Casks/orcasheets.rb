cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.10.3"
  sha256 arm:   "186099f7b7b6674a360497db0b1512d7ebb4b1baf1c7c975f2f4aab44e633e9b",
         intel: "5c6951d998ea01ee57bc7db27fd0b4662823f2b4ae3d5ba32426cbc97005b8ef"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end