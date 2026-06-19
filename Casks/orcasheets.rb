cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.6.2"
  sha256 arm:   "84fe48ced42cd51566d168bd358ac214907e3d5515d17c364eba5ed9bfa64a92",
         intel: "b46a6100431029978c88ba213b871909f0d547455ff860231fc7a8cfce6063b3"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end