cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.5.3"
  sha256 arm:   "bff11785d51b1106c228b40dd2264946452e7fb0e569a90d4f9ba5a99cbbcc07",
         intel: "0771daf30142f8e58ba1639cf43223539aba73206cfaf5776bc329f72e6d8c59"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end