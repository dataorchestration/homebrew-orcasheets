cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.3"
  sha256 arm:   "f33a2e773f727caf2705a8fcf1d5f2bcf8e63c8d86bf015cb7631ac9158ebd23",
         intel: "d5c438096287a179c639c388cc80efe60242715a95ae4aeb5079cffaf493ef21"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.ai/"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"

end