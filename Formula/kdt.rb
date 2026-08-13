class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.19.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.19.1/kdt-macos-universal.tar.gz"
  sha256 "851db0d7b176ebd296e82f42c08daae95e7180420ab9547e84a6498c633d69d7"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.19.1"
    sha256 cellar: :any_skip_relocation, all: "dc4a68fab7185c6c395a7468f151c3376b393c892235a1ce690b95d4a3447cdd"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
