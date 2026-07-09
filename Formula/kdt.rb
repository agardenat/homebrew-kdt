class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.3.2"
  url "https://github.com/agardenat/kdt/releases/download/v1.3.2/kdt-macos-universal.tar.gz"
  sha256 "4ffe81e45fd053ffdb9cec19eda11c244309bda2ba4733557c9bd989c2c975af"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.3.2"
    sha256 cellar: :any_skip_relocation, all: "8864c24797f777359640146f587a505d5656a740d010ffc3be9d61989181667a"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
