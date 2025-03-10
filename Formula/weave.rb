# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Weave < Formula
  desc "Cli tool for developing, testing, and running interwoven rollup"
  homepage "https://github.com/initia-labs/weave"
  url "https://github.com/initia-labs/weave/archive/refs/tags/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "c6d0602c0e12b8f0c44cbdfecbe875659e5fe2421f40791f0b3f5ec0d005b5d3"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/initia-labs/weave/releases/download/v0.1.6/weave-0.1.6-darwin-amd64.tar.gz"
      sha256 "4801ac947b78a4a72dcec44166c9b978af4b875623c42cf8aacbd896dcc5af98"
    end

    on_arm do
      url "https://github.com/initia-labs/weave/releases/download/v0.1.6/weave-0.1.6-darwin-arm64.tar.gz"
      sha256 "fa97cc860b5af19129dae25a78ecfb999f458d6903ea5508527824887bdcf917"
    end
  end

  def install
    bin.install "weave"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/weave version")
  end
end
