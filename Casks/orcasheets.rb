cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.11.2"
  sha256 arm:   "b17de159b6ac60f92bcec65cd840cc820b53cc77713b5082e9d4e1fb0b7428f4",
         intel: "f982ed839f54d4dece2636ff3e195fd2afd940a96da72d25f64afa52214863b4"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end