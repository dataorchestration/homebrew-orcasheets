cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.6.1"
  sha256 arm:   "40653ae9f86eee98cd1f6d6ff05092f4a79bd37f424480c27b692b0955dc76cc",
         intel: "3ad8f66b31a8e4e3aaf6d70581a8690912c258eec007736860c7d2f8b102e9d6"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end