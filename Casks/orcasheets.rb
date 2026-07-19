cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.7.1"
  sha256 arm:   "55b34aa41c0e0d307e6d0ce27c76a6bc526a2b09f22d6817e428397c5f1be1f9",
         intel: "26f2fac6cb82b619950c509587758bfe5d128d553c47f9c51a7ff18da6372a7d"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end