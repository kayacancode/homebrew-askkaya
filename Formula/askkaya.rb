class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.4/askkaya-darwin-arm64"
      sha256 "7bc3c146b72ad703e8e782a6ac1414445abc928dfb22ec0cce43ed7614c5f007"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.4/askkaya-darwin-amd64"
      sha256 "0884112c855b403918abe1f48cd91e3106371a69ebed3351b47e728d530e72e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.4/askkaya-linux-arm64"
      sha256 "40220e55bee6d95d1c6daa905af2b2692ee1684ba594ec33f8a341b89c5a0184"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.4/askkaya-linux-amd64"
      sha256 "98686cb4fdc32a3be1b4dc833ae03e6b03dcbfd53f15c4b207a3c61be761ec56"
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
