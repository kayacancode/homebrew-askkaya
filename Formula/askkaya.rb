class Askkaya < Formula
  desc "AskKaya - AI-powered client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.2/askkaya-darwin-arm64"
      sha256 "2be038fcfe659f36d4c7f4a05bf709c077e0f8b121035222c8b385dd23bab1ad"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.2/askkaya-darwin-amd64"
      sha256 "6599b1cf730edb703a901b5439172be3ea4170984138a52e4f6bf73f9db3e6d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.2/askkaya-linux-arm64"
      sha256 "3abbf5193625e1ac2e523b34176fd262bfded1668d4fbeede536f657432fc945"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.2/askkaya-linux-amd64"
      sha256 "ba420706050ab0d2dab5002eea88d4c5ddba57c7ce19e0f73db34aa0f2b4a839"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "askkaya-darwin-arm64" => "askkaya"
      else
        bin.install "askkaya-darwin-amd64" => "askkaya"
      end
    else
      if Hardware::CPU.arm?
        bin.install "askkaya-linux-arm64" => "askkaya"
      else
        bin.install "askkaya-linux-amd64" => "askkaya"
      end
    end
  end

  test do
    assert_match "askkaya", shell_output("#{bin}/askkaya --help")
  end
end
