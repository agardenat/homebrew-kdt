class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.10.1"
  url "https://github.com/agardenat/kdt/releases/download/v2.10.1/kdt-macos-universal.tar.gz"
  sha256 "ea26ae23c36f3ec52f5f01eaa13ff54cca89d543beb5716a21395a9d63fbcc4c"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.10.1"
    sha256 cellar: :any_skip_relocation, all: "397d8bb44bef3f374599d68c4e4a32d35aed9dc6f76656cfd76d12fd32d87732"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
