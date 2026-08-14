class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.0/kdt-macos-universal.tar.gz"
  sha256 "2070a410e7e7aef04ad8e8b96e950b58280252351b280fd3bc36f1cec1b96136"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.0"
    sha256 cellar: :any_skip_relocation, all: "929c4b277a76b19050b6d4b176235a742cf5e40ebca8647e3685c3417c024254"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
