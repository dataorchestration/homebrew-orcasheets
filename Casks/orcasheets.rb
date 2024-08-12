cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.4"
  sha256 arm:   "270bebfd27b531080e620f45bf2ae5c823e3fd9ea24e8f3a17ed098e62f2044c",
         intel: "e9b90b469e5ae77d8fcd2f4859c9a22616439da8f873a8e054747ebdc0a18310"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.ai/"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"

end