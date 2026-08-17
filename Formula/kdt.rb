class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.5"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.5/kdt-macos-universal.tar.gz"
  sha256 "34cf7efc81f2a555fc6634054769d534cebd1f756ce41ebbcf58919d92a0ff9b"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.5"
    sha256 cellar: :any_skip_relocation, all: "dcae4965fc9285fb793189bf11c92c844b89af6806daa8ea17bc89b6ed912175"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
