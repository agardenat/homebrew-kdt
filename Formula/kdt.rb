class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.3.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.3.0/kdt-macos-universal.tar.gz"
  sha256 "e05496db42cb26d731029838655eeb47ad4b3174fc0ab975c5b3750347270423"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.3.0"
    sha256 cellar: :any_skip_relocation, all: "1812158d41268329eefb2b825cb80f8d1f8de31725a36b21113416df5e01a8ba"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
