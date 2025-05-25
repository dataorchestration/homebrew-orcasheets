cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.6"
  sha256 arm:   "c5b1bc3ad3133f318d84e4bf4df36ccf12cfc2976f9cd0597e3122c23cc7748c",
         intel: "be93c2e35f60cb170cb4661fe2dae9fe2299e640d5afbf42b399cf09de794f7b"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end