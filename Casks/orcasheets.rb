cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.8.2"
  sha256 arm:   "82a0ee67e5d87cd0ffa4a07ef7e753c457f71fb6db0fe3b383a4c490ef11f1eb",
         intel: "00967a0d8e99edaaafb0287c8e7de6f42c56ab9787276d9d7a15d1934e46e638"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end