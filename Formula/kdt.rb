# Formula/mon-app.rb
class MonApp < Formula
  desc "Description de mon app"
  homepage "https://github.com/agardenat/kdt"
  version "1.1.3"
  url "https://github.com/agardenat/kdt/releases/download/v1.1.3/kdt-macos-universal.tar.gz"
  sha256 "6b9ffb7b2f8959004b9d31f443e9701ef590013f3d45e1c07c9ac3f5a51c32c2"

  def install
    bin.install "kdt"
  end
end