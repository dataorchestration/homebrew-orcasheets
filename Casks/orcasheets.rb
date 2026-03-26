cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.3.2"
  sha256 arm:   "a0898050e60e57f81687fe6267a23e2b1c1e74ce6641ec48b648e08ce3cb89a4",
         intel: "4aee9fe99ba122b7b87792537d64035f34ef26eb87589a0adab5fa813594e37d"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end