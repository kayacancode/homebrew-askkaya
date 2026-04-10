class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.11.0/bestmate-darwin-arm64"
      sha256 "9f0a0924f5a95fe0430046c036f8fa79d5b72829719695ab222f995985c9929b"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.11.0/bestmate-darwin-amd64"
      sha256 "599305e464f35452820b2a6d66e31dc85d1dd7ce2064d937aef2bebe2f2a5328"
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
