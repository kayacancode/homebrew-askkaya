class Askkaya < Formula
  desc "AI-powered client support CLI for OpenClaw setups"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.8/askkaya-darwin-arm64"
      sha256 "4dac5fb9de506ab2347f4d0780e6c725c075db30f44c0542d238407bc0e45ef3"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.8/askkaya-darwin-amd64"
      sha256 "e14db93e03c18786cc17001ca6dc5e4c66ad7eb6585e4c8648bc3f3cccd369d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.8/askkaya-linux-arm64"
      sha256 "bbcd2bcb90b6bf824b2eded2fce7521b443263bc7bd8745850af89251257b228"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.8/askkaya-linux-amd64"
      sha256 "3649cac99956008a87a70e1e5bd6a506d9475abef55156f70bdd506a6cdffef8"
    end
  end

  def install
    binary_name = "askkaya-darwin-arm64"
    if OS.mac? && Hardware::CPU.intel?
      binary_name = "askkaya-darwin-amd64"
    elsif OS.linux? && Hardware::CPU.arm?
      binary_name = "askkaya-linux-arm64"
    elsif OS.linux?
      binary_name = "askkaya-linux-amd64"
    end
    
    bin.install Dir["*"].first => "askkaya"
  end

  test do
    system "#{bin}/askkaya", "--version"
  end
end
