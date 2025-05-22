cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.4"
  sha256 arm:   "0609fa03f8d5315e552411ce69928a2662b88f3339e1bb2b64148a54d4a241fb",
         intel: "d3b5c44734129df7a0d3555bfedb6e10d0cd427e082dff6e6d1b2ba291685c47"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end