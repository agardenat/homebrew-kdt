class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.3.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.3.1/kdt-macos-universal.tar.gz"
  sha256 "79ef09b91cb8e7694d483e3a2f028828eb20c0c4eb3c48f18c74abc62c061155"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.3.1"
    sha256 cellar: :any_skip_relocation, all: "8b8d3b4b16882fe12379a499e49d6d4570052171e33963c45085a100be4ee59f"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
