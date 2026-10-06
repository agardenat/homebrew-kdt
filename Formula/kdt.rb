class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.8.2"
  url "https://github.com/agardenat/kdt/releases/download/v2.8.2/kdt-macos-universal.tar.gz"
  sha256 "acd21c6c215e5f3a8d289947496b1ae804f50eca8b110381f513551c33bf52cd"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.8.2"
    sha256 cellar: :any_skip_relocation, all: "b9424b35027d71770456c99214750209e064acc8dc1bfc91a7649c39b37888db"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
