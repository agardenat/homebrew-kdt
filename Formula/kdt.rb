class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.9.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.9.1/kdt-macos-universal.tar.gz"
  sha256 "3f8ad5f44a7e5e3c35437927fbeeec78c7e4a1a75b89daa544abd9dedd34d714"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.9.1"
    sha256 cellar: :any_skip_relocation, all: "1892169701577cf48542e1ff56e9d6ca7c1aec8f76c8134f580532fe7b6d3c25"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
