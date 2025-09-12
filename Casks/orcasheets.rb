cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.9.1"
  sha256 arm:   "f95959f8bdfc388c27bd1e8ff220a099d5f4ebce14f36fd8a9328aba48727fac",
         intel: "5dcf7d73ec3b3a72ff560cd52636fe3c4726e422ca01bb98d2dc8956b0346c3b"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end