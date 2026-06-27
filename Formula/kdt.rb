class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.2.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.2.0/kdt-macos-universal.tar.gz"
  sha256 "86aac2e07cacab17bb28a77c4a1cca144ef92a2b776de61de0cfb05d2839ca5e"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.2.0"
    sha256 cellar: :any_skip_relocation, all: "8a15be3c38891a0bddd5a28fc340e1ceb28c7b3fef4bd5436551d46c271b8273"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
