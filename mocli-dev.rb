class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.18"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.18/mocli-dev-v1.8.0-dev.18-darwin-arm64.tar.gz"
      sha256 "a58e6000cc1a6230a645c0cc130133197281bfc6307066d6a4e7099c9d85526a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.18/mocli-dev-v1.8.0-dev.18-darwin-amd64.tar.gz"
      sha256 "c192720340dcfaa227d41a13adc1bd13dd4bc3c3c0cac3cd11700f28d53c0bc5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.18/mocli-dev-v1.8.0-dev.18-linux-amd64.tar.gz"
        sha256 "c55d0f7f2592a146ae22c3cfc289f380b7ed06086d1644674cefc582d8ae66d3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.18/mocli-dev-v1.8.0-dev.18-linux-386.tar.gz"
        sha256 "418e392f71a74a1a6190291c91d1dc3ddf8ea2a9e0dc19dc914f2405798881c3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.18/mocli-dev-v1.8.0-dev.18-linux-arm64.tar.gz"
        sha256 "e6d798f61898fd6c5e1ec04dbefb10f83d29c58d89a7843a71689fcdb8e76d9d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.18/mocli-dev-v1.8.0-dev.18-linux-arm.tar.gz"
        sha256 "0e1c191a629c778ac5f7712b5dac511e1f27823d33ec63bab01d3f893a9d7337"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.18-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.18-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.18-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.18-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.18-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.18-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
