require "FileUtils"

class Envelope < Formula
  homepage "https://github.com/mikesimons/envelope"

  $v = "v0.0.2"
  url "https://github.com/mikesimons/envelope/releases/download/#{$v}/envelope-#{$v}-darwin-amd64"
  version $v
  sha256 "6a2733a8c44d9e2879bbd5d91e9a10e16956c2a59e3139738d543f28b735654c"

  def install
    FileUtils.mv("envelope-#{$v}-darwin-amd64", "envelope")
    bin.install "envelope"
  end

  test do
    system "#{bin}/envelope", "--version"
  end
end
