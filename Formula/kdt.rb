class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.13.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.13.0/kdt-macos-universal.tar.gz"
  sha256 "aeaa5ca7b92ceb08c80b1ee7983a7c08ab5f9da7abdd505006f3d0b0a31566fd"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.13.0"
    sha256 cellar: :any_skip_relocation, all: "99682cb31b878f6e1de655b8e55d95fb0fc3f36983ebf961cda4364e91d2297b"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
