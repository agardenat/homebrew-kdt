class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.15.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.15.0/kdt-macos-universal.tar.gz"
  sha256 "454dc94d6cc751771c066f0356ae4099eef8833f27812623fb416e1548f0fd43"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.15.0"
    sha256 cellar: :any_skip_relocation, all: "f9115838676628089ba6d3f66c0b477d8a4e7a9530de4f0e6ff453c41dfb5b65"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
