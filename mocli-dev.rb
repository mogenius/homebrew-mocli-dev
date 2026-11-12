class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "2.1.0-dev.107"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.107/mocli-dev-v2.1.0-dev.107-darwin-arm64.tar.gz"
      sha256 "b9e4b03ced686a4ba04ace585ed2684333036a02c98a0002ad9a589fd7631121"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.107/mocli-dev-v2.1.0-dev.107-darwin-amd64.tar.gz"
      sha256 "829e6f4e6740cf27c71005fc0651078944bbf0076a3b525aa097c0f070fa2fc0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.107/mocli-dev-v2.1.0-dev.107-linux-amd64.tar.gz"
        sha256 "e80e74654a7708e3937f036cd0203840850f56a0baa9184cfdeb463211696dcf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.107/mocli-dev-v2.1.0-dev.107-linux-386.tar.gz"
        sha256 "763b189476dd7dd1e700e298704cc1864ef0a3e7f9b0439c659d05651e5ae4d7"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.107/mocli-dev-v2.1.0-dev.107-linux-arm64.tar.gz"
        sha256 "b8e419736c9ce8b77f7b4b8f24377c4d553004daab8d6b80ab059048c5ba6d3a"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.107/mocli-dev-v2.1.0-dev.107-linux-arm.tar.gz"
        sha256 "ab47eb10639bc2951c0a1d7cff791c602f8c8dd07b14bb199a69be4901c01d2e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v2.1.0-dev.107-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v2.1.0-dev.107-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v2.1.0-dev.107-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v2.1.0-dev.107-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v2.1.0-dev.107-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v2.1.0-dev.107-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
