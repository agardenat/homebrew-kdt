class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.3"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.3/kdt-macos-universal.tar.gz"
  sha256 "e57305d138efa1883c747418ac43fd66ca8b817299092c0cd3a96d06e281a12c"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.3"
    sha256 cellar: :any_skip_relocation, all: "8e2a253c053c505c790c4f330d1fc4bb128275f3f8a88ecdac9e8e57ea0afef0"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
