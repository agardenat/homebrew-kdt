class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.6.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.6.0/kdt-macos-universal.tar.gz"
  sha256 "3e95c29170573752943787f42c5e61dbcb1f2160b3f419faed74b5302e49cb0c"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.6.0"
    sha256 cellar: :any_skip_relocation, all: "fd10f97f8f1886b64d76fb677f48fbb8c74ded57ab8ed727777ba2b3d84131cd"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
