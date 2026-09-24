class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.1.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.1.0/kdt-macos-universal.tar.gz"
  sha256 "38733a16b4f8dff76912fd74ced106b540cb380251d360c15e2ea3566c80015a"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.1.0"
    sha256 cellar: :any_skip_relocation, all: "51b86f36fe285564738e9a3e2b251e61378ef3450bad65b967195252f27205a8"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
