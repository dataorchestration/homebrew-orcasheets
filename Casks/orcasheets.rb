cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.4.1"
  sha256 arm:   "70eab6e9837e0eeb27e48be5eac6e70bdc60ca8450b065aa74d5d1bd99e67460",
         intel: "2a0da40f31463409f20e9e6eeae5ace4ef94331397828fa93f36e9d0b83d5c32"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end