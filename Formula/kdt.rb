class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.1/kdt-macos-universal.tar.gz"
  sha256 "416f3b9fed71569a1032827f66255f5174ad8ab183e7cbcc6f84e161da737e69"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.1"
    sha256 cellar: :any_skip_relocation, all: "06ab2e85496f54452a3182d75bec4021fdb7a6ec69a078dbaa4e6579df8d1140"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
