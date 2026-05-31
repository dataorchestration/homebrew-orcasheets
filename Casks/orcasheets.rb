cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.5.2"
  sha256 arm:   "a5e0e0a360aff7629cbd1bd97131dd73b3a71178ed398ba7fc70239f92ff91eb",
         intel: "58604df03c7093739a9a44e5ca7d9d27c3bae03d9ce556efefd240261fe56a5d"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end