class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.10.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.10.0/kdt-macos-universal.tar.gz"
  sha256 "20a466784778cb53b68f126a73037498402edfea21c362bd17d67e8debe3a00b"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.10.0"
    sha256 cellar: :any_skip_relocation, all: "96a941aa5237dd9ce66c8b30952d44becf2564fb71546fa3072e61dd64397850"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
