class Weave < Formula
  desc "CLI tool for developing, testing, and running Interwoven Rollup"
  homepage "https://www.github.com/initia-labs/weave"
  version "0.0.4"
  license "BSD-3-Clause"
  if Hardware::CPU.arm?
    url "https://github.com/initia-labs/weave-binaries/releases/download/v0.0.4/weave_v0.0.4_darwin_arm64.tar.gz"
    sha256 "c80e23db9df9947303c31da8f778b47cbfdcabdf7d069094e467c3b9c1f79b63"
  else
    url "https://github.com/initia-labs/weave-binaries/releases/download/v0.0.4/weave_v0.0.4_darwin_amd64.tar.gz"
    sha256 "1ab0112c48faf4a7fc056882b2c95badc1ba88a1ae5876123d5bbfe96dab4ae6"
  end

  def install
    bin.install "weave"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/weave version")
  end
end
