class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-arm64"
      sha256 "3286d40ca6f63180e24a80e89e7e2ce461b8fd84d14414fe8e476794e6e6e533"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-amd64"
      sha256 "1e9279a24fe8393030bd0b9cc93dd96362e48f125c634e210308d3f28c872ec7"
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
