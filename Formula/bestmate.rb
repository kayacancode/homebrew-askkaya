class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.5.0/bestmate-darwin-arm64"
      sha256 "6d8339c35ffd71efe3241be853d66cbbc87afe15bfbeb0c4dc194c6d717a2e44"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.5.0/bestmate-darwin-amd64"
      sha256 "83bc375124408f8bceeaa57e5a2ac78e48427660b41a79f61a9e903ce289a593"
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
