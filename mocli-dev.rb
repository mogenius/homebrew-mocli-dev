class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.10"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.10/mocli-dev-v1.14.0-dev.10-darwin-arm64.tar.gz"
      sha256 "af40033622e26b9dbc032ec1103a9d5471eaa0282609d3d4db33f5ff2412faa5"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.10/mocli-dev-v1.14.0-dev.10-darwin-amd64.tar.gz"
      sha256 "797bc272c627b9e321f2bd24a858f911e223aa9912f472f874ce5e0f6b37652f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.10/mocli-dev-v1.14.0-dev.10-linux-amd64.tar.gz"
        sha256 "d1d6bcfe711bcee97757774de42c666b5e54cf28aa38a719a1dafd54482b33b6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.10/mocli-dev-v1.14.0-dev.10-linux-386.tar.gz"
        sha256 "4df928e5d53416a5ec62f4ca0fefc12b9c9e4f8e64bca7a1252295baf5a1a509"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.10/mocli-dev-v1.14.0-dev.10-linux-arm64.tar.gz"
        sha256 "e023b4073bf425e6c6732cabd7d590c21b0a94eec9706e33ad4ba8bbcde390c8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.10/mocli-dev-v1.14.0-dev.10-linux-arm.tar.gz"
        sha256 "c2cf99545a37f5d6f21876266d596643104e40b52a573e718c47e01ffe7e1711"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.10-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.10-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.10-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.10-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.10-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.10-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
