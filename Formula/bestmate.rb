class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-arm64"
      sha256 "2d0fc7e09a10a142d07a3e1ddf356507a916aedd12a2700d551be84e0d6aa980"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-amd64"
      sha256 "fa82ffd4855f91aa50534732f88d0e54592c29625825063fed0d0aa096259581"
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
