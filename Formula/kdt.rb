class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.25.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.25.0/kdt-macos-universal.tar.gz"
  sha256 "be38a2d137fd3e71df32f8763a6c3c3f5a3758ff76d27177985f2954d1587bd8"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.25.0"
    sha256 cellar: :any_skip_relocation, all: "d7913b6c5e095aaf18bf0725cdae5211a03a8a34af147513f7e383e006c5d84a"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
