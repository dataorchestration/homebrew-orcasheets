cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.9.2"
  sha256 arm:   "7034daea0cfda8249616d7edc729cbee26f4c45eebe6c25dd55a8d5aa06b268b",
         intel: "f9cb2ae73595cc15b2bbb3445cc0df96e14b48991ec90c5ad3b635a357dda949"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end