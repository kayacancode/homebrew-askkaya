class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.0/bestmate-darwin-arm64"
      sha256 "1512245dfc9c56f7e2612b9074353125623c8c63a1d280f824ee70f4cc99c637"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.0/bestmate-darwin-arm64"
      sha256 "1512245dfc9c56f7e2612b9074353125623c8c63a1d280f824ee70f4cc99c637"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "bestmate-darwin-arm64" => "bestmate"
      else
        bin.install "bestmate-darwin-arm64" => "bestmate"
      end
    end
  end

  test do
    system "#{bin}/bestmate", "--version"
  end
end
