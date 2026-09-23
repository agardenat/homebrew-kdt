class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.0.1"
  url "https://github.com/agardenat/kdt/releases/download/v2.0.1/kdt-macos-universal.tar.gz"
  sha256 "c5f4c803ed38ad4a90bd22100de6f24a6dc25476e23fd11c641242c3c3146d5d"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.0.1"
    sha256 cellar: :any_skip_relocation, all: "c307a9ea0614315f1160d156eea20299a71eaec512b5e91307cee2c2308ca62c"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
