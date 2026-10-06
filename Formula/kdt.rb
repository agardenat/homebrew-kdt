class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.8.1"
  url "https://github.com/agardenat/kdt/releases/download/v2.8.1/kdt-macos-universal.tar.gz"
  sha256 "a22f707efb35d99bbf9d4d55b6744dec8d4383cf12e5a799916c9cbd4cd19b8e"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.8.1"
    sha256 cellar: :any_skip_relocation, all: "63a7dcb02707c5eabe57d9ea9193ff9cb3be8afe7ca5e42d8671f084b79cf383"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
