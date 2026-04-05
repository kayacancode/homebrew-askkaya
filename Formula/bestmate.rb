class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.3/bestmate-darwin-arm64"
      sha256 "1c626ace51eda023278b3f11f9d89e516dd2ec8daabb0c3fe6343e2e6430c93b"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.3/bestmate-darwin-amd64"
      sha256 "6a41b2801d41c4ebce61496b4409af7d6fb09b54a7499c6e7ffc9cb26e0bf72c"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "bestmate-darwin-arm64" => "bestmate"
      else
        bin.install "bestmate-darwin-amd64" => "bestmate"
      end
    end
  end

  test do
    system "#{bin}/bestmate", "--version"
  end
end
