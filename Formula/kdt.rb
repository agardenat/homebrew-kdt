class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.8.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.8.0/kdt-macos-universal.tar.gz"
  sha256 "56a66c87c108ccd195537e26d1c4704adcc2affb86dae0b3ffb3fd618e048be0"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.8.0"
    sha256 cellar: :any_skip_relocation, all: "385a4e829cb4846b8924aa092dca351b295980efd6282cda0bfd7f26b0728a32"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
