class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "2.10.0"
  url "https://github.com/agardenat/kdt/releases/download/v2.10.0/kdt-macos-universal.tar.gz"
  sha256 "84d61c482a89234ed8f980474d6f5805a4466ce578bea8af0559981e66adffc3"

  depends_on :macos

  bottle do
    root_url "https://github.com/agardenat/kdt/releases/download/v2.10.0"
    sha256 cellar: :any_skip_relocation, all: "9b6661bb5e1391711df9472bb79d928056e5bba8fc240c760341fdea8b9dff80"
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
