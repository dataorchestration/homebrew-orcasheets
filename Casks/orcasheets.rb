cask "orcasheets" do
  arch arm: "arm64", intel: "x86_64"

  version "26.4.3"
  sha256 arm:   "d07df4f90047e37c328217d4641f6a6b6733cf6d10193ecedbdc1ea89242f3a2",
         intel: "f7bc67d47f30eecad872804be5863e30bf7617daa247187577093320bce9ea8d"

  url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/#{version}/orcasheets_#{version}_#{arch}.dmg",
      verified: "github.com/dataorchestration/homebrew-orcasheets/"

  name "OrcaSheets"
  desc "World's Fastest Analytics Engine on your PC"
  homepage "https://orcasheets.io/"

  depends_on macos: ">= :big_sur"

  app "OrcaSheets.app"

  zap trash: "~/Library/Application Support/OrcaSheets"
end