cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.1"
  sha256 arm:   "d58696549b056c0f13aea1ad47be5fcb500ad0e69e790af3f0e4db2b27b98194",
         intel: "baa0d52cad67c3e81c697bf8e084dc0ae771714aa17026ecfe1e2688b1fbf659"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end