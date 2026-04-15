class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-arm64"
      sha256 "b3dc979d256ee496fc00ee28dab659e9bc1cead1d4670b01dc5c6f5ab833790e"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.12.1/bestmate-darwin-amd64"
      sha256 "520f4ad57db12f9ae229a85e3a04f5456680b6bc26cc8fe093a832327b9f2b50"
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
