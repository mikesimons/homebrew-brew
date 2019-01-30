require "FileUtils"

class Envelope < Formula
  homepage "https://github.com/mikesimons/envelope"

  $v = "v0.2.0"
  url "https://github.com/mikesimons/envelope/releases/download/#{$v}/envelope-#{$v}-darwin-amd64"
  version $v
  sha256 "33617868cf59aa1081c2520b210bc2eed611eaeec65850bc25e04dfec02faaa6"

  def install
    FileUtils.mv("envelope-#{$v}-darwin-amd64", "envelope")
    bin.install "envelope"
  end

  test do
    system "#{bin}/envelope", "--version"
  end
end
