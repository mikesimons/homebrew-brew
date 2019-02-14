require "FileUtils"

class Kpatch< Formula
  homepage "https://github.com/mikesimons/kpatch"

  $v = "v0.1.0"
  url "https://github.com/mikesimons/kpatch/releases/download/#{$v}/kpatch-#{$v}-darwin-amd64"
  version $v
  sha256 "715f2f6a58734b1f04f5d1cf3fa65060b1ff2884fa27373a1ba8e3cd40ba47b0"

  def install
    FileUtils.mv("kpatch-#{$v}-darwin-amd64", "kpatch")
    bin.install "kpatch"
  end

  test do
    system "#{bin}/kpatch", "--version"
  end
end
