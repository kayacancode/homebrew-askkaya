class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.3/bestmate-darwin-arm64"
      sha256 "9acd0b73675f16abd2c02813ea7695d9fd1be315269a88646a35bbe31ef277cf"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.3/bestmate-darwin-amd64"
      sha256 "fb9d956d352256425a27a09b8b3e00a067eb0628522697a6c8b49625bb812985"
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
