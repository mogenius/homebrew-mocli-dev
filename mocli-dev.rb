class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.21.0-dev.88"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.88/mocli-dev-v1.21.0-dev.88-darwin-arm64.tar.gz"
      sha256 "4eb87e9bf465d40ef87758f2d8e3b45b58852b6c65a6593d8806cbb294b12461"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.88/mocli-dev-v1.21.0-dev.88-darwin-amd64.tar.gz"
      sha256 "f95628df5da361e56b1a0aa11462f86c2ac3e4b849345d53b2ed51f1c188ad27"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.88/mocli-dev-v1.21.0-dev.88-linux-amd64.tar.gz"
        sha256 "880f3b1be820cd47b6871eeb2cf287dd49652b9e056f80b393cc2c72d11b497b"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.88/mocli-dev-v1.21.0-dev.88-linux-386.tar.gz"
        sha256 "698513425426420274f7b700144dc4e1cedff1c4e7ff8036c01e24cbfc81d812"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.88/mocli-dev-v1.21.0-dev.88-linux-arm64.tar.gz"
        sha256 "17dde9066e1c1ce14de6198025c08a1061521c0aae8c5f46e7186bf12b8aa7d9"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.21.0-dev.88/mocli-dev-v1.21.0-dev.88-linux-arm.tar.gz"
        sha256 "2e8b7db6886a95284ee984ce388c272973fa473d250b796959fc6878c6f2178e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.21.0-dev.88-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.21.0-dev.88-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.21.0-dev.88-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.21.0-dev.88-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.21.0-dev.88-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.21.0-dev.88-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
