class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.3.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.3.0/kdt-macos-universal.tar.gz"
  sha256 "1fa4c64e86da1b18517830dacb290522ba73f0046fdbc05d3bdbf3f1503c8633"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.3.0"
    sha256 cellar: :any_skip_relocation, all: "26c42cadc1856caf5d53d18d37d05f75192bef12fea083c4c79fd0d3b7c12b28"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
