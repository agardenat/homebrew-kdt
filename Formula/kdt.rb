class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.19.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.19.0/kdt-macos-universal.tar.gz"
  sha256 "da767c1ce593a1a36b41f084fc6fbc2d254b561d73f9f2390fb5aeb3c0181f9f"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.19.0"
    sha256 cellar: :any_skip_relocation, all: "b0b7303f01c926eb53c85667f1f169900df04935ba98af3ce9adc3da1f63c726"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
