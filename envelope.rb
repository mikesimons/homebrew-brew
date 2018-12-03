require "FileUtils"

class Envelope < Formula
  homepage "https://github.com/mikesimons/envelope"

  $v = "v0.1.0"
  url "https://github.com/mikesimons/envelope/releases/download/#{$v}/envelope-#{$v}-darwin-amd64"
  version $v
  sha256 "235317c7a0b63fc727ad819d12477a8075a8a1f13d799d34f87c332a0041448c"

  def install
    FileUtils.mv("envelope-#{$v}-darwin-amd64", "envelope")
    bin.install "envelope"
  end

  test do
    system "#{bin}/envelope", "--version"
  end
end
