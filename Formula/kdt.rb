# Formula/mon-app.rb
class MonApp < Formula
  desc "Description de mon app"
  homepage "https://github.com/agardenat/kdt"
  version "1.1.0"
  url "https://github.com/agardenat/kdt/releases/download/v1.1.0/kdt-macos-universal.tar.gz"
  sha256 "eff677f8dc5d6a7a61215710003668937fba73c067293867b41654025c6bc7bb"

  def install
    bin.install "kdt"
  end
end