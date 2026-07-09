class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.12.0-dev.5"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.5/mocli-dev-v1.12.0-dev.5-darwin-arm64.tar.gz"
      sha256 "e1495b2d9e0a7fc8e147fe537b0488d2bd2622c6a2d1cf5ef840d10788aa49f2"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.5/mocli-dev-v1.12.0-dev.5-darwin-amd64.tar.gz"
      sha256 "824febad2eca23f2491166926826663955172bd49c5946d5227c9c24accb9fb6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.5/mocli-dev-v1.12.0-dev.5-linux-amd64.tar.gz"
        sha256 "83f5bccca8013637e99435be6c6be95debe90b903b209e70e2d791e529088400"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.5/mocli-dev-v1.12.0-dev.5-linux-386.tar.gz"
        sha256 "a15d6170d79609b02f590cf4c24ebcd810073cb89ef1cac0929246b3c94fa212"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.5/mocli-dev-v1.12.0-dev.5-linux-arm64.tar.gz"
        sha256 "4fff0e2b47aafe8eb6bf5231767ca88b6d77e7e25efd32bcd62a7a15cac2d762"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.12.0-dev.5/mocli-dev-v1.12.0-dev.5-linux-arm.tar.gz"
        sha256 "3144cbdc766d3ede30b20610761053d89711961fde783ba117d1f3e44652e1e0"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.12.0-dev.5-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.12.0-dev.5-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.12.0-dev.5-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.12.0-dev.5-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.12.0-dev.5-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.12.0-dev.5-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
