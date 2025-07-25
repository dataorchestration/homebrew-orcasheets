cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.7.2"
  sha256 arm:   "c01310464b94ef668baf01977624314049785d27175a994b3c48a771d29d43af",
         intel: "c724897f20229acc3af8946f5ec265f4256b5f6464a25ecbacb8a50550364b85"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end