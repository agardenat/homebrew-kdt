class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.0.2"
  url "https://github.com/agardenat/kdt/releases/download/v2.0.2/kdt-macos-universal.tar.gz"
  sha256 "2a5f2e98b1f867dfb6ae33098cebf3b67a38a0b33e4e401ccba5227ba44c9adb"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.0.2"
    sha256 cellar: :any_skip_relocation, all: "21cccebbf592dc66f82d3bfc573f291fb75017134567cace1118a9793d9d2453"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
