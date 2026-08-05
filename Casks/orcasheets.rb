cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.8.1"
  sha256 arm:   "e4d89c2ec42ff5add5d5b5f0466cab77c1e14e4aed79af0bac0e23d2c27b2ca2",
         intel: "d854c0f3db6d646723256d29a1a70b17c593c9a0fd6e184c589ef7a407b0daa1"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end