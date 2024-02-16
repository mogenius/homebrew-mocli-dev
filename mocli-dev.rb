class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.1/mocli-dev-v1.8.0-dev.1-darwin-arm64.tar.gz"
      sha256 "f986971cdc348f38c615aa0d8b606d7612cbd6db18c46e7d919ce49ed00d62d7"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.1/mocli-dev-v1.8.0-dev.1-darwin-amd64.tar.gz"
      sha256 "52e065d003cafe1be22f3860805e34b62d7ca62e75a22f19dc4de81a7885efc1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.1/mocli-dev-v1.8.0-dev.1-linux-amd64.tar.gz"
        sha256 "18ec87c229dd202b30959e81063244b4dc9b0243204bb90b299be71ed75d01d2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.1/mocli-dev-v1.8.0-dev.1-linux-386.tar.gz"
        sha256 "5485407e512313f968912dcc3d36435665840b032864e6497f9fc47f447e5ae1"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.1/mocli-dev-v1.8.0-dev.1-linux-arm64.tar.gz"
        sha256 "b98d6a5e6f514ebb070e7cf47da92da7ae58251e64734a2c1ea78c3cb3e9d7c6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.1/mocli-dev-v1.8.0-dev.1-linux-arm.tar.gz"
        sha256 "b3350f13b2a8c03cd8fc551a439c90ca6099527a5878b3b39258b8f4cb4eac5d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
