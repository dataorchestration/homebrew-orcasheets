cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2024.8.1"
  sha256 arm:   "efa253f015d861fc532ba01df26610f4f0761fca81d384bbf356903ad3c2dba3",
         intel: "5aa84106029cd75069b95033c1207f862acbcf06541c8a4d73f18658a442b415"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"
  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.ai/"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"

end