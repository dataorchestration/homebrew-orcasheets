cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.3"
  sha256 arm:   "507c36ce29b1ac6fb172aa768ee7bf9d7fa299c89b61b3edeea1b95b2d84a702",
         intel: "369b46947a1ea24be468688d7974862b4b0685504b4485d265152483b8c260ad"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end