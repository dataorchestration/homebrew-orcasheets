cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.5"
  sha256 arm:   "18f70d8a597264f3cfbbf165fcc681237f45e42e1541ecc22abbe103c6e0e87b",
         intel: "72bd0c9de89a36ff4563e260605df12eb930432c3181f72728acdf3d6e5b3bd4"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end