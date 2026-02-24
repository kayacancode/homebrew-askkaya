class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.6/askkaya-darwin-arm64"
      sha256 "efa9554b2a18b0af306edfbeba89eb49ed70aaf5f27de39e87d4cd6869d5dd67"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.6/askkaya-darwin-amd64"
      sha256 "b2d2c882d9add7865811029079044069dfeecb0cc35705605fb98c9bb97b5cef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.6/askkaya-linux-arm64"
      sha256 "b2e1159f9732fabe37c27eee8a8078a9cf0e2ab4589eb7258e8da47ad5a72109"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.6/askkaya-linux-amd64"
      sha256 "983de9b015ea901775ec31b3b07203208cc3ec4d052cda0549538922c271d4ab"
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
