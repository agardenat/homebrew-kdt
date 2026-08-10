class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.12.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.12.0/kdt-macos-universal.tar.gz"
  sha256 "fb21504a263a5b7843bc182a4418e79cd748d61a32f91a674e96aedaa7a70cfb"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.12.0"
    sha256 cellar: :any_skip_relocation, all: "a52e001d811184428761b8a46a602c4cd5df4db68f6b8d734d8318b17d7e6824"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
