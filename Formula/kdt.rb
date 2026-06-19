# Formula/mon-app.rb
class MonApp < Formula
  desc "Description de mon app"
  homepage "https://github.com/agardenat/kdt"
  version "1.0.3"
  url "https://github.com/agardenat/kdt/releases/download/v1.0.3/kdt-macos-universal.tar.gz"
  sha256 "c528efdbae976a5bf37d04ae9fce1f36dea38e06c23df52d8083bbd25b45182c"

  def install
    bin.install "kdt"
  end
end