class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.4-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.0/mocli-dev-v1.8.4-dev.0-darwin-arm64.tar.gz"
      sha256 "95ce7d01f1dcfff4c883559a39ea1df095e6a4963b66360fa8c45c225b7581be"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.0/mocli-dev-v1.8.4-dev.0-darwin-amd64.tar.gz"
      sha256 "ba676c771de703cacd96a1cbb635462a19ed78a6f461a797dd3fed9c7a9c6a58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.0/mocli-dev-v1.8.4-dev.0-linux-amd64.tar.gz"
        sha256 "d041cb1bdf8d772d205a84cca83e65b41d531c4e26a31b7b167fe154460d365f"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.0/mocli-dev-v1.8.4-dev.0-linux-386.tar.gz"
        sha256 "60e479d4da50eda52fb5a163ec7d1cbcb74765c9e93a55279445f6b00e4bfa84"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.0/mocli-dev-v1.8.4-dev.0-linux-arm64.tar.gz"
        sha256 "722b33c1d16d31d29d76be7a70c1ec9a4a889fdcf7dca163593b82649e6070f5"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.0/mocli-dev-v1.8.4-dev.0-linux-arm.tar.gz"
        sha256 "73efe694bcfe3abd925bd6437e8a8a4b3ce143d8c3b07d3408a0426b46e7e1ea"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.4-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.4-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.4-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.4-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.4-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.4-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
