class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.61"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.61/mocli-dev-v1.21.0-dev.61-darwin-arm64.tar.gz"
      sha256 "b7bb61ab94ce30e7b5f1ce8887cd58d2c7653afa2b1e8f1fce2e0f08f2877fb1"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.61/mocli-dev-v1.21.0-dev.61-darwin-amd64.tar.gz"
      sha256 "7e228d6c34c50c0e5a4c4b7e7d4cef0a7833a268c50a2a1471bf67b4a6220f6f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.61/mocli-dev-v1.21.0-dev.61-linux-amd64.tar.gz"
        sha256 "7ec1b9a52e3e3ca043554ec3272eaa1b7891563111af20101ea3d7b90eade9e3"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.61/mocli-dev-v1.21.0-dev.61-linux-386.tar.gz"
        sha256 "abf432573c4d90762c08321f0b7810346f663e0846c7d9719e63871333f7a3eb"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.61/mocli-dev-v1.21.0-dev.61-linux-arm64.tar.gz"
        sha256 "11fdcbf57e91d733047dad4889a3fda9e26e42e15f928173e22c5202cb17d534"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.61/mocli-dev-v1.21.0-dev.61-linux-arm.tar.gz"
        sha256 "fa87c06dc5cc26a191645a76335d1757fa86fc2ce51efbd3252122814560bf96"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.61-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.61-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.61-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.61-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.61-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.61-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
