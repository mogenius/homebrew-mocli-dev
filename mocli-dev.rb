class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.5"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.5/mocli-dev-v1.9.0-dev.5-darwin-arm64.tar.gz"
      sha256 "7e8d8324b94561bd66073405a7008b0e35bca8b2f24c99c108e38af03f10ae81"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.5/mocli-dev-v1.9.0-dev.5-darwin-amd64.tar.gz"
      sha256 "48a890ce9f0f632a0658363ec93ac35a3cd12d13c0e9a572521a8f3a4d0687cf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.5/mocli-dev-v1.9.0-dev.5-linux-amd64.tar.gz"
        sha256 "e14e5e98bb4b410f8b5c2d18074c08693dd916494365142b0b98895874ab4c26"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.5/mocli-dev-v1.9.0-dev.5-linux-386.tar.gz"
        sha256 "e199623c0dc12479a33095c08ab9751bbe021fb6b6fee04344db0604ed38083c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.5/mocli-dev-v1.9.0-dev.5-linux-arm64.tar.gz"
        sha256 "7c064eb03b4b2904641c66556c6a796b6643e1034b5d82fac1f85b8dd678e9d6"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.5/mocli-dev-v1.9.0-dev.5-linux-arm.tar.gz"
        sha256 "a68e7948fba6d68ebeaa5964421a96c3e60fbfbdea201862e60d9fff7e783882"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.5-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.5-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.5-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.5-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.5-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.5-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
