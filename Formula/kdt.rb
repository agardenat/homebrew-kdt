class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.12.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.12.1/kdt-macos-universal.tar.gz"
  sha256 "133efd2d5a8ecb470d80476694c96bc624b90f8405ba8ced42a77a949b7c42e9"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.12.1"
    sha256 cellar: :any_skip_relocation, all: "ccbd598e127ee4a819a2fda9892f0ff5fc326aadeb58c8e0e01458ff3d89170d"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
