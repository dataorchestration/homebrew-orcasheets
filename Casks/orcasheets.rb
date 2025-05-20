cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.4"
  sha256 arm:   "43940083bfc5f022dc9259e22c64055ed30c4f8212738be70584fe16630f129b",
         intel: "2d501f3d8f9e6b1beb1a09586c7c334c207a4976fe0444f9f2c164cc0833fde4"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end