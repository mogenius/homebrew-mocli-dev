class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.64"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.64/mocli-dev-v1.21.0-dev.64-darwin-arm64.tar.gz"
      sha256 "3dc2a74fd17a766ef9168cb4b33fe99eb6b28d720ebd07ef6ec2f3824f42d3b6"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.64/mocli-dev-v1.21.0-dev.64-darwin-amd64.tar.gz"
      sha256 "ce0500af14457c9d2ed34430a048fc11e2b65a4522867e797d47491521efe850"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.64/mocli-dev-v1.21.0-dev.64-linux-amd64.tar.gz"
        sha256 "d34c950108cf9621aff3c5f22561e3d73537ebef009e9f1caafdbd264a1cff91"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.64/mocli-dev-v1.21.0-dev.64-linux-386.tar.gz"
        sha256 "f0a04ce864fcc502231aa52867201f96a695b11c7aeb3bd5c721e5e41fa36628"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.64/mocli-dev-v1.21.0-dev.64-linux-arm64.tar.gz"
        sha256 "47e06bc08ed36d73a90b009c15ea1f5dc79a2876db72e30a9453751ee8cc2580"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.64/mocli-dev-v1.21.0-dev.64-linux-arm.tar.gz"
        sha256 "92f803cf44483a108c8e9767a9631dcd766ea00d604bafb9e3f2eef73e73e2c5"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.64-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.64-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.64-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.64-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.64-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.64-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
