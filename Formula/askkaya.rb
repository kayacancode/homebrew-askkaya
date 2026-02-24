class Askkaya < Formula
  desc "AskKaya - AI-powered client support platform CLI"
  homepage "https://github.com/kayacancode/askkaya"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.3/askkaya-darwin-arm64"
      sha256 "04af43fa5fd9e5a266b925a42b31799525cee37d4ea30d3d1d04288ed383171f"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.3/askkaya-darwin-amd64"
      sha256 "5eb113e2cfcd36f4ca42f7932eba41a88d507473cfc19bbdb511b95ed7241ad5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.3/askkaya-linux-arm64"
      sha256 "45e888647dad30fc396d37d482379db19aeed015e2b047871e499b4aa57db61d"
    else
      url "https://github.com/kayacancode/askkaya/releases/download/v0.1.3/askkaya-linux-amd64"
      sha256 "64634bfe05ed346a4658444b597be79eccb77aecb5309d3e2f5ff767223a7302"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "askkaya-darwin-arm64" => "askkaya"
      else
        bin.install "askkaya-darwin-amd64" => "askkaya"
      end
    else
      if Hardware::CPU.arm?
        bin.install "askkaya-linux-arm64" => "askkaya"
      else
        bin.install "askkaya-linux-amd64" => "askkaya"
      end
    end
  end

  test do
    assert_match "askkaya", shell_output("#{bin}/askkaya --help")
  end
end
