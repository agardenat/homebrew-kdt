class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.24.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.24.0/kdt-macos-universal.tar.gz"
  sha256 "ce74f4c14eee558a6832d589000f736d73d880f5f8ff806968ab18791e204b9b"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.24.0"
    sha256 cellar: :any_skip_relocation, all: "d3ae9d7deb67f9b886aa44ebc2a9020c69a74d636006d5c2b1819961b27f5471"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
