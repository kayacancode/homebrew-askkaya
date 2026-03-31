class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.0/bestmate-darwin-arm64"
      sha256 "853eaaabee3543aa7bd5113c42ffc740856895d2c0d71cae68bb8279061b94eb"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.0/bestmate-darwin-amd64"
      sha256 "21ad9f39d59d3ff67134bcf9fc79cf52b65e35a70ec53add9c0da2abd0c4c5fc"
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
