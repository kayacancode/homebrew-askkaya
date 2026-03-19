class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.4.0/bestmate-darwin-arm64"
      sha256 "401efed2d56bfc0afa7d5296d36fe3e08c2ff66f155c4afa69933f3960ce4515"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.4.0/bestmate-darwin-amd64"
      sha256 "41f4b74544059c855f915ed514113bc34d6c1ebf93da1c31ed624979f895fab4"
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
