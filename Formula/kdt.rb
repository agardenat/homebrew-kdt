class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.1.6"
  url "https://github.com/agardenat/kdt/releases/download/v1.1.6/kdt-macos-universal.tar.gz"
  sha256 "88405b97edc95896c2814be13ebdd73de38804660d0c91e0fb87e7c90dbdd23a"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.1.6"
    sha256 cellar: :any_skip_relocation, all: "c09290ac1708aa87a767d237222a014c69f76a68f5b12810a74dc7291eb80c31"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
