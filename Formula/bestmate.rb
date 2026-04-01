class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.7.0/bestmate-darwin-arm64"
      sha256 "c03a31482d94eddd090c244257cf9794af9b15486b46205d01f97dcad8737fce"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.7.0/bestmate-darwin-amd64"
      sha256 "c03a31482d94eddd090c244257cf9794af9b15486b46205d01f97dcad8737fce"
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
