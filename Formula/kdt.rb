class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.1.5"
  url "https://github.com/agardenat/kdt/releases/download/v1.1.5/kdt-macos-universal.tar.gz"
  sha256 "fb15b2558c945907905b4b74bbe021d0614384acc0a5fad521f8dfe66d45645f"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.1.5"
    sha256 cellar: :any_skip_relocation, all: "9d31f72b9cf60a1d62a2ad5e854a8b6ed11c83b08ab385245e4bc662976808a2"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
