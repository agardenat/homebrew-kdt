class Kdt < Formula
  desc "Kubernetes diagnostics, events and logs in a terminal UI"
  homepage "https://github.com/agardenat/kdt"
  version "1.1.4"

  on_macos do
    url "https://github.com/agardenat/kdt/releases/download/v1.1.4/kdt-macos-universal.tar.gz"
    sha256 "ec5ecf5a78d1c12de0d49abb23999bfa262655ae9bf01d6fc982042f5c388450"
  end

  on_linux do
    on_intel do
      url "https://github.com/agardenat/kdt/releases/download/v1.1.4/kdt-linux-x86_64.tar.gz"
      sha256 "999c544be773929e5e97298f96d10e93188880c40735701fb8f78e18acfd9d15"
    end
  end

  def install
    bin.install "kdt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kdt --version")
  end
end
