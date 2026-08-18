class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.6"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.6/kdt-macos-universal.tar.gz"
  sha256 "eef118db9f2d3cafb1811c48248f0920099aa04bd185993a830828c5ff7dba1a"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.6"
    sha256 cellar: :any_skip_relocation, all: "176c72e370f6f7383b0bc07471a2b42266e0b3352e13969be1252b172f34cc49"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
