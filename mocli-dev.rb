class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.10.2-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.1/mocli-dev-v1.10.2-dev.1-darwin-arm64.tar.gz"
      sha256 "5688386e13dfa810a404b03f537b5a1eb1e1ecf0a5b9406c2c24f0e98b59d2f7"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.1/mocli-dev-v1.10.2-dev.1-darwin-amd64.tar.gz"
      sha256 "e9933e6d20d7e7a9f3792b400153f16fa4c8546d557719b366cff3c924e11d27"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.1/mocli-dev-v1.10.2-dev.1-linux-amd64.tar.gz"
        sha256 "87cf132e1d2efc4dfbccf938e6c0d542285805590399e26c3e45af1bfd800abd"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.1/mocli-dev-v1.10.2-dev.1-linux-386.tar.gz"
        sha256 "b0f7416e30f6d83ef709a2179219787e3ed0f5981b085e84752c09ad0611dca8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.1/mocli-dev-v1.10.2-dev.1-linux-arm64.tar.gz"
        sha256 "4aca3b301bdcede20d10b4e8b41ee0a4f40378d0b396b21fd414f65796963022"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.10.2-dev.1/mocli-dev-v1.10.2-dev.1-linux-arm.tar.gz"
        sha256 "ea8b4af6d81515502b3e4bd316243a7697840c8ee01f5facfb06635b11c4831c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.10.2-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.10.2-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.10.2-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.10.2-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.10.2-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.10.2-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
