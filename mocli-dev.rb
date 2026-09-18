class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.16.0-dev.48"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.48/mocli-dev-v1.16.0-dev.48-darwin-arm64.tar.gz"
      sha256 "dbf998e2fcdb7685d09a998d6913f35c11f98c7b26f1c91f80cd134fa897a274"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.48/mocli-dev-v1.16.0-dev.48-darwin-amd64.tar.gz"
      sha256 "4824841c8cb1284ddd86aba37799e33afe44494f4ce067b3d910fd22479588e2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.48/mocli-dev-v1.16.0-dev.48-linux-amd64.tar.gz"
        sha256 "5d9c526902f088ee46d8e30ee2022c2cfe33abaeae41512d4f7ec6bbe4e689d6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.48/mocli-dev-v1.16.0-dev.48-linux-386.tar.gz"
        sha256 "c0e82f4df444f6781fc6738b366597a78848e3e3f8aa384da1358c8ecb79b6d5"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.48/mocli-dev-v1.16.0-dev.48-linux-arm64.tar.gz"
        sha256 "2c665e2f5479e95c1bc02b120696d79856eeddec47fb79096f6185c9e922b3fc"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.16.0-dev.48/mocli-dev-v1.16.0-dev.48-linux-arm.tar.gz"
        sha256 "0a8c530488cc50822ae43dff92b10b53b0265532436f5ca2500c0a7dffcb61cc"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.16.0-dev.48-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.16.0-dev.48-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.16.0-dev.48-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.16.0-dev.48-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.16.0-dev.48-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.16.0-dev.48-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
