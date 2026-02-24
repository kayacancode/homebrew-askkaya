class Askkaya < Formula
  desc "AskKaya - AI-powered client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.0/askkaya-darwin-arm64"
      sha256 "c23dbc4022920b3b117cd81811a34b0a7e4409bb99c9d61e143d4d4c608e58c0"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.0/askkaya-darwin-amd64"
      sha256 "49959cb1f036fed91fe0c148c45950b592e63def8f8583c8ff5376db84aea54a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.0/askkaya-linux-arm64"
      sha256 "9e56a44dbdd69a36106cd383299011defbe7d5214b8aac7c8370fe9e09c44b9d"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.0/askkaya-linux-amd64"
      sha256 "600293242dfad11b8005fa764889f88bf8967b235e09ef4f70ae8e76a7fe6a94"
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
