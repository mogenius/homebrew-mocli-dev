class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.15"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.15/mocli-dev-v1.9.0-dev.15-darwin-arm64.tar.gz"
      sha256 "d6d6d5af909e7fcdb2dea1a01509fea3f362efd33c5824fc80dc6c65b4c54048"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.15/mocli-dev-v1.9.0-dev.15-darwin-amd64.tar.gz"
      sha256 "40a33bd3b36dd9523702dc6623b3e0cee8ffce5b4d84361652aa185e80e8e31d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.15/mocli-dev-v1.9.0-dev.15-linux-amd64.tar.gz"
        sha256 "8e27d61e0196a7d38e2612526be8366f1c134d4a0fb25c8a221ac17bf3fc612b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.15/mocli-dev-v1.9.0-dev.15-linux-386.tar.gz"
        sha256 "441901dbbc1138e9007fb083eeb138eb386649ab7490d13e333e83916fbe723a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.15/mocli-dev-v1.9.0-dev.15-linux-arm64.tar.gz"
        sha256 "bca3f4773dd3d322a09ed56f46af56fa5e1910237651c7e2e82f18ad0f6c281e"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.15/mocli-dev-v1.9.0-dev.15-linux-arm.tar.gz"
        sha256 "865e6768adab4cc15bbacb78a78568e38c6e00c7e9a0db19a0774bdd64c6de99"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.15-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.15-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.15-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.15-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.15-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.15-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
