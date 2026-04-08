class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.10.0/bestmate-darwin-arm64"
      sha256 "cc4bcd05714a5dfd91b1f771f755b33af9f5a7dc62eb7a02d634b8adc1327265"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.10.0/bestmate-darwin-amd64"
      sha256 "bcbf2786a4445f1a063b34ed1fc24d26c20d14cb3c9a3dc490147ab3d3b2f0c9"
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
