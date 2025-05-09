cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.2"
  sha256 arm:   "1d833321c02476f94408db4630a0d71b3620ba0e1eec8f52eb5a5a7680613b06",
         intel: "55fc413be8d10833de7f47166d0f6a595b13a8f9ada471f5c3b8e32d85585da2"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end