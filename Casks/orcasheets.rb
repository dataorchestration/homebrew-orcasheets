cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.3"
  sha256 arm:   "533cef04003e49cea5d0643f777db3c190bae3e26394e9aecf2e4383965cc355",
         intel: "c18ca91126c491ddad68c8fbe44c6c144ff501290c00fb2139a155452e339587"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end