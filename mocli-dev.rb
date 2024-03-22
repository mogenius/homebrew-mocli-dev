class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.11"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.11/mocli-dev-v1.8.0-dev.11-darwin-arm64.tar.gz"
      sha256 "30c98af9879da73148185db90c3af2f6ea54bb8ad301a4525a3a6bf3d9dc9cec"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.11/mocli-dev-v1.8.0-dev.11-darwin-amd64.tar.gz"
      sha256 "673a3815b7017485fb971b3fbac41aebb82b0438cece11684b8135cc7e3ff08e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.11/mocli-dev-v1.8.0-dev.11-linux-amd64.tar.gz"
        sha256 "3230b79d6b1f4e88b864479e25700971569dd5a61fc643f1a33005bfbedcf2c7"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.11/mocli-dev-v1.8.0-dev.11-linux-386.tar.gz"
        sha256 "ffbc216f5e06c636659292f8049d64946b9c40e64580635ae8fe4dbcf75f9a31"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.11/mocli-dev-v1.8.0-dev.11-linux-arm64.tar.gz"
        sha256 "3ca918b2f8a077196e818a4c802865f83bf7916b596956707894c8a17a2247c4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.11/mocli-dev-v1.8.0-dev.11-linux-arm.tar.gz"
        sha256 "12348638040c4b3dc5c08bcc3de7c85869959a59cc4942dc7ec2b80fd975362c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.11-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.11-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.11-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.11-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.11-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.11-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
