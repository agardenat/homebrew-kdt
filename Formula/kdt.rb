class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.4.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.4.0/kdt-macos-universal.tar.gz"
  sha256 "c334900eb79dddf7b903f2bafe609848432aa15faf529e272810893e3228cd7a"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.4.0"
    sha256 cellar: :any_skip_relocation, all: "e2df2e8d4fac729657426eb8872ace804c5c8aee9e4ebdc3d6c0c3b78fec7ff9"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
