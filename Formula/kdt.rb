class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.8.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.8.1/kdt-macos-universal.tar.gz"
  sha256 "7f9b4cfd9fb6aa97dcca495074db3d82461741b1355c9b1e6ad293d6763b699b"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.8.1"
    sha256 cellar: :any_skip_relocation, all: "01d38a209e82e3d542b9100c9ad1e425498c5c12418042a38968e26e9f28feef"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
