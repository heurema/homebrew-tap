# frozen_string_literal: true

class Goalrail < Formula
  desc "Evidence-backed inspection of coding-agent environments"
  homepage "https://github.com/heurema/goalrail-rs"
  url "https://github.com/heurema/goalrail-rs/releases/download/v0.3.0/goalrail-v0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "b9a25e8bedf381872d42b98cba5e62c2746a6657ce0c8e92226afbc65ebee032"
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
