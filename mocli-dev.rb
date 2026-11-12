class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "2.1.0-dev.106"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.106/mocli-dev-v2.1.0-dev.106-darwin-arm64.tar.gz"
      sha256 "ca55a6d4a28919fdcee55b6f91c4dd65d6707856f21093bd3d6081eb46b12f4e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.106/mocli-dev-v2.1.0-dev.106-darwin-amd64.tar.gz"
      sha256 "6df52e93f8d6f31359633868f5be71cc5f53a2fbb1657f9906943b7be06709b6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.106/mocli-dev-v2.1.0-dev.106-linux-amd64.tar.gz"
        sha256 "adaf8c05abba0d2cb77ed713448ad4731046a82c4a5eceb429b37d6c0c3447f6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.106/mocli-dev-v2.1.0-dev.106-linux-386.tar.gz"
        sha256 "bcb560587a7bac559e927e33ba1a4531232a6dda4a2852a61f59439ac314f230"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.106/mocli-dev-v2.1.0-dev.106-linux-arm64.tar.gz"
        sha256 "e01a35410c8d9e386a1547f3c7103dedf25035e8be94dde2352d2f0711988c90"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v2.1.0-dev.106/mocli-dev-v2.1.0-dev.106-linux-arm.tar.gz"
        sha256 "c5090434a2fce65b44f8678671e2ffa6e438670d96657b9abf8d63c29f03ded8"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v2.1.0-dev.106-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v2.1.0-dev.106-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v2.1.0-dev.106-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v2.1.0-dev.106-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v2.1.0-dev.106-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v2.1.0-dev.106-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
