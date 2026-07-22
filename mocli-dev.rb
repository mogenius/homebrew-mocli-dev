class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.13.0-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.1/mocli-dev-v1.13.0-dev.1-darwin-arm64.tar.gz"
      sha256 "d3c7586496c0cf1e5a262fa99f97f40f0415e534614acf7e5451f750623ed8eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.1/mocli-dev-v1.13.0-dev.1-darwin-amd64.tar.gz"
      sha256 "aef323bc3c2f04be586e62abd16e20be46d3aa0b43199a8380d985c84cd08732"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.1/mocli-dev-v1.13.0-dev.1-linux-amd64.tar.gz"
        sha256 "405a69c969b8d6975bd6091efd39f64ec4c81c957dfad6a103b65632a69e6cd4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.1/mocli-dev-v1.13.0-dev.1-linux-386.tar.gz"
        sha256 "442eab193f4611353ab245b66862f2e6c064d86faa3f718644c533e8fd3e5867"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.1/mocli-dev-v1.13.0-dev.1-linux-arm64.tar.gz"
        sha256 "01673a13f5275700bb4f75238fc97942af3ab1f9c993248efae720950c2a7ca3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.13.0-dev.1/mocli-dev-v1.13.0-dev.1-linux-arm.tar.gz"
        sha256 "877ebc67b35a0fc4a885e9c4ce82602a8ea68acff4865795052ec63bb0ae300f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.13.0-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.13.0-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.13.0-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.13.0-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.13.0-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.13.0-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
