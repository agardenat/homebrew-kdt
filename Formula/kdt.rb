class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.11.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.11.0/kdt-macos-universal.tar.gz"
  sha256 "6cfd7cc3491d50e46090ea10ceaa725f1230a09cd17ac5bd133a0035f7bfdfd4"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.11.0"
    sha256 cellar: :any_skip_relocation, all: "dc39f921168348fffb6749930a882d5e79a1e0d11f53ee6c9d618befbb1014c5"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
