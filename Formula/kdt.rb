class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.9.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.9.0/kdt-macos-universal.tar.gz"
  sha256 "a37d054851701ab0bf450d8b21cf1d577d2a772fe5b39acdcb0814a7277031b8"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.9.0"
    sha256 cellar: :any_skip_relocation, all: "53aae00293ac5ffa40e98b99c6b362d9aa292806ccada83305cf3e19ef52a37b"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
