class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.0-dev.10"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.10/mocli-dev-v1.10.0-dev.10-darwin-arm64.tar.gz"
      sha256 "897435cab54e5947e58748f2526958b7bd328ede20e446dccbf1ed2e126e3372"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.10/mocli-dev-v1.10.0-dev.10-darwin-amd64.tar.gz"
      sha256 "4e66778f5cd2acc4c714181bc15841ea56850fb956e5ed66f5fc43df565f18b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.10/mocli-dev-v1.10.0-dev.10-linux-amd64.tar.gz"
        sha256 "2f9f6d4d92c01bbf14de8d8b4f42949992e0b7cec5b04d78dac9a461b87f6860"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.10/mocli-dev-v1.10.0-dev.10-linux-386.tar.gz"
        sha256 "9c799d09d8007d665e68b3e9fe43a6d7aca8167b9a43d284f5196782c8ccbea2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.10/mocli-dev-v1.10.0-dev.10-linux-arm64.tar.gz"
        sha256 "0b1a49fac699e2ba9278a9af5622c4c16a8626eaadfa7dac49bf6cba6594b8ec"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.0-dev.10/mocli-dev-v1.10.0-dev.10-linux-arm.tar.gz"
        sha256 "c79bbc8d4f9fc85ff48c3b8f4ecb7ec4d6c7a6c7b560e19799b6899501e740f4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.0-dev.10-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.0-dev.10-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.0-dev.10-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.0-dev.10-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.0-dev.10-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.0-dev.10-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
