class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.7/askkaya-darwin-arm64"
      sha256 "30d6e41c2ed03858d69084821b45b248915ae3bf58a8ed7d712e3414bf40e557"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.7/askkaya-darwin-amd64"
      sha256 "cf6c30033ccfe0d8a108328dd2bd17a853fdbbfd1379ae4f6111494d98650c15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.7/askkaya-linux-arm64"
      sha256 "bb526d1773ebcc0be8f78019d53dc84e47b6d3be36a1b2f63d5bcbcc9c7b05e6"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.7/askkaya-linux-amd64"
      sha256 "5694ab57337c0d75aa6742cd6e04c47824ddce26a92b490dcb0357c66befc6b7"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "askkaya-darwin-arm64" => "askkaya"
      else
        bin.install "askkaya-darwin-amd64" => "askkaya"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "askkaya-linux-arm64" => "askkaya"
      else
        bin.install "askkaya-linux-amd64" => "askkaya"
      end
    end
  end

  test do
    system "#{bin}/askkaya", "--version"
  end
end
