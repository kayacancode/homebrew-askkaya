class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.10.1/bestmate-darwin-arm64"
      sha256 "27c3b9ade423d9033dbc94caa66b02fdc8a83adacb3fd2003411fd721601be83"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.10.1/bestmate-darwin-amd64"
      sha256 "30c619fe933ef8459d32c006ef23305aba4b0f59d3c5365857444ba88ee942e2"
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
