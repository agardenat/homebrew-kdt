class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.8.2"
  url "https://github.com/agardenat/kdt/releases/download/v1.8.2/kdt-macos-universal.tar.gz"
  sha256 "f62cd6a7a4ba9c99b4967f31f76b87a29947cbf0c2a9466ea9e89264e3c68a52"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.8.2"
    sha256 cellar: :any_skip_relocation, all: "a0bef9d5cb378fdfa9e42b19615c3cadd62b8183dd28272d143857255d1374a8"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
