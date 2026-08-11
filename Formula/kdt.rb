class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.16.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.16.0/kdt-macos-universal.tar.gz"
  sha256 "08b5fa1872a75e0056090d2f987df960b77f165699c73689cf5bce7f8cfbcc2f"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.16.0"
    sha256 cellar: :any_skip_relocation, all: "a303f65fc89b4b9bb5ba4dc5c30a188e978c3d3aff642e3231d245c731f5a054"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
