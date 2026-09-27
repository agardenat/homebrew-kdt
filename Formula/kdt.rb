class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.5.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.5.0/kdt-macos-universal.tar.gz"
  sha256 "591656fe7a200eba60715a406736165377f2e58f739bf6c0e0a568867a1c3592"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.5.0"
    sha256 cellar: :any_skip_relocation, all: "ff1f9e8e3851d81d2dd04daffddadfdc71912c31947841cbba90d28b1816bb72"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
