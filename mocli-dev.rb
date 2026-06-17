class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.11.0-dev.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.2/mocli-dev-v1.11.0-dev.2-darwin-arm64.tar.gz"
      sha256 "56f73a3514a3e9bea753eed17d1a6ec567fa9a5f05a05cd6dbf299994c18ce96"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.2/mocli-dev-v1.11.0-dev.2-darwin-amd64.tar.gz"
      sha256 "39f36cb6d93c69c141f61fe4a306f9a3c43b1de008ca6d29afec1c8664629ca8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.2/mocli-dev-v1.11.0-dev.2-linux-amd64.tar.gz"
        sha256 "6a11ae8ab185a9fe362cb2c6be9dab935c009b7149a68317adf848108e58b436"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.2/mocli-dev-v1.11.0-dev.2-linux-386.tar.gz"
        sha256 "0f19e5273dbf474d4cda81a1e0c99904572efb86d5b6411d632083585c32ad35"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.2/mocli-dev-v1.11.0-dev.2-linux-arm64.tar.gz"
        sha256 "31bd859885a056b2c2bf4b5b118c6cdc3ea09c79e25819a133d28d069bc5bca2"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.11.0-dev.2/mocli-dev-v1.11.0-dev.2-linux-arm.tar.gz"
        sha256 "b1019e4134e982cdf8e5bee08d65aae0dce4efe3a0b07b643a0c997f0a3df97c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.11.0-dev.2-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.11.0-dev.2-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.11.0-dev.2-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.11.0-dev.2-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.11.0-dev.2-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.11.0-dev.2-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
