class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.22.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.22.0/kdt-macos-universal.tar.gz"
  sha256 "60cca6f7397d786fb0869d57ae80e0e6a696c00fd7b6bc279db25aa2dc89e0d1"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.22.0"
    sha256 cellar: :any_skip_relocation, all: "2756cf5dc1fde5a54f9e4626f6c4c884e0a666f895f1ec6d54845e2a29548cdd"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
