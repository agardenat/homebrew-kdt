class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.12.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.12.0/kdt-macos-universal.tar.gz"
  sha256 "d58bececd7cd09439806be40e2285336019c2e778f7f65cf42c18302aebc511a"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.12.0"
    sha256 cellar: :any_skip_relocation, all: "9839513da030a2d7cdd50039efc532660924f374367bb4862750d2fac23ac6e0"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
