cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "25.4.2"
  sha256 arm:   "597253a7ae3707b5b798cdac206e0d1646c6e30897d1a1eb9369211de1741d1b",
         intel: "4652752aecdf5cb302a80f8192ddca444d16d5dff58de27d14b244ccf393bd6d"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end