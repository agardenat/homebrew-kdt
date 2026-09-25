class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.2.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.2.0/kdt-macos-universal.tar.gz"
  sha256 "46131129300cd40cfba0e148fa7fff40007232dde62992aa10799b3fce30288c"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.2.0"
    sha256 cellar: :any_skip_relocation, all: "714346b5c37641ca9f4085619df6abd17b5ebae01eda782278bd475db72be020"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
