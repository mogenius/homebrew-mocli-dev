class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.112"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.112/mocli-dev-v3.1.0-dev.112-darwin-arm64.tar.gz"
      sha256 "90c4de69d9cca3637221a810a53a1c659f61651b6db813db1400f784ba69e41b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.112/mocli-dev-v3.1.0-dev.112-darwin-amd64.tar.gz"
      sha256 "1c2d030290ee7dcaa260dcafaaa30eb74ff6693a9a19a6d2b2bbf14aed426d1b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.112/mocli-dev-v3.1.0-dev.112-linux-amd64.tar.gz"
        sha256 "8c9ac8231e7c3abd7bbc3ddbb5f90cbffe08871be8dd9e2daa6b20471f4c2f4c"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.112/mocli-dev-v3.1.0-dev.112-linux-386.tar.gz"
        sha256 "fae6351f2ed836439c393f583d5138b3b3f4876825d4f51e0aeb9b3407379280"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.112/mocli-dev-v3.1.0-dev.112-linux-arm64.tar.gz"
        sha256 "9dc9db6a5fac0dc79adef98ae9b39baf6197c968734cd76e92e2c253346b7e0b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.112/mocli-dev-v3.1.0-dev.112-linux-arm.tar.gz"
        sha256 "e217cee28bf11fd3a2466b755b51a64d781362b3c35a6c8236e87b1390d5fe80"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.112-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.112-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.112-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.112-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.112-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.112-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
