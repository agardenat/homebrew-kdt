class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.4"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.4/kdt-macos-universal.tar.gz"
  sha256 "9d7b415bf368b4b8209b303eeca7d6ffa86a0d1599d450585646f6725f3a9c1d"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.4"
    sha256 cellar: :any_skip_relocation, all: "0c107e95e5cc28f708864e4539c229a27b66060a349c1c2a42eff040363543a7"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
