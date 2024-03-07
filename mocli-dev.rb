class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.8/mocli-dev-v1.8.0-dev.8-darwin-arm64.tar.gz"
      sha256 "71b8b6513eb7d6f6ef37fbe51ccab6aca23132568875101a72056a936275797f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.8/mocli-dev-v1.8.0-dev.8-darwin-amd64.tar.gz"
      sha256 "a9e4087248b54a4d9e31e188d037beae619f89497c718974510bfb3e4696c0b9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.8/mocli-dev-v1.8.0-dev.8-linux-amd64.tar.gz"
        sha256 "6222838acd4e325aabf0835cdd11af76d6e55199cc1b7fda4c16e87b92b52444"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.8/mocli-dev-v1.8.0-dev.8-linux-386.tar.gz"
        sha256 "4dae0aec88a12e441640b87948653fa210e4a3d6ed902f9eb5a7a749428ff57d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.8/mocli-dev-v1.8.0-dev.8-linux-arm64.tar.gz"
        sha256 "97aec640ddcd6061e475d0d642fbb2735a00a0940250e010584d970ad048b3e1"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.8/mocli-dev-v1.8.0-dev.8-linux-arm.tar.gz"
        sha256 "412a78e4460df75d8c0b9f2335bbc9ba76494bec02e5386c35ffb6a355e22603"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.8-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.8-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.8-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.8-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.8-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.8-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
