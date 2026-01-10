cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.1.4"
  sha256 arm:   "b6851200f848ff3387cab10a4ce5a7c9ea0b263134e495312518cbd07c044419",
         intel: "7aaaa00c4576168315120faa0c9c176d51c975cb9c88f6ff41b9770dfcac4b38"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end