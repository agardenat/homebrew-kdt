class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.21.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.21.0/kdt-macos-universal.tar.gz"
  sha256 "1e383cb6d135ee884edb7719997455a58adf0626ca457b91b1aa8cf7f3fa9d77"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.21.0"
    sha256 cellar: :any_skip_relocation, all: "9aca073ed9daa389cb01685b0994a711a2f81a9396cca14f0199d1f4c0abe9d6"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
