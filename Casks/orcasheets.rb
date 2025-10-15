cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.9.1"
  sha256 arm:   "fc6e2df93f0416887c8a095dc7c6744ad05b33804e48ff2146364a11996ebd7a",
         intel: "5dcf7d73ec3b3a72ff560cd52636fe3c4726e422ca01bb98d2dc8956b0346c3b"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end