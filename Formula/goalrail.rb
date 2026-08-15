# frozen_string_literal: true

class Goalrail < Formula
  desc "Evidence-backed inspection of coding-agent environments"
  homepage "https://github.com/heurema/goalrail-rs"
  url "https://github.com/heurema/goalrail-rs/releases/download/v0.3.11/goalrail-v0.3.11-aarch64-apple-darwin.tar.gz"
  sha256 "efa4ef17b219c08aa95d5f07d9f8cd10745c1059539cc56a6c39f8da7e6f18cd"
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
