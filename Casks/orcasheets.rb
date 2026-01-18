cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.5"
  sha256 arm:   "eca321eb51f1dfd378be2d49fcd74228ebdb55650838b98c0541ad3ff985ef19",
         intel: "69a61dee84d488a83deb63805b59e915ecaf47489286b2ff14ab7bffde00ee95"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end