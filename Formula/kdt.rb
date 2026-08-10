class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.13.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.13.0/kdt-macos-universal.tar.gz"
  sha256 "460e2f8ec606833aee03b14b1265417c5fe1318e8044c9087d63dd22ca29a2cd"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.13.0"
    sha256 cellar: :any_skip_relocation, all: "434f1f36100ecf94f67efff09122dfd6618343f8a1eff5306fbe084fb0710b67"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
