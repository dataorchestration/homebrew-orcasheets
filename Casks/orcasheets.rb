cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.7.1"
  sha256 arm:   "ae4469b984aa297d4d8ef940c3ef2b846b6e59f2a8b80cbbe32bd4e2da33038e",
         intel: "23f89eb113d9d5f970c3b141e8be32cd36d305dc866bad6a91fce787fa8bb04e"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end