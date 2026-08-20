class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.14.0-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.8/mocli-dev-v1.14.0-dev.8-darwin-arm64.tar.gz"
      sha256 "0dd67fed6477b8f679b4b8fae047fb4e63c0380a70ddbe983a8ae0b1bf1de207"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.8/mocli-dev-v1.14.0-dev.8-darwin-amd64.tar.gz"
      sha256 "02dc7390e5ad23ee278b50fc59f3d19982fa4e6a4adc9d6a4bb6664798313eec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.8/mocli-dev-v1.14.0-dev.8-linux-amd64.tar.gz"
        sha256 "a0026d39506f6921e78efd9683aa83c0fe1f93c47d86dc8f2caffaa37015c876"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.8/mocli-dev-v1.14.0-dev.8-linux-386.tar.gz"
        sha256 "d62dc866c2d07b7ddab5f6b7139d874ae89f5695b6352d2cd58803852f888ecb"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.8/mocli-dev-v1.14.0-dev.8-linux-arm64.tar.gz"
        sha256 "b8913dd1059309c6a3ee97a927e61a5414718f6d40eee9920d4322348b6d08e8"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.14.0-dev.8/mocli-dev-v1.14.0-dev.8-linux-arm.tar.gz"
        sha256 "da4fefdf89dd483d92ad55e9b27ba002da24c1ac60983e5cf99fdc9f7b775b3a"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.14.0-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.14.0-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.14.0-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.14.0-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.14.0-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.14.0-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
