class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.0-dev.5"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.5/mocli-dev-v1.8.0-dev.5-darwin-arm64.tar.gz"
      sha256 "4bfe2c93dc62cb8564a113dc77ec1208b418964ef9ceb57b75cde07369bf316e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.5/mocli-dev-v1.8.0-dev.5-darwin-amd64.tar.gz"
      sha256 "ca828b58245e22edd5ac3ef3fee0b374a7541a062277fec6f4626f52eee8d44e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.5/mocli-dev-v1.8.0-dev.5-linux-amd64.tar.gz"
        sha256 "4c6bea18dc0798087614f9a294d111a600eef3e6bfcdc4d7642aacdc84a76952"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.5/mocli-dev-v1.8.0-dev.5-linux-386.tar.gz"
        sha256 "ffc2623f4c533f6c72b5bd7ffdcc7e69b42a29537509d62df6d61072431b5349"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.5/mocli-dev-v1.8.0-dev.5-linux-arm64.tar.gz"
        sha256 "c37d953f5fb8a9ac9a9fd0b027e9a7560d3917f4376740e937cc0d03666fe474"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.0-dev.5/mocli-dev-v1.8.0-dev.5-linux-arm.tar.gz"
        sha256 "5429913fd046e4aafbd3789baeee276f497cdcc0dfbd2ad5098a6cc58dacf672"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.0-dev.5-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.0-dev.5-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.0-dev.5-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.0-dev.5-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.0-dev.5-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.0-dev.5-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
