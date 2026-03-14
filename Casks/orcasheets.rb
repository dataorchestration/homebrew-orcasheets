cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.1"
  sha256 arm:   "ae68a7004f5aa53cb7d839f1ed899693d111bca514d1543f57a231ec55dfd5e1",
         intel: "e6f2c4ea03406b40b843fd42447d5d41eee0124f1475c50e9ba3654a54082450"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end