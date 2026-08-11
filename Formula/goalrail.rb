# frozen_string_literal: true

class Goalrail < Formula
  desc "Evidence-backed inspection of coding-agent environments"
  homepage "https://github.com/heurema/goalrail-rs"
  url "https://github.com/heurema/goalrail-rs/releases/download/v0.3.1/goalrail-v0.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "cec3d5efe60d96cf2af8cb6422f74c719cf1f2c5c48e6317ed0b7a5c1abf4b7c"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "gr"
  end

  test do
    assert_match "gr #{version}", shell_output("#{bin}/gr --version")
  end
end
