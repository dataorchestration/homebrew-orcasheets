cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.10.1"
  sha256 arm:   "a75f62c2a54e93e5c724a32d1622610e2272989ba874855177cab7d7cdb9b35a",
         intel: "8e795090da9647ca56bf1f1012078d8e8b1c42057dca8bb7df2a05e7a8d07d48"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end