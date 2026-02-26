class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.7/askkaya-darwin-arm64"
      sha256 "6a834e6226ff16d41b76137caf6b786d94d0c214e546f05ac496d65cad684d20"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.7/askkaya-darwin-amd64"
      sha256 "5aa000123c7a38bb3c40d495cfbc686ceab9beb47d9ea3b8a2ee32fc171519cb"
    end
  end

  def install
    binary_name = "askkaya-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}"
    bin.install Dir["askkaya-*"].first => "askkaya"
  end

  test do
    assert_match "askkaya version", shell_output("#{bin}/askkaya --version")
  end
end

