class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.16"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.16/mocli-dev-v1.8.0-dev.16-darwin-arm64.tar.gz"
      sha256 "525c6fc1c812508e1b8a0840bc4dd2b3714f2088f183cf25d2d381253ffcbbf7"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.16/mocli-dev-v1.8.0-dev.16-darwin-amd64.tar.gz"
      sha256 "2af89137137a6704e109106d5f0396f77054466db0843e23260566d9dfc2d8c2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.16/mocli-dev-v1.8.0-dev.16-linux-amd64.tar.gz"
        sha256 "cca9c28258a66ea4a8d952d1572ee24e55295f135189c47f5701a77fe520a808"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.16/mocli-dev-v1.8.0-dev.16-linux-386.tar.gz"
        sha256 "1cbb0eda75e2452c0262541d679ebac1a66c8bb349fb1b78f9755c6625713469"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.16/mocli-dev-v1.8.0-dev.16-linux-arm64.tar.gz"
        sha256 "8e4f048fdaa7830646462c98b65193c49cb7ff05b33ecd575f0236149fa9f2ed"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.16/mocli-dev-v1.8.0-dev.16-linux-arm.tar.gz"
        sha256 "3381adb2198e7b4eb7baffcb718be79e9a2f9694456fbc97446292d2aba78148"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.16-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.16-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.16-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.16-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.16-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.16-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
