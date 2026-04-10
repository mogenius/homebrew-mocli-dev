class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.9.0-dev.6"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.6/mocli-dev-v1.9.0-dev.6-darwin-arm64.tar.gz"
      sha256 "29a3d3015fd3624d3ac3a33a4d743256cc133251ada6cfaf6a15bc4eb7d0b125"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.6/mocli-dev-v1.9.0-dev.6-darwin-amd64.tar.gz"
      sha256 "2c0137abfbc91a29751b636fca47c40516fee469ce1b3359bdf907eb182c555f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.6/mocli-dev-v1.9.0-dev.6-linux-amd64.tar.gz"
        sha256 "d63905491b92930754eaa820ae4c4660239f2300218514e99d84c9054b7ef1d4"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.6/mocli-dev-v1.9.0-dev.6-linux-386.tar.gz"
        sha256 "77fd08fc292aaaee523f59195d506d8fe91c7fb4a21ebd4f7e716d7f4464aac8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.6/mocli-dev-v1.9.0-dev.6-linux-arm64.tar.gz"
        sha256 "1dfd0b599e54ea2b1716d91a6fe8658c06e8df3a28505c800ae29721162f5034"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.9.0-dev.6/mocli-dev-v1.9.0-dev.6-linux-arm.tar.gz"
        sha256 "4c0809a0bf613c3d267182c5c12942cba4e9f18fa39cf0bd685e0aeaa8acb52f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.9.0-dev.6-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.9.0-dev.6-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.9.0-dev.6-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.9.0-dev.6-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.9.0-dev.6-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.9.0-dev.6-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
