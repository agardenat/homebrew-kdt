# Formula/mon-app.rb
class MonApp < Formula
  desc "Description de mon app"
  homepage "https://github.com/agardenat/kdt"
  version "1.1.2"
  url "https://github.com/agardenat/kdt/releases/download/v1.1.2/kdt-macos-universal.tar.gz"
  sha256 "47c5663d19775196ebb0682409ce15fc40180d018b1f4d771374a4fb5490acd8"

  def install
    bin.install "kdt"
  end
end