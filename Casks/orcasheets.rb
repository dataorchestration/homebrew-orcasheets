cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.4"
  sha256 arm:   "6960b88b27165edc1ae0afebc23ff37081be3906227d76a53cd2be33d3c9513c",
         intel: "ea4f6a451b59c678b1732a8aa3633a19b198c67216742f6d662065be0bd2e118"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end