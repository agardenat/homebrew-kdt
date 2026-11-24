class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.13.1"
  url "https://github.com/agardenat/kdt/releases/download/v2.13.1/kdt-macos-universal.tar.gz"
  sha256 "55147bc358da76d2aee311baf0dd84ed8da3f20e104c9a8f48fa32b88193e01b"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.13.1"
    sha256 cellar: :any_skip_relocation, all: "0ead63d9f6ed70129847633e301f5e5b8d73b35cc7c7bda0819878f9155d85a0"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
