# frozen_string_literal: true

class Goalrail < Formula
  desc "Evidence-backed inspection of coding-agent environments"
  homepage "https://github.com/heurema/goalrail-rs"
  url "https://github.com/heurema/goalrail-rs/releases/download/v0.2.0/goalrail-v0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "3d5055718cc2aaf5b8219d025fe604438ed82c48d40f83ec6262852e0da29b39"
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
