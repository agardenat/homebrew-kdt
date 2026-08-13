class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.18.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.18.0/kdt-macos-universal.tar.gz"
  sha256 "a3b3873f3a3ee96977424bae8b2e110c61144ac10438f69260a6e9c86f4f95f5"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.18.0"
    sha256 cellar: :any_skip_relocation, all: "fce9b573c6a81df7d62a3d7dafe05631aa584554c188912206b5c57bddb08ec5"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
