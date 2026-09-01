class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.23.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.23.0/kdt-macos-universal.tar.gz"
  sha256 "53c4198b4498ec786901fabbc61bc5a16e2419d0a050ae95994cad0f4f86e439"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.23.0"
    sha256 cellar: :any_skip_relocation, all: "aaffbf20cd8bcbc53ef8933185bcdbd005386d4df62d327c5308184c5e3698b6"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
