cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.3.2"
  sha256 arm:   "aeae72eecf504e04e3e10e94e3bedc9f7e118c7ef9d21c6ed76a93f210230af6",
         intel: "c0d43f331a1ab5e02d967bac3d300dda5e99adf3380b878e251f96cb414eb766"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end