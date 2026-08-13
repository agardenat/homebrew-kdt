class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.17.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.17.1/kdt-macos-universal.tar.gz"
  sha256 "7ad47fdf971cba60072d744dd7b40b1a95c203a5147e09af5cd76c2000965ee6"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.17.1"
    sha256 cellar: :any_skip_relocation, all: "2455cf1508f7f49a97a602abbcdb71c0656880d81c1446812e566ad17c6940c7"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
