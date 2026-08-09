# frozen_string_literal: true

class Goalrail < Formula
  desc "Evidence-backed inspection of coding-agent environments"
  homepage "https://github.com/heurema/goalrail-rs"
  license "MIT"
  version "0.1.0"
  url "https://github.com/heurema/goalrail-rs/releases/download/v0.1.0/goalrail-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "165ac29298d7052aceeebec8f6855b3540edc4348bab80d429e83009d6338acb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "gr"
  end

  test do
    assert_match "gr #{version}", shell_output("#{bin}/gr --version")
  end
end
