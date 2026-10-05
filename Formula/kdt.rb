class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.7.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.7.0/kdt-macos-universal.tar.gz"
  sha256 "fd83f75f77bb5a382e27b16d87e47cc6090e087f9fc6df86f1aed05de659358f"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.7.0"
    sha256 cellar: :any_skip_relocation, all: "0710193e7950c068c8debe1559bd85e9fe66aae3ffa3a2c8a6995e493b275c7b"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
