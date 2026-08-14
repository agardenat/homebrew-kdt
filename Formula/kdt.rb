class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.2"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.2/kdt-macos-universal.tar.gz"
  sha256 "02de7218ae667f198492002fe8e0fc446843f77d3dea877534b8801746867288"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.2"
    sha256 cellar: :any_skip_relocation, all: "3ed13361df793c47d925cdc55c30c55c99ae2e933fdaccc44dd8dd14cf5ef387"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
