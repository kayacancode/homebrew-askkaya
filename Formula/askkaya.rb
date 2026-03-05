class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.4/askkaya-darwin-arm64"
      sha256 "c4258650b44d8ae0d425e8b27f7ee39b8ee9d231401d88ce0db87b1363d1a23e"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.4/askkaya-darwin-amd64"
      sha256 "b205904366caf279d3c20d0848f1d49a16fd15e7d4b4a2272d91d166f5fcd33d"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "askkaya-darwin-arm64" => "askkaya"
      else
        bin.install "askkaya-darwin-amd64" => "askkaya"
      end
    end
  end

  test do
    system "#{bin}/askkaya", "--version"
  end
end
