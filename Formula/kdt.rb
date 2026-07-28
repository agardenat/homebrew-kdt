class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.9.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.9.0/kdt-macos-universal.tar.gz"
  sha256 "f05c64286da9e4a41119c6d24e1ad007521fb207a792e4a022a402701dc75fdc"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.9.0"
    sha256 cellar: :any_skip_relocation, all: "43c8d7f4ee5ae4da0d80123991941cf75aabcfa3ef9c504904ad9f985861a1b5"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
