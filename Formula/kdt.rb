class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.22.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.22.1/kdt-macos-universal.tar.gz"
  sha256 "974e0119414802c7dddf2ceab26ebd5728bc4008eaf3267bade882890a06aadf"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.22.1"
    sha256 cellar: :any_skip_relocation, all: "11f17064d3723dfc1d07fea42eb511df758d3610405ab17645da097f3a52c53d"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
