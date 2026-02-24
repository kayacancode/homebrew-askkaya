class Askkaya < Formula
  desc "AskKaya - AI-powered client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.1/askkaya-darwin-arm64"
      sha256 "f85a33b01d853b968e28ee813538c1b020fba40036567e1e06f31d84a93fcfbf"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.1/askkaya-darwin-amd64"
      sha256 "3ca4fdd6d5282aef20ef20613f28cb17022a51df27abfde09aded9352e0892dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.1/askkaya-linux-arm64"
      sha256 "ddfd6c23dca56cb9d19b13864ef56e9af6254f9e87ba4057a005fcae3d7744bd"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.1/askkaya-linux-amd64"
      sha256 "812e60dd8a26c434ccee3a15245da81fef1ba4789f42caac365f25a51c3d8d30"
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
