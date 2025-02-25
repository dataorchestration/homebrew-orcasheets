cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.2.3"
  sha256 arm:   "1dad4b8c7dd5bf3e1f10f21f238c7f6f156273367b7c06ec7e66f3a403fe203d",
         intel: "e31434b3bcc4f093da2d018fd8efd78da15e01254a48f3ed9bd1607fa5bd8551"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end