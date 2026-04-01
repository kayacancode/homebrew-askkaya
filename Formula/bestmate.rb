class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.3/bestmate-darwin-arm64"
      sha256 "2f2b339e8840a8493b63f8f61b5c94952ef1408b5ca67e798af3497e06817412"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.3/bestmate-darwin-amd64"
      sha256 "4cfc82ea6efea6e58a365f6eea251558a4f86af43e264d29d40912bc3489d34a"
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
