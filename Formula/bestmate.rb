class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.2/bestmate-darwin-arm64"
      sha256 "5e53243ad8ddc515521f6fdf056ae14b2756098b9c54d7ae97c1fb7b1b1026e1"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.6.2/bestmate-darwin-amd64"
      sha256 "364281b46eda14a4597c6bbf7e55f4e00c794992cbe7bf254f126337ddd33493"
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
