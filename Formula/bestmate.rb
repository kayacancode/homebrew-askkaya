class Bestmate < Formula
  desc "Bestmate - Your AI knowledge twin CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.1/bestmate-darwin-arm64"
      sha256 "a6c849912d72afb7edfcb935943aa6867242666c132eac79697ca08c1fcac668"
    else
      url "https://github.com/kayacancode/homebrew-askkaya/releases/download/v0.9.1/bestmate-darwin-amd64"
      sha256 "2dd58ab201d776b0a2959a62a42db87fafbeb691ef91816010216b020b22b7e5"
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
