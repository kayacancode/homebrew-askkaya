class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.6/askkaya-darwin-arm64"
      sha256 "a73c5d111ebfe20cd387ff7c9704b5b78b17dabb18f78294bce152e3317f4aa5"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.6/askkaya-darwin-amd64"
      sha256 "2dfb932eb3fed4e0ae50f98c1b6f2588f759eabb1b59e8a495ec9c50873ca4c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.6/askkaya-linux-arm64"
      sha256 "dc2ebb75a0fe08b91cd61b4447db784456d71826470d2832600a46137c44eef8"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.2.6/askkaya-linux-amd64"
      sha256 "14aadf4c376b928fcfe79efb80bc1e56749732663adcb50bc07e912c7aac6a0f"
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
