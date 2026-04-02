class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.0/bestmate-darwin-arm64"
      sha256 "9dff7fbf4f1e46700bea3331fe69d10794da9d6bb28266638eaab581579ddaa0"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.0/bestmate-darwin-amd64"
      sha256 "3879c27bda85362eb05b3caf682cfa8a2399b901876ebf097191b00dcdbdead8"
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
