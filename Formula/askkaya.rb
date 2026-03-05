class Askkaya < Formula
  desc "AskKaya - Full-stack client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.3/askkaya-darwin-arm64"
      sha256 "d711818f6bb383005ee2b10a4d844ae7b9a167d18d63342d8ecf459bd193ef5f"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.3.3/askkaya-darwin-amd64"
      sha256 "e2811c65165607a3c87a7def220b8cce33e0d2aec9b94fe20a5164a5252d9ddd"
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
