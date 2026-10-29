class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.11.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.11.0/kdt-macos-universal.tar.gz"
  sha256 "3ece7948a6a14f87dd1f419369a891d5e1ecba7f714ab2bdc58c3295af8ef625"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.11.0"
    sha256 cellar: :any_skip_relocation, all: "0cb786db7e32f563ae04cc9d4d23621da025e6aaa771723685ec43adf3b31bae"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
