class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.3/bestmate-darwin-arm64"
      sha256 "69976939ebb8675b2f1efed17cf8280a3b2197b5872596618326f32b3cfe03c0"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.3/bestmate-darwin-amd64"
      sha256 "6cf1d708702b0e42b80e77b7897e80826e2e4b7f5814bc6eea746c244fa8bee5"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "bestmate-darwin-arm64" => "bestmate"
      else
        bin.install "bestmate-darwin-amd64" => "bestmate"
      end
    end
  end

  test do
    system "#{bin}/bestmate", "--version"
  end
end
