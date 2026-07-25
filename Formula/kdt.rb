class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.5.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.5.0/kdt-macos-universal.tar.gz"
  sha256 "5782985984087748978f6be9b18ba9043eb81dc286f87d42c8c2e495851616e5"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.5.0"
    sha256 cellar: :any_skip_relocation, all: "87f75d170179300f9e002951524bf6697f746ce3a3ed92db6fed19fffdf35e7d"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
