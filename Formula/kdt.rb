class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.14.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.14.0/kdt-macos-universal.tar.gz"
  sha256 "110ff5c53e99c61b4308b266d201431fc269a65cd6ea70d749acb99e087e9b11"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.14.0"
    sha256 cellar: :any_skip_relocation, all: "c035ee70f25900305eacc2b6d54f1c9c1f6cc98502deeacbb42be0dd50d144b1"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
