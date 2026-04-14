class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-arm64"
      sha256 "a7e594af711458d6efc6e4545ee9cf7bd493b6426db4aa379bbf29070e81af7e"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-amd64"
      sha256 "26c245e4430071aa357108f6af027918606d332c6da736d86873331ad2651fe8"
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
