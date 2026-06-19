# Formula/mon-app.rb
class MonApp < Formula
  desc "Description de mon app"
  homepage "https://github.com/agardenat/kdt"
  version "1.0.2"
  url "https://github.com/agardenat/kdt/releases/download/v1.0.2/kdt-macos-universal.tar.gz"
  sha256 "53e90bc4be397ab6ad127a9540910461db88d5f4c16e0d871fe3e1228bc0f193"

  def install
    bin.install "kdt"
  end
end