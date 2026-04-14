class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-arm64"
      sha256 "505cb2374ee3a294cc612d773301cb1aba3a5707dd59b90124c79f8ca688cddc"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-amd64"
      sha256 "166d6f1289471bc4c806824822122e5aaf33de8aa9131fe3303c9bfa6e204920"
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
