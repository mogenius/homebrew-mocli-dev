class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.69"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.69/mocli-dev-v1.21.0-dev.69-darwin-arm64.tar.gz"
      sha256 "3f21063c94c7e5221d98e737e7d67c754f89321351c747366e1183016ccec1eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.69/mocli-dev-v1.21.0-dev.69-darwin-amd64.tar.gz"
      sha256 "be90475eea139e6cdf5555abda4775f0ce842e7bda391843fd47973dd55f4c97"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.69/mocli-dev-v1.21.0-dev.69-linux-amd64.tar.gz"
        sha256 "02f22a996cc482f667041f47b5327d4a8872b04118d6095030bad139e1aed69d"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.69/mocli-dev-v1.21.0-dev.69-linux-386.tar.gz"
        sha256 "f52ea57f7607406050da717df0afbc6daf41552fe4566ef4081d4e00e251d1f2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.69/mocli-dev-v1.21.0-dev.69-linux-arm64.tar.gz"
        sha256 "c3e2e4b676ad71aebf4069aa3efb57bbf3dd441a3ac8b994b6b22d191bc4f089"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.69/mocli-dev-v1.21.0-dev.69-linux-arm.tar.gz"
        sha256 "b216cb49f6d36f815569c7cbd9b7d5cb94d762bf3a333cd4e1a2509a4744a469"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.69-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.69-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.69-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.69-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.69-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.69-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
