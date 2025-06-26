cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.6.1"
  sha256 arm:   "6539b88d4bfebf4e21060731077e4422f9b2490d110b238b48f5e4069cf40365",
         intel: "a39a1e5b27ee72ba3be9d94c85152d802f0c3d27729c6adc32e69d8e26aff003"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end