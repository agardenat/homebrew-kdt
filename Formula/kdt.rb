class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.20.7"
  url "https://github.com/agardenat/kdt/releases/download/v1.20.7/kdt-macos-universal.tar.gz"
  sha256 "9cdc0a5345a7f6efad68709bc318f8377c35208e1c645331ac1b9558d7fb190c"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.20.7"
    sha256 cellar: :any_skip_relocation, all: "8e35636266dc4212dbefd955c8d6258411f14290721b93a3b27181874f8d8051"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
