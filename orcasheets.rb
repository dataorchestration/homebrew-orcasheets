class Orcasheets < Formula
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"

  if Hardware::CPU.intel?
    url "https://github.com/yourusername/yourapp/releases/download/v1.0.0/orcasheets-intel.tar.gz"
    sha256 "your_intel_sha256_checksum"
  elsif Hardware::CPU.arm?
    url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/v0.0.2/orcasheets-arm.tar.gz"
    sha256 "9218cba4d78941ed7ae1f39a824384ee5d8730a64f0e344d1e46bfbba2b2e6a9"
  end

  version "0.0.2"

  def install
    libexec.install "orcasheets.app"
    bin.write_exec_script "#{libexec}/orcasheets.app/Contents/MacOS/orcasheets"
  end

  def caveats
    <<~EOS
      orcasheets.app was installed to:
        #{opt_libexec}/orcasheets.app

      You can run it using the command:
        orcasheets
    EOS
  end

  test do
    system "false"
  end
end
