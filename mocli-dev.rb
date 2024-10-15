class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.1-dev.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.0/mocli-dev-v1.8.1-dev.0-darwin-arm64.tar.gz"
      sha256 "7807919a54edff503af62c5cc4c6bbc97484c27703acfb9a671500d90e742ffb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.0/mocli-dev-v1.8.1-dev.0-darwin-amd64.tar.gz"
      sha256 "a828bd1a53863ec6ecf22d4fcfe7e6dedafc45c15d6bc4663fb3136697803037"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.0/mocli-dev-v1.8.1-dev.0-linux-amd64.tar.gz"
        sha256 "271a75986c93d857d9119781921847ec6ee91240793a51ba4cc591ac75124249"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.0/mocli-dev-v1.8.1-dev.0-linux-386.tar.gz"
        sha256 "bdbc177abca16562fc21a1a657c7dd9e3175e715ae17fa795f5ef46d477f433d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.0/mocli-dev-v1.8.1-dev.0-linux-arm64.tar.gz"
        sha256 "97a5964c005801236c90970fb8bf998d31a56506350f2cfa9ac5d6f6b8332995"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.0/mocli-dev-v1.8.1-dev.0-linux-arm.tar.gz"
        sha256 "c0bc4ffbdc47e2553bfe28eb856176c37a275378092663bac2d1ae787b1897d0"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.1-dev.0-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.1-dev.0-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.1-dev.0-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.1-dev.0-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.1-dev.0-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.1-dev.0-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
