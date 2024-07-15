class OrcaSheets < Formula
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://github.com/yourusername/yourproject"

  if Hardware::CPU.arm?
    url "https://github.com/yourusername/mytool/releases/download/v1.0.0/mytool-arm64.tar.gz"
    sha256 "sha256checksum_arm"
  else
    url "https://github.com/yourusername/mytool/releases/download/v1.0.0/mytool-x86_64.tar.gz"
    sha256 "sha256checksum_intel"
  end

  def install
    bin.install "orcasheets"
  end

  test do
    system "#{bin}/yourbinaryname", "--version"
  end
end