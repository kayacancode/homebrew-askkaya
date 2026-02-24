class Askkaya < Formula
  desc "AskKaya - AI-powered client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.4/askkaya-darwin-arm64"
      sha256 "480eeefd8e46e0fe8aa803962692aa8cd3dbcdb935d3bcb3b77e60a1f57f773f"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.4/askkaya-darwin-amd64"
      sha256 "e81748e04548dfc3bbf82c54f89209b4052165d68f77dae4bd8aeda2d6a34b53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.4/askkaya-linux-arm64"
      sha256 "e47705c9395d7cfda2a6f4603a1e7e9217464caae2e5b3d16d9e00c1f66a6196"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.4/askkaya-linux-amd64"
      sha256 "5a6d7901d4fd72e1167e5d302f708bf11f0fa309b5dd013872fbcc4212e1bfeb"
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
