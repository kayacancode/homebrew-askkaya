class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.5/askkaya-darwin-arm64"
      sha256 "0091cefee2aed2573c1a6cb70fdd5d8bdf2197115b2d8725d65159ba11ac9691"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.5/askkaya-darwin-amd64"
      sha256 "9fc768feae46e1d94ebd98dac07116b61dbba38487231258c7c025b0ac2240c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.5/askkaya-linux-arm64"
      sha256 "9c1b7e56bf2db1fe7940c986e01e74a68a2e60d79b682164703906ea775cc3bc"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.5/askkaya-linux-amd64"
      sha256 "2ee05dc773dcadd7e853454b4d508e43efc57cd0d83aabc9128eea0dcdb8b471"
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
