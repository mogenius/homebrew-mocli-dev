class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.4-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.1/mocli-dev-v1.8.4-dev.1-darwin-arm64.tar.gz"
      sha256 "d249f9211577f83e173985ae5c7b53bf761fee1fb058a0b6052ecc3371eaa692"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.1/mocli-dev-v1.8.4-dev.1-darwin-amd64.tar.gz"
      sha256 "abde5793da7acea49ff2c07934f2514d7244f880305ecb8fa038163b634f73f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.1/mocli-dev-v1.8.4-dev.1-linux-amd64.tar.gz"
        sha256 "48b998c9a4ff2e3d71987c21504465e74f557863f6e3913238c6943365853126"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.1/mocli-dev-v1.8.4-dev.1-linux-386.tar.gz"
        sha256 "16c524df60b443337d9c1609557ec752acf8c3170572dcb2c97420fb66aed3b8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.1/mocli-dev-v1.8.4-dev.1-linux-arm64.tar.gz"
        sha256 "9a6f4b137cf2913ae09711f4c4bf62576c3e709ea59d31cd9774d1cef45fb337"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.4-dev.1/mocli-dev-v1.8.4-dev.1-linux-arm.tar.gz"
        sha256 "b999dee249c5d3d49ad42456a868fe5c3f176d0ec249589d8a575b7173a047d4"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.4-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.4-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.4-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.4-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.4-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.4-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
