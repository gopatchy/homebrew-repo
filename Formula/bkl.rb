class Bkl < Formula
  @@tag = "v1.0.47"
  sha256 "f6f6b08d8aad332aaa9b09294301ce5f2f8541f1324c14253f408bed13885dcb"

  desc "Evaluates bkl configuration layer files"
  homepage "https://bkl.gopatchy.io"
  url "https://github.com/gopatchy/bkl/archive/refs/tags/#{@@tag}.tar.gz"
  license "Apache-2.0"
  head "https://github.com/gopatchy/bkl.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGOENABLED"] = "0"
    system "go", "build", "-tags=bkl-#{@@tag},bkl-src-brew", "-trimpath", "-ldflags=-extldflags=-static", "-o", "#{bin}/", "./..."
  end
end
