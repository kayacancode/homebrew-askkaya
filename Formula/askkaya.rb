class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.5/askkaya-darwin-arm64"
      sha256 "a1615eae4b2b4d6b91f5b668edceefbfd297cd02883841e452f1a98648d6a89f"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.5/askkaya-darwin-amd64"
      sha256 "468c0975bf657ddd07c45fda3008a3f3b95ffae84ef018acf859158accd29bc7"
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
