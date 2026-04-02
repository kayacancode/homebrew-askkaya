class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.2/bestmate-darwin-arm64"
      sha256 "cc0fb8fbacaee812420e9ebae3f2ef1e1e5bc05ef0674f823f7e8e2034ad3245"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.2/bestmate-darwin-amd64"
      sha256 "6f2fcdc982d6650f6d7f467e922ebc1e52443f9940f0eccb62928e78b9ea629c"
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
