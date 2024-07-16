class Orcasheets < Formula
  desc "World's Fastest Analytics Engine on your Mac"
  homepage "https://orcasheets.io"
  version "0.0.2"

  if Hardware::CPU.intel?
    url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/v0.0.2/orcasheets-intel.tar.gz"
    sha256 "0ca09c9ebf32931f476440b0c56d94e5cfc718fae99566ccdce7bd5df1b713f1"
  elsif Hardware::CPU.arm?
    url "https://github.com/dataorchestration/homebrew-orcasheets/releases/download/v0.0.2/orcasheets-arm.tar.gz"
    sha256 "9218cba4d78941ed7ae1f39a824384ee5d8730a64f0e344d1e46bfbba2b2e6a9"
  end

  def install
    # Since orcasheets.app is at the root of the tarball, install it directly
    prefix.install Dir["orcasheets.app"]
  end

  def caveats
    <<~EOS
      Orcasheets.app has been installed in:
        #{opt_prefix}/orcasheets.app
      You may want to move it to /Applications.
    EOS
  end

  test do
    assert_predicate prefix/"orcasheets.app", :exist?, "orcasheets.app must exist"
  end
end
