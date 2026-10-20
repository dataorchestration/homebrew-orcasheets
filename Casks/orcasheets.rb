cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.10.2"
  sha256 arm:   "e6d9d9b6f148234aab280e65df4177e79d3689a70350fc244911378efcef6773",
         intel: "924bf98347dde95d232f20f6ed3357b280e16cbfb2a999d12530037d8399e3b4"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end