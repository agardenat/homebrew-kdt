class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.26.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.26.0/kdt-macos-universal.tar.gz"
  sha256 "30df4acf2a2f24337059086dd132a67d0b135c451a24337cc659fe20238892a4"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.26.0"
    sha256 cellar: :any_skip_relocation, all: "b7d05cd1cdae35214ceb7ab0c7256be1eb59aedb43cc99ad32acb407d91aef67"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
