class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.6.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.6.0/kdt-macos-universal.tar.gz"
  sha256 "7a2f4ff370f9bafa87ab59eb67083002d6a2bc06494644b656859dbce7683255"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.6.0"
    sha256 cellar: :any_skip_relocation, all: "bc0b3257b7fbaab4e1e82cee091a8579d75528ed567f727d707e4c82fb74e976"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
