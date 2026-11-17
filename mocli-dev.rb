class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.111"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.111/mocli-dev-v3.1.0-dev.111-darwin-arm64.tar.gz"
      sha256 "2f18685fa2ab9ff9c1c48335006f9e326a4a475f917d786d78c58969be1ccaad"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.111/mocli-dev-v3.1.0-dev.111-darwin-amd64.tar.gz"
      sha256 "fbe3f190772f00ea8bcb0f6e3236841cb0a88d8867c1c53a9fa2e00c154ac489"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.111/mocli-dev-v3.1.0-dev.111-linux-amd64.tar.gz"
        sha256 "fd989600ac22069d483dd91812552d25fc30f824f1157a5d4f81cbaba22940bb"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.111/mocli-dev-v3.1.0-dev.111-linux-386.tar.gz"
        sha256 "94d81ff3e6945e65e94b90f43908f73a642d4c1e37f89f8f9812621a4ad0b49d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.111/mocli-dev-v3.1.0-dev.111-linux-arm64.tar.gz"
        sha256 "bee0c0c998b684a3071d39fc40fe7dcc8ec1e901f9e154c17da089a64e64549f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.111/mocli-dev-v3.1.0-dev.111-linux-arm.tar.gz"
        sha256 "fd6b98444135e84294106c7e2a6071812a7cff0b8da40d5abbed0d1581fa7ca6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.111-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.111-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.111-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.111-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.111-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.111-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
