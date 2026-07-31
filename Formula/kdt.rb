class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.10.1"
  url "https://github.com/agardenat/kdt/releases/download/v1.10.1/kdt-macos-universal.tar.gz"
  sha256 "175c7fbca51dd9b96d89654c322d3d6ee8097ec48292740c863f8977db16adfb"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v1.10.1"
    sha256 cellar: :any_skip_relocation, all: "217752a1c7eb3d18bb969aefa0a087aa316d86c8f71dcc834f5bd6efd15ac2f4"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
