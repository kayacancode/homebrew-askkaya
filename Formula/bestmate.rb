class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.2/bestmate-darwin-arm64"
      sha256 "cfe29509408969f584a26644b3caebd742fcbd6a9ca9177795d1e5457b9995f3"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.2/bestmate-darwin-amd64"
      sha256 "6a7d1bf943e9968bb8ce22687847cc0ab9a1b52e06181d75156a6d117cde2d66"
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
