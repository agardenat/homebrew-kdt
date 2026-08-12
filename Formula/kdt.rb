class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.17.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.17.0/kdt-macos-universal.tar.gz"
  sha256 "b3450dca116d1ba4a6d7b42350cff24c7d7738b5a40f40933bffc00817dca2db"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.17.0"
    sha256 cellar: :any_skip_relocation, all: "a7cc9cd3bb4ffeb04bdcb506a7d353834ee1b32c6c33d08a1f7b6755702a9c8b"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
