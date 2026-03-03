class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.2/askkaya-darwin-arm64"
      sha256 "c53b12ef678d0fc6b1341a31925b7765845d1791ca21569c141665c1fbd632b8"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.2/askkaya-darwin-amd64"
      sha256 "2235b94643888ee5f79cd79868137f26f92cc028a45ac66993fe11a2089659d1"
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
