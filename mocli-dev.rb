class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.1-dev.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.3/mocli-dev-v1.8.1-dev.3-darwin-arm64.tar.gz"
      sha256 "8b0d5dc0525fd0d0d268121e41fa629724d011504c1b1170ed8ea033fa7a4595"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.3/mocli-dev-v1.8.1-dev.3-darwin-amd64.tar.gz"
      sha256 "01f5fa32ebe486d1da3ef35cff4976f9854660963f23e9fed6ba01a703cd2a41"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.3/mocli-dev-v1.8.1-dev.3-linux-amd64.tar.gz"
        sha256 "68ee215fd29e44ee1901e162009a94927f671a3ddfe084d123a8d924265d07c9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.3/mocli-dev-v1.8.1-dev.3-linux-386.tar.gz"
        sha256 "e0fbee0206c6a79f521f0e24b70a1b69ad4a0e6c9405c35690660e64b8c90584"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.3/mocli-dev-v1.8.1-dev.3-linux-arm64.tar.gz"
        sha256 "b7db3facffd2323d519b528cfac0db5d962ccbb14d8ed8c06b67174dd237447b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.1-dev.3/mocli-dev-v1.8.1-dev.3-linux-arm.tar.gz"
        sha256 "9da07d0947f67f24bfca15c912dbbfaea0bfea5e8eb9246e66b493e09840fe08"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.1-dev.3-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.1-dev.3-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.1-dev.3-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.1-dev.3-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.1-dev.3-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.1-dev.3-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
