class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.8.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.8.0/kdt-macos-universal.tar.gz"
  sha256 "75f45e3c14e148e382e15e3cabe7a868afb6ea61005613398a64abd723e66223"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.8.0"
    sha256 cellar: :any_skip_relocation, all: "ceb1ea49a476b2fe4c40b4833183d0358b28f503393a41b05ec075f15f1f6971"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
