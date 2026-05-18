# Formula/mon-app.rb
class MonApp < Formula
  desc "Description de mon app"
  homepage "https://github.com/agardenat/kdt"
  version "1.0.0"
  url "https://github.com/agardenat/kdt/releases/download/v#{version}/kdt-macos-universal.tar.gz"
  sha256 "abc123..."

  def install
    bin.install "kdt"
  end
end