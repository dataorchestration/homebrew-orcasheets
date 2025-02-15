cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.2.1"
  sha256 arm:   "6b742c9b0c9528e0101441b3eaad475e2adf5aaca3405fb33dcb4b85b5b5dfc0",
         intel: "2e32c1d37b62bfa8b043cf5a72060894bc01310da74085d4ec30846f8b913907"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end