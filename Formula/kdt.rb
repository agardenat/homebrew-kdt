class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.0.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.0.0/kdt-macos-universal.tar.gz"
  sha256 "6562e958a398b5699caa357bdf01ca7b042c15384db6cc1cc08ff8e8c6774bf9"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.0.0"
    sha256 cellar: :any_skip_relocation, all: "8f867c7b8ce842a8f409c45edf002f608eca06800d799d374a2f611b62435d4b"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
