class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.7.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.7.0/kdt-macos-universal.tar.gz"
  sha256 "d3b909b984c52ac0e1d850c09abf4e838b84bdaa707ebafa7400b701038527d7"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.7.0"
    sha256 cellar: :any_skip_relocation, all: "eda75be4c0a0f55fb06cdb18cd7594b64537010f0e8ecb49cdad751642ecff47"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
