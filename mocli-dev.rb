class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.0/mocli-dev-v1.8.0-dev.0-darwin-arm64.tar.gz"
      sha256 "61cfd6440324cf114c32c25f6ce311cd9eb7869e09dcf6ff3c3264c2764a0d47"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.0/mocli-dev-v1.8.0-dev.0-darwin-amd64.tar.gz"
      sha256 "85917f51226f9a00bc96a6d0941329a88892a56fc43444ebfd0db003b5c1454e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.0/mocli-dev-v1.8.0-dev.0-linux-amd64.tar.gz"
        sha256 "8bd80c092c7c6664a1194fa90ee42e9f9f194b61b34c692b894c091264acfc80"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.0/mocli-dev-v1.8.0-dev.0-linux-386.tar.gz"
        sha256 "2e00fb5be2b1cbf5ec34bea02f93d0ac60e113d37817a11a922d9f3997c12e4c"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.0/mocli-dev-v1.8.0-dev.0-linux-arm64.tar.gz"
        sha256 "b4796daa770eca1702a0a08af3fdc3177ed7f74f34fd724366cf9d30169d53ad"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.0/mocli-dev-v1.8.0-dev.0-linux-arm.tar.gz"
        sha256 "6f99f005c0924dd6e1e1e729e42e1f69dcd1b6b7f4ac11ad2767164b03696c4b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
