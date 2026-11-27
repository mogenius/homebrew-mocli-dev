class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.125"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.125/mocli-dev-v3.1.0-dev.125-darwin-arm64.tar.gz"
      sha256 "46bec06963a58d8b320d5976ff14e2c8bde0364c930b4dd8763aa207cf71f7ce"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.125/mocli-dev-v3.1.0-dev.125-darwin-amd64.tar.gz"
      sha256 "5942f2d3b9fbcaea3af608e6341f51e7f9f5122133d9b028bf032e23770c8460"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.125/mocli-dev-v3.1.0-dev.125-linux-amd64.tar.gz"
        sha256 "a3bc664deba1a2ccd6840b44d29c7ce68c5fdf1ea4ec98e5045b8a85dc272013"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.125/mocli-dev-v3.1.0-dev.125-linux-386.tar.gz"
        sha256 "0eae0cc9d9b7fc54c57a9fb568cb4dac98f8fed68a2834c9961f073ae23dd856"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.125/mocli-dev-v3.1.0-dev.125-linux-arm64.tar.gz"
        sha256 "bd7354095b6fc85ec86859cc62b8287e58e439207ab17aa27ee52b1ec57a0caf"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.125/mocli-dev-v3.1.0-dev.125-linux-arm.tar.gz"
        sha256 "fe37d16984c0ddaebd579a59ce9b33be3d79383248779d5683e1f461c3a39cad"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.125-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.125-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.125-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.125-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.125-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.125-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
