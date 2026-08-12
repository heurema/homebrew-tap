# frozen_string_literal: true

class Goalrail < Formula
  desc "Evidence-backed inspection of coding-agent environments"
  homepage "https://github.com/heurema/goalrail-rs"
  url "https://github.com/heurema/goalrail-rs/releases/download/v0.3.8/goalrail-v0.3.8-aarch64-apple-darwin.tar.gz"
  sha256 "a0c774eae3523f4d6a88c37fcd586464529878a3a66d726d1bd0acac08d18065"
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
