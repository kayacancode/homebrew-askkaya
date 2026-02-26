class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.5/askkaya-darwin-arm64"
      sha256 "752bf9021c45ec6807fa44dc37de947aeafc0738ea2fb908d6c70dac9407e151"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.5/askkaya-darwin-amd64"
      sha256 "0edffc3aba52ebe6e9b0acd141ca31fab63485a76dcd632bec4abce17804092a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.5/askkaya-linux-arm64"
      sha256 "6dd941834a3190f7ba9e56d4881cfb02ce2c06cf558be323ab19681bf71ad691"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.5/askkaya-linux-amd64"
      sha256 "6c3c9d6b1ef634744c349106e30f11d93ff75c0df79a05f01f8e888325be877e"
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
