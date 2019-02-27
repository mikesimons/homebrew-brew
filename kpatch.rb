require "FileUtils"

class Kpatch< Formula
  homepage "https://github.com/mikesimons/kpatch"

  $v = "v0.2.0"
  url "https://github.com/mikesimons/kpatch/releases/download/#{$v}/kpatch-#{$v}-darwin-amd64"
  version $v
  sha256 "035a8e80d074f37b86da42d1dd07583068226d1362ead4c2634000962443834f"

  def install
    FileUtils.mv("kpatch-#{$v}-darwin-amd64", "kpatch")
    bin.install "kpatch"
  end

  test do
    system "#{bin}/kpatch", "--version"
  end
end
