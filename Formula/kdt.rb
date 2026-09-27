class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.4.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.4.0/kdt-macos-universal.tar.gz"
  sha256 "e3ae6add51c206f7a668e075c89786b1ff1e57fae452d5b6af5dbab7f12dae2d"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.4.0"
    sha256 cellar: :any_skip_relocation, all: "e8ee63aaf4f6a4750f3a30d4ab3ce3be3a31fd496690d470f9c70c4a7ecafd19"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
