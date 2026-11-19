class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "3.1.0-dev.113"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.113/mocli-dev-v3.1.0-dev.113-darwin-arm64.tar.gz"
      sha256 "d7dac9f100c0903ddf269654ea1b9e2a131159bc2e786d939b8e53d19fb5d2de"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.113/mocli-dev-v3.1.0-dev.113-darwin-amd64.tar.gz"
      sha256 "38e0dfc6690d4ac3e07096f4456ae973847b5f4e80e381869c937e41de9681ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.113/mocli-dev-v3.1.0-dev.113-linux-amd64.tar.gz"
        sha256 "010f3e142256ee3861417ae4ef1275b48118a17e617f2ea2fde305788a858ff1"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.113/mocli-dev-v3.1.0-dev.113-linux-386.tar.gz"
        sha256 "d0ac7fbec5bbc76c24bfe4b3b222468c4768555f8849fda08587ac2101726a75"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.113/mocli-dev-v3.1.0-dev.113-linux-arm64.tar.gz"
        sha256 "63d333f5d0dca518397b67bac1f2f15edae9e28e1c16824a05c2d8db7b0721ca"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v3.1.0-dev.113/mocli-dev-v3.1.0-dev.113-linux-arm.tar.gz"
        sha256 "8fb7672f1730604be433e115c63a7fe7b1213c48680366c602c2920863246fb4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v3.1.0-dev.113-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v3.1.0-dev.113-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v3.1.0-dev.113-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v3.1.0-dev.113-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v3.1.0-dev.113-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v3.1.0-dev.113-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
